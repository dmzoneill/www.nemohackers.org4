# UBB LOST PW RESUTLS PAGE

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
$confirm
</FONT>
</TD></TR>
</table>

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