# ON SCREEN CONFIRMATION: REGISTRATION FOR CHILD

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<RegisterGuts;
<CENTER>
$standard_title_table
</CENTER>

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
<a href="$vars_config{CGIURL}/ultimatebb.cgi">$vars_config{BBName}</a> &raquo; $vars_wordlets{registration_success_kid}
</B></font>
</TD>
</TR>

$TBB

<P>

$TBT

<tr bgcolor="$vars_style{TableColorStrip}">
<td colspan="2">
<b><FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}">
$vars_wordlets{registration_success_kid}
</font></b>
</td>
</tr>

<tr>
<td colspan="2" bgcolor="$vars_style{CategoryStripColor}">
<FONT size="$vars_style{TextSize}" color="$vars_style{CategoryStripTextColor}" face="$vars_style{FontFace}">
<p><B>
$vars_wordlets{reg_confirm_intro_kid} <A HREF=mailto:$vars_registration{RegsAdminEmail}>$vars_registration{RegsAdminEmail}</a>.
</B>
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
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$user_name
</font>
</td>
</tr>

RegisterGuts

if ($vars_registration{EmailVerify} eq 'OFF') {
	$password = $password;
} else {
	$password = "$vars_wordlets{password_emailed} $email.";
}

print<<PWFIELDS;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{password_field}</B>:
</font>
</td>
<td><FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$password
</FONT>
</td>
</tr>


PWFIELDS

