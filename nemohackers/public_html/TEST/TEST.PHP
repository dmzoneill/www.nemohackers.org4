<?php

require('vars.php');

$namecookie = $HTTP_COOKIE_VARS['namecookie'];

if (!$namecookie){
echo "You must <a href='../phpBB/login.php'>log in</a> to take tests.";
exit;
}

include('testheader.php');

$db = mysql_connect($database_host_port, $database_uname, $database_pword) or die("couldnt connect to db");
      mysql_select_db($database,$db) or die("couldnt select db");
      $sql = "select * from $test";
      $result = mysql_query($sql ,$db) or die("couldnt query db");
      $rows = mysql_num_rows($result);


for ($i=0; $i<$rows; $i++){
$t1 = rawurlencode(mysql_result($result,$i,0));
$t2 = rawurlencode(mysql_result($result,$i,1));
$t3 = rawurlencode(mysql_result($result,$i,2));
$t4 = rawurlencode(mysql_result($result,$i,3));
$t5 = rawurlencode(mysql_result($result,$i,4));
$t6 = rawurlencode(mysql_result($result,$i,5));
$t7 = rawurlencode(mysql_result($result,$i,6));
$temp = "$t1|$t2|$t3|$t4|$t5|$t6|$t7";

if ($i==0){
$data = array("$temp");
} else {
$data[$i] = $temp;
}

}

$c = count($data); 
for ($i=0; $i<$c; $i++) { 
if ($i!=0){
$d = mt_rand(0, $i); 
} else {
$d = 1;
}
$tmp = $data[$i]; 
$data[$i] = $data[$d]; 
$data[$d] = $tmp; 
} 


?>
<form method=post action=http://www.r-fx.org/~nemo/test/gradetest.php>
<input type=hidden name=test value="<?php echo $test;?>">
<table border=0>
<?php

for ($i=0; $i<10; $i++){

$t_array = explode("|", $data[$i]);

$qnum = rawurldecode($t_array[0]);
$question = rawurldecode($t_array[1]);

?>
<tr>
<td width=30>#<?php echo $i+1;?>.</td>
<td><?php echo rawurldecode(rawurldecode($question));?><br>
<input type=radio value="<?php echo $qnum;?>|a1" name="q<?php echo $qnum;?>"> - <?php echo rawurldecode(rawurldecode($t_array[2]));?><br>
<input type=radio value="<?php echo $qnum;?>|a2" name="q<?php echo $qnum;?>"> - <?php echo rawurldecode(rawurldecode($t_array[3]));?><br>
<input type=radio value="<?php echo $qnum;?>|a3" name="q<?php echo $qnum;?>"> - <?php echo rawurldecode(rawurldecode($t_array[4]));?><br>
<input type=radio value="<?php echo $qnum;?>|a4" name="q<?php echo $qnum;?>"> - <?php echo rawurldecode(rawurldecode($t_array[5]));?><br><hr>
</td>
</tr>
<?php


}

?>
<tr>
<td colspan=2><input type=submit value="I'm done with the test"></td>
</tr>
</table></form>

<?php
include('testfooter.php');
?>