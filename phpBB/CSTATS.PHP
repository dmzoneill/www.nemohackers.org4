<?php 

//- Stats 
//- January 14th, 2001 
//- by Philip Mayer 
//- webmaster@phildorado.net 

//- parts (c) Brett Jungblut (brett@jungblut.net) & Dourk (mailto:dork@mindless.com) 

include('extention.inc'); 
include('functions.'.$phpEx); 
include('config.'.$phpEx); 
require('auth.'.$phpEx); 
$pagetitle = "Top Poster"; 
$pagetype = "other"; 
include('page_header.'.$phpEx); 

// Set those variables to your liking; they affect the graphical bars: 

$limit = 10; 

$rectwidth = 400; 
$rectheight = 15; 

$img_fg_color = "FF0000"; // without # 
$img_bg_color = substr($color2, 1); // without # 

// ************************ 

// This function is needed if you've got PHP < ver 4 : 
/* 

function substr_count($haystack, $needle, $offset = 0) {  
$i = 0;  
$count = 0;  
while ($i==0) {  
$longueur = strlen($haystack);  
$position = strpos($haystack, $needle, $offset);  
if ($position && ($offset + strlen($needle)) < $longueur) {  
$offset = $position+strlen($needle);  
$count++;  
} else {  
$i++;  
}  

}  
return $count;  

} 
*/ 

// DB query for most topic views: 

$query =    "select t.topic_time, t.topic_title, p.topic_id, t.forum_id, t.topic_views, p.post_id, forums.forum_name 
            from forums, topics t, posts p 
            where t.forum_id = forums.forum_id and p.topic_id = t.topic_id and forum_type != '1' group by t.topic_id 
            order by t.topic_views desc limit 0, $limit";  

$topic_views = mysql_query($query, $db); 

// DB query for most topic replies: 

$query =  "select count(t.topic_id) as count, t.topic_time, t.topic_title, p.topic_id, 
            t.forum_id, p.post_id, forums.forum_name 
            from   forums, 
                   topics t,  
                   posts p 
            where  t.forum_id = forums.forum_id and 
                   p.topic_id = t.topic_id and  
                   forum_type != '1' 
            group by t.topic_id 
            order by count desc LIMIT 0, $limit"; 

$topic_replies = mysql_query($query, $db); 

// DB queries for top poster: 

$query = "SELECT username, user_id, user_posts FROM users WHERE (user_posts > 0)  
ORDER BY user_posts DESC LIMIT 0, $limit";  

$users_result = mysql_query($query, $db); 
$total_posts = get_total_posts("0", $db, "all"); 



// DB queries for top Smileys: 

$query = "SELECT * FROM smiles GROUP BY smile_url"; 

$all_smileys = mysql_query($query, $db); 

$topten = array(); 
$total_smiles = 0; 

while ($aktsmile = mysql_fetch_array($all_smileys))  { 

     $aktcount = 0; 
     
     
    $query2 = "SELECT post_text FROM posts_text 
              WHERE post_text LIKE '%$aktsmile[smile_url]%'"; 
               
    $all_posts = mysql_query($query2, $db);           
    while ($aktpost = mysql_fetch_array($all_posts)) { 

         $aktcount = $aktcount + substr_count ($aktpost[post_text], $aktsmile[smile_url]); 
    }   
     

    $topten[$aktsmile[smile_url]] = $aktcount; 
    $total_smiles = $total_smiles + $aktcount; 
     
    } 

// Array top_ten should be filled right now... 

arsort ($topten); 
reset ($topten); 

// *** END TOP SMILEYS **** 

// BEGIN DISPLAYING TOP POSTERS: 

