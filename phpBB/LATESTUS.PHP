<?php  

// **********************************************************  

// Script Title: The latest posts  
// by Philip Mayer   

// Downloadable at www.phppb.de 
// Email: webmaster@phpbb.de 

// **********************************************************  

include('extention.inc');  
include('functions.'.$phpEx);  
include('config.'.$phpEx);  
require('auth.'.$phpEx);  
$pagetitle = "Neueste Posts";  
$pagetype = "other";  
include('page_header.'.$phpEx);  

// String and language Stuff, adjust if you like:  

 $las24_msg ="Last 24 hours";  
 $today_msg = "Today";   
 $yestr_msg = "Yesterday";   
 $lweek_msg = "Last week";  
 $laday_msg = "Last $nodays days";  
   
 $show      = "Show posts:";  
 $showing   = "Currently showing:";  
   
 $last      = "Last";  
 $days      = "Days";  
   
/* Select orders are:   

 las24   Last 24 Hours  
 today   Today  
 yestr   Yesterday  
 lweek   Last week  
 laday   Last days, number specified in $nodays  
*/   

// Select order specified ??  

if (!isset($selorder)) $selorder = "las24";  
if (!isset($nodays)) $nodays = 3;  

// SQLs:  

$part1 = "SELECT t.topic_id as id FROM forums f, topics t WHERE f.forum_id = t.forum_id AND f.forum_type != 1 AND ";  
$part2 = " ORDER BY t.topic_time DESC";  

$lastweeksql  = $part1."TO_DAYS(NOW()) - TO_DAYS(t.topic_time) < 8".$part2;  
$yesterdaysql = $part1."TO_DAYS(NOW()) - TO_DAYS(t.topic_time) = 1".$part2;  
$todaysql     = $part1."TO_DAYS(NOW()) - TO_DAYS(t.topic_time) = 0".$part2;  

$last24hsql   = $part1."t.topic_time > DATE_SUB(NOW(), INTERVAL 1 DAY)".$part2;  
$lastXdsql    = $part1."t.topic_time > DATE_SUB(NOW(), INTERVAL $nodays DAY)".$part2;  

switch ($selorder) {  

 case "las24" : $sql = $last24hsql; $msg = $las24_msg; break;  
 case "today" : $sql = $todaysql; $msg = $today_msg; break;  
 case "yestr" : $sql = $yesterdaysql; $msg = $yestr_msg; break;  
 case "lweek" : $sql = $lastweeksql; $msg = $lweek_msg; break;  
 case "laday" : $sql = $lastXdsql; $msg = $laday_msg; break;   

}  

    
  if(!$r = mysql_query($sql, $db)) echo "Error...";  
    
   
  // all data ready, displaying...  

?>  
<form name="form1" method="get" action="">  
<TABLE BORDER="0" WIDTH="<?php echo $TableWidth?>" CELLPADDING="1" CELLSPACING="0" ALIGN="CENTER" VALIGN="TOP"><TR><TD BGCOLOR="<?php echo $table_bgcolor?>"> 
<TABLE BORDER="0" CELLPADDING="1" CELLSPACING="1" WIDTH="100%"> 
 <TR BGCOLOR="<?php echo $color1?>" ALIGN="LEFT"> 
    <TD BGCOLOR="<?php echo $color1?>" ALIGN="CENTER" VALIGN="MIDDLE"> 
        <p align="center"><font face="<?php echo $FontFace?>" size="<?php echo $FontSize2?>">   
          <br>  
          <? echo $showing; ?>  
          <b>   
          <? echo $msg; ?>  
          </b> </font></p>  
        <p align="center" /><font face="<?php echo $FontFace?>" size="<?php echo $FontSize2?>">   
          <? echo $show; ?>  
          [ <a href="<? echo $PHP_SELF; ?>?selorder=lweek">   
          <? echo $lweek_msg; ?>  
          </a> ] [ <a href="<? echo $PHP_SELF; ?>?selorder=yestr">   
          <? echo $yestr_msg; ?>  
          </a> ] [ <a href="<? echo $PHP_SELF; ?>?selorder=las24">   
          <? echo $las24_msg; ?>  
          </a> ] [ <a href="<? echo $PHP_SELF; ?>?selorder=today">   
          <? echo $today_msg; ?>  
          </a> ] [   
          <? echo $last; ?>  
          <input type="text" name="nodays" size="2" value="<? echo $nodays; ?>" maxlength="3">  
          <input type="hidden" name="selorder" value="laday">  
          <a href="javascript:document.form1.submit();">   
          <? echo $days; ?>  
          </a> ] <br>  
          </font>   
      </td>  
    </tr>  
  </table>  
      </td>  
    </tr>  
  </table>  
  <br>  
