<?php

include('../header.php');

if(!$step) {

$step = "1";

}



if($step == "1") {

?>

<center>

<form method=post action="<?php echo $SCRIPT_NAME; ?>">

     <h4>This scanner will scan all common service ports, and then
          return a report, based on it's results. It will give you advice
          on your activated ports, and some dianostics.</h4>

	<font face=helvetica size=2>

	<table border=0 WIDTH=50%>

	   <tr>

	     <td><b>Host address:</b></td>

	     <td><input type=text size=20 name=host value="<?php echo $REMOTE_ADDR;?>"></td>

	   </tr>

	      <tr>

	      <td><input type=hidden name=step value=2>

	      <input type=submit value=scan!></td>

	   </tr>

	</table>

	</form>



	</center>





<?

} else if($step == "2") {

if(!$host) {

	echo("Duh! You must fill in all feilds.");

}



//arrays and crap

$decimals = 

array("21", "22", "23", "25", "79", "80", "107", "110", "139", "1080", "27374");



$service = 

array("FTP", "SSH", "Telnet", "SMTP", "Finger", "HTTP", "rTelnet", "pop3", "Netbios", "Socks", "Subseven");



require('alerts.php'); // has all of the of the fixes etc..



$alert = 

array("$ftp", "$ssh", "$telnet", "$smtp", "$finger", "$http", "$rtelnet", "$pop3", "$netbios", "$socks", "$subseven");



//timeout

$timeout = "30"; //30 secs

//loops

echo "<table border=0><tr><td>";

for($i=0; $i<=count($decimals); $i++){
  	echo $decimal[$i];
  	$fp = fsockopen($host, $decimals[$i]);

  	if($fp) {
        socket_set_timeout($fp, 2);
  		echo "$decimals[$i] - $service[$i] is <font color=red>activated</font><br>";
  		echo $alert[$i]; // echo the alert
  		fclose($fp);
  	}

}



echo "</td></tr></table>";



}

include('../footer.php');

?>

