<?php
# Variables
$link = mysql_connect ("localhost", "nac99039", "nddsgisd");
        # Enter the name of the database which you have created.
        $db = "DB_nac99039";
        mysql_select_db($db, $link);
$news_item_count = 15; # The amount of news items you want on each page... I recommend 15.. more will increase the load on your server.
$news_table_name = "news"; # the name of the table which you've created (e.g. news).

function index_navigation($index, $count, $row) {
	if ($index != 0) {
		print "<a href=\"index.php?news_index=" . ($index - $count) . "\">Previous</a> ";
	}
	if ($row == $count) {
		print " <a href=\"index.php?news_index=" . ($index + $count) . "\">Next</a>";
	}

}

?>
<STYLE type="text/css">
<!--
.newstable {font-family: verdana, arial; font-size: 10pt; color: C0C0C0 }
-->
</STYLE>
</head>
<body bgcolor="#000000" text="#FFFFFF" link="FF6600" vlink="FF6600" ulink="FF6600">

	<center>
		<table border=1 width=90% cellpadding=0 cellspacing=0 style="table-layout:fixed" class=newstable>
		<?php
			if (! isset($news_index) ) {
				$news_index = 0;
			}
		        $sql = "SELECT * FROM $news_table_name ORDER BY id DESC LIMIT $news_index, $news_item_count";
		        $result = mysql_query($sql);
		        $row = mysql_num_rows($result);
		        $i = 0;
		        while ($i < $row) {
			        $i = $i + 1;
		                $temp = mysql_data_seek($result, ($i - 1));
		                $myrow = mysql_fetch_array($result);
		                $topic = stripslashes($myrow["topic"]);
		                $date = $myrow["date"];
		                $item = nl2br(stripslashes($myrow["item"]));
		                $poster = stripslashes($myrow["poster"]);
                       Echo "<table border=1 bordercolor=4c4c4c width=100% cellpadding=0 cellspacing=0 >
	                         	<tr bgcolor=\"#000000\">
			                         <td rowspan=2 > <font color=\"#FF6600\"><b>&nbsp;&nbsp;$topic </td>
			                         <td width=20% align=right rowspan=1> <font color=\"#FF6600\" size=-2><b>Posted By $poster</td>
		                         </tr>
		                         <tr>

			                         <td width=20% align=right rowspan=1>
                                      $date
			                         </td>
		                         </tr>
                   </tr>
		                 </table><p>$item<p>";
		        }

		?>

