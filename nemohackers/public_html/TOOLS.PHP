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
                  <FONT face="Verdana, Helvetica" color="white" size="2"><B>Online Tools</B></FONT>
                </CENTER>
             </TD>
            </TR>
            <TR valign="top">
         <TD width="100%"> 
          
     <FONT face="Verdana, Helvetica" color="white" size="2">
                     We now have so many online tools, we had to make a seperate page for them, 
                     as there were too many to fit on the index page. Please feel free to post suggestions
                     etc, on our <a href="http://forum.nemohackers.com">forum.</a>
            <br><br>
          
          <table width=* border=0>
          <tr>
          <td width=33%>
		   <FONT face="Verdana, Helvetica" color="white" size="2">
	  <a href="tools/scan.php">Port Scanner</a> - Scan for open ports on a host
	  </td>
	  <td width=33%>
	   <FONT face="Verdana, Helvetica" color="white" size="2">
	  <a href="tools/icq.php">Icq Bomber</a> - Floods a users ICQ with 'x' amount of messages.
	  </td>
	  </tr>
	   <tr>
          <td width=33%>
		   <FONT face="Verdana, Helvetica" color="white" size="2">
	  <a href="tools/emailip.php">Email IP</a> - Email a victim, and your replied with their IP address.
	  </td>
	  <td width=33%>
	   <FONT face="Verdana, Helvetica" color="white" size="2">
	  <a href="#">Mail Bomber - DISABLED</a> - Email a victim 'x' amount of messages.
	  </td>
	  </tr>
	   <tr>
          <td width=33%>
		   <FONT face="Verdana, Helvetica" color="white" size="2">
	  <a href="#">Mail Bomber 2 - DISABLED</a> - Mails a victim with your subject splitted up letter by letter.
	  </td>
	  <td width=33%>
	   <FONT face="Verdana, Helvetica" color="white" size="2">
	  <a href="tools/resolve.php">Resolver</a> - Resolve an IP to Host, or vicer versa.
	  </td>
	  </tr>
	  	  <tr>
          <td width=33%>
		   <FONT face="Verdana, Helvetica" color="white" size="2">
	  <a href="tools/anon.php">Anonymous Surfer</a> - Surf the web anonymously.
	  </td>
	  <td width=33%>
	   <FONT face="Verdana, Helvetica" color="white" size="2">
	  <a href="tools/email.php">Anonymous Mail</a> - Send anonymous Emails.
	  </td>
	  </tr>
	    </table>
	    <br>
	    <center>
	    
	    <font size=1>Please Note that we take no responsibily for your actions with these tools.</font>

		</center>


                <BR>







                </FONT>







              </TD>







            </TR>







          </TABLE>






    </TABLE>







<?php require("includes/footer.php");?><BR>

















