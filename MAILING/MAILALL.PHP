<?php

$goodcookie = $HTTP_COOKIE_VARS['goodcookie'];

if ($step=="auth"){

$userpass = "$username:$password";

      if ($userpass=="demo:nick"){      
      $cookiecontents = "yes";
      setcookie("goodcookie", $cookiecontents, time()+7*24*3600, "/", $cookie_domain);
      $goodcookie = "yes";
      }

}

if ($goodcookie){

require('vars.php');

$url = "$template.htm";

$handle = fopen($url, "r");
$buffer;
while (!feof($handle)) { 
$buffer.=fread($handle,10000); 
} 
fclose($handle);

      $db = mysql_connect($database_host_port, $database_uname, $database_pword) or die("couldnt connect to db");
      mysql_select_db($database,$db) or die("couldnt select db");
      $sql = "select * from habitat";
      $result = mysql_query($sql ,$db);
      $rows = mysql_num_rows($result);

$recipient = "xavic_doute@hotmail.com";

for ($i=0; $i<$rows; $i++){
$recipient .= ", ".rawurldecode(mysql_result($result,$i,2));
}

$contents = eregi_replace("<!--1-->",stripslashes($message), $buffer); 

$header = "From: Nemohackers.com <webmaster@nemohackers.com>\nContent-type: text/html";

mail($recipient, stripslashes($subject), $contents, $header);

echo "ok, sent.";

} else {
?> 
<p>Enter your User Name and password below:</p>
<p>&nbsp; </p>
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