# UBB SHOW EMAIL

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<email_html;

<center>
$standard_title_table

$TBT

<TR bgcolor="$vars_style{TableColorStrip}">
<TD colspan="2">
<FONT size="$vars_style{TextSize}" color="$vars_style{TableStripTextColor}" face="$vars_style{FontFace}">
$vars_wordlets{send_email_to}: $pub_name
</FONT>
</TD>
</TR>

<TR bgcolor="$vars_style{BGColor}">
<TD width="20%">
<B><FONT FACE="$vars_style{FontFace}" SIZE="$vars_style{TextSize}">$vars_wordlets{email_click} <A HREF="mailto:$user_email">$user_email</A></B></FONT>
</TD>
</tr>

$TBB
<P>
email_html

# standard bottom of HTML page
print "$Footer";

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;