?>  
<table border="0" cellpadding="1" cellspacing="0" align="CENTER" valign="TOP" width="96%"> 
  <tr>  
    <td>  
      <table border="0" cellpadding="1" cellspacing="1" width="100%"> 
        <tr align="LEFT" bgcolor="#333399">  
          <td align="CENTER" colspan="4"><font face="Arial, Helvetica, sans-serif" size="2"><b><font color="#FFFFFF">Top  
            <? echo $limit; ?> 
            Poster</font></b></font></td> 
        </tr> 
        <tr bgcolor="<?php echo $color1?>" align="LEFT">  
          <td align="CENTER" width="30%"><font face="<?php echo $FontFace?>" size="2"><b>Poster</b></font></td> 
          <td align="CENTER" width="10%"><font face="<?php echo $FontFace?>" size="2"><b>Posts</b></font></td> 
          <td align="CENTER" width="10%"><font face="<?php echo $FontFace?>" size="2"><b>Percentage</b></font></td> 
          <td align="CENTER" width="50%"><font face="<?php echo $FontFace?>" size="2"><b>Graph</b></font></td> 
        </tr> 
        <? 

$firstone = true; 

while ($row = mysql_fetch_array($users_result)) { 

    $user = $row['username']; 
    $user_id = $row['user_id']; 
    $posts = $row['user_posts']; 
     
    if ($firstone==true) {  
       $cst = $rectwidth / $posts;  
       $firstone = false;  
       } 
     
    if($row[user_posts] != 0) 
         $user_percentage = $row[user_posts] / $total_posts * 100; 
       else 
         $user_percentage = 0; 
          
    $actwidth = $posts * $cst; 
     
    ?> 
        <tr bgcolor="<? echo $color2; ?>">  
          <td align="CENTER" width="30%"><font face="<?php echo $FontFace?>" size="2"><a href="<? echo "$url_phpbb/bb_profile.$phpEx?mode=view&user=$user_id"; ?> ">  
            <? echo $user ?> 
            </a></font></td> 
          <td align="CENTER" width="10%"><font face="<?php echo $FontFace?>" size="2"><a href="<? echo "$url_phpbb/search.$phpEx?term=&addterms=any&forum=all&username=$user&sortby=p.post_time&searchboth=both&submit=Search"; ?> ">  
            <? echo $posts; ?> 
            </a></font></td> 
          <td align="CENTER" width="10%"><font face="<?php echo $FontFace?>" size="2">  
            <? printf("%.2f", $user_percentage); ?> 
            </font></td> 
          <td align="LEFT" width="50%"><font face="<?php echo $FontFace?>" size="2"><img src="<? echo "$url_images/bargif.gif" ?>" width="<? echo $actwidth; ?>" height="<? echo $rectheight; ?>"></font></td> 
        </tr> 
        <? 
} 
?> 
      </table> 
  </tr> 
</table> 
<p>  
<table width="96%" border="0" align="center" bgcolor="<?php echo $color1?>" cellpadding="0" cellspacing="0"> 
  <tr >  
    <td width="50%" bgcolor="#333399">  
      <div align="center"><font face="Arial, Helvetica, sans-serif" size="2"><b><font color="#FFFFFF">Top  
        <? echo $limit; ?> 
        topics based on amount of views </font></b></font></div> 
    </td> 
    <td width="50%" bgcolor="#333399">  
      <div align="center"><font face="Arial, Helvetica, sans-serif" size="2"><b><font color="#FFFFFF">Top  
        <? echo $limit; ?> 
        topics based on # of replies</font></b></font> </div> 
    </td> 
  </tr> 
  <tr>  
    <td width="50%">  
      <table border="0" cellpadding="1" cellspacing="1" width="100%"> 
        <tr bgcolor="<?php echo $color1?>" align="LEFT">  
          <td align="CENTER" width="30%"><font face="<?php echo $FontFace?>" size="2"><b>Posts</b></font></td> 
          <td align="CENTER" width="10%"><font face="<?php echo $FontFace?>" size="2"><b>Views</b></font></td> 
        </tr> 
        <? 


while ($row = mysql_fetch_array($topic_views)) { 

    ?> 
        <tr bgcolor="<? echo $color2; ?>">  
          <td align="CENTER" width="30%"><font face="<?php echo $FontFace?>" size="2"><a href="<? echo "viewtopic.$phpEx?topic=$row[topic_id]&forum=$row[forum_id]"; ?> ">  
            <? echo stripslashes($row[topic_title]) ?> 
            </a></font></td> 
          <td align="CENTER" width="10%"><font face="<?php echo $FontFace?>" size="2">  
            <? echo $row[topic_views]; ?> 
            </font></td> 
        </tr> 
        <? 
} 
?> 
      </table> 
    </td> 
    <td width="50%">  
      <table border="0" cellpadding="1" cellspacing="1" width="100%"> 
        <tr bgcolor="<?php echo $color1?>" align="LEFT">  
          <td align="CENTER" width="30%"><font face="<?php echo $FontFace?>" size="2"><b>Posts</b></font></td> 
          <td align="CENTER" width="10%"><font face="<?php echo $FontFace?>" size="2"><b>Replies</b></font></td> 
        </tr> 
        <? 

