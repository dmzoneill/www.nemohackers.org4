# UBB SEARCH PAGE

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<SearchGuts;

<CENTER>
$standard_title_table
</CENTER>

<P>

<FORM ACTION="ultimatebb.cgi" METHOD="POST">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="do_search">

<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD align="right">
<FONT size="1" face="$vars_style{FontFace}">
&#187; <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=get_daily">$vars_wordlets{active_topics}</A>
&#171;
</FONT>
</TD></TR></TABLE>

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
<a href="$vars_config{CGIURL}/ultimatebb.cgi">$vars_config{BBName}</a> &raquo; $vars_wordlets{search_options}
</B></font>
</TD>
</TR>

$TBB

<P>


$TBT

<tr bgcolor="$vars_style{TableColorStrip}">
<td colspan="2">
<b><FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}">
$vars_wordlets{search_options}
</font></b>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="top">
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{search_words}</B>:
</font>
</td>
<td valign="top">
<FONT size="1" FACE="$vars_style{FontFace}">
<input type="text" name="search_words" size="35" maxlength="35">
<BR>
<input type="radio" name="match_all" value="yes"CHECKED>  $vars_wordlets{search_match_all_words}<BR>
<input type="radio" name="match_all" value="no"> $vars_wordlets{search_match_any_words}<P>
$vars_wordlets{search_separate_wording}
</FONT>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="top">
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{search_forum}</B>:
</font>
</td>
<td valign="top">
<select name="search_forum">
$forum_list
</select>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="top">
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{search_in}</B>:
</font>
</td>
<td valign="top">
<SELECT NAME="search_in">
	<OPTION VALUE="ALL">$vars_wordlets{search_entire_message}
	<OPTION VALUE="SUBJECT">$vars_wordlets{search_subject}
</SELECT>
</td>
</tr>

<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="top">
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{search_by_date}</B>:
</font>
</td>
<td valign="top">
<SELECT NAME="search_date">
	<OPTION value="ALL">$vars_wordlets{search_any_date}
	<OPTION VALUE="1">$vars_wordlets{search_since_yesterday}
	<OPTION VALUE="5">$vars_wordlets{search_since_5_days_ago}
	<OPTION VALUE="10">$vars_wordlets{search_since_10_days_ago}
	<OPTION VALUE="30">$vars_wordlets{search_since_30_days_ago}
</SELECT>
</td>
</tr>


<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="top">
<FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$vars_wordlets{search_by_user}</B>:
</font>
</td>
<td valign="top">
<FONT size="1" FACE="$vars_style{FontFace}"><b>
<input type="text" name="search_user" size="8" maxlength="8"> &laquo; $vars_wordlets{user_number}</b>
</FONT>
</td>
</tr>


$TBB

<P>

<div align="center">
<input type="submit" name="submit" value="$vars_wordlets{search}">
</div>
</FORM>

SearchGuts

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