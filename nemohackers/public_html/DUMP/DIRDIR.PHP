<?php

$shit = `dir`;

$shit = rawurlencode($shit); 

$shit = eregi_replace("%0A", "%20", $shit);
$shit = eregi_replace("%09", "%20", $shit);

$shit = eregi_replace("%20%20%20", "%20%20", $shit);
$shit = eregi_replace("%20%20", "%20", $shit);
$shit = eregi_replace("%20%20", "%20", $shit);
$shit = eregi_replace("%20%20", "%20", $shit);

$shit = eregi_replace("%20", "þ", $shit);
$shit = explode("þ", $shit);
$num = count($shit);

?>
<script language="JavaScript">
<!--
function MM_jumpMenu(targ,selObj,restore){ //v3.0

  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");

  if (restore) selObj.selectedIndex=0;

}
//-->
</script>
<form name=form1>
<select name=sel onChange="MM_jumpMenu('parent',this,0)">
<option value="">Select a file or directory (the ones without extensons)</options>
<?php

for ($i=0; $i<$num-1; $i++){

if ($shit[$i]!="" || $shit[$i]!=" "){
echo "<option value=\"$shit[$i]\">$shit[$i]</option>";
}

}

?>
</select>
</form>