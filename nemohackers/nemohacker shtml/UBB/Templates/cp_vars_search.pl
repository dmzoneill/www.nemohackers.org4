# THIS FILE DISPLAYS GUTS OF: Control Panel, Email Settings Page



&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow(qq%Optional fields are in <FONT COLOR="#5d7790">blue</FONT>.%, "2", "#FFFFFF", "#000000", "left", "1");

&HeaderRow("$vars_config{BBName} Search Settings", "2", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("Search Options", "2", "#c9c9c9", "#000000", "left", "2");

&HeaderRow("The UBB includes a built-in search engine that allows your visitors to search through the stored posts.  Searching can be a server-intensive process, however.  Thus, you may decide you do not want to allow your visitors to search at all.  The UBB uses index files for the search process.  There are two methods the UBB can use to store these index files- either as one large file for all forums, or as separate files for each forum.  There are pros and cons for each method- if you have many forums but not many posts overall, you may want to try the \"one index file\" approach.  You are not locked into either approach.  If you ever change your index file approach, however, you must recreate your index \(using the Index control panel feature\)- otherwise the index files the UBB uses to search will not be accurate and search results will be erroneous.", "2", "#FFFFFF", "#000000", "left", "1");

&RadioField ("Allow Searches?", "AllowSearch", "yes", "If you do not want your visitors to be able to search through your forums, make sure you turn this option off.  The search link will not appear if you have this option turned off.", "$vars_search{AllowSearch
}", "TRUE|Display/Allow Searches.%%FALSE|Disable Search Option.");


&RadioField ("Allow Searching of All Forums?", "AllowTotalSearch", "yes", "Searching through all forums at once can drain your server, though it is convenient for your users.  You can elect to turn off the ability to search through all forums at once, if you like.  Your users will still be able to search, but only one forum at a time.", "$vars_search{AllowTotalSearch
}", "TRUE|Allow search of all forums.%%FALSE|Do NOT allow search of all forums.");

&RadioField ("Index File Method", "IndexMethod", "yes", "If you have a board with a limited number of posts using one index file makes the most sense. However, you may want to have the index file stored as one file.  If you ever change this setting, you MUST recreate your index \(click on the Recreate Index link in your UBB control panel after you make the change\).", "$vars_search{IndexMethod}", "PERFORUM|Use index files for each forum.%%ONEFILE|Use one index file.");

&TBB; #Table Border Bottom in cp_common.pl

&Submit("Update Search Settings");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;