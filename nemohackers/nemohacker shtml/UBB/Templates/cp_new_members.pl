# THIS FILE DISPLAYS GUTS OF: Control Panel, New Members List


&TBT; #Table Border Top in cp_common.pl

&HeaderRow("$vars_wordlets_cp{total_members} $total_members", "4", "#FFFFFF", "#000000", "left", "1");

&HeaderRow("$vars_wordlets_cp{new_members}", "4", "#5d7790", "#FFFFFF", "center", "2");

print<<search_options;

<tr bgcolor="#dedfdf">
<td valign="bottom" width="140">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Displayed Name<BR>Login Name<BR>Member Number
</B></FONT></td>
<td valign="bottom">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Able to post notes?
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

foreach $match(@new_members) {
chomp($match);
($j, $un) = split(/\|\!\!\|/, $match); 
@user_profile = &OpenProfile($un);

chomp($user_profile[0]); chomp($user_profile[15]); chomp($user_profile[8]); chomp($user_profile[7]); 
chomp($user_profile[10]); chomp($user_profile[4]);

if ($user_profile[15] eq "") { $user_profile[15] = $user_profile[0]; }

# set status
$title = &CustomTitle($user_profile[8]);

if ($user_profile[4] =~ /Write/i) {
$write_yes = "CHECKED"; $write_no = "";
}  else {
$write_no = "CHECKED"; $write_yes = "";
}

print<<match_row;

<tr bgcolor="$alt_color">
<td>
<FONT SIZE="1" FACE="Verdana, Arial">
<A HREF="$vars_config{CGIURL}/cp.cgi?ubb=get_profile_for_admin&u=$un" target=_blank>$user_profile[15]</A>
<BR>
$user_profile[0]
<BR>
$un
</font></td>
<td>
<form>
<FONT SIZE="1" FACE="Verdana, Arial">
<INPUT TYPE="RADIO" NAME="Write::$un" VALUE="W" $write_yes>Yes &nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="Write::$un" VALUE="R" $write_no>No
</FONT>
</form>
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


# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;