#!/usr/bin/perl

# Before attempting to set up this script, please read
# readme.txt, which you should have received along with this!

# MICROSOFT IIS COMPATIBILITY
# Set the following variable to one of the following:
# $IIS = 0; # The default - auto-detect. Usually works fine.
# $IIS = 1; # You're on IIS -- do basic IIS compatibility.
# $IIS = 2; # You're on IIS, and you still had problems when $IIS was 1.
# $IIS = -1; # You're not on IIS - disable even the auto-detection.

$IIS = 0;

# END OF SETTINGS (unless you encounter problems - then fill out the next section)

# EXTRA SERVER INFORMATION
# Coranto tries to determine its path and URL automatically. This works in 90%
# of cases, but some servers aren't cooperative and don't allow this information
# to be found automatically. Though it won't hurt, there's no need to fill this out
# unless you encounter problems.
#
# If you encounter problems (particularly with incorrect URLs, or fatal error messages
# about files not being found), fill in the two variables below.

$abspath = '';
# Set the above to the absolute path to Coranto's directory, without
# a trailing slash. Example:
# $abspath = '/absolute/path/to/coranto';

$scripturl = '';
# Set the above to the URL to coranto.cgi. Example:
# $scripturl = 'http://www.myserver.com/coranto/coranto.cgi';
# END EXTRA SERVER INFORMATION

=head1 LICENSE

This software is provided for alpha testing purposes only.
IT MAY NOT BE DISTRIBUTED IN ANY WAY WHATSOEVER, WHETHER
OR NOT MONEY IS CHARGED.

While Coranto is still in the alpha stages, linking requirements
do not apply.

=cut


#######
# START (Unless you know Perl, don't change anything after this point.)
#######

# Don't change this number! Used internally.
$crcgiBuild = 23;

# In order to trap as many errors as possible, we run everything via an eval.
# If $JustLoadSubs is set, that means we're being included by an external
# script which doesn't want us to run, so don't.

unless ($JustLoadSubs) {
	# Disable warnings and redirect warn signals to fatal errors.
	$^W = 0;
	$SIG{__WARN__} = sub { die @_; };
	
	# The following commented section causes the warn function to do nothing.
	# It's useful only with modules that insist on warnings.
	
	#package CORE::GLOBAL;
	#use subs 'warn';
	#sub warn { }
	#package main;	

	eval { 
		main(); 
	};
	if ($@) {
		CRdie("Untrapped Error: $@");
	}
}



# This is the first sub to be executed.

sub main {
	
	
	# Try and be compatible with Microsoft IIS.
	if ($IIS >= 0) {
		if ($IIS == 0) {
			if ($ENV{'SERVER_SOFTWARE'} =~ /IIS/) {
				$IIS = 1; 
			}
		}
		if (($IIS) && ($0 =~ m!(.*)(\\|\/)!)) {
			chdir($1);
		}
		if ($IIS == 2) {
			print "HTTP/1.0 200 OK\n";
		}
	}
	
	# If extra server information was specified, use it.
	push(@INC, $abspath) if $abspath;	
	
	# We're done. Now load the core and start running it.
	NeedFile('crcore.pl');
	RunCoranto();
}


