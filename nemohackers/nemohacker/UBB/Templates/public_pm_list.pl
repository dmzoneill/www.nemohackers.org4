# UBB PM List Page - for ignore & buddy lists

$MainButtonsLine = &MainButtonOptions;

# standard top of HTML page
print "$Header";

print<<ListGuts;
<CENTER>
$standard_title_table
</CENTER>

<P>

<FORM ACTION="$vars_config{CGIURL}/ultimatebb.cgi" METHOD="POST">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="update_$_[0]">
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
<a href="$vars_config{CGIURL}/ultimatebb.cgi">$vars_config{BBName}</a> &raquo; <A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=my_profile">$vars_wordlets{my_profile_header}</A> &#187; $this_list $vars_wordlets{list}
</B></font>
</TD>
</TR>

$TBB

<P>
<center>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD align="left">
<FONT size="2" face="$vars_style{FontFace}">$list_explained</FONT>
</TD></TR></TABLE>
</center>

$TBT

<tr bgcolor="$vars_style{TableColorStrip}">
<td colspan="3">
<b><FONT size="$vars_style{TextSize}" FACE="$vars_style{FontFace}" color="$vars_style{TableStripTextColor}">
$this_list $vars_wordlets{list}
</font></b>
</td>
</tr>

<TR bgcolor="$vars_style{CategoryStripColor}">
<TD>&nbsp;</TD>
<TD>
<FONT color="$vars_style{CategoryStripTextColor}" size="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>
$vars_wordlets{public_name_field}
</B></FONT>
</TD>
<TD>
<FONT color="$vars_style{CategoryStripTextColor}" size="$vars_style{TextSize}" face="$vars_style{FontFace}"><B>
$vars_wordlets{user_number}
</B></FONT>
</TD>
</tr>
ListGuts

foreach $key(@pm_list) {
if (-e "$vars_config{MembersPath}/$key.cgi") {
$count++;
$this_name = &get_public_name($key);
if ($_[0] eq 'buddy') {
$this_name .= qq~&nbsp;&nbsp;
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi?ubb=private_message&u=$key" target=_new><IMG SRC="$vars_config{NonCGIURL}/$vars_style{priv_message}" BORDER='0' ALT="$vars_wordlets{send_private_message}"></A>
~;
}

print<<list_row;
<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="top">
<INPUT TYPE="CHECKBOX" NAME="$key" VALUE="include" CHECKED>
</td>
<td valign="top">
<FONT size="1" FACE="$vars_style{FontFace}">
$this_name
</FONT>
</td>
<td valign="top">
<FONT size="1" FACE="$vars_style{FontFace}">
$key
</FONT>
</td>
</tr>
list_row
}
}

if ($count == 0) {
print<<list_row;
<tr bgcolor="$vars_style{AltColumnColor1}">
<td valign="bottom" colspan="3">
<FONT size="1" FACE="$vars_style{FontFace}">
$vars_wordlets{no_one_on_list}
</FONT>
</td>
</tr>
list_row
} else {
print<<list_row;
<tr bgcolor="$vars_style{AltColumnColor1}">
<td align="center" valign="bottom" colspan="3">
<input type="submit" name="submit" value="$vars_wordlets{update} $this_list $vars_wordlets{list}">
</td>
</tr>
list_row

}

print<<ListBottom;
$TBB
<P>
</FORM>

ListBottom

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