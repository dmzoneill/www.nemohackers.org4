# COMMON HTML BLOCKS USED PUBLIC PAGES

$smilie_list = qq~
<a href="javascript: x()" onClick="DoSmilie(' :) ');"><img width="15" height="15" src="$vars_config{NonCGIURL}/smile.gif" border="0" alt="$vars_wordlets_img{graemlin_smile}"></a>
  &nbsp;
  <a href="javascript: x()" onClick="DoSmilie(' :( ');"><img width="15" height="15" src="$vars_config{NonCGIURL}/frown.gif" border="0" alt="$vars_wordlets_img{graemlin_frown}"></a>
  &nbsp;
  <a href="javascript: x()" onClick="DoSmilie(' :o ');"><img width="15" height="15" src="$vars_config{NonCGIURL}/redface.gif" border="0" alt="$vars_wordlets_img{graemlin_embarrassed}"></a>
  &nbsp;
  <a href="javascript: x()" onClick="DoSmilie(' :D ');"><img width="15" height="15" src="$vars_config{NonCGIURL}/biggrin.gif" border="0" alt="$vars_wordlets_img{graemlin_big_grin}"></a>
  &nbsp;
  <a href="javascript: x()" onClick="DoSmilie(' ;) ');"><img width="15" height="15" src="$vars_config{NonCGIURL}/wink.gif" border="0" alt="$vars_wordlets_img{graemlin_wink}"></a>
<br>
<a href="javascript: x()" onClick="DoSmilie(' :p ');"><img width="15" height="15" src="$vars_config{NonCGIURL}/tongue.gif" border="0" alt="$vars_wordlets_img{graemlin_razz}"></a>
  &nbsp;
  <a href="javascript: x()" onClick="DoSmilie(' :cool: ');"><img width="15" height="15" src="$vars_config{NonCGIURL}/cool.gif" border="0" alt="$vars_wordlets_img{graemlin_cool}"></a>
  &nbsp;
  <a href="javascript: x()" onClick="DoSmilie(' :rolleyes: ');"><img width="15" height="15" src="$vars_config{NonCGIURL}/rolleyes.gif" border="0" alt="$vars_wordlets_img{graemlin_roll_eyes}"></a>
  &nbsp;
  <a href="javascript: x()" onClick="DoSmilie(' :mad: ');"><img width="15" height="15" src="$vars_config{NonCGIURL}/mad.gif" border="0" alt="$vars_wordlets_img{graemlin_mad}"></a>
  &nbsp;
  <a href="javascript: x()" onClick="DoSmilie(' :eek: ');"><img width="15" height="15" src="$vars_config{NonCGIURL}/eek.gif" border="0" alt="$vars_wordlets_img{graemlin_eek}"></a>
<br>
<a href="javascript: x()" onClick="DoSmilie(' :confused: ');"><img width="15" height="22" src="$vars_config{NonCGIURL}/confused.gif" border="0" alt="$vars_wordlets_img{graemlin_confused}"></a>
~;




$instant_jscript = qq~
<script language="JavaScript">
<!--
function x () {
return;
}

function DoSmilie(addSmilie) {
	var revisedMessage;
	var currentMessage = document.REPLIER.message.value;
	revisedMessage = currentMessage+addSmilie;
	document.REPLIER.message.value=revisedMessage;
	document.REPLIER.message.focus();
	return;
}

