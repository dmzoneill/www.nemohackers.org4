<?php
//dbrestore.php: Stellt die phpBB-Tabellen aus einem Dump wieder her, ohne den 'phpMyAdmin-Bug'
@set_time_limit(10000);

//wichtige includes und Funktionen, auch aus phpMyAdmin...
include('extention.inc');
include('config.'.$phpEx);
$crlf="\n";
$error_occurred=false;

function split_sql($sql)
{
    $sql = trim($sql);
    $buffer = array();
    $ret = array();
    $in_string = false;

    for($i=0; $i<strlen($sql)-1; $i++)
    {
         if($sql[$i] == ";" && !$in_string)
        {
            $ret[] = substr($sql, 0, $i);
            $sql = substr($sql, $i + 1);
            $i = 0;
        }

        if($in_string && ($sql[$i] == $in_string) && $buffer[0] != "\\")
        {
             $in_string = false;
        }
        elseif(!$in_string && ($sql[$i] == "\"" || $sql[$i] == "'") && (!isset($buffer[0]) || $buffer[0] != "\\"))
        {
             $in_string = $sql[$i];
        }
        if(isset($buffer[1]))
        {
            $buffer[0] = $buffer[1];
        }
        $buffer[1] = $sql[$i];
     }

    if(!empty($sql))
    {
        $ret[] = $sql;
    }

    return($ret);
}

if(@$sqlfile)
{
  if(@$passwd!=@$dbpasswd)
  {
    echo "The password you entered doesn´t match with the one in config.php!";
    exit();
  }
  $db=mysql_connect($dbhost,$dbuser,$dbpasswd) or die("Can´t connect to mySQL Host");
  mysql_select_db($dbname) or die("Can´t select database $dbname.");

  $dump_total=addslashes(fread(fopen($sqlfile, "r"), filesize($sqlfile)));
  $dump_lines=split_sql($dump_total);

  while(list($dummy,$cur_line)=each($dump_lines))
  {
    $cur_line=stripslashes($cur_line);
    mysql_query($cur_line,$db);
    if(mysql_error())
    {
      echo mysql_error()."<br>";
      $error_occurred=true;
    }
    //echo "mysql-query:<br>$cur_line<br><br>";
  }
  mysql_close($db);
  echo "Dump executed.";
  if($error_occurred)echo "<br><font color=\"red\"><b>An error occured</b></font>";
}
else
{
?>
<html>
<head>
<title>Restore the forum using a backup dump</title>
<meta name="author" content="Frank">
<meta name="generator" content="Ulli Meybohms HTML EDITOR">
</head>
<body>
<form action="<?php echo $PHP_SELF ?>" method="post">
<p><font color="red"><b>WARNING</b></font>: By submitting this form <b>ALL data in the forum willl be OVERWRITTEN</b>!<br><br>
Which dump to use:
<select size="1" name="sqlfile">
<?php
$fp=opendir(".");
while($datei=readdir($fp))
{
  if(preg_match("/phpBB-dump-.+.sql/",$datei))
  {
    echo "<option value=\"$datei\">$datei</option>";
  }
}
closedir($fp);
?>
</select><br>
db password (will be compared with the one in config.php): <input type="Password" name="passwd" size="10">
<br><input type="Submit" name="submit" value="Restore">
</p>
</form>
</body>
</html>
<?php
}
?>