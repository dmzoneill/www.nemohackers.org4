
<LINK REL="SHORTCUT ICON" href="http://nemo.r-fx.org/favicon.ico">
<LINK REL=stylesheet TYPE="text/css" HREF="style.css" TITLE="syle">
<script>
function NoError() {
return(true);
} 
onerror=NoError; 
</script>
</HEAD>

<BODY BACKGROUND="./images/back1.gif" ALINK="#ccff00" BGCOLOR="#121212" LINK="#828fb0" TEXT="#DDDDDD" VLINK="#828fb0">

<?php
ob_start("ob_gzhandler");
?>

<BR>
<CENTER>
<!--------top------------->
<TABLE BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=750 HEIGHT=5>
<TR HEIGHT=5>
    <TD HEIGHT=5>
    <TABLE BORDER="0" CELLPADDING="0" CELLSPACING="0" WIDTH="750">
    <TR>
    <TD WIDTH=3><IMG SRC="./images/lefttopthingdifcolor.gif" BORDER=0></TD>
    <TD BGCOLOR="#024070" WIDTH="754">
    <CENTER><FONT size=-1><?php echo $quote; ?></CENTER></TD>
    <TD WIDTH=3><IMG SRC="./images/topthingdifcolor.gif" BORDER=0></TD>
    </TR>
    </TABLE>
</TD></TR></TABLE>


<TABLE BGCOLOR=#000000 BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=750><TR>
<TD WIDTH="*" bgcolor="#0a527a">
<a href="http://www.nemohackers.com/" alt="Nemohackers.com" border=0><img border=0 src="./images/logonemo1.jpg"></a>

</TD>
</TR></TABLE>



<TABLE BGCOLOR=#000000 BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=750 HEIGHT=2>
<TR BGCOLOR="#024070" HEIGHT=2><TD BGCOLOR="#024070" HEIGHT=2></TD></TR></TABLE> 

<TABLE BGCOLOR=#000000 BORDER=0 CELLPADDING=0 CELLSPACING=0 WIDTH=750><TR><TD>
<FONT CLASS="upper" COLOR="#cdcddc" FACE="Verdana" SIZE="1"><B>
/<a href="index.php">home&nbsp;</a>
<a href="<?php echo $SCRIPT_NAME; ?>"><?php echo $SCRIPT_NAME; ?></a>&nbsp;