function DoPrompt(action) {
	var revisedMessage;
	var currentMessage = document.REPLIER.message.value;


	if (action == "url") {
	var thisURL = prompt("$vars_wordlets{enter_url}", "http://");
	var thisTitle = prompt("$vars_wordlets{enter_title}", "web page");
var urlUBBCode = "[URL="+thisURL+"]"+thisTitle+"[/URL]";
	revisedMessage = currentMessage+urlUBBCode;
	document.REPLIER.message.value=revisedMessage;
	document.REPLIER.message.focus();
	return;
	}

	if (action == "email") {
	var thisEmail = prompt("$vars_wordlets{enter_email}", "");
	var emailUBBCode = "[EMAIL]"+thisEmail+"[/EMAIL]";
	revisedMessage = currentMessage+emailUBBCode;
	document.REPLIER.message.value=revisedMessage;
	document.REPLIER.message.focus();
	return;
	}

	if (action == "bold") {
	var thisBold = prompt("$vars_wordlets{enter_bold}", "");
	var boldUBBCode = "[B]"+thisBold+"[/B]";
	revisedMessage = currentMessage+boldUBBCode;
	document.REPLIER.message.value=revisedMessage;
	document.REPLIER.message.focus();
	return;
	}

	if (action == "italics") {
	var thisItal = prompt("$vars_wordlets{enter_italics}", "");
	var italUBBCode = "[I]"+thisItal+"[/I]";
	revisedMessage = currentMessage+italUBBCode;
	document.REPLIER.message.value=revisedMessage;
	document.REPLIER.message.focus();
	return;
	}

	if (action == "image") {
	var thisImage = prompt("$vars_wordlets{enter_image}", "http://");
	var imageUBBCode = "[IMG]"+thisImage+"[/IMG]";
	revisedMessage = currentMessage+imageUBBCode;
	document.REPLIER.message.value=revisedMessage;
	document.REPLIER.message.focus();
	return;
	}

	if (action == "quote") {
	var quoteUBBCode = "[QUOTE]  [/QUOTE]";
	revisedMessage = currentMessage+quoteUBBCode;
	document.REPLIER.message.value=revisedMessage;
	document.REPLIER.message.focus();
	return;
	}

	if (action == "code") {
	var codeUBBCode = "[CODE]  [/CODE]";
	revisedMessage = currentMessage+codeUBBCode;
	document.REPLIER.message.value=revisedMessage;
	document.REPLIER.message.focus();
	return;
	}

	if (action == "liststart") {
	var liststartUBBCode = "[LIST]";
	revisedMessage = currentMessage+liststartUBBCode;
	document.REPLIER.message.value=revisedMessage;
	document.REPLIER.message.focus();
	return;
	}

	if (action == "listend") {
	var listendUBBCode = "[/LIST]";
	revisedMessage = currentMessage+listendUBBCode;
	document.REPLIER.message.value=revisedMessage;
	document.REPLIER.message.focus();
	return;
	}
	if (action == "listitem") {
	var thisItem = prompt("$vars_wordlets{enter_list_item}", "");
	var itemUBBCode = "[*]"+thisItem;
	revisedMessage = currentMessage+itemUBBCode;
	document.REPLIER.message.value=revisedMessage;
	document.REPLIER.message.focus();
	return;
	}

	}
//-->
</script>
~;

