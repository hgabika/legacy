<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN" "http://www.w3.org/TR/REC-html40/loose.dtd">
<html>
<head>
  <title>Tor: ��������� �������</title>
  <meta name="Author" content="Roger Dingledine">
  <meta http-equiv="content-type" content="text/html; charset=KOI8-R">
  <link rel="stylesheet" type="text/css" href="../stylesheet.css">
  <link rel="shortcut icon" type="image/x-icon" href="../favicon.ico">
</head>
<body>
<div class="center">
<table class="banner" border="0" cellpadding="0" cellspacing="0" summary="">
    <tr>
        <td class="banner-left"></td>
        <td class="banner-middle">
	<a href="../index.html.ru">�������</a>
<a href="../overview.html.ru">�����</a>
<a href="../download.html.ru">�������</a>
<a href="../documentation.html.ru">������������</a>
<a href="../volunteer.html">�����������</a>
<a href="../people.html.ru">������</a>
<a href="../donate.html">Donate!</a>
        </td>
        <td class="banner-right">
	<a href="tor-doc-server.html.de"><img src="../images/de.png" alt="Deutsch" width="24" height="16"></a> <a href="tor-doc-server.html.en"><img src="../images/en.png" alt="English" width="24" height="16"></a> <img src="../images/green-flagspace.png" alt="" width="24" height="16"> <img src="../images/green-flagspace.png" alt="" width="24" height="16"> <a href="tor-doc-server.html.it"><img src="../images/it.png" alt="Italiano" width="24" height="16"></a> <img src="../images/green-flagspace.png" alt="" width="24" height="16"> <img src="../images/green-flagspace.png" alt="" width="24" height="16"> <img src="../images/ru.png" alt="&#1056;&#1091;&#1089;&#1089;&#1082;&#1080;&#1081;&nbsp;(Russkij)" width="24" height="16"> <img src="../images/green-flagspace.png" alt="" width="24" height="16">
        </td>
    </tr>
