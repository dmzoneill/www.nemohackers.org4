<?php

//why .jpg? not readable in a browser :)
$unique = "unique.jpg"; //holds the amount of unique hits
$hits = "counter.jpg";  //holds the amount of hits
$stats = "stats.jpg";   //holds the stats

$domain = "www.nemohackers.com";

//////////don't edit below here/////////////////

$fp = fopen($hits, 'r');
$output = fread($fp, filesize($hits));
fclose($fp);
$count_total = intval($output);


$fp = fopen($unique, 'r');
$output = fread($fp, filesize($unique));
fclose($fp);
$count_unique = intval($output);

if(!$m) {
   ?>
   <form method=post action="index.php?m=2">
   <p>Username:&nbsp;<font color="black"><input type="text" name="user" size="10"></p>
   <p>Password:&nbsp;<font color="black"><input type="password" name="password" size="10"></p>
   <p><input type="submit" value="Login"></p>
   </form>
   <?
}

if($m == 1) { //this mode adds to the counter

$hour = date(G);    //current hour
$min = date(i);     //current minute
$secs = date(s);    //current second

$time = "$hour:$min:$sec";
$ipaddress = getenv("REMOTE_ADDR");
$other = getenv("HTTP_USER_AGENT");

//adds to total hits
$fp = fopen($hits, "w");
$count_total++;
fwrite($fp, $count_total);
fclose($fp);
    

//adds to the unqiue hits
$fp = fopen($stats, 'r');
$read = fread($fp, filesize($stats));
fclose($fp);

$test = eregi("$ipaddress", $read);

if ($test!=1){
   $count_unique = $count_unique+1;
   $fp = fopen($unique, "w");
   fwrite($fp, $count_unique);
    fclose($fp);
}

//end of unique



//writes to the stats
$fp = fopen($stats, 'a');
$write = "IP: $ipaddress  Time: $time  Other: $other \n";
fwrite($fp, $write);
fclose($fp);
//end of stats

}

