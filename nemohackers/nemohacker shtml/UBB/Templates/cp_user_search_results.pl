# THIS FILE DISPLAYS GUTS OF: Control Panel, Member Search Results

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

print<<the_explanation;

<P><FONT SIZE="2" FACE="Verdana, Arial">
<CENTER>
Click on login name for profile details and advanced permission settings.
</CENTER>
</FONT>

the_explanation

&TBT; #Table Border Top in cp_common.pl


print<<search_totals;

<tr bgcolor="#ffffff">
<td colspan="3" align="left">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Displaying Matches $sp - $ep [$search_count total]</B></FONT></td>

<td colspan="3" align="right" valign="bottom">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
$previous &nbsp; $current &nbsp; $more
</B></FONT></td>
</tr>

search_totals


&HeaderRow("$vars_wordlets_cp{search_results}", "6", "#5d7790", "#FFFFFF", "center", "2");

print<<search_options;

<tr bgcolor="#d0783f">
<td valign="bottom">
<FONT SIZE="1" FACE="Verdana, Arial">
<B>Delete?</B></font>
</td>
<td valign="bottom" width="140">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Login Name<BR>Displayed Name<BR>Member Number
</B></FONT></td>
<td valign="bottom">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Able to post notes?
</B></FONT></td>
<td valign="bottom">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Authorized Admin?
</B></FONT></td>
<td valign="bottom">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Status
</B></FONT></td>
<td valign="bottom">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Total Posts
<BR>
Date Registered
</B></FONT></td></tr>

search_options


# alternate colors
if ($alt_color eq "#f7f7f7") {
	$alt_color = "#dedfdf";
}  else {
	$alt_color = "#f7f7f7";
}

foreach $match(@matches) {
chomp($match);
@user_profile = &OpenProfile($match);

chomp($user_profile[0]); chomp($user_profile[15]); chomp($user_profile[8]); chomp($user_profile[7]); 
chomp($user_profile[10]); chomp($user_profile[4]);

if ($user_profile[15] eq "") { $user_profile[15] = $user_profile[0]; }

$title = &CustomTitle($user_profile[8]);

if ($user_profile[4] =~ /Write/i) {
$write_yes = "CHECKED"; $write_no = "";
}  else {
$write_no = "CHECKED"; $write_yes = "";
}

if ($user_profile[4] =~ /Admin/i) {
$admin_yes = "CHECKED"; $admin_no = "";
}  else {
$admin_no = "CHECKED"; $admin_yes = "";
}


print<<match_row;

<tr bgcolor="$alt_color">
<td align="center">
<INPUT TYPE="CHECKBOX" NAME="Delete::$match" VALUE="D">
</td>
<td>
<FONT SIZE="1" FACE="Verdana, Arial">
<A HREF="$vars_config{CGIURL}/cp.cgi?ubb=get_profile_for_admin&u=$match" target=_blank>$user_profile[0]</A>
<BR>
$user_profile[15]
<BR>
$match
</font></td>
<td>
<FONT SIZE="1" FACE="Verdana, Arial">
<INPUT TYPE="RADIO" NAME="Write::$match" VALUE="W" $write_yes>Yes &nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="Write::$match" VALUE="R" $write_no>No
</FONT>
</td>
<td>
<FONT SIZE="1" FACE="Verdana, Arial">
<INPUT TYPE="RADIO" NAME="Admin::$match" VALUE="A" $admin_yes>Yes &nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="Admin::$match" VALUE="M" $admin_no>No
</FONT>
</td>
<td><FONT SIZE="1" FACE="Verdana, Arial">
$title
</FONT></td>
<td><FONT SIZE="1" FACE="Verdana, Arial">
$user_profile[7] posts
<BR>
$user_profile[10]
</FONT></td></tr>

match_row

} # end matches loop

&TBB; #Table Border Bottom in cp_common.pl

&Submit("$vars_wordlets_cp{update_members_submit}");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;