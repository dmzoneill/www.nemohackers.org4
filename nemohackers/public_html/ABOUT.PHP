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
                  <FONT face="Verdana, Helvetica" color="white" size="1"><?php







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
           <!-- News and development -->
          <TABLE border="1" bordercolor="#003366" cellspacing="0" cellpadding="4" width="*">
            <TR valign="top">
              <TD background="images/back.JPG" width="100%">
                <CENTER>
                  <FONT face="Verdana, Helvetica" color="white" size="2"><B>About Nemohackers</B></FONT>
                </CENTER>
              </TD>
            </TR>
            <TR valign="top">
              <TD width="100%">
                <TABLE width="100%" border="0">
                  <TR>
                    <TD width="*" valign="top">
                <BR>
                 <FONT face="verdana" size="2">Some history about us.<BR>
                 We started orgionally under the name, newbiesplace (www.newbiesplace.com), in September 2000, with the prime intention to 'assist newbies to their ultimate goal', or so we hoped. We
                had great plans for the site, but later that year, December sometime, we met a guy who goes by the alias "The Assasian". He took an instant disliking to the site and us, so deceided
                to take his opinions to the higghest level and snitch on us to our hosts and domain name provider. He basically informed them that we were breaking their code of conduct with having
                'hacking' material on our site, and so all our contracts were immeadiatly terminated. Thus bringing the end to <B>newbiesplace</B>.<BR><br>
<font face="verdana" size="2">
                 It took us about a month to start again, this time under the name, <B>nemohackers</B>, (Nemo being latin for 'nobody'). We decided this time to do it right, and we did, having a
                domain name contract, which could not be terminated, and a host also which was reliable. This was the case up and till about 2 months ago. Our server (hosted by <A href=
                "www.r-fx.net">r-fx.net</A>) unfortually crashed due to insuffiant hdd space, and there was no money to repair so once again the site was down.<BR>
<br>
              </TD>
                    <TD width="250">
                      <DIV align="right">
                        <IMG src="images/tuxsit-confused.gif" width="200" height="253">
                      </DIV>
                    </TD>
                  </TR>
                </TABLE>
                <BR>
                 
              </TD>
            </TR>
          </TABLE>
        </TD>
      </TR>
    </TABLE>
    <?php require("includes/footer.php");?><BR>


