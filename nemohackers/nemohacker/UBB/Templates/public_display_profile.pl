# UBB DISPLAY PROFILE PAGE

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";


print<<RegisterGuts;
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
<a href="$vars_config{CGIURL}/ultimatebb.cgi">$vars_config{BBName}</a> &raquo; $vars_wordlets{profile_header} $user_public_name
</B></font>
</TD>
</TR>

$TBB
<P>
<FORM ACTION="$vars_config{CGIURL}/ultimatebb.cgi" METHOD="POST">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="rate_member">
<INPUT TYPE="HIDDEN" NAME="u" VALUE="$u">
<INPUT TYPE="HIDDEN" NAME="refer" VALUE="$ENV{'HTTP_REFERER'}">
<CENTER>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD align="left">
<FONT size="1" face="$vars_style{FontFace}">
$personal_line
</FONT>
</TD>
<TD align="right">
<FONT size="1" face="$vars_style{FontFace}">
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=recent_user_posts&u=$in{u}">$vars_wordlets{recent_user_posts}</A> $pm_line
</FONT>
</TD></TR></TABLE>
</CENTER>


$TBT

<tr bgcolor="$vars_style{TableColorStrip}">
<td>
<b><FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}">
$vars_wordlets{profile_header} $user_public_name
</font></b>
</td>
<TD align="right">
<FONT color="$vars_style{TableStripTextColor}" size="2" face="$vars_style{FontFace}"><b>
$rating_line
</b>
</FONT>
</TD>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{member_status}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$user_status
</FONT>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{user_number}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$u
</FONT>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{author_registered}</B>
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$date_registered
</FONT>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{post_column}:</B>
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$user_profile[7]
</FONT>
</td>
</tr>


RegisterGuts


if (($overall_rating ne '') && ($vars_display{user_ratings} ne 'off')) {

print<<email_line;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{member_rated}</B>:
</font>
</td>
<td><FONT size="1" FACE="$vars_style{FontFace}">
<IMG SRC="$vars_config{NonCGIURL}/$vars_style{$overall_rating}" BORDER=0> &nbsp;&nbsp;($vars_wordlets{rating_votes}: $total_votes)
</font>
</td>
</tr>

email_line

} # if has user rating


if (($user_profile[11] ne 'no') && ($vars_display{EmailBlock} ne 'ON'))  {

print<<email_line;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{email_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<A HREF="mailto:$user_profile[2]">$user_profile[2]</A>
</FONT>
</td>
</tr>

email_line

} # if user wants public display of email address

# other registration fields follow:

if (($vars_registration{location_field_use} ne 'DEL') && ($user_profile[6] ne '')) {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{location_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$user_profile[6]
</FONT>
</td>
</tr>

THISFIELD

} # end location field


if (($vars_registration{occupation_field_use} ne 'DEL') && ($user_profile[5] ne '')) {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{occupation_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$user_profile[5]
</FONT>
</td>
</tr>

THISFIELD

} # end field


if (($vars_registration{homepage_field_use} ne 'DEL') && ($user_profile[3] ne '')) {

$user_profile[3] = "http://$user_profile[3]" unless $user_profile[3] =~ m/^http\:\/\//;

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{homepage_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<A HREF="$user_profile[3]">$user_profile[3]</A>
</FONT>
</td>
</tr>

THISFIELD

} # end field


if (($vars_registration{interests_field_use} ne 'DEL') && ($user_profile[9] ne '')) {


print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{interests_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$user_profile[9]
</FONT>
</td>
</tr>

THISFIELD

} # end field


if (($vars_registration{picture_field_use} ne 'DEL') && ($user_profile[20] ne '') ) {

$user_profile[20] = "http://$user_profile[20]" unless $user_profile[20] =~ m/^http\:\/\//;
print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="top">
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{picture_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<IMG SRC="$user_profile[20]" BORDER=0>
</FONT>
</td>
</tr>

THISFIELD

} # end field



if (($vars_registration{custom1_field_use} ne 'DEL')  && ($vars_registration{customfield1} ne '') && ($user_profile[16] ne '')) {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_registration{customfield1}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$user_profile[16]
</FONT>
</td>
</tr>

THISFIELD

} # end field



if (($vars_registration{custom2_field_use} ne 'DEL')  && ($vars_registration{customfield2} ne '') && ($user_profile[17] ne '')) {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_registration{customfield2}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$user_profile[17]
</FONT>
</td>
</tr>

THISFIELD

} # end field



if (($vars_registration{custom3_field_use} ne 'DEL')  && ($vars_registration{customfield3} ne '') && ($user_profile[18] ne '')) {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_registration{customfield3}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$user_profile[18]
</FONT>
</td>
</tr>

THISFIELD

} # end field



if (($vars_registration{custom4_field_use} ne 'DEL')  && ($vars_registration{customfield4} ne '') && ($user_profile[19] ne '')) {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_registration{customfield4}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$user_profile[19]
</FONT>
</td>
</tr>

THISFIELD

} # end field

if (($vars_registration{icq_field_use} ne 'DEL') && ($user_profile[13] ne '')) {


print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{icq_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$user_profile[13]
</FONT>
</td>
</tr>

THISFIELD

} # end field


if (($vars_registration{aim_field_use} ne 'DEL') && ($user_profile[22] ne '')) {


print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{aim_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$user_profile[22]
</FONT>
</td>
</tr>

THISFIELD

} # end field


print<<NearBottom;
$TBB

<CENTER>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD valign="top" align="left">
<FONT size="1" face="$vars_style{FontFace}">
$user_ratings_off
</FONT>
</TD>
<TD valign="top" align="right">
<FONT size="1" face="$vars_style{FontFace}">
$add_2_list
</FONT>
</TD>

</TR></TABLE>
</CENTER></FORM>
NearBottom

# if reader is admin or mod, display more info--

if ($is_admin_mod eq 'true') {

print<<extra_info;
$TBT
<P>
<tr bgcolor="$vars_style{TableColorStrip}">
<td colspan="2">
<FONT size="$vars_style{TextSize}" color="$vars_style{TableStripTextColor}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{bonus_info}</B>:
</font>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td colspan="2">
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{login_name}</B>: $user_profile[0]
</font>
</td>
</tr>
extra_info

if (($vars_display{user_ratings} eq 'feature_top') && ($admin_view_rating < 4)) {
print<<rating_for_admin;
<tr bgcolor="$vars_style{AltColumnColor1}">
<td colspan="2">
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{member_rated}</B>: $admin_view_rating
</font>
</td>
</tr>
rating_for_admin
}

print<<extra_info_2;
$TBB
<P>
extra_info_2

}

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
