<?php

//service names for scan2.php

echo "<font face=\"Tahoma, Verdana, Arial\" size=-1>";

$ftp = "<b>File Transfer Protocol<b>. Used to move files too and from machines across a tcp/ip network. If used correctly can be secure, depending on your server of choice. Can be dangerous too have 'anonymous' access enabled.<br>
Common exploits for FTP: 
<a target=new href=http://209.100.212.5/cgi-bin/search/search.cgi?searchvalue=ftp>here</a><br>
Other resources: <a target=new href=http://nemo.r-fx.org/archive.php>here</a> <br><br>";

$ssh = "SSH Secure Shell is the de facto standard for remote logins, with millions of users in 80 countries. It solves the most important security problem on the Internet: hackers stealing passwords. Typical applications include 'lite VPN' applications, remote system administration, automated file transfers, and access to corporate resources over the Internet.<br>
SSH is alot more secure than telnet, so if you have them both running. Close telnet!<br>
Common exploits for SSH: 
<a target=new href=http://209.100.212.5/cgi-bin/search/search.cgi?searchvalue=ssh>here</a><br>
Other resources: <a target=new href=http://nemo.r-fx.org/archive.php>here</a> <br><br>";

$telnet = "Telnet is one of teh most common remote login services. Still less secure than SSH, it can be exploited sometimes, very easily. Infomation can be leacked from deamon banners, and it may be a good idea
to spoof them. Unless you really need this service I would recommend you closed it.<br>
Common exploits for Telnet: 
<a href= target=newhttp://209.100.212.5/cgi-bin/search/search.cgi?searchvalue=telnet>here</a><br>
Other resources: <a target=new href=http://nemo.r-fx.org/archive.php>here</a> <br><br>";


$smtp = "Simple Mail Transfer Protocol (SMTP), documented in RFC 821, is Internet's standard host-to-host mail transport protocol and traditionally operates over TCP, port 25. 
Therefore it can be happily used day to day, but if you don't really require it running, you should close it.<br>
Common exploits for SMTP: 
<a  target=new href=http://209.100.212.5/cgi-bin/search/search.cgi?searchvalue=smtp>here</a><br>
Other resources: <a target=new href=http://nemo.r-fx.org/archive.php>here</a> <br><br>";

$finger = "Finger can leak valuble infomation about users on your machine, and lead to more serious
		consequences. It is advisable for you to close this service";

$http = "Hyper Text Transfer Protocol. It is used to display content and infomation over a network, thru a browser. Depending on the different server you are using ie: <a href=http://www.apache.com target=new>Apache</a> or Xitami or something other, you are at different risks to attacks.<br>
Common HTTP exploits:<br>
<a target=new href=http://209.100.212.5/cgi-bin/search/search.cgi?searchvalue=http>here</a><br>
Other resources: <a target=new href=http://nemo.r-fx.org/archive.php>here</a> <br><br>";

$rtelnet = "rtelnet handles remote logins for telnet. <br>
Telnet is one of teh most common remote login services. Still less secure than SSH, it can be exploited sometimes, very easily. Infomation can be leacked from deamon banners, and it may be a good idea
to spoof them. Unless you really need this service I would recommend you closed it.<br>
Common exploits for rTelnet: 
<a href= target=newhttp://209.100.212.5/cgi-bin/search/search.cgi?searchvalue=rtelnet>here</a><br>
Other resources: <a target=new href=http://nemo.r-fx.org/archive.php>here</a> <br>";


$pop3 = "Post Office Port is the most common port to receive incomming emails. Like smtp it can be used
on a daily bases without much hassle, but you must take note to the info in the links below. <br>
Common exploits for pop3: 
<a target=new href=http://209.100.212.5/cgi-bin/search/search.cgi?searchvalue=pop3>here</a><br>
Other resources: <a target=new href=http://nemo.r-fx.org/archive.php>here</a> <br><br>";

$netbios = "";

$socks = "";

$subseven  = "It seems that your computer is infected with the <b>subseven</b> trojan. This is extremly
dangerous, and should be removed immeadiatly!<br>
Infomation on removing it can be found <a href=http://packetstormsecurity.org/trojans/subseven-2.1.txt>here</a> and <a href=http://packetstormsecurity.org/trojans/sub72remover.zip>here</a>.<br><br>
";


$phf  = "<b><font color=red>Phone Book Script (PHF) was found!</font></b><br>
This is one of the oldest vunrealbilties today. This CGI script can exucute shell commands, therefore opening up possiblities to the attacker. For example: <a href=$host/cgi-bin/phf?Qalias=x%0a/bin/cat%20/etc/passwd>$host/cgi-bin/phf?Qalias=x%0a/bin/cat%20/etc/passwd</a> could possibly display your /etc/passwd file!>br>
Read more about it <a href=http://oliver.efri.hr>http://oliver.efri.hr</a><br><br>
";