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

<TABLE BGCOLOR="#000000" BORDER="0" CELLPADDING="0" CELLSPACING="1" WIDTH="100%">

<TR BGCOLOR="#000000">

<TD BGCOLOR="#000000">

<TABLE BGCOLOR="#024070" BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="*">
<TR>
<TD WIDTH=3><IMG SRC="./images/tleftblue1agif.gif" BORDER=0></TD>
<TD BGCOLOR="#024070" WIDTH="754">
<CENTER><B>Write an Tutorial Online!</B></CENTER></TD>
<TD WIDTH=3><IMG SRC="./images/trightblue1agif.gif" BORDER=0></TD>
</TR>
</TABLE>

</TD>

</TR>

<TR BGCOLOR=#24252f>

<TD>

<TABLE BORDER=0 CELLPADDING=4 CELLSPACING=0 WIDTH="100%">

<TR CLASS=small><TD BGCOLOR="#1C1F22">


<!-- MAIN CONTENT -->

<BR>
<CENTER>
<!--------UPLOADER.PHP----------------->





<?php
if(!$m) {
    $m = "form";
}
if($m == "form") {
     ?>
    <div align=justify> <font size=2>
Now you can write txt files online, and they will automatically appear
in the <b>nemohackers</b> archive.
<center>
<form method=post action="<?php echo $SCRIPT_NAME; ?>">
<table border=0>
<tr><td bgcolor="#004284">
<table border=0>
<tr><td><font size=1><b>Filename (Include the extension):</b></font></td>
<td><input type=text name=filename value=.txt size=10></td>
</tr>
</table>
<table>
<td><center><textarea name=contents cols=60 rows=8>Contents here.</textarea></center></td>
</tr>
</table>
</td>
</tr>
<tr><td><input type=hidden name=m value=1><input type=submit value="Done!"></td></tr>
</table>
</form>
</center>
</div>
   <?
}

else if($m==1) {
    if(file_exists("arch/$filename")){
        echo "<h4>Please choose a different filename, that one exists</h4>";
    } else {
    echo "<form method=post action=\"$SCRIPT_NAME?m=2\">";
    echo "<h3>Please review your txt before it is uploaded...</h3>";
    echo "<table with=80%>
    <tr><td bgcolor=\"#004284\">$contents</tr></td>
    <tr><td><br>Called: <b>$filename</b></td></tr>
    </table>
    ";
    $filename = addslashes($filename);
    $contents = addslashes($contents);

    echo "<input type=hidden name=filename value=$filename>";
    echo "<input type=hidden name=contents value=\"$contents\">";
    echo "<input type=submit value=\"It's good\">";
    echo "</form>";
}
}
else if($m==2){
    $open = "arch/$filename";
    $fp = fopen($open, "w");
    fwrite($fp, $contents);
    fclose($fp);
    echo "<h4>You text: <a href=/archive.php?p=$filename>$filename</a> has been written.</h4>";
    echo "<h4>Thank you</h4>";
}
?>





</TD>

</TR>
</TABLE>













































    <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="*">
<TR>
<TD WIDTH=3><IMG SRC="./images/bleftdgrey1agif.gif" BORDER=0></TD>
<TD WIDTH="754" BGCOLOR="1C1F22">
<TD WIDTH=3><IMG SRC="./images/brightdgrey1agif.gif" BORDER=0></TD>
</TR>
</TABLE>

</TD>

</TR>
</TABLE>






</TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE>

</TD></TR></TABLE></TD></TR></TABLE>

<TABLE BGCOLOR=#000000 BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=750 HEIGHT=2>

<TR BGCOLOR="#024070" HEIGHT=2><TD BGCOLOR="#024070" HEIGHT=2></TD></TR></TABLE>

    <?php require('footer.php'); ?>

<BR>

