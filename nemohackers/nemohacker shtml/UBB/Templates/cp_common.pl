# COMMON HTML BLOCKS USED IN CONTROL PANEL

# CP Menu Concept/Code by Daniel Khodaparast (dpk@nfscheats.com)
# Thanks, DPK!

sub CPMenu {
  if ($selscript ne '') {
  my $ran = &GeneratePassword;
    $CPMenu = qq~
    <form name="cp_menu">
    <table width=200 border=0 cellspacing=0 cellpadding=1 bgcolor=FFFFFF>
      <tr>
        <td>
          <table width="98%" border="0" cellspacing="0" cellpadding="0" align="center" valign="center">
            <tr>
              <td width="25%">
                <font style="font-size: 10px; font-family: Arial, Helvetica">
                <select name="primary_settings" onChange="jumpMenu('parent',this,0)" style="color: #FFFFFF; background-color: #d0783f; width: 225px; font-family: Verdana, Arial, Helvetica; font-size: 12px; font-weight=bold">
                  <script language="JavaScript">
                    document.writeln("<option value='' selected>Primary Settings</option>");
                    document.writeln("<option value=''>--------------------------------------------------</option>");
                    if (userStatus == "Administrator") {
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=vars_config&r=$ran> - Configuration Settings</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=vars_time&r=$ran> - Date & Time Settings</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=vars_email&r=$ran> - Email Settings</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=vars_forums&r=$ran> - Forum Settings</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=vars_display&r=$ran> - General Display Settings</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=vars_misc&r=$ran> - Miscellaneous Settings</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=vars_mod&r=$ran> - Moderator Settings</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=vars_pm&r=$ran> - Private Message Settings</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=vars_registration&r=$ran> - Registration Settings</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=vars_search&r=$ran> - Search Settings</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=vars_style_temp_list&r=$ran> - Style Templates</option>");
                    }
                    if (userStatus == "Moderator") {
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=vars_forums&r=$ran> - Forum Settings</option>");
                    }
                    else if (userStatus == "" || userStatus == "Moderator") {
                      document.writeln("<option> - Access Denied</option>");
                    }
                  </script>
                </select>
                </font>
              </td>
              <td width="1%">
                <font style="font-size: 10px; font-family: Arial, Helvetica">
                <select name="members" onChange="jumpMenu('parent',this,0)" style="color: #FFFFFF; background-color: #5d7790; width: 225px; font-family: Verdana, Arial, Helvetica; font-size: 12px; font-weight=bold">
                  <script language="JavaScript">
                    document.writeln("<option value='' selected>Members</option>");
                    document.writeln("<option value=''>--------------------------------------------------</option>");
                    if (userStatus == "Administrator") {
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=email_members&r=$ran> - Email Members</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=new_members&r=$ran> - New Member List</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=reg_moderation&r=$ran> - Registration Queue</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=user_settings&r=$ran> - View/Edit Member Records</option>");
                    }
                    else if (userStatus == "" || userStatus == "Moderator") {
                      document.writeln("<option> - Access Denied</option>");
                    }
                  </script>
                </select>
                </font>
              </td>
              <td width="74%">
                <font style="font-size: 10px; font-family: Arial, Helvetica">
                <select name="maintenance" onChange="jumpMenu('parent',this,0)" style="color: #FFFFFF; background-color: #d0783f; width: 225px; font-family: Verdana, Arial, Helvetica; font-size: 12px; font-weight=bold">
                  <script language="JavaScript">
                    document.writeln("<option value='' selected>Maintenance</option>");
                    document.writeln("<option value=''>--------------------------------------------------</option>");
                    if (userStatus == "Administrator") {
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=cache&r=$ran> - Clear Cache</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=prune&r=$ran> - Prune Posts</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=forum_stats&r=$ran> - Rebuild Forum Stat Files</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=do_index&r=$ran> - Rebuild Search Index</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=post_history&r=$ran> - Update Member Post Histories</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=rebuild_members&r=$ran> - Rebuild Member Stat Files</option>");
                    }
                    if (userStatus == "Moderator") {
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=prune&r=$ran> - Prune Posts</option>");
                    }
                    else if (userStatus == "" || userStatus == "Moderator") {
                      document.writeln("<option> - Access Denied</option>");
                    }
                  </script>
                </select>
                </font>
              </td>
            </tr>
            <tr>
              <td width="25%">
                <font style="font-size: 10px; font-family: Arial, Helvetica">
                <select size=1 name=wordlets onChange=jumpMenu('parent',this,0) style="color: #FFFFFF; background-color: #5d7790; width: 225px; font-family: Verdana, Arial, Helvetica; font-size: 12px; font-weight=bold">
                  <script language="JavaScript">
                    document.writeln("<option value='' selected>Wordlets</option>");
                    document.writeln("<option value=''>--------------------------------------------------</option>");
                    if (userStatus == "Administrator") {
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=wordlets_cp&r=$ran> - Control Panel Wordlets</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=wordlets_date&r=$ran> - Date Wordlets</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=wordlets_err&r=$ran> - Error Message Wordlets</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=wordlets_img&r=$ran> - Image Wordlets</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=wordlets&r=$ran> - Primary Wordlets</option>");
                    }
                    else if (userStatus == "" || userStatus == "Moderator") {
                      document.writeln("<option> - Access Denied</option>");
                    }
                  </script>
                </select>
                </font>
              </td>
              <td width="1%">
                <font style="font-size: 10px; font-family: Arial, Helvetica">
                <select name="miscellaneous" onChange="jumpMenu('parent',this,0)" style="color: #FFFFFF; background-color: #d0783f; width: 225px; font-family: Verdana, Arial, Helvetica; font-size: 12px; font-weight=bold">
                  <script language="JavaScript">
                    document.writeln("<option value='' selected>Miscellaneous</option>");
                    document.writeln("<option value=''>--------------------------------------------------</option>");
                    if (userStatus == "Administrator") {
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=ban_lists&r=$ran> - Ban Lists</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=import_archives&r=$ran> - Import UBB5 Archives</option>");
                    }
                    else if (userStatus == "" || userStatus == "Moderator") {
                      document.writeln("<option> - Access Denied</option>");
                    }
                  </script>
                </select>
                </font>
              </td>
              <td width="74%">
                <font style="font-size: 10px; font-family: Arial, Helvetica">
                <select name="license/version_info" onChange="jumpMenu('parent',this,0)" style="color: #FFFFFF; background-color: #5d7790; width: 225px; font-family: Verdana, Arial, Helvetica; font-size: 12px; font-weight=bold">
                  <script language="JavaScript">
                    document.writeln("<option value='' selected>License/Version Info</option>");
                    document.writeln("<option value=''>--------------------------------------------------</option>");
                    if (userStatus == "Administrator") {
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=about_ot&r=$ran> - About OpenTopic</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=members_area&r=$ran> - UBB Upgrades</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=version_check&r=$ran> - Version Check</option>");
                      document.writeln("<option value=$vars_config{CGIURL}/cp.cgi?ubb=license_check&r=$ran> - View/Edit Your License</option>");
                    }
                    else if (userStatus == "" || userStatus == "Moderator") {
                      document.writeln("<option> - Access Denied</option>");
                    }
                  </script>
                </select>
                </font>
              </td>
            </tr>
          </table>
        </td>
      </tr>
    </table>
    <noscript><font style="font-size: 10px; font-family: Verdana, Arial, Helvetica">CP Menu Error: You do not have a javascript enabled browser.</font></noscript>
    </form><P>
    ~;
  }
  else {
    $CPMenu = qq~
    &nbsp;
    ~;
  }
}




