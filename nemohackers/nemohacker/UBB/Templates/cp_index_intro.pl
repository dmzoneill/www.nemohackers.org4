# THIS FILE DISPLAYS GUTS OF: Control Panel, Prune Intro

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow("$CurrentTab", "1", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("The UBB automatically builds the index used for searches, but it does not update the index to account for edited posts.  Thus, you may want to rebuild your index from time to time.  Note that for large boards, this can be a fairly intensive process.  Thus, you should only rebuild the index when necessary.  Your message board will not be accessible while the index rebuild is in progress.  Click on the button below to begin the index rebuilding process.", "1", "#FFFFFF", "#000000", "left", "2");


&TBB; #Table Border Bottom in cp_common.pl

&Submit("$CurrentTab");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;