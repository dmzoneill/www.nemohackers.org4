# Login Screen for UBB Control Panel

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

if ($new_admin_wording ne '') {
print<<warning;
<center>
<table border=0 width="95%>
<TR><TD>
<FONT SIZE="2" FACE="Verdana, Arial"><B>
$new_admin_wording
</B>
</font>
</TD><TR>
</TABLE>
</center>
<P>
warning
}

&TBT;
&HeaderRow("$CurrentTab", "2", "#5d7790", "#FFFFFF", "center", "2");
&HeaderRow("To gain access to the UBB Control Panel, you must identify yourself as an administrator or moderator.", "2", "#c9c9c9", "#000000", "left", "2");

print<<Login_Body;
<tr bgcolor="#FFFFF">
<td><FONT SIZE="2" FACE="Verdana, Arial"><B>Username</B></FONT></td>
<td><INPUT TYPE="TEXT" NAME="username" SIZE=25 MAXLENGTH=40></td>
</tr>

<tr bgcolor="#FFFFF">
<td><FONT SIZE="2" FACE="Verdana, Arial"><B>Password</B></FONT></td>
<td><INPUT TYPE="PASSWORD" NAME="password" SIZE=25 MAXLENGTH=40></td>
</tr>
Login_Body

&TBB;
print<<page_bottom;
<center><P>
<INPUT TYPE="SUBMIT" NAME="SUBMIT" VALUE="Submit Identification Now">
<P>
</center>
</FORM>
<P>
page_bottom



# don't remove:
1;