sub CPHeader {
local ($dhtml);

if ($username ne '') {
$dhtml = qq~
<script language="JavaScript">
var userStatus = "$status";
var userBrowser = navigator.appName;
var userBV = parseInt(navigator.appVersion);
</script>
~;

$selscript = qq~
<script language="JavaScript">
<!--
function jumpMenu(targ,selObj,restore){ //v3.0
if (selObj.options[selObj.selectedIndex].value != '') {
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
}
  if (restore) selObj.selectedIndex=0;

}
//-->
</script>
~;

} else {
$dhtml = '';
$selscript = '';
}

$CPHeader = qq~
<HTML>
<HEAD>
<META HTTP-EQUIV="Pragma" CONTENT="no-cache">
<META HTTP-EQUIV="no-cache">
<META HTTP-EQUIV="Expires" CONTENT="-1">
	<TITLE>$vars_config{BBName} : Control Panel</TITLE>
$dhtml
$selscript
$direct_to
</HEAD>

<BODY bgColor=#5d7790 bottomMargin=0 leftMargin=0 link=#5d7790
rightMargin=0 text=#333333 topMargin=0 vLink=#330099 MARGINWIDTH="0"
MARGINHEIGHT="0">
<!-- HEADER BLACK TABLE START -->
<A name=top></A>
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>

<TD align=left bgColor=#000000 height=0 vAlign=bottom width="11%"><IMG
      align=bottom alt="Infopop Logo" border=0 height=20
      src="$vars_config{NonCGIURL}/head_logo_1.gif" width=76></TD>

<TD align=left bgColor=#000000 height=0 vAlign=top width="39%"><IMG
      height=1 src="$vars_config{NonCGIURL}/blank.gif" width=1> </TD>
    <TD align=left bgColor=#000000 vAlign=top width="8%">
      <TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
        <TBODY>
        <TR>
          <TD height=23>

<DIV align=right><IMG height=19 src="$vars_config{NonCGIURL}/top1.gif"
            width=56></DIV>
</TD>
          <TD align=right height=23>

<DIV align=right><A
            href="http://www.infopop.com/services_ubb/services_ubb.html"><IMG
            border=0 height=19 src="$vars_config{NonCGIURL}/top2.gif"
          width=184></A></DIV>
</TD>
          <TD align=left height=23>

<DIV align=center><IMG height=19 src="$vars_config{NonCGIURL}/top3.gif"
            width=15></DIV>
</TD>
          <TD height=23>

<DIV align=left><A
            href="http://www.infopop.com/services_ot/services_ot.html"><IMG
            border=0 height=19 src="$vars_config{NonCGIURL}/top4.gif"
          width=63></A></DIV>
</TD>
          <TD height=23>&nbsp;</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE><!-- HEADER BLACK TABLE END -->
<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>

<TD align=left bgColor=#5d7790 vAlign=top width="100%"><IMG
      alt="Infopop Logo" border=0 height=80 src="$vars_config{NonCGIURL}/head_logo_2.gif"
      useMap=#Map2 width=76><MAP name=Map2><AREA alt="Infopop Home"
        coords=11,7,64,66 href="http://www.infopop.com/#" shape=RECT
        title="Infopop Home"></MAP><IMG alt="Infopop" border="0" height=80
      src="$vars_config{NonCGIURL}/head_logotype.gif" useMap=#Map width=184><MAP
        name=Map><AREA alt="Infopop Home" coords=7,9,170,71
        href="http://www.infopop.com/#" shape=RECT title="Infopop Home"></MAP><IMG
      alt="Adding Life to Your Site" border=0 height=79
      src="$vars_config{NonCGIURL}/head_tagline.gif" width=177></TD>
</TR></TBODY></TABLE>
<!-- HEADER BLUE TABLE END -->
<!-- HEADER GREEN TABLE START -->
<TABLE border=0 cellPadding=3 cellSpacing=0 width="100%">
  <TBODY>
  <TR>

    <TD align=left bgColor=#c0c800 noWrap vAlign=top><FONT
      face=VERDANA,ARIAL,HELVETICA size=1><IMG height=1
      src="$vars_config{NonCGIURL}/blank.gif" width=1> <a name="top"></a></FONT></TD>
    <TD bgColor=#c0c800 noWrap vAlign=top><FONT
      face=VERDANA,ARIAL,HELVETICA size=1>&nbsp;<A HREF="ultimatebb.cgi" target=_blank>$vars_config{BBName}</A> &#187; <A HREF="cp.cgi">$vars_wordlets_cp{control_panel}</A> &#187;   $CurrentTab </FONT></TD>
    <TD align=right bgColor=#c0c800 noWrap vAlign=top><FONT
      face=VERDANA,ARIAL,HELVETICA size=1>
      $LoginWording &nbsp;&nbsp;
  </FONT></TD></TR></TBODY></TABLE>
  <!-- HEADER GREEN TABLE END -->
  <!-- NAV AND CONTENT TABLE START -->
<TABLE border=0 cellPadding=10 cellSpacing=0 width="100%">
  <TBODY>
  <TR><!-- NAV COLUMN START -->

    <TD align=left bgColor="#d0783f" vAlign=top width="20">
	&nbsp; <BR>
</TD><!-- NAV COLUMN END -->

    <TD align=left bgColor=#ffffff vAlign="top">
	<FONT face="VERDANA,ARIAL,HELVETICA" size="2">
	<P>

<P><BR>
<FONT SIZE="2" FACE="Verdana, Arial">
<P>
~;
}

