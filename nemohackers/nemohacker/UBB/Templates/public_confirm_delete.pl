# UBB CONFIRM DELETE

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<LOGINHTML;


<center>

$standard_title_table
</center>

<P>

<FORM ACTION="ultimatebb.cgi" METHOD="POST">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="delete_topic">
<INPUT TYPE="HIDDEN" NAME="confirm" VALUE="yes">
<INPUT TYPE="HIDDEN" NAME="f" VALUE="$in{f}">
<INPUT TYPE="HIDDEN" NAME="t" VALUE="$in{t}">
$TBT

<TR bgcolor="$vars_style{BGColor}">
<TD>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<B>$vars_wordlets{confirm_topic_delete}</B>
<P>
<CENTER>
<INPUT TYPE="SUBMIT" NAME="submit" VALUE="$vars_wordlets{confirm_delete}">
</CENTER>
<P>
</FONT>
</TD>
</TR>
$TBB
<P>
</FORM>
<P>
<CENTER>
<table width="$vars_style{TableWidth}" border="0">
<tr>
<td>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<B>$vars_wordlets{dont_delete} &nbsp; <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=get_topic&f=$in{f}&t=$in{t}"> $vars_wordlets{return_to_topic}</A></B>
</FONT>
</td></tr>
</table></CENTER>
<P>
LOGINHTML

# standard bootom of HTML page
print "$Footer";

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;