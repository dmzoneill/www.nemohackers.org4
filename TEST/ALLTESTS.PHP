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



<b><center>Nemo Tests</center></b>





</TD></TR>



<TR BGCOLOR=#24252f>



<TD>



<TABLE BORDER=0 CELLPADDING=4 CELLSPACING=0 WIDTH="100%">



<TR CLASS=small><TD BGCOLOR="#1C1F22">











<CENTER>     

				



<br>



<font face="Tahoma, Verdana, Arial" size="-1">



Now we can't stop you cheating here. But what is the point of taking these tests if you do?<br><br>

All these tests a worth a certain amount of 'points', based on there difficulty. <br>The points you gain then

add up to a title (ie, <b>Tested lvl2</b>) on the <a href="http://forum.nemohackers.com">board</a>.<br><br>



<font face="Tahoma, Verdana, Arial" size="-1">

<?php





require('vars.php');

$namecookie = $HTTP_COOKIE_VARS['namecookie'];



if (!$namecookie){

echo "You must <a href='../phpBB/login.php'>log in</a> to take tests.";

} else {







$db = mysql_connect($database_host_port, $database_uname, $database_pword) or die("couldnt connect to db");

      mysql_select_db($database,$db) or die("couldnt select db");

      $sql = "select * from tests";

      $result = mysql_query($sql ,$db) or die("couldnt query db");

      $rows = mysql_num_rows($result);









?>

<table border=0>   <font face="Tahoma, Verdana, Arial" size="-1">

<?php





for ($i=0;$i<$rows;$i++){





$test = mysql_result($result,$i,2);

$testname = stripslashes(rawurldecode(mysql_result($result,$i,1)));

?>

<tr>

<td><b><font color=white face=Tahoma, Verdana, Arial size=-1>-</b>&nbsp;<a href="test.php?test=<?php echo $test;?>"><?php echo $testname;?></a><br>Relevant links:

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



}



?>







</td>



  <TD WIDTH="15"><!-- Margin --></TD>



</tr></table>





</TD>



</TR>

</TABLE>















</TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE>



</TD></TR></TABLE></TD></TR></TABLE>



<TABLE BGCOLOR=#000000 BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=750 HEIGHT=2>



<TR BGCOLOR="#024070" HEIGHT=2><TD BGCOLOR="#024070" HEIGHT=2></TD></TR></TABLE>



    <?php require('../footer.php'); ?>



<BR>



