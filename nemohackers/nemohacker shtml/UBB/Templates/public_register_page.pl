# UBB REGISTRATION PAGE

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<RegisterGuts;
<CENTER>
$standard_title_table
</CENTER>

<FORM ACTION="$vars_config{CGIURL}/ultimatebb.cgi" METHOD="POST">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="submit_registration">

$TBT

<tr bgcolor="$vars_style{AltColumnColor1}">
<td colspan="2">
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$vars_wordlets{required_in_bold}
</font>
</td>
</tr>

<tr bgcolor="$vars_style{TableColorStrip}">
<td colspan="2">
<b><FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}">
$vars_wordlets{register_title}
</font></b>
</td>
</tr>

<tr>
<td colspan="2" bgcolor="$vars_style{CategoryStripColor}">
<FONT size="$vars_style{TextSize}" color="$vars_style{CategoryStripTextColor}" face="$vars_style{FontFace}">
<p>
$vars_wordlets{registration_intro}
<p>
</FONT>
</td>
</tr>


<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<b>$vars_wordlets{login_name}</b>:
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="username" SIZE=25 MAXLENGTH=25>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td width="45%" valign="top">
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$vars_wordlets{public_name_field}:
</FONT>
<BR>
<FONT FACE="$vars_style{FontFace}" size="1">
$vars_wordlets{pub_name_disclaimer}
</FONT>
</td>
<td valign="top">
<INPUT TYPE="TEXT" NAME="public_name" SIZE="35" MAXLENGTH="35">
</td>
</tr>

RegisterGuts

if ($vars_registration{EmailVerify} eq 'OFF') {

print<<PWFIELDS;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{password_field}</B>:
</font>
</td>
<td>
<INPUT TYPE="PASSWORD" NAME="password" SIZE="13" MAXLENGTH="13">
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{confirm} $vars_wordlets{password_field}</B>:
</font>
</td>
<td>
<INPUT TYPE="PASSWORD" NAME="password_confirm" SIZE="13" MAXLENGTH="13">
</td>
</tr>

PWFIELDS

} # end if email verify is off

print<<RegisterGuts2;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{email_field}</B>:
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="email" SIZE="30" MAXLENGTH="80">
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{confirm} $vars_wordlets{email_field}</B>:
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="email_confirm" SIZE="30" MAXLENGTH="80">
</td>
</tr>

RegisterGuts2


# other registration fields follow:

if ($vars_registration{location_field_use} ne 'DEL') {

if ($vars_registration{location_field_use} eq 'REQ') {
$B1 = '<B>'; $B2 = '</B>';
} else {
$B1 = ''; $B2 = '';
}

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$B1$vars_wordlets{location_field}$B2:
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="location" SIZE="35" MAXLENGTH="80">
</td>
</tr>

THISFIELD

} # end location field


if ($vars_registration{occupation_field_use} ne 'DEL') {


if ($vars_registration{occupation_field_use} eq 'REQ') {
$B1 = '<B>'; $B2 = '</B>';
} else {
$B1 = ''; $B2 = '';
}


print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$B1$vars_wordlets{occupation_field}$B2:
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="occupation" SIZE="35" MAXLENGTH="80">
</td>
</tr>

THISFIELD

} # end field


if ($vars_registration{homepage_field_use} ne 'DEL') {

if ($vars_registration{homepage_field_use} eq 'REQ') {
$B1 = '<B>'; $B2 = '</B>';
} else {
$B1 = ''; $B2 = '';
}


print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$B1$vars_wordlets{homepage_field}$B2:
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="homepage" SIZE="35" MAXLENGTH="80">
</td>
</tr>

THISFIELD

} # end field


if ($vars_registration{interests_field_use} ne 'DEL') {


if ($vars_registration{interests_field_use} eq 'REQ') {
$B1 = '<B>'; $B2 = '</B>';
} else {
$B1 = ''; $B2 = '';
}


print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$B1$vars_wordlets{interests_field}$B2:
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="interests" SIZE="35" MAXLENGTH="80">
</td>
</tr>

THISFIELD

} # end field


