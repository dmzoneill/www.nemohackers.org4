# THIS FILE DISPLAYS GUTS OF: Control Panel, General Settings Page



&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow(qq%Optional fields are in <FONT COLOR="#5d7790">blue</FONT>.%, "2", "#FFFFFF", "#000000", "left", "1");

&HeaderRow("$vars_config{BBName} Miscellaneous Settings", "2", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("Miscellaneous Options", "2", "#c9c9c9", "#000000", "left", "2");

&RadioField ("Allow Reply with Quote?", "ReplyQuote", "yes", "You can display a 'Reply with Quote' icon beside each message. This will allow a user to quote an individual message in a reply.", "$vars_misc{ReplyQuote}", "YES|Yes, permit this feature.%%NO|No, do not permit this feature.");

&RadioField ("Turn Your Message Board Off?", "BBStatus", "yes", "From time to time, you may want to turn your message board off to the public while you perform maintenance, update versions, etc.  When you turn your noard off, visitors will receive a message that states that the bulletin board is temporarily unavailable.  You can customize this message in the field that follows.", "$vars_misc{BBStatus}", "ON|Message board is OPEN.%%OFF|Message board is CLOSED.");

&DoTextArea ("Message Board 'Closed' Wording", "BBClosedMessage", "yes", "You can customize the exact wording for the message displayed when your board is closed.  Edit the wording in the box to the right.  HTML is permitted.", "$vars_misc{BBClosedMessage}", "5", "30");

&RegField ("Minimum Number of Messages For Full Member Status", "MemberMinimum", "yes", "5", "5", "Registered users are initially considered Junior Members.  After a certain number of postings, the member will be automatically upgraded to full Member status.  The default is 30 messages, but you can reset this value here.", "$vars_misc{MemberMinimum}");

print<<THISFIELD;
<tr bgcolor="#FFFFFF">
<td width="45%">
<b><font size="-1" color="#000000" face="Arial, Helvetica, sans-serif">
Use Alternate User Titles?</b></font><BR><font size="1" face="Arial, Helvetica, sans-serif">There are four status options for users: administrators, moderators, members, and junior members.  You can have these four user classes appear as alternate titles, if you like.  For instance, if you have a Star Trek site, you may want your administrators to be called <i>Star Fleet Captain</i>, your moderators to be called <i>First Mate<i>, your Members to be called <i>Lieutenant</i> and your Junior Members to be called <i>Ensign</i>.</font></td>
 <td valign="top">
<FONT SIZE="1" FACE="Arial, Helvetica, sans-serif">
Administrator:<BR>
<INPUT TYPE="TEXT" NAME="AdminTitle" VALUE="$vars_misc{AdminTitle}" SIZE=25 MAXLENGTH=60>
<P>
Moderator:<BR>
<INPUT TYPE="TEXT" NAME="ModeratorTitle" VALUE="$vars_misc{ModeratorTitle}" SIZE=25 MAXLENGTH=60>
<P>
Member:<BR>
<INPUT TYPE="TEXT" NAME="MemberTitle" VALUE="$vars_misc{MemberTitle}" SIZE=25 MAXLENGTH=60>
<P>
Junior Member:</font>
<BR><INPUT TYPE="TEXT" NAME="JrMemberTitle" VALUE="$vars_misc{JrMemberTitle}" SIZE=25 MAXLENGTH=60>
 </td>
 </tr>
THISFIELD

&RadioField ("CensorOption", "Censor", "yes", "You may have certain words censored on your BB.  Words you choose to censor will be replaced by asterisks.  All subjects and messages will be affected.", "$vars_misc{Censor}", "ON|Enable censor feature.%%OFF|Do not use censor feature.");

&DoTextArea ("Censored Words", "censorwords", "", "Type all words you want censored in the field below.  Do not use commas to separate words, just use spaces.  For example, type \"dog cat boy\", rather than \"dog, cat, boy.\"  If you type \"dog\", all words containing the string \"dog\" would be censored \(dogma, for instance, would appear as \"***ma\"\).  To censor more accurately, you can require that censors occur only for exact words.  You can do this by placing a censor word in curly braces, as in {dog}.  Signifying \"dog\" in the curly braces would mean that dogma would appear as dogma, but dog would appear as \"***\".  Thus your censor list may appear as: cat {dog} {barn} barn<BR>Do not use quotation marks and make sure you use curly braces, not parentheses, when specifying exact words. Do not put two words in the brackets {dog cat} or leave empty brackets {}.<P>Leave this field blank if you do not want to censor any words.", "$vars_misc{censorwords}", "6", "35");


&RadioField ("Permit User Editing of Messages?", "EditOption", "yes", "Administrators and moderators can always edit and delete messages.  You may want to allow your users to edit/ delete their own messages, too.  They will not be able to edit/delete other users' messages.", "$vars_misc{EditOption}", "ON|Yes, allow users to edit and delete their own posts.%%NODELETE|Yes, allow users to edit but NOT DELETE own posts.%%OFF|No, do not allow users to edit or delete their own posts.");


&RadioField ("Permit Users To Modify Publicly Displayed Names?", "edit_public_names", "yes", "Registered users may not modify their login names, but you may permit them to modify their publicly displayed names, if you like.", "$vars_misc{edit_public_names}", "YES|Yes, allow users to edit their own publicly displayed names anytime.%%NO|No, do not permit changes to publicly displayed names.");

&RadioField ("Indicate When Messages Are Edited?", "EditWording", "yes", "We recommend that you indicate when posts are edited, but you can disable this feature if you like.", "$vars_misc{EditWording}", "yes|Yes, include <b>edited by</b> sentence when post is edited.%%no|No, do not include <b>edited by</b> sentence when post is edited.");

&RadioField ("Log/Display IP Numbers For Posts?", "IP", "yes", "For security reasons, you may wish to display the IP number of the person posting a message. You may log the IP to file only- in which case the IP number is not viewable to other users, but is viewable to admins/moderators, or you may have the IP numbers logged and displayed publicly.", "$vars_misc{IP}", "ON|IP logged and displayed publicly.%%LOGONLY|IP logged, but viewable only to admins/moderators.%%OFF|IP numbers not logged at all.");


&RadioField ("Use UBB Caching?", "use_cache", "yes", "UBB uses an internal caching system to save primary pages that have not been changed.  This option SIGNIFICANTLY saves server resources, so we recommend that all sites use it!  You may want to disable caching while you are doing testing of modifications to your UBB, however.", "$vars_misc{use_cache}", "yes|Yes, use UBB caching.  %%no|No, do not use UBB Caching.");

&RadioField ("Require English Letter or Number in Subject?", "EnglishSubjectCheck", "yes", "For each topic subject, you may require that there be at least one English language letter or number in order to permit the topic to be posted.  This will prevent users from posting blank subjects.  If there is a likelihood that some of your users would be using a non-English language, you may not want to use require this.", "$vars_misc{EnglishSubjectCheck}", "ON|Yes, require at least one English letter or number.%%OFF|Do not require this.");


&RadioField ("Flood Check?", "FloodCheck", "yes", "You may prevent your users from flooding your board with posts by activating this feature.  By enabling flood check, you disallow users from posting within a given time span of their last post.  In other words, if you set a flood check time span of 60 seconds, a user may not post a note within 60 seconds of his last post.  Administrators and moderators are exempt from flood check.", "$vars_misc{FloodCheck}", "ON|Flood check ON.%%OFF|Flood check OFF.");

&RegField ("Flood Check Time Span", "FloodCheckSpan", "yes", "3", "4", "Set the amount of time in seconds used by FloodCheck to prevent post flooding.  Recommended: 60.  Type the number of seconds only.", "$vars_misc{FloodCheckSpan}");

$vars_misc{runOnLimit} = 30 unless $vars_misc{runOnLimit};
&RegField ("&quot;Run-on&quot; Limit", "runOnLimit", "yes", "3", "4", "Words over this many single-byte characters will not be allowed in subject lines.  You should increase this number if you are using a multi-byte character set and your users are getting errors about run-on words.", "$vars_misc{runOnLimit}");


$vars_misc{stringLengthLimit} = 180 unless $vars_misc{stringLengthLimit};
&RegField ("String Length Limit", "stringLengthLimit", "yes", "3", "4", "The maximum number of characters that should be allowed before a space is inserted.  This should only be altered if your users are posting extremely long URLs, or if you are using a multi-byte character set and are receiving corrupted characters.", "$vars_misc{stringLengthLimit}");





&TBB; #Table Border Bottom in cp_common.pl

&Submit("Update Miscellaneous Settings");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;