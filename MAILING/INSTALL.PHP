<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Mailing List: Install</title>
</head>
<body link=#004080 vlink=#004080 bgcolor=#000000 text=#FFFFFF>
<?php

require('vars.php');

//connection crap
$connection = mysql_connect($database_host_port, $database_uname, $database_pword) or die("couldnt connect to db");
      mysql_select_db($database,$connection) or die("couldnt select db");
      
$sql = "CREATE TABLE $tablename (address char(50), from char(50), user(50), password(50))";
$sql = mysql_query($sql, $connection);
echo "Table has been added to the db";

?>
</body>
</html>
