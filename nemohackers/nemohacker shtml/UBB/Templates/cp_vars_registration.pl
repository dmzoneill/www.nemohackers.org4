# THIS FILE DISPLAYS GUTS OF: Control Panel, Email Settings Page

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow(qq%Optional fields are in <FONT COLOR="#5d7790">blue</FONT>.%, "2", "#FFFFFF", "#000000", "left", "1");

&HeaderRow("$vars_config{BBName} Registration Settings", "2", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("Registration Options", "2", "#c9c9c9", "#000000", "left", "2");

&RadioField ("Verify User Email Address During Registration?", "EmailVerify", "yes", "For tighter security, you may want to require that your registered users have valid email addresses.  This is accomplished by mailing their password to them at the email address they register.  To enable email verification during registration, click YES in the field to the right.", "$vars_registration{EmailVerify}", "ON|Yes, verify registered email addresses.%%OFF|No, do not verify.");

&RadioField ("Duplicate Email Check", "EmailCheck", "yes", "If you enable this option, you will prevent anyone form registering with an email address that has previsouly been registered.", "$vars_registration{EmailCheck}", "true|Unique email address required.%%false|Unique email address not required.");

&RadioField ("Children's Online Privacy Protection [COPPA]", "COPPACheck", "yes", "This option must be used by all sites which expect to register users under the age of 13. Though this is an American law, it may affect non-US sites too.  Seek competent legal advice. Activating this option will ask the user's age and send him/her to a special registration page.", "$vars_registration{COPPACheck}", "ON|Age check is required.%%OFF|Age check is not required.");

&RadioField ("COPPA Approval Type", "COPPAType", "yes", "Choose the option which best suits the COPPA requirements of your site. If you have COPPA age check enabled, this determines how the UBB deals with users stating that they are underage.", "$vars_registration{COPPAType}", "COPPAReg|Allow online registration.%%COPPAFormOnly|Show only a printable permission form.%%COPPADenied|Do not permit any COPPA [underage] registrations.");


&RadioField ("Moderate Registration Requests?", "ModerateRegs", "yes", "The default setting allows any user to register without approval.  If you require registration approval, the user may register but will not have posting privileges until you grant them though the control panel section USER INFO & PERMISSIONS.", "$vars_registration{ModerateRegs}", "ON|Registration approval required.%%OFF|Registration approval NOT required.");

&RadioField ("Notify Admin of New Registrations", "OnRegsNotifyAdmin", "yes", "You can be notified by email when someone registers at your board or only when someone registers under the age of 13.  Busy sites with many adult registrations will likely leave this option off.  Note that this notification is sent to the Registration Contact Email Address (set in below).", "$vars_registration{OnRegsNotifyAdmin}", "ON|Notify admin of all registrations.%%OFF|No notification.%%COPPA|Notification only for members under age 13 [COPPA].");

&RegField ("Primary Registration Contact - Valid Email Required", "RegsAdminEmail", "yes", "40", "90", "The email address where all registration notification messages will go.  This address will also be used as the contact email for any registration questions.  This email address can be the same as your primary contact email address, if you like.  <b>Note: All email having to do with registration on your board will come from this email address.  Ensure this is a valid email address!</b>", "$vars_registration{RegsAdminEmail}");

$vars_registration{allowHighBit} = 'YES' unless $vars_registration{allowHighBit};
&RadioField ("High-bit Characters in Usernames", "allowHighBit", "yes", "If you are using a non-English character set, or if you wish your users to be able to use high-bit characters in their usernames, select Yes.  Select No if you wish to restrict users from registering names with high-bit characters", "$vars_registration{allowHighBit}", "YES|Yes, allow high-bit characters in usernames.%%NO|No, do not allow high-bit characters in usernames.");

&RadioField ("Suspend Registration", "SuspendRegister", "yes", "If you would like to temporarily \(or permanently\) prevent anyone new from registering, you can do so. Anyone attempting to register will be told that you are not accepting new registrations at this time.", "$vars_registration{SuspendRegister}", "true|Do not accept new registrations.%%false|Allow new registrations.");

&RadioField ("Display Registration Option Wording?", "DisplayRegistration", "yes", "Always leave this option set to Yes unless <u>none</u> of your forums require registration.  If you do not plan to use registration options anywhere, you may set this to NO.  Removing registration wording means that the registration link will NOT be displayed anywhere on your site!", "$vars_registration{DisplayRegistration}", "NO|No, remove registration wording throughout board.%%YES|Yes, display registration option on board.");

&DoTextArea ("Message Board Rules", "BBRules", "yes", "You can customize the exact wording for your bulletin board's rules.  Just edit the wording in the box to the right.  Note that HTML is permitted.  Be careful that any HTML you use is in the proper format!", "$vars_registration{BBRules}", "16", "35");

&DoTextArea ("Children's Online Protection Policy [COPPA] Wording", "COPPAWording", "", "If you use the Age Check option above you need to provide an explanation of the registration process for those under the age of 13. This wording will appear before the registration form is displayed.", "$vars_registration{COPPAWording}", "16", "35");

&DoTextArea ("Children's Online Protection Policy [COPPA] Instructions", "COPPAInstructions", "", "This text will go in the email sent to registrants under 13 and/or the parent or guardian. Be sure to include exact instructions including the necessary address, telephone, fax and email contact information.", "$vars_registration{COPPAInstructions}", "16", "35");

&HeaderRow("Standard Registration Fields", "2", "#c9c9c9", "#000000", "left", "2");

&HeaderRow("The following fields are always required: username, password, email.  The other registration fields can be customized, however.  Below, we have listed the options at your disposal.", "2", "#FFFFFF", "#000000", "left", "2");

&RadioField ("Location Field", "location_field_use", "yes", "", "$vars_registration{location_field_use}", "REQ|Make this a required field.%%OPT|Make this an optional field.%%DEL|Do not even display this field as an option.");

&RadioField ("Homepage Field", "homepage_field_use", "yes", "", "$vars_registration{homepage_field_use}", "REQ|Make this a required field.%%OPT|Make this an optional field.%%DEL|Do not even display this field as an option.");

&RadioField ("Occupation Field", "occupation_field_use", "yes", "", "$vars_registration{occupation_field_use}", "REQ|Make this a required field.%%OPT|Make this an optional field.%%DEL|Do not even display this field as an option.");

&RadioField ("Interests Field", "interests_field_use", "yes", "", "$vars_registration{interests_field_use}", "REQ|Make this a required field.%%OPT|Make this an optional field.%%DEL|Do not even display this field as an option.");

&RadioField ("Picture Field", "picture_field_use", "yes", "", "$vars_registration{picture_field_use}", "REQ|Make this a required field.%%OPT|Make this an optional field.%%DEL|Do not even display this field as an option.");

&RadioField ("ICQ Number Field", "icq_field_use", "yes", "", "$vars_registration{icq_field_use}", "REQ|Make this a required field.%%OPT|Make this an optional field.%%DEL|Do not even display this field as an option.");

&RadioField ("AOL Instant Messenger (AIM) Field", "aim_field_use", "yes", "", "$vars_registration{aim_field_use}", "REQ|Make this a required field.%%OPT|Make this an optional field.%%DEL|Do not even display this field as an option.");

&RadioField ("Signature Field", "signature_field_use", "yes", "", "$vars_registration{signature_field_use}", "REQ|Make this a required field.%%OPT|Make this an optional field.%%DEL|Do not even display this field as an option.");


&HeaderRow("Custom Registration Fields", "2", "#c9c9c9", "#000000", "left", "2");

&HeaderRow("You may add your own custom registration fields, if you like.  These will provide standard text fields for the registrant to complete.", "2", "#FFFFFF", "#000000", "left", "2");

my ($custom_field_use, $customfield);

for ($x = 1; $x <= 4; $x++) {
$REQ = ""; $OPT = ""; $DEL = "";
$custom_field_use = ("custom$x" . "_field_use");
$customfield = "customfield$x";
if ($vars_registration{$custom_field_use} eq "REQ") {
	$REQ = "CHECKED";
}
elsif ($vars_registration{$custom_field_use} eq "OPT") {
	$OPT = "CHECKED";
} else {
	$DEL = "CHECKED";
}


print<<THISFIELD;
<tr bgcolor="#FFFFFF">
<td width="45%" valign="top">
<b><font size="-1" face="Arial, Helvetica, sans-serif">
Custom Registration Field # $x:</b></font><BR><font size="1" face="Arial, Helvetica, sans-serif">Field Name:<BR><INPUT TYPE="TEXT" NAME="$customfield" VALUE="$vars_registration{$customfield}" SIZE=30 MAXLENGTH=70></font></td>
 <td valign="top"> <font size="1" color="#000000" face="Arial, Helvetica, sans-serif">
<INPUT TYPE="RADIO" NAME="$custom_field_use" VALUE="REQ" $REQ>&nbsp;&nbsp; Make this a required field.
<BR>
<INPUT TYPE="RADIO" NAME="$custom_field_use" VALUE="OPT" $OPT>&nbsp;&nbsp; Make this an optional field.
<BR>
<INPUT TYPE="RADIO" NAME="$custom_field_use" VALUE="DEL" $DEL>&nbsp;&nbsp; Do not even display this field as an option.
<BR>
</font>
</td></tr>

THISFIELD
} # end $x loop


&TBB; #Table Border Bottom in cp_common.pl

&Submit("Update Registration Settings");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;