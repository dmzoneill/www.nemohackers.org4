<html>
<body>

<!---copyright nemohackers.com
Feal free to place this within a document of your choice with the extension *.php..

You can place headers or whatever around the table to give it the look and feal you desire
If you remove the copyright info you are not obeying the terms of use of this script written by
Xavic@nemohackers.com & edited by Neiller@nemohackers.com...

Things to edit unless you want ease of use. If so just use the directory /arch...

line 37 = change this to the directory of your archives..
line 119 = change this to the directory of your archives..
line 143 = change this to the directory of your archives..
line 145 = change this to the directory of your archives..
//------>






<center>


<table width=90% cellpadding=5 border=1><tr><td>
<center>Current Text open <?php echo $rawurlencode; ?></center>
</td></tr><tr><td valign=top>


<!-----------open documents in your page script------------------>

 <?php
$test = substr("$p",0,1);
if (!ereg("../", $p) && substr($p,0,1)!="/"){
$x = "./arch/";
$x .= $p;
$fp = fopen($x, "r") or die("<center>No File selected</center>");
$len = filesize($x);
$contentsbefore = fread($fp, $len) or die("<center>No File selected</center>");
fclose($fp);
$temp = explode(".", $p);
if (eregi("txt", $temp[count($temp)-1])){
echo nl2br(ereg_replace("<", "&lt;", $contentsbefore));
} else {
echo $contentsbefore;
}} else {
echo "Don't try to open files you shouldn't.";
}
?>
<br>
<br>
<center><font size=2><!----leave this or your breaking the terms of use---->Copyright Nemohackers.com</font></center>

<!-----------END open documents in your page script-------------->

</td></tr></table>


<br>

<table width=90% cellpadding=5 border=1><tr><td>
<center>Archive Listing</center>
</td></tr><tr><td valign=top>

<!-------------Directory listing or arch------------------>


<div class="arch">
<center>
<TABLE width=100% cellpadding=3 cellspacing=0 border=0 class="arch"><TR> <TD valign=top width=100% colspan=3> <center>
<FONT face="Verdana, Helvetica" size="2">
Welcome to the archives. You can use the alphabet below to jump to the appropriate area.  Please upload texts.<br><br>
</td></tr><tr> <TD valign=top width=100% colspan=3> <center>
<a href="#01"><FONT face="Verdana, Helvetica" size="1">0</a> |
<a href="#11"><FONT face="Verdana, Helvetica" size="1">1</a> |
<a href="#21"><FONT face="Verdana, Helvetica" size="1">2</a> |
<a href="#31"><FONT face="Verdana, Helvetica" size="1">3</a> |
<a href="#41"><FONT face="Verdana, Helvetica" size="1">4</a> |
<a href="#51"><FONT face="Verdana, Helvetica" size="1">5</a> |
<a href="#61"><FONT face="Verdana, Helvetica" size="1">6</a> |
<a href="#71"><FONT face="Verdana, Helvetica" size="1">7</a> |
<a href="#81"><FONT face="Verdana, Helvetica" size="1">8</a> |
<a href="#91"><FONT face="Verdana, Helvetica" size="1">9</a> <br><br>
<a href="#a1"><FONT face="Verdana, Helvetica" size="1">A</a> |
<a href="#b1"><FONT face="Verdana, Helvetica" size="1">B</a> |
<a href="#c1"><FONT face="Verdana, Helvetica" size="1">C</a> |
<a href="#d1"><FONT face="Verdana, Helvetica" size="1">D</a> |
<a href="#e1"><FONT face="Verdana, Helvetica" size="1">E</a> |
<a href="#f1"><FONT face="Verdana, Helvetica" size="1">F</a> |
<a href="#g1"><FONT face="Verdana, Helvetica" size="1">G</a> |
<a href="#h1"><FONT face="Verdana, Helvetica" size="1">H</a> |
<a href="#i1"><FONT face="Verdana, Helvetica" size="1">I</a> |
<a href="#j1"><FONT face="Verdana, Helvetica" size="1">J</a> |
<a href="#k1"><FONT face="Verdana, Helvetica" size="1">K</a> |
<a href="#l1"><FONT face="Verdana, Helvetica" size="1">L</a> |
<a href="#m1"><FONT face="Verdana, Helvetica" size="1">M</a> |
<a href="#n1"><FONT face="Verdana, Helvetica" size="1">N</a> |
<a href="#o1"><FONT face="Verdana, Helvetica" size="1">O</a> |
<a href="#p1"><FONT face="Verdana, Helvetica" size="1">P</a> |
<a href="#q1"><FONT face="Verdana, Helvetica" size="1">Q</a> |
<a href="#r1"><FONT face="Verdana, Helvetica" size="1">R</a> <br>
<a href="#s1"><FONT face="Verdana, Helvetica" size="1">S</a> |
<a href="#t1"><FONT face="Verdana, Helvetica" size="1">T</a> |
<a href="#u1"><FONT face="Verdana, Helvetica" size="1">U</a> |
<a href="#v1"><FONT face="Verdana, Helvetica" size="1">V</a> |
<a href="#w1"><FONT face="Verdana, Helvetica" size="1">W</a> |
<a href="#x1"><FONT face="Verdana, Helvetica" size="1">X</a> |
<a href="#y1"><FONT face="Verdana, Helvetica" size="1">Y</a> |
<a href="#z1"><FONT face="Verdana, Helvetica" size="1">Z</a>   <br><br> </center>
</TD></TR>

