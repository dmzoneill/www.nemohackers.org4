<?php

require('vars.php');

include('testheader.php');

$namecookie = $HTTP_COOKIE_VARS['namecookie'];

if (!$namecookie){
echo "You must <a href='http://www.r-fx.org/~nemo/phpBB/login.php'>log in</a> to take tests.";
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
<td><a href="http://www.r-fx.org/~nemo/test/test.php?test=<?php echo $test;?>"><?php echo $testname;?></a><br>Relevant links:<br>
<blockquote>
<?php
$rel = explode("|", stripslashes(rawurldecode(mysql_result($result,$i,5))));

if (count($rel)>1){

for ($r=0; $r<count($rel); $r++){
echo "<a href='$rel[$r]'>$rel[$r]</a><br>\n";
}

} elseif (count($rel)==1) {
echo "<a href='$rel[0]'>$rel[0]</a>";
} else {
echo "No, relevant links.";
}

?>
</blockquote></td>
</tr>
<?php

}

?>
</table>
<?php
include('testfooter.php');
?>