sub CPFooter {
$CPFooter = qq~
	</FONT>
<CENTER>
<FONT color=#5d7790 face=VERDANA,ARIAL,HELVETICA size=1>
<P><center>
<FONT SIZE="1" FACE="Verdana, Arial">$InfopopCopyright</FONT>
</center><P>
<BR>&copy; 2001 Infopop Corporation, All rights reserved.</font></CENTER> </P>
<BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR><BR>
      </TD><!-- CONTENT COLUMN END --><!-- SIDEBAR COLUMN START -->
	<!-- EXTRA COLUMN START -->
    <TD align=left bgColor=#d0783f vAlign=top width=1><IMG alt="" border=0
      height="1" src="$vars_config{NonCGIURL}/blank.gif" width=1></TD>
    <!-- EXTRA COLUMN END --></TR>
  <TR bgColor=#000000>
    <TD align=left colSpan=4 vAlign=top>
	<IMG height="1"
      src="$vars_config{NonCGIURL}/blank.gif" width=1></TD></TR></TBODY></TABLE><!-- NAV AND CONTENT TABLE END --></BODY></HTML>
~;
}

sub CPTop {
&CPMenu;
print "$CPHeader";
print qq!
<center>
<table border="0" width="95%">
<tr>
<td valign="top" align="left">
<FONT SIZE="2" FACE="Verdana, Arial"><B>
$CurrentTab</B>
<P>
$CPMenu
</FONT></td>
</tr></table>
</center><br>
!;
}


