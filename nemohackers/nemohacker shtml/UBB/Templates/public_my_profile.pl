# UBB MY PROFILE PAGE

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<my_profile_guts;
<center>
$standard_title_table
</center>
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
<a href="$vars_config{CGIURL}/ultimatebb.cgi">$vars_config{BBName}</a> &raquo; $vars_wordlets{my_profile_header}
</B></font>
</TD>
</TR>

$TBB
<P>
$TBT
<tr bgcolor="$vars_style{TableColorStrip}">
<td>
<b><FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}">
$vars_wordlets{my_profile_header}: $pubname
</font></b>
</td>
</tr>

<TR bgcolor="$vars_style{AltColumnColor1}">
<TD>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>
&#187; <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=edit_my_profile">$vars_wordlets{edit_profile}</A> &#171;
</B></FONT>
</TD>
</TR>

$TBB
<P>
my_profile_guts

if ($vars_display{user_ratings} ne 'off')  {

print<<show_ratings;
$TBT
<tr bgcolor="$vars_style{TableColorStrip}">
<td colspan="3">
<b><FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}">
$vars_wordlets{member_ratings}
</font></b>
</td>
</tr>
show_ratings

if ($user_profile[25] ne 'no') {

print<<show_my_rating;

<TR bgcolor="$vars_style{CategoryStripColor}">
<TD>
<FONT color="$vars_style{CategoryStripTextColor}" size="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>
$vars_wordlets{your_rating}
</B></FONT>
</TD>
<TD>
<FONT color="$vars_style{CategoryStripTextColor}" size="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>
$vars_wordlets{total_votes}
</B></FONT>
</TD>
<TD>
<FONT color="$vars_style{CategoryStripTextColor}" size="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>
$vars_wordlets{weighted_score}
</B></FONT>
</TD>
</tr>


<TR bgcolor="$vars_style{AltColumnColor1}">
<TD>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<B>$overall_rating</B>&nbsp;
</FONT>
</TD>
<TD>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<B>$votes{total}</B>&nbsp;
</FONT>
</TD>
<TD>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<B>$weighted_avg{total}</B>&nbsp;
</FONT>
</TD>
</TR>
show_my_rating

if ($rating_wording ne '') {
print<<extra_wording;
<TR bgcolor="$vars_style{AltColumnColor1}">
<TD colspan="3">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
$rating_wording
</FONT>
</TD>
</TR>
extra_wording
}
} # if user has allowed ratings for self

# who you have rated--

print<<show_ratings;
<tr bgcolor="$vars_style{CategoryStripColor}">
<td colspan="3">
<b><FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}" color="$vars_style{CategoryStripTextColor}">
$vars_wordlets{you_rated}
</font></b>
</td>
</tr>
<TR bgcolor="$vars_style{AltColumnColor1}">
<TD colspan="3">
<FONT size="1" face="$vars_style{FontFace}">
show_ratings

# only show 10 here...
my $rate_count = 0;
foreach $key(keys %user) {
if (-e "$vars_config{MembersPath}/$key.cgi") {
$rate_count++;

if ($rate_count == 11) {
print<<extra_wording;
<P>
&#171; ... <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=my_rating_list">$vars_wordlets{complete_list}</A> ... &#187;
extra_wording
last;
}

$user_public_name = &get_public_name($key);
$star = ("user_ratings_" . "$user{$key}");
print<<extra_wording;
$user_public_name <IMG SRC="$vars_config{NonCGIURL}/$vars_style{$star}" BORDER=0>&nbsp;&nbsp;&nbsp;
extra_wording
}
}


if ($rate_count == 0) {
print "$vars_wordlets{none}",
}

print<<rating_end;
</FONT></TD></TR>
$TBB
rating_end

}

# private messages?
if (($vars_pm{feature} ne 'off') && ($user_profile[27] ne 'no')) {

print<<show_pms;
<FORM ACTION="$vars_config{CGIURL}/ultimatebb.cgi">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="pm_prune">
<P>
<center>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD valign="bottom" align="right">
<FONT size="1" face="$vars_style{FontFace}">
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=ignore_list">$vars_wordlets{ignore_list}</A> | <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=buddy_list">$vars_wordlets{buddy_list}</A>
</FONT>
</TD></TR></TABLE>
</CENTER>

$TBT
<tr bgcolor="$vars_style{TableColorStrip}">
<td colspan="3">
<b><FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}">
$vars_wordlets{pm_header}: $pm_count
</font></b>
</td>
<td colspan="2" align="right">
<b><FONT size="1" FACE="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}">
$vars_wordlets{pm_unread_in_bold}
</font></b>
</td>
</tr>

