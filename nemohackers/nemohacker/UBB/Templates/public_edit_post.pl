# UBB EDIT POST PAGE

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<NewTopicGuts;

<FORM NAME="REPLIER" METHOD="POST" ACTION="$vars_config{CGIURL}/ultimatebb.cgi">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="submit_edit">
<INPUT TYPE="HIDDEN" NAME="f" VALUE="$in{f}">
<INPUT TYPE="HIDDEN" NAME="t" VALUE="$in{t}">
<INPUT TYPE="HIDDEN" NAME="reply_num" VALUE="$in{reply_num}">
	  
<CENTER>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR><TD align="left" valign="top">
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi"><IMG src="$vars_config{NonCGIURL}/$vars_style{BBTitle}" border="0"></A>
</TD>
<TD align="center">
<B><FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">$vars_wordlets{edit_post}</FONT></B>
<P>
<FONT size="1" face="$vars_style{FontFace}">
$MainButtonsLine
</FONT>
</TD></TR></TABLE>

</CENTER>
<!-- Navigation/Login Table -->
<P>
$TBT

<TR bgcolor="$vars_style{AltColumnColor1}">

<TD align="left" valign="bottom" NOWRAP>
<FONT SIZE="1"  FACE="$vars_style{FontFace}">
<B>&#187;&nbsp;
$show_logout
</B></font>
</TD>

<TD align="right" valign="bottom">
<FONT SIZE="1"  FACE="$vars_style{FontFace}">
 <A HREF="$vars_config{CGIURL}/ultimatebb.cgi">
<ACRONYM TITLE="$vars_wordlets{forum_acronym}">
<B>$vars_config{BBName}</B></ACRONYM>
</A>

$cat_line1

&nbsp;&#187;  <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=forum&f=$in{f}">
<B>$this_forum[1]</B>
</A>

&nbsp;&#187; 
<B><A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=get_topic&f=$in{f}&t=$in{t}">$stat_line[4]</A></B>

</font>
</TD>
</TR>

$TBB

<!-- End Navigation/Login Table -->
<P>

$TBT

<tr bgcolor="$vars_style{TableColorStrip}">
<td colspan="2">
<FONT SIZE="2" FACE="$vars_style{FontFace}" COLOR="$vars_style{TableStripTextColor}">
<B>$vars_wordlets{edit_post}</B>
</FONT>
</td></tr>

<tr bgcolor="$vars_style{CategoryStripColor}">
<td colspan="2">
<FONT SIZE="2" FACE="$vars_style{FontFace}" COLOR="$vars_style{CategoryStripTextColor}">
<B>
$delete_warning
</B>
</FONT>
</td></tr>

NewTopicGuts

if ($permit_delete eq 'true') {

print<<ROWS;

<tr bgcolor="$vars_style{TableColorStrip}">
<td valign="top" colspan="2">
<INPUT TYPE="CHECKBOX" NAME="delete_post" VALUE="yes">
&nbsp;&nbsp;
<FONT SIZE="$vars_style{TextSize}" color="$vars_style{TableStripTextColor}" FACE="$vars_style{FontFace}"><B>
$vars_wordlets{delete_post}
<P>
$warning_words
</B></FONT>
</td>
</tr>

ROWS

}

if ($warning_words ne '') {

# allow edit of subject if this is the first post in topic

print<<the_subject;
<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="top">
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>
$vars_wordlets{subject_field}:
</B></FONT>
</td>
<td valign="top" align="left">
<INPUT TYPE="TEXT" NAME="topic_subject" VALUE="$this_subject" SIZE="40" MAXLENGTH="85">
</td>
</tr>

the_subject

}

# icon row?
if ($vars_display{AllowIcons} eq 'TRUE') {

print<<IconsRow;

<TR bgcolor="$vars_style{AltColumnColor1}">
<td NOWRAP valign="top">
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>
$vars_wordlets{message_icon}:
</B></FONT></td>
<td valign="top">
$icon_field
</td>
</tr>

IconsRow

} # allow icons row

# message

print<<the_message;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="top" NOWRAP>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>$vars_wordlets{message_field}:</B>
<p><BR>
<FONT SIZE="1" COLOR="$vars_style{VisitedLinkColor}">
$is_html
<BR>
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=ubb_code_page" target=_blank>
$is_ubb</A>
<BR>$ubb_images_wording</FONT></FONT>
</td>
<td>
<TEXTAREA NAME="message" ROWS=10 COLS=45 WRAP="VIRTUAL">
$message
</TEXTAREA>
</td></tr>

$TBB

$TBT

<TR  bgcolor="$vars_style{TableColorStrip}">
<TD valign="top" width="40%">
<font face="$vars_style{FontFace}" size="$vars_style{TextSize}" color="$vars_style{TableStripTextColor}"><b>
$vars_wordlets{instant_graemlins}
</b></font></TD>
<TD valign="top" width="60%">
<font face="$vars_style{FontFace}" size="$vars_style{TextSize}" color="$vars_style{TableStripTextColor}"><b>
$vars_wordlets{instant_ubbcode}
</b></font></TD>
</TR>

<TR bgcolor="$vars_style{AltColumnColor1}">
<TD valign="top" align="left">
$smilie_list
</TD><TD valign="top" align="left">
<font face="$vars_style{FontFace}" size="1">
$ubb_code_buttons
</font></TD>
</TR>

$TBB

$TBT

<tr bgcolor="$vars_style{TableColorStrip}">
<td>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}" COLOR="$vars_style{TableStripTextColor}">
<B>$vars_wordlets{options_header}</B>
</FONT>
</td></tr>

<TR bgcolor="$vars_style{AltColumnColor1}">
<td valign=top>
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$show_sig
<BR>
$disable_smilies
<BR>
$close_option
</FONT>
</td></tr>

$TBB

<P>
<CENTER>
<INPUT TYPE="SUBMIT" NAME="submit" VALUE="$vars_wordlets{edit_post}">
</CENTER>
</FORM>
<P>
the_message


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