# THIS FILE DISPLAYS GUTS OF: Control Panel, Prune Submit

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

print<<prune_explain;
<center>
<table border="0" width="95%">
<TR>
<TD>
<FONT SIZE="2" FACE="Verdana, Arial"><B>
Prune Forum: <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=forum&f=$in{prune_forum}">$this_forum[1]</A>
<BR>
Topic Age: $in{prune_days} Days Old 
</B>
<P>
To exclude a topic from the prune list, uncheck the box on the left.  All topics that are checked WILL be deleted.
</FONT>
</TD></TR></TABLE>
</center>

prune_explain


&TBT; #Table Border Top in cp_common.pl

&HeaderRow("$CurrentTab", "5", "#5d7790", "#FFFFFF", "center", "2");


print<<prune_list;

<TR bgcolor="#c9c9c9">
<TD width="7" VALIGN="TOP">
&nbsp;
</td>

<td VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Topic Subject
</B></FONT>
</td>

<td VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Replies
</B></FONT>
</td>

<td VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Topic Starter
</B></FONT>
</td>

<td VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Days Old
</B></FONT>
</td>
</tr>

prune_list


foreach (@prunes) {

# grab topic
@this_topic = &OpenTopic($_, $in{prune_forum});

# grab topic stat line
@stat_line = split(/\|\|/, $this_topic[0]);

($stat_line[8] ne '') ? ($topic_starter = $stat_line[8]) : ($topic_starter = $stat_line[3]);

# calculate age
$days_old = $GotTime{LastLoginJulianDATE} - int($forum_topics{$_});

print<<prune_list;

<TR bgcolor="#FFFFFF">
<TD width="7" VALIGN="TOP">
<INPUT TYPE="CHECKBOX" NAME="$_" VALUE="prune" CHECKED>
</td>

<td VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial">
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=get_topic&f=$in{prune_forum}&t=$_" TARGET="_NEW">$stat_line[4]</A>
</FONT>
</td>

<td VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial">
$stat_line[2]
</FONT>
</td>

<td VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial">
$topic_starter
</FONT>
</td>

<td VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial">
$days_old
</FONT>
</td>
</tr>

prune_list

} # end loop thru each of the prunes

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