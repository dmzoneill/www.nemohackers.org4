# THIS FILE DISPLAYS GUTS OF: Control Panel, Email Members Intro

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow("$CurrentTab", "2", "#5d7790", "#FFFFFF", "center", "2");

&RadioField ("Email Option", "email_option", "yes", "To email all of your members, or to email a filtered group within your membership, you can have the UBB create a list of email addresses OR have the UBB actually send the email.  Please note however that the UBB is not designed to handle any more than 200 emails at a time.  Thus, for large lists, we recommend that you simply create a list here and then export that list to a bulk email program.", "list_only", "list_only|Create email list only.%%send_email|Send email using UBB \(200 emails maximum\).");

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