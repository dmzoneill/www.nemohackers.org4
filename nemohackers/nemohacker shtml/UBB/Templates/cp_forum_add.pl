
print<<this_body;
<FORM ACTION="$vars_config{CGIURL}/cp.cgi" METHOD="POST" NAME="THEFORM">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="do_add_forum">

<!-- table border top-->
<center>
<table border="0" cellpadding="1" cellspacing="1" width="95%">
<tr bgcolor="#5d7790"><td>	 
<table border="0" width="100%" cellpadding="3" cellspacing="0">

<TR bgcolor="#5d7790">
<TD colspan="2">
<FONT SIZE="2" FACE="Verdana, Arial" color="#FFFFFF">
<B>
Add New Forum
</B>
</FONT>
</TD>
</TR>

<TR bgcolor="#FFFFFF">
<TD>
<FONT SIZE="1" FACE="Verdana, Arial"><B>Name:</B></FONT></td>
<td>
<INPUT TYPE="TEXT" NAME="Namer" VALUE="Forum Name Here" SIZE="30" MAXLENGTH="100">
</td></tr>

<tr bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Category:
</B></FONT></td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial">
$CategoryDropDown &nbsp;<A HREF="$vars_config{CGIURL}/cp.cgi?ubb=cats">Add new category?</A>
</FONT>
</td></tr>


<tr bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Style Template To Use:
</B></FONT></td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial">
$StyleDropDown &nbsp;<A HREF="$vars_config{CGIURL}/cp.cgi?ubb=add_style_template">Add new style template?</A>
</FONT>
</td></tr>

<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Forum Status:
</B></FONT></td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
<INPUT TYPE="RADIO" NAME="Status" VALUE="On" CHECKED> On &nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="Status" VALUE="Off"> Off
</B></FONT></td></tr>

<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
HTML Allowed?
</B></FONT></td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
<INPUT TYPE="RADIO" NAME="HTML" VALUE="is"> Yes &nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="HTML" VALUE="is not" CHECKED> No
</B></FONT></td></tr>

<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
UBB Code Allowed?
</B></FONT></td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
<INPUT TYPE="RADIO" NAME="UBB" VALUE="is" CHECKED> Yes &nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="UBB" VALUE="is not"> No
</B></FONT></td></tr>

<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
UBB Code Images Allowed?
</B></FONT></td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
<INPUT TYPE="RADIO" NAME="UBBImages" VALUE="ON" CHECKED> Yes &nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="UBBImages" VALUE="OFF"> No
</B></FONT></td></tr>

<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Moderator Notification?
<BR></B><FONT SIZE="1">If yes, an email will be sent to the moderator every time someone posts a note to the forum (not recommended!)</FONT></FONT></td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
<INPUT TYPE="RADIO" NAME="ModNotify" VALUE="yes"> Yes &nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="ModNotify" VALUE="no" CHECKED> No
</B></FONT></td></tr>



<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Sort Topics By Date or Alphabetically By Subject?
<BR></B><FONT SIZE="1">The default is to sort by date, but for forums that serve as archives you may want to display your the topics alphabetically.</FONT></FONT></td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
<INPUT TYPE="RADIO" NAME="forum_sort" VALUE="date" CHECKED> Sort By Date &nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="forum_sort" VALUE="abc"> Sort Alphabetically
</B></FONT></td></tr>

<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Short Forum Description:
</B><BR>
This is displayed on your the intro page that summarizes all forums when users visit.  Be sure to set Forum Descriptions "on" in the General Variables section, if you want your visitors to see this description.
</font></td>
<td valign="top">
<TEXTAREA NAME="Description" ROWS="4" COLS="35" wrap="VIRTUAL"></TEXTAREA>
</td></tr>


<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Forum Introduction/Announcement:
</B><BR>
This is displayed above the topic listings for this forum.  It is your way to communicate important information concerning this particular forum to the forum visitors.  Leave this field blank if you do not wish to display an announcement. <B>Note: this text is stored as HTML! </B>
</font></td>
<td valign="top">
<TEXTAREA NAME="announcement" ROWS="8" COLS="40" wrap="VIRTUAL"></TEXTAREA>
</td></tr>

<TR bgcolor="#c9c9c9">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Access Limits</B><BR>
You may make the forum completely private- which means that only admins, moderators and those that you grant permission to view (using the User Permissions area in this control panel) may view and post notes in the forum.  
<P>
If you do not need to make the forum completely private, you may still restrict posting permissions in various ways. 
<P>
You may assign a forum password to use for accessing this forum, if it is private.  This method is NOT recommended, but if you would like to use forum passwords, assign the password below:
<P>
<B>$vars_wordlets{forum_pw}</B><BR>
<INPUT TYPE="TEXT" NAME="forum_pw" value="" SIZE="20" MAXLENGTH="30">
<P>
When a password if assigned to a private forum, any user who knows the password can gain access to the private forum.
</FONT></td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
<CENTER>
Completely Private - Read/Write
</CENTER>
<P>
<INPUT TYPE="CHECKBOX" NAME="Private" VALUE="private">
Restrict Viewing and Writing of Posts To Admins, Moderators and other authorized<FONT color="#800000" FACE="Verdana, Arial">*</FONT> users
<P>
<HR>
<BR>
<CENTER>Posting Restrictions (With Viewing of Posts Open to All)</CENTER>
<P>
If forum is not completely private, you can determine which users can post topics and replies within the forum.
<P>
Who Can Post Topics?
<BR>
<SELECT NAME="TopicRestrict">
<option value="restrict">Only admins, moderators and authorized users
<option value="allreg" SELECTED>Any registered users
<option value="all">Any users (including unregistered)
<option value="none">No one can post topics
</SELECT>
<P>

Who Can Post Replies?
<BR>
<SELECT NAME="ReplyRestrict">
<option value="restrict">Only admins, moderators and authorized users 
<option value="allreg" SELECTED>Any registered users
<option value="all">Any users (including unregistered)
<option value="none">No one can post replies
</SELECT>

</B></FONT>
<P>
<FONT color="#800000" size="1" FACE="Verdana, Arial">* An authorized user is someone who is not an administrator or moderator who has either been given specific authority to use a private forum or otherwise-restricted forum.  Administrators can give this permission to a user by specifically assigning the permission to the user in the control panel section entitled "View/Modify Member Profiles".</FONT>
</td></tr>

<!-- table border bottom -->
</table></td></tr></table>
<P>
<INPUT TYPE="SUBMIT" NAME="submit" VALUE="Add New Forum">

<P>
</center>
</FORM>
<P>
</center>
this_body

1;
