# UBB LOGIN PAGE

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<LOGINHTML;
<center>
$standard_title_table
<P><BR>
<TABLE cellpadding="0" border="0" width="$vars_style{TableWidth}">
<TR>
<TD colspan="2" align="left">
<FONT size="2" face="$vars_style{FontFace}">
<B>&#187; $vars_wordlets{need_to_register_bold}</B> <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=agree">$vars_wordlets{need_to_register_link}</A>
<BR>
<B>&#187; $vars_wordlets{lost_password_bold}</B> <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=lost_password">$vars_wordlets{lost_password}</A>
</FONT>
</TD>
</TR>
</table>
</center>

<FORM ACTION="ultimatebb.cgi" METHOD="POST">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="do_login">
<INPUT TYPE="HIDDEN" NAME="refer" VALUE="$ENV{'HTTP_REFERER'}">

$TBT

<TR bgcolor="$vars_style{TableColorStrip}">
<TD colspan="2">
<FONT COLOR="$vars_style{TableStripTextColor}" SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>
$vars_wordlets{login_to} $vars_config{BBName}
</B></FONT>
</TD>
</TR>


<TR bgcolor="$vars_style{AltColumnColor1}">
<TD>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
$vars_wordlets{login_name}:
</FONT>
</TD>
<TD>
<INPUT TYPE="TEXT" NAME="username" SIZE="30" MAXLENGTH="40">
</TD>
</TR>


<TR bgcolor="$vars_style{AltColumnColor1}">
<TD>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
$vars_wordlets{password_field}:
</FONT>
</TD>
<TD>
<INPUT TYPE="PASSWORD" NAME="password" SIZE="25" MAXLENGTH="30">
</TD>
</TR>

$TBB
<P>

<center>

<INPUT TYPE="SUBMIT" NAME="submit" VALUE="$vars_wordlets{login_now}">
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

# You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;