<?php

require('vars.php');

$namecookie = $HTTP_COOKIE_VARS['namecookie'];

if (!$namecookie){
echo "You must <a href='../phpBB/login.php'>log in</a> to take tests.";
exit;
}
$testname = $test;
/*****************************************
function in_array($needle,$haystack) {
$found = false;
for($ptr=0;$ptr<count($haystack);$ptr++) {
$temp = explode("|", $haystack[$ptr]);
if($temp[0] == $needle) {
$found = true;
}
}
return $found;
}
*****************************************/


$sql = "select auto, qkey from $test where ";

reset ($HTTP_POST_VARS);

while (list ($key, $val) = each ($HTTP_POST_VARS)) {

if ($key!="test"){
$temp = explode("|", $val);
$sql .= "auto = '$temp[0]' or ";
}

}

$sql .= "auto = '20000'";


$db = mysql_connect($database_host_port, $database_uname, $database_pword) or die("couldnt connect to db");
      mysql_select_db($database,$db) or die("couldnt select db");

      $result = mysql_query($sql ,$db) or die("couldnt query db");
      $rows = mysql_num_rows($result);


reset ($HTTP_POST_VARS);

$test = array("test");

$i=1;
while (list ($key, $val) = each ($HTTP_POST_VARS)) {
$test[$i] = "$val";
$i++;
}




?>
<table border=0>
<?php
$r = 0;
for ($i=0; $i<10; $i++){
$qnum = mysql_result($result,$i,0);
$qkey = rawurldecode(mysql_result($result,$i,1));
$compare = "$qnum|$qkey";

if (in_array($compare, $test)){

$r++;

} else {


}


}




if ($r>0){
$percentage = 10*$r;
} else {
$percentage = 0;
}
$wrong = 10-$r;

?>
<tr>
<td><font face=arial>Score: <?php echo $percentage;?>% right<br>
<?php echo $r;?> right<br>
<?php echo $wrong;?> wrong</font></td>
</tr>


<?php

if ($r==10){
$test = $testname;
      $sql = "select who from tests where testtab = '$test'";
      $result = mysql_query($sql ,$db) or die("couldnt query db");

$compare = stripslashes(mysql_result($result,0,0));

$compare = explode("þ", $compare);
if (!in_array($namecookie, $compare)){

      $sql = "select points from tests where testtab = '$test'";
      $result = mysql_query($sql ,$db) or die("couldnt query db");

if (mysql_result($result,0,0)>0){
$points = mysql_result($result,0,0);
} else {
$points = 0;
}

      $sql = "update u_points set points = points+$points where user = '$namecookie'";
      $result = mysql_query($sql ,$db) or die("couldnt query db");

      $sql = "select points from u_points where user = '$namecookie'";
      $result = mysql_query($sql ,$db) or die("couldnt query db");

$points = mysql_result($result,0,0);

      $sql = "select level from points where points like '% $points %'";
      $result = mysql_query($sql ,$db) or die("couldnt query db");

$newlevel = mysql_result($result,0,0);

      $sql = "update users set user_rank = '$newlevel' where username = '$namecookie'";
      $result = mysql_query($sql ,$db) or die("couldnt query db");

      $sql = "select who from tests where testtab = '$test'";
      $result = mysql_query($sql ,$db) or die("couldnt query db");
$newwho = stripslashes(mysql_result($result,0,0))."þ$namecookie";
      $sql = "update tests set who = '$newwho' where testtab = '$test'";
      $result = mysql_query($sql ,$db) or die("couldnt query db");

?>
<tr>
<td><font face=arial>Good job, <?php echo $namecookie;?>.  You have passed the test and have earned more points and possible a new Rank on the board.</font></td>
</tr>
<?php

} else {

?>
<tr>
<td><font face=arial>Sorry, although you have passed you have already taken this test and will not recieve points for it.</font></td>
</tr>
<?php

}

} else {

?>
<tr>
<td><font face=arial>Sorry, you didn't make 100% so you failed.</font></td>
</tr>
<?php


}

?>
</table>