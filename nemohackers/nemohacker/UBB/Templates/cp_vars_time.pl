# THIS FILE DISPLAYS GUTS OF: Control Panel, Email Settings Page



&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow(qq%Optional fields are in <FONT COLOR="#5d7790">blue</FONT>.%, "2", "#FFFFFF", "#000000", "left", "1");

&HeaderRow("$vars_config{BBName} $CurrentTab", "2", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("Date/Time Options", "2", "#c9c9c9", "#000000", "left", "2");

&HeaderRow("The UBB can display dates and times in a number of different formats.  Remember that the times listed are based on the location of your web server, which may be different than the time zone where you reside/work.  You can change the time zone displayed by using the Time Zone Offset field.  For instance, if you are on the East Coast of the US, but your server is on the West Coast of the US, you could use EST as your Time Zone to display, but you would have to offset the server time to reflect that \(by typing a 3 in the Time Zone Offset field, reflecting the 3 hours difference\).  If the Time Zone difference is negative, use a negative number \(as in -2\).<BR><BR>", "2", "#FFFFFF", "#000000", "left", "1");

&RegField ("Time Zone", "TimeZone", "", "20", "35", "The time of each posting is based on the time zone where your server is located.  If you want your users to know the time zone, provide it here \(e.g., ET, CT, PT, etc.\).  You may also leave this blank if you would prefer not to show a time zone.  You may type a different time zone than your server uses, but if you do so be sure to provide a time zone offset in the next field.", "$vars_time{TimeZone}");

&RegField ("Server Time Zone Offset", "TimeZoneOffset", "", "3", "4", "You can offset the time drawn from your web server.  For instance, if your server time is EST \(US\), but you want all time to reflect Pacific Time \(US\), you would have to offset your server time by placing the time zone difference in this field. (For this example, that would be -3.  You would place -3 in this field.\)  The default is for there to be no server time zone offset \(0\).", "$vars_time{TimeZoneOffset}");


&RadioField ("Date Format", "DateFormat", "yes", "European Format is DD-MM-YR, while US format is MM-DD-YR.  Expanded formats include full month name.", "$vars_time{DateFormat}", "US|US Format \(e.g., 04-25-98\)%%USX|Expanded US Format \(e.g., April 25, 1998\)%%Euro|European Format \(e.g., 25-04-98\)%%EuroX|Expanded European Format \(e.g., 25 April 1998\)");

&RadioField ("Time Format", "TimeFormat", "yes", "You can have time displayed in AM/PM format, or in 24-hour format.", "$vars_time{TimeFormat}", "AMPM|Use AM/PM time format.%%24HR|Use 24-Hour time format \(eg, 23:15\).");




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