# UBB CONTROL PANEL - EDIT PROFILE PAGE

# standard top of HTML page
print $Header if ($Header);

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

print<<EMAIL_INFO;
<CENTER>
<TABLE BORDER=0 WIDTH="95%">
<TR>
<TD align="right">
<FONT size="1" FACE="Verdana, Arial">
<B><A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=find_lost&email=$user_profile[2]">Email login name and password to this user.</A></B>
</FONT>
</TD>
</TR></TABLE>
</CENTER>
EMAIL_INFO

&TBT;

print<<profile_guts;
<tr bgcolor="#FFFFFF"> 
<td colspan="2">
<FONT size="2" FACE="Verdana, Arial">
$vars_wordlets{required_fields_in_bold}
</font>
</td>
</tr>

<tr bgcolor="#5d7790"> 
<td colspan="2">
<b><FONT size="2" FACE="Verdana, Arial" color="#FFFFFF">
$vars_wordlets_cp{edit_profile}
</font></b>
</td>
</tr>

<tr> 
<td colspan="2" bgcolor="#dedfdf">
<FONT size="2" face="Verdana, Arial">
<p>
<B>$public_name: Please do not modify any member profile information without consent, unless necessary.  </B>

</FONT>
</td>
</tr>



<tr bgcolor="#FFFFFF"> 
<td width="45%" valign="top">
<FONT size="2" FACE="Verdana, Arial">
<B>$vars_wordlets{public_name_field}:</B>
</font>
</td>
<td valign="top">
<FONT size="2" FACE="Verdana, Arial">
<B>$user_profile[15]</B>
</font>
</td>
</tr>

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
<b>$vars_wordlets{login_name}</b>: 
</font>
</td>
<td>
<FONT size="2" FACE="Verdana, Arial">
<B>$user_profile[0]</B>
</font>
</td>
</tr>

profile_guts


print<<PWFIELDS;

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
<B>$vars_wordlets{password_field}</B>: 
</font>
</td>
<td>
<FONT size="2" FACE="Verdana, Arial">
<B>
$user_profile[1]
</B></font>

</td>
</tr>


<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
<B>$vars_wordlets{member_status}</B>: 
</font>
</td>
<td>
<FONT size="2" FACE="Verdana, Arial">
<B>
$user_status
</B></font>

</td>
</tr>
PWFIELDS



print<<RegisterGuts2;

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
<B>$vars_wordlets{email_field}</B>: 
</font>
</td>
<td>
<FONT size="2" FACE="Verdana, Arial">
<B>
$user_profile[2]
</B></font>
</td>
</tr>

RegisterGuts2

# user rating--
if (($overall_rating ne '') && ($vars_display{user_ratings} ne 'off')) {

print<<email_line;

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
<B>$vars_wordlets{member_rated}</B>: 
</font>
</td>
<td><FONT size="1" FACE="Verdana, Arial">
<IMG SRC="$vars_config{NonCGIURL}/$vars_style{$overall_rating}" BORDER=0>&nbsp;&nbsp;($vars_wordlets{rating_votes}: $total_votes)
</FONT>
</td>
</tr>

email_line

} # if has user rating

# other registration fields follow:

