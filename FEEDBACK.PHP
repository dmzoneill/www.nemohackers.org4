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
<CENTER><B>Feedback</B></CENTER></TD>
<TD WIDTH=3><IMG SRC="./images/trightblue1agif.gif" BORDER=0></TD>
</TR>
</TABLE>

</TD>

</TR>

<TR BGCOLOR=#24252f>

<TD>

<TABLE BORDER=0 CELLPADDING=4 CELLSPACING=0 WIDTH="100%">

<TR CLASS=small><TD BGCOLOR="#1C1F22">

<?php
if(!$m) {
    $m=1;
}

if($m==1){
    ?>

<FORM method="POST" ACTION="feedback.php?m=2">
<table width=80%>
<tr>
<td width=30%>
<font size="2" color="white">Your Name:
</td>
<td >
<input type=text name=name size=10 style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1">
</td>
</tr>
<tr>
<td width=30%>
<font size="2" color="white">Your Email:
</td>
<td>
<input type=text name=email size=20 style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1">
</td>
</tr>
<tr>
<td width=30%>
<font size="2" color="white">Type of Feedback:
</td>
<td>
<select name="type" style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1">
<option value="error/bug">Error/Bug</option>
<option value="suggestion">Suggestion</option>
<option value="general">General</option>
</select>
</td>
</tr>
<tr>
<td width=30% valign=top>
<font size="2" color="white">Your Message:
</td>
<td>
<textarea rows=15 cols=40 wrap="off" name="message" style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1"></textarea>
</td>
</tr>
</table>
<input type=submit value=Send style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1">
</form>
<?
} else if($m==2){
    $subject = "You have feedback from $name";
    $headers = "From: $email";
    $address = "webmaster@nemohackers.com";
    $msg = "Feedback from nemohackers\n";
    $msg .= "From: $name - $email\n";
    $msg .= "Type: $type\n";
    $msg .= "Message:\n";
    $msg .= "$message\n";

    if((!$name) || (!$email) || (!$message)) {
        die("please go back and enter all feilds");
    } else {
        mail($address, $subject, $msg, $headers);
        echo "Thank you, $name for your feedback!";
    }
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

</TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE>

</TD></TR></TABLE></TD></TR></TABLE>

<TABLE BGCOLOR=#000000 BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=750 HEIGHT=2>

<TR BGCOLOR="#024070" HEIGHT=2><TD BGCOLOR="#024070" HEIGHT=2></TD></TR></TABLE>

    <?php require('footer.php'); ?>

<BR>

