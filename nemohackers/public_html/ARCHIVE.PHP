<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2//EN">



<?php



require("includes/header.php");



?>




              



          <TABLE border="1" bordercolor="#003366" cellspacing="0" cellpadding="2" width="100%">



            <TR valign="top">



            <TD width="100%">



          <TABLE border="1" bordercolor="#003366" cellspacing="0" cellpadding="4" width="100%">



            <TR valign="top">



              <TD background="images/back.JPG" width="100%">



                <CENTER>



                  <FONT face="Verdana, Helvetica" color="white" size="2"><B>Search</B></FONT>



                </CENTER>



              </TD>



            </TR>



            <TR valign="top">



              <TD width="100%">



                <CENTER>



                  <FONT face="Verdana, Helvetica" size="2"><B>Search Nemohackers: &nbsp;&nbsp; <INPUT type="text" name="search" size="20" maxlength="50">&nbsp; <INPUT type="submit" value="Search">



                  <BR>



                  </B></FONT>



                </CENTER>



              </TD>



            </TR>



          </TABLE>



          <BR>



           <!-- News and development --> 



          <TABLE border="1" bordercolor="#003366" cellspacing="0" cellpadding="4" width="100%">



            <TR valign="top">



              

          <TD background="images/back.JPG" width="100%">
		  
		  <center><b>
	<?php echo rawurldecode($p);?>
	</b>
	</center>
</td></tr><tr><td width="100%">
		  
		  
		  <FONT face="Verdana, Helvetica" color="white" size="2">
		  <?php

$test = substr("$p",0,1);

if (!ereg("../", $p) && substr($p,0,1)!="/"){

$x = "arch/";

$x .= $p;

$fp = fopen($x, "r") or die("couldnt open file");



$len = filesize($x);



$contentsbefore = fread($fp, $len) or die("couldnt read file");



fclose($fp);



$temp = explode(".", $p);



if (eregi("txt", $temp[count($temp)-1])){

echo nl2br(ereg_replace("<", "&lt;", $contentsbefore));

} else {

echo $contentsbefore;

}





} else {



echo "Don't try to open files you shouldn't.";



}





?></TD>

            </TR>

          </TABLE>

        </TD>

      </TR>

    </TABLE>







<?php require("includes/footer.php");?><BR>











