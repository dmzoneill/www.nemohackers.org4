# THIS FILE DISPLAYS GUTS OF: Control Panel, Prune Intro

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow("$CurrentTab", "2", "#5d7790", "#FFFFFF", "center", "2");

&RadioField ("Prune Option", "prune_option", "yes", "You may prune (delete) multiple posts based on certain criteria.", "DATE", "DATE|Prune by date.%%USER|Prune all posts by a registered member.");

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