# WARNING: This is a generated (and frequently re-generated)
# file. DO NOT EDIT.

@fieldDB = (q~Subject~, q~Text~);
@fieldDB_internalorder = (q~Subject~, q~User~, q~Text~, q~newsid~, q~newstime~, q~Category~);
%fieldDB = (
'Text' => { 'ModifyPerm' => q~0~,
'SubmitPerm' => q~0~,
'FieldType' => q~2~,
'FieldCols' => q~60~,
'DisplayName' => q~News Text~,
'Newlines' => q~1~,
'FieldRows' => q~15~ },
'Subject' => { 'SubmitPerm' => q~0~,
'ModifyPerm' => q~0~,
'FieldSize' => q~45~,
'FieldType' => q~1~,
'DisplayName' => q~Subject~ });
%LoginMessages = (
'Fail_Message' => q~The information you entered is incorrect. Please use your browser's Back button and try again.~,
'Title' => q~Coranto Login (Authorized Users Only)~,
'Password' => q~Password:~,
'Remember' => q~Remember Password?~,
'Username' => q~Username:~,
'Fail_Title' => q~Login Failure~,
'Login' => q~Log In~,
'Disable' => q~Your account has been disabled. Contact the administrator of this site for more information.~);
@Week_Days = (q~Sunday~, q~Monday~, q~Tuesday~, q~Wednesday~, q~Thursday~, q~Friday~, q~Saturday~);
@Months = (q~January~, q~February~, q~March~, q~April~, q~May~, q~June~, q~July~, q~August~, q~September~, q~October~, q~November~, q~December~);
%NewsStyles = (
'ArchiveLink' => { 'FullName' => q~Archive Link Style~,
'RawStyle' => q~<font size=2><a href="<Field: FileName>"><Field: ArchiveDate></a><br>
~,
'Type' => q~Archive Link~ },
'Default' => { 'FullName' => q~Default Style~,
'RawStyle' => q~<font size=2><b><i><Field: Subject></b></i></font><br><font size=2> -- Posted by <a href="mailto:<Field: UserField_Email>"><Field: User></a> on <font size=2><Field: Date><br /></font><font size=2><Field: Text><br>-------------------<br>
~,
'Type' => q~Standard~ });
sub NewsStyle_ArchiveLink {
my $newshtml = qq~<font size=2><a href="$FileName">$ArchiveDate</a><br>
~;
return $newshtml;
}
sub NewsStyle_Default {
my $newshtml = qq~<font size=2><b><i>$Subject</b></i></font><br><font size=2> -- Posted by <a href="mailto:$UserField_Email">$User</a> on <font size=2>$Date<br /></font><font size=2>$Text<br>-------------------<br>
~;
return $newshtml;
}
sub SplitDataFile {
	($Subject, $User, $Text, $newsid, $newstime, $Category) = split(/\`\`x/, $_[0]);
}
sub JoinDataFile {
	return join('``x', $Subject, $User, $Text, $newsid, $newstime, $Category);
}
$validcrcfg = 1;
1;