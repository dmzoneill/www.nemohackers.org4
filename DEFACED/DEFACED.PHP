<?

if(!$mode) {
	echo "<table width=70%><tr><td>";
	require('defaced/defaced.txt');
	echo "</td></tr></table>";
}
else {
$date = date ("l dS of F Y h:i:s A");
$msg = "<table border=0 width=60%><tr><td><b><a href=$url>$url</a></b> defaced by <b>
	     <a href=mailto:$email>$name</a></b> on <b>$date</b>.";
$fp = fopen('defaced.txt', 'a+');
fwrite($fp, $msg);
fclose($fp);

echo "Thank you $name, click <a href=http://nemo.r-fx.org/defaced.php>here</a> to return.";
}

?>
