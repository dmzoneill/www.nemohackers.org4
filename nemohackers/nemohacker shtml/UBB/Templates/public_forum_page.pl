# FORUM PAGE - HTML FRAGMENTS


sub page_top {

if ($vars_display{CategoryView} eq 'yes') {

$cat_line1 = qq!
&nbsp; &#187; <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?&category=$category">
$cat_name</A>
!;

}

my $PageTop = qq~
<center>
<table border="0" width="$vars_style{TableWidth}">
<tr>
<td align="left" valign="top">
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi"><IMG SRC="$vars_config{NonCGIURL}/$vars_style{BBTitle}" BORDER="0"></A>
<BR>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}" color="$vars_style{LinkColor}"><B>
$forum_name
</B>
<br>
<FONT size= "1" COLOR="$vars_style{VisitedLinkColor}">
($vars_wordlets{moderated_by} $Moderator)
<P>
<BR>
</FONT></font>
</td>
<td valign="top" nowrap>
<CENTER>
<BR><BR>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$new_topic_button
</FONT>
<BR>
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$MainButtonsLine
<p>
$topic_view_line
</FONT>
</CENTER>
</td></tr></table>

<BR>
<table border="0" width="$vars_style{TableWidth}">
<tr>
<TD valign="bottom" align="right">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$more_topics_wording
</FONT>
</TD>
</tr>
</table>

<!-- Navigation/Login Table -->

$TBT

<TR bgcolor="$vars_style{AltColumnColor1}">
<TD NOWRAP align="left" valign="bottom">
<FONT SIZE="1"  FACE="$vars_style{FontFace}">
<B>&#187;&nbsp;
$show_logout
</B>
 </font>
</TD>
<TD valign="bottom" align="right">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
<B>
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi"><ACRONYM TITLE="$vars_wordlets{forum_acronym}">
$vars_config{BBName}</ACRONYM></A>

$cat_line1

&nbsp;

&#187;
$forum_name
</B>
</FONT>
</TD>
</TR>

$TBB

<!-- End Navigation/Login Table -->
<table border="0" width="$vars_style{TableWidth}">
<tr>
<TD valign="top" align="left">
<FONT SIZE="2" FACE="$vars_style{FontFace}">
$this_forum[16]
</FONT>
</TD>
</tr>
</table>
<BR>
$TBT

~;
return($PageTop);
} # end page_top


sub page_bottom {
my $hop_to_options = &hop_to_list;
local($red_hot, $yellow_hot); undef($red_hot); undef($yellow_hot);

if ($vars_display{HotIcons} eq 'ON') {
	$red_hot = qq! (<img src="$vars_config{NonCGIURL}/$vars_style{hot_new_topic_folder}"  border=0 alt="$vars_wordlets{hot_topic}">&nbsp;&nbsp;$vars_wordlets{more_than} $vars_display{HotCount} $vars_wordlets{replies}) !;
	$yellow_hot = qq!(<img src="$vars_config{NonCGIURL}/$vars_style{hot_old_topic_folder}"  border=0 alt="$vars_wordlets{hot_topic}">&nbsp;&nbsp;$vars_wordlets{more_than} $vars_display{HotCount} $vars_wordlets{replies})!;
}


my $page_bottom = qq~
$TBB
<P>
<table border="0" width="$vars_style{TableWidth}">
<TR>
<TD align="left" valign="bottom">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$vars_wordlets{times_are} $vars_time{TimeZone}.
</FONT>
</TD>
<TD align="right" valign="bottom">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$more_topics_wording
</FONT>
</TD>
</TR></TABLE>

$TBT

<TR bgcolor="$vars_style{TableColorStrip}">
<TD align="left" valign="top">
<FONT SIZE="1" COLOR="$vars_style{TableStripTextColor}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{posting_rights}</B>
</FONT>
</TD>
<TD align="left" valign="top">
<FONT SIZE="1" COLOR="$vars_style{TableStripTextColor}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{icon_legend}</B>
</FONT>
</TD>
</TR>
<TR bgcolor="$vars_style{AltColumnColor1}">
<TD align="left" valign="top">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$topic_legend{$topic_restrict}
<P>
$reply_legend{$reply_restrict}
</FONT>
</TD>
<TD align="left" valign="top">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
<img src="$vars_config{NonCGIURL}/$vars_style{new_topic_folder}" border="0" alt="$vars_wordlets{new_topic}">&nbsp;&nbsp;$vars_wordlets{new_topic} $red_hot<BR>
<img src="$vars_config{NonCGIURL}/$vars_style{old_topic_folder}"  border=0 alt="$vars_wordlets{old_topic}">&nbsp;&nbsp;$vars_wordlets{old_topic} $yellow_hot<BR>
<IMG SRC="$vars_config{NonCGIURL}/lock.gif" hspace=2 BORDER=0 ALT="$vars_wordlets{closed_topic}">&nbsp;&nbsp;$vars_wordlets{closed_topic}
</FONT>
</TD>
</TR>
$TBB

<table border="0" width="$vars_style{TableWidth}">
<TR>
<TD align="left" valign="middle">
$new_topic_button
</TD>
<TD align="right" valign="middle">
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}">

