<?php

$db = mysql_connect($db_host, $database_uname, $database_pword) or die("couldn't connect to db");
mysql_select_db($db_name, $db) or die("couldn't select db");

if(!$foo) {
$foo = "1";
}

if($foo == "install") {
	$tablename = 'mailinglist';
	$table = "CREATE TABLE $tablename (
		      email varchar(50),
		      name char(50))";
	$sql = mysql_query($table, $db);
	echo("<h1>Table created</h1>");
}

?>
