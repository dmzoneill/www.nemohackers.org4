# UBB AGE CHECK PAGE

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
$vars_wordlets{register_age_check}
</font></b>
</td>
</tr>

<tr>
<td bgcolor="$vars_style{BGColor}">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<p>
$vars_wordlets{age_choice}
<p>
<b>
$vars_wordlets{born} <A HREF=$vars_config{CGIURL}/ultimatebb.cgi?ubb=agree&age=OK>$vars_wordlets{on_or_before} $COPPADate</a>
</b>
<p>
<b>
$vars_wordlets{born} <A HREF="$NextCOPPALink">$vars_wordlets{after} $COPPADate</a></b><br> &nbsp;
</FONT>
</td>
</tr>

<tr bgcolor="$vars_style{CategoryStripColor}">
<td><b><FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}" color="$vars_style{CategoryStripTextColor}">
$vars_wordlets{private_info}
</font></b></td>
</tr>

<tr>
<td bgcolor="$vars_style{BGColor}">
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<p>
$vars_wordlets{coppa_explained}
<p>
<A HREF="http://www.ftc.gov/opa/1999/9910/childfinal.htm">$vars_wordlets{coppa_release}</a> |
<A HREF="http://www.ftc.gov/os/1999/9910/64fr59888.pdf">$vars_wordlets{coppa_pdf}</A>
<P>
$PrivacyStatementVerbose
</font>
</td>
</tr>

<tr bgcolor="$vars_style{CategoryStripColor}">
<td><b><FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}" color="$vars_style{CategoryStripTextColor}">
$vars_wordlets{permission_form}</font></b></td>
</tr>

<tr>
<td bgcolor="$vars_style{BGColor}">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<p>
$vars_wordlets{parental_requirement}
<P>
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=show_coppa_form">$vars_wordlets{permission_form}</A>
</p></font>
</td>
</tr>

<tr bgcolor="$vars_style{CategoryStripColor}">
<td><b><FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}" color="$vars_style{CategoryStripTextColor}">
$vars_wordlets{contact_info}
</font></b></td>
  </tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td><FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
$vars_wordlets{parent_questions} <A HREF="mailto:$vars_registration{RegsAdminEmail}">$vars_registration{RegsAdminEmail}</A>.
</font></td>
</tr>

$TBB

COPPACheck

# standard bootom of HTML page
print "$Footer";

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

# You make modifications, but only for your own use and within the confines of the
# UBB License Agreement.

# DANGER: Do not remove the following line!
1;