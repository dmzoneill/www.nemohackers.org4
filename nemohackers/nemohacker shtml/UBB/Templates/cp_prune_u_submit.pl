# THIS FILE DISPLAYS GUTS OF: Control Panel, Prune By User Submit

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

print<<prune_explain;
<center>
<table border="0" width="95%">
<TR>
<TD>
<FONT SIZE="2" FACE="Verdana, Arial"><B>
Prune All Posts By Member: $member_name (Member Number $in{prune_reg_user})
<BR>
In Forum: $forum_line
</B>
<P>
To exclude a post from the prune list, uncheck the box on the left.  All posts that are checked WILL be deleted.  Note that if the post is the first post in a topic (the topic starter), the entire topic will be deleted!
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
Reply Number (in Topic)
</B></FONT>
</td>

<td VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Topic Starter
</B></FONT>
</td>

<td VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Forum Name
</B></FONT>
</td>

</tr>

prune_list


foreach (@prunes) {

die unless $_;


chomp($_); ($f, $t, $r) = split(/\|/, $_);

# grab topic

# set exact_path, if not already set
unless ($exact_path{$f}) {
@forumfacts = &GetForumRecord($f);
if ($forumfacts[6] eq "private") {
	$exact_path{$f} = "Forum$f/private-$forumfacts[7]";
}  else {
	$exact_path{$f} = "Forum$f";
}
}

$exact_path = $exact_path{$f};

if (-e "$vars_config{NonCGIPath}/$exact_path/$t.cgi") {

@this_topic = &OpenTopic($t, $f);

# grab topic stat line
@stat_line = split(/\|\|/, $this_topic[0]);

($stat_line[8] ne '') ? ($topic_starter = $stat_line[8]) : ($topic_starter = $stat_line[3]);

if ($r eq '000000') { $reply_line = 'Topic Starter';
} else {
$reply_num = $r + 0;
$reply_line = ("Reply #" . "$reply_num");
}

print<<prune_list;

<TR bgcolor="#FFFFFF">
<TD width="7" VALIGN="TOP">
<INPUT TYPE="CHECKBOX" NAME="$_" VALUE="prune" CHECKED>
</td>

<td VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial">
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=get_topic&f=$f&t=$t" TARGET="_NEW">$stat_line[4]</A>
</FONT>
</td>

<td VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial">
$reply_line
</FONT>
</td>

<td VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial">
$topic_starter
</FONT>
</td>

<td VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial">
$forumfacts[1]
</FONT>
</td>
</tr>

prune_list
} # if topic exists
#else {
#	print "<tr><td colspan=4>Did not exist: $f $t $r</td></tr>\n";
#} #endif
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