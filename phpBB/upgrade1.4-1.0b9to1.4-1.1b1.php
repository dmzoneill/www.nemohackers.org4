<?php
/***************************************************************************
*                       upgrade1.4to1.4-1.0b9.php 
* Upgrade from phpBB 1.4 to phpBB 1.4 startreknl.com 1.0b9 - Installation
*
* 
****************************************************************************/
include('extention.inc');
include('functions.'.$phpEx);
 include('config.'.$phpEx);
require('upauth.'.$phpEx);
$pagetitle = $l_profile;
$pagetype = "Update Database";
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Strict//EN">
          <HTML>
          <HEAD>
          <TITLE>Upgrade from phpBB 1.4 startreknl.com 1.0b9 to phpBB 1.4 startreknl.com 1.1b1 - Installation</TITLE>
          </HEAD>
 <BODY BGCOLOR="<?php echo $bgcolor?>" TEXT="<?php echo $textcolor?>" LINK="#11C6BD" VLINK="#11C6BD">
  <H2 align="center">Upgrade from phpBB 1.4 startreknl.com 1.0b9 to phpBB 1.4 startreknl.com 1.1b1 - Installation</H2>
  	 <center>Selected database <?php echo $dbname;?>...<p>

<?php

//1) Add theme 1 field in themes table
$sql = "INSERT INTO themes VALUES ( '96', 'StarTrekNL.com green', '#000000', '#F5FFFF', '#305464', '#1A394E', '#000000', 'images/header-dark-ST.gif', 'images/new_topic-dark.jpg', 'images/reply-dark.jpg', '#E1FDFF', '#F5FFFF', '1', 'sans-serif', '1', '2', '-2', '+1', '95%', 'images/reply_locked-dark.jpg')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add theme 1 field to themes table in database.");}
else {echo "- theme 1 field has been created on themes table!";}

//2) Add theme 2 field in themes table
$sql = "INSERT INTO themes VALUES ( '97', 'StarTrekNL.com purple grey', '#000000', '#FFFFFF', '#333365', '#333333', '#000000', 'images/header-dark.jpg', 'images/new_topic-dark.jpg', 'images/reply-dark.jpg', '#C1C1C1', '#FFFFFF', '0', 'sans-serif', '1', '2', '-2', '+1', '95%', 'images/reply_locked-dark.jpg')"; 
if(!$result = mysql_query($sql, $db))
{die("- Could not add theme 2 field to themes table in database.");}
else {echo "- theme 2 field has been created on themes table!";}

//3) Add theme 3 field in themes table
$sql = "INSERT INTO themes VALUES ( '98', 'StarTrekNL.com blue', '#000000', '#F2FBFF', '#001156', '#001145', '#000000', 'images/header-dark.jpg', 'images/new_topic-dark.jpg', 'images/reply-dark.jpg', '#C2CAEF', '#F2FBFF', '0', 'sans-serif', '1', '2', '-2', '+1', '95%', 'images/reply_locked-dark.jpg')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add theme 3 field to themes table in database.");}
else {echo "- theme 3 field has been created on themes table!";}

//4) Add theme 4 field in themes table
$sql = "INSERT INTO themes VALUES ( '7', 'StarTrekNL.com red', '#000000', '#FFD4CB', '#FF7B61', '#FF5F3F', '#000000', 'images/header-dark.jpg', 'images/new_topic-dark.jpg', 'images/reply-dark.jpg', '#FFCFC5', '#FFD4CB', '0', 'sans-serif', '1', '2', '-2', '+1', '95%', 'images/reply_locked-dark.jpg')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add theme 4 field to themes table in database.");}
else {echo "- theme 4 field has been created on themes table!";}

//5) Add smile 1 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '101', ':)1', 'icon1.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 1 field to smiles table in database.");}
else {echo "- smile 1 field has been created on smiles table!";}

//6) Add smile 2 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '102', ':)2', 'icon2.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 2 field to smiles table in database.");}
else {echo "- smile 2 field has been created on smiles table!";}

//7) Add smile 3 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '103', ':)3', 'icon3.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 3 field to smiles table in database.");}
else {echo "- smile 3 field has been created on smiles table!";}

//8) Add smile 4 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '104', ':)4', 'icon4.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 4 field to smiles table in database.");}
else {echo "- smile 4 field has been created on smiles table!";}

//9) Add smile 5 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '105', ':)5', 'icon5.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 5 field to smiles table in database.");}
else {echo "- smile 5 field has been created on smiles table!";}