<TR bgcolor="$vars_style{CategoryStripColor}">
<TD align="center"><FONT color="$vars_style{CategoryStripTextColor}" size="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>
$vars_wordlets{delete}</B></FONT></TD>
<TD>&nbsp;</TD>
<TD>
<FONT color="$vars_style{CategoryStripTextColor}" size="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>
$vars_wordlets{subject_field}
</B></FONT>
</TD>
<TD>
<FONT color="$vars_style{CategoryStripTextColor}" size="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>
$vars_wordlets{author_from}
</B></FONT>
</TD>
<TD>
<FONT color="$vars_style{CategoryStripTextColor}" size="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>
$vars_wordlets{date_column}
</B></FONT>
</TD>
</tr>
show_pms

my $pm_count = 0;
TOPICLOOP: foreach (@pm_topics) {
$pm_count++;
($pm_dir, $pm_topic) = split(/-/, $_);

# get %pm_topic

# make sure PM still exists!
if (-e "$vars_config{MembersPath}/pm_topics/$pm_dir/$pm_topic.cgi") {
require "$vars_config{MembersPath}/pm_topics/$pm_dir/$pm_topic.cgi";

} else {

print<<each_pm_topic;
<TR bgcolor="$vars_style{AltColumnColor1}">
<TD align="center">
<INPUT TYPE="CHECKBOX" NAME="delete$pm_count" VALUE="$_">
</TD>
<TD align="center">
<IMG SRC="$vars_config{NonCGIURL}/icons/icon1.gif" BORDER=0>
</TD>
<TD colspan="3">
<FONT size="1" face="$vars_style{FontFace}">
<b>$vars_wordlets{pm_not_found}</b>
</FONT>
</TD>
</TR>
each_pm_topic
next TOPICLOOP;
}

my $thispost = "$pm_topic_data{replies}";
if (-e "$vars_config{MembersPath}/$pm_from{$thispost}.cgi") {

$pm_topic{from} = &get_public_name($pm_from{$thispost});
$pm_topic{icon} = $pm_icon{$thispost};
if ($pm_topic{icon} eq '') { $pm_topic{icon} = '1'; }
$pm_topic{date} = $pm_date{$thispost};
$pm_topic{time} = $pm_time{$thispost};
$pm_topic{date} = &DateFormat($pm_topic{date});
$pm_topic{time} = &TimeFormat($pm_topic{time});

if ($pm_topic_data{read} eq 'yes') {
	$read_marker_1 = ''; $read_marker_2 = '';
}  else {
	$read_marker_1 = '<B>'; $read_marker_2 = '</B>';
}

print<<each_pm_topic;
<TR bgcolor="$vars_style{AltColumnColor1}">
<TD align="center">
<INPUT TYPE="CHECKBOX" NAME="delete$pm_count" VALUE="$_">
</TD>
<TD align="center">
<IMG SRC="$vars_config{NonCGIURL}/icons/icon$pm_topic{icon}.gif" BORDER=0>
</TD>
<TD>
<FONT size="1" face="$vars_style{FontFace}">
$read_marker_1<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=get_pm&d=$pm_dir&t=$pm_topic">$pm_topic_data{subject}</A>$read_marker_2
</FONT>
</TD>
<TD>
<FONT size="1" face="$vars_style{FontFace}">
$read_marker_1$pm_topic{from}$read_marker_2
</FONT>
</TD>
<TD>
<FONT size="1" face="$vars_style{FontFace}">
$read_marker_1$pm_topic{date} $pm_topic{time}$read_marker_1
</FONT>
</TD>
</TR>
each_pm_topic

} else {

print<<each_pm_topic;
<TR bgcolor="$vars_style{AltColumnColor1}">
<TD align="center">
<INPUT TYPE="CHECKBOX" NAME="delete$pm_count" VALUE="$_">
</TD>
<TD align="center">
<IMG SRC="$vars_config{NonCGIURL}/icons/icon1.gif" BORDER=0>
</TD>
<TD colspan="3">
<FONT size="1" face="$vars_style{FontFace}">
<b>$vars_wordlets{pm_member_gone}</b>
</FONT>
</TD>
</TR>
each_pm_topic

}

} # each pm topic

if ($pm_count > 0) {
print<<each_pm_topic;
<TR bgcolor="$vars_style{AltColumnColor1}">
<TD colspan="5" align="center">
<INPUT TYPE="SUBMIT" NAME="submit" VALUE="$vars_wordlets{pm_prune}">
</TD>
</TR>
each_pm_topic
}  else {
print<<each_pm_topic;
<TR bgcolor="$vars_style{AltColumnColor1}">
<TD colspan="5" align="left">
<FONT size="1" face="$vars_style{FontFace}">
$vars_wordlets{no_pm}
</FONT>
</TD>
</TR>
each_pm_topic

}

print<<pm_end;
$TBB
</FORM>
<center>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD align="left">
<FONT size="1" face="$vars_style{FontFace}">
$vars_wordlets{pm_user_max_warning}
</FONT>
</TD></TR></TABLE>
<P>
</CENTER>

pm_end

} # end private message block

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