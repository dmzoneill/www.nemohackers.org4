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



<b><center>Test</center></b>





</TD></TR>



<TR BGCOLOR=#24252f>



<TD>



<TABLE BORDER=0 CELLPADDING=4 CELLSPACING=0 WIDTH="100%">



<TR CLASS=small><TD BGCOLOR="#1C1F22">











<CENTER>     

				



<br>



<font face="Tahoma, Verdana, Arial" size="-1">

<H4>Make sure you fill in an answer for all questions. If not expect errors</H4>





<?php





require('vars.php');





$namecookie = $HTTP_COOKIE_VARS['namecookie'];





if (!$namecookie){

echo "You must <a href='../phpBB/login.php'>log in</a> to take tests.";

} else {





$db = mysql_connect($database_host_port, $database_uname, $database_pword) or die("couldnt connect to db");

      mysql_select_db($database,$db) or die("couldnt select db");

      $sql = "select * from tests where testtab = '$test'";

      $result2 = mysql_query($sql ,$db) or die("couldnt query db2");

      $sql = "select * from $test";

      $result = mysql_query($sql ,$db) or die("couldnt query db");

      $rows = mysql_num_rows($result);









$points = mysql_result($result2,0,4);





$testname = stripslashes(rawurldecode(mysql_result($result2,0,1)));

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

<form method=post action=gradetest.php>

<input type=hidden name=test value="<?php echo $test;?>">

<table border=0>

<tr>

<td colspan=2><font face=arial>Test: <?php echo $testname;?><br>This test is worth <?php echo $points;?> points.</td>

</tr>

<?php





for ($i=0; $i<10; $i++){





$t_array = explode("|", $data[$i]);





$qnum = rawurldecode($t_array[0]);

$question = rawurldecode($t_array[1]);





?>

<tr>

<td width=30 valign=top><font color=red>#<?php echo $i+1;?>.</font></td>

<td><font face=arial><b><?php echo stripslashes(rawurldecode(rawurldecode($question)));?></b><br>

<input type=radio value="<?php echo $qnum;?>|a1" name="q<?php echo $qnum;?>" checked> - <?php echo stripslashes(rawurldecode(rawurldecode($t_array[2])));?><br>

<input type=radio value="<?php echo $qnum;?>|a2" name="q<?php echo $qnum;?>"> - <?php echo stripslashes(rawurldecode(rawurldecode($t_array[3])));?><br>

<input type=radio value="<?php echo $qnum;?>|a3" name="q<?php echo $qnum;?>"> - <?php echo stripslashes(rawurldecode(rawurldecode($t_array[4])));?><br>

<input type=radio value="<?php echo $qnum;?>|a4" name="q<?php echo $qnum;?>"> - <?php echo stripslashes(rawurldecode(rawurldecode($t_array[5])));?><br><hr>

</font></td>

</tr>

<?php









}





?>

<tr>

<script language="javascript">

function really(){

if (confirm("Are you sure that you have filled out all questions? If not expect errors")) {

return true;

} else {

return false;

}

}

</script>

<td colspan=2><input type=submit value="I'm done with the test" onclick="really()"></td>

</tr>

</table></form>



<?php



}



?>



</TD>



</TR>

</TABLE>















</TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE>



</TD></TR></TABLE></TD></TR></TABLE>



<TABLE BGCOLOR=#000000 BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=750 HEIGHT=2>



<TR BGCOLOR="#024070" HEIGHT=2><TD BGCOLOR="#024070" HEIGHT=2></TD></TR></TABLE>



    <?php require('../footer.php'); ?>



<BR>