</form>  

<TABLE BORDER="0" CELLPADDING="1" CELLSPACING="0" ALIGN="CENTER" VALIGN="TOP" WIDTH="95%"><TR><TD  BGCOLOR="<?php echo $table_bgcolor; ?>">  
<TABLE BORDER="0" CELLPADDING="1" CELLSPACING="1" WIDTH="100%">  
<TR BGCOLOR="<?php echo $color1?>" ALIGN="LEFT">  
        <TD ALIGN="CENTER" WIDTH="50%"><font face="<?php echo $FontFace?>" size="<?php echo $FontSize2?>"><B>Topic</B></font></TD>  
        <TD ALIGN="CENTER" WIDTH="15%"><font face="<?php echo $FontFace?>" size="<?php echo $FontSize2?>"><B>Forum</B></font></TD>  
        <TD ALIGN="CENTER" WIDTH="15%"><font face="<?php echo $FontFace?>" size="<?php echo $FontSize2?>"><B>Author</B></font></TD>  
        <TD ALIGN="CENTER" WIDTH="20%"><font face="<?php echo $FontFace?>" size="<?php echo $FontSize2?>"><B>Posted</B></font></TD>  
</TR>  
   <?  
    while($g = mysql_fetch_array($r)) {  
    $replys = get_total_posts($g[id], $db, "topic");  

    $sql = "SELECT p.post_time, f.forum_id, f.forum_name, t.topic_id, t.topic_title, u.user_id, u.username FROM posts p, users u, forums f, topics t WHERE p.topic_id = $g[id] AND f.forum_id = t.forum_id AND p.poster_id = u.user_id AND f.forum_type != 1 AND p.topic_id = t.topic_id ORDER BY post_time DESC LIMIT 1";  
      
    $r00 = mysql_query($sql, $db);  
    $m = mysql_fetch_array($r00);  
      
      
       ?>  
      
           <TR BGCOLOR="<? echo $color2; ?>">  
        <TD ALIGN="CENTER" WIDTH="50%"><font face="<?php echo $FontFace?>" size="<?php echo $FontSize2?>"><a href="<? echo "viewtopic.$phpEx?topic=$m[topic_id]&forum=$m[forum_id]"; ?>"><? echo stripslashes($m[topic_title]); ?></a></font>  
        <?  
   if($replys > $posts_per_page) {  
     echo "&nbsp;&nbsp;&nbsp;<font size=\"$FontSize3\" face=\"$FontFace\" color=\"$textcolor\">(<img src=\"$posticon\">$l_gotopage ";  
     $times = 1;  
     for($x = 0; $x < $replys; $x += $posts_per_page) {  
        if($times > 4) {  
           if(($x + $posts_per_page) >= $replys) {  
          echo " ... <a href=\"viewtopic.$phpEx?topic=$m[topic_id]&forum=$m[forum_id]&start=$x\">$times</a>";  
           }  
        }  
        else {  
           if($times != 1)  
         echo ", ";  
           echo "<a href=\"viewtopic.$phpEx?topic=$m[topic_id]&forum=$m[forum_id]&start=$x\">$times</a>";  
        }  
        $times++;  
     }  
     echo ")</font>";  
      }          
      ?>  
        </TD>  
        <TD ALIGN="CENTER" WIDTH="15%"><font face="<?php echo $FontFace?>" size="<?php echo $FontSize2?>"><a href="<? echo "viewforum.$phpEx?forum=$m[forum_id]"; ?>"><? echo stripslashes($m[forum_name]); ?></a></font></TD>  
        <TD ALIGN="CENTER" WIDTH="15%"><font face="<?php echo $FontFace?>" size="<?php echo $FontSize2?>"><a href="<? echo "bb_profile.$phpEx?mode=view&user=$m[user_id]"; ?>"><? echo $m[username]; ?></a></font></TD>  
        <TD ALIGN="CENTER" WIDTH="20%"><font face="<?php echo $FontFace?>" size="<?php echo $FontSize2?>"><? echo $m[post_time]; ?></font></TD>  
        </TR>   
        <?  
    }   

?>  

</TABLE>  
</TR>  
</TABLE>  
<P>  
<?  

    include('page_tail.'.$phpEx);  
?> 