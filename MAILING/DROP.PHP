<!doctype html public "-//W3C//DTD HTML 4.0 //EN"> 
<html>
<head>
       <title>Mailing list: Drop</title>
       <script language=javascript>
<!--
function vote () {
return true;
}
function cancel(){
return false;
}


function really(){
if (confirm("Are you sure that you really want to delte the entire mailing list and table!?")) {
return true;
} else {
return false;
}
}
// -->
</head>
<body link=#004080 vlink=#004080 bgcolor=#000000 text=#FFFFFF onload="really()">

<?php

require('vars.php');


//connection crap
$connection = mysql_connect($database_host_port, $database_uname, $database_pword) or die("couldnt connect to db");
      mysql_select_db($database,$connection) or die("couldnt select db");

      $sql = "DROP $tablename";
      mysql_query($sql, $connection);
      echo "$tablename has been deleted!";

</script>
</body>
</html>
