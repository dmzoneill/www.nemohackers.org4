<?php
/* $Id: db_create.php3,v 1.5 2001/06/27 14:09:26 lem9 Exp $ */


require("./grab_globals.inc.php3");
 
require("./header.inc.php3");

$result = mysql_query("CREATE DATABASE " . db_name($db)) or mysql_die();

$message = "$strDatabase " . db_name($db) . " $strHasBeenCreated";
require("./db_details.php3");

?>
