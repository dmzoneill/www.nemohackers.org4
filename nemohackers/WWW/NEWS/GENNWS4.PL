# The number of news items to include
$ItemNumber = 600;

# How far apart these items should be, in seconds.
$ItemSpacing = (60 * 60 * 3);

# How many words per item
$WordsPerItem = 150;

# How many letters in each "word"
$LettersPerWord = 6;

$newsid = 'a';

$TheCounter = 1;
$NowTime = time;
require "crcfg.pl";
$TimeDiff = (($ItemNumber + 1) * $ItemSpacing);
@alpha = split(//, 'abcdefghijklmnopqrstuvwxyz');
open(ND, ">newsdat.txt");
while ($TheCounter < $ItemNumber) {
	$Text = '';
	for ($Count2 = 0; $Count2 < $WordsPerItem; $Count2++) {
		for ($Count3 = 0; $Count3 <= $LettersPerWord; $Count3++) {
			$Text .= $alpha[int(rand(26))];
		}
		$Text .= " ";
	}
	$User = 'FakePoster';
	$Subject = "Fake News Item #$TheCounter";
	$Category = "(default)";
	$newstime = ($NowTime - ($ItemSpacing * $TheCounter));
	$newsline = JoinDataFile();
	print ND $newsline . "\n";

	$newsid++;
	$TheCounter++;
	unless ($TheCounter % 50) { print '.'; }
}
close(ND);
print "\n\n\nComplete.\n";