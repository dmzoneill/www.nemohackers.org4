# THIS FILE DISPLAYS GUTS OF: Control Panel, Prune Request

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow("$CurrentTab", "2", "#5d7790", "#FFFFFF", "center", "2");


print<<search_options;

<TR bgcolor="#FFFFFF">
<TD WIDTH=200 VALIGN=TOP><FONT SIZE="1" FACE="Verdana, Arial"><B>
Forum To Prune</B>
</FONT>
</td>
<td VALIGN=TOP>
<SELECT NAME="prune_forum">
$all_forums
$forum_options
</SELECT>
</td></tr>

<TR bgcolor="#FFFFFF">
<TD WIDTH=200 VALIGN=TOP><FONT SIZE="1" FACE="Verdana, Arial"><B>
Delete All Registered Member's Posts:</B>
<BR>
To prune all posts written by a registered member, enter the user's registration number in the field to the right.  You may not prune posts by unregistered users.
</FONT>
</td>
<td VALIGN=TOP><FONT SIZE="1" FACE="Verdana, Arial"><B>
<INPUT TYPE="TEXT" NAME="prune_reg_user" VALUE="" SIZE="8" MAXLENGTH="8"> &#171;&#171; $vars_wordlets{user_number}
</B>
</FONT>
</td></tr>

search_options

&TBB; #Table Border Bottom in cp_common.pl

&Submit("$CurrentTab");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;