sub CPBottom {
print "$CPFooter";
}

sub TBT {
print<<TableBorderTop;
<center>
<table border="0" cellpadding="1" cellspacing="1" width="95%">
<tr bgcolor="#5d7790"><td>
<table border="0" width="100%" cellpadding="3" cellspacing="0">
TableBorderTop
}

sub TBB {
print<<TableBorderBottom;
</table></td></tr></table></center>
TableBorderBottom
}

sub RadioField {
my $Descr = shift;
my $FldName= shift;
my $Req = shift;
my $Comment = shift;
my $ThisValue = shift;
my $Options = shift;
local ($FC, $iota, $val, $desc);

# Options are delimited by %%
my @options = split(/\%\%/, $Options);

if ($Req ne 'yes') { $FC = '#5d7790'; } else { 	$FC = '#000000'; }

print<<THISFIELD;
<tr bgcolor="#FFFFFF">
<td width="45%" valign="top">
<b><font size="-1" color="$FC" face="Arial, Helvetica, sans-serif">
$Descr:</b></font><BR><font size="1" face="Arial, Helvetica, sans-serif">$Comment</font></td>
 <td valign="top"> <font size="1" color="#000000" face="Arial, Helvetica, sans-serif">
THISFIELD

my $wasCheckedLastTime;
foreach $iota(@options) {
($val, $desc) = split(/\|/, $iota);
chomp($desc);
$Checked = '';
#if ($ThisValue eq "$val") { $Checked = 'CHECKED'; }
if (($ThisValue =~ /^$val/) &&
   (($ThisValue =~ /^$val /) || ($ThisValue =~ /^$val$/)) &&
   (!$wasCheckedLastTime)) {
	$Checked = 'CHECKED'; $wasCheckedLastTime = "1";
}
print qq% <INPUT TYPE="RADIO" NAME="$FldName" VALUE="$val" $Checked>&nbsp;&nbsp;$desc<BR>%;

}

print<<BOTTOM
 </font></td>
 </tr>
BOTTOM
}
sub RegField {
my $Descr = shift;
my $FldName= shift;
my $Req = shift;
my $ThisSize = shift;
my $ThisMax  = shift;
my $Comment = shift;
my $ThisValue = shift;
local $FC;

if ($Req ne "yes") {
	$FC = "#5d7790";
} else {
	$FC = "#000000";
}
print<<THISFIELD;
<tr bgcolor="#FFFFFF">
<td width="45%">
<b><font size="-1" color="$FC" face="Arial, Helvetica, sans-serif">
$Descr</b></font><BR><font size="1" face="Arial, Helvetica, sans-serif">$Comment</font></td>
 <td valign="top">
 <input type="text" name="$FldName" size="$ThisSize" value="$ThisValue" maxlength="$ThisMax">
 </td>
 </tr>
THISFIELD
}

