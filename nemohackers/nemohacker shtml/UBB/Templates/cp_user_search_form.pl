# THIS FILE DISPLAYS GUTS OF: Control Panel, User Search Form

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow("$vars_wordlets_cp{search_users_header}", "2", "#5d7790", "#FFFFFF", "center", "2");

print<<search_options;

<TR bgcolor="#FFFFFF">
<TD WIDTH=200 VALIGN=TOP><FONT SIZE="1" FACE="Verdana, Arial"><B>
$vars_wordlets{login_name}</B>
<BR>Note that the login name may be different than the publicly displayed name.
</FONT>
</td>
<td>
<INPUT TYPE="TEXT" NAME="login_name" VALUE="" SIZE="25" MAXLENGTH="25"></td></tr>

<TR bgcolor="#FFFFFF">
<TD WIDTH=200 VALIGN=TOP><FONT SIZE="1" FACE="Verdana, Arial"><B>
$vars_wordlets{user_number}</B>
<BR>This is the number assigned to a particular user.  Search will not do partial matches on the number- looks for exact matches only, but you can type "48" rather than "00000048".
</FONT>
</td>
<td>
<INPUT TYPE="TEXT" NAME="user_number" VALUE="" SIZE="8" MAXLENGTH="8"></td></tr>

<TR bgColor="#FFFFFF">
<TD vAlign="top" width="200"><b><font size="1" FACE="Verdana, Arial">
$vars_wordlets{member_status}
</font></b></TD>
<TD> 
<select name="user_status">
<option selected value=''>No preference</option>
<option value="Admin">Administrators</option>
<option value="Mod">Moderators</option>
<option value="COPPA">Under 13</option>
</select>
</TD>
</TR>

<tr bgColor="#FFFFFF">
<td WIDTH="200" vAlign="top"><b><font size="1" FACE="Verdana, Arial">
Access to Private Forums
</b><BR>
Note: This will not include administrators or moderators who may have access.
</font></td><td>
<select name="private_forum">
<OPTION VALUE='' SELECTED>No preference
$private_forum_options
</select></td></tr>

<TR bgcolor="#FFFFFF">
<TD WIDTH="200" VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
$vars_wordlets{email_field}
</B></FONT></td>
<td>
<INPUT TYPE="TEXT" NAME="email" VALUE="" SIZE=30 MAXLENGTH=70>
</td></tr>

<TR bgcolor="#FFFFFF">
<TD WIDTH="200" VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Number of Posts
</B></FONT></td>
<td>
<SELECT NAME="Math">
<OPTION VALUE="GT"> &gt;=
<OPTION VALUE="LT"> &lt;=
<OPTION VALUE="EQ"> ==
</SELECT>
<INPUT TYPE="TEXT" NAME="Posts" VALUE="" SIZE=3 MAXLENGTH=5>
</td></tr>

<TR bgcolor="#FFFFFF">
<TD>
<INPUT TYPE="CHECKBOX" NAME="ViewEntire" VALUE="Yes">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
&nbsp;View all registered users.
</b></font>
</td><td>&nbsp;</td></tr>

search_options

&TBB; #Table Border Bottom in cp_common.pl

&Submit("$vars_wordlets_cp{search_users_submit}");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;