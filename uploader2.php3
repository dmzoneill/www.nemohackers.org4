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






     

<center>

Ok, please use the upload form to upload your banner.
The banners are shown randomly on the site, there is no favouritism lol :)..  <br><br>
I dont care if you upload porn or whatever, but im  not letting this feature get over 1 meg in size.
Anything more and ill just close the upload form.. <br>
<br>

And standard banner size people,, 480 *60 pixels only.. I'll delete them if they're outragously big!!
<br>



<!--------UPLOADER.PHP----------------->





<?php


require("setup2.php3");

if($doupload) {

if($ADMIN[RequirePass] == "Yes") {
if($password != "$ADMIN[Password]") {
echo("<P><CENTER><B><FONT FACE=\"Verdana\">Error</FONT></B></CENTER></P>

<P><CENTER><TABLE WIDTH=\"450\" BORDER=\"0\" CELLSPACING=\"0\"
CELLPADDING=\"0\">
  <TR>
    <TD WIDTH=\"100%\" BGCOLOR=\"#000000\">
    <TABLE WIDTH=\"450\" BORDER=\"0\" CELLSPACING=\"1\" CELLPADDING=\"2\">
      <TR>
        <TD COLSPAN=\"2\" BGCOLOR=\"#ffffff\">
        <FONT COLOR=\"#000000\" SIZE=\"-1\" FACE=\"Verdana\">Invalid Password</FONT></TD>
      </TR>
    </TABLE></TD>
  </TR>
</TABLE></CENTER></P>
<P><CENTER>&nbsp;</CENTER></P>
<P><CENTER>&nbsp;</CENTER></P>
</BODY>
</HTML>");
exit();
}
}

$num = 0;
while($num < $ADMIN[UploadNum]) {
$num++;


$picture = "fileup$num"."_name";
$picture1 = $$picture;
$picture2 = "fileup$num";
$picture3 = $$picture2;

if($picture3 != "none") {
$filesizebtyes = filesize($picture3);

$ok = 1;
if($filesizebtyes < 10) {
$error .= "Error uploading (file size lower than 10 bytes) for file $num<BR>";
$ok = 2;
}



if(file_exists("$ADMIN[directory]/$picture1") OR $ok == 2) {
$error .="File name already exists for file $num<BR>";
} else {
copy ($picture3, "$ADMIN[directory]/$picture1");
$error .="File $num has been uploaded.<br>";
}
}
}

if(!$error) {
$error .= "No files have been selected for upload";
}


echo("<P><CENTER><B><FONT FACE=\"Verdana\">Status</FONT></B></CENTER></P>

<P><CENTER><TABLE WIDTH=\"450\" BORDER=\"0\" CELLSPACING=\"0\"
CELLPADDING=\"0\">
  <TR>
    <TD WIDTH=\"100%\" BGCOLOR=\"#000000\">
    <TABLE WIDTH=\"450\" BORDER=\"0\" CELLSPACING=\"1\" CELLPADDING=\"2\">
      <TR>
        <TD COLSPAN=\"2\" BGCOLOR=\"#ffffff\">
        <FONT COLOR=\"#000000\" SIZE=\"-1\" FACE=\"Verdana\">$error</FONT></TD>
      </TR>
    </TABLE></TD>
  </TR>
</TABLE></CENTER></P>
<P><CENTER>&nbsp;</CENTER></P>
<P><CENTER>&nbsp;</CENTER></P>
</BODY>
</HTML>");
exit();

} else {

$num = 0;
while($num < $ADMIN[UploadNum]) {
$num++;
$html .= "<TR>
        <TD WIDTH=\"25%\" BGCOLOR=\"#295e85\">
        <FONT COLOR=\"#ffffff\" SIZE=\"-1\" FACE=\"Verdana\">File $num:</FONT></TD> 
        <TD WIDTH=\"75%\" BGCOLOR=\"#ffffff\">
        <INPUT NAME=\"fileup$num\" TYPE=\"file\" SIZE=\"25\" style=\"background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1\">
</TD> ";
}

if($ADMIN[RequirePass] == "Yes") {
$passhtml = "<P><CENTER><TABLE BORDER=\"0\" CELLSPACING=\"0\"  CELLPADDING=\"0\">
  <TR>
    <TD WIDTH=\"100%\" BGCOLOR=\"#000000\">
    <TABLE WIDTH=\"300\" BORDER=\"0\" CELLSPACING=\"1\" CELLPADDING=\"2\">
      <TR>
        <TD WIDTH=\"33%\" BGCOLOR=\"#295e85\">
        <B><FONT COLOR=\"#ffffff\" SIZE=\"-1\" FACE=\"Verdana\">Password:</FONT></B></TD> 
        <TD WIDTH=\"67%\" BGCOLOR=\"#ffffff\">
        <INPUT NAME=\"password\" TYPE=\"password\" SIZE=\"25\">
</TD> 
      </TR>
    </TABLE></TD>
  </TR>
</TABLE></CENTER></P>";
}

echo("<FORM ENCTYPE=\"multipart/form-data\" ACTION=\"uploader2.php3\" METHOD=\"POST\" style=\"background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1\">
<P><CENTER><B><FONT FACE=\"Verdana\">Upload</FONT></B></CENTER></P>

<P><CENTER><TABLE WIDTH=\"450\" BORDER=\"0\" CELLSPACING=\"0\" CELLPADDING=\"0\">
  <TR>
    <TD WIDTH=\"100%\" BGCOLOR=\"#000000\">
    <TABLE WIDTH=\"450\" BORDER=\"0\" CELLSPACING=\"1\" CELLPADDING=\"2\">
      <TR>
        <TD COLSPAN=\"2\" BGCOLOR=\"#295e85\">
        <B><FONT COLOR=\"#ffffff\" SIZE=\"-1\" FACE=\"Verdana\">Select Files</FONT></B></TD>
         
      </TR>$html
    </TABLE></TD>
  </TR>
</TABLE></CENTER></P>$passhtml<P><CENTER><INPUT NAME=\"doupload\" TYPE=\"submit\" VALUE=\"Upload Files\" style=\"background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1\"></CENTER></FORM>
<P><CENTER>&nbsp;</CENTER></P>
<P><CENTER>&nbsp;</CENTER></P>
</CENTER>
</BODY>
</HTML>");
exit();
}


php?>

<!------END---------UPLOADER.PHP----------------->

</center>
</td></tr></table>







</TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE>

</TD></TR></TABLE></TD></TR></TABLE>

<TABLE BGCOLOR=#000000 BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=750 HEIGHT=2>

<TR BGCOLOR="#024070" HEIGHT=2><TD BGCOLOR="#024070" HEIGHT=2></TD></TR></TABLE>

    <?php require('footer.php'); ?>

<BR>

