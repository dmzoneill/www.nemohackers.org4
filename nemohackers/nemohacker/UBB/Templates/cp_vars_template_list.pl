# THIS FILE DISPLAYS GUTS OF: Control Panel, Style Settings Page

print<<AddWording;

<CENTER>
<TABLE BORDER="0" WIDTH="95%">
<TR><TD align="left">
<FONT SIZE="2" FACE="Verdana, Arial">
&#187; To add a new style template, <A HREF="cp.cgi?ubb=add_style_template">click here</A>.
<P>
&#187; <A HREF="$vars_config{CGIURL}/cp.cgi?ubb=templates_advanced">Template Associations</A>
</FONT>
</TD></TR></TABLE>
</CENTER>
AddWording

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow("$vars_config{BBName} $vars_wordlets_cp{style_settings}", "4", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("Choose a template to view/edit", "4", "#c9c9c9", "#000000", "left", "2");

print<<THEHTML;

<tr bgcolor="#FFFFFF">
<td valign="top" width="50%">
<FONT SIZE="1" FACE="Verdana, Arial">
The Standard Template is the default template that will be used throughout your site.  You can customize individual forums by using additional templates, as well.  If you create a new style template, realize that you will need to associate that style with the forums you want to use it for in the Forum Settings area.
</FONT>
</td>
<td valign="top" align="center">
$TemplateChoices
</td></tr>

THEHTML


&TBB; #Table Border Bottom in cp_common.pl



&Submit("Submit Choice");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;