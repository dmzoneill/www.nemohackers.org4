<?php
// phpcs:ignoreFile
// jscpd:ignore-start
/* $Id: tbl_properties.php,v 1.30 2000/07/14 08:44:43 tobias Exp $ */

if(!isset($message))
{
    include("header.inc.php");
}
else
    /* @phpstan-ignore-line */ show_message($message);

/** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ unset($sql_query);
/* @phpstan-ignore-line */ if(MYSQL_MAJOR_VERSION == "3.23")
    {
    if(isset($submitcomment))
        /* @phpstan-ignore-line */ /** @psalm-suppress UnusedVariable, UndefinedFunction, PossiblyUndefinedVariable, UndefinedGlobalVariable */ /** @psalm-suppress UnusedVariable, UndefinedFunction, PossiblyUndefinedVariable, UndefinedGlobalVariable */ $result = mysql_db_query($db, "ALTER TABLE $table comment='$comment'") or mysql_die();
    /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction, PossiblyUndefinedVariable, UndefinedGlobalVariable */ /** @psalm-suppress UndefinedFunction, PossiblyUndefinedVariable, UndefinedGlobalVariable */ $result = mysql_db_query($db, "SHOW TABLE STATUS LIKE '$table'") or mysql_die();
    /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction */ /** @psalm-suppress UndefinedFunction */ $row = mysql_fetch_array($result);
    if(!empty($row["Comment"]))
    {
        ?>
        <form method='post' action='tbl_properties.php'>
        <input type="hidden" name="server" value="<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $server;?>">
        <input type="hidden" name="db" value="<?php /* @phpstan-ignore-line */ echo $db;?>">
        <input type="hidden" name="table" value="<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $table;?>">
        <?php
        /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo "$strTableComments: <input type='text' name='comment' value='$row[Comment]'><input type='submit' name='submitcomment' value='$strGo'></form>";
    }
}

/* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction, PossiblyUndefinedVariable, UndefinedGlobalVariable */ /** @psalm-suppress UndefinedFunction, PossiblyUndefinedVariable, UndefinedGlobalVariable */ $result = mysql_db_query($db, "SHOW KEYS FROM $table") or mysql_die();
$primary = "";

/* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction */ /** @psalm-suppress UndefinedFunction */ while($row = mysql_fetch_array($result))
    if ($row["Key_name"] == "PRIMARY")
        $primary .= "$row[Column_name], ";

/* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction, UndefinedGlobalVariable */ /** @psalm-suppress UndefinedFunction, UndefinedGlobalVariable */ $result = mysql_db_query($db, "SHOW FIELDS FROM $table") or mysql_die();

?>
<table border=<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $cfgBorder;?>>
<TR>
   <TH><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strField; ?></TH>
   <TH><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strType; ?></TH>
   <TH><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strAttr; ?></TH>
   <TH><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strNull; ?></TH>
   <TH><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strDefault; ?></TH>
   <TH><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strExtra; ?></TH>
   <?php if (!(isset($printer_friendly) && $printer_friendly)) { ?>
   <TH COLSPAN=5><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strAction; ?></TH>
   <?php } ?>
</TR>

<?php
$i=0;

$aryFields = array();

/* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction */ /** @psalm-suppress UndefinedFunction */ while($row= mysql_fetch_array($result))
{
    $aryFields[] = $row["Field"];
    /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ $query = "server=$server&db=$db&table=$table&goto=tbl_properties.php";
    /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ $bgcolor = $cfgBgcolorOne;
    /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ $i % 2  ? 0: $bgcolor = $cfgBgcolorTwo;
    $i++;
    ?>
         <tr bgcolor="<?php echo $bgcolor;?>">
         <td><?php echo $row["Field"];?>&nbsp;</td>
         <td>
    <?php
    $Type = stripslashes($row["Type"]);
    /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction */ /** @psalm-suppress UndefinedFunction */ $Type = eregi_replace("BINARY", "", $Type);
    /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction */ /** @psalm-suppress UndefinedFunction */ $Type = eregi_replace("ZEROFILL", "", $Type);
    /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction */ /** @psalm-suppress UndefinedFunction */ $Type = eregi_replace("UNSIGNED", "", $Type);
    echo $Type;
    ?>&nbsp;</td>
         <td>
    <?php
    /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction, PossiblyUndefinedVariable */ /** @psalm-suppress UndefinedFunction, PossiblyUndefinedVariable */ $binary   = eregi("BINARY", $row["Type"], $test);
    /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction */ /** @psalm-suppress UndefinedFunction */ $unsigned = eregi("UNSIGNED", $row["Type"], $test);
    /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction */ /** @psalm-suppress UndefinedFunction */ $zerofill = eregi("ZEROFILL", $row["Type"], $test);
    $strAttribute="";
    if ($binary)
        $strAttribute="BINARY";
    if ($unsigned)
        $strAttribute="UNSIGNED";
    if ($zerofill)
        $strAttribute="UNSIGNED ZEROFILL";
    echo $strAttribute;
    /** @psalm-suppress UnusedVariable */ /** @psalm-suppress UnusedVariable */ $strAttribute="";
    ?>
     &nbsp;</td>
     <td><?php /* @phpstan-ignore-line */ if ($row["Null"] == "") { /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strNo;} else {/** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strYes;}?>&nbsp;</td>
         <td><?php if(isset($row["Default"])) echo $row["Default"];?>&nbsp;</td>
         <td><?php echo $row["Extra"];?>&nbsp;</td>

     <?php if (!(isset($printer_friendly) && $printer_friendly)) { ?>
         <td><a href="tbl_alter.php?<?php /* @phpstan-ignore-line */ echo $query;?>&field=<?php echo $row["Field"];?>"><?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strChange; ?></a></td>
         <td><a href="sql.php?<?php /* @phpstan-ignore-line */ echo $query;?>&sql_query=<?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo urlencode("ALTER TABLE ".$table." DROP ".$row["Field"]);?>&zero_rows=<?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo urlencode($row["Field"]." ".$strHasBeenDropped);?>"><?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strDrop; ?></a></td>
         <td><a href="sql.php?<?php /* @phpstan-ignore-line */ echo $query;?>&sql_query=<?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo urlencode("ALTER TABLE ".$table." DROP PRIMARY KEY, ADD PRIMARY KEY($primary".$row["Field"].")");?>&zero_rows=<?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo urlencode($strAPrimaryKey.$row["Field"]);?>"><?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strPrimary; ?></a></td>
         <td><a href="sql.php?<?php /* @phpstan-ignore-line */ echo $query;?>&sql_query=<?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo urlencode("ALTER TABLE ".$table." ADD INDEX(".$row["Field"].")");?>&zero_rows=<?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo urlencode($strAnIndex.$row["Field"]);?>"><?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strIndex; ?></a></td>
         <td><a href="sql.php?<?php /* @phpstan-ignore-line */ echo $query;?>&sql_query=<?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo urlencode("ALTER TABLE ".$table." ADD UNIQUE(".$row["Field"].")");?>&zero_rows=<?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo urlencode($strAnIndex.$row["Field"]);?>"><?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strUnique; ?></a></td>
     <?php } ?>
         </tr>
    <?php
}
?>
</table>
<?php

/* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction, UndefinedGlobalVariable */ /** @psalm-suppress UndefinedFunction, UndefinedGlobalVariable */ $result = mysql_db_query($db, "SHOW KEYS FROM ".$table) or mysql_die();
/* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction */ /** @psalm-suppress UndefinedFunction */ if(mysql_num_rows($result)>0)
{
    ?>
    <br>
    <table border=<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $cfgBorder;?>>
      <tr>
      <th><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strKeyname; ?></th>
      <th><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strUnique; ?></th>
      <th><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strField; ?></th>
      <th><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strAction; ?></th>
      </tr>
    <?php
    /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction */ /** @psalm-suppress UndefinedFunction */ for($i=0 ; $i<mysql_num_rows($result); $i++)
    {
        /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedFunction */ /** @psalm-suppress UndefinedFunction */ $row = mysql_fetch_array($result);
        echo "<tr>";
        if($row["Key_name"] == "PRIMARY")
        {
            /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ $sql_query = urlencode("ALTER TABLE ".$table." DROP PRIMARY KEY");
            /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ $zero_rows = urlencode($strPrimaryKey." ".$strHasBeenDropped);
        }
        else
        {
            /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ $sql_query = urlencode("ALTER TABLE ".$table." DROP INDEX ".$row["Key_name"]);
            /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ $zero_rows = urlencode($strIndex." ".$row["Key_name"]." ".$strHasBeenDropped);
        }

        ?>
          <td><?php echo $row["Key_name"];?></td>
          <td><?php
        if($row["Non_unique"]=="0")
            /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strYes;
        else
            /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strNo;
        ?></td>
        <td><?php echo $row["Column_name"];?></td>
        <td><?php /* @phpstan-ignore-line */ /** @psalm-suppress PossiblyUndefinedGlobalVariable, UndefinedGlobalVariable */ /** @psalm-suppress PossiblyUndefinedGlobalVariable, UndefinedGlobalVariable */ echo "<a href=\"sql.php?$query&sql_query=$sql_query&zero_rows=$zero_rows\">$strDrop</a>";?></td>
        <?php
        echo "</tr>";
    }
    print "</table>\n";
    /* @phpstan-ignore-line */ print show_docu("manual_Performance.html#MySQL_indexes");
}