if ($vars_registration{picture_field_use} ne 'DEL') {

if ($vars_registration{picture_field_use} eq 'REQ') {
$B1 = '<B>'; $B2 = '</B>';
} else {
$B1 = ''; $B2 = '';
}

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$B1$vars_wordlets{picture_field}$B2:
<BR>
<FONT size="1">
$vars_wordlets{picture_explain}
</FONT>
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="picture" SIZE="35" MAXLENGTH="80">
</td>
</tr>

THISFIELD

} # end field



if (($vars_registration{custom1_field_use} ne 'DEL')  && ($vars_registration{customfield1} ne '')) {

if ($vars_registration{custom1_field_use} eq 'REQ') {
$B1 = '<B>'; $B2 = '</B>';
} else {
$B1 = ''; $B2 = '';
}

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$B1$vars_registration{customfield1}$B2:
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="customfield1" SIZE="35" MAXLENGTH="80">
</td>
</tr>

THISFIELD

} # end field



if (($vars_registration{custom2_field_use} ne 'DEL')  && ($vars_registration{customfield2} ne '')) {

if ($vars_registration{custom2_field_use} eq 'REQ') {
$B1 = '<B>'; $B2 = '</B>';
} else {
$B1 = ''; $B2 = '';
}

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$B1$vars_registration{customfield2}$B2:
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="customfield2" SIZE="35" MAXLENGTH="80">
</td>
</tr>

THISFIELD

} # end field



if (($vars_registration{custom3_field_use} ne 'DEL')  && ($vars_registration{customfield3} ne '')) {

if ($vars_registration{custom3_field_use} eq 'REQ') {
$B1 = '<B>'; $B2 = '</B>';
} else {
$B1 = ''; $B2 = '';
}

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$B1$vars_registration{customfield3}$B2:
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="customfield3" SIZE="35" MAXLENGTH="80">
</td>
</tr>

THISFIELD

} # end field



if (($vars_registration{custom4_field_use} ne 'DEL')  && ($vars_registration{customfield4} ne '')) {

if ($vars_registration{custom4_field_use} eq 'REQ') {
$B1 = '<B>'; $B2 = '</B>';
} else {
$B1 = ''; $B2 = '';
}

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$B1$vars_registration{customfield4}$B2:
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="customfield4" SIZE="35" MAXLENGTH="80">
</td>
</tr>

THISFIELD

} # end field

if ($vars_registration{icq_field_use} ne 'DEL') {


if ($vars_registration{icq_field_use} eq 'REQ') {
$B1 = '<B>'; $B2 = '</B>';
} else {
$B1 = ''; $B2 = '';
}


print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$B1$vars_wordlets{icq_field}$B2:
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="icq" SIZE="15" MAXLENGTH="25">
</td>
</tr>

THISFIELD

} # end field


if ($vars_registration{aim_field_use} ne 'DEL') {

if ($vars_registration{aim_field_use} eq 'REQ') {
$B1 = '<B>'; $B2 = '</B>';
} else {
$B1 = ''; $B2 = '';
}


print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$B1$vars_wordlets{aim_field}$B2:
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="aim" SIZE="30" MAXLENGTH="32">
</td>
</tr>

THISFIELD

} # end field


if ($vars_registration{signature_field_use} ne 'DEL') {


if ($vars_registration{signature_field_use} eq 'REQ') {
$B1 = '<B>'; $B2 = '</B>';
} else {
$B1 = ''; $B2 = '';
}
if ($vars_display{AllowSignatureImage} eq 'no') {
$ImagesWording = qq!$vars_wordlets{ubbcode_images_banned}!;
} else {
$ImagesWording = qq!$vars_wordlets{ubbcode_images_allowed}!;
}

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="top" width="45%">
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$B1
$vars_wordlets{signature_field}
$B2:
</FONT>
<BR>
<FONT FACE="$vars_style{FontFace}" SIZE="1">
$vars_wordlets{signatures_explained}
$ImagesWording
<P>
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=ubb_code_page" target=_new>
$vars_wordlets{ubb_code}</A>
</FONT>
</td>
<td>
<TEXTAREA NAME="signature" ROWS="5" COLS="35">
</TEXTAREA>
</td>
</tr>

THISFIELD

} # end field

