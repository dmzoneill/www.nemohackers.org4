# Delete Forum Confirmation Page

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT;

print<<delete_forum;
<TR bgcolor="#5d7790">
<TD colspan="2">
<FONT SIZE="2" FACE="Verdana, Arial" color="#FFFFFF">
<B>
Delete Forum: $thisforum[1]
</B>
</FONT>
</TD>
</TR>

<TR bgcolor="#FFFFFF">
<TD colspan="2">
<FONT SIZE="2" FACE="Verdana, Arial"><B>
Are you positive that you want to delete this forum and all of its contents?  
<P>
Note that you once you delete this forum, ALL posts in this forum will be immediately erased!!
<P>
<center>
<INPUT TYPE="SUBMIT" NAME="submit" VALUE="Yes, Delete Forum Now">
</center>
</B></FONT></td>
</tr>
delete_forum

&TBB;

print<<delete_bottom;
<P>
</FORM>
<P>
<CENTER>
<FORM ACTION="$vars_config{CGIURL}/cp.cgi" METHOD="POST" NAME="THEFORM">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="vars_forums">
<INPUT TYPE="SUBMIT" NAME="submit" VALUE="No: I don't want to delete it after all!">
</FORM>
<P>
</CENTER>
delete_bottom


# don't remove:
1;