while ($row = mysql_fetch_array($topic_replies)) { 

         
    ?> 
        <tr bgcolor="<? echo $color2; ?>">  
          <td align="CENTER" width="30%"><font face="<?php echo $FontFace?>" size="2"><a href="<? echo "viewtopic.$phpEx?topic=$row[topic_id]&forum=$row[forum_id]"; ?> ">  
            <? echo stripslashes($row[topic_title]) ?> 
            </a></font></td> 
          <td align="CENTER" width="10%"><font face="<?php echo $FontFace?>" size="2">  
            <? echo $row[count]-1 ?> 
            </font></td> 
        </tr> 
        <? 
} 
?> 
      </table> 
    </td> 
  </tr> 
</table> 
<p>  
<table border="0" cellpadding="0" cellspacing="1" align="CENTER" valign="TOP" width="96%"> 
  <tr>  
    <td>  
      <table border="0" cellpadding="0" cellspacing="1" width="100%"> 
        <tr align="LEFT" bgcolor="#333399">  
          <td align="CENTER" colspan="4"><font face="Arial, Helvetica, sans-serif" size="2"><b><font color="#FFFFFF">Top  
            <? echo $limit; ?> 
            Smileys</font></b></font></td> 
        </tr> 
        <tr align="LEFT">  
          <td align="CENTER" width="30%" bgcolor="<?php echo $color1?>"><font face="<?php echo $FontFace?>" size="2"><b>Smiley</b></font></td> 
          <td align="CENTER" width="10%" bgcolor="<?php echo $color1?>"><font face="<?php echo $FontFace?>" size="2"><b>Used  
            # times</b></font></td> 
          <td align="CENTER" width="10%" bgcolor="<?php echo $color1?>"><font face="<?php echo $FontFace?>" size="2"><b>Percentage</b></font></td> 
          <td align="CENTER" width="50%" bgcolor="<?php echo $color1?>"><font face="<?php echo $FontFace?>" size="2"><b>Graph</b></font></td> 
        </tr> 
        <? 

$firstone = true; 
$aktnr=1; 

while ((list ($key, $val) = each ($topten)) AND ($aktnr<=10)) {  

    $aktnr++; 

    if ($firstone==true) {  
    if ($val!=0) $cst = $rectwidth / $val; else $cst = 0; 
       $firstone = false;  
       } 
     
    if($val != 0) 
         $smile_percentage = $val / $total_smiles * 100; 
       else 
         $smile_percentage = 0; 
          
    $actwidth = $val * $cst; 

    if ($smile_percentage > 0) { 

?> 
        <tr>  
          <td align="CENTER" width="30%" bgcolor="<? echo $color2; ?>"><font face="<?php echo $FontFace?>" size="2"><img src="<? echo $url_smiles."/".$key; ?> "></font></td> 
          <td align="CENTER" width="10%" bgcolor="<? echo $color2; ?>"><font face="<?php echo $FontFace?>" size="2">  
            <? echo $val; ?> 
            </font></td> 
          <td align="CENTER" width="10%" bgcolor="<? echo $color2; ?>"><font face="<?php echo $FontFace?>" size="2">  
            <? printf("%.2f", $smile_percentage); ?> 
            </font></td> 
          <td align="LEFT" width="50%" bgcolor="<? echo $color2; ?>"><font face="<?php echo $FontFace?>" size="2"><img src="<? echo "$url_images/bargif.gif"; ?>" width="<? echo $actwidth; ?>" height="<? echo $rectheight; ?>"></font></td> 
        </tr> 
        <? }} ?> 
      </table> 
  </tr> 
</table> 
<p> 
<P>  
  <? 

    include('page_tail.'.$phpEx); 
?> 