<?php

include('toolheader.php');

if(!$foo) {
$foo = "choose"; 
}

if($foo == "choose") {
?>
<table><form method=post action="<?php echo $SCRIPT_NAME; ?>">
<tr><td><input type="radio" name="type" value="Resolve Host" checked>Resolve Host</td></tr>
<tr><td><input type="radio" name="type" value="Resolve IP">Resolve IP</td></tr>
<tr><td>Address:
<input type="text" name="address" size="20" maxlength="30" value="<?php echo $REMOTE_ADDR; ?>">
</td></tr>
<tr><td><input type=submit value=resolve></td></tr>
</table>
<input type=hidden name=foo value=do>
</form>

<?
}

else if($foo == "do") {
	if($type == "Resolve Host") {
	$new = gethostbyaddr($address);
	echo("<h2>$new    ==    $address</h2>");
	}
	else if($type == "Resolve IP") {
	$new = gethostbyname($address);
	echo("<h2>$new    ==    $address</h2>");
	}
	else if(!$type) {
	die("complete all feilds");
	}
}


include('toolfooter.php');	