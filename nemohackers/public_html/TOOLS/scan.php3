<?php

if(!$step) {
$step = "1";
}

if($step == "1") {
?>
	<form method=post action=scan.php3>
	<font face=helvetica size=2>
	<table border=1>
	   <tr>
	     <th><b>Socket Wrench<b></th>
	   </tr>
	   <tr>
	     <td><b>Host address:</b></td>
	     <td><input type=text size=20 name=host value=<?php echo getenv("REMOTE_ADDR"); ?>"></td>
	   </tr>
	   <tr>
	     <td><b>Scan Range:</b></td>
	     <td><input type=text size=5 name=final value=100></td>
	   </tr>
	    <tr>
	      <td><input type=hidden name=step value=2>
	      <input type=submit value=scan!></td>
	   </tr>
	</table>
	</form>
	<p><br><b><samp>Copyright <a href="http://www.nemohackers.com">Nemohackers.com 2001</a></samp></b></p>


<?
} else if($step == "2") {
if(!$host || !$final) {
	echo("Duh! You must fill in all feilds.");
}
echo "<h1>Scanning $host ......</h1>";

  for($i=0; $i<$final; $i++) {
    	$connect = fsockopen($host, $i, $errno, $errstr, 30);
		if($connect) {
		echo "<table><tr><td><strong>Port $i is open!</strong></td></tr></table>";
		$total++;
	}
}
	
	$closed = $final - $total;
	echo "<br>Finished Scanning.<br><b>$total</b> ports were open. <b>$closed</b> were not.";
	if($total<5) {
		echo "<br>$host seems pretty secure.";
	} else if($total>5) {
		echo "<br>$host is average. Could need a decent admin";
	} else if($total>10) {
		echo "<br>$host is very unsecure!!";
	}

}
?>
