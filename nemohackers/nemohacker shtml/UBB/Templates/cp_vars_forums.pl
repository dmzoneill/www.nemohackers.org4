# THIS FILE DISPLAYS GUTS OF: Control Panel, Forums Settings Page

print<<ForumTop;
<P><center>
<table border="0" width="95%">
<TR><TD colspan="2" align="left">
<B><FONT SIZE="2" FACE="Verdana, Arial">
To Add A New Forum,  <A HREF="$vars_config{CGIURL}/cp.cgi?ubb=addforums">click here.</a>
<P>
Update Existing Forums Below</FONT></B></td></TR>

<TR><TD colspan="2">
<FONT SIZE="2" FACE="Verdana, Arial">
You currently have $ForumTotal total forums (either active or inactive).   To set forum permissions and assign other settings for a particular forum, click on the "Details" link for the forum.
<P>
The "Order" field determines the order that the forums are displayed.  You should only place numbers in the order fields.  For instance, to arrange 5 forums by order, place a number value of 1 through 5 in each of the forums.  The lower the number, the higher the forum will appear in your forum lists.  If you are displaying your forums in category groups, the category order takes precedence.  
</FONT></TD></TR>

<TR>
<TD align="left" valign="bottom">
<FONT SIZE="2" FACE="Verdana, Arial">
<A HREF="$vars_config{CGIURL}/cp.cgi?ubb=addforums">Add Forum</a> | <A HREF="$vars_config{CGIURL}/cp.cgi?ubb=cats">Add/Review Categories</A></font></TD>
<TD align="right" valign="bottom">
<FORM ACTION="$vars_config{CGIURL}/cp.cgi" METHOD="POST">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="vars_forums">
<INPUT TYPE="HIDDEN" NAME="StartPoint" VALUE="0">
<SELECT NAME="sortby">
	<OPTION value="Category" $SortByCategory>View Forums By Category/Order
	<OPTION value="Number" $SortByNumber>View Forums By Forum Number
	<OPTION value="Alpha" $SortByAlpha>View Forums Alphabetically 
	<OPTION value="AlphaForce" $SortByAlphaForce>View and Reorder Forums Alphabetically 
</SELECT><INPUT TYPE="SUBMIT" NAME="Submit" VALUE="View">
</FORM>
</TD></TR>
</TABLE></center>
ForumTop

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow("$vars_config{BBName} $vars_wordlets_cp{forum_settings}", "6", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("$NextLine", "6", "#c9c9c9", "#000000", "left", "1");

print<<SummHead;
<TR bgcolor="#c9c9c9">
<TD><FONT SIZE="2" FACE="Verdana, Arial"><B>#</B></font></TD>
<TD><FONT SIZE="2" FACE="Verdana, Arial"><B>Name</B></font></TD>
<TD><FONT SIZE="2" FACE="Verdana, Arial"><B>Order</B></font></TD>
<TD><FONT SIZE="2" FACE="Verdana, Arial"><B>Status</B></font></TD>
<TD><FONT SIZE="2" FACE="Verdana, Arial"><B>Category</B></font></TD>
<TD>&nbsp;</TD>
</TR>
SummHead

# count used for alpha force option:
my $Count = $StartPoint;

foreach $uno(@final) {
@thisfor = split(/\|\^\|/, $uno);
$ThisNum = $thisfor[8];
$ThisCategory = $thisfor[0];
$OrderNum = $thisfor[14];
chomp($OrderNum);
$OrderNumber = $OrderNum + 0;

if ($thisfor[3] eq "On") {
	$StatusOn = "SELECTED";  $StatusOff = "";
}  else {
	$StatusOff = "SELECTED"; 	$StatusOn = "";
}

unless ($OrderNum) { 	$OrderNumber = $ThisNum; }

# if forcing alphabetical order-- reset order here
if ($SortIt eq 'AlphaForce') {  $OrderNumber = $Count++; }

&CatDropDown;  # creates $categoryDropDown

print<<ROW;

<TR bgcolor="#FFFFFF">
<TD><FONT SIZE="2" FACE="Verdana, Arial">$ThisNum</font></TD>
<TD><INPUT TYPE="TEXT" NAME="ForumName|^|$ThisNum" VALUE="$thisfor[1]" SIZE="20" MAXLENGTH="125"></TD>
<TD><INPUT TYPE="TEXT" NAME="ForumOrder|^|$ThisNum" VALUE="$OrderNumber" SIZE="5" MAXLENGTH="5"></TD>
<TD><SELECT NAME="ForumStatus|^|$ThisNum">
	<OPTION $StatusOn>On
	<OPTION $StatusOff>Off
</SELECT></TD>
<TD>$CategoryDropDown</TD>
<TD><FONT SIZE="2" FACE="Verdana, Arial"><A HREF="$vars_config{CGIURL}/cp.cgi?ubb=get_forum_details&number=$ThisNum">Details</A></font></TD>
</TR>
ROW

}


&TBB; #Table Border Bottom in cp_common.pl

&Submit("Update Forum Settings");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;