<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 TRANSITIONAL//EN">
<HTML>
<HEAD>
<TITLE>[ nemo hackers ]</TITLE>
<?php require('meta.php'); ?>
<?php require('header.php'); ?>


<!--start the individual page-->







<TABLE BGCOLOR="#000000" BORDER="0" CELLPADDING="5" CELLSPACING="0" WIDTH="750"><TR>

<TD BGCOLOR="#000000" VALIGN="top" WIDTH="160">
<!-- corners -->

<TABLE BGCOLOR="#024070" BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="160">

<TR BGCOLOR=""><TD>
<TABLE BGCOLOR="#024070" BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="160">
<TR>
<TD WIDTH=3><IMG SRC="./images/tleftblue1agif.gif" BORDER=0></TD>
<TD BGCOLOR="#024070" WIDTH="154">
<CENTER><CENTER><b>Menu</b></CENTER></CENTER></TD>
<TD WIDTH=3><IMG SRC="./images/trightblue1agif.gif" BORDER=0></TD>
</TR>
</TABLE>
</TR>



<TR BGCOLOR="#1c1f22">

<TD WIDTH="160" BGCOLOR="#1c1f22" CELLPADDING="2">

<TABLE BORDER="0" CELLPADDING="4" CELLSPACING="0" WIDTH="100%">

<TR CLASS="small">

<TD BGCOLOR="#1C1F22" HEIGHT="426" VALIGN="top">

<CENTER>

    <?php require('menu.php'); ?>

</CENTER>











</TD></TR></TABLE>
<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="*">
<TR>
<TD WIDTH=3><IMG SRC="./images/bleftdgrey1agif.gif" BORDER=0></TD>
<TD WIDTH="754" BGCOLOR="1C1F22">
<TD WIDTH=3><IMG SRC="./images/brightdgrey1agif.gif" BORDER=0></TD>
</TR>
</TABLE>

</TD></TR></TABLE></TD>

<!------------eend left column--------------->

<!------------rright column--------------->

<TD BGCOLOR="#000000" VALIGN="top">

<TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="100%">

<TR VALIGN="top"><TD BGCOLOR="#000000">


<!------------------11111111111111111111111111------------------>

<!------------------11111111111111111111111111------------------>

<TABLE BGCOLOR="#000000" BORDER="0" CELLPADDING="0" CELLSPACING="1" WIDTH="100%">

<TR BGCOLOR="#000000">

<TD BGCOLOR="#000000">

<TABLE BGCOLOR="#024070" BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="*">
<TR>
<TD WIDTH=3><IMG SRC="./images/tleftblue1agif.gif" BORDER=0></TD>
<TD BGCOLOR="#024070" WIDTH="754">
<CENTER><B>About Nemohackers</B></CENTER></TD>
<TD WIDTH=3><IMG SRC="./images/trightblue1agif.gif" BORDER=0></TD>
</TR>
</TABLE>

</TD>

</TR>

<TR BGCOLOR=#24252f>

<TD>

<TABLE BORDER=0 CELLPADDING=4 CELLSPACING=0 WIDTH="100%">

