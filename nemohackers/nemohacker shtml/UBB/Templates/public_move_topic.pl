# UBB MOVE TOPIC PAGE

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

if ($vars_registration{EmailVerify} eq 'ON') {
$email_verify_requirement = qq!$vars_wordlets{email_verify_explain}!;
} # if admin has set email verify ON

$subject =~ s/\&amp\;\#0124\;/\|/g;

print<<MoveTheTopic;

<TABLE border="0" width="$vars_style{TableWidth}">
<TR><TD>
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi"><IMG src="$vars_config{NonCGIURL}/$vars_style{BBTitle}" border="0"></A>
</TD>
<TD align="center">
<B><FONT size="3" face="$vars_style{FontFace}" color="$vars_style{BBTitleFontColor}">$vars_config{BBName}</FONT></B>
<br>
<FONT size="1"  face="$vars_style{FontFace}">
$MainButtonsLine
</FONT>
</TD></TR></TABLE>

<FORM ACTION="$vars_config{CGIURL}/ultimatebb.cgi">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="transfer_topic">
<INPUT TYPE="HIDDEN" NAME="f" VALUE="$in{f}">
<INPUT TYPE="HIDDEN" NAME="t" VALUE="$in{t}">

$TBT


<tr bgcolor="$vars_style{TableColorStrip}">
<td colspan="2">
<b><FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}">
$vars_wordlets{move_topic}: $subject
</FONT></b>
</td>
</tr>

<tr>
<td colspan="2" bgcolor="$vars_style{CategoryStripColor}">
<FONT size="$vars_style{TextSize}" color="$vars_style{CategoryStripTextColor}" face="$vars_style{FontFace}">
<B><p>
$vars_wordlets{move_explained}
</B>
</FONT>
</td>
</tr>

<tr>
<td colspan="2" bgcolor="$vars_style{BGColor}">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<B>$vars_wordlets{move_to}</B>
<BR>
<SELECT NAME="transfer_to">
$hop_to_options
</SELECT>
<P>
<INPUT TYPE="RADIO" NAME="move_type" VALUE="keep" CHECKED>&nbsp;&nbsp;
$vars_wordlets{move_keep}
<P>
<INPUT TYPE="RADIO" NAME="move_type" VALUE="delete">&nbsp;&nbsp; $vars_wordlets{move_delete}
</FONT>
</td>
</tr>

$TBB

<P>
<CENTER><INPUT TYPE="SUBMIT" NAME="submit" VALUE="$vars_wordlets{move_topic}"></CENTER>

<P>
</FORM>
<P>
MoveTheTopic


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