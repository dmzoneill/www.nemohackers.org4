# UBB FRIEND PAGE

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<ubb_friendly;

<FORM NAME="REPLIER" METHOD="POST" ACTION="$vars_config{CGIURL}/ultimatebb.cgi">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="send_topic">
<INPUT TYPE="HIDDEN" NAME="f" VALUE="$in{f}">
<INPUT TYPE="HIDDEN" NAME="t" VALUE="$in{t}">
<INPUT TYPE="HIDDEN" NAME="send_it" VALUE="true">

<CENTER>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR><TD>
<IMG src="$vars_config{NonCGIURL}/$vars_style{ubb_friend}" border="0">
</TD>
<TD align="center" align="bottom">
<BR><BR>
<B><FONT size="1" face="$vars_style{FontFace}">
$MainButtonsLine
</FONT>
</TD></TR></TABLE>

<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD align="bottom">
<FONT size="1" face="$vars_style{FontFace}">
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=forum&f=$in{f}">$this_forum[1]</A> &#187; <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=get_topic&f=$in{f}&t=$in{t}">$stat_line[4]</A>
</FONT>
</TD>
</TR>
</TABLE></CENTER>

$TBT

<tr bgcolor="$vars_style{TableColorStrip}">
<td colspan="2">
<FONT SIZE="2" FACE="$vars_style{FontFace}" COLOR="$vars_style{TableStripTextColor}">
<B>$vars_wordlets{ubb_friend_header}</B>
</FONT>
</td></tr>


<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>
$vars_wordlets{email_from}
</B><BR>
</FONT></td>
<td>
<INPUT TYPE="TEXT" NAME="your_name" value= "$pubname" SIZE=30 MAXLENGTH=30>
</td>
</tr>


<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>
$vars_wordlets{send_to} ($vars_wordlets{email_field}):
</B>
</FONT></td>
<td>
<INPUT TYPE="TEXT" NAME="email_to" SIZE=35 MAXLENGTH=35>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>
$vars_wordlets{subject_field}:
</B>
</FONT></td>
<td>
<INPUT TYPE="TEXT" NAME="subject" value="$stat_line[4]" SIZE=35 MAXLENGTH=35>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="top" NOWRAP>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>
$vars_wordlets{message_field}:</FONT>
</B>
<p><BR>
<FONT SIZE="1" FACE="$vars_style{FontFace}" COLOR="$vars_style{VisitedLinkColor}">
$vars_wordlets{html_is_off}
<BR>
$vars_wordlets{ubbcode_is_off}
</FONT>
</td>
<td>
<TEXTAREA NAME="message" ROWS=10 COLS=45 WRAP="VIRTUAL">
$message
</TEXTAREA>
</td></tr>

$TBB
<P>
<CENTER>
<INPUT TYPE="SUBMIT" NAME="submit" VALUE="$vars_wordlets{submit_ubb_friend}">
</CENTER>
</FORM>
<P>
ubb_friendly

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