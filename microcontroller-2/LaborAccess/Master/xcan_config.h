
#define SPI_DDR DDRB
#define SPI_PORT PORTB
#define SPI_PIN_SS PB4
#define SPI_PIN_MOSI PB5
#define SPI_PIN_SCK PB7


#define SPI_HARDWARE


#define TX_SIZE 3
#define F_MCP F_CPU

#define CAN_INTERRUPT_VECTOR SIG_INTERRUPT2
#define CAN_INTERRUPT_ENABLE() GICR |= (1<<INT2)
#define CAN_INTERRUPT_DISABLE() GICR &= ~(1<<INT2)
#define CAN_INTERRUPT_PIN PINB
#define CAN_INTERRUPT_BIT PB2


//#define CAN_INTERRUPT_VECTOR SIG_INTERRUPT0
//#define CAN_INTERRUPT_ENABLE() GICR |= (1<<INT0)
//#define CAN_INTERRUPT_DISABLE() GICR |= (1<<INT0)