<TD valign=top width=60%><b>
<FONT face="Verdana, Helvetica" color="white" size="2">Filename</B></TD><TD valign=top width=20%><B>
<FONT face="Verdana, Helvetica" color="white" size="2">Size</B></TD><TD valign=top width=20%><B>
<FONT face="Verdana, Helvetica" color="white" size="2">Date</B></TD></TR>
<?php
$shit = `ls arch`;
$shit = rawurlencode($shit);
$shit = eregi_replace("%0A", "þ", $shit);
$shit = explode("þ", $shit);
$num = count($shit);

for ($i=0; $i<$num-1; $i++){
$temp = $shit[$i];
$temp2 = $temp[0];
if (ucfirst($temp)!=$temp){
$temp = ucfirst($temp2).$temp."þ";
$shit[$i] = $temp;
}

}
sort($shit);
for ($i=0; $i<$num-1; $i++){

if ($shit[$i]!="" || $shit[$i]!=" "){
$temp = $shit[$i];
if ($temp[strlen($temp)-1]=="þ"){
$shit[$i] = substr($temp,1,-1);
}
$unixtime = filectime("arch/".urldecode($shit[$i]));
$date = date("m-d-Y", $unixtime);
$size = filesize("arch/".urldecode($shit[$i]));
$te = urldecode($shit[$i]);
$tee = $te[0];
$te2 = urldecode($shit[$i-1]);
$tee2 = $te2[0];

if (ucfirst($tee)!=ucfirst($tee2)){
echo "<tr><td colspan=3><FONT face=Verdana, Helvetica color=white size=2><a name=\"".ucfirst($tee)."1\"></a><b>$tee</b></font></td></tr>\n";
}

echo "<TR><TD valign=top width=60%><FONT face=Verdana, Helvetica color=white size=2><A HREF=\"nemoarchvies.php?p=$shit[$i]\">".rawurldecode($shit[$i])."</A>&nbsp;</TD><TD valign=top width=20%><FONT face=Verdana, Helvetica color=white size=2>$size</TD><TD valign=top width=20%><FONT face=Verdana, Helvetica color=white size=2>$date</td></TR>\n\n";
}
}
?>
</table>
<br>
<center><font size=2><!----leave this or your breaking the terms of use---->Copyright Nemohackers.com</font></center>
</div>
</td></tr></table>


<!--------------end directory listing of arch---------------->

</body>
</html>
