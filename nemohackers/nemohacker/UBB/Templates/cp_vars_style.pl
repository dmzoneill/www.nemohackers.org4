# THIS FILE DISPLAYS GUTS OF: Control Panel, Style Settings Page

&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow(qq%Optional fields are in <FONT COLOR="#5d7790">blue</FONT>.%, "4", "#FFFFFF", "#000000", "left", "1");

&HeaderRow("$vars_config{BBName}: $vars_wordlets_cp{template_title}: $ThisName", "4", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("Color Options", "4", "#c9c9c9", "#000000", "left", "2");

&HeaderRow("You can easily change the font face and/or color, graphics, and background colors used throughout your bulletin board using style templates.  The options you set below will control the way pages asscociated with this template are displayed. For all colors, we recommend using hexadecimal codes \(e.g., #FFFFFF for \"white\", etc.\).", "4", "#FFFFFF", "#000000", "left", "1");

&ColorRow("Page Background Color", "", "BGColor", "#FFFFFF", "yes");
&ColorRow("Text Color", "", "TextColor", "#FFFFFF", "yes");
&ColorRow("Link Color", "", "LinkColor", "#FFFFFF", "yes");
&ColorRow("Active Link Color", "", "ActiveLinkColor", "#FFFFFF", "yes");
&ColorRow("Visited Link Color", "", "VisitedLinkColor", "#FFFFFF", "yes");
&ColorRow("Table Border Color", "For invisible borders, set this color the same as your page background color.", "TableBorderColor", "#FFFFFF", "yes");
&ColorRow("Table Header Strip Text Color", "", "TableStripTextColor", "#FFFFFF", "yes");
&ColorRow("Table Header Strip Background Color", "", "TableColorStrip", "#FFFFFF", "yes");
&ColorRow("Time Color", "This color is used for the time field on the main forum summary page and the forum pages and for the <i>posted by</i> line for each post.", "TimeColor", "#FFFFFF", "yes");
&ColorRow("First Alternating Table Column Color", "", "AltColumnColor1", "#FFFFFF", "yes");
&ColorRow("Second Alternating Table Column Color", "", "AltColumnColor2", "#FFFFFF", "yes");
&ColorRow("Category Strip Background Color", "", "CategoryStripColor", "#FFFFFF", "yes");
&ColorRow("Category Strip Text Color", "", "CategoryStripTextColor", "#FFFFFF", "yes");
&ColorRow("Copyright Text Color", "", "CopyrightTextColor", "#FFFFFF", "yes");
&ColorRow("Message Board Title Font Color", "", "BBTitleFontColor", "#FFFFFF", "yes");
&ColorRow("Horizontal Rule Color", "", "hr_color", "#FFFFFF", "yes");

&TBB; #Table Border Bottom in cp_common.pl

print "<P>";

&TBT; #Table Border Top in cp_common.pl

&HeaderRow("Miscellaneous Options", "4", "#c9c9c9", "#000000", "left", "2");

&RegField ("Font Face", "FontFace", "yes", "35", "50", "We recommend that you use a backup font as well.  For example: to use Verdana as your first choice, with Arial as a conditional font for those users that don't have Verdana as a font on their system, you would type <i>Verdana, Arial</i>.", "$vars_style{FontFace}");

&RegField ("Table Width", "TableWidth", "yes", "5", "7", "You may use either exact pixels \(recommended: 600\) or a percentage \(recommended: 90%\)", "$vars_style{TableWidth}");

&RegField ("Text Size", "TextSize", "yes", "2", "2", "We recommend using size 2, but depending on your font face, you may want to change this.", "$vars_style{TextSize}");

&RegField ("Forum Description Text Size", "FDTextSize", "yes", "2", "2", "This affects the font size of your forum description wording.", "$vars_style{FDTextSize}");

&RegField ("Page Background Graphic", "PageBackground", "", "30", "200", "Not recommended to be used, but you can add a background graphic to your pages.  If you do so, you should upload the graphic into your UBB NON CGI directory and place the name of the background graphic in this field.  For example, background.gif.  Do not enter the URL or path- just the name of the graphic file!", "$vars_style{PageBackground}");


&DoTextArea ("Header", "Header", "", "You can add your own customized header graphic, ad banner, text, etc.  This header will be inserted immediately after the opening HTML BODY tag. This is completely optional.  Leave this field blank if you don't need to use it.", "$vars_style{Header}", "15", "40");

&DoTextArea ("Footer", "Footer", "", "You can add your own customized footer graphic, ad banner, text, etc.  This footer code will be inserted immediately above the the closing HTML BODY tag.  This is completely optional.  Leave this field blank if you don't need to use it.", "$vars_style{Footer}", "15", "40");

&DoTextArea ("Header Insert", "HeaderInsert", "", "You can insert your own code to appear in the HEAD tags of most displayed UBB pages.  This is useful for adding your own META tags, Style Sheets, etc.  Remember that the code you add in this field will be inserted inside the HTML HEAD brackets- so you must abide by normal HTML rules for code within the &lt;HEAD&gt; tags. Do not add HTTP-EQUIV=\"Pragma\", since the UBB already includes that coding.  Leave the field blank if you do not wish to add any custom code to your headers.", "$vars_style{HeaderInsert}", "15", "40");

#&DoTextArea ("Language Meta Field", "language_meta", "", "You can insert your own language META code, which will be inserted in the HEAD tags of most displayed UBB pages.  Leave this field blank if you do not need to support a non English language.  <br><b>Warning: Using this field will override the specific Board Character Set as defined in General Display Settings.</b>", "$vars_style{language_meta}", "3", "40");

&DoTextArea ("HTML Tag - Extra Code", "html_extra", "", "This allows you to insert extra code to appear in the HTML page's HTML tag.  This is useful for language customization.  Anything you insert here will be placed inside the HTML tag, so be very careful!  Leave this field blank if you do not need to insert any extra code.", "$vars_style{html_extra}", "3", "40");

&DoTextArea ("BODY Tag - Extra Code", "body_extra", "", "This allows you to insert extra code to appear in the BODY tag.  This is useful for adding custom javascript (such as onLoad).  Anything you insert here will be placed inside the BODY tag, so be very careful!  Leave this field blank if you do not need to insert any extra code.", "$vars_style{body_extra}", "3", "40");

&RadioField ("Table Border Display Type", "table_border_display", "yes", "If using visible table borders, you can control the way the borders are displayed.  There are three options.", "$vars_style{table_border_display}", "1|Outside borders visible only.%%2|Borders outline entire table, inside and out.%%3|Borders inside and out, but with a thicker outside line.");

$vars_style{thisCharset} = $vars_display{masterCharset} unless $vars_style{thisCharset};
&RegField ("Character Set", "thisCharset", "", "15", "15", "You may define a character set for this style template.  If you leave this character set blank, the board default character set defined in General Display Settings will be used instead.  We recommend using ISO-8859-1.", "$vars_style{thisCharset}");

&TBB; #Table Border Bottom in cp_common.pl

print "<P>";

&TBT; #Table Border Top in cp_common.pl
&HeaderRow("Graphics Options", "4", "#c9c9c9", "#000000", "left", "2");

&HeaderRow(qq!
Don't forget: if you are using your own custom graphics instead of one of the standard graphics shown above, be sure to upload (FTP) your custom graphics to your UBB NON CGI directory.  You may want to check out the <A HREF="http://www.infopop.com/ubb_support/support_ubb_resources_graphics.shtml">UBB Graphics Shop</A> to see graphics created by others for use on the Ultimate Bulletin Board.!, "4", "#FFFFFF", "#000000", "left", "1");


&RegField (qq!Title Graphic<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{BBTitle}" BORDER=0><P>!, "BBTitle", "", "30", "60", "", "$vars_style{BBTitle}");

&RegField (qq!Post New Topic Graphic<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{BBTopic}" BORDER=0><P>!, "BBTopic", "", "30", "60", "", "$vars_style{BBTopic}");

&RegField (qq!Post Reply Graphic<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{BBReply}" BORDER=0><P>!, "BBReply", "", "30", "60", "", "$vars_style{BBReply}");

&RegField (qq!Search Graphic<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{search_graphic}" BORDER=0><P>!, "search_graphic", "", "30", "60", "", "$vars_style{search_graphic}");

&RegField (qq!Profile Icon<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{profilegif}" BORDER=0><P>!, "profilegif", "", "30", "60", "", "$vars_style{profilegif}");

&RegField (qq!Email Icon<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{mailgif}" BORDER=0><P>!, "mailgif", "", "30", "60", "", "$vars_style{mailgif}");

&RegField (qq!Edit Icon<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{edit_icon}" BORDER=0><P>!, "edit_icon", "", "30", "60", "", "$vars_style{edit_icon}");

&RegField (qq!Reply With Quote Icon<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{reply_with_quote_icon}" BORDER=0><P>!, "reply_with_quote_icon", "", "30", "60", "", "$vars_style{reply_with_quote_icon}");

&RegField (qq!Homepage Icon<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{homepage_icon}" BORDER=0><P>!, "homepage_icon", "", "30", "60", "", "$vars_style{homepage_icon}");


&RegField (qq!Forum Summary: New Posts Indicator Graphic<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{forum_summ_on}" BORDER=0><P>!, "forum_summ_on", "yes", "30", "60", "", "$vars_style{forum_summ_on}");

&RegField (qq!Forum Summary: No New Posts Indicator Graphic<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{forum_summ_off}" BORDER=0><P>!, "forum_summ_off", "yes", "30", "60", "", "$vars_style{forum_summ_off}");

&RegField (qq!Old Topic Folder<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{old_topic_folder}" BORDER="0"><P>!, "old_topic_folder", "yes", "30", "60", "", "$vars_style{old_topic_folder}");

&RegField (qq!New Topic Folder<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{new_topic_folder}" BORDER="0"><P>!, "new_topic_folder", "yes", "30", "60", "", "$vars_style{new_topic_folder}");

&RegField (qq!Hot New Topic Folder<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{hot_new_topic_folder}" BORDER="0"><P>!, "hot_new_topic_folder", "yes", "30", "60", "", "$vars_style{hot_new_topic_folder}");

&RegField (qq!Hot Old Topic Folder<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{hot_old_topic_folder}" BORDER="0"><P>!, "hot_old_topic_folder", "yes", "30", "60", "", "$vars_style{hot_old_topic_folder}");

&RegField (qq!Old Locked Folder<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{old_locked_folder}" BORDER="0"><P>!, "old_locked_folder", "yes", "30", "60", "", "$vars_style{old_locked_folder}");

&RegField (qq!New Locked Folder<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{new_locked_folder}" BORDER="0"><P>!, "new_locked_folder", "yes", "30", "60", "", "$vars_style{new_locked_folder}");

&RegField (qq!UBBFriend Header Graphic<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{ubb_friend}" BORDER="0"><P>!, "ubb_friend", "yes", "30", "60", "", "$vars_style{ubb_friend}");

&RegField (qq!UBBFriend Mini Icon<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{ubb_friend_mini}" BORDER="0"><P>!, "ubb_friend_mini", "yes", "30", "60", "", "$vars_style{ubb_friend_mini}");


&RegField (qq!Close Topic (Admin) Icon<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{close_topic}" BORDER="0"><P>!, "close_topic", "yes", "30", "60", "", "$vars_style{close_topic}");

&RegField (qq!Open Topic (Admin) Icon<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{open_topic}" BORDER="0"><P>!, "open_topic", "yes", "30", "60", "", "$vars_style{open_topic}");

&RegField (qq!Move Topic (Admin) Icon<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{move_topic}" BORDER="0"><P>!, "move_topic", "yes", "30", "60", "", "$vars_style{move_topic}");

&RegField (qq!Delete Topic (Admin) Icon<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{delete_topic}" BORDER="0"><P>!, "delete_topic", "yes", "30", "60", "", "$vars_style{delete_topic}");

&RegField (qq!Previous Topic Icon<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{prev_topic}" BORDER="0"><P>!, "prev_topic", "yes", "30", "60", "", "$vars_style{prev_topic}");

&RegField (qq!Next Topic Icon<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{next_topic}" BORDER="0"><P>!, "next_topic", "yes", "30", "60", "", "$vars_style{next_topic}");

&RegField (qq!Private Message Icon<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{priv_message}" BORDER="0"><P>!, "priv_message", "yes", "30", "60", "", "$vars_style{priv_message}");

&RegField (qq!Author Rating - 1<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{user_ratings_1}" BORDER="0"><P>!, "user_ratings_1", "yes", "30", "60", "", "$vars_style{user_ratings_1}");

&RegField (qq!Author Rating - 2<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{user_ratings_2}" BORDER="0"><P>!, "user_ratings_2", "yes", "30", "60", "", "$vars_style{user_ratings_2}");

&RegField (qq!Author Rating - 3<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{user_ratings_3}" BORDER="0"><P>!, "user_ratings_3", "yes", "30", "60", "", "$vars_style{user_ratings_3}");

&RegField (qq!Author Rating - 4<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{user_ratings_4}" BORDER="0"><P>!, "user_ratings_4", "yes", "30", "60", "", "$vars_style{user_ratings_4}");

&RegField (qq!Author Rating - 5<BR><IMG SRC="$vars_config{NonCGIURL}/$vars_style{user_ratings_5}" BORDER="0"><P>!, "user_ratings_5", "yes", "30", "60", "", "$vars_style{user_ratings_5}");

&TBB; #Table Border Bottom in cp_common.pl

print qq!<center><FONT SIZE="1" FACE="Verdana, Arial"><B>
$DeleteWording
</B></FONT></center>!;

&Submit("Update Style Settings");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;