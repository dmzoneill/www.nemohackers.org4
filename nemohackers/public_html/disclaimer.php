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
                  <FONT face="Verdana, Helvetica" color="white" size="2"><B>Nemohackers Disclaimer</B></FONT>
                </CENTER>
              </TD>
            </TR>
            <TR valign="top">
              <TD width="100%">




<TABLE WIDTH="80%">
<TR>

  <TD WIDTH="25"><!-- Margin --></TD>

<TD>
<br>
<font face="verdana" size="2">
Nemohackers assumes no responsibility for errors or omissions in these materials. 

<br>
<br>
THESE MATERIALS ARE PROVIDED "AS IS" WITHOUT WARRANTY OF ANY KIND, EITHER
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT.

<br>
<br>
<font face="verdana" size="2">
Nemohackers further does not warrant the accuracy or completeness of the 
information, text, graphics, links or other items contained within these materials. 

<br>
<br>
<font face="verdana" size="2">
Nemohackers shall not be liable for any special, indirect, incidental, or 
consequential damages, which may result from the use of these materials. 
The information on this server is subject to change without notice and does not 
represent a commitment on the part of Nemohackers in the future.
  
</TD>

</TR>
</TABLE>

</TD>

                <BR>
                 
              </TD>
            </TR>
          </TABLE>
        </TD>
      </TR>
    </TABLE>
    <?php require("includes/footer.php");?><BR>

