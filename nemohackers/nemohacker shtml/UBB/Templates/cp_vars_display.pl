# THIS FILE DISPLAYS GUTS OF: Control Panel, General Display Page



&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow(qq%Optional fields are in <FONT COLOR="#5d7790">blue</FONT>.%, "2", "#FFFFFF", "#000000", "left", "1");

&HeaderRow("$vars_config{BBName} General Display Settings", "2", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("Display Options", "2", "#c9c9c9", "#000000", "left", "2");

&RegField ("Your Homepage", "MyHomePage", "yes", "40", "150", "We will provde a link to your overall site start page, or some other link.  Provide the name of this page", "$vars_display{MyHomePage}");

&RegField ("Your Homepage URL", "HomePageURL", "yes", "40", "150", "The URL for the home page you provided above.", "$vars_display{HomePageURL}");

&RegField ("Support Email Address (Valid Email Required)", "BBEmail", "yes", "40", "150", "This email address will be listed on the board, so that users may contact you.  <b>Note: All email from the board (except registration) will come from this email address.  Ensure this is a valid email address!</b>", "$vars_display{BBEmail}");

&RegField ("Contact URL", "ContactURL", "", "40", "250", "This will be the 'Contact Us' URL if you choose. Please use a complete URL i.e. http://yourdomain/yourpage.html.  Leave blank if you are not using a Contact Us URL", "$vars_display{ContactURL}");

&RadioField ("Contact Us Choice", "ContactLinkType", "yes", "Choose to display either your official board email address (which is set in the configuration settings) or an URL for your Contact Us link at the bottom of each page.", "$vars_display{ContactLinkType}", "Email|Email Only%%URL|URL Only");

&RegField ("Privacy Statement URL", "PrivacyURL", "", "40", "250", "The complete URL for your web site's privacy statement.  This will be used to describe your policies concerning user information. Type the complete web address, please! Leave blank if not using.", "$vars_display{PrivacyURL}");

&RadioField ("Display Privacy Statement Link?", "ShowPrivacyLink", "yes", "You may display a link to your Privacy Statement on every UBB page.  Check yes to include it. Note: if you check no, your Privacy URL will still appear in any Children's Online Protection routines.", "$vars_display{ShowPrivacyLink}", "ON|Yes, display it everywhere.%%OFF|No, don't display it everywhere.");

&RadioField ("Infopop Copyright Type", "showcopytype", "yes", "The UBB license agreement requires that the 'Powered by Infopop Ultimate Bulletin Board' notice remain intact and visible on all pages. You can choose either a clickable image or a regular link text.", "$vars_display{showcopytype}", "image|Display Image%%text|Display Text");

&RadioField ("Block Public Display of Email Addresses?", "EmailBlock", "yes", "The default option is to have registered user's email addresses viewable on the pages for which the user has posted a note.  You may prevent all user email addresses from being displayed. These addresses will still be available to you if you check the user's info in the \"User Info/Permissions\" area of the Control Panel.", "$vars_display{EmailBlock}", "ON|Block Public Display of User Email Addresses%%OFF|Display User Email Addresses");

&DoTextArea ("Forum Intro Text", "forum_intro", "", "You may add text that will appear just above the forum summary list- the first page a user sees when they visit your site.  This could be useful for anything you want all users to see when they visit.  You may use HTML.  If you do use HTML, be careful that use proper formatting!", "$vars_display{forum_intro}", "16", "35");

&RadioField ("Members Only Access?", "MembersOnlyAccess", "yes", "You can restrict access to your message board to registered members only, if you desire \(not recommended, though\).  Users who are not registered or logged in will be asked to do so before being allowed entry to the board.", "$vars_display{MembersOnlyAccess}", "YES|Members Only Access.%%NO|No general access restrictions.");

&RadioField ("Allow Signatures?", "AllowSignature", "yes", "You may allow your users to use their own unique signatures when they post messages.  Note: your users will be permitted to use UBB Code \(but not HTML\) in their signature files.  The UBB Code Image tag will be blocked unless you enable it below.", "$vars_display{AllowSignature}", "YES|Allow signatures.%%NO|Do not allow signatures.");

&RadioField ("Allow Images in Signatures?", "AllowSignatureImage", "yes", "You may allow your users to put UBB code images in their signature. This is not advised unless you are sure users will not abuse the right.", "$vars_display{AllowSignatureImage}", "YES|Allow images in signatures.%%no|Do not allow images in signatures.");


&RadioField ("Show Total Topics/Posts/Both?", "ForumTotalOption", "yes", "On the first UBB display page that lists all of your forums, you may display either the total topics within each forum, the total posts within each forum, or both.", "$vars_display{ForumTotalOption}", "Topics|Display TOPIC count only.%%Posts|Display POST count only.%%Both|Display POST AND TOPIC counts.");


&RadioField ("Display Member Ratings?", "user_ratings", "yes", "Registered members may rate each other on a scale of 1 to 5.  Individual members may elect to hide their ratings from public view, even if you activate this feature.", "$vars_display{user_ratings}", "display_all|Yes, permit member ratings.  Show all ratings.%%feature_top|Yes, but only show ratings for top-rated members.%%off|No, deactivate this feature entirely.");

&RadioField ("Reverse Posting Order?", "ReverseThreads", "yes", "The standard \(recommended\) way to display posts is chronologically from original topic to the latest reply.  You can reverse this, if you prefer, to have posts displayed in reverse, from latest post to oldest post.  This applies to pages that display all posts in a given topic.", "$vars_display{ReverseThreads}", "FALSE|Keep preferred order.%%TRUE|Reverse post listing order.");

&RadioField ("Display Member Total?", "DisplayMemberTotal", "yes", "You may add a counter to your UBB intro page \(the first page visitors see when the enter your UBB\) that displays the total number of registered users on your UBB.", "$vars_display{DisplayMemberTotal}", "true|Display member total.%%false|Do not display member total.");

&RadioField ("Display Welcome to Newest Member?", "NewestMemberWelcome", "yes", "You may display a welcome to the newest member to register on your board.  This will appear on the initial page: the forum summary.", "$vars_display{NewestMemberWelcome}", "yes|Display welcome!%%no|Do not display this welcome.");

&RadioField ("Allow Posting Icons?", "AllowIcons", "yes", "You may permit your users to associate an icon with each post they make.  These icons \(which include a note, a smiley face, a warning, a thumbs up, and more\) are a nice way of graphically showing the purpose of each post.", "$vars_display{AllowIcons}", "TRUE|Yes, allow posting icons!%%FALSE|Don't want them!");

&RadioField ("Display Hot Topic Icons?", "HotIcons", "yes", "Hot icons indicate topics with alot of activity.  The icons are animated to show a folder on fire. You can adjust the number of replies necessary to qualify as \"hot\" in the next field.", "$vars_display{HotIcons}", "ON|Display hot icons.%%OFF|They annoy me! Do not display hot icons.");

&RadioField ("Display Homepage Icon Link With Posts?", "homepage_icon_link", "yes", "You may display an icon that links directly to the posting author's homepage. ", "$vars_display{homepage_icon_link}", "yes|Display homepage icon link.%%no|Do not display homepage icon link.");

&RegField ("Minimum Number of Replies to Qualify as Hot Topic", "HotCount", "", "2", "3", "Leave blank if you are not using Hot Topics.", "$vars_display{HotCount}");

&DoTextArea ("Your Copyright Wording", "YourCopyrightNotice", "", "This wording will appear in smaller print directly above the copyright wording concerning the UBB program itself. You can leave this blank or provide any wording you like.", "$vars_display{YourCopyrightNotice}", "3", "30");

&RadioField ("Display Forum Descriptions?", "ForumDescriptions", "yes", "Forum descriptions are set in the Forum Settings area.", "$vars_display{ForumDescriptions}", "yes|Yes, display forum descriptions.%%no|No, do not include them.");

&RadioField ("Category Display Option", "CategoryView", "yes", "If you are using categories, you can have your forums displayed under each category when users first enter your UBB.  To elect to display categories on your introductory page, select YES.  You MUST have categories defined in the Forums control panel BEFORE you select this option.", "$vars_display{CategoryView}", "yes|Yes, display my forums by category.%%no|No, do not display by category.");

&RadioField ("Display Only the Categories on First Page?", "CategoriesOnly", "yes", "If you have numerous forums and/or categories, you may want to have a list of CATEGORIES ONLY when users first enter your UBB. <B>The individual forums, which normally appear first, would thus be suppressed.  Users would click on the category of choice to be taken to the list of forums within that forum.   In order to start with the category list only, click YES to the right.", "$vars_display{CategoriesOnly}", "true|Yes, display categories only at first.%%false|No, do not start with categories only.");

&RadioField ("Include Inline Frame View of Topic on Reply Page?", "InlineFrame", "yes", "To make things easier for users replying to topics, you may include an inline frame on the reply page that shows the complete topic the user is replying to.  Note that some browsers do not support inline frames \(those users will be given an alternate view\).", "$vars_display{InlineFrame}", "TRUE|Yes, use inline frames on reply page.%%FALSE|No, do not use inline frames.");

print<<author_info_html;

<tr bgcolor="#FFFFFF">
<td width="45%" valign="top">
<b><font size="-1" color="#000000" face="Arial, Helvetica, sans-serif">
Author Information Display:</b></font><BR><font size="1" face="Arial, Helvetica, sans-serif">For each post, you can determine what information about the author to visibly with each post.  The author's username and member status will always appear.  Additional display options are listed to the right.  Check each box to include.</font></td>
 <td valign="top"> <font size="1" color="#000000" face="Arial, Helvetica, sans-serif">

 <input type="checkbox" name="author_location" value="yes" $author_location_select> Display Author's Location<BR>
<input type="checkbox" name="author_post_total" value="yes"$author_post_total_select > Display Author's Post Total<BR>
<input type="checkbox" name="author_reg_date" value="yes" $author_reg_date_select> Display Author's Registration Date<BR>
</font></td>
 </tr>
author_info_html


&RadioField ("Moderator Column Display?", "ShowMods", "yes", "Choose whether to display the moderators' names on your main UBB page. The default is Yes. Setting this option to No will save space if required.", "$vars_display{ShowMods}", "yes|Yes, include moderator listings.%%no|No, do not include moderator column.");

&DoInputSelect ("Maximum Topics Displayed Per Page", "ForumDisplayMax", "yes", "25|25 Topics Maximum Per Page%%35|35 Topics Maximum Per Page%%40|40 Topics Maximum Per Page%%50|50 Topics Maximum Per Page%%75|75 Topics Maximum Per Page%%NONE|No maximum per page", "The maximum number of topics to display per page in the forum summary.", "$vars_display{ForumDisplayMax}");

&DoInputSelect ("Maximum Number of Posts Displayed Per Topic Page", "HTMLDisplayMax", "yes", "15|15 Posts Maximum Per Page%%25|25 Posts Maximum Per Page%%35|35 Posts Maximum Per Page%%40|40 Posts Maximum Per Page%%50|50 Posts Maximum Per Page%%75|75 Posts Maximum Per Page%%NONE|Posts Maximum Per Page", "The maximum number of posts to display per page for a topic.", "$vars_display{HTMLDisplayMax}");

&DoInputSelect ("Default Topic View \(Days\)", "DaysPruneDefault", "yes", "1|Show topics since yesterday%%2|Show topics from last 2 days%%5|Show topics from last 5 days%%10|Show topics from last 10 days%%20|Show topics from last 20 days%%30|Show topics from last 30 days%%45|Show topics from last 45 days%%60|Show topics from last 60 days%%75|Show topics from last 75 days%%100|Show topics from last 100 days%%365|Show topics from the last year%%1000|Show all topics", "The default number of days for the \"Show Topics Going Back X Days\" option.  Users are able to customize this through preferences, but this is the default that will be given, otherwise.  Recommended: 20.", "$vars_display{DaysPruneDefault}");

if(!$vars_display{masterCharset}) { $vars_display{masterCharset} = "ISO-8859-1"; }
&RegField ("Board Character Set", "masterCharset", "yes", "40", "150", "This is the character set your board uses.  This character set will be entered in the HTTP header and as a META tag.  If you are unsure what your character set is, use the default: ISO-8859-1", "$vars_display{masterCharset}");


&TBB; #Table Border Bottom in cp_common.pl

&Submit("Update Display Settings");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;