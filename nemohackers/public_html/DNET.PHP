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

                      
					  

<CENTER><H4>Join the Elitehackers.com Distributed.net Subteam.</H4></CENTER>
<HR COLOR="#024070" SIZE="2" WIDTH="60%">
<FONT face="Verdana, Helvetica" color="white" size="2">
<P><U><H5>What is the Distributed.net Project?</H5></U></P>
It's a huge network of computers that compete in different projects (mainly cracking the RC5 encryption and computing OGR). It's legal, you could win a $10000 price but most importantly, you get stats every day.
<br>
<br>


After some time I formed Subteam VanitaS (VanitaS is Latin and means "insignificant" because I hadn't figured out a real name yet, it was a small subteam and I wasn't sure what I was going to do with it). Just before the end of the year 2000 I decided to break up the subteam and transform it into the EliteHackers.com Subteam. Within the Subteam you can see rankings between you and other people on this board.
<br>
<br>


It's a fun project and it's nice to compete with other teams and subteams to see which team has the most CPU power to "crack the code". The program runs at priority 0, what means it only uses your CPU's idle time: CPU time that would be wasted otherwise. A very frequently asked question is that if the idle time is used, is it bad for your CPU? No, only temperature changes or a too high temperature are bad for your CPU. The program will make sure that the temperature will not become to high and will keep running at the same temperature.

<br>
<br>
The OGR project also has a scientifical value, since OGR's have many applications including sensor placements for X-ray crystallography and radio astronomy. Golomb rulers can also play a significant role in combinatorics, coding theory and communications.
<br>
<br>
Also when you have acces to computers at
school, university or at work there's a huge advantage when installing the Distributed.net
OGR client because it can be installed totally hidden so that even a System Administrator
won't find it. You can find an how-to about installing clients at school, university or at work
here.</H5></U></P>


<P><U><H5>How do I join the Team?</H5></U></P>
<P>To join the Elitehackers.com Subteam you'll have to download a (obviously virus and trojan free) 
program (about 250kb). You can install it either that you can see what it does and how it's progressing 
or you can install it hidden: it will work on the project without you even seeing it.</P>
<P><a href="http://www.distributed.net/download/clients.html">Download the client here!</a>
<P><a href="./dnet/install.txt">Install Instructions can be found here</a>

<P><H5><U>Tweaking your settings</U></H5></P>
<P>[This is a part of the topics on how to install the Distributed.net client]<P>You will need to tweak the programs settings in order to be on the EliteHackers.com Subteam, first of all you will need to fill in subteam@elitehackers.com as your e-mailaddress. You can do that by going to configure (right click somewhere in the client and click on "configure") and then General Client Options (option 1), then Your Email Address (distributed.net ID) (again option 1).<P>After that you will have to set energy.keyserver.org as your keyserver by going to configure (return to the main configure menu first by using option 0 when you are in General Client Options), then Buffer and Buffer Update Options (option 2), then Keyserver <-> client connnectivity options (option 6), then (option 2) Automatically Select a Distributed.net Keyserver (set it to "no"), followed by Keyserver Host Name (option 3).<P>If Windows were to crash while the program is running (not because of the program of course), you'll want it to save it's progress in a file, so you don't lose all it's work. You can do this by again going to the main configure window, choosing for option 2 (Buffer and Buffer Update Options) followed by option 4 (Checkpoint Filename). You need to specify a name for the backup file here, I just called it backup. Hit enter after you've typed the filename (no extension needed).<P>There are two projects within Distributed.net: RC5 and OGR. Just about all the members of our subteam are working on OGR so that's where our subteam is competitive. You could also join our RC5 effort but you'd miss out on additional stats, and you wouldn't help our team as much as you would when running OGR.<P><B>To do only OGR:</B><BR>From configure go to option 2 (Buffers), then option 9 (load work precedence) and fill in:<BR>OGR,RC5=0,CSC=0,DES=0<P>To both RC5 and OGR:<BR>From configure go to option 2 (Buffers), then option 9 (load work precedence) and fill in:<BR>OGR,RC5,CSC=0,DES=0<P>If your computer is sometimes turned on but not connected to the Internet at certain times, you'd want to have a buffer so it can continue working while waiting for an Internet connection so it can update the buffers. Go back to the configure main menu and go to option 2 (Buffer and Buffer Update Options). Go to option 13 (Fetch Work Threshold).<P><B>If you are only running OGR fill in:</B><BR>RC5=0,OGR=10<P>If you are running both RC5 and OGR fill in:<BR>RC5=300,OGR=10<P>You can take a look at the other options to adjust it just the way you like, as long as your stick to the above settings. After that go back to the main menu and save the settings and exit.<P>If you want to change other settings I suggest downloading the tool <a href="http://www.pols.demon.nl/dnetc/koeeditor.exe">KoeEditor</a> (provided by [eNeRGy] of DPC - the english name for the program would be CowEditor). It is a tool to modify and create dnetc.ini files.

<P><H5><U>Contact addresses</H5></U>
<P>Main Contact Address, for ZeroVince (Leader) - <a href="mailto: subteam@elitehackers.com">subteam@elitehackers.com</A></P>



                <BR>
                 
              </TD>
            </TR>
          </TABLE>
        </TD>
      </TR>
    </TABLE>
    <?php require("includes/footer.php");?><BR>