sub set_page_elements {
local($rn, $rn2, @table_borders, $page_background);
if( ($vars_style{Header} ne '') || ($vars_style{Footer} ne '') ) {
	#create random numbers for headers/footers
	$rn = &make_random_number; 	$rn2 = $rn + 823;

 if ($vars_style{Header} ne '') {
   $vars_style{Header} =~ s/UBBrandomX/$rn/isg;
   $vars_style{Header} =~ s/UBBrandomY/$rn2/isg;
 }
 if ($vars_style{Footer} ne '') {
   $vars_style{Footer} =~ s/UBBrandomX/$rn/isg;
   $vars_style{Footer} =~ s/UBBrandomY/$rn2/isg;
 }
}

if ($vars_style{PageBackground} ne '') {
$page_background = qq!background="$vars_config{NonCGIURL}/$vars_style{PageBackground}"!;
}  else {
$page_background = '';
}


$standard_title_table = qq~
<TABLE border="0" width="$vars_style{TableWidth}">
<TR><TD align="left" valign="top" >
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi"><IMG src="$vars_config{NonCGIURL}/$vars_style{BBTitle}" border="0"></A>
</TD>
<TD align="center">
<B>
<FONT size="3" face="$vars_style{FontFace}" color="$vars_style{BBTitleFontColor}">$vars_config{BBName}</FONT></B>
<br>
<FONT size="1" face="$vars_style{FontFace}">
$MainButtonsLine
</FONT>
</TD></TR></TABLE>
~;

$show_logout = qq~
<script language="JavaScript">
<!--
var user_cookie = getCookie('ubber$vars_config{Cookie_Number}');
if(''==user_cookie ||  null==user_cookie) {
document.writeln('$vars_wordlets{not_logged_in}' , ' <a href="$vars_config{CGIURL}/ultimatebb.cgi?ubb=login">$vars_wordlets{login_now}</a> $vars_wordlets{or} <a href="$vars_config{CGIURL}/ultimatebb.cgi?ubb=agree">$vars_wordlets{register_title}</a>')
} else {

var user_array=user_cookie.split("&");
user_array[2] = unescape(user_array[2]);
document.writeln('$vars_wordlets{hello} ',user_array[2])

document.writeln('[ <a href="$vars_config{CGIURL}/ultimatebb.cgi?ubb=logoff">'
,'<acronym title="$vars_wordlets{logout_acronym}">'
,'$vars_wordlets{logout}</acronym></a> ]');

}
//-->
</script>
~ unless($vars_registration{DisplayRegistration} ne "YES");

my $charsetmeta;
if($vars_style{language_meta} =~ /charset\=.+/) {
$charsetmeta = $vars_style{language_meta};
} else {
$charsetmeta = qq(<meta http-equiv="Content-Type" content="text/html; charset=$masterCharset">);
} #endif

$Header = qq~
<HTML $vars_style{html_extra}>
<HEAD>

$charsetmeta

<script language="JavaScript1.1">
<!--

var session_cookie = getCookie('session$vars_config{Cookie_Number}');
if (session_cookie == null) {
var session_dt = "0";
var session_j = "0";
}  else {
var session_array = session_cookie.split("&");
var session_dt = session_array[0];
var session_j = session_array[1];
}

function getCookie(name) {
     var cname = name + "=";
        var dc = document.cookie;

        if (dc.length > 0) {

             begin = dc.indexOf(cname);

        	 if (begin != -1) {
                begin += cname.length;
        		end = dc.indexOf(";", begin);

                    if (end == -1) end = dc.length;

                    return (dc.substring(begin, end));
             }
        }
        return null;
    }

//-->
</script>

<TITLE>$vars_config{BBName} : $title_wording </TITLE>

<META HTTP-EQUIV="Pragma" CONTENT="no-cache">

	$direct_to

	$vars_style{HeaderInsert}
</HEAD>

<BODY $page_background BGCOLOR="$vars_style{BGColor}" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0" text="$vars_style{TextColor}" link="$vars_style{LinkColor}" vlink="$vars_style{VisitedLinkColor}" alink = "$vars_style{ActiveLinkColor}" marginwidth="0" marginheight="0"  $vars_style{body_extra}>


$vars_style{Header}

~;

local ($contact_url);

if ($vars_display{ContactLinkType} ne 'Email') {
	$contact_url = qq!$vars_display{ContactURL}!;
}  else {
	$contact_url = qq!mailto:$vars_display{BBEmail}!;
}

my $ContactLine = qq!<A HREF="$contact_url">$vars_wordlets{contact_us}</A> | <A HREF="$vars_display{HomePageURL}">$vars_display{MyHomePage}</A> !;

if ($vars_display{ShowPrivacyLink} eq "ON") {
$ContactLine .= qq!| <A HREF="$vars_display{PrivacyURL}">$vars_wordlets{privacy_statement_link}</A>!;
}

$Footer = qq~
<P><center>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
$ContactLine</FONT>
<p>
<FONT COLOR="$vars_style{CopyrightTextColor}" size="1" FACE="$vars_style{FontFace}">$vars_display{YourCopyrightNotice}
<P>
$InfopopCopyright
</FONT>
</center>

$vars_style{Footer}

</BODY>
</HTML>
~;

# simplified header for emails...
$EmailHeader = qq~
<HTML>
<HEAD>
	<TITLE>$vars_config{BBName} : powered by Infopop</TITLE>

<BASE HREF="$vars_config{NonCGIURL}/">

</HEAD>

<BODY $page_background BGCOLOR="$vars_style{BGColor}" topmargin="0" bottommargin="0" leftmargin="0" rightmargin="0" text="$vars_style{TextColor}" link="$vars_style{LinkColor}" vlink="$vars_style{VisitedLinkColor}" alink = "$vars_style{ActiveLinkColor}" marginwidth="0" marginheight="0">

$vars_style{Header}

~;


# set table border display
if ($vars_style{table_border_display} eq '3') {

$table_borders[0] = '2';
$table_borders[1] = '0';
$table_borders[2] = '4';
$table_borders[3] = '1';

}
elsif ($vars_style{table_border_display} eq '2') {
$table_borders[0] = '0';
$table_borders[1] = '1';
$table_borders[2] = '4';
$table_borders[3] = '1';
}  else {

$table_borders[0] = '1';
$table_borders[1] = '1';
$table_borders[2] = '3';
$table_borders[3] = '0';

}

$TBT = qq(
<center>
<table border="0" cellpadding="$table_borders[0]" cellspacing="$table_borders[1]" width="$vars_style{TableWidth}">
<tr bgcolor="$vars_style{TableBorderColor}"><td>
<table border="0" width="100%" cellpadding="$table_borders[2]" cellspacing="$table_borders[3]">
);

$TBB = qq(
</table></td></tr></table>
</center>
);

} #end Set Page Elements