sub HeaderRow {
my $HeaderTitle = shift;
my $ThisColSpan = shift;
my $RowColor = shift;
my $TextColor = shift;
my $Align = shift;
my $TextSize = shift;

print<<ThisHeader;
<tr bgcolor="$RowColor">
<td align="$Align"  colspan="$ThisColSpan">
	<font size="$TextSize" color="$TextColor" face="Arial, Helvetica, sans-serif"><B>$HeaderTitle</B></FONT>
</td></tr>
ThisHeader
}

sub DoTextArea {
my $Desc = shift;
my $FieldName = shift;
my $Req = shift;
my $Comments = shift;
my $Value = shift;
my $rows = shift;
my $cols = shift;

local $FC;

if ($Req ne "yes") {
	$FC = "#5d7790";
} else {
	$FC = "#000000";
}

$Value =~ s/^\s+//;
$Value =~ s/\s+$//;

print<<ThisRow;
<tr bgcolor="#FFFFFF">
<td align="left" valign="top"><font size="-1" color="$FC" face="Arial, Helvetica, sans-serif"><B>$Desc:</B></FONT><BR><font size="1" face="Arial, Helvetica, sans-serif">$Comments</font>
</td>
<td align="left" valign="top">
<TEXTAREA wrap="virtual" NAME="$FieldName" ROWS="$rows" COLS="$cols">$Value</TEXTAREA></td></tr>
ThisRow

}

sub Submit {
my $Desc = shift;

print<<THESUBMIT;
<P><center>
<INPUT TYPE="SUBMIT" NAME="submit" VALUE="$Desc">
</center><P></FORM>
THESUBMIT

}

sub FormStart {
my $URL = shift;
my $Hiddens = shift;
print<<THEFORM;
<FORM ACTION="$URL" NAME="THISFORM" METHOD="POST">
$Hiddens
THEFORM
}

