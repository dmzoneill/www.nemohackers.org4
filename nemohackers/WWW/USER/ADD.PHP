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

$sql = "INSERT INTO usrs (IP, HOST) VALUES ($REMOTE_ADDR, $HOST_ADDR)";
mysql_query($sql, $db);

echo "added";

?>

