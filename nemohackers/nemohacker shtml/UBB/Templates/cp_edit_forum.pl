
&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT;

print<<forum_form;
<TR bgcolor="#FFFFFF">
<TD colspan="2" align="left">
<B>
<FONT SIZE="1" FACE="Verdana, Arial">
<INPUT TYPE="CHECKBOX" NAME="delete_forum" VALUE="yes">&nbsp;&nbsp; Delete Entire Forum?
<BR>
Warning: By checking this box, you will delete the entire contents of this forum, including ALL posts.
</FONT>
</B>
</TD>
</TR>


<TR bgcolor="#5d7790">
<TD colspan="2">
<FONT SIZE="2" FACE="Verdana, Arial" color="#FFFFFF">
<B>
Forum Name
</B>
</FONT>
</TD>
</TR>

<TR bgcolor="#FFFFFF">
<TD>
<FONT SIZE="1" FACE="Verdana, Arial"><B>Name:</B></FONT></td>
<td>
<INPUT TYPE="TEXT" NAME="Namer" SIZE="30" MAXLENGTH="100" VALUE="$thisforum[1]">
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
<INPUT TYPE="RADIO" NAME="Status" VALUE="On" $status_on> On &nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="Status" VALUE="Off" $status_off> Off
</B></FONT></td></tr>

<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
HTML Allowed?
</B></FONT></td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
<INPUT TYPE="RADIO" NAME="HTML" VALUE="is" $html_on> Yes &nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="HTML" VALUE="is not" $html_off> No
</B></FONT></td></tr>

<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
UBB Code Allowed?
</B></FONT></td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
<INPUT TYPE="RADIO" NAME="UBB" VALUE="is" $ubb_code_on> Yes &nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="UBB" VALUE="is not" $ubb_code_off> No
</B></FONT></td></tr>

<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
UBB Code Images Allowed?
</B></FONT></td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
<INPUT TYPE="RADIO" NAME="UBBImages" VALUE="ON" $images_on> Yes &nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="UBBImages" VALUE="OFF" $images_off> No
</B></FONT></td></tr>

<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Moderator Notification?
<BR></B><FONT SIZE="1">If yes, an email will be sent to the moderator every time someone posts a note to the forum (not recommended!)</FONT></FONT></td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
<INPUT TYPE="RADIO" NAME="ModNotify" VALUE="yes" $mod_notify_on> Yes &nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="ModNotify" VALUE="no" $mod_notify_off> No
</B></FONT></td></tr>


<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Sort Topics By Date or Alphabetically By Subject?
<BR></B><FONT SIZE="1">The default is to sort by date, but for forums that serve as archives you may want to display your the topics alphabetically.</FONT></FONT></td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
<INPUT TYPE="RADIO" NAME="forum_sort" VALUE="date" $forum_sort_date> Sort By Date &nbsp;&nbsp;&nbsp;&nbsp;
<INPUT TYPE="RADIO" NAME="forum_sort" VALUE="abc" $forum_sort_abc> Sort Alphabetically
</B></FONT></td></tr>


<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Short Forum Description:
</B><BR>
This is a short description displayed on your intro page that summarizes all forums when users visit.  Be sure to set Forum Descriptions "on" in the General Variables section, if you want your visitors to see this description.
</font></td>
<td valign="top">
<TEXTAREA NAME="Description" ROWS="4" COLS="35" wrap="VIRTUAL">$thisforum[2]</TEXTAREA>
</td></tr>


<TR bgcolor="#FFFFFF">
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
Forum Introduction/Announcement:
</B><BR>
This is displayed above the topic listings for this forum.  It is your way to communicate important information concerning this particular forum to the forum visitors.  Leave this field blank if you do not wish to display an announcement. <B>Note: this text is stored as HTML! </B>
</font></td>
<td valign="top">
<TEXTAREA NAME="announcement" ROWS="8" COLS="40" wrap="VIRTUAL">$thisforum[16]</TEXTAREA>
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
<INPUT TYPE="TEXT" NAME="forum_pw" value="$thisforum[12]" SIZE="20" MAXLENGTH="30">
<P>
When a password if assigned to a private forum, any user who knows the password can gain access to the private forum.
</FONT>
</td>
<td valign="top">
<FONT SIZE="1" FACE="Verdana, Arial"><B>
<CENTER>
Completely Private - Read/Write
</CENTER>
<P>
<INPUT TYPE="CHECKBOX" NAME="Private" VALUE="private" $private_checked>
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
<option value="restrict" $topic_restrict_select>Only admins, moderators and authorized users
<option value="allreg" $topic_allreg_select>Any registered users
<option value="all" $topic_all_select>Any users (including unregistered)
<option value="none" $topic_none_select>No one can post topics
</SELECT>
<P>

Who Can Post Replies?
<BR>
<SELECT NAME="ReplyRestrict">
<option value="restrict" $reply_restrict_select>Only admins, moderators and authorized users 
<option value="allreg" $reply_allreg_select>Any registered users
<option value="all" $reply_all_select>Any users (including unregistered)
<option value="none" $reply_none_select>No one can post replies
</SELECT>

</B>
</FONT>
<P>
<FONT color="#800000" size="1" FACE="Verdana, Arial">* An authorized user is someone who is not an administrator or moderator who has either been given specific authority to use a private or otherwise-restricted forum.  Administrators can give this permission to a user by specifically assigning the permission to the user in the "Members" control panel section entitled "View/Modify Member Records".</FONT>
</td></tr>
forum_form

&TBB;

print<<forum_bottom;
<P><center>
<INPUT TYPE="SUBMIT" NAME="submit" VALUE="Update Forum Settings">
<P></center>
</FORM>
<P>
forum_bottom


# don't remove this:
1;
