
<html>
<head>
<title>Socket Wrench Port Scanner</title>
</head>
<body bgcolor="#F4F6FF" link="#2481FF">

<?php
if(!$step) {
$step = "1";
}

if($step == "1") {

?>
<center>
<form method="POST" action="socket.php">
<font face="Helvetica">
<h1>Socket Wrench: Port Scanner</h1>
<font face="Helvetica" size=2>
<table>
<tr>	
	<td><font face="Helvetica" size=2><b>Host address:</b></td>
	<td><input type="text" name="host" size="20"></td>
</tr>
<tr>
	<td><font face="Helvetica" size=2><b>Port range:</b></td>
	<td><b> <input type="text" name="i" size="5" value="1"> - <input type="text" name="port" size="5" value="1000">&nbsp; &nbsp; (1 - 1000)</td>
</tr>
<tr>
	<td><font face="Helvetica" size=2><b>Connection Timeout:</b></td>
	<td><input type="text" name="timeout" size="3" value="20"></td>
</tr>
<tr>
	<td>
	<input type="hidden" name="step" value="2">
	<input type="submit" value="scan"></td>
</tr>
</table></font>
</form>
</center>

<?
}

elseif($step == "2") {

function socket($host, $port, $timeout)  {
	for($i; $i<=$port; $i++)   {
 		$connect = fsockopen($host, $i, $errno, $errstr, $timeout);
 		if($connect) {
			echo("<center><b>Port <font color=red>$i</font> is open</b></center><br>");
			$j++;
		} else {
			$z++;
		}
	}
		
	echo("<br>Socket Wrench has now scanned from port <b>1</b> to <b>$port</b> on the host machine <b>$host</b>.<br>");
	echo("<center><table width=20%><tr><td><b>Open ports:</b></td><td>$j</td></tr>");
	echo("<tr><td><b>Closed ports:</b></td><td>$z</td></tr></table></center>");
	}
	
socket($host, $port, $timeout);

}

?>
</body>
</html>
			
		
		
			