# THIS FILE DISPLAYS GUTS OF: Control Panel, Moderator Settings Page



&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow("$vars_wordlets_cp{moderator_warning}", "1", "#FFFFFF", "#000000", "left", "2");

&HeaderRow("$vars_config{BBName} $vars_wordlets_cp{moderator_settings}", "1", "#5d7790", "#FFFFFF", "center", "2");

# loop through each forum!

foreach (@forums) {

@check = split(/\|\^\|/, $_);

# clear array
@display_name = @blank;

# check for mod value
$Moderator = ("Forum" . "$check[8]" . "Moderator");
if (defined $$Moderator) {
$Moderator = $$Moderator;
}  else {
$Moderator = '';
}


# split up Mod var
@mods = split(/\|\|\^\|\|/, $Moderator);
chomp($mods[0]); chomp($mods[1]); chomp($mods[2]); chomp($mods[3]);
for (0.3) {
$mods[$_] = '' unless (defined($mods[$_]));
}


if (($mods[0] ne '')  && (-e "$vars_config{MembersPath}/$mods[0].cgi") ) {
@user_profile = &OpenProfile("$mods[0]");
chomp($user_profile[0]); chomp($user_profile[15]);
if ($user_profile[15] ne '') {
$display_name[0] = $user_profile[15];
} else {
$display_name[0] = $user_profile[0];
}
}  else {
$mods[0] = '';
}

if ( ($mods[1] ne '') && (-e "$vars_config{MembersPath}/$mods[1].cgi") )  {
@user_profile = &OpenProfile("$mods[1]");
chomp($user_profile[0]); chomp($user_profile[15]);
if ($user_profile[15] ne '') {
$display_name[1] = $user_profile[15];
} else {
$display_name[1] = $user_profile[0];
}
} else {
$mods[1] = '';
}


if ( ($mods[2] ne '') && (-e "$vars_config{MembersPath}/$mods[2].cgi") )  {
@user_profile = &OpenProfile("$mods[2]");
chomp($user_profile[0]); chomp($user_profile[15]);
if ($user_profile[15] ne '') {
$display_name[2] = $user_profile[15];
} else {
$display_name[2] = $user_profile[0];
}
} else {
$mods[2] = '';
}

if ( ($mods[3] ne '') && (-e "$vars_config{MembersPath}/$mods[3].cgi") )  {
@user_profile = &OpenProfile("$mods[3]");
chomp($user_profile[0]); chomp($user_profile[15]);
if ($user_profile[15] ne '') {
$display_name[3] = $user_profile[15];
} else {
$display_name[3] = $user_profile[0];
}
} else {
$mods[3] = '';
}

print<<ModRow;

<INPUT TYPE="HIDDEN" NAME="OldMod$check[8]" VALUE="$Moderator">

<TR bgcolor="#c9c9c9">
<TD valign="top">
<FONT SIZE="2" FACE="Verdana, Arial">
<B>
$check[1]
</B>
</FONT>
</TD></TR>
<TR>
<TD bgcolor="#FFFFFF" valign="top">

<TABLE BORDER="0" bgcolor="#FFFFFF">
<TR><TD>
<FONT SIZE="1" FACE="Verdana, Arial">
$display_name[0]
</FONT>
</TD>
<TD>
<FONT SIZE="1" FACE="Verdana, Arial">
$display_name[1]
</FONT>
</TD>
<TD>
<FONT SIZE="1" FACE="Verdana, Arial">
$display_name[2]
</FONT>
</TD>
<TD>
<FONT SIZE="1" FACE="Verdana, Arial">
$display_name[3]
</FONT>
</TD>
</TR>

<TR><TD>
<INPUT TYPE="TEXT" NAME="1NewMod$check[8]" VALUE="$mods[0]" SIZE="20" MAXLENGTH="30">
</TD>
<TD>
<INPUT TYPE="TEXT" NAME="2NewMod$check[8]" VALUE="$mods[1]" SIZE="20" MAXLENGTH="30">
</TD>
<TD>
<INPUT TYPE="TEXT" NAME="3NewMod$check[8]" VALUE="$mods[2]" SIZE="20" MAXLENGTH="30">
</TD>
<TD>
<INPUT TYPE="TEXT" NAME="4NewMod$check[8]" VALUE="$mods[3]" SIZE="20" MAXLENGTH="30">
</TD>
</TR>
</TABLE>
</TD>
</TR>
ModRow

} #end forum loop


&TBB; #Table Border Bottom in cp_common.pl

&Submit("Update Moderators");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;