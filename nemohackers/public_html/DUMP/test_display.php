<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2//EN">



<?php



require("includes/header.php");



?>



<TABLE border="0" width="100%">



      <TR valign="top">



        
    <TD width="14%"> 
      <TABLE border="1" bordercolor="#003366" cellspacing="0" cellpadding="2" width="83%">
        <TR valign="top">



              <TD background="images/back.JPG" width="100%">



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



                    require("includes/home.txt");



                    ?></FONT>



		</CENTER>

              </TD>



            </TR>



          </TABLE>



          <BR>



           



          
      <TABLE border="1" bordercolor="#003366" cellspacing="0" cellpadding="2" width="83%">
        <TR valign="top">



              <TD background="images/back.JPG" width="70%">



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



              <TD background="images/back.JPG" width="70%">



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



              <TD  background="images/back.JPG" width="100%">



                <CENTER>



                  <FONT face="Verdana, Helvetica" color="white" size="2"><B>Examination</B></FONT>



                </CENTER>



              </TD>



            </TR>



            <TR valign="top">



              
          <TD width="100%"> 
          
          
          <font color="#ffffff" size=2><FONT face="Verdana, Helvetica" size="3">

  
       



                <BR>



                </FONT>



              </TD>



            </TR>



          </TABLE>



    </TABLE>



<?php require("includes/footer.php");?><BR>








