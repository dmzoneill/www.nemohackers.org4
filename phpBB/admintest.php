
<html>
<body bgcolor=666666>

<?php
include('config.php');

function connectToDb($dbhost, $dbuser, $dbpasswd, $dbname)
{
                global $link;
                $link = mysql_connect( "$dbhost", "$dbuser", "$dbpasswd");
                if ( ! $link )
                        die( "Couldn't connect to MySql server" );
                mysql_select_db( "$dbname", $link )
                        or die( "Couldn't connect to database magicsc_index: ".mysql_error() );
}

function show($user_id, $username, $user_email, $user_level, $user_regdate, $user_posts)
{
   echo "";
   echo "<TR>";
   echo "<TD width=15% align=center bgcolor=CCCCCC>";
   echo "$user_id";
   echo "</td>";
   echo "<td width=15% align=center bgcolor=CCCCCC>";
   echo "$username";
   echo "</td>";
   echo "<td width=15% align=center bgcolor=CCCCCC>";
   echo "$user_email";
   echo "</td>";
   echo "<td wdith=15% align=center bgcolor=CCCCCC>";
   echo "$user_level";
   echo "</td>";
   echo "<td width=15% align=center bgcolor=CCCCCC>";
   echo "$user_regdate";
   echo "</td>";
   echo "<td width=15% align=center bgcolor=CCCCCC>";
   echo "$user_posts";
   echo "</td>";
   echo "</tr>";
   echo "";
}


connectToDb($dbhost, $dbuser, $dbpasswd, $dbname);
$result = mysql_query("SELECT * FROM users WHERE user_level='4'");
$num_rows = mysql_num_rows($result);
while ( $a_row = mysql_fetch_array($result) )
      {
                $user_id[]           = $a_row[user_id];
                $username[]          = $a_row[username];
                $user_email[]        = $a_row[user_email];
                $user_level[]        = $a_row[user_level];
                $user_regdate[]      = $a_row[user_regdate];
                $user_posts[]        = $a_row[user_posts];
      }

   echo "<table border=0 width=95%><Tr><TD>";
   echo "<table border=1 width=100% bordercolor=000000 cellspacing=0>";
   echo "<TR>";
   echo "<TD align=center bgcolor=999999>";
   echo "User Id";
   echo "</td>";
   echo "<td align=center bgcolor=999999>";
   echo "username";
   echo "</td>";
   echo "<td align=center bgcolor=999999>";
   echo "email";
   echo "</td>";
   echo "<td align=center bgcolor=999999>";
   echo "user level";
   echo "</td>";
   echo "<td align=center bgcolor=999999>";
   echo "Reg Date";
   echo "</td>";
   echo "<td align=center bgcolor=999999>";
   echo "Posts";
   echo "</td>";
   echo "</tr>";

   $x = $num_rows - 1;
while  ($x >= 0)
        {
   show($user_id[$x], $username[$x], $user_email[$x], $user_level[$x], $user_regdate[$x], $user_posts[$x]);
        $x--;
        print "<BR>\n";
        }
?>
</table></td></tR></table>
</body>
</html>