if ($vars_registration{location_field_use} ne 'DEL') {

if ($vars_registration{location_field_use} eq 'REQ') {
$B1 = '<B>'; $B2 = '</B>';
} else {
$B1 = ''; $B2 = '';
}

print <<THISFIELD;

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
$B1$vars_wordlets{location_field}$B2: 
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="location" value="$user_profile[6]" SIZE="35" MAXLENGTH="80">
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

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
$B1$vars_wordlets{occupation_field}$B2: 
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="occupation" value="$user_profile[5]" SIZE="35" MAXLENGTH="80">
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

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
$B1$vars_wordlets{homepage_field}$B2: 
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="homepage" SIZE="35" value="$user_profile[3]" MAXLENGTH="80">
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

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
$B1$vars_wordlets{interests_field}$B2: 
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="interests" value="$user_profile[9]" SIZE="35" MAXLENGTH="80">
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

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
$B1$vars_wordlets{picture_field}$B2: 
</FONT>
<BR>
<FONT FACE="Verdana, Arial" size="1">
$vars_wordlets{picture_explain}
Enter a link to a picture.  This must be a complete URL.
</FONT>
</td>
<td>
<INPUT TYPE="TEXT" NAME="picture" value="$user_profile[20]" SIZE="35" MAXLENGTH="80">
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

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
$B1$vars_registration{customfield1}$B2: 
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="customfield1" value="$user_profile[16]" SIZE="35" MAXLENGTH="80">
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

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
$B1$vars_registration{customfield2}$B2: 
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="customfield2" value="$user_profile[17]" SIZE="35" MAXLENGTH="80">
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

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
$B1$vars_registration{customfield3}$B2: 
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="customfield3" value="$user_profile[18]" SIZE="35" MAXLENGTH="80">
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

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
$B1$vars_registration{customfield4}$B2: 
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="customfield4" value="$user_profile[19]" SIZE="35" MAXLENGTH="80">
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

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
$B1$vars_wordlets{icq_field}$B2: 
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="icq" SIZE="15" value="$user_profile[13]" MAXLENGTH="25">
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

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" FACE="Verdana, Arial">
$B1$vars_wordlets{aim_field}$B2: 
</font>
</td>
<td>
<INPUT TYPE="TEXT" NAME="aim" SIZE="30" value="$user_profile[22]" MAXLENGTH="32">
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

<tr bgcolor="#FFFFFF"> 
<td valign="top" width="45%">
<FONT size="2" FACE="Verdana, Arial">
$B1
$vars_wordlets{signature_field}
$B2:
<BR>
<FONT SIZE="1">
$vars_wordlets{signatures_explained} $ImagesWording
</FONT>
</font>
</td>
<td>
<TEXTAREA NAME="signature" ROWS="5" COLS="35">
$Signature
</TEXTAREA>
</td>
</tr>

THISFIELD

} # end field

print<<NearBottom;
<tr bgcolor="#dedfdf"> 
<td colspan="2">
<FONT size="2" face="Verdana, Arial">
<b>
Member Preferences
</b>
</font>
</td>
</tr>

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" face="Verdana, Arial">
<b>
$vars_wordlets{allow_mass_email}
</b>
</font>
</td>
<td>
<FONT size="2" face="Verdana, Arial">
<INPUT TYPE="RADIO" NAME="AllowMassMail" VALUE="yes" $mm_yes> $vars_wordlets{yes_option}
<BR>
<INPUT TYPE="RADIO" NAME="AllowMassMail" VALUE="no" $mm_no> $vars_wordlets{no_option}
</font>
</td>
</tr>


<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" face="Verdana, Arial">
<b>
$vars_wordlets{email_viewable}
</b>
</font>
</td>
<td>
<FONT size="2" face="Verdana, Arial">
<INPUT TYPE="RADIO" NAME="EmailView" VALUE="yes" $ev_yes> $vars_wordlets{yes_option}
<BR>
<INPUT TYPE="RADIO" NAME="EmailView" VALUE="no" $ev_no> $vars_wordlets{no_option}
</font>
</td>
</tr>


<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" face="Verdana, Arial">
<b>
$vars_wordlets{display_user_rating}
</b>
</font>
</td>
<td>
<FONT size="2" face="Verdana, Arial">
<INPUT TYPE="RADIO" NAME="user_ratings" VALUE="yes" $ratings_yes> $vars_wordlets{yes_option}
<BR>
<INPUT TYPE="RADIO" NAME="user_ratings" VALUE="no" $ratings_no> $vars_wordlets{no_option}
</font>
</td>
</tr>