<FORM ACTION="$vars_config{CGIURL}/ultimatebb.cgi" METHOD="GET">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="forum">
<B>$vars_wordlets{hop_to} </B><SELECT NAME="f">
$hop_to_options
</SELECT><INPUT TYPE="SUBMIT" NAME="SUBMIT" VALUE="$vars_wordlets{click_go}"></FORM>
</FONT>
</TD>
</TR>
</TABLE>
<P>
~;
}

sub topic_table_header {

my $this_html = qq~
<TR bgcolor="$vars_style{TableColorStrip}">
<!-- folder column -->
<TD>&nbsp;</TD>
~;

if ($vars_display{AllowIcons} eq 'TRUE') {

$this_html .= qq~
<!-- icons column -->
<TD>&nbsp;</TD>
~;

} # end icons column

$this_html .= qq~
<TD>
<FONT SIZE="1" COLOR="$vars_style{TableStripTextColor}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{topic_header}</B></FONT>
</TD>
<TD>
<FONT SIZE="1" COLOR="$vars_style{TableStripTextColor}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{topic_starter_header}</B></FONT>
</TD>
<TD align="center">
<FONT SIZE="1" COLOR="$vars_style{TableStripTextColor}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{total_replies_header}</B></FONT>
</TD>
<TD>
<FONT SIZE="1" COLOR="$vars_style{TableStripTextColor}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{last_post_column}</B></FONT>
</TD>
~;

$this_html .= qq~</TR>~;

return($this_html);

} # end topic_table_header


sub topic_row {

my $alt_color = "$vars_style{AltColumnColor1}";


my $this_html = qq~
<TR>
<!-- folder column -->
<TD valign="top" valign="bottom" align="center" bgcolor="$alt_color">

<SCRIPT language="Javascript">
<!--

var closed_topic = "$closed";
var fiery = "$hot_icon";
var post_j = "$forum_topics{$one}";
if (post_j > session_j) {
if (closed_topic == "X") {
document.writeln('<IMG SRC="$vars_config{NonCGIURL}/$vars_style{new_locked_folder}" BORDER="0">');
} else if (fiery == "yes") {
document.writeln('<IMG SRC="$vars_config{NonCGIURL}/$vars_style{hot_new_topic_folder}" BORDER="0">');
} else {
document.writeln('<IMG SRC="$vars_config{NonCGIURL}/$vars_style{new_topic_folder}" BORDER="0">');
}
}  else {
if (closed_topic == "X") {
document.writeln('<IMG SRC="$vars_config{NonCGIURL}/$vars_style{old_locked_folder}" BORDER="0">');
} else if (fiery == "yes") {
document.writeln('<IMG SRC="$vars_config{NonCGIURL}/$vars_style{hot_old_topic_folder}" BORDER="0">');
} else {
document.writeln('<IMG SRC="$vars_config{NonCGIURL}/$vars_style{old_topic_folder}" BORDER="0">');
}
}
//-->
</SCRIPT>

</TD>
~;

if ($vars_display{AllowIcons} eq 'TRUE') {

if ($alt_color eq "$vars_style{AltColumnColor1}") {
	$alt_color = "$vars_style{AltColumnColor2}";
}  else {
	$alt_color = "$vars_style{AltColumnColor1}";
}

$this_html .= qq~
<!-- icons column -->
<TD valign="top" valign="bottom" align="center" bgcolor="$alt_color">
<ACRONYM TITLE="$vars_wordlets{msg_icon_acronym}">
<IMG SRC="$vars_config{NonCGIURL}/icons/icon$msg_icon.gif" BORDER="0"></ACRONYM>
</TD>
~;

} # end icons column

if ($alt_color eq "$vars_style{AltColumnColor1}") {
	$alt_color = "$vars_style{AltColumnColor2}";
}  else {
	$alt_color = "$vars_style{AltColumnColor1}";
}

#fix for &#0124; -> | in alternate charsets

$subject =~ s/\&amp\;\#0124\;/\|/g;

$this_html .= qq~
<TD valign="top" bgcolor="$alt_color">
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=get_topic&f=$in{f}&t=$one">$subject</A> $extra_pages</FONT>
</TD>
~;

if ($alt_color eq "$vars_style{AltColumnColor1}") {
	$alt_color = "$vars_style{AltColumnColor2}";
}  else {
	$alt_color = "$vars_style{AltColumnColor1}";
}

$this_html .= qq~
<TD valign="top" bgcolor="$alt_color">
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$topic_start_name</FONT>
</TD>
~;


if ($alt_color eq "$vars_style{AltColumnColor1}") {
	$alt_color = "$vars_style{AltColumnColor2}";
}  else {
	$alt_color = "$vars_style{AltColumnColor1}";
}

$this_html .= qq~
<TD valign="top" bgcolor="$alt_color" align="center">
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$total_replies</FONT>
</TD>
~;


if ($alt_color eq "$vars_style{AltColumnColor1}") {
	$alt_color = "$vars_style{AltColumnColor2}";
}  else {
	$alt_color = "$vars_style{AltColumnColor1}";
}

$this_html .= qq~
<TD NOWRAP valign="top" bgcolor="$alt_color" align="left">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$TheDate</FONT> <FONT SIZE="1" FACE="$vars_style{FontFace}" color="$vars_style{TimeColor}">$last_time</FONT></TD>
~;

$this_html .= qq~</TR>~;

return($this_html);

}  # end topic_row

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

# You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;