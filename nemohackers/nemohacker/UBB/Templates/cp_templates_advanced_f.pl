# THIS FILE DISPLAYS GUTS OF: Control Panel, Advanced Templates


&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow(qq%<A HREF="$vars_config{CGIURL}/cp.cgi?ubb=templates_advanced">Miscellaneous Page Templates</A> | Forum Templates %, "4", "#FFFFFF", "#000000", "left", "1");

&HeaderRow("$vars_config{BBName} : Advanced Template Controls", "4", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("Set your preferred template for the corresponding page type.", "4", "#c9c9c9", "#000000", "left", "2");



foreach $key (@all_forums) {

# do not include forum matches here
@this_forum = split(/\|\^\|/, $key); chomp($this_forum[8]);
$num = $this_forum[8];
$temp_num = ("forum_" . "$num");
$Type = "$this_forum[1]"; chomp($Type);

$TempDropDown = qq!<SELECT NAME="$temp_num">!;

foreach $uno(@templates) {
($j, $k) = split(/\|\^\|/, $uno); chomp($k);

if (exists($template_match{$temp_num})) {
	$this_template = $template_match{$temp_num};
}  else {
$this_template = 1;
}

if ($this_template == $k) {
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

}  #end each forum


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