<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<HTML>
<HEAD>
<TITLE>[ nemo hackers ]</TITLE>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=iso-8859-1" CHARSET="iso-8859-1">
<META NAME="keywords" CONTENT=
"newbie, newbies, newbiesplace, newbiezplace, learn to hack, how to hack, how do i hack,hack hotmail, hacking hotmail, hack yahoo, hacking yahoo, hacking tools, hacking programs, hacking site, newby, newbeisplace, newbeizplace,">
<META NAME="description" CONTENT="NewbiezPlace.com - Where newbies come to learn the art of hacking. This site is a vast resource for hacking methodology and toolz">
<META NAME="robots" CONTENT="FOLLOW,INDEX">


    <?php require('header.php'); ?>


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
    <?php require('menu.php'); ?>
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

<CENTER><b>Upload</b></CENTER>

</TD></TR>

<TR BGCOLOR=#24252f>

<TD>

<TABLE BORDER=0 CELLPADDING=4 CELLSPACING=0 WIDTH="100%">

<TR CLASS=small><TD BGCOLOR="#1C1F22">






     
<div align = justify>Please upload any texts you have to our <a href=archive.php>archive</a>. We 
would prefer *.txt but we're not too fussy.</div><br>

<center>

<?php

if(!$mode) {
$mode = "form";
}

if($mode == "form") {
?>

<form method="post" action="<?php echo $SCRIPT_NAME; ?>" enctype="multipart/form-data"> 
<input name="userfile[]" type="file"> 
<input name="userfile[]" type="file"> 
<input name="userfile[]" type="file"> 
<input name="userfile[]" type="file"> 
<input name="userfile[]" type="file"> 
<input name="userfile[]" type="file"> <br>
<br>
<input type=hidden name=mode value=upload>
<input type="submit" value="Upload!!!"></form> 

<?
}

else if($mode == "upload") {

for($i=0;$i<sizeof($userfile);$i++) 
    { 
    if(!$userfile_size[$i]) 
    continue; 
    
    $UPLOAD = fopen( $userfile[$i], "r" ); 
    $contents = fread( $UPLOAD,$userfile_size[$i]);
    fclose( $UPLOAD );
    $SAVEFILE = fopen( "arch//".$userfile_name[$i], "wb" ); 
    fwrite( $SAVEFILE, $contents,$userfile_size[$i] );
    fclose( $SAVEFILE );
    } 
    echo "Upload!"; 
    
}

?>
</center>
</td></tr></table>







</TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE>

</TD></TR></TABLE></TD></TR></TABLE>

<TABLE BGCOLOR=#000000 BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=750 HEIGHT=2>

<TR BGCOLOR="#024070" HEIGHT=2><TD BGCOLOR="#024070" HEIGHT=2></TD></TR></TABLE>

    <?php require('footer.php'); ?>

<BR>

