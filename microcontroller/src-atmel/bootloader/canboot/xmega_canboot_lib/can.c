#include <avr/io.h>
#include <avr/interrupt.h>
#include <avr/pgmspace.h>

#include "../config.h"
#include "can.h"
#include "spi.h"
#include "mcp2515reg.h"
#include "bootloader.h"

can_message Rx_msg, Tx_msg;

typedef uint16_t pgm_p_t;

#ifdef pgm_read_byte_far
	#undef pgm_read_byte
	#define pgm_read_byte(x) pgm_read_byte_far( ((FLASHEND + 1ul) & 0xff0000ul ) | (x)) 
#endif


// Functions


inline static void mcp_bitmod(unsigned char reg, unsigned char mask, unsigned char val)
{
	spi_assert_ss();
	spi_data(BIT_MODIFY);
	spi_data(reg);
	spi_data(mask);
	spi_data(val);
	spi_release_ss();
}

unsigned char mcp_read(unsigned char reg)
{
	unsigned char d;
	spi_assert_ss();
	spi_data(READ);
	spi_data(reg);
	d = spi_data(0);
	spi_release_ss();
	return d;
}

void mcp_write(unsigned char reg, unsigned char data)
{
	spi_assert_ss();
	spi_data(WRITE);
	spi_data(reg);
	spi_data(data);
	spi_release_ss();
}

void mcp_write_b(pgm_p_t stream)
{
	unsigned char len;
	
	while ((len = pgm_read_byte(stream++)))
	{
		spi_assert_ss();
		spi_data(WRITE);
		
		while (len--)
		{
			spi_data(pgm_read_byte(stream++));
		}
		spi_release_ss();
	}
}


//load a message to mcp2515 and start transmission
void can_transmit()
{
	uint8_t x;
	spi_assert_ss();
	spi_data(LOAD_TX_BUFFER);

	spi_data(((unsigned char)(Tx_msg.port_src << 2)) | (Tx_msg.port_dst >> 4));
	spi_data((unsigned char)((Tx_msg.port_dst & 0x0C) << 3) | (1 << EXIDE) | (Tx_msg.port_dst & 0x03));
	spi_data(Tx_msg.addr_src);
	spi_data(Tx_msg.addr_dst);
	spi_data(Tx_msg.dlc);
	
	for (x = 0; x < Tx_msg.dlc; x++)
		spi_data(Tx_msg.data[x]);
	spi_release_ss();

	spi_assert_ss();
	spi_data(RTS + 1); //base addr + TXB0
	spi_release_ss();
}


//get a message from mcp2515 and disable RX interrupt Condition
static inline void message_fetch()
{
	unsigned char tmp1, tmp2, tmp3;
	unsigned char x;

	spi_assert_ss();
	spi_data(READ_RX_BUFFER);
	tmp1 = spi_data(0);
	Rx_msg.port_src = tmp1 >> 2;
	tmp2 = spi_data(0);
	tmp3 = (unsigned char)((unsigned char)(tmp2 >> 3) & 0x0C);
	Rx_msg.port_dst = ((unsigned char)(tmp1 << 4 ) & 0x30) | tmp3 | (unsigned char)(tmp2 & 0x03);

	Rx_msg.addr_src = spi_data(0);
	Rx_msg.addr_dst = spi_data(0);
	Rx_msg.dlc = spi_data(0) & 0x0F;
	for (x = 0; x < Rx_msg.dlc; x++)
		Rx_msg.data[x] = spi_data(0);
	spi_release_ss();

	mcp_bitmod(CANINTF, _BV(RX0IF), 0x00);
}


#define FLT_PORT_SRC 0
#define FLT_PORT_DST1 PORT_SDO_CMD
#define FLT_PORT_DST2 PORT_SDO_DATA
#define FLT_ADDR_SRC 0	

#define MSK_PORT_SRC 0
#define MSK_PORT_DST 0x3F
#define MSK_ADDR_SRC 0
#define MSK_ADDR_DST 0xFF



/*******************************************************************/


// 0x01 : 125kbit/8MHz
// 0x03 : 125kbit/16MHz
// 0x04 : 125kbit/20MHz
#if F_MCP == 16000000
#define CNF1_T 0x03
#elif F_MCP == 8000000
#define CNF1_T 0x01
#elif F_MCP == 20000000
#define CNF1_T 0x04
#else
#error Can Baudrate is only defined for 8, 16 and 20 MHz
#endif


//unsigned char mcp_config_str1[] __attribute__ ((section (".progdata"))) = {
const unsigned char mcp_config_str1[] PROGMEM = {
	2, BFPCTRL, 0x0C,		//RXBF Pins to Output
	4, CNF3,
		0x05,			//CNF3
		0xf1,			//CNF2
		0x40 | CNF1_T,		//CNF1
	2, RXB0CTRL,(0<<RXM1) | (0<<RXM0),
	9, RXF0SIDH,
		(FLT_PORT_SRC << 2) | (FLT_PORT_DST1 >> 4),
		((FLT_PORT_DST1 & 0x0C) << 3) | (1<<EXIDE) | (FLT_PORT_DST1 & 0x03),
		FLT_ADDR_SRC,
		0x35,
		(FLT_PORT_SRC << 2) | (FLT_PORT_DST2 >> 4),
		((FLT_PORT_DST2 & 0x0C) << 3) | (1<<EXIDE) | (FLT_PORT_DST2 & 0x03),
		FLT_ADDR_SRC,
		0x35,
	5, RXM0SIDH,
		(MSK_PORT_SRC << 2) | (MSK_PORT_DST >> 4),
		((MSK_PORT_DST & 0x0C) << 3) | (MSK_PORT_DST & 0x03),
		MSK_ADDR_SRC,
		MSK_ADDR_DST,
	0
};
	
	
//unsigned char mcp_config_str2[] __attribute__ ((section (".progdata"))) = {	
const unsigned char mcp_config_str2[] PROGMEM = {	
	2, CANCTRL, 0,
	2, CANINTE, _BV(RX0IE),
	0
};

void can_init()
{
	//init the timmer for mcp2515 clock
	PORTD.DIRSET = (1<<2);
	TCD0.CTRLB = TC0_CCCEN_bm | 3; //single slope pwm, OC0C as output
	TCD0.PER = 1;
	TCD0.CCC = 1;
	TCD0.CNT = 0;
	TCD0.CTRLA = 1; //clk/1
	
	spi_init();

	spi_assert_ss();
	spi_data(RESET);
	spi_data(RESET);
	spi_release_ss();
	
	mcp_write_b((pgm_p_t) mcp_config_str1);

	mcp_write(RXF0EID0, Station_id);
	mcp_write(RXF1EID0, Station_id);

	mcp_write_b((pgm_p_t) mcp_config_str2);
}


unsigned char can_get_nb()
{
	//check the pin, that the MCP's Interrup output connects to
	if (SPI_REG_PIN_MCP_INT.IN & _BV(SPI_PIN_MCP_INT))
	{
		return 0; //no message
	}
	
	message_fetch();
	return 1;
}

