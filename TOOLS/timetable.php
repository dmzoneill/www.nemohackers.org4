<?php

$date = exec("date");

if(preg_match("/fri/i", $date)) {
echo("<h2>Week A:</h2>");
echo("<table width=50%><tr><td bgcolor=#6675FF>History</td>");
echo("<td>Science</td><td bgcolor=#6675FF>Dance</td>");
echo("<td>English</td><td bgcolor=#6675FF>Food</td>");
}

?>