<TR CLASS=small><TD BGCOLOR="#1C1F22">
<?php
if ($find){
	$search_directory = "arch"; //search directory
	if (!$sdep){
		$sdep = 600; // character searching depth
	}
	if (!$rpp){
		$rpp = 20; // Results Per Page
	}
	if (!$start){
		$start = 0;
	}
	$end = $start+$rpp;
	$dir = `ls $search_directory`;
	$file_names = explode("\n", $dir);
	$found_names = array();
	$x = 0;
	$hm = 0;
	$more = 0;
	for ($i=0; $i<count($file_names)-1; $i++){
		$fname = $search_directory."/".$file_names[$i];
		if ($sdep=="all"){
			$rthis = filesize($fname);
		} else {
			$rthis = $sdep;
		}		$fp = fopen($fname, "r") or die("couldnt open file");
		$buffer = fgets($fp, $sdep);
		fclose($fp);
		if (eregi($find, $buffer) || eregi($find, $file_names[$i])){
			if ($hm<$start){
				$hm++;
			} elseif ($hm==$end){
				$more = 1;
				break;
			} else {
				$found_names[$x] = "$file_names[$i]þ$buffer";
				$x++;
				$hm++;
			}
} else {
}
}
?>
<table width=100% border=0>
<tr>
<td align=center><font face=verdana size=2>Your Search For <?php echo $find;?>:
<?php
if ($start!=0){
?>
<a href="<?php echo $PHP_SELF;?>?find=<?php echo urlencode($find);?>&start=<?php echo $start-$rpp;?>&rpp=<?php echo $rpp;?>&sdep=<?php echo $sdep;?>">Previous <?php echo $rpp;?> Results</a>
<?php
} else {
echo "<font face=verdana size=2>No Previous Results</font>";
}
echo " - ";
if ($more!=0){
?>
<a href="<?php echo $PHP_SELF;?>?find=<?php echo urlencode($find);?>&start=<?php echo $start+$rpp;?>&rpp=<?php echo $rpp;?>&sdep=<?php echo $sdep;?>">Next <?php echo $rpp;?> Results</a>
<?php
} else {
echo "<font face=verdana size=2>No More Results</font>";
}
?></font></td>
</tr>
<tr>
<td align=left><font face=verdana size=2><a href=search.php?>New Search</a>&nbsp;&nbsp;&nbsp;&nbsp;Result Set: <?php echo $start+1;?> - <?php echo $start+count($found_names);?></font></td>
</tr>
<?php
for ($i=0; $i<count($found_names); $i++){
$link_parts = explode("þ", $found_names[$i]);
$file_name = $link_parts[0];
$text = $link_parts[1];
?>
<tr>
<td><font face=verdana size=2><b><?php echo $start+$i+1;?></b> - <a href="/archive.php?p=<?php echo rawurlencode($file_name);?>"><?php echo $file_name;?></a></font><br><blockquote><font size=2 face=verdana><?php echo ereg_replace("<", "&lt;", $text);?></font></blockquote></td>
</tr>
<?php
}
?>
</table>
<?php
} else {
?>
<form method=post action="<?php echo $PHP_SELF;?>">
<center>
<table width=70% border=0>
<tr>
<td colspan=2 align=center><br></td>
</tr>
<tr>
<td align=right><font face=verdana size=2>Search Term:</font></td>
<td><input size="15" type=text name=find  style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1"></td>
</tr>
<tr>
<td align=right><font face=verdana size=2>Results Per Page:</font></td>
<td><select name=rpp style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1">
<option value="10">10</option>
<option value="15">15</option>
<option value="20">20</option>
<option value="25">25</option>
<option value="50">50</option>
<option value="100">100</option>
<option value="100000">All Results On One Page</option>
</select></td>
</tr>
<tr>
<td align=right><font face=verdana size=2>Search Depth:</font></td>
<td>
<font size=-1>(Lower=faster/less acurate | Higher=slower/more acurate)</font>
<br>
<select name=sdep style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1">
<option value="100">100</option>
<option value="150">150</option>
<option value="200">200</option>
<option value="250">250</option>
<option value="500" selected>500</option>
<option value="1000">1000</option>
<option value="2000">2000</option>
<option value="5000">5000</option>
<option value="100000">Max</option>
</select></td>
</tr>
<tr>
<td>&nbsp;</td>
<td>
<br><input type=submit value="Search" style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1"></td>
</tr></table></form>
<?php
}
?>



</TD></TR>  </table>
</TD></TR>




<TR BGCOLOR=#515468>
<TD BGCOLOR="#024070"><CENTER><b>Search Web</b>
</CENTER></TD>
</TR>
<TR BGCOLOR=#24252f>
<TD><TABLE BORDER=0 CELLPADDING=4 CELLSPACING=0 WIDTH="100%">
<TR CLASS=small>
<TD BGCOLOR="#1C1F22">
                            <center>

             <br>


<table width=90% cellpadding=10><tr><td width=40% valign=top>

