<?php
/* $Id: tbl_rename.php3,v 1.3 2001/05/27 20:19:24 lem9 Exp $ */


require("./grab_globals.inc.php3");
 

$old_name = $table;
$table = $new_name;
require("./header.inc.php3");

mysql_select_db($db);
$result = mysql_query("ALTER TABLE $old_name RENAME $new_name") or mysql_die();
$table = $old_name;
eval("\$message =  \"$strRenameTableOK\";");
$table = $new_name;
require("./tbl_properties.php3");
?>
