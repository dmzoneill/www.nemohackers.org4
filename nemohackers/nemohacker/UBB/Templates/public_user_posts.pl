# UBB USER POSTS - LAST 50 BY USER

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<recent_posts_by_user;

<CENTER>
$standard_title_table
</CENTER>

<P>

$TBT

<tr bgcolor="$vars_style{TableColorStrip}">
<td colspan="3">
<b><FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}">
$vars_wordlets{recent_user_posts}: $user_public_name
</font></b>
</td>
</tr>

<tr bgcolor="$vars_style{CategoryStripColor}">
<td>
&nbsp;
</td>
<td>
<FONT color="$vars_style{CategoryStripTextColor}" size="1" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{topic_header}</B>
</FONT>
</td>
<td>
<FONT color="$vars_style{CategoryStripTextColor}" size="1" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{forum_column}</B>
</font>
</td>

</tr>

recent_posts_by_user

foreach (@rev_posts) {
$counter++;

# split line
($f, $t, $r) = split(/\|/, $_); $r = $r + 0;

# get forum info
@this_forum = &GetForumRecord($f);

if ($ExactPath{$f}) {
$exact_path = $ExactPath{$f};
}  else {
$exact_path = "Forum$f";
if ($this_forum[6] eq 'private') {
$exact_path .= "/private-$this_forum[7]"; }
$ExactPath{$f} = $exact_path;
}

#make sure topic exists
if (-e "$vars_config{NonCGIPath}/$exact_path/$t.cgi") {

# grab topic
@this_topic = &OpenTopic($t, $f);

# grab topic stat line
@stat_line = split(/\|\|/, $this_topic[0]);

# topic subject-> $stat_line[4]

# forum name: $this_forum[1]

print<<this_post;
<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="top">
<FONT size="1" FACE="$vars_style{FontFace}">
<B>$counter</B>
</font>
</td>

<td valign="top">
<FONT size="1" FACE="$vars_style{FontFace}">
<B><A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=get_topic&f=$f&t=$t">$stat_line[4]</A></B> (post \#$r)
</FONT>
</td>
<td valign="top">
<FONT size="1" FACE="$vars_style{FontFace}">
<B>$this_forum[1]</B>
</font>
</td>
</tr>
this_post
} # unless post exists
} # end posts loop


print<<NearBottom;
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