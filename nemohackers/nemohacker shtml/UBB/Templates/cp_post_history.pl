# Control Panel, Update Post Histories

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

print<<the_explanation;
<center>
<table border="0" width="95%">
<TR><TD align="left">
<P><FONT SIZE="2" FACE="Verdana, Arial">
If you are upgrading from a version prior to UBB 6.0, you will need to create (update) your registered members posting histories.  The UBB uses these posting histories to allow for searching for posts by particular registered members.  Thus, unless these histories are created, searches for posts by particular members will not be accurate.
<P>
You may want to update these histories every so often as a maintenance procedure, but that is not required.  Your message board will not be available while this update is processed.
</FONT>
</TD></TR></TABLE>
</center>
the_explanation


&Submit("$vars_wordlets_cp{post_history}");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;