sub Transition {

# requires three parameters:
# $_[0] : URL we are forwarding user to
# $_[1] : Thank you wording
# $_[2] : URL Link Wording

$direct_to = qq!<meta http-equiv="refresh" content="2;URL=$_[0]">!;

&set_page_elements;

print<<THIS;

$Header
<center>
$standard_title_table
</center>
<P>

$TBT

<TR bgcolor="$vars_style{AltColumnColor1}">
<TD valign="bottom" align="left">
<FONT size="1" face="$vars_style{FontFace}">
<B>
$show_logout
 </B>
</font>
</TD>
<TD valign="bottom" align="right">
<FONT size="1" face="$vars_style{FontFace}"><B>
<a href="$vars_config{CGIURL}/ultimatebb.cgi">$vars_config{BBName}</a> &raquo; $vars_wordlets{transition}</B>
</font>
</TD>
</TR>

$TBB

<P>

$TBT

<TR bgcolor="$vars_style{TableColorStrip}">
<TD>
<FONT COLOR="$vars_style{TableStripTextColor}" SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>
$vars_wordlets{transition}
</B></FONT>
</TD>
</TR>

<TR bgcolor="$vars_style{AltColumnColor1}"><TD>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>
$_[1]
<P><BR>
$vars_wordlets{transition_wording}
<A HREF="$_[0]">$_[2]</A>
</B></FONT>
</TD></TR>

$TBB
<P>

$Footer

THIS

} #end Transition

sub StandardHTML {
local($goback);
&set_page_elements;

if (($in{refer} ne '') && ($in{refer} !~ /logoff$/)) {
$goback = qq!<A HREF="$in{refer}">$in{refer}</A>!;
}  else {
$goback = "$vars_wordlets_err{use_back_button}";
}

print<<THIS_PAGE;

$Header

<center>
<TABLE border="0" width="$vars_style{TableWidth}">
<TR><TD>
<A HREF="$vars_config{CGIURL}/ultimatebb.cgi"><IMG src="$vars_config{NonCGIURL}/$vars_style{BBTitle}" border="0"></A>
</TD>
<TD align="center">
<B><FONT size="3" face="$vars_style{FontFace}" color="$vars_style{BBTitleFontColor}">$vars_config{BBName}</FONT></B>
<br>
<FONT size="1" face="$vars_style{FontFace}" >
$MainButtonsLine
</FONT>
</TD></TR></TABLE>
</center>
<P>
$TBT

<TR bgcolor="$vars_style{AltColumnColor1}">
<TD valign="bottom" align="left">
<FONT size="1" face="$vars_style{FontFace}">
<B>
$show_logout
</B>
</font>
</TD>
<TD valign="bottom" align="right">
<FONT size="1" face="$vars_style{FontFace}"><B>
<a href="$vars_config{CGIURL}/ultimatebb.cgi">$vars_config{BBName}</a> &raquo; $vars_wordlets{fyi}</B>
</font>
</TD>
</TR>
$TBB
<P>

$TBT

<TR bgcolor="$vars_style{TableColorStrip}">
<TD>
<FONT COLOR="$vars_style{TableStripTextColor}" SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}"><B>
$vars_wordlets{fyi}
</B></FONT>
</TD>
</TR>

