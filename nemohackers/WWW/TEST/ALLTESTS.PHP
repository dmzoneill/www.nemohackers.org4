<?php

require('vars.php');

$namecookie = $HTTP_COOKIE_VARS['namecookie'];

if (!$namecookie){
echo "You must <a href='../phpBB/login.php'>log in</a> to take tests.";
exit;
}

$db = mysql_connect($database_host_port, $database_uname, $database_pword) or die("couldnt connect to db");
      mysql_select_db($database,$db) or die("couldnt select db");
      $sql = "select * from tests";
      $result = mysql_query($sql ,$db) or die("couldnt query db");
      $rows = mysql_num_rows($result);


?>
<table border=0>
<?php

for ($i=0;$i<$rows;$i++){

$test = mysql_result($result,$i,2);
$testname = stripslashes(rawurldecode(mysql_result($result,$i,1)));
?>
<tr>
<td><a href="test.php?test=<?php echo $test;?>"><?php echo $testname;?></a></td>
</tr>
<?php

}

?>
</table>
<?php

?>