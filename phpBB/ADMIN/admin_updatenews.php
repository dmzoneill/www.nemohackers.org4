<?php

include('../extention.inc');
include('../functions.'.$phpEx);
include('../config.'.$phpEx);
require('../auth.'.$phpEx);

if($login) {
   if ($username == '') {
      die("You have to enter your username. Go back and do so.");
   }
   if ($password == '') {
      die("You have to enter your password. Go back and do so.");
   }
   if (!check_username($username, $db)) {
      die("Invalid username \"$username\". Go back and try again.");
   }
   if (!check_user_pw($username, $password, $db)) {
      die("Invalid password. Go back and try again.");
   }

   $userdata = get_userdata($username, $db);
   $sessid = new_session($userdata[user_id], $REMOTE_ADDR, $sesscookietime, $db);
   set_session_cookie($sessid, $sesscookietime, $sesscookiename, $cookiepath, $cookiedomain, $cookiesecure);

   if (defined('USE_IIS_LOGIN_HACK') && USE_IIS_LOGIN_HACK)
	{
		echo "<META HTTP-EQUIV=\"refresh\" content=\"1;URL=$url_admin_index\">";
	}
	else
	{
		header("Location: $url_admin_index");
	}

}
else if(!$user_logged_in) {
   $pagetitle = "Forum Administration";
   $pagetype = "admin";
   include('../page_header.'.$phpEx);

?>
     <TABLE BORDER="0" CELLPADDING="1" CELLSPACING="0" ALIGN="CENTER" VALIGN="TOP" WIDTH="<?php echo $TableWidth?>">
     <TR><TD  BGCOLOR="<?php echo $table_bgcolor?>">
     <TABLE BORDER="0" CELLPADDING="1" CELLSPACING="1" WIDTH="100%">
     <TR BGCOLOR="<?php echo $color1?>" ALIGN="LEFT">
     <TD><P><BR><FONT FACE="<?php echo $FontFace?>" SIZE="<? echo $FontSize2?>" COLOR="<?php echo $textcolor?>">
     Please enter your username and password to login.<BR>
     <i>(NOTE: You MUST have cookies enabled in order to login to the administration section of this forum)</i><BR>
     <FORM ACTION="<?php echo $PHP_SELF?>" METHOD="POST">
     <table>
     <tr>
       <td><b>User Name: </b></td>
       <td><INPUT TYPE="TEXT" NAME="username" SIZE="25" MAXLENGTH="40" VALUE="<?php echo $userdata[username]?>"></td>
     </tr><tr>
       <td><b>Password: </b></td>
       <td><INPUT TYPE="PASSWORD" NAME="password" SIZE="25" MAXLENGTH="25"><br></td>
     </tr><tr>
       <td>&nbsp;</td>
       <td><INPUT TYPE="SUBMIT" NAME="login" VALUE="Submit"></td>
     </tr>
     </table>
     </FORM>
     </TD></TR></TABLE></TD></TR></TABLE>
<?php
     include('../page_tail.'.$phpEx);
     exit();
}
else if($user_logged_in && $userdata[user_level] == 4) {

$pagetitle = "Forum Administration";
$pagetype = "admin";
include('../page_header.'.$phpEx);

if($mode) {

}
else {
?>

<TABLE ALIGN="CENTER" WIDTH="<?php echo $TableWidth?>">
<FORM action="nwsfrm.php" method="POST">
<br>News Message :<br> <INPUT name="Headline" size="50"><br>
<INPUT type="submit" value="Submit"> <INPUT type="reset" value="Reset">
</FONT></P>
</TABLE>

<?php
}
}
else {
   $pagetype = "admin";
   $pagetitle = "Access Denied!";

   include('../page_header.'.$phpEx);
?>
     <TABLE BORDER="0" CELLPADDING="1" CELLSPACING="0" ALIGN="CENTER" VALIGN="TOP" WIDTH="<?php echo $TableWidth?>">
     <TR><TD  BGCOLOR="<?php echo $table_bgcolor?>">
     <TABLE BORDER="0" CELLPADDING="1" CELLSPACING="1" WIDTH="100%">
     <TR BGCOLOR="<?php echo $color1?>" ALIGN="center" VALIGN="TOP">
     <TD><FONT FACE="<?php echo $FontFace?>" SIZE="<? echo $FontSize2?>" COLOR="<?php echo $textcolor?>">
     <B>You do not have acess to this area!</b><BR>
     Go <a href="<?php echo $url_phpbb_index?>">Back</a>
     </TD></TR></TABLE></TD></TR></TABLE>
<?php
}
include('../page_tail.'.$phpEx);
?>
