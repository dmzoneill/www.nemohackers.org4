# THIS FILE DISPLAYS GUTS OF: Control Panel, Categories Page

print<<CatHTML;

<center>
<TABLE border="0" width="95%">
<TR><TD colspan="2">
<FONT SIZE="2" FACE="Verdana, Arial">
In this section, you may create categories and change your preferred display order for all categories. 
<P>
The "Order" field below determines the order that the categories are displayed.  You should only place numbers in the order fields.  For instance, to arrange 5 categories by order, place a number value of 1 through 5 in each of the forums.  The lower the number, the higher the category will appear in your forum/category lists.  The category orders take precedence over the forum orders.  
<P>
To delete a category, simply erase its name from the field below.  The category number will remain- to be used in the future if you like, but the category will not appear in your forums.</FONT><BR><BR>
</TD></TR>
<TR><TD align=left valign=bottom><FONT SIZE="2" FACE="Verdana, Arial">
<A HREF="$vars_config{CGIURL}/cp.cgi?ubb=addforums">Add Forum</a> | <A HREF="$vars_config{CGIURL}/cp.cgi?ubb=vars_forums&StartPoint=0">Forum Summary</A></font></TD>
<TD align=right valign=bottom>
<FORM ACTION="$vars_config{CGIURL}/cp.cgi" METHOD="POST">
<INPUT TYPE="HIDDEN" NAME="ubb" VALUE="cats">
<SELECT NAME="sortby">
	<OPTION value="Category" $SortByCategory>Sort By Display Order
	<OPTION value="Number" $SortByNumber>Sort By Category Number
	<OPTION value="Alpha" $SortByAlpha>Sort Alphabetically 
</SELECT><INPUT TYPE="SUBMIT" NAME="Submit" VALUE="Sort">
</FORM>
</TD></TR>
</TABLE>
</center>

CatHTML

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow("$vars_config{BBName} $vars_wordlets{category_settings}", "3", "#5d7790", "#FFFFFF", "center", "2");

print<<TableTop;

<TR bgcolor="#c9c9c9">
<TD><FONT SIZE="2" FACE="Verdana, Arial"><B>Category Number</B></font></TD>
<TD><FONT SIZE="2" FACE="Verdana, Arial"><B>Category Name</B></font></TD>
<TD><FONT SIZE="2" FACE="Verdana, Arial"><B>Display Order</B></font></TD>
</TR>

TableTop


foreach $uno(@catz) {
($CatOrder, $CatName, $CatNumber) = split(/\|\^\|/, $uno);
chomp($CatNumber);
if ($CatOrder eq "") { 	$CatOrder = $CatNumber; }
$CatOrderSimp = $CatOrder + 0;

print<<ROW;

<TR bgcolor="#FFFFFF">
<TD><FONT SIZE="2" FACE="Verdana, Arial">$CatNumber</font></TD>
<TD><INPUT TYPE="TEXT" NAME="CatName|^|$CatNumber" VALUE="$CatName" SIZE="30" MAXLENGTH="100"></TD>
<TD><INPUT TYPE="TEXT" NAME="CatOrder|^|$CatNumber" VALUE="$CatOrderSimp" SIZE="5" MAXLENGTH="5"></TD>
</TR>

ROW

}

unless (@catz) {

# in case we have no categories yet-

print<<ROW;

<TR bgcolor="#FFFFFF">
<TD colspan="3"><FONT SIZE="2" FACE="Verdana, Arial"><BR>No forum categories have been created yet.<BR><BR></font></TD>
</TR>

ROW
}


print<<BottomCatsHTML;

<TR bgcolor="#c9c9c9">
<TD colspan="3">
<FONT SIZE="2" FACE="Verdana, Arial"><B>
Add New Categories?
</B><BR>
If you want to add categories, add them in the field below.  Place each new category in brackets, as in [Baseball Teams] [Hockey Teams] [Football Teams].  If you do not use the proper formatting, the categories will not be added!  Leave the field below blank if you are not adding new categories.<P>
<CENTER>
<INPUT TYPE="TEXT" NAME="NewCats" SIZE="50" MAXLENGTH="400">
</CENTER></FONT>
</TR>

BottomCatsHTML


&TBB; #Table Border Bottom in cp_common.pl

&Submit("Update Category Settings");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;