# THIS FILE DISPLAYS GUTS OF: Control Panel, Email Settings Page



&FormStart("$vars_config{CGIURL}/cp.cgi", "$Hiddens");

&TBT; #Table Border Top in cp_common.pl

&HeaderRow(qq%Optional fields are in <FONT COLOR="#5d7790">blue</FONT>.%, "2", "#FFFFFF", "#000000", "left", "1");

&HeaderRow("$vars_config{BBName} Email Settings", "2", "#5d7790", "#FFFFFF", "center", "2");

&HeaderRow("Email Options", "2", "#c9c9c9", "#000000", "left", "2");

&HeaderRow("The UBB provides two methods for handling all functions that involve email: Sendmail for Unix/Linux based servers and SMTP for Win32 servers.  Sendmail is installed on most Unix/Linux servers by default. The SMTP option for Win32 requires you to have an SMTP email server that will allow email relay from your domain.  You must also have the standard Perl 5 Socket module installed. \(Some service providers do not install it.\)<BR><BR>", "2", "#FFFFFF", "#000000", "left", "1");

&RadioField ("Email On/Off", "UseEmail", "yes", "To enable all functions that send email to users, set this field to on. UBB features that require email include Lost Password, Email Verification, UBBFriend, Digests, Bulk mailing and several notification functions. It is important to set the email configuration correctly.  If email services are not available for your server, you must turn this option off.", "$vars_email{UseEmail}", "ON|Email Features Activated.%%OFF|Email Features Disabled.");


&RadioField ("Email Service to Use", "SMTPEmail", "yes", "Unix/Linux users will find sendmail the easiest process.  Win32 users must choose the SMTP option and provide the name of an SMTP server that will accept relay from your domain. Contact your ISP for details.", "$vars_email{SMTPEmail}", "Off|SendMail [Unix/Linux Only]%%On|SMTP Email [Win32]");

&RegField ("Sendmail Location [Unix/Linux Only]", "SendMailLocation", "", "25", "50", "You must list the absolute path to the sendmail program.  For example, your sendmail location may be: /usr/bin/sendmail.  If you are configuring for the first time, and you see a path in the field to the right, that means that the UBB has automatically detected the proper path!", "$vars_email{SendMailLocation}");

&RegField ("SMTP Server Name [Win32]", "EmailServer", "", "25", "60", "To use this option you must list the name of your SMTP server.  It may be something like smtp.yourdomain.com or mail.yourdomain.com.  It may also be your domain name alone, an IP address or a server your ISP has set up for this purpose. Contact your internet provider for an exact name.", "$vars_email{EmailServer}");

&RadioField ("Enable UBBFriend?", "UBBFriendUSE", "yes", "Select whether you want to include the option to allow registered users to email someone a link to a UBB topic.  Note: email options must be turned on above and an email process must be properly configured.", "$vars_email{UBBFriendUSE}", "ON|Yes, enable UBBFriend.%%OFF|No, do not permit UBBFriend.");

&RadioField ("Email Format", "email_format", "yes", "The UBB can format all sent email as in either HTML format or text (ascii) format.", "$vars_email{email_format}", "html|HTML: Send email as HTML only.%%ascii|Text: Send email as text only.");

&TBB; #Table Border Bottom in cp_common.pl

&Submit("Update Email Settings");

# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;