else if($m == 2) {  //this one is like the admin

//for the authenication
$userpass = "$user:$password";
if($userpass != "nemo:casio") {
    die("wrong user/pass");
}
else {

//****Find the number of things...

//update the count_total
$fp = fopen($hits, 'r');
$output = fread($fp, filesize($hits));
fclose($fp);
$count_total = intval($output);
/////////////////////////

$fp = fopen($stats, 'r');
$haystack = fread($fp, filesize($stats)); //read the haystack
//os's
$num_win = substr_count($haystack, "Windows 98");
$num_win2 = substr_count($haystack, "Win98");
$num_win + $num_win2; //because there are 2 signitues for it
$num_win95 = substr_count($haystack, "Win95");
$num_winnt = substr_count($haystack, "Windows NT");
$num_unix = substr_count($haystack, "Unix");
$num_linux = substr_count($haystack, "Linux");
$num_mac = substr_count($haystack, "Mac");
//browsers
$num_ie = substr_count($haystack, "MSIE");
$num_mozilla = substr_count($haystack, "[en]");
$num_lynx = substr_count($haystack, "Lynx");
$num_links = substr_count($haystack, "Links");
fclose($fp);


//work out percentages (OS)
$count_unique_percent = ($count_unique / $count_total) * 100;
$count_unique_percent = round($count_unique_percent, 2);
$num_win_percent = ($num_win / $count_total) * 100;
$num_win_percent = round($num_win_percent, 2);
$num_win95_percent = ($num_win95/ $count_total) * 100;
$num_win95_percent = round($num_win95_percent, 2);
$num_winnt_percent = ($num_winnt / $count_total) * 100;
$num_winnt_percent = round($num_winnt_percent, 2);
$num_unix_percent = ($num_unix / $count_total) * 100;
$num_unix_percent = round($num_unix_percent, 2);
$num_linux_percent = ($num_linux / $count_total) * 100;
$num_linux_percent = round($num_linux_percent, 2);
$num_mac_percent = ($num_mac / $count_total) * 100;
$num_mac_percent = round($num_mac_percent, 2);


//browser percents
$num_ie_percent = ($num_ie / $count_total) * 100;
$num_ie_percent = round($num_ie_percent, 2);
$num_mozilla_percent = ($num_mozilla / $count_total) * 100;
$num_mozilla_percent = round($num_mozilla_percent, 2);
$num_lynx_percent = ($num_lynx / $count_total) * 100;
$num_lynx_percent = round($num_lynx_percent, 2);
$num_links_percent = ($num_links / $count_total) * 100;
$num_links_percent = round($num_links_percent, 2);



//outputs the data
?>

<HTML><HEAD><TITLE>Stats for  <?php echo $domain; ?></TITLE></HEAD>
<BODY BGCOLOR="#FFFFFF" ALINK="#ccff00" LINK="#0080FF" TEXT="#000000" VLINK="#0080FF">
<FONT FACE="Arial" SIZE="-1">
<H1>Stats for <?php echo $domain; ?></H1>

<TABLE WIDTH="100%" border=0>
<TR valign="TOP">
<TD>

<TABLE  border=1 bordercolor="#000000">
<TR><TD bgcolor="#295e85"><b><FONT FACE="Verdana, Arial" SIZE="-1" color="#FFFFFF">Total hits</b></TD>
<TD><FONT FACE="Verdana, Arial" SIZE="-1"><?php echo $count_total; ?></TD></TR>
<TR><TD bgcolor="#295e85"><b><FONT FACE="Verdana, Arial" SIZE="-1" color="#FFFFFF">Unique</b></TD>
<TD><FONT FACE="Verdana, Arial" SIZE="-1"><?php echo "$count_unique <b>($count_unique_percent%)</b>"; ?></TD></TR>
</TABLE>
<br>
<TABLE border=1 bordercolor="#000000" cellspacing="1" cellpadding="1">
<TR><TD bgcolor="#295e85"><FONT FACE="Arial" SIZE="-1" color="#FFFFFF"><b>MSIE</b></TD>
<TD bgcolor="#FFFFFF"><FONT FACE="Arial" SIZE="-1"><?php echo "$num_ie <b>($num_ie_percent%)</b>"; ?></TD></TR>
<TR><TD bgcolor="#295e85"><FONT FACE="Arial" SIZE="-1" color="#FFFFFF"><b>Mozilla / Netscape</b></TD>
<TD bgcolor="#FFFFFF"><FONT FACE="Arial" SIZE="-1"<?php echo "$num_mozillla <b>($num_mozilla_percent%)</b>"; ?></TD></TR>
<TR><TD bgcolor="#295e85"><FONT FACE="Arial" SIZE="-1" color="#FFFFFF"><b>Lynx</b></TD>
<TD bgcolor="#FFFFFF"><FONT FACE="Arial" SIZE="-1" ><?php echo "$num_lynx <b>($num_lynx_percent%)</b>"; ?></TD></TR>
<TR><TD bgcolor="#295e85"><FONT FACE="Arial" SIZE="-1" color="#FFFFFF"><b>Links</b></TD>
<TD bgcolor="#FFFFFF"><FONT FACE="Arial" SIZE="-1">
<?php echo "$num_links <b>($num_links_percent%)</b>"; ?></TD></TR>
</TABLE>
<br>
<TABLE border=1 bordercolor="#000000" cellspacing="1" cellpadding="1">
<TR><TD bgcolor="#295e85"><FONT FACE="Arial" SIZE="-1" color="#FFFFFF"><b>Windows 98</b></TD>
<TD bgcolor="#FFFFFF"><FONT FACE="Arial" SIZE="-1"><?php echo "$num_win <b>($num_win_percent%)</b>"; ?></TD></TR>
<TR><TD bgcolor="#295e85"><FONT FACE="Arial" SIZE="-1" color="#FFFFFF"><b>Windows 95</b></TD>
<TD bgcolor="#FFFFFF"><FONT FACE="Arial" SIZE="-1"><?php echo "$num_win95 <b>($num_win95_percent%)</b>"; ?></TD></TR>
<TR><TD bgcolor="#295e85"><FONT FACE="Arial" SIZE="-1" color="#FFFFFF"><b>Windows NT</b></TD>
<TD bgcolor="#FFFFFF"><FONT FACE="Arial" SIZE="-1"><?php echo "$num_winnt <b>($num_winnt_percent%)</b>"; ?></TD></TR>
<TR><TD bgcolor="#295e85"><FONT FACE="Arial" SIZE="-1" color="#FFFFFF"><b>Unix</b></TD>
<TD bgcolor="#FFFFFF"><FONT FACE="Arial" SIZE="-1"><?php echo "$num_unix <b>($num_unix_percent%)</b>"; ?></TD></TR>
<TR><TD bgcolor="#295e85"><FONT FACE="Arial" SIZE="-1" color="#FFFFFF"><b>Mac OS</b></TD>
<TD bgcolor="#FFFFFF"><FONT FACE="Arial" SIZE="-1"><?php echo "$num_mac <b>($num_mac_percent%)</b>"; ?></TD></TR>
<TR><TD bgcolor="#295e85"><FONT FACE="Arial" SIZE="-1" color="#FFFFFF"><b>Linux</b></TD>
<TD bgcolor="#FFFFFF"><FONT FACE="Arial" SIZE="-1">
<?php echo "$num_linux <b>($num_linux_percent%)</b>"; ?></TD></TR>
</TABLE>
<br>

</TD>
</TR></TABLE>
<?
$fp = fopen($stats, 'r');
$read = fread($fp, filesize($stats));
$size = filesize($stats);
echo("<br><h2>Log ($size bytes)</h2>");
echo("<form><textarea cols=120 rows=15>$read</textarea></form>");


//end of ouptut the data
}
}

?>

