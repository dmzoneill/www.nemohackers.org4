# THIS FILE DISPLAYS GUTS OF: Control Panel, Import UBB5 Archives

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow("$CurrentTab", "1", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("If you are upgrading from UBB5 to UBB6, you may have established archives in UBB5.  UBB6 does not support archives in the same manner as UBB5.  Thus, you need to import your old archives in order to access them in UBB6.
<P>
Note that UBB6 does not actually call these archives.  They are instead imported to become read-only forums.  A new category will be created called \"Our Archives\" and all old archives will be added as forum in that category.  You can change that category name later.<P>Click on the button below to begin the archive import process.", "1", "#FFFFFF", "#000000", "left", "2");

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