<?php

// PHP Connect Four.
// Written by D.A.
// Lookout.ie
// news | entertainment | hosting | design | translation | and more...
// http://www.lookout.ie
//Code provided free of charge from Lookout.ie - please ensure you place
//a link to lookout.ie on your site if you use this code.


if ($start_game == "yes")
{
//Initialize
$a1 = 0;
$a2 = 0;
$a3 = 0;
$a4 = 0;
$a5 = 0;
$a6 = 0;

$b1 = 0;
$b2 = 0;
$b3 = 0;
$b4 = 0;
$b5 = 0;
$b6 = 0;

$c1 = 0;
$c2 = 0;
$c3 = 0;
$c4 = 0;
$c5 = 0;
$c6 = 0;

$d1 = 0;
$d2 = 0;
$d3 = 0;
$d4 = 0;
$d5 = 0;
$d6 = 0;

$e1 = 0;
$e2 = 0;
$e3 = 0;
$e4 = 0;
$e5 = 0;
$e6 = 0;

$f1 = 0;
$f2 = 0;
$f3 = 0;
$f4 = 0;
$f5 = 0;
$f6 = 0;

$player=1;

}
else
{
$player = (++$player > 2) ? 1 : 2;
}

if($a1 > 0 && $b1 < 1)
{
$b1 = $a1;
$a1 = 0;
}
if($b1 > 0 && $c1 < 1)
{
$c1 = $b1;
$b1 = 0;
}
if($c1 > 0 && $d1 < 1)
{
$d1 = $c1;
$c1 = 0;
}
if($d1 > 0 && $e1 == 0)
{
$e1 = $d1;
$d1 = 0;
}
if($e1 > 0 && $f1 == 0)
{
$f1 = $e1;
$e1 = 0;
}
if($a2 > 0 && $b2 < 1)
{
$b2 = $a2;
$a2 = 0;
}
if($b2 > 0 && $c2 < 1)
{
$c2 = $b2;
$b2 = 0;
}
if($c2 > 0 && $d2 < 1)
{
$d2 = $c2;
$c2 = 0;
}
if($d2 > 0 && $e2 == 0)
{
$e2 = $d2;
$d2 = 0;
}
if($e2 > 0 && $f2 == 0)
{
$f2 = $e2;
$e2 = 0;
}
if($a3 > 0 && $b3 < 1)
{
$b3 = $a3;
$a3 = 0;
}
if($b3 > 0 && $c3 < 1)
{
$c3 = $b3;
$b3 = 0;
}
if($c3 > 0 && $d3 < 1)
{
$d3 = $c3;
$c3 = 0;
}
if($d3 > 0 && $e3 == 0)
{
$e3 = $d3;
$d3 = 0;
}
if($e3 > 0 && $f3 == 0)
{
$f3 = $e3;
$e3 = 0;
}
if($a4 > 0 && $b4 < 1)
{
$b4 = $a4;
$a4 = 0;
}
if($b4 > 0 && $c4 < 1)
{
$c4 = $b4;
$b4 = 0;
}
if($c4 > 0 && $d4 < 1)
{
$d4 = $c4;
$c4 = 0;
}
if($d4 > 0 && $e4 == 0)
{
$e4 = $d4;
$d4 = 0;
}
if($e4 > 0 && $f4 == 0)
{
$f4 = $e4;
$e4 = 0;
}
if($a5 > 0 && $b5 < 1)
{
$b5 = $a5;
$a5 = 0;
}
if($b5 > 0 && $c5 < 1)
{
$c5 = $b5;
$b5 = 0;
}
if($c5 > 0 && $d5 < 1)
{
$d5 = $c5;
$c5 = 0;
}
if($d5 > 0 && $e5 == 0)
{
$e5 = $d5;
$d5 = 0;
}
if($e5 > 0 && $f5 == 0)
{
$f5 = $e5;
$e5 = 0;
}
if($a6 > 0 && $b6 < 1)
{
$b6 = $a6;
$a6 = 0;
}
if($b6 > 0 && $c6 < 1)
{
$c6 = $b6;
$b6 = 0;
}
if($c6 > 0 && $d6 < 1)
{
$d6 = $c6;
$c6 = 0;
}
if($d6 > 0 && $e6 == 0)
{
$e6 = $d6;
$d6 = 0;
}
if($e6 > 0 && $f6 == 0)
{
$f6 = $e6;
$e6 = 0;
}


$board = array($a1,$a2,$a3,$a4,$a5,$a6,$b1,$b2,$b3,$b4,$b5,

$b6,$c1,$c2,$c3,$c4,$c5,$c6,$d1,$d2,$d3,$d4,$d5,$d
,$e1,$e2
,$e3,$e4,$e5,$e6,$f1,$f2,$f3,$f4,$f5,$f6);



