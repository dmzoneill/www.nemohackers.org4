# TOPIC PAGE - HTML FRAGMENTS
sub topic_top {

my $html_stuff = qq~
<center>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD valign="top" align="left">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi"><IMG SRC="$vars_config{NonCGIURL}/$vars_style{BBTitle}" border="0"></A>
$topic_closed
</font>
</TD>
<TD valign="top" NOWRAP>
<FONT SIZE="1" FACE="$vars_style{FontFace}">
<center>
<BR><BR>
$topic_wording&nbsp;&nbsp;$reply_wording
<BR>
$MainButtonsLine
</font>
</center>
</TD></TR>
</TABLE>

<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD valign="bottom" align="left">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$close_transfer_wording &nbsp;
</FONT>
</TD>
<TD valign="bottom" align="right">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=next_topic&f=$forum_number&t=$topic_number&go=older"><img src="$vars_config{NonCGIURL}/$vars_style{prev_topic}" border="0" alt="$vars_wordlets{next_oldest_topic}"></A> &nbsp; <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=next_topic&f=$forum_number&t=$topic_number&go=newer"><img src="$vars_config{NonCGIURL}/$vars_style{next_topic}" border="0" alt="$vars_wordlets{next_newest_topic}"></A>
</FONT>
</TD>

</TR>
</TABLE>

<!-- Navigation/Login Table -->
$TBT

<TR bgcolor="$vars_style{AltColumnColor1}">

<TD align="left" valign="bottom" NOWRAP>
<FONT SIZE="1"  FACE="$vars_style{FontFace}">
<B>&#187;&nbsp;
$show_logout
</B>
 </font>
</TD>

<TD align="right" valign="bottom">
<FONT SIZE="1"  FACE="$vars_style{FontFace}">
 <A HREF="$vars_config{CGIURL}/ultimatebb.cgi">
<ACRONYM TITLE="$vars_wordlets{forum_acronym}">
<B>$vars_config{BBName}</B></ACRONYM>
</A>

$cat_line1

&nbsp;

&#187;  <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=forum&f=$forum_number">
<B>$this_forum[1]</B>
</A>

&nbsp;

&#187; 
<B>$stat_line[4] $ThisPage</B>

</font>
</TD>
</TR>

$TBB

<!-- End Navigation/Login Table -->

<BR>

<!-- UBB Friend  -->

<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD valign="bottom" align="left">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$ubb_friend_on &nbsp;
</font>
</TD>

<TD align="right" valign="bottom">
<FONT SIZE="1"  FACE="$vars_style{FontFace}">
<b>$TopicPageTotal</b> &nbsp;
</FONT></TD>

</TR>
</TABLE>

<!-- End UBB Friend  -->
$TBT

<TR bgcolor="$vars_style{TableColorStrip}">
<TD valign="middle" width="18%">
<FONT SIZE="1" face="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}"><B>
$vars_wordlets{author_header}
</B></FONT>
</TD>
<TD valign="middle">
<FONT SIZE="1" face="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}"><B>
$vars_wordlets{topic_header}: $stat_line[4]</B></FONT>
</TD>
</TR>

~;
return ($html_stuff);
} # end topic_top

sub topic_row {

if ($alt_color eq "$vars_style{AltColumnColor1}") {
$alt_color = "$vars_style{AltColumnColor2}";
}  else {
$alt_color = "$vars_style{AltColumnColor1}";
}

my $row = qq~
<tr><td bgcolor="$alt_color" colspan="2">

<table width="100%" cellpadding=3 cellspacing=0>
<TR bgcolor="$alt_color">

<TD width="18%" valign="top">
<FONT SIZE="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>
$show_public_name
</B></font>
<BR><FONT SIZE="1" face="$vars_style{FontFace}">
$user_status
<BR>
$member_number
<P>
$rating_line
</FONT>
</TD>
<TD>
$this_icon
<FONT SIZE="1" color="$vars_style{TimeColor}" face="$vars_style{FontFace}">
$vars_wordlets{posted} $ThisDate $FormatTime &nbsp;&nbsp;&nbsp;
$profile_link $homepage_link $email_link $pm_link &nbsp;&nbsp;$edit_link $direct_reply
</FONT>
<HR size="1" color="$vars_style{hr_color}">
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$post_body
</FONT>
<HR size="1" color="$vars_style{hr_color}">
<FONT SIZE="1"  face="$vars_style{FontFace}">
$AuthorExtra $ip_wording
</FONT>
</td></tr>
</table>
</td></tr>
~;

return ($row);
} # end topic row

sub topic_bottom {

my $bottom = qq~
$TBB

<P>
<!-- Time Zone and Page Jumps -->

<TABLE BORDER="0" width="$vars_style{TableWidth}">
<TR>
<TD align="left" valign="bottom">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$vars_wordlets{times_are} $vars_time{TimeZone}
</FONT>
</TD>
<TD valign="bottom" align="right">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
<b>$TopicPageTotal</b> &nbsp;
</FONT>
</TD>
</TR>
</TABLE>

<!-- Bottom Navigation Table -->

$TBT

<TR>

<TD width="25%" bgcolor="$vars_style{AltColumnColor1}" NOWRAP valign="bottom" align="center">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$topic_wording&nbsp;&nbsp;$reply_wording
</FONT>
</TD>

<TD width="50%" bgcolor="$vars_style{AltColumnColor2}" valign="bottom" align="center">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$close_option &nbsp;&nbsp; $move_option &nbsp;&nbsp; $delete_option
</FONT>
</TD>

<TD width="25%" bgcolor="$vars_style{AltColumnColor1}" align="right" valign="middle">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=next_topic&f=$forum_number&t=$topic_number&go=older"><img src="$vars_config{NonCGIURL}/$vars_style{prev_topic}" border="0" alt="$vars_wordlets{next_oldest_topic}"></A> &nbsp; <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=next_topic&f=$forum_number&t=$topic_number&go=newer"><img src="$vars_config{NonCGIURL}/$vars_style{next_topic}" border="0" alt="$vars_wordlets{next_newest_topic}"></A>
</FONT>
</TD>

</TR>

$TBB

<!-- Hop To Box -->

<TABLE BORDER="0" width="$vars_style{TableWidth}">
<TR>
<TD align="right" valign="top" NOWRAP>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<FORM ACTION="$vars_config{CGIURL}/ultimatebb.cgi" METHOD="GET">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="forum">
<B>$vars_wordlets{hop_to} </B><SELECT NAME="f">
$hop_to_options
</SELECT>
<INPUT TYPE="SUBMIT" NAME="SUBMIT" VALUE="$vars_wordlets{click_go}">
</FORM></FONT>
</TD>
</TR>
</TABLE>

</center>
<P>
~;
return ($bottom);

}  # end topic_bottom


# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

# You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;