</table>
<div class="center">
<div class="main-column">
<h1>��������� ������� <a href="../index.html.ru">Tor</a></h1>
<br>
<p>
���� Tor ������������ �� ������������ ��������� ����� ��������. ��� ������ �����
��������� �������, ��� ������� �������� ���� Tor. ���� � ��� ���� �� ������� ����
20 ��������/��� � ������ �����������, ���������� �������� ���� Tor �������� ����
������. �� ����������� ����� ���� ����� ������� ������� Tor ̣����� � ��������
� �������������, ������� ����������� �������, ����������� ������(exit policies),
� ��������� ������������ IP.</p>
<p>���������� �������� � ������ ������� ��������� ��� ������ ��, ���
������������� ������������� Tor. <a
href="http://wiki.noreply.org/noreply/TheOnionRouter/TorFAQ#ServerAnonymity">�� ����� ���������
����� ������� ����������� ����</a>,
��� ��� ������ ������� �� ����� ����� ��� ������� ���������� - ����� ��������� �����������
��� ������� ������ ���� Tor.</p>
<p>��������� ������� Tor ������ � ������:
<ul>
<li>Tor ����� ���������� ���������
<a href="http://wiki.noreply.org/noreply/TheOnionRouter/TorFAQ#LimitBandwidth">
����������� �������</a>. ����� ����, ���� � ��� ���������� �����, �� �� ������
���������� ������ ������ ������� �� ���� (��� ������ ��� �����) �� ��� �����
����������� � ������� ���������������
<a href="http://wiki.noreply.org/noreply/TheOnionRouter/TorFAQ#Hibernation">
������ ����������� (hibernation)</a>.
</li>
<li>� ������� ������� ���� ����
<a href="http://wiki.noreply.org/noreply/TheOnionRouter/TorFAQ#RunAServerBut">
�������� ����������� ������</a> ������� ���������� ����� ��������� ����������
��������� ��� ��������� �� ���� ���������� �������. ���� �� �� ������
��������� ������ � ������ �������, ����� ��������� ��� ����������
����� ��� � ������� ������ ���� Tor.
</li>
<li>������ ��������� ���� ������ ������ ���������� � ����. ������� ����������
�������� ��� �������� ������ � ��������� ���������� ����������� ������. ������
������������ ����� ��� �� ��������� �����, �.�. ��� ������������� � �������������
�������� ���������� �����������.
</li>
<li>���� ������� �������� � ��������� �� ������������ IP, � ��� ������ ���� ��� ������
����� ���� IP. ��������
<a href="http://wiki.noreply.org/noreply/TheOnionRouter/TorFAQ#DynamicIP">FAQ</a>.
</li>
<li>���� ��� ������ ��������� �� NAT � �� ����� ���� ��������� IP
(�������� IP ����� ��� 192.168.x.y), �� ���ģ��� ��������� ���������������
(port forwarding). ��������������� TCP ���������� ��������-��������� ��������,
�� � <a href="http://wiki.noreply.org/noreply/TheOnionRouter/TorFAQ#ServerForFirewalledClients">
���� ������� FAQ</a> ���� ��������� �������� ��� ��� ��������.
</li>
<li>��� ������ ����� �������������� ��������� � �������� ������� ����������
�����������, � ����� ������� "�������" ������� ���������� ������ �������������.
������������� �� ����� ���������� ������� ���� �������.
</li>
</ul>
<p>������ Tor �������� �������� �� ����������� ������������ ������, �� �
<a href="http://wiki.noreply.org/noreply/TheOnionRouter/TorFAQ#ServerOS">
���� ������� FAQ</a> ���� ������ ����� �� �������� ����� � � ������ ����������
����� �����������.</p>
<hr>
<a id="zero"></a>
<h2><a class="anchor" href="#zero">��� �������: ������� � ���������� Tor</a></h2>
<br>
<p>����� ��� ��� ���������� � �������, �� ������ ��������� ��� Tor ������� � ��������.
</p>
<p>��� Windows, ��� �������� �� ������� ����
<a href="../docs/tor-doc-win32.html.ru#installing">������ ���</a>
�� ���������� �� ��������� Tor �� Windows.
�� Mac OS X �� ������ ��������� �� ������� ����
<a href="../docs/tor-doc-osx.html#installing">������ ���</a>
�� ���������� �� ��������� Tor �� OS X.
�� Linux/BSD/Unix �� ������ ��������� �� ������� ����
<a href="../docs/tor-doc-unix.html#installing">������ ���</a>
�� ���������� �� ��������� Tor �� Unix.
</p>
<p>���� ��� ��������, ���������� ������������ ��� � �������� �������
����� ��������� ��� �ӣ �� ����� ���� ��������.</p>
<hr>
<a id="setup"></a>
<h2><a class="anchor" href="#setup">��� ������: ��������� ������</a></h2>
<br>
<p>
1. ��������� ��� ���� ����������� �����. ���� �������� - ���������������
���� � ���������� ��������� �������.
</p>
<p>
2. ��������� ��� �������� ���������� �ͣ� (DNS) (�� ����, ��� ���������
����� ��������� ������ name resolving).
</p>
<p>
3. �������������� ��������� ����� ����� ������������ torrc. (����������������
<a href="http://wiki.noreply.org/wiki/TheOnionRouter/TorFAQ#torrc">� ����
�������� FAQ</a>.)
�� ������ ���������� �� ������� ���� Nickname � ORPort. �������� ������� DataDirectory
���� ���������, � ��������� ��� �� ����������� ������������ �� �������� ����� �������
������. <em>���� �� ������ ��������� ����� ������ �������, ��� ������������,
�� ����� ���������� �������� �������� ��
<a href="http://wiki.noreply.org/noreply/TheOnionRouter/TorFAQ#MultipleServers">
����� MyFamily</a> � ������ ������������ ��� ���� ��������.</em>
</p>
<p>
4. ���� �� ����������� ��������(����������), ��������� �������� ����������
�� ����� ������� �� ������� � torrc (ORPort, � DirPort ���� �� ��� ��������).
����� ��������� ��������� ����������, ����� ��� ������ ��� ������� ������ ������� Tor.
</p>
<p>
5. ��������� ������: ���� �� ��������� �� ���������� ����� ������ ����������
<tt>tor</tt>, ����� ��� ������ ������ ��������� Tor �� �����
initscript'�� ��� startup ��������. ���� ���� �����-������
��������� � ����� - ��������������� ��. (�� ��������� Tor �������� � stdout,
�� ��������� ������ �������������� ��������� � <tt>/var/log/tor/</tt> ���
<a href="http://wiki.noreply.org/noreply/TheOnionRouter/TorFAQ#Logs">������ �����</a>.
�� ������ ��������� ���� � ����� torrc.)
</p>
<p>
6. ����������� �� ������ �������� <a
href="http://archives.seul.org/or/announce/">or-announce</a>.
��� ����� ���� ���������, � �� ������ ���������������� � ����� ����������
�������. ����� ����� ����������� �� ������ ��������
<a href="http://archives.seul.org/or/talk/">or-talk</a> (�������� ��������� �����),
��� ����� ����� ������� ����������� ������ � ����������.
</p>
<p>
7. ��������� ������.
<a href="../tor-manual.html">������</a> ��� ��������� ���������� ������
�������� ��������� ��� ������������� � ������������ Tor, ������� ����������������
������� � �������. ������ �� ��������� ��������������� ������� ��������
<a href="../tor-manual-cvs.html">�����</a>.
������� ������� ������� (�������� ��������� ����������) ��������
<a href="http://www.privoxy.asplinux.net/man-page/tor-man-page.html">�����</a>
</p>
<hr>
<a id="check"></a>
<h2><a class="anchor" href="#check">��� ������: ��������� ��� �� ��������</a></h2>
<br>
<p>��� ������ ��� ������ ������ �������������� � ����, �� ����������
���������� ����������� ����� ������ �������. ��� ����� ������ �� 20 �����.
����� ��������� � ����� ����
<tt>Self-testing indicates your ORPort is reachable from the outside. Excellent.</tt>
���� �� �� ������ �������� ���������, ��� ������ ��� ��� ������ ���������� �� ����
&mdash; ����� ������� ������������� ��������, ��������� ��� ������ �������� �����������
������ �� ���� ������/����� ��� �� ������ ����, ���.
</p>
<p>��� ������ ������ ��������� �����������, �� �������� �� ������ ����������
���� ���������� (���������, descriptor). ��� �������� ��������
������ �����, �����, ����� � ������ ���������� � ����� �������.
�� ������
<a href="http://belegost.mit.edu/tor/status/authority">
�������� ������ ���� �������</a>
� ����� ��� nickname ������ �������, ����� ��������� ��� �� ����� ��������������
���������. ����� ������������ ������� ������� ����� ��� ���������� ����������.
</p>
<hr>
<a id="after"></a>
<h2><a class="anchor" href="#after">��� ������: ����� ��������� �������</a></h2>
<br>
<p>
�� ����������� ����������� ��������� ����:
</p>
<p>
8. ����������
<a href="http://wiki.noreply.org/noreply/TheOnionRouter/OperationalSecurity">���� ��������</a>
����� ������ ��� �������� ������������ �������.
</p>
<p>
9. ������ ����� �������� ������ ���������. �� ��������� ������
��������� ���������� �� ������ ���������� �������, �� �� � ������������
��������� (�������� ���� 25) ��-�� ��������� ���������������.
�� ������ ��������� ����� ֣����� ��� ������ �������� ����������� ������,
��� ����� ��������������� ������� �������������� torrc.
���������� ������ FAQ ����� �����
<a href="../faq-abuse.html#TypicalAbuses">� ������ ����������
�� ������ ���������� ��� ������������� �������� �� ���������</a>.
���� �� ��������� ��������� �������� ������, ������ �������
��� ��� ��������� �� ������.
</p>
<p>
10. ������������ � ������������ ��������. ������������ ���������
�������, DSL, � ������ ����� ���������� � ������������� ���������� ������������
(�������� ������ ����� ��� ������) ������ ����������� ������� �� ���� �������,
���� �������� ����������. ��������
<a href="http://wiki.noreply.org/noreply/TheOnionRouter/TorFAQ#LimitBandwidth">
���� ������ FAQ</a> ��� ������������.
</p>
<p>
11. �������� ��������� ����� ���������� ����� ������� (�������� �
"keys/secret_id_key" � DataDirectory). ���� ���� �������������� ��� ������
� �� ������ ������� ��� � ������������, ����� ����� �� ��� ������������ ������
������ ����� ��� ������. ��� ����������� ���� ������� �� ������ ���������
� ������ ���� ��� �����������
<a href="http://wiki.noreply.org/noreply/TheOnionRouter/TorFAQ#UpgradeServer">
����������� ��� ������������ ��� ������ Tor</a> ���� ���-�� ���ģ� �� ���.
</p>
<p>
12. ���� �� ������������� ������� �ͣ� ��� ������ ������, ����������
��� ����� � 'anonymous' ��� 'proxy' ��� 'tor-proxy', ��� ���� �����
������ ����, ������ ��� ����� � ����� �����, ������� ����� ����������� �
ޣ� ����.
</p>
<p>
13. ���� �� ����� ���������� ��� ����������, ����������
���������� ORPort � 443 � DirPort � 80. ����� ������������� Tor
������� ����������� ������� ������ ��������� �� ������������ http,
� ��� ��������� �������� �� ������� ��� ������ Tor. ������� �� Win32
����� ������ �������� ���� ORPort � DirPort �������� � torrc
� ������������� Tor. ������� OS X � Unix �� ����� �������� �������� �� ���� ����
(��� ��� ��� ������� ���������� �����������������), ������� �� �����������
������������
<a href="http://wiki.noreply.org/wiki/TheOnionRouter/TorFAQ#ServerForFirewalledClients">
��������������� ������</a>. ���� � ��� ��� ������ ����� 80 � 443, �� �� ������
������ ������������� � ������ �������������, �� ������� ����� ��������� ����� 22, 110,
��� 143.
</p>
<p>
14. ���� ��� ������ ������������� ������ ������� �� ���� �� IP
&mdash; ����� ��� ��������� ��������� &mdash; ������ ������� ��� ���������� � �������
��������� � ���������� �����. �� ������ ��������� ��� ����������, ��� ���
������� Tor ��������� ��� ��� ������ ��� ��������
<a href="http://wiki.noreply.org/noreply/TheOnionRouter/TorFAQ#ExitEavesdroppers">
���������� ������ ������� ���� ���������</a>, � ����� ������� ������� ������� ������
����� ������������� �� ����� �������. ���� �� �� ������ ��������� ��� ����������,
�� ������ ���� ��������� ��� � �������� ������.
</p>
<p>
15. (������ ��� Unix). �������� ���������� ������������ ���
������� �������. ���� �� ������������� �� OS X ������, ��� deb ��� rpm
�� ��� ��� ���� �������. ����� �� ������ ������� ��� �������. ������ Tor
�� ������� ���������� root'� ��� ������, ������� ��������� ����� ��
��������� Tor �� �����������������. ������ ��� ������������� 'tor' ��������
�������� ������� � identd � ������� ��������� ������� ���������� ���
������������. (���� �� ������� ��������, �������� ����������
<a href="http://wiki.noreply.org/wiki/TheOnionRouter/TorInChroot">
Tor � chroot</a>.)
</p>
<p>
16. (������ ��� Unix.) ������ ����� ���� ����������� ������� ������������
���������� ������������ �������� ������ �� ������� �� 1024 (��� ���� ������).
���� �� ���������� ����� �������� ���� Tor, �� ����� ����� ��������� ������������.
� Linux �� ������ �������� ������� ���� "toruser hard nofile 8192" � ����
/etc/security/limits.conf (��� toruser ��� ������������ �� �������� �����������
������� Tor), � ������������� Tor. ���� ��� �� ���������, ��������
<a href="http://wiki.noreply.org/noreply/TheOnionRouter/TorFAQ#FileDescriptors">
���� ������ FAQ</a> �������� ������������� ��������� ��������� "ulimit -n 8192"
����� �������� Tor.
</p>
<p>
17. ���� �� ������������� Tor �� ������ ��� � ������� ������������, �� ��������
������������� �������� ��� �������� �������. �� ���� �� ������������� ��
����������, ��� ���ģ��� ������� ��� �����������, � ������� contrib/tor.sh �/���
contrib/torctl ����� ��� ����������.
</p>
<p>
����� �� ������� ���-���� � ����� torrc,
<a href="http://wiki.noreply.org/noreply/TheOnionRouter/TorFAQ#Restarting">
� ����������� ������� �� ������ ������������� ��������� ��� ����������� Tor</a>,
� �� �������� ��������� ��� ��� ������ ��������� �������� ����� ���������.
</p>
<hr>
<a id="register"></a>
<h2><a class="anchor" href="#register">��� ���ף����: ��������������� nickname</a></h2>
<br>
<p>
��������� �� �������� � ������� ��� ��� ����, ��������� ��� ��-���� �������� �
�� �������� ������� ����������� ��������. ����� ����� �� ������ ��� ����������������.
����� ������� �� �������������� nick ������ �������, ��� ��� ����� ������ ��
������ ������ ���, � ��������� ��� ��������� � ���� ���� ��������� �����-����
��������.
</p>
<p>
�������� ������ �� ����� <a
href="mailto:tor-ops@freehaven.net">tor-ops@freehaven.net</a> � �����
'[New Server] &lt;nickname ������ �������&gt;' � ��������� ����������:
</p>
<ul>
<li>nickname ������ �������</li>
<li>��������� ����� ������ ������� (���������� �����
"fingerprint" � DataDirectory &mdash; � �� Windows, ��������
\<i>username</i>\Application&nbsp;Data\tor\ ��� \Application&nbsp;Data\tor\;
� OS X, �������� /Library/Tor/var/lib/tor/; � � �� Linux/BSD/Unix,
�������� /var/lib/tor ��� ~/.tor)
</li>
<li>��� �� �����, ����� �� ����� � ��� ��������� ���� ��������� ��������</li>
<li>����� ���������� ����� � ������ �������</li>
</ul>
<hr>
<p>���� � ��� ���� ����������� �� ��������� ����� ���������, ����������
<a href="../contact.html.ru">���������� �� ���</a>. �������!</p>
  </div><!-- #main -->
</div>
</div>
  <div class="bottom" id="bottom">
     <p>
     <i><a href="../contact.html.ru" class="smalllink">Webmaster</a></i> -
      ��������� ���������: Thu Jul 6 14:11:44 2006
      -
      ��������� ����������: Wed Jul 26 15:38:03 2006
     </p>
     <p>
      ��������! ���� ������� �������. ���������� �������� ����� �������
      1.7 ����� ��� ���� ������� ������� �� �������
      1.6.
     </p>
     <p>
       ��� �������� ����� ���������� �� ��������� �����:
       <a href="tor-doc-server.html.de">Deutsch</a>, <a href="tor-doc-server.html.en">English</a>, <a href="tor-doc-server.html.it">Italiano</a>.<br>
       ��� ���������� <a href="http://www.debian.org/intro/cn#howtoset">���� ���������� �� ���������</a>.
     </p>
  </div>
</body>
</html>
