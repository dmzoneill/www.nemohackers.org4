# UBB Rating List page

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<my_rating_list_top;
<center>
$standard_title_table
</center>
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
<a href="$vars_config{CGIURL}/ultimatebb.cgi">$vars_config{BBName}</a> &raquo; <A HREF="$vars_config{CGIURL}ultimatebb.cgi?ubb=my_profile">$vars_wordlets{my_profile_header}</A> &#187; $vars_wordlets{rating_list}
</B></font>
</TD>
</TR>

$TBB
<P>
<center>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD align="left">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">$vars_wordlets{rating_list_explained}</FONT>
</TD></TR></TABLE>
</center>
<P>
my_rating_list_top


foreach (1..5) {
$star_level = ("user_ratings_" . "$_");

$this_rating_list = ("level_" . "$_");
$this_rating_list = $$this_rating_list;

if ($this_rating_list eq '') {
$this_rating_list = $vars_wordlets{none};
}

print<<rating_level;
$TBT
<tr bgcolor="$vars_style{AltColumnColor2}">
<td>
<b><FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$vars_wordlets{rating_list}: <IMG SRC="$vars_config{NonCGIURL}/$vars_style{$star_level}" BORDER=0>
</font></b>
</td>
</tr>

<TR bgcolor="$vars_style{AltColumnColor1}">
<TD>
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
$this_rating_list
</FONT>
</TD>
</TR>

$TBB
<P>
rating_level

}

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