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

$recipient = $who;

$contents = eregi_replace("<!--1-->",stripslashes($message), $buffer); 

$header = "From: Nemohackers.com <webmaster@nemohackers.com>\nContent-type: text/html";

mail($recipient, stripslashes($subject), $contents, $header);

echo "ok, sent.";

} else {
?> 
<p>Enter your username and password below:</p>
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