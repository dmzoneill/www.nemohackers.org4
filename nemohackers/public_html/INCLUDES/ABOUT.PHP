<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2//EN">



<?php



require("header.php");



?>



<TABLE border="0" width="100%">



      <TR valign="top">



        
    <TD width="14%"> 
      <TABLE border="1" bordercolor="#003366" cellspacing="0" cellpadding="2" width="83%">
        <TR valign="top">



              <TD background="../images/back.JPG" width="100%">



                <CENTER>



               <FONT face="Verdana, Helvetica" color="white" size="2"><B>Home</B></FONT>



                </CENTER>



              </TD>



            </TR>



            <TR valign="top">



              <TD width="70%">



           	<CENTER>

                  <FONT face="Verdana, Helvetica" color="white" size="1">

                  <?php



                    require("home.txt");



                    ?></FONT>



		</CENTER>

              </TD>



            </TR>



          </TABLE>



          <BR>



           



          
      <TABLE border="1" bordercolor="#003366" cellspacing="0" cellpadding="2" width="83%">
        <TR valign="top">



              <TD background="../images/back.JPG" width="70%">



                <CENTER>



              <FONT face="Verdana, Helvetica" color="white" size="2"><B>User Login</B></FONT>



                </CENTER>



              </TD>



            </TR>



            <TR valign="top">



              <TD width="70%">



              <?php require('login.php'); ?>
              </TD>



            </TR>



          </TABLE>



          <BR>



           



          
      <TABLE border="1" bordercolor="#003366" cellspacing="0" cellpadding="2" width="82%">
        <TR valign="top">



              <TD background="../images/back.JPG" width="70%">



                <CENTER>



            <FONT face="Verdana, Helvetica" color="white" size="2"><B>Search</B></FONT>



                </CENTER>



              </TD>



            </TR>



            <TR>



              <TD width="70%">



                <CENTER>



                  <FONT face="Verdana, Helvetica" color="white" size="1"><?php require('includes/search.txt'); ?></FONT>



                </CENTER>



              </TD>



            </TR>



          </TABLE>



        </TD>



        
    <TD width="86%"> 
      <!-- News and development -->
      <TABLE border="1" bordercolor="#003366" cellspacing="0" cellpadding="4" width="*">



            <TR valign="top">



              <TD  background="../images/back.JPG" width="100%">



                <CENTER>



                  <FONT face="Verdana, Helvetica" color="white" size="2"><B>About nemohackers</B></FONT>



                </CENTER>



              </TD>



            </TR>



            <TR valign="top">



              
          <TD width="*"> 
          
 
          <font color="#ffffff" size=2><FONT face="Verdana, Helvetica" size="3">
   	Some history about us.<br>
   	We started orgionally under the name, newbiesplace (www.newbiesplace.com), in September 2000, we the prime intention to 'assist newbies to their ultimate goal', or so we hoped. We had great plans for the site, but later that year, December sometime, we met a guy who goes by the alias "The Assasian".
      
      
      
 
      
      



                <BR>



                </FONT>



              </TD>



            </TR>



          </TABLE>



    </TABLE>



<?php require("footer.php");?><BR>