sub DoInputSelect {
my $Descr = shift;
my $FldName= shift;
my $Req = shift;
my $OptionList = shift;
my $Comments = shift;
my $Value = shift;

local $OptionName; local $OptionValue; local $FC; local $SELECTED; local $row;

my $OptionRows = qq%<OPTION VALUE="">Select One</OPTION>
<OPTION VALUE="">----------------</OPTION>%;

#build option list
my @listarray = split(/\%\%/, $OptionList);
foreach $row(@listarray) {
($OptionValue, $OptionName) = split(/\|/, $row);
$SELECTED = "";
chomp($OptionValue);
if ($OptionValue eq "$Value") { $SELECTED = "SELECTED"; }

$OptionRows .= qq%<OPTION VALUE="$OptionValue" $SELECTED>$OptionName</OPTION>%;
}

if ($Req ne "yes") {
	$FC = "#5d7790";
} else {
	$FC = "#000000";
}
print<<THISSELECT;
<tr bgcolor="#FFFFFF">
<td valign="top" width="45%">
<b><font size="2" color="$FC" face="Arial, Helvetica, sans-serif">
$Descr</b><BR><font size="1">$Comments</font></font></td>
<td valign="top">
<select name="$FldName">
$OptionRows
</select>
</td>
</tr>
THISSELECT
}

sub ColorRow {
my $FieldName = shift;
my $Notes = shift;
my $VarName = shift;
my $RowColor = shift;
my $VarNameChoice = "$VarName" . "Choice";
my $Req = shift;

if ($Notes ne '') { $Notes = "<BR>$Notes"; }

if ($Req ne 'yes') { 	$FC = '#5d7790';
} else {  $FC = '#000000'; }

print<<ColorRow;
<tr bgcolor="$RowColor">
<td>
<FONT SIZE="2" FACE="Arial, Helvetica, sans-serif"><B><FONT COLOR="$FC">$FieldName</FONT></B>
<FONT SIZE="1">$Notes</FONT></FONT></td>
<td bgcolor="$vars_style{$VarName}">&nbsp;</td>
<td valign="top" NOWRAP>
<SELECT name="$VarNameChoice" onChange="document.THISFORM.$VarName.value=options[selectedIndex].value">
ColorRow

&Colors;

print<<ColorRow2;
<INPUT TYPE="TEXT" NAME="$VarName" VALUE="$vars_style{$VarName}" SIZE="7" MAXLENGTH="7">
</td></tr>
ColorRow2
}


sub Colors {
print<<TheColors;
<OPTION value="" selected> Select New Color?
		<OPTION value="#ffffff" > White
        <OPTION value="#ff0000" > Red
        <OPTION value="#00ff00" > Green
        <OPTION value="#0000ff" > Blue
        <OPTION value="#ff00ff" > Magenta
        <OPTION value="#00ffff" > Cyan
        <OPTION value="#ffff00" > Yellow
        <OPTION value="#000000" > Black
        <OPTION value="#70db93" > Aquamarine
        <OPTION value="#a62a2a" > Brown
        <OPTION value="#b87333" > Copper
        <OPTION value="#ff7f00" > Coral
        <OPTION value="#871f78" > Dark Purple
        <OPTION value="#97694f" > Dark Tan
        <OPTION value="#238e23" > Forest Green
        <OPTION value="#cd7f32" > Gold
        <OPTION value="#a8a8a8" > Grey
        <OPTION value="#9f9f5f" > Khaki
        <OPTION value="#c0d9d9" > Light Blue
	<OPTION value="#808000" > Light Copper
        <OPTION value="#cccccc" > Light Grey
        <OPTION value="#ffffcc" > Light Yellow
        <OPTION value="#32cd32" > Lime Green
        <OPTION value="#8e236b" > Maroon
        <OPTION value="#2f2f4f" > Midnight Blue
	<OPTION value="#000080" > Navy Blue
        <OPTION value="#ff7f00" > Orange
        <OPTION value="#8FBC8F" > Pale Green
        <OPTION value="#BC8F8F" > Pink
        <OPTION value="#E6E8fA" > Silver
        <OPTION value="#3299CC" > Sky Blue
	<OPTION value="#F7F7F7" > UBB Col1 Grey
	<OPTION value="#DEDFDF" > UBB Col2 Grey
        <OPTION value="#CC3299" > Violet
	<OPTION value="" > Other (type code)...
	</SELECT>&nbsp;&nbsp;
TheColors
} # end colors sr



# c3roDANGER: DO NOT REMOVE THE FOLLOWING LINE!
1;