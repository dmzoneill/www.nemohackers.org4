# THIS FILE DISPLAYS GUTS OF: Control Panel, PM Settings Page

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow(qq%Optional fields are in <FONT COLOR="#5d7790">blue</FONT>.%, "2", "#FFFFFF", "#000000", "left", "1");

&HeaderRow("$vars_config{BBName} $CurrentTab", "2", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("Private Message Options", "2", "#c9c9c9", "#000000", "left", "2");

&HeaderRow("Your members can send each other private messages.  These messages are accessed in the member profile area.  This is not email.  It is communication that can only be viewed by the two parties involved- the sended of the message and the receiver.  If you enable this option, realize that you can still turn it off for individual members.<P>Also, if you do enable this option, indivudal members can opt out.", "2", "#FFFFFF", "#000000", "left", "1");

&RadioField ("Enable Private Messaging?", "feature", "yes", "You may disable this feature.", "$vars_pm{feature}", "on|Yes, permit all registered members to send private messages.%%leaders_only|Yes, but only Administrators and Moderators can receive messages.%%off|No, do not permit this feature to be used by anyone.");

&RadioField ("Allow UBB Code In Messages?", "ubb_code", "yes", "", "$vars_pm{ubb_code}", "on|Yes, permit all UBB Codes in private messages.%%images_off|Yes, but do not permit UBB Code images.%%off|No, do not permit any UBB Code.");

&RadioField ("Allow HTML in Messages?", "html", "yes", "", "$vars_pm{html}", "on|Yes, permit HTML in messages (not recommended!)%%off|No, do not permit HTML (recommended).");

&TBB; #Table Border Bottom in cp_common.pl

&Submit("Update $CurrentTab");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;