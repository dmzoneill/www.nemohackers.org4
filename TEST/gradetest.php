 <!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">

<HTML>

<HEAD>

<TITLE>[ nemo hackers ]</TITLE>

<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1" CHARSET="iso-8859-1">

<META NAME="keywords" CONTENT=

"newbie, newbies, newbiesplace, newbiezplace, learn to hack, how to hack, how do i hack,hack hotmail, hacking hotmail, hack yahoo, hacking yahoo, hacking tools, hacking programs, hacking site, newby, newbeisplace, newbeizplace,">

<META NAME="description" CONTENT="NewbiezPlace.com - Where newbies come to learn the art of hacking. This site is a vast resource for hacking methodology and toolz">

<META NAME="robots" CONTENT="FOLLOW,INDEX">





    <?php require('../header.php'); ?>





<TABLE BGCOLOR="#000000" BORDER="0" CELLPADDING="5" CELLSPACING="0" WIDTH="750"><TR>

<TD BGCOLOR="#000000" VALIGN="top" WIDTH="160">

<TABLE BGCOLOR="#1c1f22" BORDER="0" CELLPADDING="2" CELLSPACING="1" WIDTH="160">

<TR BGCOLOR="#515468"><TD BGCOLOR="#024070" WIDTH="160">

<CENTER><CENTER CLASS="small_uppercase"><b>Menu</b></CENTER></CENTER>

</TD></TR>

<TR BGCOLOR="#1c1f22">

<TD WIDTH="160" BGCOLOR="#1c1f22" CELLPADDING="2">

<TABLE BORDER="0" CELLPADDING="4" CELLSPACING="0" WIDTH="100%">

<TR CLASS="small">

<TD BGCOLOR="#1C1F22" HEIGHT="426" VALIGN="top">

<CENTER>

    <?php require('../menu.php'); ?>

</CENTER>









</TD></TR></TABLE></TD></TR></TABLE>







</TD>







<!------------end left column--------------->















<!------------right column--------------->







<TD BGCOLOR=#000000 VALIGN=top>



<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH="100%">



<TR VALIGN=top><TD BGCOLOR="#000000">



















<!------------------11111111111111111111111111------------------>























<TABLE BGCOLOR=#1c1f22 BORDER=0 CELLPADDING=0 CELLSPACING=1 WIDTH="100%">



<TR BGCOLOR=#515468><TD BGCOLOR="#024070">



<b><center>Disclaimer</center></b>





</TD></TR>



<TR BGCOLOR=#24252f>



<TD>



<TABLE BORDER=0 CELLPADDING=4 CELLSPACING=0 WIDTH="100%">



<TR CLASS=small><TD BGCOLOR="#1C1F22">











<CENTER>     

				



<br>



<font face="Tahoma, Verdana, Arial" size="-1">





<?php





require('vars.php');





$namecookie = $HTTP_COOKIE_VARS['namecookie'];





if (!$namecookie){

echo "You must <a href='../phpBB/login.php'>log in</a> to take tests.";



} else {

$testname = $test;



/*****************************************

include('testheader.php');

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

      $result = mysql_query($sql ,$db) or die("couldnt query db1");





      $sql = "select points from u_points where user = '$namecookie'";

      $result = mysql_query($sql ,$db) or die("couldnt query db2");





$points = mysql_result($result,0,0);





      $sql = "select level from points where points like '% $points %'";

      $result = mysql_query($sql ,$db) or die("couldnt query db3");





$newlevel = mysql_result($result,0,0);





      $sql = "update users set user_rank = '$newlevel' where username = '$namecookie'";

      $result = mysql_query($sql ,$db) or die("couldnt query db4");





      $sql = "select who from tests where testtab = '$test'";

      $result = mysql_query($sql ,$db) or die("couldnt query db5");

$newwho = "þ$namecookie";

      $sql = "update tests set who = who+'$newwho' where testtab = '$test'";

echo $sql;

      $result = mysql_query($sql ,$db) or die("couldnt query db6");





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



}



?>

</table>



</TD>



</TR>

</TABLE>















</TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE>



</TD></TR></TABLE></TD></TR></TABLE>



<TABLE BGCOLOR=#000000 BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=750 HEIGHT=2>



<TR BGCOLOR="#024070" HEIGHT=2><TD BGCOLOR="#024070" HEIGHT=2></TD></TR></TABLE>



    <?php require('../footer.php'); ?>



<BR>



