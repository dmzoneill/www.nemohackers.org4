# DAILY TOPICS PAGE - HTML FRAGMENTS

sub page_top {

my $PageTop = qq~

<center>
$standard_title_table

<P>
$TBT

<TR bgcolor="$vars_style{AltColumnColor1}">
<TD valign="bottom" align="left">
<FONT size="1" face="$vars_style{FontFace}">
<B>&#187; 
$show_logout
</B>
</font>
</TD>
<TD valign="bottom" align="right">
<FONT size="1" face="$vars_style{FontFace}"><B>
<a href="$vars_config{CGIURL}/ultimatebb.cgi">$vars_config{BBName}</a> &raquo; $vars_wordlets{active_topics}
</B></font>
</TD>
</TR>

$TBB

<P>
~;

return($PageTop);

}  ## END PAGE TOP

sub todays_topics_body {
local($f, $t, $count, $post_number);

my $the_body = qq~
<table border="0" width="$vars_style{TableWidth}">
<tr bgcolor="$vars_style{AltColumnColor1}">
<td colspan="3" align="right" valign="bottom">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
$previous $current $more 
</B></FONT></td>
</tr>
</table>

$TBT

<tr bgcolor="$vars_style{CategoryStripColor}">
<td width="30%" valign="bottom">
<FONT size="1" face="$vars_style{FontFace}" color="$vars_style{CategoryStripTextColor}"><B>
$vars_wordlets{forum_column}
</B></FONT>
</td>
<td>&nbsp;
</td>
<td valign="bottom">
<FONT size="1" face="$vars_style{FontFace}" color="$vars_style{CategoryStripTextColor}"><B>
$vars_wordlets{topic_header}
</B></FONT>
</td>
</tr>
~;

foreach $key (@topics) {
($f, $t) = split("a", $key); $f = $f + 0;


unless ($ExactPath{$f}) {
$exact_path = "Forum$f";
@get_path = &GetForumRecord($f);
$ExactPath{$f} = $exact_path;
}
$exact_path = $ExactPath{$f};

unless ($forum_names{$f}) {
$forum_name = $get_path[1]; chomp($forum_name);
$forum_names{$f} = $forum_name;
}
$forum_name = $forum_names{$f};


if (-e "$vars_config{NonCGIPath}/$exact_path/$t.cgi") {
#open topic
@topic_file = &OpenTopic("$t", "$f");
@stat_file = split(/\|\|/, $topic_file[0]);
@reverse_topic = reverse(@topic_file);
$the_last_post = $reverse_topic[0];
@last_post = split(/\|\|/, $the_last_post);


$post_number = $stat_file[2] + 1;
if ($last_post[9] eq '') { $last_post[9] = 1; }
$last_post[6] = &promo($last_post[6]);
if ($last_post[10] eq '') { $last_post[10] = $last_post[2]; }

$the_body .= qq~
<tr bgcolor="$vars_style{BGColor}">
<td width="30%" valign="top">
<FONT size="1" face="$vars_style{FontFace}"><B>
$forum_name
</B></FONT>
</td>
<td valign="top" align="center">
<IMG SRC="$vars_config{NonCGIURL}/icons/icon$last_post[9].gif" BORDER="0">
</td>
<td valign="top">
<FONT size="1" face="$vars_style{FontFace}"><B>
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=get_topic&f=$f&t=$t">$stat_file[4]</A> $vars_wordlets{by} $last_post[10] &nbsp;&nbsp;&nbsp;&nbsp;($vars_wordlets{post} \# $post_number)</B>
<BR>
$last_post[6]
</FONT>
</td>
</tr>
~;
} # if topic exists
}


return ($the_body);
} #end todays_topics_body

sub page_bottom {
my $Bottom = qq~
$TBB
<P>
<center>
<TABLE cellpadding="0" border="0" width="$vars_style{TableWidth}">
<TR>
<TD valign="bottom" align="right"><FONT size="1" face="$vars_style{FontFace}"><B>$previous $current $more</B></font></TD></TR>
</TABLE>
</center>
<P>
~;
return($Bottom);
}

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com
# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;