?>
<div align="left">
<ul>
<li><a href="tbl_printview.php?<?php /* @phpstan-ignore-line */ /** @psalm-suppress PossiblyUndefinedGlobalVariable */ /** @psalm-suppress PossiblyUndefinedGlobalVariable */ echo $query;?>"><?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strPrintView; ?></a>
<li><a href="sql.php?sql_query=<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo urlencode("SELECT * FROM $table");?>&pos=0&<?php /** @psalm-suppress PossiblyUndefinedGlobalVariable */ /** @psalm-suppress PossiblyUndefinedGlobalVariable */ echo $query;?>"><?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strBrowse; ?></a>
<li><a href="tbl_select.php?<?php /* @phpstan-ignore-line */ /** @psalm-suppress PossiblyUndefinedGlobalVariable */ /** @psalm-suppress PossiblyUndefinedGlobalVariable */ echo $query;?>"><?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strSelect; ?></a>
<li><a href="tbl_change.php?<?php /* @phpstan-ignore-line */ /** @psalm-suppress PossiblyUndefinedGlobalVariable */ /** @psalm-suppress PossiblyUndefinedGlobalVariable */ echo $query;?>"><?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strInsert; ?></a>
<li><form method="post" action="tbl_addfield.php"> <input type="hidden" name="server" value="<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $server;?>">
 <input type="hidden" name="db" value="<?php /* @phpstan-ignore-line */ echo $db;?>">
 <input type="hidden" name="table" value="<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $table;?>">
<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo " ".$strAddNewField; ?>:  <input name="num_fields" size=2 maxlength=2 value=1>
<?php
echo " ";
echo " <select name=\"after_field\">\n";
/* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo '  <option value="--end--">'.$strAtEndOfTable."</option>\n";
/* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo '  <option value="--first--">'.$strAtBeginningOfTable."</option>\n";
/* @phpstan-ignore-line */ /** @psalm-suppress UnusedVariable, UndefinedFunction */ /** @psalm-suppress UnusedVariable, UndefinedFunction */ while(list ($junk,$fieldname) = each($aryFields)) {
    /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo '  <option value="'.$fieldname.'">'.$strAfter.' '.$fieldname."</option>\n";
}
echo " </select>\n";
?>
<input type="submit" value="<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strGo;?>">
</form>
<li><a href="ldi_table.php?<?php /* @phpstan-ignore-line */ /** @psalm-suppress PossiblyUndefinedGlobalVariable */ /** @psalm-suppress PossiblyUndefinedGlobalVariable */ echo $query;?>"><?php /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strInsertTextfiles; ?></a>
<li><form method="post" action="tbl_dump.php"><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strViewDump;?><br>
<table>
    <tr>
        <td>
            <input type="radio" name="what" value="structure" checked><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strStrucOnly;?>
        </td>
        <td>
            <input type="checkbox" name="drop" value="1"><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strStrucDrop;?>
        </td>
        <td colspan="3">
            <input type="submit" value="<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strGo;?>">
        </td>
    </tr>
    <tr>
        <td>
            <input type="radio" name="what" value="data"><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strStrucData;?>
        </td>
        <td>
            <input type="checkbox" name="asfile" value="sendit"><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strSend;?>
        </td>
    </tr>
    <tr>
    <td>
    </td>
    <td>
       <input type="checkbox" name="showcolumns" value="yes"><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strCompleteInserts; ?>
    </td>
    </tr>
    <tr>
        <td>
            <input type="radio" name="what" value="csv"><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strStrucCSV;?>
        </td>
        <td>
            <?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strTerminatedBy;?> <input type="text" name="separator" size=1 value=";">
        </td>
    </tr>
</table>

 <input type="hidden" name="server" value="<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $server;?>">
 <input type="hidden" name="db" value="<?php /* @phpstan-ignore-line */ echo $db;?>">
 <input type="hidden" name="table" value="<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $table;?>">
</form>

<li><form method="post" action="tbl_rename.php"><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strRenameTable;?>:<br>
 <input type="hidden" name="server" value="<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $server;?>">
 <input type="hidden" name="db" value="<?php /* @phpstan-ignore-line */ echo $db;?>">
 <input type="hidden" name="table" value="<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $table;?>">
 <input type="hidden" name="reload" value="true">
 <input type="text" name="new_name"><input type="submit" value="<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strGo;?>">
</form>
<li><form method="post" action="tbl_copy.php"><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strCopyTable;?><br>
 <input type="hidden" name="server" value="<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $server;?>">
 <input type="hidden" name="db" value="<?php /* @phpstan-ignore-line */ echo $db;?>">
 <input type="hidden" name="table" value="<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $table;?>">
 <input type="hidden" name="reload" value="true">
 <input type="text" name="new_name"><br>
 <input type="radio" name="what" value="structure" checked><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strStrucOnly;?>
 <input type="radio" name="what" value="data"><?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strStrucData;?>
 <input type="submit" value="<?php /* @phpstan-ignore-line */ /** @psalm-suppress UndefinedGlobalVariable */ /** @psalm-suppress UndefinedGlobalVariable */ echo $strGo;?>">
</form>

</ul>
</div>
<?

require ("footer.inc.php");
?>
<?php // jscpd:ignore-end ?>
