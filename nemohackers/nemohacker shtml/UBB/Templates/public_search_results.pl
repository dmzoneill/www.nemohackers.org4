# SEARCH RESULTS PAGE - HTML FRAGMENTS

sub PageTop {

my $PageTop = qq~
$Header

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
<a href="$vars_config{CGIURL}/ultimatebb.cgi">$vars_config{BBName}</a> &raquo; $vars_wordlets{search_results}
</B></font>
</TD>
</TR>

$TBB

<P>

<table border='0' width="$vars_style{TableWidth}">
<TR><TD align="left">
<FONT FACE="$vars_style{FontFace}" SIZE="1">$vars_wordlets{displaying_topics} $StartPoint - $EndPoint ($MatchTotal $vars_wordlets{total}) &nbsp;&nbsp;&nbsp;&nbsp; $NextWording</FONT></td>
<td align="right"> 
<FONT SIZE="1" FACE="$vars_style{FontFace}">
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=search">$vars_wordlets{search_new}</A></FONT>
</td></tr>
</table>

$TBT

<TR bgcolor="$vars_style{TableColorStrip}">
<TD>
<FONT SIZE="1" FACE="$FontFace" COLOR="$vars_style{TableStripTextColor}"><B>$vars_wordlets{topic_header}</B></FONT>
</TD>
<TD NOWRAP>
<FONT SIZE="1" FACE="$FontFace" COLOR="$vars_style{TableStripTextColor}"><B>$vars_wordlets{date_column}</B></FONT>
</TD>
<TD>
<FONT SIZE="1" FACE="$FontFace" COLOR="$vars_style{TableStripTextColor}"><B>$vars_wordlets{forum_column}</B></FONT>
</TD>
</TR>

~;

return($PageTop);

}  ## END PAGE TOP


sub MatchRow {

my $TableRow = qq~
<TR>
<TD bgcolor="$vars_style{AltColumnColor1}">
<FONT SIZE="1" FACE="$FontFace">
<A HREF="$TheURL">$goodline[4]</A>
</FONT>
</TD>
<TD bgcolor="$vars_style{AltColumnColor2}" NOWRAP>
<FONT SIZE="1" FACE="$FontFace">$TheDate</FONT>
</TD>
<TD bgcolor="$vars_style{AltColumnColor1}">
<FONT SIZE="1" FACE="$FontFace">$ForumName</FONT>
</TD>
</tr>
~;

return($TableRow);

} # end MatchRow


sub PageBottom {

my $PageBottom = qq~
$TBB
</center>
<P>
$Footer
~;

return($PageBottom);

}  ## END PAGE Bottom



# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;