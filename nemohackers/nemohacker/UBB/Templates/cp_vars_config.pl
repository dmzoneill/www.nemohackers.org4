# THIS FILE DISPLAYS GUTS OF: Control Panel, Config Settings Page



&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow("$vars_config{BBName} Configuration Settings", "2", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("Primary Configuration Options", "2", "#c9c9c9", "#000000", "left", "2");

&HeaderRow("This page contains the most critical settings for your message board.  If these settings are not correct, your message board will not function properly.  Thus, be very careful whenever making any changes!", "2", "#FFFFFF", "#000000", "left", "1");


&RegField ("Absolute Path: CGI Directory", "CGIPath", "yes", "45", "120", "", "$vars_config{CGIPath}");
&RegField ("Absolute Path: Graphics (NonCGI) Directory", "NonCGIPath", "yes", "45", "120", "", "$vars_config{NonCGIPath}");
&RegField ("Absolute Path: Members Directory", "MembersPath", "yes", "45", "120", "", "$vars_config{MembersPath}");
&RegField ("Absolute Path: Variable Files Directory", "VariablesPath", "yes", "45", "120", "This should be the same as your CGI Directory absolute path UNLESS you cannot keep writeable files in that directory.  In that case, place your variable files \(vars_config.cgi, vars_display.cgi, vars_misc.cgi, etc.\) in a separate directory that can be written to.  If possible, place this directory somewhere that is not accessible from the web.", "$vars_config{VariablesPath}");
&RegField ("URL: CGI Directory", "CGIURL", "yes", "45", "120", "", "$vars_config{CGIURL}");
&RegField ("URL: Graphics \(NonCGI\) Directory", "NonCGIURL", "yes", "45", "120", "", "$vars_config{NonCGIURL}");
&RegField ("Message Board Name", "BBName", "yes", "45", "120", "", "$vars_config{BBName}");
&TBB; #Table Border Bottom in cp_common.pl

&Submit("Update Configuration Settings");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;