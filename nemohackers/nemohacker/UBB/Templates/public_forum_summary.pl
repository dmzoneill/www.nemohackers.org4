# FORUM SUMMARY PAGE - HTML FRAGMENTS

sub PageTop {

my $PageTop = qq~

<!--Set Page Font -->
<FONT face="$vars_style{FontFace}" size="$vars_style{TextSize}">
<center>
$standard_title_table
<P>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD align="right">
<FONT size="1" face="$vars_style{FontFace}"><B>
&#187; <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=get_daily">$vars_wordlets{active_topics}</A> 
&#171;
</B>
</FONT>
</TD></TR>
</TABLE>
</center>

$TBT

<TR bgcolor="$vars_style{AltColumnColor1}">
<TD valign="bottom" align="left">
<FONT size="1" face="$vars_style{FontFace}">
<B>&#187; 
$show_logout
</B></font>
</TD>
<TD valign="bottom" align="right">
<FONT size="1" face="$vars_style{FontFace}"><B>$RegisteredMemberLine</B></font>
</TD>
</TR>

$TBB

<center>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD align="left" valign="top">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
$vars_display{forum_intro}
</FONT>
</TD></TR>
</TABLE>
</center>
<P>

$TBT

~;

return($PageTop);

}  ## END PAGE TOP

sub CategoryStrip {

my $CategoryStrip = qq~

<tr bgcolor="$vars_style{CategoryStripColor}"><TD colspan="$ColSpan">
 <a href="$vars_config{CGIURL}/ultimatebb.cgi?category=$thisforumcategory"><FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}" Color="$vars_style{CategoryStripTextColor}"><B>$CategoryName</B></FONT></a> 
</td></tr>

~;

return($CategoryStrip);

}  #end category strip

sub Cat_Row {

my $row = qq~
<TR bgcolor="$cat_color">
<TD>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?category=$cat_number">$cat_name</A></font>
</TD>
<TD align=center>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}">$forum_count</font>
</TD></tr>
~;

return($row);
} # end cat row

sub Normal_Table_Row {
my $Row = qq~

<tr>
<td bgcolor="$vars_style{AltColumnColor1}" valign="top" align="center">

<SCRIPT language="Javascript">
<!--
var post_j = "$LastPostJulian";
var on_bulb = '<IMG SRC="$vars_config{NonCGIURL}/$vars_style{forum_summ_on}" BORDER="0">';
var off_bulb = '<IMG SRC="$vars_config{NonCGIURL}/$vars_style{forum_summ_off}" BORDER="0">';
if ((post_j > session_j) && (post_j != 0)) {
document.writeln(on_bulb);
}  else {
document.writeln(off_bulb);
}
//-->
</SCRIPT>

</td>

<td bgcolor="$vars_style{AltColumnColor2}" valign="top" align="left">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=forum&f=$x">$ForumName</A>
</B>
<BR>
<FONT size="$vars_style{FDTextSize}">
$ForumDesc
</FONT></FONT>
</td>

~;

$alt_color = "$vars_style{AltColumnColor2}";

if (($vars_display{ForumTotalOption} eq 'Both') || ($vars_display{ForumTotalOption} eq 'Topics')) {

#alternate column colors
if ($alt_color eq "$vars_style{AltColumnColor1}") {
	$alt_color = "$vars_style{AltColumnColor2}";
}  else {
	$alt_color = "$vars_style{AltColumnColor1}";
}

$Row .= qq~

<td bgcolor="$alt_color" align="center" valign="top">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>$TotalTopics</B></FONT>
</td>

~;
} # end topic column


if (($vars_display{ForumTotalOption} eq 'Both') || ($vars_display{ForumTotalOption} eq 'Posts')) {

#alternate column colors
if ($alt_color eq "$vars_style{AltColumnColor1}") {
	$alt_color = "$vars_style{AltColumnColor2}";
}  else {
	$alt_color = "$vars_style{AltColumnColor1}";
}

$Row .= qq~ 

<td bgcolor="$alt_color" align="center" valign="top">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>$TotalPosts</B></FONT>
</td>

~;

} # end posts column

#alternate column colors
if ($alt_color eq "$vars_style{AltColumnColor1}") {
	$alt_color = "$vars_style{AltColumnColor2}";
}  else {
	$alt_color = "$vars_style{AltColumnColor1}";
}

$Row .= qq~ 

<td bgcolor="$alt_color" NOWRAP valign="top" align="left">

<table border="0" cellspacing="0" cellpadding="0">
<tr>
<td width="18" valign=bottom>$msg_icon</td>
<td valign=bottom>
<FONT size="1" face="$vars_style{FontFace}">
<B>
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=get_topic&f=$x&t=$last_post_number"> $last_subject</A> $last_author
</FONT>
</td></tr>

<tr><td width="18" valign=bottom>$msg_icon2</td>
<td valign=bottom NOWRAP>
<FONT size="1" face="$vars_style{FontFace}"><B>$TheDate</B></FONT>
<FONT size="1" face="$vars_style{FontFace}" color="$vars_style{TimeColor}">$LatestTime</FONT>
</td></tr></table>

</td>

~;

if ($vars_display{ShowMods} ne 'no') {

#alternate column colors
if ($alt_color eq "$vars_style{AltColumnColor1}") {
	$alt_color = "$vars_style{AltColumnColor2}";
}  else {
	$alt_color = "$vars_style{AltColumnColor1}";
}

$Row .= qq~ 

<td bgcolor="$alt_color" valign="top" align="left">
<FONT size="1" face="$vars_style{FontFace}"><B>$Moderator</B></FONT>
</td>

~;
} # end mods column

$Row .= qq~</tr>~;

return($Row);
} # end normal table row

