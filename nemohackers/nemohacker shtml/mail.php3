<?php
	
	$open = fopen("./mail.txt", "a+");
	fwrite($open, "$email     ");
	fclose($open);

?>
