<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<HTML>
<HEAD>
<TITLE>[ nemo hackers ]</TITLE>
<?php require('meta.php'); ?>
<?php require('header.php'); ?>


<!--start the individual page-->






<TABLE BGCOLOR="#000000" BORDER="0" CELLPADDING="5" CELLSPACING="0" WIDTH="750"><TR>

<TD BGCOLOR="#000000" VALIGN="top" WIDTH="160">
<!-- corners -->

<TABLE BGCOLOR="#024070" BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="160">

<TR BGCOLOR=""><TD>
<TABLE BGCOLOR="#024070" BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="160">
<TR>
<TD WIDTH=3><IMG SRC="./images/tleftblue1agif.gif" BORDER=0></TD>
<TD BGCOLOR="#024070" WIDTH="154">
<CENTER><CENTER><b>Menu</b></CENTER></CENTER></TD>
<TD WIDTH=3><IMG SRC="./images/trightblue1agif.gif" BORDER=0></TD>
</TR>
</TABLE>
</TR>



<TR BGCOLOR="#1c1f22">

<TD WIDTH="160" BGCOLOR="#1c1f22" CELLPADDING="2">

<TABLE BORDER="0" CELLPADDING="4" CELLSPACING="0" WIDTH="100%">

<TR CLASS="small">

<TD BGCOLOR="#1C1F22" HEIGHT="426" VALIGN="top">

<CENTER>

    <?php require('menu.php'); ?>

</CENTER>











</TD></TR></TABLE>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="*">
<TR>
<TD WIDTH=3><IMG SRC="./images/bleftdgrey1agif.gif" BORDER=0></TD>
<TD WIDTH="754" BGCOLOR="1C1F22">
<TD WIDTH=3><IMG SRC="./images/brightdgrey1agif.gif" BORDER=0></TD>
</TR>
</TABLE>

</TD></TR></TABLE></TD>

<!------------eend left column--------------->

<!------------rright column--------------->

<TD BGCOLOR="#000000" VALIGN="top">

<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="100%">

<TR VALIGN="top"><TD BGCOLOR="#000000">

<!------------------11111111111111111111111111------------------>
<!------------------11111111111111111111111111------------------>











<TABLE BGCOLOR=#1c1f22 BORDER=0 CELLPADDING=0 CELLSPACING=1 WIDTH="100%">

<TR BGCOLOR=#515468><TD BGCOLOR="#024070">

<TABLE BGCOLOR="#024070" BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="*">
<TR>
<TD WIDTH=3><IMG SRC="./images/tleftblue1agif.gif" BORDER=0></TD>
<TD BGCOLOR="#024070" WIDTH="754">
<CENTER><B>Viewing : 

<?php 

echo rawurlencode('$test');


?>


</B></CENTER></TD>
<TD WIDTH=3><IMG SRC="./images/trightblue1agif.gif" BORDER=0></TD>
</TR>
</TABLE>

</TD></TR>

<TR BGCOLOR=#24252f>

<TD>

<TABLE BORDER=0 CELLPADDING=4 CELLSPACING=0 WIDTH="100%">

<TR CLASS=small><TD BGCOLOR="#1C1F22">






     
<div align = justify>Welcome to the texts archive... You can upload to this archive <a href=upload.php>here.</a></div><br>



 <?php

$test = substr("$p",0,1);

if (!ereg("../", $p) && substr($p,0,1)!="/"){

$x = "./arch/";

$x .= $p;

$fp = fopen($x, "r") or die("couldnt open file");



$len = filesize($x);



$contentsbefore = fread($fp, $len) or die("couldnt read file");



fclose($fp);



$temp = explode(".", $p);



if (eregi("txt", $temp[count($temp)-1])){

echo nl2br(ereg_replace("<", "&lt;", $contentsbefore));

} else {

echo $contentsbefore;

}





} else {



echo "Don't try to open files you shouldn't.";



}





?>

</center>
</td></tr></table>



    <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="*">
<TR>
<TD WIDTH=3><IMG SRC="./images/bleftdgrey1agif.gif" BORDER=0></TD>
<TD WIDTH="754" BGCOLOR="1C1F22">
<TD WIDTH=3><IMG SRC="./images/brightdgrey1agif.gif" BORDER=0></TD>
</TR>
</TABLE>




</TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE>

</TD></TR></TABLE></TD></TR></TABLE>

<TABLE BGCOLOR=#000000 BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=750 HEIGHT=2>

<TR BGCOLOR="#024070" HEIGHT=2><TD BGCOLOR="#024070" HEIGHT=2></TD></TR></TABLE>

    <?php require('footer.php'); ?>

<BR>