print<<RegisterGuts2;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{email_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$email
</FONT>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td width="45%" valign="top">
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{public_name_field}</B>
</font>
</td>
<td valign="top">
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$public_name
<BR>
<b>$pub_warning</b>
</font>

</td>
</tr>

RegisterGuts2


# other registration fields follow:

if ($vars_registration{location_field_use} ne 'DEL') {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{location_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$in{location}
</font>&nbsp;
</td>
</tr>

THISFIELD

} # end location field


if ($vars_registration{occupation_field_use} ne 'DEL') {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{occupation_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$in{occupation}
</font>&nbsp;
</td>
</tr>

THISFIELD

} # end field


if ($vars_registration{homepage_field_use} ne 'DEL') {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{homepage_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$in{homepage}
</font>&nbsp;
</td>
</tr>

THISFIELD

} # end field


if ($vars_registration{interests_field_use} ne 'DEL') {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{interests_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$in{interests}
</font>&nbsp;
</td>
</tr>

THISFIELD

} # end field


if ($vars_registration{picture_field_use} ne 'DEL') {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{picture_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<A HREF="$in{picture}">$in{picture}</A>
</font>&nbsp;
</td>
</tr>

THISFIELD

} # end field


if (($vars_registration{custom1_field_use} ne 'DEL')  && ($vars_registration{customfield1} ne '')) {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_registration{customfield1}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$in{customfield1}
</font>&nbsp;
</td>
</tr>

THISFIELD

} # end field



if (($vars_registration{custom2_field_use} ne 'DEL')  && ($vars_registration{customfield2} ne '')) {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_registration{customfield2}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$in{customfield2}
</font>&nbsp;
</td>
</tr>

THISFIELD

} # end field



if (($vars_registration{custom3_field_use} ne 'DEL')  && ($vars_registration{customfield3} ne '')) {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_registration{customfield3}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$in{customfield3}
</font>&nbsp;
</td>
</tr>

THISFIELD

} # end field



if (($vars_registration{custom4_field_use} ne 'DEL')  && ($vars_registration{customfield4} ne '')) {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_registration{customfield4}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$in{customfield4}
</font>&nbsp;
</td>
</tr>

THISFIELD

} # end field

if ($vars_registration{icq_field_use} ne 'DEL') {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{icq_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$in{icq}
</font>&nbsp;
</td>
</tr>

THISFIELD

} # end field


if ($vars_registration{aim_field_use} ne 'DEL') {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{aim_field}</B>:
</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$in{aim}
</font>&nbsp;
</td>
</tr>

THISFIELD

} # end field


if ($vars_registration{signature_field_use} ne 'DEL') {

print <<THISFIELD;

<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="top" width="45%">
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">

<B>$vars_wordlets{signature_field}</B>

</font>
</td>
<td>
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$sig_html
</FONT>&nbsp;
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
$AllowMassMail</font></td>
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
$user_ratings
</font>
</td>
</tr>


<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="top">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
$vars_wordlets{default_topic_view}
</font>
</td>
<td valign="top">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<form>
<SELECT NAME="DaysPrune">
	<OPTION value="1" $select_list{1}>$vars_wordlets{show_topics_from_last} $vars_wordlets{day}</OPTION>
	<OPTION value="2" $select_list{2}>$vars_wordlets{show_topics_from_last} 2 $vars_wordlets{days}</OPTION>
	<OPTION value="5" $select_list{5}>$vars_wordlets{show_topics_from_last} 5 $vars_wordlets{days}</OPTION>
	<OPTION value="10" $select_list{10}>$vars_wordlets{show_topics_from_last} 10 $vars_wordlets{days}</OPTION>
	<OPTION value="20" $select_list{20}>$vars_wordlets{show_topics_from_last} 20 $vars_wordlets{days}</OPTION>
	<OPTION value="30" $select_list{30}>$vars_wordlets{show_topics_from_last} 30 $vars_wordlets{days}</OPTION>
	<OPTION value="45" $select_list{45}>$vars_wordlets{show_topics_from_last} 45 $vars_wordlets{days}</OPTION>
	<OPTION value="60" $select_list{60}>$vars_wordlets{show_topics_from_last} 60 $vars_wordlets{days}</OPTION>
	<OPTION value="75" $select_list{75}>$vars_wordlets{show_topics_from_last} 75 $vars_wordlets{days}</OPTION>
	<OPTION value="100" $select_list{100}>$vars_wordlets{show_topics_from_last} 100 $vars_wordlets{days}</OPTION>
	<OPTION value="365" $select_list{365}>$vars_wordlets{show_all_topics}</OPTION>
	</SELECT>
	</form>
</font>
</td>
</tr>


<tr>
<td colspan="2" bgcolor="$vars_style{CategoryStripColor}">
<FONT size="$vars_style{TextSize}" color="$vars_style{CategoryStripTextColor}" face="$vars_style{FontFace}">
<p><B>
$vars_wordlets{parental_instructions}
</B>
<P>
</FONT>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td colspan="2">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
$vars_registration{COPPAInstructions}
</font>
</td>
</tr>

<tr bgcolor="$vars_style{BGColor}">
<td colspan="2"><p><font size="$vars_style{TextSize}" face="$vars_style{FontFace}">$vars_wordlets{parental_agreement}</font></p>
</td>
  </tr>
  <tr bgcolor="$vars_style{AltColumnColor1}">
    <td>
      <p><font size="$vars_style{TextSize}" face="$vars_style{FontFace}">$vars_wordlets{parent_name}</font></p>
    </td>
    <td>
<br><hr>
    </td>
  </tr>
    <tr bgcolor="$vars_style{AltColumnColor1}">
    <td>
      <p><font size="$vars_style{TextSize}" face="$vars_style{FontFace}">$vars_wordlets{signature_field}
        </font></p>
    </td>
    <td>
      <br><hr> </td>
  </tr>
  <tr bgcolor="$vars_style{AltColumnColor1}">
    <td>
      <p><font size="$vars_style{TextSize}" face="$vars_style{FontFace}">$vars_wordlets{relation_to_child}</font></p>
    </td>
    <td>
      <p><font size="2"><br><hr>
    </td>
  </tr>
  <tr bgcolor="$vars_style{AltColumnColor1}">
    <td>
      <p><font size="$vars_style{TextSize}" face="$vars_style{FontFace}">$vars_wordlets{phone}</font></p>
    </td>
    <td>
      <br><hr>  </td>
  </tr>
  <tr bgcolor="$vars_style{AltColumnColor1}">
    <td>
      <p><font size="$vars_style{TextSize}" face="$vars_style{FontFace}">$vars_wordlets{parent_email}</font></p>
    </td>
    <td>
      <br><hr>    </td>
  </tr>
  <tr bgcolor="$vars_style{AltColumnColor1}">
    <td><font size="$vars_style{TextSize}" face="$vars_style{FontFace}">$vars_wordlets{date_column}</font>
         </td>
    <td>
     <br><hr>   </td>
  </tr>
  <tr bgcolor="$vars_style{AltColumnColor1}">
    <td><font size="$vars_style{TextSize}" face="$vars_style{FontFace}">$vars_wordlets{registration_date}</font></td>
    <td>
     <font size="$vars_style{TextSize}" face="$vars_style{FontFace}">$GotTime{HyphenDate}</font></td>
  </tr>
  <tr bgcolor="$vars_style{AltColumnColor1}">
    <td colspan="2">
      <p><font size="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>$vars_wordlets{parent_questions} $vars_registration{RegsAdminEmail}</B></font></p>
    </td>
  </tr>

$TBB

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