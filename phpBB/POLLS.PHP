<?php 

//Copyright 2001 Allen Ding,Malaysia 
//Please dont remove this :) 

include_once "config.php"; 

if(!$db = mysql_connect("$dbhost", "$dbuser", "$dbpasswd")) 
    die('<font size=+1>An Error Occured</font><hr>phpBB was unable to connect to the database. <BR>Please check $dbhost, $dbuser, and $dbpasswd in config.php.'); 
if(!mysql_select_db("$dbname",$db)) 
    die("<font size=+1>An Error Occured</font><hr>phpBB was unable to find the database <b>$dbname</b> on your MySQL server. <br>Please make sure you ran the phpBB installation script."); 

//If required, you can test success with the return value of the vote(int,int) function 
if(isset($vote) && isset($choice)){ 
vote($poll_id,$choice); 
header("location:$thisurl&showpollresult=1"); 
exit; 
} 
elseif(isset($vote)){ 
header("location:$thisurl&showpollresult=1"); 
exit; 
} 


//This function queries the database for the poll title and the string of choices 
function get_poll_info($poll_id){ 
if(!$result=mysql_query("SELECT title,choices FROM poll_topics WHERE poll_id=$poll_id")) die (sql_error()); 
if(!$result=mysql_fetch_array($result))die(sql_error()); 
return $result; 
} 

//This function splits the choices (passed as a comma seperated string) into an array of choices 
function parse_choices($choices){ 
$choices = explode(",",$choices); 
return $choices; 
} 

//Gets the number of votes for a specific choice from a specific poll 
function get_result($poll_id,$choice){ 
if(!$result=mysql_query("SELECT count(vote_id) FROM poll_data WHERE poll_id=$poll_id AND choice='$choice'")) die (sql_error()); 
return mysql_result($result,0,0); 
} 

//Function that checks and processes a vote that is made 
function vote($poll_id,$choice){ 
global $REMOTE_ADDR,$voted; 
//If there is a cookie with the poll_id already in it (user already voted), 
//the vote is not recorded 
if($voted[$poll_id]){ 
return 0; 
} 

//The number of seconds allowed between votes for a certain ip , if the IP has voted 
//again within this time limit, the vote is not recorded 
if(!$result=mysql_query("SELECT count(vote_id) FROM poll_data WHERE (UNIX_TIMESTAMP()-time) < 7200 AND poll_id=$poll_id AND ip='$REMOTE_ADDR'"))die(sql_error()); 
if(mysql_result($result,0,0)){ 
return 0; 
} 

//Enters the vote into the database 
if(!$result=mysql_query("INSERT into poll_data VALUES(NULL,$poll_id,'$REMOTE_ADDR',UNIX_TIMESTAMP(),$choice)")) die (sql_error()); 
setcookie("voted[$poll_id]",1,time()+360000); 
$voted[$poll_id]=1; 
return 1; 
} 


//This is the output part of the polling code 
//Modify the code starting form here to customize the output 
//to your preferences. 

if(!isset($poll_id)){ 
echo "No Poll Selected"; 
exit; 
} 

//If a vote action has not been performed , and no request for showpollresult has 
//been made, show the code for allowing votes 
//Format the results & HTML you want here 
if(!$vote && !$showpollresult){ 
?> 

<FORM NAME="voting" METHOD="post" ACTION="polls.php">
  <?php 
$poll=get_poll_info($poll_id); 
$choices = parse_choices($poll['choices']);    //Array of choices 
echo "<B>".$poll['title']."</B><BR>"; 
for($x=0;$x < count($choices) ; $x++){ 
echo "\n<INPUT TYPE=\"radio\" NAME=\"choice\" VALUE=\"$x\"> ".$choices[$x]; 

    if(!$poll_rowformat){ 
    echo "<BR>"; 
    }else{ 
    echo "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"; 
    } 

} 
?>
  <INPUT TYPE="hidden" NAME="vote" VALUE=1> 
<INPUT TYPE="hidden" NAME="thisurl" VALUE="<?php echo $PHP_SELF."?".$QUERY_STRING."&showpollresult=1"; ?>"> 
<INPUT TYPE="hidden" NAME="poll_id" VALUE="<?php echo $poll_id; ?>"> 
<BR>
  <input type="submit" value="Submit" name="submit">
  <BR> 
<A HREF="<?php echo $PHP_SELF."?".$QUERY_STRING."&showpollresult=1"; ?>">View results</A> 
</FORM> 


<?php 
//end if 
//If vote action has been performed (regardless of accepted vote), 
//or a manual request for showpollresult has been made, outputs the poll results 
//Format the results & HTML you want here 
}else{ 

$poll=get_poll_info($poll_id);    //To get poll title from topics 
$choices=parse_choices($poll['choices']);    //Array of choices 

for($i=0; $i < count($choices);$i++){ 
$data[$i]=get_result($poll_id,$i);    //Array of number of votes (key=integer corresponding to choices, value=integer) 
$total_votes+=$data[$i];    //Add up total votes 
} 


echo "<B>".$poll['title']."</B><BR>"; 
echo "\nTotal Votes: ".$total_votes."<BR><BR>"; 

    if($total_votes){ 
    for($x=0;$x < count($data);$x++){ 
    $fraction=round(($data[$x]/$total_votes),4); 
?> 
<IMG SRC="./images/dot.gif" HEIGHT=10 WIDTH=1><IMG SRC="./images/blue.gif" HEIGHT=10 WIDTH="<?php echo round($fraction*150); ?>"><IMG SRC="./images/dot.gif" HEIGHT=10 WIDTH=1><BR> 

<?php echo $choices[$x]." (".$data[$x].") (".($fraction*100)."%)"; ?><BR><BR> 
<?php 
}//end for 
}//end if 
echo "\n</DIV></BODY></HTML>"; 

}//end else 
?> 
