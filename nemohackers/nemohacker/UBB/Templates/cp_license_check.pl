# Control Panel, License Check

&FormStart("http://www.infopop.com/cgi-bin/license_review.cgi", "$Hiddens");

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
<B>Provide License Identification</B></FONT>
</TD></TR>

<TR bgcolor="white">
<TD>
<FONT SIZE="1" FACE="Verdana, Arial">
License Number
</FONT>
</TD>
<TD valign="top">
<input type="text" maxlength="40" name="LicenseNumber" size=35>
</TD>
</TR>


<TR bgcolor="white"><TD>
<FONT SIZE="1" FACE="Verdana, Arial">
License Password
</FONT>
</TD>
<TD valign="top">
<input type="password" maxlength="30" name="LicensePassword" size=20>
</TD>
</TR>
license_id



&TBB; #Table Border Bottom in cp_common.pl

&Submit("Update $vars_wordlets_cp{license_check}");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;