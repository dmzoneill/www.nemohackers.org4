<?php

if(!$step) {
	$step == "display";
}
$tablename = "visits";
$db = mysql_connect("64.156.139.240", "supersane", "1419") or die("unable to connect to db");
mysql_select_db("supersane", $db) or die("couldn't select db");
$sql = "select * from $tablename";


if($step == "add") {
    	
	$create = "CREATE TABLE $tablename (
			HOST char(30),
			IP char(30))";
	mysql_query($create, $db);
	
	$sql = "INSERT INTO $tablename (IP, HOST) VALUES ('ip', 'host')";

}

else if($step == "display") {
	$result = mysql_query($sql,$db);
	$ip = getenv("REMOTE_ADDR");
	$host = getenv("REMOTE_HOST");
	$sql = "INSERT INTO $table name (IP, HOST) VALUES('$ip', '$host');
	mysql_query($sql,$db);
	for($i=0; $i<10; $i++;) {
		$users = mysql_result($result,$i,0);
	}
	echo $users;
	
}
?>