# UBB Query for Forum Password

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<LOGINHTML;

<center>
$standard_title_table

<TABLE cellpadding="0" border="0" width="$vars_style{TableWidth}">
<TR>
<TD colspan="2">
<BR><BR>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<B>$vars_wordlets{submit_forum_pw}</B>
<P>
</FONT>
</TD></TR>
</table>
<P>

<TABLE cellpadding="0" border="0" width="$vars_style{TableWidth}">
<TR>
<TD colspan="2" align="left">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
$vars_wordlets{forum_pw_explain}</A></FONT>
</TD>
</TR>
</table>
</center>

<FORM ACTION="$vars_config{CGIURL}/ultimatebb.cgi" METHOD="POST">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="forum_pw_check">
<INPUT TYPE="HIDDEN" NAME="f" VALUE="$_[1]">

$TBT

<TR bgcolor="$vars_style{TableColorStrip}">
<TD>
<FONT COLOR="$vars_style{TableStripTextColor}" SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>
$vars_wordlets{forum_column}: $forum_name
</B></FONT>
</TD>
</TR>

<TR bgcolor="$vars_style{AltColumnColor1}">
<TD align="left">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<B>$vars_wordlets{forum_pw}:</B>
<INPUT TYPE="PASSWORD" NAME="forum_pw" SIZE="30" MAXLENGTH="40">
</FONT>
</TD>
</TR>

$TBB
<P>

<center>

<INPUT TYPE="SUBMIT" NAME="submit" VALUE="$vars_wordlets{submit_forum_pw}">
</FORM>

</center>

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