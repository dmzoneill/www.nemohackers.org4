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
<CENTER><B>Upload txt files</B></CENTER></TD>
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


require("setup.php3");

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
        <INPUT NAME=\"password\" TYPE=\"password\" SIZE=\"25\" style=\"background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1\">
</TD>
      </TR>
    </TABLE></TD>
  </TR>
</TABLE></CENTER></P>";
}

echo("<FORM ENCTYPE=\"multipart/form-data\" ACTION=\"uploader.php3\" METHOD=\"POST\" style=\"background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1\">
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

