<?php
$database_host = '64.156.139.240'; // leave set to localhost unless database is on another host
$database_port = 'n'; // leave n for default port
$database = 'supersane'; // the name of the mysql database
                     // that the cart will store its information in
$database_uname = 'supersane'; // username with full read/write privs to database
$database_pword = '1419'; // password for username for database
$cookie_domain = '.supersane.com'; // .domain.com  must have two periods (.)

// ****************do not edit below
if ($database_port=='n'){
$database_host_port = $database_host;
} else {
$database_host_port = "$database_host:$database_port";
}


?>
