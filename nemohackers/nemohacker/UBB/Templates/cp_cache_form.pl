# THIS FILE DISPLAYS GUTS OF: Control Panel, Clear Cache Page

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow(qq%The UBB automatically clears cache pages when necessary, and for affected pages when you change any settings in the control panel, but you may want to clear certain cached pages yourself from time to time.%, "2", "#FFFFFF", "#000000", "left", "1");

&HeaderRow("$vars_wordlets_cp{clear_cache}", "2", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("Check each area for which you want the cache cleared.", "2", "#c9c9c9", "#000000", "left", "2");


print<<cache_guts;

<tr bgcolor="#FFFFFF"> 
<td valign="top">
<INPUT TYPE="CHECKBOX" NAME="forum_summary" VALUE="clear" CHECKED>
</td>
<td valign="top">
<b><FONT size="2" FACE="Verdana, Arial">
Forum Summary Page Cache</b>
<BR>
<FONT SIZE="1">
These are the pages that contain the list of all forums.
</FONT>
</font>
</td>
</tr>

<tr bgcolor="#FFFFFF"> 
<td valign="top">
<INPUT TYPE="CHECKBOX" NAME="forum_pages" VALUE="clear" CHECKED>
</td>
<td valign="top">
<b><FONT size="2" FACE="Verdana, Arial">
Forum Page Cache</b>
<BR>
<FONT SIZE="1">
These are the pages that contain the list of all topics in a given forum.
</FONT>
</font>
</td>
</tr>


<tr bgcolor="#FFFFFF"> 
<td valign="top">
<INPUT TYPE="CHECKBOX" NAME="topics" VALUE="clear" CHECKED>
</td>
<td valign="top">
<b><FONT size="2" FACE="Verdana, Arial">
Topic Page Cache</b>
<BR>
<FONT SIZE="1">
These are the pages that contain the actual topics in every forum.
</FONT>
</font>
</td>
</tr>


<tr bgcolor="#FFFFFF"> 
<td valign="top">
<INPUT TYPE="CHECKBOX" NAME="misc" VALUE="clear" CHECKED>
</td>
<td valign="top">
<b><FONT size="2" FACE="Verdana, Arial">
Miscellaneous Pages Cache</b>
<BR>
<FONT SIZE="1">
Including the UBB Code Definition page, the FAQ page, and the daily active topics page.
</FONT>
</font>
</td>
</tr>


cache_guts



&TBB; #Table Border Bottom in cp_common.pl

&Submit("$vars_wordlets_cp{clear_cache}");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;