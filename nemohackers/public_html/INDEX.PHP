<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 3.2//EN">

<?php require("includes/header.php");?>

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
				  
				  <?php require("includes/home.txt");?></FONT>
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
                  <FONT face="Verdana, Helvetica" color="white" size="1">
				  <?php require('includes/search.txt'); ?></FONT>
                </CENTER>
              </TD>
            </TR>
          </TABLE>
        </TD>
        <TD width="86%">
          <!-- News and development -->
          <TABLE border="1" bordercolor="#003366" cellspacing="0" cellpadding="4" width="*">
            <TR valign="top">
              <TD background="images/back.JPG" width="100%">
                <CENTER>
                  <FONT face="Verdana, Helvetica" color="white" size="2"><B>Nemohackers</B></FONT>
                </CENTER>
              </TD>
            </TR>
            <TR valign="top">
              <TD width="100%">
                <TABLE width="100%" border="0">
                  <TR>
                    <TD width="*" valign="top">
                      <FONT color="#ffffff" size="2"><FONT face="Verdana, Helvetica" size="3"><B>Annoncement</B><br>
                       <FONT size="2"><?php require('includes/announce.txt'); ?></FONT> 
                      <BR>                      </FONT>
                    </TD>
                    <TD width="202">
                      <DIV align="right">
          
                       <img src="./images/tuxtrek.gif" width="170" height="200">
                      </DIV>
                    </TD>
                  </TR>
                </TABLE>
                <B>The Latest from Nemohackers</B><BR>
                      <FONT face="Verdana, Helvetica" color="white" size="2">
                       <?php require('news/news.txt'); ?><BR>   <br>
<a href="http://www.r-fx.org/nemo-bin/newspro.cgi">Add news</a>
                      </FONT>                
                <BR>
                 
              </TD>
            </TR>
          </TABLE>
        </TD>
      </TR>
    </TABLE>
    <?php require("includes/footer.php");?><BR>


