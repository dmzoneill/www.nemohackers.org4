
sub FirstTimePage {
	CRHTMLHead('Temporary Setup');
	my $dir = GetDirInfo();
	$dir ||= '(unable to determine)';
	print qq~
	Hi. This is setup. This is also a temporary, quick-and-dirty setup -- the full setup ain't written yet.
	This contains only the most basic settings; you'll probably want to browse the Administration section after
	setup, particularly Change & Advanced Settings.
	<form action="$scripturl" method="POST">
	<input type="hidden" name="action" value="setup">
	First, choose the username and password you'll use to log in in the future.<br>
	Username: <input type="text" name="username"><br>
	Password: <input type="text" name="password">
	<p>Now, set the various program paths (Program Files, News Files, and Archive). Remember, you must use <b>absolute paths</b>.
	The path of the current directory appears to be <b>$dir</b>.<br>
	Program Files Path: <input type="text" name="admin_path" value="$dir"><br>
	News Files Path: <input type="text" name="htmlfile_path" value="$dir"><br>
	Archive Files Path: <input type="text" name="archive_path" value="$dir"><br>
	<input type="submit" value="Click here when you're good and ready"></form>
	~;
	CRHTMLFoot_NoNav();
}

sub SetupHandler {
	#print header();
	if ($CConfig{'firsttime'} ne 'yes') {
		CRdie("This script has already been set up.");
	}
	my $username = $in{'username'};
	my $pass = $in{'password'};
	CRdie("Username &quot;$username&quot; contains illegal characters. Only letters, numbers, and underscores are permitted in usernames.") if ($username =~ /[^a-zA-Z0-9_]/);
	CRdie("Usernames have to be at least 3 characters long.") unless length($username) > 2;
	CRdie("Passwords have to be at least 5 characters long.") unless length($pass) > 4;
	NeedFile('crcrypt.pl');
	my $crcrypt = new CRcrypt;
	$userdata{$username}->{'CPassword'} = $crcrypt->GetHash($pass . $username);
	$userdata{$username}->{'UserLevel'} = 3;
	WriteUserInfo();
	$CConfig{'admin_path'} = SecurePath($in{'admin_path'});
	$CConfig{'htmlfile_path'} = SecurePath($in{'htmlfile_path'});
	$CConfig{'archive_path'} = SecurePath($in{'archive_path'});
	my $newsdat = "$CConfig{'htmlfile_path'}/newsdat.txt";
	unless (-e $newsdat) {
		my $fh = CRopen(">$newsdat");
		close($fh);
	}
	$in{'action'} = 'login';
	$in{'uname'} = $username;
	$in{'pword'} = $pass;
}

1;