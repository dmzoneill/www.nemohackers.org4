# Private Message TOPIC PAGE - HTML FRAGMENTS

sub topic_top {

my $html_stuff = qq~
<center>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD valign="top" align="left">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi"><IMG SRC="$vars_config{NonCGIURL}/$vars_style{BBTitle}" border="0"></A>
</font>
</TD>
<TD valign="top" NOWRAP>
<FONT SIZE="1" FACE="$vars_style{FontFace}">
<center><BR><BR>
<B>$vars_wordlets{pm_topic_header}</B>
<P>
$MainButtonsLine
</font>
</center>
</TD></TR>
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
$vars_config{BBName}</ACRONYM></A> &#187; <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=my_profile">$vars_wordlets{my_profile_header}</A> &#187; $vars_wordlets{pm_topic_header}: $pm_topic_data{subject}
</font>
</TD>
</TR>

$TBB

<!-- Options for Recipient -->
<BR>
<CENTER>
<TABLE BORDER="0" width="$vars_style{TableWidth}">
<TR>
<TD><FONT SIZE="1" FACE="$vars_style{FontFace}">
<B>$topic_closed</B></FONT>
</TD>
<TD align="right" valign="bottom">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$vars_wordlets{pm_to} $to_name: $reply_wording $topic_wording 
</FONT>
</TD>
<TD valign="bottom" align="right">
<FONT SIZE="1" FACE="$vars_style{FontFace}">

</FONT>
</TD>
</TR>
</TABLE>
</CENTER>

<!-- End Navigation/Login Table -->
<table border="0" cellpadding="0" cellspacing="1" width="$vars_style{TableWidth}">
<tr bgcolor="$vars_style{TableBorderColor}"><td>	 
<table border="0" width="100%" cellpadding="0" cellspacing="1">

<TR bgcolor="$vars_style{TableColorStrip}">
<TD valign="middle" width="18%">
<FONT SIZE="1" face="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}"><B>
$vars_wordlets{author_header}
</B></FONT>
</TD>
<TD valign="middle">
<FONT SIZE="1" face="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}"><B>
$vars_wordlets{topic_header}: $pm_topic_data{subject}</B></FONT>
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
</FONT>
</TD>
<TD>
$this_icon
<FONT SIZE="1" color="$vars_style{TimeColor}" face="$vars_style{FontFace}">
$vars_wordlets{posted} $ThisDate $FormatTime &nbsp;&nbsp;&nbsp;
$profile_link $homepage_link $email_link
</FONT>
<HR size="1" color="$vars_style{hr_color}">
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$post_body
</FONT>
<HR size="1" color="$vars_style{hr_color}">
<FONT SIZE="1"  face="$vars_style{FontFace}">
$AuthorExtra
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
<!-- Time Zone  -->
<CENTER>
<TABLE BORDER="0" width="$vars_style{TableWidth}">
<TR>
<TD align="left" valign="bottom">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$to_name: $add_user_2_list
</FONT>
</TD>
<TD align="right" valign="bottom">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$vars_wordlets{times_are} $vars_time{TimeZone}
</FONT>
</TD>
</TR>
</TABLE></CENTER>

<!-- Bottom Navigation Table -->

$TBT

<TR>

<TD bgcolor="$vars_style{AltColumnColor1}" NOWRAP valign="bottom" align="left">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$topic_closed
</FONT>
</TD>
<TD bgcolor="$vars_style{AltColumnColor1}" valign="bottom" align="right">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$vars_wordlets{pm_to} $to_name: $reply_wording $topic_wording
</FONT>
</TD>
</TR>

$TBB

<CENTER>
<TABLE BORDER="0" width="$vars_style{TableWidth}">
<TR>
<TD valign="bottom" align="left">
<FONT SIZE="1" FACE="$vars_style{FontFace}">
$topic_full
</FONT>
</TD>
</TR>
</TABLE>
</CENTER>

<P>
~;
return ($bottom);

}  # end topic_bottom


# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;