
<?php
if(!$m){
?>
<FORM ENCTYPE="multipart/form-data" ACTION="upload1.php" METHOD="POST">
<INPUT TYPE="hidden" name="m" value="1000">
Send this file: <INPUT NAME="userfile" TYPE="file">
<INPUT TYPE="submit" VALUE="Send File">
</FORM>
<?
}
else if($m){
if (is_uploaded_file($userfile)) {
    copy($userfile, "arch/");
} else {
    echo "Possible file upload attack: filename '$userfile'.";
}
/* ...or... */
move_uploaded_file($userfile, "/arch");
}
?>