<!-------gooogle-------->
<font face=verdana, helvetica size=-1>
<FORM method=GET action=http://www.google.com/custom>
<b>What you looking for ?</b><br>
<INPUT TYPE=text name=q size=20 maxlength=255 value="" S style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1"><br>
<INPUT type=hidden name=cof VALUE="AH:center;AWFID:3ce9451f289f5def;"><br>
<b>Where to search?</b>
<input type=hidden name=domains value="elitehackers.com;nemohackers.com;hack3r.com;r-fx.org;r-fx.net;hackers.com;hackology.com;haqerz.com;hackersclub.com;blackcode.com;astalavista.box.sk;cracks.am"><br><input type=radio name=sitesearch value="" checked>
WWW <br><input type=radio name=sitesearch value="elitehackers.com">
elitehackers.com <br><input type=radio name=sitesearch value="nemohackers.com">
nemohackers.com <br><input type=radio name=sitesearch value="hack3r.com">
hack3r.com <br><input type=radio name=sitesearch value="r-fx.net">
r-fx.net<br><input type=radio name=sitesearch value="r-fx.org">
r-fx.org <br><input type=radio name=sitesearch value="hackers.com">
hackers.com <br><input type=radio name=sitesearch value="hackology.com">
hackology.com <br><input type=radio name=sitesearch value="haqerz.com">
haqerz.com <br><input type=radio name=sitesearch value="hackersclub.com">
hackersclub.com <br><input type=radio name=sitesearch value="blackcode.com">
blackcode.com <br><input type=radio name=sitesearch value="astalavista.box.sk">
astalavista.box.sk <br><input type=radio name=sitesearch value="cracks.am">
cracks.am <br><br><INPUT type=submit name=sa VALUE="Search" style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1"><br>
</FORM></center>
<!--------google-------->

</td><td width=60% valign=top>
<font face=verdana, helvetica size=-1>
<FORM METHOD=GET ACTION=http://astalavista.box.sk/cgi-bin/robot>
<b>Astalavista Search </b><br><INPUT TYPE=TEXT NAME=srch  style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1">
<INPUT TYPE=SUBMIT VALUE=Search style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1">
</FORM>
<br><br>

<FORM ACTION="http://service.bfast.com/bfast/click" >
<INPUT TYPE="hidden" NAME="bfsiteid" VALUE="38308374" >
<INPUT TYPE="hidden" NAME="bfpage" VALUE="sibstc07">
<INPUT TYPE="hidden" NAME="bfmid" VALUE="253985" >
<b>Keygens Search</b><br>
<input type="text" name="Keywords" value="" style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1">
<input type=button name="Submit" Value="Search" style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1">
<input type="hidden" name="Promo" value="befree"></form>

<br><br>

<FORM ACTION="http://www.cracks.am/s.x" METHOD="POST">
<b>Cracks.am Search </b><br>
<INPUT TYPE="text" NAME="KW" SIZE="19" MAXLENGTH="255" style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1">
<INPUT TYPE="Submit" VALUE="Search" style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1"><br>
<SELECT NAME="Type" style="background-color: #003366; background-attachment: scroll; font-family: Verdana, Arial, Helvetica, sans-serif; font-size: 10px; color: #FFFFFF; border-height: 2; text-decoration: none; font-weight: bold; border: 1 solid #000000; padding: 1"><OPTION VALUE="All">All of the Keywords</OPTION>
<OPTION VALUE="Any">Any of the Keywords</OPTION></SELECT>
</FORM>

</td></tr></table>


<br><br><br>




</TD>

</TR>
</TABLE>












































  

</TD>

</TR>
</TABLE>





    <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="*">
<TR>
<TD WIDTH=3><IMG SRC="./images/bleftdgrey1agif.gif" BORDER=0></TD>
<TD WIDTH="754" BGCOLOR="1C1F22">
<TD WIDTH=3><IMG SRC="./images/brightdgrey1agif.gif" BORDER=0></TD>
</TR>
</TABLE>

</TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE></TD></TR></TABLE>

</TD></TR></TABLE></TD></TR></TABLE>

<TABLE BGCOLOR=#000000 BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=750 HEIGHT=2>

<TR BGCOLOR="#024070" HEIGHT=2><TD BGCOLOR="#024070" HEIGHT=2></TD></TR></TABLE>

    <?php require('footer.php'); ?>

<BR>

