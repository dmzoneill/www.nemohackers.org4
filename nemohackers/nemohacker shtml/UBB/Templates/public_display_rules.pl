# UBB DISPLAY RULES

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print <<COPPACheck;
<CENTER>
$standard_title_table
</CENTER>

$TBT

<tr bgcolor="$vars_style{TableColorStrip}">
<td>
<b><FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}">
$vars_wordlets{rules_title}
</font></b>
</td>
</tr>

<tr>
<td bgcolor="$vars_style{CategoryStripColor}">
<FONT size="$vars_style{TextSize}" color="$vars_style{CategoryStripTextColor}" face="$vars_style{FontFace}">
<p><b>
$vars_wordlets{register_agree}
</b>
<p>
</FONT>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td><FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
$BBRules
</font></td>
</tr>

$TBB

<center>

<FORM ACTION="$vars_config{CGIURL}/ultimatebb.cgi" METHOD="POST">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="register_page">
<INPUT TYPE="SUBMIT" NAME="submit" VALUE="$vars_wordlets{agree}">

</FORM>

<P>

<FORM ACTION="$vars_config{CGIURL}/ultimatebb.cgi" METHOD="POST">

<INPUT TYPE="SUBMIT" NAME="submit" VALUE="$vars_wordlets{cancel}">

</FORM>
</center>
<P>

COPPACheck

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