<?php
$open = fopen("hacks.txt", "r+");
$location = "./hacks.txt";
$text = "this is a hack";
fwrite($open, "<a href=$hacked>$hacked</a>&nbsp;hacked by: <b>$name</b> &nbsp;on $date.<hr>");
fclose($open);
echo "<b>Hack added, please click <a href=hacks.shtml>here to continue</a></b>";
?>
