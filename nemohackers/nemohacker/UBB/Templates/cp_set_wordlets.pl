# THIS FILE DISPLAYS GUTS OF: Control Panel, Set Wordlets

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow(qq%All fields are required!%, "2", "#FFFFFF", "#000000", "left", "1");

&HeaderRow("$CurrentTab", "2", "#5d7790", "#FFFFFF", "center", "2");

# sort the hash and loop

foreach $var (sort keys %wordlets_fill) {

print<<WordletField;
<TR bgcolor="#FFFFFF">
<TD valign="top">
<font size="-1" face="Arial, Helvetica, sans-serif"><B>$var</B></FONT>
</TD>
<TD valign="top">
<TEXTAREA NAME="$var" ROWS="3" COLS="30" wrap="virtual">
$wordlets_fill{$var}
</TEXTAREA>
</TD></TR>

WordletField


}



&TBB; #Table Border Bottom in cp_common.pl

&Submit("Update $CurrentTab");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;