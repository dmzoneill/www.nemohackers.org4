<?php

include('vars.php');

$db = mysql_connect($database_host_port, $database_uname, $database_pword) or die("couldn't connect");
mysql_select_db($database, $db) or die("couldn't select db");

if(!$mode) {
$mode = "vote";
}

if($mode == "install") {
	$sql = "CREATE TABLE $poll_table_name ( VOTE_1 char(5), VOTE_2 char(5), VOTE_3 char(5), VOTE_4 char(5), VOTE_5 char(5), TOTAL char(10) )";
	mysql_query($sql, $db);
	echo("$poll_table_name has been created");
}


else if ($mode == "vote") {
//possible 5 choices
?>
<form method=post action=poll.php>
<table border=1>
<tr>
	<th>Which is better?</th>
</tr>
<tr>
	<td>Linux</td>
	<td><input type="radio" name="vote" value="1" checked></td>
</tr>
<tr>
	<td>Winblows</td>
	<td><input type="radio" name="vote" value="2"></td>
</tr>
<tr>
	<td>*BSD</td>
	<td><input type="radio" name="vote" value="3"></td>
</tr>
<tr>
	<td>Mac OS</td>
	<td><input type="radio" name="vote" value="4"></td>
</tr>
<tr>
	<td>Amiga Workbench</td>
	<td><input type="radio" name="vote" value="5"></td>
</tr>
<tr>
	<th><input type=submit value=vote></th>
</tr>
</table>
<input type=hidden name=mode value=add>
</form>
<?
}

else if($mode == "add") {
	$sql = "SELECT * $poll_table_name";
	mysql_query($sql, $db);
	
	$vote = "1";	
	$sql = "INSERT INTO $poll_table_name ($VOTE_1) VALUES ($vote)";
		mysql_query($sql, $db);
}

else if($mode == "view") {
	$sql = "SELECT * $poll_table_name";
	mysql_query($sql, $db);
	$result = mysql_query($sql, $db);
	$rows = mysql_num_rows($result);
	for ($i=0;$i<$rows;$i++){
		$test = mysql_result($result,$i,1);	
	}
	echo "$test";
}
