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



//if no varible for step, then it = display
if(!$step) {
	$step = "display";
}

if($step == "display") {


	//insert new IP and HOST into database
	$ip = getenv("REMOTE_ADDR");
	$host = getenv("HOST_ADDR");
	$sql = "INSERT INTO $table_name (IP, HOST) VALUES ($REMOTE_ADDR, $HOST_ADDR)";
	mysql_query($sql, $db);
	
	
	$rows = mysql_num_rows($result);
	if($rows>10) {
	$howmany = 10;
	} else {
	$howmany = $rows;
	}	
	//get rows 0-10 from the db
	for($i=0; $i<10; $i++) {
		$sql = "select * from $table_name";
		$result = mysql_query($sql, $db);
		$res = mysql_result($result, $i, 0);
		echo $res;
	}
	
}

else if($step == "add") {
	
	//make the new table
	$sql = "CREATE TABLE $table_name ( IP char(50), HOST char(50) )";
	mysql_query($sql, $db);
	echo("<h1>Added $table_name to the database: $db_name</h1>");
	
}


