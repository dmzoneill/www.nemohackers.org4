<?php

$goodcookie = $HTTP_COOKIE_VARS['goodcookie'];

require("vars.php3");

if ($step=="auth"){

$userpass = "$username:$password";

      if ($userpass=="demo:nick"){      
      $cookiecontents = "yes";
      setcookie("goodcookie", $cookiecontents, time()+7*24*3600, "/", $cookie_domain);
      $goodcookie = "yes";
      }

}

if ($goodcookie){

require('vars.php3');

if (!$action){
$action = "intro";
}

if ($action=="intro"){

?><head>
<title>
Nemohackers HTML Emailer.
</title>
</head>
<body bgcolor="#FFFFFF">
<p align="center">Here you would either set up and edit your mailing list or<br>
  decide whether to mail the entire list or to an individual. </p>
<p align="center">CLick the &quot;edit Mailing List now and add your email.</p>
<p align="center">Then come back here and click &quot;mail individual then select<br>
  yourself from the drop down. (you'll see once you do it)<br>
  Don't worry, you can't hurt anything!! --Nick</p>
<div align="center">
  <table border=0>
    <tr> 
     <td align=center><a href=index.php?action=mailall>Mail Entire List</a></td>
      <td align=center><a href=index.php?action=mailone>Mail Individual</a></td>
      <td align=center><a href=editlist.php>Edit Mailing List</a></td>
    </tr>
  </table>
  <?php

} elseif ($action=="mailall"){

?>
</div>
<title> HTML email</title>
<table border=0 width=600 height="422">
  <tr>
    <td align=center height="276"> 
      <form action=mailall.php method=post>
        <table border=0 width=600>
          <tr align="center"> 
            <td width="185"><img src="temp1_thumb.jpg" width="250" height="258"></td>
            <td valign="middle" width="213"><img src="temp2_thumb.jpg" width="200" height="173" align="middle"></td>
            <td valign="middle" width="188"><img src="temp3_thumb.jpg" width="200" height="213"></td>
          </tr>
          <tr align="center"> 
            <td width="185"> 
              <input type="radio" name="template" value="temp1" checked>
            </td>
            <td valign="top" width="213"> 
              <input type="radio" name="template" value="temp2">
            </td>
            <td valign="top" width="188"> 
              <input type="radio" name="template" value="temp3">
            </td>
          </tr>
          <tr align="center"> 
            <td width="185" valign="top">Subject:</td>
            <td valign="top" colspan="2" align="left">
              <input type="text" name="subject" value="Your Subject here">
            </td>
          </tr>
          <tr align="center"> 
            <td width="185" valign="top">
              <div align="center">Message:<br>
             </div>
           </td>
            <td valign="top" colspan="2" align="left"> 
              <textarea name="message" cols="35" rows="7">Type your message here or cut and paste from your word processor.</textarea>
            </td>
          </tr>
          <tr align="center">
            <td width="185">
             <div align="center"> </div>
            </td>
            <td valign="top" colspan="2" align="left">
              <input type="submit" name="Submit" value="Send Mail">
              <input type="reset" name="Submit2" value="Clear Form">
            </td>
          </tr>
        </table>
</form>
</td>
</tr>
</table>
<?php

} elseif ($action=="mailone"){

      $db = mysql_connect($database_host_port, $database_uname, $database_pword) or die("couldnt connect to db");
      mysql_select_db($database,$db) or die("couldnt select db");
      $sql = "select * from habitat";
      $result = mysql_query($sql ,$db);
      $rows = mysql_num_rows($result);
//**************************
//**************************
?> 
<title> HTML email</title>
<table border=0 width=600 height="422">
  <tr>
    <td align=center height="276"> 
      <form action=mailone.php method=post>
        <table border=0 width=600>
         <tr align="center"> 
           <td width="185"><img src="temp1_thumb.jpg" width="250" height="258"></td>
            <td valign="middle" width="213"><img src="temp2_thumb.jpg" width="200" height="173"></td>
            <td valign="middle" width="188"><img src="temp3_thumb.jpg" width="200" height="213"></td>
          </tr>
          <tr align="center">
            <td width="185">
              <input type="radio" name="template" value="temp1" checked>
            </td>
            <td valign="top" width="213">
              <input type="radio" name="template" value="temp2">
            </td>
            <td valign="top" width="188"> 
             <input type="radio" name="template" value="temp3">
           </td>
          </tr>
          <tr align="center">
            <td width="185" valign="top">Recipient:</td>
            <td valign="top" colspan="2" align="left">
             <select name=who>
<?php
echo $rows;
if ($rows!=0 && $rows!="0"){

for ($i=0; $i<$rows; $i++){
$name = rawurldecode(mysql_result($result,$i,1));
$email = rawurldecode(mysql_result($result,$i,2));
echo "<option value=\"$email\">$name - $email</option>\n";
}

} else {
echo "<option>Sorry, No Emails in database</option>";
}

?>
             </select>
            </td>
          </tr>
          <tr align="center"> 
            <td width="185" valign="top">Subject:</td>
            <td valign="top" colspan="2" align="left">
              <input type="text" name="subject" value="Your Subject here">
            </td>
          </tr>
          <tr align="center">
            <td width="185" valign="top">
              <div align="center">Message:<br>
              </div>
            </td>
            <td valign="top" colspan="2" align="left">
              <textarea name="message" cols="35" rows="7">type your message here or cut and paste from your word processor</textarea>
            </td>
          </tr>
          <tr align="center">
            <td width="185">
              <div align="center"> </div>
            </td>
            <td valign="top" colspan="2" align="left">
              <input type="submit" name="Submit" value="Send Mail">
              <input type="reset" name="Submit2" value="Clear Form">
            </td>
          </tr>
        </table>
</form>
</td>
</tr>
</table>
<?php
//**************************
//**************************

}



} else {
?>
<table border=0>
          <tr>
            <td bgcolor="#CCCCCC">
              <form action=index.php method=post>
               username:
                <input type=text name=username>
                <br>
                password:
                <input type=password name=password>
                <br>
                <input type=hidden name=step value=auth>
                <input type=submit value=login name="submit">
              </form>
            </td>
          </tr>
          </table>
          <?php
}

?>