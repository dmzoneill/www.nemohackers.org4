# THIS FILE DISPLAYS GUTS OF: Control Panel, Email Members Type

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow("$CurrentTab", "2", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("Filter Members", "2", "#cccccc", "#000000", "left", "2");


print<<search_options;

<TR bgColor="#FFFFFF">
<TD vAlign="top" width="200"><b><font size="1" FACE="Verdana, Arial">
$vars_wordlets{member_status}
</font></b></TD>
<TD> 
<select name="user_status">
<option selected value=''>No preference</option>
<option value="admin_mod">Administrators & Moderators Only</option>
<option value="admin">Administrators Only</option>
</select>
</TD>
</TR>

<TR bgcolor="#FFFFFF">
<TD WIDTH="200" VALIGN="TOP">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Number of Posts
</B></FONT></td>
<td>
<SELECT NAME="Math">
<OPTION VALUE="GT"> &gt;=
<OPTION VALUE="LT"> &lt;=
<OPTION VALUE="EQ"> ==
</SELECT>
<INPUT TYPE="TEXT" NAME="Posts" VALUE='' SIZE=3 MAXLENGTH=5>
</td></tr>

<TR bgcolor="#FFFFFF">
<TD WIDTH=200 valign="top"><FONT SIZE="1" FACE="Verdana, Arial"><B>
$vars_wordlets{user_number}</B>
<BR>Enter a range of member numbers.  For example, entering 4 and 150 will retrieve all members with member numbers between 4 and 150.  You must provide both a start and an end number.  Leave both fields blank if you do not wish to filter based on member number.
</FONT>
</td>
<td valign="top"><FONT SIZE="1" FACE="Verdana, Arial"><B>
Low Number: <INPUT TYPE="TEXT" NAME="user_number_start" VALUE='' SIZE="8" MAXLENGTH="8"><BR>
High Number: <INPUT TYPE="TEXT" NAME="user_number_end" VALUE='' SIZE="8" MAXLENGTH="8">
</B></FONT>
</td></tr>

search_options

if ($in{email_option} eq 'send_email') {

&HeaderRow("Compose Email", "2", "#cccccc", "#000000", "left", "2");

print<<search_options;

<TR bgcolor="#FFFFFF">
<TD WIDTH=200 valign="top"><FONT SIZE="1" FACE="Verdana, Arial"><B>
Return Email Address to Display</B>
</FONT>
</td>
<td valign="top">
<INPUT TYPE="TEXT" NAME="return_email" VALUE="$user_profile[2]" SIZE="35" MAXLENGTH="40">
</td></tr>

<TR bgcolor="#FFFFFF">
<TD WIDTH=200 valign="top"><FONT SIZE="1" FACE="Verdana, Arial"><B>
$vars_wordlets{subject_field}</B>
</FONT>
</td>
<td valign="top">
<INPUT TYPE="TEXT" NAME="subject" VALUE='' SIZE="35" MAXLENGTH="40">
</td></tr>

<TR bgcolor="#FFFFFF">
<TD WIDTH=200 valign="top"><FONT SIZE="1" FACE="Verdana, Arial"><B>
$vars_wordlets{message_field}</B>
<P>
You may use HTML, but if you do, make sure that you indicate that you are sending an HTML message below.
</FONT>
</td>
<td valign="top">
<TEXTAREA NAME="message" wrap="virtual" ROWS=16 COLS=35>
</TEXTAREA>
</td></tr>

<TR bgColor="#FFFFFF">
<TD vAlign="top" width="200"><b><font size="1" FACE="Verdana, Arial">
Type of Email
</font></b></TD>
<TD> 
<select name="email_type">
<option selected value='html'>HTML</option>
<option value="text">Text Only (ASCII)</option>
</select>
</TD>
</TR>

search_options

}  else {


&HeaderRow("List Type", "2", "#cccccc", "#000000", "left", "2");

print<<search_options;

<TR bgColor="#FFFFFF">
<TD vAlign="top" width="200"><b><font size="1" FACE="Verdana, Arial">
Type of List
</font></b></TD>
<TD> 
<select name="list_type">
<option selected value='lr'>Separate Email Addresses With Line Returns</option>
<option value="comma">Separate Email Addresses With Commas</option>
</select>
</TD>
</TR>

<TR bgColor="#FFFFFF">
<TD vAlign="top" width="200"><b><font size="1" FACE="Verdana, Arial">
How Would You Like to Receive the List?
</font></b></TD>
<TD> 
<select name="send_list">
<option selected value='email'>Send it to me by email.</option>
<option value="onscreen">Print it on a browser page.</option>
<option value="file">Create a file on this server.</option>
</select>
</TD>
</TR>
search_options


}

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