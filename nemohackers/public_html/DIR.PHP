
<div class="arch">

<TABLE cellpadding=0 cellspacing=0 border=0 class="arch">

<TR><TD ALIGN=LEFT><B>Filename</B></TD><TD ALIGN=CENTER colspan=3><B>Size</B> - <B>Date</B></TD></TR>



<?php



$shit = `ls arch`;



$shit = rawurlencode($shit);



$shit = eregi_replace("%0A", "þ", $shit);

$shit = explode("þ", $shit);

$num = count($shit);



for ($i=0; $i<$num-1; $i++){



if ($shit[$i]!="" || $shit[$i]!=" "){



$unixtime = filectime("arch/".urldecode($shit[$i]));

$date = date("m-d-Y", $unixtime); 

$size = filesize("arch/".urldecode($shit[$i]));



echo "<TR><TD ALIGN=LEFT><A HREF=\"http://www.r-fx.org/~nemo/archive.php?p=$shit[$i]\">".rawurldecode($shit[$i])."</A>&nbsp;</TD><TD ALIGN=RIGHT colspan=2>$size - $date</TD><TD ALIGN=RIGHT>&nbsp;&nbsp;</TD></TR>\n\n";



}



}



?>

</table></div>