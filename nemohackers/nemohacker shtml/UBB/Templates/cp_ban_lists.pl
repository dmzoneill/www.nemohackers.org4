# Control Panel, Ban Lists

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

print<<the_explanation;
<center>
<table border="0" width="95%">
<TR><TD align="left">
<P><FONT SIZE="2" FACE="Verdana, Arial">
You can prevent certain users from being registered, based on email addresses they attempt to register with or based on their IP numbers.  Users banned by IP also cannot post, even if they are already registered. 
</FONT>
</TD></TR></TABLE>
</center>
the_explanation

&TBT; #Table Border Top in cp_common.pl

print<<ban_options;

<TR bgcolor="#5d7790">
<TD colspan="2">
<FONT SIZE="2" color="white" FACE="Verdana, Arial">
<B>Email Ban Lists</B></FONT>
</TD></TR>
<TR bgcolor="white">
<TD>
<FONT SIZE="1" FACE="Verdana, Arial">
You may ban certain email addresses from registering on your forums. To ban a specific email, type the full email address (as in, waldo\@whereiswaldo.com). To ban all email addresses from certain domains, such as hotmail, simply type the domain name (as in hotmail.com)- that will prevent anyone using a hotmail address from registering. Put each banned email on its own line (hit the carriage return after each email entry to be banned).
</FONT>
</TD>
<TD valign="top">
<TEXTAREA NAME="email_bans" COLS="35" ROWS="8" WRAP="VIRTUAL">
$email_bans
</TEXTAREA>
</TD>
</TR>

<TR bgcolor="#5d7790">
<TD colspan="2">
<FONT SIZE="2" color="white" FACE="Verdana, Arial">
<B>IP Ban Lists</B></FONT>
</TD></TR>

<TR bgcolor="white"><TD>
<FONT SIZE="1" FACE="Verdana, Arial">
You may ban any IP numbers from registering and posting. Type in the complete IP number (as in 243.21.31.7), or use a partial IP number (as in 243.21.31). The UBB will do matches from the beginning of each IP number that you enter. Thus, If you enter a partial IP of 243.21.31, someone attempting to register who has an IP number of 243.21.31.5 will not be able to register. Similarly, if you have an IP ban on 243.21, someone registering who has an IP of 243.21.3.44 will not be able to register. Thus, be careful when you add IPs to your ban list and be as specific as possible. As with the email ban list, put each IP number on its own line (hit the carriage return after each entry). The IP Ban prevents anyone with a matching IP number from registering or posting.
</FONT>
</TD>
<TD valign="top">
<TEXTAREA NAME="ip_bans" COLS="35" ROWS="8" WRAP="VIRTUAL">
$ip_bans
</TEXTAREA>
</TD>
</TR>
ban_options


&TBB; #Table Border Bottom in cp_common.pl

&Submit("Update $vars_wordlets_cp{ban_lists}");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;