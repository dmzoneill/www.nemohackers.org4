<?php

if(!$foo) {
$foo = "choose"; 
}

if($foo == "choose") {
?>
	<a href="resolve.php?foo=gethostbyaddr">Resolve IP from host address</a>
	<a href="resolve.php?foo=getipbyhost">Resolve host from IP</a>
<?
}

else if($foo == "gethostbyaddr") {
?>
	<form action="hostip.php" method="POST">
	Host address: <input type="text" name="host">
	<input type=hidden name=foo value=dohost>
	<input type=submit value=resolve>
	</form>
<?
}

else if($foo == "dohost") {
	$resolve = gethostbyname($host);
	echo("<h2>$host    ==    $resolve</h2>");
}

else if($foo == "getipbyhost") {
?>
	<form action="hostip.php" method="POST">
	IP address: <input type="text" name="ip">
	<input type=hidden name=foo value=doip>
	<input type=submit value=resolve>
	</form>
<?
}

else if($foo == "doip") {
	$resolve = gethostbyaddr($ip);
	echo("<h2>$ip    ==    $resolve</h2>");
}
	