<?php

$goodcookie = $HTTP_COOKIE_VARS['goodcookie'];

require("vars.php");

if ($step=="auth"){

$userpass = "$username:$password";

      if ($userpass=="nemotests:xavic"){      
      $cookiecontents = "yes";
      setcookie("goodcookie", $cookiecontents, time()+7*24*3600, "/", $cookie_domain);
      $goodcookie = "yes";
      }

}

if ($goodcookie){

include('testheader.php');

      $db = mysql_connect($database_host_port, $database_uname, $database_pword) or die("couldnt connect to db");
      mysql_select_db($database,$db) or die("couldnt select db");

if ($step=="maketest"){

$testtab = uniqid(O);
$testtab = substr($testtab,6,14);

$testname = $tname;
$tname = rawurlencode($tname);

$rel = ereg_replace(" | ", "|", $rel);
$rel = ereg_replace("| ", "|", $rel);
$rel = ereg_replace(" |", "|", $rel);
$rel = rawurlencode($rel);
$rel = eregi_replace("%0D%0A","", $rel);
$rel = rawurldecode($rel);

      $sql = "insert into tests (auto, testname, testtab, who, points, rel) values ('', '$tname', '$testtab', '', '$points', '$rel')";
      $result = mysql_query($sql ,$db);
      $sql = "create table $testtab (auto int(11) NOT NULL auto_increment, question blob NOT NULL, a1 varchar(255) NOT NULL, a2 varchar(255) NOT NULL, a3 varchar(255) NOT NULL, a4 varchar(255) NOT NULL, qkey varchar(20) NOT NULL, PRIMARY KEY (auto), KEY auto (auto), UNIQUE auto_2 (auto))";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q1["q"]);
$a1 = rawurlencode($q1["a1"]);
$a2 = rawurlencode($q1["a2"]);
$a3 = rawurlencode($q1["a3"]);
$a4 = rawurlencode($q1["a4"]);
$qkey = rawurlencode($q1["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q2["q"]);
$a1 = rawurlencode($q2["a1"]);
$a2 = rawurlencode($q2["a2"]);
$a3 = rawurlencode($q2["a3"]);
$a4 = rawurlencode($q2["a4"]);
$qkey = rawurlencode($q2["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q3["q"]);
$a1 = rawurlencode($q3["a1"]);
$a2 = rawurlencode($q3["a2"]);
$a3 = rawurlencode($q3["a3"]);
$a4 = rawurlencode($q3["a4"]);
$qkey = rawurlencode($q3["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q4["q"]);
$a1 = rawurlencode($q4["a1"]);
$a2 = rawurlencode($q4["a2"]);
$a3 = rawurlencode($q4["a3"]);
$a4 = rawurlencode($q4["a4"]);
$qkey = rawurlencode($q4["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q5["q"]);
$a1 = rawurlencode($q5["a1"]);
$a2 = rawurlencode($q5["a2"]);
$a3 = rawurlencode($q5["a3"]);
$a4 = rawurlencode($q5["a4"]);
$qkey = rawurlencode($q5["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q6["q"]);
$a1 = rawurlencode($q6["a1"]);
$a2 = rawurlencode($q6["a2"]);
$a3 = rawurlencode($q6["a3"]);
$a4 = rawurlencode($q6["a4"]);
$qkey = rawurlencode($q6["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q7["q"]);
$a1 = rawurlencode($q7["a1"]);
$a2 = rawurlencode($q7["a2"]);
$a3 = rawurlencode($q7["a3"]);
$a4 = rawurlencode($q7["a4"]);
$qkey = rawurlencode($q7["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q8["q"]);
$a1 = rawurlencode($q8["a1"]);
$a2 = rawurlencode($q8["a2"]);
$a3 = rawurlencode($q8["a3"]);
$a4 = rawurlencode($q8["a4"]);
$qkey = rawurlencode($q8["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q9["q"]);
$a1 = rawurlencode($q9["a1"]);
$a2 = rawurlencode($q9["a2"]);
$a3 = rawurlencode($q9["a3"]);
$a4 = rawurlencode($q9["a4"]);
$qkey = rawurlencode($q9["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q10["q"]);
$a1 = rawurlencode($q10["a1"]);
$a2 = rawurlencode($q10["a2"]);
$a3 = rawurlencode($q10["a3"]);
$a4 = rawurlencode($q10["a4"]);
$qkey = rawurlencode($q10["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q11["q"]);
$a1 = rawurlencode($q11["a1"]);
$a2 = rawurlencode($q11["a2"]);
$a3 = rawurlencode($q11["a3"]);
$a4 = rawurlencode($q11["a4"]);
$qkey = rawurlencode($q11["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q12["q"]);
$a1 = rawurlencode($q12["a1"]);
$a2 = rawurlencode($q12["a2"]);
$a3 = rawurlencode($q12["a3"]);
$a4 = rawurlencode($q12["a4"]);
$qkey = rawurlencode($q12["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q13["q"]);
$a1 = rawurlencode($q13["a1"]);
$a2 = rawurlencode($q13["a2"]);
$a3 = rawurlencode($q13["a3"]);
$a4 = rawurlencode($q13["a4"]);
$qkey = rawurlencode($q13["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q14["q"]);
$a1 = rawurlencode($q14["a1"]);
$a2 = rawurlencode($q14["a2"]);
$a3 = rawurlencode($q14["a3"]);
$a4 = rawurlencode($q14["a4"]);
$qkey = rawurlencode($q14["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);

//****************
//****************
$question = rawurlencode($q15["q"]);
$a1 = rawurlencode($q15["a1"]);
$a2 = rawurlencode($q15["a2"]);
$a3 = rawurlencode($q15["a3"]);
$a4 = rawurlencode($q15["a4"]);
$qkey = rawurlencode($q15["key"]);

      $sql = "INSERT INTO $testtab (auto, question, a1, a2, a3, a4, qkey) VALUES ('', '$question', '$a1', '$a2', '$a3', '$a4', '$qkey')";
      $result = mysql_query($sql ,$db);



echo "Test $testname created.<br><br>";
}
?>
<script language=javascript>
<!--
function vote () {
return true;
}
function cancel(){
return false;
}

function really(){
if (confirm("Are you sure that you have filled out the entire form and have all the answers correct?")) { 
return true;
} else {
return false;
}
}

// -->
</script>
<center>
<form action=maketest.php method=post>
<input type=hidden name=step value="maketest">
    <table border=0 width=600>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Name 
          of Test:</font> </td>
        <td> 
          <input type="text" name="tname">
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Relevant links:</font> </td>
        <td> To assign relevant links put the links FULL url in the box below.  if you have more than one
        relevant link then simple put a pipe "|" character after the first one and type the second.
        if you have a third do the same thing, have as many as you like in the box separated by a pipe and they will all show up.
        make sure that you dont press enter and make them on a newline and that you dont have any spaces
        in between the urls and the pipes "|", and there should be no beginning and no ending pipe, just pipes
        in between the urls.<br>
          <textarea rows=6 cols=40 name="rel"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Level 
          of test: </font></td>
        <td> 
          <select name="points">
            <option value="1">1</option>
            <option value="2">2</option>
            <option value="3">3</option>
            <option value="5">5</option>
            <option value="6">6</option>
          </select>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          1: </font></td>
        <td> 
          <textarea name="q1[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q1 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q1[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q1 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q1[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q1 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q1[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q1 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q1[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q1 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q1[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          2: </font></td>
        <td> 
          <textarea name="q2[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q2 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q2[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q2 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q2[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q2 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q2[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q2 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q2[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q2 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q2[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          3: </font></td>
        <td> 
          <textarea name="q3[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q3 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q3[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q3 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q3[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q3 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q3[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q3 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q3[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q3 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q3[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          4: </font></td>
        <td> 
          <textarea name="q4[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q4 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q4[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q4 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q4[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q4 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q4[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q4 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q4[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q4 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q4[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          5: </font></td>
        <td> 
          <textarea name="q5[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q5 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q5[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q5 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q5[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q5 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q5[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q5 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q5[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q5 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q5[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          6: </font></td>
        <td> 
          <textarea name="q6[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q6 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q6[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q6 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q6[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q6 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q6[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q6 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q6[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q6 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q6[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          7: </font></td>
        <td> 
          <textarea name="q7[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q7 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q7[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q7 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q7[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q7 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q7[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q7 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q7[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q7 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q7[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          8: </font></td>
        <td> 
          <textarea name="q8[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q8 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q8[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q8 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q8[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q8 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q8[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q8 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q8[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q8 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q8[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          9: </font></td>
        <td> 
          <textarea name="q9[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q9 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q9[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q9 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q9[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q9 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q9[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q9 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q9[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q9 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q9[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          10: </font></td>
        <td> 
          <textarea name="q10[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q10 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q10[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q10 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q10[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q10 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q10[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q10 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q10[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q10 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q10[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          11: </font></td>
        <td> 
          <textarea name="q11[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q11 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q11[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q11 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q11[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q11 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q11[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q11 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q11[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q11 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q11[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          12: </font></td>
        <td> 
          <textarea name="q12[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q12 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q12[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q12 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q12[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q12 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q12[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q12 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q12[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q12 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q12[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          13: </font></td>
        <td> 
          <textarea name="q13[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q13 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q13[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q13 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q13[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q13 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q13[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q13 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q13[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q13 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q13[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          14: </font></td>
        <td> 
          <textarea name="q14[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q14 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q14[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q14 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q14[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q14 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q14[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q14 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q14[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q14 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q14[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right" valign="top"><font face="Arial, Helvetica, sans-serif">Question 
          15: </font></td>
        <td> 
          <textarea name="q15[q]" cols="40" rows="6"></textarea>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q15 
          answer 1: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q15[a1]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q15 
          answer 2: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q15[a2]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q15 
          answer 3: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q15[a3]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q15 
          answer 4: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <input type="text" name="q15[a4]">
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td width=150 align="right"><font face="Arial, Helvetica, sans-serif">Q15 
          key: </font></td>
        <td> 
          <blockquote> 
            <p> 
              <select name="q15[key]">
                <option value="a1" selected>answer 1</option>
                <option value="a2">answer 2</option>
                <option value="a3">answer 3</option>
                <option value="a4">answer 4</option>
              </select>
            </p>
          </blockquote>
        </td>
      </tr>
      <tr> 
        <td colspan=2> 
          <center>
            <input type=submit value="Make Test" onclick="really()">
          </center>
        </td>
      </tr>
    </table>
</form>
</center>
<?php
include('testfooter.php');
} else {
?>        <table border=0>
          <tr> 
            <td bgcolor="#CCCCCC"> 
              <form action=maketest.php method=post>
                username: 
                <input type=text name=username>
                <br>
                password: 
                <input type=password name=password>
                <br>
                <input type=hidden name=step value=auth>
                <input type=submit value=login name="submit">
              </form>
            </td>
          </tr>
          </table>
          <?php
}
?>