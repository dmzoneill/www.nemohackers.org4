<?

// You need to write-enable a directory,
 //     named "/tmp", below the one you place th
//     is script in

if($action1){// if files have been uploaded, process them
?> 

                                 <html>
                                 <head>
                                 <title>File Upload Results</title>
                                 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
                                 </head>
                                 <body bgcolor="#FFFFFF" text="#000000">
                                 <p><font face="Arial, Helvetica, sans-serif"><font size="+1">File Upload Results</font><br><br>
                                 
                                 
<?

//set the upload dir 
if ($dir == "files") {
$path1 = AddSlashes("./files/"); // assign our path in a form PHP for Windows understands
} else if($dir == "warez") {
$path1 = AddSlashes("./warez/");
}
	
set_time_limit(60);// make reasonably sure the script does not time out on large files

for($i = 0; $i < 4; $i++){// loop through the 4 possible files
switch($i){// retrieve a file pointer from the temp directory
case 0:
$source = $file1;
$source_name = $file1_name;
break;
case 1:
$source = $file2;
$source_name = $file2_name;
break;
case 2:
$source = $file3;
$source_name = $file3_name;
break;
case 3:
$source = $file4;
$source_name = $file4_name;
break;
 }
 
if(($source <> "none")&&($source <> "")){ // see if the file exists; non-existing file has name of "none"
 if($error1 <> 1){// no need to copy a file if directory not write-enabled
$dest = $path1.$source_name; // append file name to our path
if(copy($source,$dest)){ // copy the file from the temp directory to the upload directory, and test for success
echo "$source_name has been uploaded<br>\n"; 
}
else {
echo "Upload directory not write-enabled\n"; // you need to write-enable the upload directory
$error1 = 1; // set flag
 }
}
unlink($source);// delete the file from the temp directory
}
}
?>
				 <br><a href="upload.php3">Back</a>
                                 </font></p>
                                 </body>
                                 </html>
                                 <?
                                 }
                                 else {// else, prompt for the files
                                 // files will be uploaded into the serve
                                 //     r's temp directory for PHP
                                 ?>
                                 <html>
                                 <head>
                                 <title>File Upload</title>
                                 <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
                                 </head>
                                 <body bgcolor="#FFFFFF" text="#000000">
                                 <p><font face="Arial, Helvetica, sans-serif"><font size="+1">File Upload<br><br>
				 <p>Please upload into the appriate directory =)</p>
				 
                                <form method="post" enctype="multipart/form-data" action="upload.php3">
                                
                                <select name="dir" size="1"><option value="files" name="files" selected>Files / Texts
                                </option><option value="text" name="texts">Texts</option><option value="warez" name="warez">
                                </option>Warez</select>
                                
                                 <input type="hidden" name="MAX_FILE_SIZE" value="400000">
                                 <input type="hidden" name="action1" value="1">
                                 File 1: <input type="file" name="file1" size="30"><br>
                                 File 2: <input type="file" name="file2" size="30"><br>
                                 File 3: <input type="file" name="file3" size="30"><br>
                                 File 4: <input type="file" name="file4" size="30"><br><br>
                                 <input type="submit" value="Upload">
                                 </form>
                                 </font></p>
                                 </body>
                                 </html>
                                 <?
                                 }
                                 ?>

