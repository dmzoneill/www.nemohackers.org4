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

      $db = mysql_connect($database_host_port, $database_uname, $database_pword) or die("couldnt connect to db");
      mysql_select_db($database,$db) or die("couldnt select db");

if (!$action || $action=="intro"){

      $sql = "select * from habitat";
      $result = mysql_query($sql ,$db);
      $rows = mysql_num_rows($result);

echo "<table border=0><tr><td><a href=editlist.php?>Refresh</a> - <a href=index.php>Back to Mailing Pages</a><br><br>
<a href=editlist.php?action=add>Add New Account</a></td></tr>";

for ($i=0; $i<$rows; $i++){
$name = rawurldecode(mysql_result($result,$i,1)); 
$email = rawurldecode(mysql_result($result,$i,2)); 
?>
<tr>
<td><br><?php echo $email;?> - <?php echo $name;?><br>
<a href=editlist.php?action=edit&index=<?php echo mysql_result($result,$i,0);?>>Edit This Account</a> - <a href=editlist.php?action=drop&index=<?php echo mysql_result($result,$i,0);?>>Drop Record</a></td>
</tr>
<?php

}
echo "</table>";

} elseif ($action=="edit"){
      $sql = "select * from habitat where auto = '$index'";
      $result = mysql_query($sql ,$db);

?>
<form method=post action=editlist.php><input type=hidden name=action value=editsave><input type=hidden name=index value="<?php echo $index;?>">
Name:<br>
<input type=text name=name value="<?php echo ereg_replace('"',"&quot;",rawurldecode(mysql_result($result,0,1)));?>"><br>
Email:<br>
<input type=text name=email value="<?php echo rawurldecode(mysql_result($result,0,2));?>"><br>
<input type=submit value="Save Changes">
</form>
<?php

} elseif ($action=="add"){

?>
<form method=post action=editlist.php><input type=hidden name=action value=addsave>
Name:<br>
<input type=text name=name><br>
Email:<br>
<input type=text name=email><br>
<input type=submit value="Save">
</form>
<?php

} elseif ($action=="editsave"){

$name2 = rawurlencode(ereg_replace('"', "&quot;", stripslashes($name)));

      $sql = "update habitat set realname = '$name2', email = '$email' where auto = '$index'";
      $result = mysql_query($sql ,$db);

?>
Record <?php echo $index;?> updated.<br>
Email is now '<?php echo $email;?>' and name is now '<?php echo $name;?>'<br>
<?php
$action = "intro";
include("editlist.php");
exit;
} elseif ($action=="addsave"){

$name2 = rawurlencode(ereg_replace('"', "&quot;", stripslashes($name)));

      $sql = "insert into habitat (auto, realname, email) values ('', '$name2', '$email')";
      $result = mysql_query($sql ,$db);

?>
Record Added.<br>
Record Name '<?php echo $name;?>', Record Email '<?php echo $email;?>'<br>
<?php
$action = "intro";
include("editlist.php");
exit;

} elseif ($action=="drop"){
?>
Are you sure you really want to drop this record?<br>
<a href=editlist.php?action=reallydrop&index=<?php echo $index;?>>Yes</a> - <a href="javascript:history.go(-1)">No</a>
<?php
} elseif ($action=="reallydrop"){

      $sql = "delete from habitat where auto = '$index'";
      $result = mysql_query($sql ,$db);

echo "Record Deleted.<br>";
$action = "intro";
include("editlist.php");
exit;

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