# Control Panel, Ban Lists


print<<the_explanation;
<center>
<table border="0" width="95%">
<TR><TD align="left">
<P><FONT SIZE="2" FACE="Verdana, Arial">
You may review your UBB license information and make changes to your account using this form.
</FONT>
</TD></TR></TABLE>
</center>
the_explanation

&TBT; #Table Border Top in cp_common.pl

print<<license_id;

<TR bgcolor="#5d7790">
<TD colspan="2">
<FONT SIZE="2" color="white" FACE="Verdana, Arial">
<B>Version Check</B></FONT>
</TD></TR>

<TR bgcolor="white">
<TD>
<FONT SIZE="2" FACE="Verdana, Arial">
<b>Your Current Version: $version</b>
</FONT>
</TD>
</TR>


<TR bgcolor="white">
<TD align='center'>
<FONT SIZE="2" FACE="Verdana, Arial">
<b><a href="javascript:pop();">Check For Current UBB Version</A></b>
</FONT>
</TD>
</TR>
license_id



&TBB; #Table Border Bottom in cp_common.pl


# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;