//10) Add smile 6 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '106', ':)6', 'icon6.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 6 field to smiles table in database.");}
else {echo "- smile 6 field has been created on smiles table!";}

//11) Add smile 7 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '107', ':)7', 'icon7.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 7 field to smiles table in database.");}
else {echo "- smile 7 field has been created on smiles table!";}

//12) Add smile 8 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '108', ':)8', 'icon8.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 8 field to smiles table in database.");}
else {echo "- smile 8 field has been created on smiles table!";}

//13) Add smile 9 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '109', ':)9', 'icon9.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 9 field to smiles table in database.");}
else {echo "- smile 9 field has been created on smiles table!";}

//14) Add smile 10 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '110', ':)10', 'icon10.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 10 field to smiles table in database.");}
else {echo "- smile 10 field has been created on smiles table!";}

//15) Add smile 11 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '111', ':)11', 'icon11.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 11 field to smiles table in database.");}
else {echo "- smile 11 field has been created on smiles table!";}

//16) Add smile 12 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '112', ':)12', 'icon12.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 12 field to smiles table in database.");}
else {echo "- smile 12 field has been created on smiles table!";}

//17) Add smile 13 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '113', ':)13', 'icon13.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 13 field to smiles table in database.");}
else {echo "- smile 13 field has been created on smiles table!";}

//18) Add smile 14 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '114', ':)14', 'icon14.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 1 field to smiles table in database.");}
else {echo "- smile 1 field has been created on smiles table!";}

//19) Add smile 15 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '115', ':)15', 'icon15.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 15 field to smiles table in database.");}
else {echo "- smile 15 field has been created on smiles table!";}

//20) Add smile 16 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '116', ':)16', 'icon16.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 16 field to smiles table in database.");}
else {echo "- smile 16 field has been created on smiles table!";}

//21) Add smile 17 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '117', ':)17', 'icon17.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 17 field to smiles table in database.");}
else {echo "- smile 17 field has been created on smiles table!";}

//22) Add smile 18 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '118', ':)18', 'icon18.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 18 field to smiles table in database.");}
else {echo "- smile 18 field has been created on smiles table!";}

//23) Add smile 19 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '119', ':)19', 'icon19.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 19 field to smiles table in database.");}
else {echo "- smile 19 field has been created on smiles table!";}

//24) Add smile 20 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '120', ':)20', 'icon20.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 20 field to smiles table in database.");}
else {echo "- smile 20 field has been created on smiles table!";}

//25) Add smile 21 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '121', ':)21', 'icon21.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 21 field to smiles table in database.");}
else {echo "- smile 21 field has been created on smiles table!";}

//26) Add smile 22 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '122', ':)22', 'icon22.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 22 field to smiles table in database.");}
else {echo "- smile 22 field has been created on smiles table!";}

//27) Add smile 23 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '123', ':)23', 'icon23.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 23 field to smiles table in database.");}
else {echo "- smile 23 field has been created on smiles table!";}

//28) Add smile 24 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '124', ':)24', 'icon24.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 24 field to smiles table in database.");}
else {echo "- smile 24 field has been created on smiles table!";}

//29) Add smile 25 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '125', ':)25', 'icon25.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 25 field to smiles table in database.");}
else {echo "- smile 25 field has been created on smiles table!";}

//30) Add smile 26 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '126', ':)26', 'icon26.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 26 field to smiles table in database.");}
else {echo "- smile 26 field has been created on smiles table!";}

//31) Add smile 27 field in smiles table
$sql = "INSERT INTO smiles VALUES ( '127', ':)27', 'icon27.gif', '')";
if(!$result = mysql_query($sql, $db))
{die("- Could not add smile 27 field to smiles table in database.");}
else {echo "- smile 27 field has been created on smiles table!";}


			 


		 if(!$result = mysql_query($sql, $db)) {
		    error_die("Congratulations! you Upgrade to phpBB 1.4 startreknl.com 1.1b1<br>And make sure not to call it a second time and please Delete the files (install.php, upgrade1.4to1.4-1.1b1.php, upgrade1.4-1.0b9to1.4-1.1b1.php) !!!");
		 }
		else {
		   error_die("Congratulations! you Upgrade to phpBB 1.4 startreknl.com 1.1b1<br>And make sure not to call it a second time and please Delete the files (install.php, upgrade1.4to1.4-1.1b1.php, upgrade1.4-1.0b9to1.4-1.1b1.php) !!!");

		}


?></center>
</BODY>
</HTML>