# UBB SHOW IP

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<ip_html;

<center>
$standard_title_table

$TBT

<TR bgcolor="$vars_style{AltColumnColor1}">
<TD valign="bottom" align="left">
<FONT size="1" face="$vars_style{FontFace}">
<B>&#187; 
$show_logout
</B>
</font>
</TD>
<TD valign="bottom" align="right">
<FONT size="1" face="$vars_style{FontFace}"><B>
<a href="$vars_config{CGIURL}/ultimatebb.cgi">$vars_config{BBName}</a> &raquo; $vars_wordlets{ip_number_for} $this_pub_name
</B></font>
</TD>
</TR>

$TBB
<P>

<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD valign="bottom">
<B><FONT size="1" face="$vars_style{FontFace}">
&#171; <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=get_topic&f=$in{f}&t=$in{t}">$vars_wordlets{return_to_topic}</A> &#187;</B>
</FONT>
</TD></TR></TABLE>

$TBT

<TR bgcolor="$vars_style{TableColorStrip}">
<TD colspan="2">
<FONT size="$vars_style{TextSize}" color="$vars_style{TableStripTextColor}" face="$vars_style{FontFace}">
<B>$vars_wordlets{ip_number_for} $this_pub_name</B>
</FONT>
</TD>
</TR>

<TR bgcolor="$vars_style{BGColor}">
<TD width="20%">
<B><FONT FACE="$vars_style{FontFace}" SIZE="$vars_style{TextSize}">$vars_wordlets{ip}</B></FONT>
</TD>
<TD>
<B><FONT FACE="$vars_style{FontFace}" SIZE="$vars_style{TextSize}">$ip_number</FONT></B>
</td></tr>
<TR bgcolor="$vars_style{BGColor}">
<TD width="20%" valign="top">
<B><FONT FACE="$vars_style{FontFace}" SIZE="$vars_style{TextSize}">
Post:
</B></FONT>
</TD>
<TD valign="top">
<FONT FACE="$vars_style{FontFace}" SIZE="1">
posted by $this_pub_name</font>
<HR>
<FONT FACE="$vars_style{FontFace}" SIZE="$vars_style{TextSize}">
$this_message
</FONT>
</td></tr>

$TBB
<P>

<P>
ip_html

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