# Takes care of loading in external Perl files.
my %LoadedFiles;	
sub NeedFile {
	my $file = shift;
	unless ($LoadedFiles{$file}) {
		eval { require $file; };
		if ($@) {
			if (-e $file) {
				if (-r $file) {
					CRdie("Could not include file $file. The file, however, appears to exist. This usually indicates
						some form of syntax error in the file. Message: $@");
				}
				else {
					CRdie("Could not include file $file. The file appears to exist but is not readable. Check file permissions. Full Message: $@");
				}
			}
			else {
				CRdie("Could not include file $file. The file does not appear to exist. Verify that this file is where it should be.<br>Full Message: $@",1);
			}
		}
		$LoadedFiles{$file} = 1;
	}
}

# Gets our current absolute path. Needed for error messages.
sub GetDirInfo {
	my $cwd;
	eval q~use Cwd; $cwd = cwd();~;
	unless ($cwd) {
		$cwd = `pwd`; chomp $pwd;
	}
	$cwd =~ s!\\!/!g;
	return $cwd;
}

# Gets our full URL. Needed for error messages.
sub GetScriptURL {
	my $url = 'http://' . ($ENV{'HTTP_HOST'} ? $ENV{'HTTP_HOST'} : $ENV{'SERVER_NAME'}) .  
	($ENV{'SERVER_PORT'} != 80 && $ENV{'HTTP_HOST'} !~ /:/ ? ":$ENV{'SERVER_PORT'}" : '') .
	$ENV{'SCRIPT_NAME'};
	return $url;
	
}

# CRHTMLHead: Displays the standard HTML header used by all script pages.
sub CRHTMLHead {
	unless ($HTMLHeaderPrinted) {
	my ($title, $adminnav) = @_;
	$title =~ s/</&lt;/g;
	$title =~ s/>/&gt;/g;
	$title =~ s/"/&quot;/g;
	print qq~
	<html><head><title>Coranto: $title</title>	$Messages{'ContentType'}
	~;
	print PrintCSS();
	# HOOK: CRHTMLHead_Head
	if($Addons{'CRHTMLHead_Head'}){my $w;foreach $w (@{$Addons{'CRHTMLHead_Head'}}){my $addon=$w->[2];eval ${$w->[0]};AErr($addon,$@)if $@;};}
	print '</head> <body link="#D00000" vlink="#D00000" alink="#D00000" class="bodybg">';
	# HOOK: CRHTMLHead
	if($Addons{'CRHTMLHead'}){my $w;foreach $w (@{$Addons{'CRHTMLHead'}}){my $addon=$w->[2];eval ${$w->[0]};AErr($addon,$@)if $@;};}
	print q~
	<table width="70%" border="0" cellpadding="2" align="center" cellspacing="2">
	  <tr><td><div align="center" class="miniheader">~;
	print qq~ <a href="$CConfig{'SiteLink'}">~ if $CConfig{'SiteLink'};
	print $CConfig{'SiteTitle'};
	print '</a>' if $CConfig{'SiteLink'};
	print qq~
	</div></td><td><div align="center"><a href="http://amphibian.gagames.com/newspro/" class="miniheader">Coranto 
	$CorantoVersion</a></div></td></tr><tr> 
	<td colspan="2" class="darkgbg"> 
	<table width="100%" border="0" cellspacing="0" cellpadding="2" class="redbg"><tr><td>
        <div align="center" class="largeheader">$title</div></td></tr></table></td></tr></table>
	<br>
	<div align="center"><h4>This is private alpha software. Do not redistribute.</h4></div>
	<table width="90%" border="0" cellspacing="0" cellpadding="4" class="redbg" align="center">
	<tr><td><table width="100%" border="0" cellspacing="0" cellpadding="6" class="whitebg" align="center">
        <tr><td>
        ~;
	if ($CurrentUser) {
		print qq~<table width="80%" border="0" cellspacing="0" cellpadding="2" align="center" class="yellowbg">
		              <tr><td><div align="center" class="miniheader"> $Messages{'LoggedIn'} $CurrentUser.~;
		if ($adminnav) {
			print '<br>back to the ' . PageLink( {'action' => 'mainpage'} ) . 'Main Page</a> | back to ' . 
				PageLink( {'action' => 'admin'} ) . 'Administration</a>';
		}
		# HOOK: CRHTMLHead_UserBar
		if($Addons{'CRHTMLHead_UserBar'}){my $w;foreach $w (@{$Addons{'CRHTMLHead_UserBar'}}){my $addon=$w->[2];eval ${$w->[0]};AErr($addon,$@)if $@;};}
		print'</div></td></tr></table><br>';
    	}
	$HTMLHeaderPrinted = 1;
	} # end unless $HTMLHeaderPrinted
}

# This roundabout method of printing CSS code exists to make things easier for addons.
sub PrintCSS {
	my $css = $CConfig{'HeadCSS'};
	# HOOK: PrintCSS
	if($Addons{'PrintCSS'}){my $w;foreach $w (@{$Addons{'PrintCSS'}}){my $addon=$w->[2];eval ${$w->[0]};AErr($addon,$@)if $@;};}
	return qq~<style type="text/css">
<!--
$css
-->
</style>~;
}



sub CRHTMLFoot_NoNav {
	print '</td></tr></table></td></tr></table></body></html>';
}

# CRHTMLFoot: Displays the HTML footer used by all script pages.
sub CRHTMLFoot {
	print '</td></tr></table></td></tr></table>';
	print q~<br><table width="70%" border="0" cellspacing="0" cellpadding="2" align="center" class="redbg">
  	<tr><td><table width="100%" border="0" cellspacing="0" cellpadding="8" class="navlink">
        <tr><td><div align="center">
	~;
	my $mpage = $Messages{'Section_MainPage'};
	$mpage =~ s/ /&nbsp;/g;
	print PageLink( {'action' => 'mainpage'} ) . "$mpage</a> | ";
	my @funclist = map { $_->[0] =~ s/ /&nbsp;/; PageLink( {'action' => $_->[2]}) . "$_->[0]</a>&nbsp;" } @AvailableFunctions;
	# HOOK: CRHTMLFoot
	if($Addons{'CRHTMLFoot'}){my $w;foreach $w (@{$Addons{'CRHTMLFoot'}}){my $addon=$w->[2];eval ${$w->[0]};AErr($addon,$@)if $@;};}
	print join('| ', reverse(@funclist));
	if ($CConfig{'SiteLink'}) {
		print qq~| <a href="$CConfig{'SiteLink'}">$Messages{'BackTo'}&nbsp;$CConfig{'SiteTitle'}</a> ~;
	}
	print q~</div></td></tr></table></td></tr></table>~;
	# HOOK: CRHTMLFoot_2
	if($Addons{'CRHTMLFoot_2'}){my $w;foreach $w (@{$Addons{'CRHTMLFoot_2'}}){my $addon=$w->[2];eval ${$w->[0]};AErr($addon,$@)if $@;};}
	print '</body></html>';
}

# CRdie: Generates a pretty error message with as much information as possible.
sub CRdie {
	if ($CRdied) {
		exit;
	}
	undef %Addons;
	$CRdied++;
	my $msg = shift;
	my $enableHTML = shift;
	$msg =~ s/\n//g;
	$msg =~ s/<br>/\n/g;
	unless ($enableHTML) {
		$msg =~ s/</&lt;/g;
		$msg =~ s/>/&gt;/g;
	}
	$msg =~ s/\n/<br>/g;
	if (!$HeaderPrinted) {
		print "Content-type: text/html\n\n";
	}
	if (!$HTMLHeaderPrinted) {
		CRHTMLHead("Fatal Error");
	}
	print qq~<div align="center">An error has occurred. The exact description of the error is:</div>
	<table width="80%" border="0" cellpadding="2" align="center"><tr class="fieldtitle"><td class="whitebg">
	<div align="center">$msg</div></td></tr></table>
	<p>If this error indicates a problem that you don't know how to solve, see the Coranto documentation
	and <a href="http://amphibian.gagames.com/newspro/faq2/">FAQ</a>. If neither of these resources help, you can
	send an e-mail to <a href="mailto:newspro-help-errmsg\@amphibian.hypermart.net">Technical Support</a>.
	Include the full text of this error message (including the section below) and a description of what actions
	prompted the error.</p>
	<table width="90%" border="0" align="center" cellpadding="3" class="yellowbg"><tr><td class="footnote"><hr><div align="center"><b>USEFUL INFORMATION</b></div>\n<br>~;
	if ($!) {
		print "Perl may have generated the following error: $!\n<br>";
	}
	print "Perl Version: $]\n<br>";
	print "Script Version: $CorantoVersion\n<br>";
	print "Script Build: $coreBuild\n<br>";
	print "Script URL: $scripturl\n<br>";
	print '@INC: <ul><li>' . join("</li>\n<li>", @INC) . '</li></ul>';
	($0 =~ m,(.*)/[^/]+,)   && unshift (@INC, "$1");
	($0 =~ m,(.*)\\[^\\]+,) && unshift (@INC, "$1");
	print "Script Location (Method 1): $0\n<br>";
	my $dirname = GetDirInfo();
	$dirname =~ s/\\/\//g;
	print "Script Location (Method 2): $dirname\n<br>";
	print "<br>\n<b>ENVIRONMENT VARIABLES</b>\n<br>";
	while (($key, $value) = each %ENV) {
		unless ($key eq "HTTP_COOKIE") {
			print "$key: $value\n<br>";
		}
	}
	print "<br>\n<b>MESSAGE:</b> $msg\n<br>";
	print '<hr></td></tr></table>';
	CRHTMLFoot_NoNav();
	exit;
}
1;	
	
