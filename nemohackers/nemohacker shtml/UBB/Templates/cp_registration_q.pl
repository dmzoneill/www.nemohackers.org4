# THIS FILE DISPLAYS GUTS OF: Control Panel, Registration Queue

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

print<<the_explanation;
<center>
<table border="0" width="95%">
<TR><TD align="left">
<P><FONT SIZE="2" FACE="Verdana, Arial">
If you have registration moderation activated for this message board, users that register are not able to post until you give them permission.  The members listed below are still awaiting approval from you.  If you decline approval, the user will still be registered but will not be able to post messages.  An email will be sent to each member once you make a decision.
</FONT>
</TD></TR></TABLE>
<center>
the_explanation

&TBT; #Table Border Top in cp_common.pl

&HeaderRow("Displaying Matches [$q_count total]&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$previous &nbsp;&nbsp;$current&nbsp;&nbsp; $more", "3", "#FFFFFF", "#000000", "left", "1");

&HeaderRow("$vars_wordlets_cp{registration_q}", "3", "#5d7790", "#FFFFFF", "center", "2");

print<<search_options;

<tr bgcolor="#d0783f">
<td valign="bottom" width="140">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Login Name<BR>Displayed Name<BR>Email
</B></FONT></td>

<td valign="bottom">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Date Registered
</B></FONT></td>

<td valign="bottom">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Approve Registration?
</B></FONT></td>
</tr>

search_options


# alternate colors
if ($alt_color eq '#f7f7f7') {
	$alt_color = '#dedfdf';
} else {
	$alt_color = '#f7f7f7';
}

my $count = 0;

foreach $match(@the_q) {
chomp($match);
$count++;
# make sure profile still exists!
if (-s "$vars_config{MembersPath}/$match.cgi") {

@user_profile = &OpenProfile($match);

chomp($user_profile[0]); chomp($user_profile[15]); chomp($user_profile[8]); chomp($user_profile[7]); 
chomp($user_profile[10]); chomp($user_profile[4]);
chomp($user_profile[2]);

if ($user_profile[15] eq '') { $user_profile[15] = $user_profile[0]; }


print<<match_row;

<tr bgcolor="$alt_color">
<td>
<FONT SIZE="1" FACE="Verdana, Arial">
<A HREF="$vars_config{CGIURL}/cp.cgi?ubb=get_profile_for_admin&u=$match" target=_blank>$user_profile[0]</A>
<BR>
$user_profile[15]
<BR>
$user_profile[2]
</font></td>

<td><FONT SIZE="1" FACE="Verdana, Arial">
$user_profile[10]
</FONT></td>

<td>
<FONT SIZE="1" FACE="Verdana, Arial">
<INPUT TYPE="RADIO" NAME="Q:$match" VALUE="A" CHECKED>Approve
&nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="Q:$match" VALUE="D">Decline
&nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="Q:$match" VALUE="K">Keep in Queue
</FONT>
</td>

</tr>

match_row

} 
} # end matches loop

if ($count == 0) {

print<<match_row;

<tr bgcolor="$alt_color">
<td colspan="3">
<FONT SIZE="2" FACE="Verdana, Arial">
<b>
No members in the registration queue currently!</b>

</font></td>
</tr>

match_row

}

&TBB; #Table Border Bottom in cp_common.pl

if ($count >  0) {
&Submit("$vars_wordlets_cp{update_queue}");
}  else {
print qq~</FORM>~;
}
# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;