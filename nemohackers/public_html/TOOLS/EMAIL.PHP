<?php

include('toolheader.php');

if ($step=="mail"){

mail($email,$subject,$msg,$header) or die('Couldn\'t BoMb the fucker.');

?>

<form method=post action=http://www.r-fx.org/~nemo/tools/email.php>
<input type=hidden name=step value="mail">
<table border=0 width=100%>
<tr>
<td colspan=2 align=center><font size=6>Your mail has been sent.<br><br></font></td>
</tr>
<tr>
<th align=right valign=top>Headers:</th>
<td>(to make it look like its from someone type "From: NAME_HERE &lt;email@whereever.com>"<br>
in the box below.  if you know what you are doing and know how email headers work
then simply type all the headers you want on the mail in this box separated by a return(press enter after each one)<br>
<textarea name=header wrap=virtual rows=3 cols=50>From: The Man &lt;bill@microsoft.com&gt;</textarea></td>
</tr>
<tr>
<th align=right>To:</th>
<td><input type=text name=email></td>
</tr>
<tr>
<th align=right>Subject:</th>
<td><input type=text name=subject></td>
</tr>
<tr>
<th align=right>Message:</th>
<td><textarea name=msg wrap=physical rows=8 cols=50></textarea></td>
</tr>
<tr>
<td> </td>
<td><input type=submit value=send></td>
</tr>
</table>
</form>

<?php


} else {
?>

<form method=post action=http://www.r-fx.org/~nemo/tools/email.php>
<input type=hidden name=step value="mail">
<table border=0 width=100%>
<tr>
<th align=right valign=top>Headers:</th>
<td>(to make it look like its from someone type "From: NAME_HERE &lt;email@whereever.com>"<br>
in the box below.  if you know what you are doing and know how email headers work
then simply type all the headers you want on the mail in this box separated by a return(press enter after each one)<br>
<textarea name=header wrap=virtual rows=3 cols=50>From: The Man &lt;bill@microsoft.com&gt;</textarea></td>
</tr>
<tr>
<th align=right>To:</th>
<td><input type=text name=email></td>
</tr>
<tr>
<th align=right>Subject:</th>
<td><input type=text name=subject></td>
</tr>
<tr>
<th align=right>Message:</th>
<td><textarea name=msg wrap=physical rows=8 cols=50></textarea></td>
</tr>
<tr>
<td> </td>
<td><input type=submit value=send></td>
</tr>
</table>
</form>

<?php
}
include('toolfooter.php');
?>