sub Normal_Table_Top {

# this is the table displayed on regular forum pages
my $Top = qq~

<tr bgcolor="$vars_style{TableColorStrip}">
<td>&nbsp;</td>
<td valign="bottom">
<FONT size="1" face="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}"><B>$vars_wordlets{forum_column}</B></FONT>
</td>

~;


if (($vars_display{ForumTotalOption} eq 'Both') || ($vars_display{ForumTotalOption} eq 'Topics')) {

$Top .= qq~ 

<td valign="bottom" align="center">
<FONT size="1" face="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}"><B>$vars_wordlets{topic_column}</B></FONT>
</td>

~;
} # end topic column


if (($vars_display{ForumTotalOption} eq 'Both') || ($vars_display{ForumTotalOption} eq 'Posts')) {

$Top .= qq~ 

<td valign="bottom" align="center">
<FONT size="1" face="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}"><B>$vars_wordlets{post_column}</B></FONT>
</td>

~;
} # end posts column

$Top .= qq~

<td NOWRAP valign=bottom align="left">
<FONT size="1" face="$vars_style{FontFace}" Color="$vars_style{TableStripTextColor}"><B>$vars_wordlets{last_post_column}</B></FONT>
</td>

~;

if ($vars_display{ShowMods} ne 'no') {

$Top .= qq~

<td valign="bottom" align="center">
<FONT size="1" face="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}"><B>$vars_wordlets{moderator_column}</B></FONT>
</td>

~;
} # end mods column

$Top .=  '</tr>';

return ($Top);
} #end normal_table_top


sub Cat_Table_Top {

# this is the table displayed on category-only forum pages
my $Top = qq~

<tr bgcolor="$vars_style{TableColorStrip}">
<td valign="bottom">
<FONT size="1" face="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}"><B>$vars_wordlets{categories_header}</B></FONT>
</td>

<td valign="bottom" align="center">
<FONT size="1" face="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}"><B>$vars_wordlets{forum_total_header}</B></FONT>
</td>
</tr>
~;

return ($Top);
} #end  cat_table_top

sub Cat_Page_Bottom {
my $Bottom = qq~

$TBB

<P>
~;
return($Bottom);
} # end cat page bottom

sub PageBottom {
my $Bottom = qq~

$TBB

<P>
<center>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD align="left" valign="top">
<FONT size="1" FACE="$vars_style{FontFace}">
$vars_wordlets{times_are} $vars_time{TimeZone}
</FONT>
</TD></TR></TABLE>
</center>

$TBT

<TR bgcolor="$vars_style{TableColorStrip}">
<TD colspan="2" align="center" valign="top">
<FONT SIZE="1" COLOR="$vars_style{TableStripTextColor}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{icon_legend}</B>
</FONT>
</TD>
</TR>
<TR bgcolor="$vars_style{AltColumnColor1}">
<TD align="left" valign="middle">
<FONT size="1" FACE="$vars_style{FontFace}">
<img src="$vars_config{NonCGIURL}/$vars_style{forum_summ_on}"  border="0" alt="$vars_wordlets{forum_summ_legend_new}">&nbsp;&nbsp; $vars_wordlets{forum_summ_legend_new}
</FONT>
</TD>
<TD align="left" valign="middle">
<FONT size="1" FACE="$vars_style{FontFace}">
<img src="$vars_config{NonCGIURL}/$vars_style{forum_summ_off}" border="0" alt="$vars_wordlets{forum_summ_legend_old}">&nbsp;&nbsp; $vars_wordlets{forum_summ_legend_old}
</FONT>
</TD>
</TR>
$TBB

</FONT>
<P>
~;
return($Bottom);
}

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

# You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;