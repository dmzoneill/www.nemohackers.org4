# UBB CODE DIEFINITION PAGE

sub ubb_code_body {

$MainButtonsLine = &MainButtonOptions;

my $body = qq~

<center>
$standard_title_table
<P>
$TBT

<TR bgcolor="$vars_style{AltColumnColor1}">
<TD valign="bottom" align="left">
<FONT size="1" face="$vars_style{FontFace}">
<B>&#187;
$show_logout
</B>
</font>
</TD>
<TD valign="bottom" align="right">
<FONT size="1" face="$vars_style{FontFace}"><B>
<a href="$vars_config{CGIURL}/ultimatebb.cgi">$vars_config{BBName}</a> &raquo; $vars_wordlets{ubb_code}
</B></font>
</TD>
</TR>
$TBB

<TABLE border="0" width="$vars_style{TableWidth}">
<TR>
<TD colspan="2">
<FONT size="$vars_style{TextSize}" face="$vars_style{FontFace}">
<b>What is UBB Code?</b>
<P>
UBBCode&#153; is a variation on the HTML tags you may already be familiar with.  Basically, it allows you to add functionality or style to your message that would normally require HTML.  You can use UBBCode&#153; even if HTML is not enabled for the forum you are using.  You may want to use UBBCode&#153; as opposed to HTML, even if HTML is enabled for your forum, because there is less coding required and it is safer to use (incorrect coding syntax will not lead to as many problems).
<P>
All current UBB Code options are listed below.
</font>
</TD>
</TR>
</TABLE>
<P>
$TBT


<TR bgcolor="$vars_style{TableColorStrip}">
 <TD colspan="2">
 <font size="$vars_style{TextSize}" color="$vars_style{TableStripTextColor}" face="$vars_style{FontFace}">
<b>URL Hyperlinking</b>
</font>
</TD>
</TR>

<tr bgcolor="$vars_style{AltColumnColor1}">
          <TD>
		  <font size="$vars_style{TextSize}" face="$vars_style{FontFace}">
		  If
            UBBCode&#153; is enabled in a forum, you no longer need to use the
            [URL] code to create a hyperlink. Simply type the complete URL in
            either of the following manners and the hyperlink will be created
            automatically:
            <UL>
             <LI> Automatic hyperlinking (no UBBCode required).  Simply type the URL, as in <b>http://www.yourURL.com</b> or  <b>www.yourURL.com </b>
             <LI> Use the [url] code, in either of the following manner:<br>
         <blockquote>
                <b> [url=http://www.infopop.com]</b>infopop.com<b>[/url]</b>
				<BR>
				<b>[url]</b>http://www.infopop.com<b>[/url]</b>
                </blockquote>
            </UL>
                <P>

				For automatic hyperlinking, notice that you can either use the complete http:// address or
                shorten it to the www domain. If the site does not begin with
                "www", you must use the complete "http://" address. Also, you
                may use https and ftp URL prefixes in auto-link mode (when UBBCode&#153;
                is ON).
				<P>

			When using the URL UBBCode, the UBBCode&#153; automatically generates
                  a hyperlink to the URL that is encased. It will also ensure
                  that the link is opened in a new window when the user clicks
                  on it. Note that the "http://" part of the URL is completely
                  optional.   Also
                  note that you should NOT use quotation marks inside the URL
                  tag.
			</font>
          </td></tr>

<TR bgcolor="$vars_style{TableColorStrip}">
 <TD colspan="2">
 <font size="$vars_style{TextSize}" color="$vars_style{TableStripTextColor}" face="$vars_style{FontFace}">
<b>Email Linking</b>
</font>
</TD>
</TR>

<TR bgcolor="$vars_style{BGColor}">
          <TD>
		   <font face="$vars_style{FontFace}" size="$vars_style{TextSize}">
		   To
            add a hyperlinked email address within your message, just encase the
            email address as shown in the following example.
            <P>
              <blockquote>
                <b>[email]</b>info\@test5324566.com<b>[/email]</b>
              </blockquote>
            <P> In
              the example above, the UBBCode&#153; automatically generates a hyperlink
              to the email address that is encased.
			  </font>
</td></tr>

<TR bgcolor="$vars_style{TableColorStrip}">
 <TD colspan="2">
 <font size="$vars_style{TextSize}" color="$vars_style{TableStripTextColor}" face="$vars_style{FontFace}">
<b>Bold & Italics</b>
</font>
</TD>
</TR>

<TR bgcolor="$vars_style{BGColor}">
          <TD>
		  <font size="$vars_style{TextSize}" face="$vars_style{FontFace}">
		  You
            can make italicized text or make text bold by encasing the applicable
            sections of your text with either the [b] [/b] or [i] [/i] tags.
            <P>
              <blockquote>
                 Hello,
                <b>[b]</b>James<b>[/b]</b> : BOLD
				<BR>
                Hello, <b>[i]</b>Mary<b>[/i]</b> : ITALICS
			</blockquote>
				</font>

</td></tr>

<TR bgcolor="$vars_style{TableColorStrip}">
 <TD colspan="2">
 <font size="$vars_style{TextSize}" color="$vars_style{TableStripTextColor}" face="$vars_style{FontFace}">
<b>Bullet Lists</b>
</font>
</TD>
</TR>

<TR bgcolor="$vars_style{BGColor}">
          <TD>
		  <font size="$vars_style{TextSize}" face="$vars_style{FontFace}">
		  You
            can make bulleted lists or ordered lists (by number or letter).
            <P>
			 Unordered, bulleted list:
            <P>
			<b>[list]</b>
     <BR>
              <b>[*]</b> This is the first bulleted item.<BR>
              <b>[*]</b> This is the second bulleted item.<BR>
              <b>[/list]</b>

            <P>
	This produces:
            <ul>
              <LI> This is the first bulleted item.
              <LI> This is the second bulleted item.
            </ul>

Note that
            you must include a closing [/list] when you end each list.

            <P>

Making
              ordered lists is just as easy. Just add either [LIST=A] or [LIST=1].
              Typing [List=A] will produce a list from A to Z. Using [List=1]
              will produce numbered lists.

            <P>
 Here's
              an example:
            <P>
			 <b>[list=A]</b> <BR>
              <b>[*]</b> This is the first bulleted item.<BR>
              <b>[*]</b> This is the second bulleted item.<BR>
              <b>[/list]</b>

            <P>

			 This
              produces:
            <ol type=A>
              <LI> This is the first bulleted item.
              <LI> This is the second bulleted item.
            </ol>
			</font>
          </td></tr>

	  <TR bgcolor="$vars_style{TableColorStrip}">
 <TD colspan="2">
 <font size="$vars_style{TextSize}" color="$vars_style{TableStripTextColor}" face="$vars_style{FontFace}">
<b>Displaying Images</b>
</font>
</TD>
</TR>


<TR bgcolor="$vars_style{BGColor}">
          <TD>
		   <font face="$vars_style{FontFace}" size="$vars_style{TextSize}">
		  To
            add a graphic within your message, just encase the URL of the graphic
            image as shown in the following example.

            <P>
              <BLOCKQUOTE>
                <b>[img]</b>http://www.infopop.com/artwork/footer_logotype.gif<b>[/img]</b>
              </BLOCKQUOTE>
            <P>
	 In
              the example above, the UBBCode&#153; automatically makes the graphic
              visible in your message. Note: the "http://" part of the URL is
              REQUIRED for the <b>[img]</b> code. Also note:
              some UBB forums may disable the <b>[img]</b>
              tag support to prevent objectionable images from being viewed.
			  </font>
</td></tr>

 <TR bgcolor="$vars_style{TableColorStrip}">
 <TD colspan="2">
 <font size="$vars_style{TextSize}" color="$vars_style{TableStripTextColor}" face="$vars_style{FontFace}">
<b>Quoting Other Messages</b>
</font>
</TD>
</TR>


<TR bgcolor="$vars_style{BGColor}">
          <TD>
		  <font size="$vars_style{TextSize}" face="$vars_style{FontFace}">
		  To reference something specific that someone has posted, just cut and
            paste the applicable verbiage and enclose it as shown below
            <P>
              <BLOCKQUOTE>
                <b>[QUOTE]</b>Ask not what your country can do for you....<BR>
                ask what you can do for your country.<b>[/QUOTE]</b>
              </BLOCKQUOTE>
            <P>
			 In
              the example above, the UBBCode&#153; automatically blockquotes the
              text you reference.
			  </font>
</td>
</tr>


 <TR bgcolor="$vars_style{TableColorStrip}">
 <TD colspan="2">
 <font size="$vars_style{TextSize}" color="$vars_style{TableStripTextColor}" face="$vars_style{FontFace}">
<b>Code Tag</b>
</font>
</TD>
</TR>


<TR bgcolor="$vars_style{BGColor}">
          <TD>
		  <font face="$vars_style{FontFace}" size="$vars_style{TextSize}">
		  Similar  to the Quote tage, the Code tag adds some &lt;PRE&gt; tags to preserve
            formatting. This is useful for displaying programming code, for instance.

            <BLOCKQUOTE>
			<b>[CODE]</b><BR>
			#!/usr/bin/perl
            <P>
			 print
              "Content-type: text/html\n\n"; <BR>
              print "Hello World!"; <BR>
			  <b>[/CODE]</b>
            </BLOCKQUOTE>
	 In
              the example above, the UBBCode&#153; automatically blockquotes the
              text you reference and preserves the formatting of the coded text.
			  </font>
</td>
</tr>

$TBB

<BR>

<TABLE border="0" width="$vars_style{TableWidth}">
<TR><TD>
<font face="$vars_style{FontFace}" size="$vars_style{TextSize}">
<b>Of Note:</b>
<P>
You must not use both HTML and UBBCode&#153; to do the same function.  Also note that the UBBCode&#153; is not case-sensitive (thus, you could use <b>[URL]</b> or <b>[url]</b>).
<P>
Incorrect UBBCode&#153; Usage:
<UL>
<LI><b>[url]</b> www.infopop.com <b>[/url]</b>
  - don't put spaces between the bracketed code and the text you are applying
  the code to.
<LI><b>[email]</b>info\@test9342J.com<b>[email]</b>
  - the end brackets must include a forward slash (<b>[/email]</b>)
<P>

    </center>
</FONT>
</TD></TR></TABLE>

</center>
~;

return($body);

} # end ubb_code_body




# Nothing below this line should be changed.. and there is no more code!

# This entire program is copyright Infopop Corporation.
# For more info on the Ultimate Bulletin Board and other Infopop
# Products/Services, visit: http://www.infopop.com

# You may not distribute this program in any manner, modified or otherwise.

#You make modifications, but only for your own use and within the confines of the UBB License Agreement.

# DANGER: Do not remove the following line!
1;