# THIS FILE DISPLAYS GUTS OF: Control Panel, Advanced Templates


&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow(qq%Miscellaneous Page Templates | <A HREF="$vars_config{CGIURL}/cp.cgi?ubb=templates_advanced_forums">Forum Templates</A> %, "4", "#FFFFFF", "#000000", "left", "1");

&HeaderRow("$vars_config{BBName} : Advanced Template Controls", "4", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("Set your preferred template for the corresponding page type.", "4", "#c9c9c9", "#000000", "left", "2");

foreach $key (keys %template_match) {

# do not include forum matches here
if ($key !~ /forum/) {
if ($key eq "profile") {
$Type = "Profile Pages";
}
elsif ($key eq "summary_page") {
$Type = "Forum Summary Page (Intro Page)";
}
elsif ($key eq "ubb_code") {
$Type = "UBB Code Definition Page";
}
elsif ($key eq "faq") {
$Type = "FAQ Page";
}
elsif ($key eq "email") {
$Type = "Emails";
}
elsif ($key eq "search") {
$Type = "Search Pages";
}
elsif ($key eq "private_message") {
$Type = "Private Message Pages";
}
elsif ($key eq "registration") {
$Type = "Registration Pages";
}  else {
$Type = "Transition Pages";
}

$TempDropDown = qq!<SELECT NAME="$key">!;
foreach $uno(@templates) {
($j, $k) = split(/\|\^\|/, $uno); chomp($k);
if ($template_match{$key} == $k) {
$TempDropDown .= qq!<OPTION value="$k" SELECTED>$j</OPTION>!;
}  else {
$TempDropDown .= qq!<OPTION value="$k">$j</OPTION>!;
}
}
$TempDropDown .= qq!</SELECT>!;

print<<THEHTML;

<tr bgcolor="#FFFFFF">
<td valign="top" width="50%">
<FONT SIZE="1" FACE="Verdana, Arial">
$Type
</FONT>
</td>
<td valign="top" align="center">
$TempDropDown
</td></tr>

THEHTML
}
}  #end keys


&TBB; #Table Border Bottom in cp_common.pl



&Submit("Update Template Selections");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;