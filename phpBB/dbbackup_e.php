<?php
//dbbackup.php: erstellt ein Backup der aktuellen phpBB Konfiguration
@set_time_limit(600);

//wichtige includes und Funktionen, auch aus phpMyAdmin...
include('extention.inc');
include('config.'.$phpEx);
$crlf="\n";
$dump="";
$showcolumns="yes";
$drop="1";

function mysql_die()
{
  echo "Error:".mysql_error()."<br><br>";
}

function get_table_def($table, $crlf)
{
    global $drop;

    $schema_create = "";
    if(!empty($drop))
        $schema_create .= "DROP TABLE IF EXISTS $table;$crlf";

    $schema_create .= "CREATE TABLE $table ($crlf";

    $result = mysql_query("SHOW FIELDS FROM $table") or mysql_die();
    while($row = mysql_fetch_array($result))
    {
        $schema_create .= "   $row[Field] $row[Type]";

        if(isset($row["Default"]) && (!empty($row["Default"]) || $row["Default"] == "0"))
            $schema_create .= " DEFAULT '$row[Default]'";
        if($row["Null"] != "YES")
            $schema_create .= " NOT NULL";
        if($row["Extra"] != "")
            $schema_create .= " $row[Extra]";
        $schema_create .= ",$crlf";
    }
    $schema_create = ereg_replace(",".$crlf."$", "", $schema_create);
    $result = mysql_query("SHOW KEYS FROM $table");
    while($row = mysql_fetch_array($result))
    {
        $kname=$row['Key_name'];
        if(($kname != "PRIMARY") && ($row['Non_unique'] == 0))
            $kname="UNIQUE|$kname";
         if(!isset($index[$kname]))
             $index[$kname] = array();
         $index[$kname][] = $row['Column_name'];
    }

    while(list($x, $columns) = @each($index))
    {
         $schema_create .= ",$crlf";
         if($x == "PRIMARY")
             $schema_create .= "   PRIMARY KEY (" . implode($columns, ", ") . ")";
         elseif (substr($x,0,6) == "UNIQUE")
            $schema_create .= "   UNIQUE ".substr($x,7)." (" . implode($columns, ", ") . ")";
         else
            $schema_create .= "   KEY $x (" . implode($columns, ", ") . ")";
    }

    $schema_create .= "$crlf)";
    return (stripslashes($schema_create));
}

function get_table_content($table, $handler)
{
    $result = mysql_query("SELECT * FROM $table") or mysql_die();
    $i = 0;
    while($row = mysql_fetch_row($result))
    {
        set_time_limit(60); // HaRa
        $table_list = "(";

        for($j=0; $j<mysql_num_fields($result);$j++)
            $table_list .= mysql_field_name($result,$j).", ";

        $table_list = substr($table_list,0,-2);
        $table_list .= ")";

        if(isset($GLOBALS["showcolumns"]))
            $schema_insert = "INSERT INTO $table $table_list VALUES (";
        else
            $schema_insert = "INSERT INTO $table VALUES (";

        for($j=0; $j<mysql_num_fields($result);$j++)
        {
            if(!isset($row[$j]))
                $schema_insert .= " NULL,";
            elseif($row[$j] != "")
                $schema_insert .= " '".addslashes($row[$j])."',";
            else
                $schema_insert .= " '',";
        }
        $schema_insert = ereg_replace(",$", "", $schema_insert);
        $schema_insert .= ")";
        $handler(trim($schema_insert));
        $i++;
    }
    return (true);
}

function add_to_dump($text)
{
  global $crlf, $dump;
  $dump.="$text;$crlf";
}

$date=date("Y-m-d");
$sqlfile="phpBB-dump-$date.sql";
if(@$what)
{
  if(@$passwd!=@$dbpasswd)
  {
    echo "The password you entered doesn´t match with the one in config.php!";
    exit();
  }

  $db=mysql_connect($dbhost,$dbuser,$dbpasswd) or die("Can´t connect to mySQL Host");

  mysql_select_db($dbname) or die("Can´t select database $dbname.");

  //Tabellennamen deklarieren
  $phpbb_tables=array('access', 'banlist', 'catagories', 'config', 'disallow', 'forum_access', 'forum_mods', 'forums', 'headermetafooter', 'posts', 'posts_text', 'priv_msgs', 'ranks', 'sessions', 'smiles', 'themes', 'topics', 'users', 'whosonline', 'words');

  if($what=="phpbb")
  {
    while(list($dummy,$cur_table)=each($phpbb_tables))
    {
      //dump jeder Tabelle erstellen
      $dump.=get_table_def($cur_table, $crlf).";$crlf";
      get_table_content($cur_table, "add_to_dump");
      $dump.=$crlf;
    }
  }
  else
  {
    $tables = mysql_list_tables($dbname);
    $num_tables = mysql_numrows($tables);
    $i=0;
    while($i < $num_tables)
    {
      $table = mysql_tablename($tables, $i);
      $dump.=get_table_def($table, $crlf).";$crlf";
      get_table_content($table, "add_to_dump");
      $dump.=$crlf;
      $i++;
    }
  }
  //Ausgabe
  if(@$download)
  {
    header("Content-disposition: filename=$sqlfile");
    header("Content-type: application/octetstream");
    header("Pragma: no-cache");
    header("Expires: 0");
    echo $dump;
  }
  else
  {
    $fp = fopen ($sqlfile, "w");
    fwrite ($fp, $dump);
    fclose($fp);
    echo "dump has been created, filename:<br><b>$sqlfile</b>";
  }
  mysql_close($db);
}
else
{
  ?>
  <form action="<?php echo $PHP_SELF ?>" method="POST">
  <h1>Create sql-dump for backup</h1>
  <p><b>What to include in the dump:</b><br>
  <input type="Radio" name="what" value="phpbb" checked> Only the tables used by phpBB<br>
  <input type="Radio" name="what" value="db"> whole database </p>

  <p><b>What to do with the dump:</b><br>
  <input type="Radio" name="download" value="0" checked> Save directly on server (recommended)<br>
  <input type="Radio" name="download" value="1"> Download (use only if php scripts don´t have write access)<br>
  db password (will be compared with the one in config.php): <input type="Password" name="passwd" size="10"></p>
  <input type="Submit" name="submit" value="Los">
  </form>
  <?php
}
?>