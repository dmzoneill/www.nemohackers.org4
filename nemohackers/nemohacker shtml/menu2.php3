

<!-- Nemohackers SSI Menu. mail: fod@supersane.com / neiller@q3arena.com -->
<!-- www.nemohackers.com -->
<!-- Now uses PHP =) -->

<center>
<FONT FACE="verdana" SIZE="1">
<HR COLOR="#024070" SIZE="2" WIDTH="90%">
<FONT FACE="verdana" SIZE="1"><B>[[- Forum Members -]]</B></FONT><FONT FACE="verdana" SIZE="1">
<HR COLOR="#024070" SIZE="2" WIDTH="90%">
</FONT><FONT FACE="verdana" SIZE="1"></FONT>
<FONT COLOR="#515468">&raquo;</FONT> 
<A HREF="cgi-bin/ultimatebb.cgi?ubb=login">Login</a><br>
<FONT COLOR="#515468">&raquo;</FONT> 
<A HREF="cgi-bin/ultimatebb.cgi?ubb=agree">Registure</a><br>
<FONT COLOR="#515468">&raquo;</FONT> 
<A HREF="cgi-bin/ultimatebb.cgi?ubb=my_profile">Private messaging</a><br>
<FONT COLOR="#515468">&raquo;</FONT> 
<A HREF="cgi-bin/ultimatebb.cgi?ubb=get_daily">Todays new topics</a><br>
<FONT COLOR="#515468">&raquo;</FONT> 
<A HREF="cgi-bin/ultimatebb.cgi?ubb=search">Search ubb</a><br>
<FONT COLOR="#515468">&raquo;</FONT> 
<A HREF="cgi-bin/ultimatebb.cgi?ubb=whos_online">Whos online?</a><br>
<FONT COLOR="#515468">&raquo;</FONT> 
<A HREF="cgi-bin/ultimatebb.cgi?ubb=lost_password">Lost password</a><br>

<BR>

<!----newsletter------->
<CENTER><FONT FACE="verdana" SIZE="1">
<HR COLOR="#024070" SIZE="2" WIDTH="90%">
<FONT FACE="verdana" SIZE="1"><B>[[-  Newsletter -]]</B>
<HR COLOR="#024070" SIZE="2" WIDTH="90%">
<CENTER>
<TABLE WIDTH=95% BORDER=0 CELLSPACING=0>
<TR><TD VALIGN="top" WIDTH="100%">
<B CLASS="my"><center>
Sign up today to receive our low volume newsletter.<br>
<FORM ACTION="mail/subscribe.cgi" METHOD="POST">
<INPUT TYPE="RADIO" NAME="action" VALUE="subscribe" CHECKED>Subscribe<BR>
<INPUT TYPE="RADIO" NAME="action" VALUE="unsubscribe">Un-Subscribe<BR>
<CENTER>
<INPUT TYPE="TEXT" NAME="email" VALUE="your-email" SIZE=15 STYLE="background-color: #808080; color: #FFFFFF; background-image: url('images/cell.gif')">
<BR>
<INPUT TYPE="HIDDEN" NAME="datafile" VALUE="subscribe" STYLE="background-color: #808080; color: #FFFFFF; background-image: url('images/cell.gif')">
<INPUT TYPE="SUBMIT" VALUE="DO IT!" STYLE="background-color: #808080; color: #FFFFFF; background-image: url('images/cell.gif')">
</CENTER>
</FONT>
</FONT>
</FORM>
</TD></TR></TABLE>
<!-----end newsletter----->
<br><br>
<CENTER><FONT FACE="verdana" SIZE="1">
<HR COLOR="#024070" SIZE="2" WIDTH="90%">
<FONT FACE="verdana" SIZE="1"><B>[[-  Advanced Search -]]</B>
<HR COLOR="#024070" SIZE="2" WIDTH="90%">
<CENTER><br>
<br>
<FORM ACTION="search/ksearch.cgi" METHOD="GET" NAME="search">
<INPUT TYPE="text" NAME="terms" STYLE="background-color: #808080; color: #FFFFFF; background-image: url('images/cell.gif')"><br><INPUT TYPE="submit" VALUE="Search" STYLE="background-color: #808080; color: #FFFFFF; background-image: url('images/cell.gif')">
</FORM>
<br>
<!----
Better Search
<br>
<FORM ACTION="search/websearch.cgi" METHOD="GET" NAME="search" STYLE="background-color: #808080; color: #FFFFFF; background-image: url('images/cell.gif')">
<INPUT TYPE="text" NAME="terms"><br><INPUT TYPE="submit" VALUE="Search">
</form>
//---->
</center>
<?php
$ip = getenv("REMOTE_ADDR");
echo "Welcome $ip";
$browser = getenv("HTTP_USER_AGENT");
if (preg_match("/MSIE/i", $browser)); {
echo "Your using MSIE! Ick!";
} else if (preg_match("/Mozilla/i", $browser)); {
echo "Your using Mozilla/Netscape";
} else if (preg_match("/6/", $broswer)); {
echo "Your using MSIE 6! Ick!"; }
?>