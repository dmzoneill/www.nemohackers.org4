<?php

//mysql vars
$db_host = "64.156.139.240";
$db_user = "supersane";
$db_pass = "1419";
$db_name = "supersane";
$table_name = "usrs";

//connect to the db + select the db
$db = mysql_connect($db_host, $db_user, $db_pass) or die("unable to connect to db");
mysql_select_db($db_name, $db) or die("couldn't select db");



//insert new IP and HOST into database
	$ip = $REMOTE_ADDR;
	$host = $HOST_ADDR;
	$now = date("YmdHis");
	$sql = "INSERT INTO usrs (IP, HOST, when1) VALUES ('$ip', '$host', '$now')";
	mysql_query($sql, $db) or die("couldnt query db");
	

//get last 10 visits

	$sql = "select ip from $table_name order by when1 DESC LIMIT 0, 10";
	$result = mysql_query($sql, $db);
	
	//if less than 10 results were returned then
	//set $howmany equal to however many results
	//were returned
	if (mysql_num_rows($result)<10){
	$howmany = mysql_num_rows($result);
	} else {
	$howmany = 10;
	}
	
	
	echo "<form><textarea cols=15 rows=10 scrolling=no style='font-size: 8pt; font-face: arial'>";
	//display $howmany results

	$if = "\n";
	for($i=0; $i<$howmany; $i++) {
		$res = mysql_result($result, $i, 0);
		if ($i==9){
		$if = "";
		}
		echo "$res$if";
	}
	echo "</textarea></form>";

?>