<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" face="Verdana, Arial">
<b>
$vars_wordlets{pm_option}
</b>
</font>
</td>
<td>
<FONT size="2" face="Verdana, Arial">
<INPUT TYPE="RADIO" NAME="private_message" VALUE="yes" $pm_yes> $vars_wordlets{yes_option}
<BR>
<INPUT TYPE="RADIO" NAME="private_message" VALUE="no" $pm_no> $vars_wordlets{no_option}
</font>
</td>
</tr>

<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" face="Verdana, Arial">
<b>
$vars_wordlets{pm_notify_option}
</b>
</font>
</td>
<td>
<FONT size="2" face="Verdana, Arial">
<INPUT TYPE="RADIO" NAME="private_message_notify" VALUE="yes" $pm_notify_yes> $vars_wordlets{yes_option}
<BR>
<INPUT TYPE="RADIO" NAME="private_message_notify" VALUE="no" $pm_notify_no> $vars_wordlets{no_option}
</font>
</td>
</tr>


<tr bgcolor="#FFFFFF"> 
<td>
<FONT size="2" face="Verdana, Arial">
<b>
$vars_wordlets{default_topic_view}
</font>
</td>
<td>
<FONT size="2" face="Verdana, Arial">
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

<tr bgcolor="#dedfdf"> 
<td colspan="2">
<FONT size="2" face="Verdana, Arial">
<b>
Forum Permissions For This Member
</b>
</font>
</td>
</tr>
NearBottom

if ($user_profile[8] eq 'Administrator') {

print<<admin_rights;

<tr bgcolor="#FFFFFF"> 
<td colspan="2">
<FONT size="2" face="Verdana, Arial">
<b>
Member is an administrator with access/rights to all forums. 
</b>
</font>
</td>
</tr>

admin_rights


}  else {


print<<forum_rights;
<tr bgcolor="#dedfdf"> 
<td valign="bottom">
<FONT size="1" face="Verdana, Arial">
<b>
Forum Name<BR>
Status
</b>
</font>
</td>
<td valign="bottom">
<FONT size="1" face="Verdana, Arial">
<b>
Current Member Permission (check box to grant permission).
</b>
</font>
</td>

</tr>

forum_rights

foreach $key(keys %forum_names) {

print<<forum_rights;
<tr bgcolor="#FFFFFF"> 
<td valign="bottom">
<FONT size="1" face="Verdana, Arial">
<b>
$forum_names{$key}</B><BR>
$forum_status{$key}
</font>
</td>
<td valign="bottom">
<FONT size="1" face="Verdana, Arial">
<b>
$forum_rights{$key}
</b>
</font>
</td>
</tr>

forum_rights


} # end restricted forums hash loop


}

&TBB;

print '<p>';

&TBT;

print<<penalize;
<tr bgcolor="#dedfdf"> 
<td valign="bottom">
<FONT size="2" face="Verdana, Arial">
<b>
Member Restrictions
</b>
</font>
</td>
</tr>
<tr bgcolor="#FFFFFF">
<TD>
<FONT size="1" face="Verdana, Arial">
<INPUT TYPE="CHECKBOX" NAME="lock_profile" VALUE="yes" $lock_check> <B>Lock this profile</B>: locking prevents this user from modifying the profile information.
</FONT>
</TD></TR>
<TR bgcolor="#FFFFFF"><TD>
<FONT size="1" face="Verdana, Arial">
<INPUT TYPE="CHECKBOX" NAME="allow_pm" VALUE="no" $pm_lock_check> <B>Disable Ability to Send Private Messages</B>: you may disable this members ability to send anyone private messages.
</font>
</td></tr>
penalize

&TBB;

print<<the_bottom;
<P>
<CENTER>
<P>
<INPUT TYPE="SUBMIT" NAME="submit" VALUE="$vars_wordlets_cp{edit_profile}"></CENTER>

<P>
</FORM>
<P>
the_bottom

# standard bootom of HTML page
print $Footer if ($Footer);



# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;