<TR bgcolor="$vars_style{AltColumnColor1}"><TD>
<FONT SIZE="$vars_style{TextSize}" FACE="$vars_style{FontFace}">
<B>$_[0]</B>
<P>
&#187; $goback
</FONT>
</TD></TR>

$TBB
<P>

$Footer

THIS_PAGE

exit;
} #end StandardHTML

sub instant_ubb_code {

my $ubb_code_buttons = qq~
<a href="javascript: x()" onClick="DoPrompt('url');"><img src="$vars_config{NonCGIURL}/url.gif" width="72" height="16" border="0" alt="$vars_wordlets_img{ubb_code_url}"></a>
 &nbsp;
 <a href="javascript: x()" onClick="DoPrompt('email');"><img src="$vars_config{NonCGIURL}/email_url.gif" width="72" height="16" border="0" alt="$vars_wordlets_img{ubb_code_email}"></a>
<br>
<a href="javascript: x()" onClick="DoPrompt('bold');"><img src="$vars_config{NonCGIURL}/bold.gif" width="72" height="16" border="0" alt="$vars_wordlets_img{ubb_code_bold}"></a>
  &nbsp;
  <a href="javascript: x()" onClick="DoPrompt('italics');"><img src="$vars_config{NonCGIURL}/italics.gif" width="72" height="16" border="0" alt="$vars_wordlets_img{ubb_code_italics}"></a>
<br>
<a href="javascript: x()" onClick="DoPrompt('quote');"><img src="$vars_config{NonCGIURL}/ubb_quote.gif" width="72" height="16" border="0" alt="$vars_wordlets_img{ubb_code_quote}"></a>
  &nbsp;
  <a href="javascript: x()" onClick="DoPrompt('code');"><img src="$vars_config{NonCGIURL}/code.gif" width="72" height="16" border="0" alt="$vars_wordlets_img{ubb_code_code}"></a>
<br>
<a href="javascript: x()" onClick="DoPrompt('liststart');"><img src="$vars_config{NonCGIURL}/list-start.gif" width="72" height="16" border="0" alt="$vars_wordlets_img{ubb_code_list_start}"></a>
 &nbsp;
  <a href="javascript: x()" onClick="DoPrompt('listitem');"><img src="$vars_config{NonCGIURL}/list-item.gif" width="72" height="16" border="0" alt="$vars_wordlets_img{ubb_code_list_item}"></a>
<br>
<a href="javascript: x()" onClick="DoPrompt('listend');"><img src="$vars_config{NonCGIURL}/list-end.gif" width="72" height="16" border="0" alt="$vars_wordlets_img{ubb_code_list_end}"></a>
 &nbsp;
 ~;

if ($ubb_images_wording eq '') {
$ubb_code_buttons .= qq~
<a href="javascript: x()" onClick="DoPrompt('image');"><img src="$vars_config{NonCGIURL}/image.gif" width="72" height="16" border="0" alt="$vars_wordlets_img{ubb_code_image}"></a>
~;
}

$ubb_code_buttons .= qq~
<p></p>
<a href="$vars_config{CGIURL}/ultimatebb.cgi?ubb=ubb_code_page" target="_new">$vars_wordlets{ubb_code_explained}</a>
~;

return($ubb_code_buttons);
}


# DANGER: DO NOT REMOVE THE FOLLOWING LINE!
1;