# UBB NEW REPLY FORM

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<NewTopicGuts;

<FORM NAME="REPLIER" METHOD="POST" ACTION="$vars_config{CGIURL}/ultimatebb.cgi">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="submit_new_reply">
<INPUT TYPE="HIDDEN" NAME="f" VALUE="$in{f}">
<INPUT TYPE="HIDDEN" NAME="t" VALUE="$in{t}">
	  
<CENTER>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR><TD>
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi"><IMG src="$vars_config{NonCGIURL}/$vars_style{BBTitle}" border="0"></A>
</TD>
<TD align="center">
<B><FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">$vars_wordlets{post_new_reply}</FONT></B>
<P>
<FONT size="1" face="$vars_style{FontFace}">
$MainButtonsLine
</FONT>
</TD></TR></TABLE>

<P>

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
<a href="$vars_config{CGIURL}/ultimatebb.cgi">$vars_config{BBName}</a> &raquo; <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=forum&f=$in{f}">$this_forum[1]</A> &raquo; <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=get_topic&f=$in{f}&t=$in{t}">$stat_line[4]</A> &raquo; $vars_wordlets{post_new_reply}
</B></font>
</TD>
</TR>

$TBB
<P>
</CENTER>

$TBT

<tr bgcolor="$vars_style{TableColorStrip}">
<td colspan="2">
<FONT SIZE="2" FACE="$vars_style{FontFace}" COLOR="$vars_style{TableStripTextColor}">
<B>$vars_wordlets{post_new_reply}</B>
</FONT>
</td></tr>

NewTopicGuts

# if this forum permits unreg users... contingency

if ($username ne '') { 

print<<ROWS;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td align="top">
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>
$vars_wordlets{displayed_name}:
</B></FONT></td>
<td valign="top">
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>
$pubname &nbsp;&nbsp;&nbsp;&nbsp;[<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=logoff">$vars_wordlets{logout}</A>]
</B></FONT>
</td>
</tr>

ROWS

} else {

print<<ROWS;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>
$vars_wordlets{displayed_name} 
</B></FONT><BR>
<FONT SIZE="1" face="$vars_style{FontFace}" >
$vars_wordlets{unreg_author_notice} <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=login">$vars_wordlets{login_now}</A>.
</FONT>
</td>
<td>
<INPUT TYPE="TEXT" NAME="your_name" SIZE="25" MAXLENGTH="25">
</td>
</tr>

ROWS

}  # end topic_restrict check

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
<TEXTAREA NAME="message" ROWS=10 COLS=45 WRAP="VIRTUAL">$insert_reply_to</TEXTAREA>
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
</TD>
<TD valign="top" align="left">
<font face="$vars_style{FontFace}" size="1">
$ubb_code_buttons
</font>
</TD>
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
the_message


print<<NearBottom;
$TBB
<P>
<CENTER>
<INPUT TYPE="SUBMIT" NAME="submit" VALUE="$vars_wordlets{submit_new_reply}">
</CENTER>
</FORM>
<P>
<CENTER>
$i_frame
</CENTER>
<P>
NearBottom

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