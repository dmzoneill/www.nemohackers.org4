<?php 

//Copyright 2001 Allen Ding, Malaysia 
//Please replace you@mail.com at line 43 with your email address 

include('extention.inc'); 
include('functions.'.$phpEx); 
include('config.'.$phpEx); 
require('auth.'.$phpEx); 

if(!$db = mysql_connect("$dbhost", "$dbuser", "$dbpasswd")) 
    die('<font size=+1>An Error Occured</font><hr>phpBB was unable to connect to the database. <BR>Please check $dbhost, $dbuser, and $dbpasswd in config.php.'); 
if(!mysql_select_db("$dbname",$db)) 
    die("<font size=+1>An Error Occured</font><hr>phpBB was unable to find the database <b>$dbname</b> on your MySQL server. <br>Please make sure you ran the phpBB installation script."); 

if($newpoll){ 
if($poll_id=make_topic($title,$choices)){ 
?> 

<HTML> 
<HEAD> 
<TITLE>Make a poll</TITLE> 
<LINK REL="stylesheet" TYPE="text/css" HREF="./sitiawan.css"> 
<SCRIPT LANGUAGE="javascript"> 
<!-- hide from old 

window.opener.newtopic.poll_id.value = <?php echo $poll_id; ?>; 

//show me --> 
</SCRIPT> 
</HEAD> 
<BODY> 
Success, the poll has been created. When the thread is posted, the poll will appear at the top of the thread.<BR> 
You can now close the window.<BR><BR> 
<A HREF="#" onClick="window.close();">CLOSE WINDOW</A> 
</BODY> 
</HTML> 

<?php 
exit; 
} 
else{ 
echo "A problem has occured. We are sorry. Please report this to <A HREF=\"mailto:you@mail.com\">you@mail.com</A>"; 
exit; 
} 

} 

function make_topic($title,$choices){ 
if(!mysql_query("INSERT INTO poll_topics VALUES(NULL,'$title',now(),'$choices')")) die (sql_error()); 
$poll_id = mysql_insert_id(); 

echo $poll_id; 

return $poll_id; 
} 

?> 

<HTML> 
<HEAD> 
<TITLE>Make a poll</TITLE> 
<LINK REL="stylesheet" TYPE="text/css" HREF="./sitiawan.css"> 
</HEAD> 
<BODY> 

<FORM NAME="poll" ACTION="<?php echo $PHP_SELF; ?>" METHOD=POST> 
This poll will appear at the top part of the thread that you are making.<BR><BR> 

Poll Title: (Example: Which Restaurant is the best?)<BR><BR> 
<INPUT TYPE="text" NAME="title" SIZE=20><BR><BR> 
Choices (use a comma to seperate different choices - Example: Yes,No,Maybe ):<BR><BR> 
<INPUT TYPE="text" name="choices" SIZE=25><BR><BR> 
<INPUT TYPE="submit"> 
<INPUT TYPE="hidden" NAME="newpoll" VALUE=1> 
</FORM> 

</BODY> 
</HTML> 