function draw_board($id,$p,$player,$column)
{




switch ($p[$id])
{
case 0: //Blank

$p[$id]=$player;
$url = "<a href=\"index.php3?start_game=no&";
$url .= "a1=$p[0]&a2=$p[1]&a3=$p[2]&a4=$p[3]&a5=$p[4]&a6=$p[5]&";
$url .= "b1=$p[6]&b2=$p[7]&b3=$p[8]&b4=$p[9]&b5=$p[10]&b6=$p[11]&";
$url .= "c1=$p[12]&c2=$p[13]&c3=$p[14]&c4=$p[15]&c5=$p[16]&c6=$p[17]&";
$url .= "d1=$p[18]&d2=$p[19]&d3=$p[20]&d4=$p[21]&d5=$p[22]&d6=$p[23]&";
$url .= "e1=$p[24]&e2=$p[25]&e3=$p[26]&e4=$p[27]&e5=$p[28]&e6=$p[29]&";
$url .= "f1=$p[30]&f2=$p[31]&f3=$p[32]&f4=$p[33]&f5=$p[34]&f6=$p[35]&";
$url .= "player=$player&column=$column";
$url .= "\">";
$url .= "<img src=\"blank.gif\" width=64 height=64 border=0></a>";
print $url;
break;
case 1: //Red
print "<img src=\"red.gif\" border=0>";
break;
case 2: //Blue
print "<img src=\"blue.gif\" border=0>";
break;
default:
print "<img src=\"blank.gif\" border=0>";
break;
}
}
?>

<html>
<title>Connect Four</title>
<body>

<center>
<font face="Verdana, Arial, Helvetica, sans-serif" color="#00FF00">
<b><i><font color="#000066">Connect 4 <br>
</font></i></b></font><br>
<br>
<table width="350" border="1" cellspacing="0" cellpadding="0">
<tr>
<td><? draw_board(0,$board,$player,1) ?></td>
<td><? draw_board(1,$board,$player,2) ?></td>
<td><? draw_board(2,$board,$player,3) ?></td>
<td><? draw_board(3,$board,$player,4) ?></td>
<td><? draw_board(4,$board,$player,5) ?></td>
<td><? draw_board(5,$board,$player,5) ?></td>
</tr>
<tr>
<td><? draw_board(6,$board,$player,1) ?></td>
<td><? draw_board(7,$board,$player,2) ?></td>
<td><? draw_board(8,$board,$player,3) ?></td>
<td><? draw_board(9,$board,$player,4) ?></td>
<td><? draw_board(10,$board,$player,5) ?></td>
<td><? draw_board(11,$board,$player,6) ?></td>
</tr>
<tr>
<td><? draw_board(12,$board,$player,1) ?></td>
<td><? draw_board(13,$board,$player,2) ?></td>
<td><? draw_board(14,$board,$player,3) ?></td>
<td><? draw_board(15,$board,$player,4) ?></td>
<td><? draw_board(16,$board,$player,5) ?></td>
<td><? draw_board(17,$board,$player,6) ?></td>
</tr>
<tr>
<td><? draw_board(18,$board,$player,1) ?></td>
<td><? draw_board(19,$board,$player,2) ?></td>
<td><? draw_board(20,$board,$player,3) ?></td>
<td><? draw_board(21,$board,$player,4) ?></td>
<td><? draw_board(22,$board,$player,5) ?></td>
<td><? draw_board(23,$board,$player,6) ?></td>
</tr>
<tr>
<td><? draw_board(24,$board,$player,1) ?></td>
<td><? draw_board(25,$board,$player,2) ?></td>
<td><? draw_board(26,$board,$player,3) ?></td>
<td><? draw_board(27,$board,$player,4) ?></td>
<td><? draw_board(28,$board,$player,5) ?></td>
<td><? draw_board(29,$board,$player,6) ?></td>
</tr>
<tr>
<td><? draw_board(30,$board,$player,1) ?></td>
<td><? draw_board(31,$board,$player,2) ?></td>
<td><? draw_board(32,$board,$player,3) ?></td>
<td><? draw_board(33,$board,$player,4) ?></td>
<td><? draw_board(34,$board,$player,5) ?></td>
<td><? draw_board(35,$board,$player,6) ?></td>
</tr>
</table>
</center>
<div align="center"><br>
<a href="index.php3?start_game=yes">New Game</a><br>
<br>
Code by <a href="http://www.lookout.ie">Lookout.ie</a></div>
</body>
</html>