print<<NearBottom;
<tr bgcolor="$vars_style{CategoryStripColor}">
<td colspan="2">
<FONT size="$vars_style{TextSize}" color="$vars_style{CategoryStripTextColor}" face="$vars_style{FontFace}">
<b>
$vars_wordlets{your_preferences}
</b>
</font>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<b>
$vars_wordlets{allow_mass_email}
</b>
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<INPUT TYPE="RADIO" NAME="AllowMassMail" VALUE="yes" CHECKED> $vars_wordlets{yes_option}
<BR>
<INPUT TYPE="RADIO" NAME="AllowMassMail" VALUE="no"> $vars_wordlets{no_option}
</font>
</td>
</tr>


<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<b>
$vars_wordlets{email_viewable}
</b>
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<INPUT TYPE="RADIO" NAME="EmailView" VALUE="yes" CHECKED> $vars_wordlets{yes_option}
<BR>
<INPUT TYPE="RADIO" NAME="EmailView" VALUE="no"> $vars_wordlets{no_option}
</font>
</td>
</tr>



<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<b>
$vars_wordlets{display_user_rating}
</b>
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<INPUT TYPE="RADIO" NAME="user_ratings" VALUE="yes" CHECKED> $vars_wordlets{yes_option}
<BR>
<INPUT TYPE="RADIO" NAME="user_ratings" VALUE="no"> $vars_wordlets{no_option}
</font>
</td>
</tr>


<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<b>
$vars_wordlets{pm_option}
</b>
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<INPUT TYPE="RADIO" NAME="private_message" VALUE="yes" CHECKED> $vars_wordlets{yes_option}
<BR>
<INPUT TYPE="RADIO" NAME="private_message" VALUE="no"> $vars_wordlets{no_option}
</font>
</td>
</tr>


<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<b>
$vars_wordlets{pm_notify_option}
</b>
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<INPUT TYPE="RADIO" NAME="private_message_notify" VALUE="yes" CHECKED> $vars_wordlets{yes_option}
<BR>
<INPUT TYPE="RADIO" NAME="private_message_notify" VALUE="no"> $vars_wordlets{no_option}
</font>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<b>
$vars_wordlets{default_topic_view}
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<SELECT NAME="DaysPrune">
	<OPTION value="1" $select_list{1}>$vars_wordlets{show_topics_from_last} $vars_wordlets{day}
	<OPTION value="2" $select_list{2}>$vars_wordlets{show_topics_from_last} 2 $vars_wordlets{days}
	<OPTION value="5" $select_list{5}>$vars_wordlets{show_topics_from_last} 5 $vars_wordlets{days}
	<OPTION value="10" $select_list{10}>$vars_wordlets{show_topics_from_last} 10 $vars_wordlets{days}
	<OPTION value="20" $select_list{20}>$vars_wordlets{show_topics_from_last} 20 $vars_wordlets{days}
	<OPTION value="30" $select_list{30}>$vars_wordlets{show_topics_from_last} 30 $vars_wordlets{days}
	<OPTION value="45" $select_list{45}>$vars_wordlets{show_topics_from_last} 45 $vars_wordlets{days}
	<OPTION value="60" $select_list{60}>$vars_wordlets{show_topics_from_last} 60 $vars_wordlets{days}
	<OPTION value="75" $select_list{75}>$vars_wordlets{show_topics_from_last} 75 $vars_wordlets{days}
	<OPTION value="100" $select_list{100}>$vars_wordlets{show_topics_from_last} 100 $vars_wordlets{days}
	<OPTION value="365" $select_list{365}>$vars_wordlets{show_topics_from_last} $vars_wordlets{year}
		<OPTION value="1000" $select_list{1000}>$vars_wordlets{show_all_topics}
	</SELECT>
</font>
</td>
</tr>

$TBB

<P>
<CENTER><INPUT TYPE="SUBMIT" NAME="submit" VALUE="$vars_wordlets{submit_registration}"></CENTER>
</FORM>
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