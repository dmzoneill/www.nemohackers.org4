# UBB LOST LOGIN/PW REQUEST FORM

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
<B>$vars_wordlets{find_login}</B>
<P>
</FONT>
</TD></TR>
</table>


<TABLE cellpadding="0" border="0" width="$vars_style{TableWidth}">
<TR>
<TD colspan="2" align="left">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
$vars_wordlets{find_login_explain}</A></FONT>
</TD>
</TR>
</table>
</center>

<FORM ACTION="ultimatebb.cgi" METHOD="POST">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="find_lost">
$TBT

<TR bgcolor="$vars_style{AltColumnColor1}">
<TD>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
$vars_wordlets{email_field}:
</FONT>
</TD>
<TD>
<INPUT TYPE="TEXT" NAME="email" SIZE="40" MAXLENGTH="80">
</TD>
</TR>

$TBB
<P>

<center>

<INPUT TYPE="SUBMIT" NAME="submit" VALUE="$vars_wordlets{find_login}">
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