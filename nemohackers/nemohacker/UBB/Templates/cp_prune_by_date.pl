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
$forum_options
</SELECT>
</td></tr>

<TR bgcolor="#FFFFFF">
<TD WIDTH=200 VALIGN=TOP><FONT SIZE="1" FACE="Verdana, Arial"><B>
Prune Topics Older Than:</B>
<BR>
Tell us how far back to prune.  We will generate a list of all topics that have not been posted in the last X number of days.  You will be able to opt specific topics out of this pruning, if you like.  Enter a number in the field to the right.
</FONT>
</td>
<td VALIGN=TOP><FONT SIZE="1" FACE="Verdana, Arial"><B>
<INPUT TYPE="TEXT" NAME="prune_days" VALUE="" SIZE="3" MAXLENGTH="4"> Days
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