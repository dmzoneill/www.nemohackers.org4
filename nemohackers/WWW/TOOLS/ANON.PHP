<?php
/*****************************
******************************
** ok, sections will be denoted
** by "//********(section number)***********"
** and each section will be a group of
** commands that accomplish something
** needed.  if you have any questions
** feel free to email me at
** kris@xdweb.net
** enjoy
******************************
*****************************/

$base_url = "http://supersane.com/tools";

//******tests if url is trying to get local file(bad)
if ($s){

if (!eregi("http://", $url)){
die("Invalid url given, please make sure you type http:// before the site address(and www. if needed)");
} else {
}

}


/*******
the next line says:
if the variable "s" doesn't exist
do the following... 
*******/
if (!$s){

//*************(1)************
/*
ok, this section just prints out the
form that is needed to grab the info
to proceed.
it had the hidden field "s" (step)
and the text field "url", and of course
the submit button named "thebutton"
*/

?>
<html>
<form action="<?php echo $PHP_SELF;?>" method=post>
<input type=hidden name=s value="p"><input type=text name=url><input type=submit value="get page" name=thebutton>
</form>
<?php

} 

/*****
the following line says:
if the variable s = "j" then do the following
NOTE: if the variable s = "j" then the script is proccessing
and image file.
*****/

if ($s=="j"){

//****same file getting procedure as above
$handle = fopen($url, "r");
$buffer;
while (!feof($handle)) { 
$buffer.=fread($handle,10000); 
} 
fclose($handle);

/*****
since this is an image file we dont need to proccess the
contents, only relay it to the browser and stop. so we
echo the data and exit.
*****/
echo $buffer;
exit;

}

//***************
//***************
//***************

/********
the next line says:
else, if the variable s does exist
and its value is "p"(stands for "page"), then do the
following...
********/

if ($s=="p"){

/*************
this is a commented out section that 
i will implement later.  it checks to see 
if they put in a url with just .com, .net
... on the end instead of a filename.  if they
just put a domain name without the trailing
"/" and the filename then the images will not
show.  anyway...
$url_check = substr($url,-1);
if ($url_check==".com"){
$url .= "/";
}
*************/

//*************(2)************
/*
ok, this section is for urls with query strings.
if basically says:
if there are variables in the url sent to this
php script other than that of "s" and "url"
add them and their value to the end of url before you
get the file.
*/

/*********
next line says:
if the var http_get_vars exists, then
do the following
*********/
if ($HTTP_GET_VARS){
reset ($HTTP_GET_VARS);

while (list ($key, $val) = each ($HTTP_GET_VARS)) {

if ($key=="s" || $key=="url" || $key=="thebutton"){
} else {
$val2 = urlencode($val);
$url .= "&$key=$val2";
}

}
}


/*******
ditto, only with http_POST_vars
*******/
if ($HTTP_POST_VARS){
reset ($HTTP_POST_VARS);

while (list ($key, $val) = each ($HTTP_POST_VARS)) {

if ($key=="s" || $key=="url" || $key=="thebutton"){
} else {
$url .= "&$key=$val";
}

}
}

//*************(3)************
/*
ok, this section is the section that gets
the base url for the page that you are going
to get, like http://www.elitehackers.com
out of http://www.elitehackers.com/files.html.
the script uses this when replacing the href
and src instances it finds in the source code
of the page for anything that is referred to
by a relative path(almost everything).  so all
links that are relative links won't show up as
href=$base_url."/anon.php3?s=p&url=somepage.html"
and will show up as:
href=$base_url."/anon.php3?s=p&url=http://www.elitehackers.com/somepage.html"
*/

/*********
since the variable values that are gleaned from
a query string have all +'s replaced with a space
by php automatically the next line says to replace
all spaces in the url with a +
*********/
$url = eregi_replace(" ", "+", $url);

/*****
the next line says make an array of
the url variable based on the character
"/".
*****/
$temp = explode("/", $url);
$num = count($temp);
$num--;
$base = "http:";

/******
this incremental function walks through the array
made from the url and adds the second through second to last
items in it to http: separated by a slash.
so it would start out as http: but the progress would look like:
http:
http:/
http://
http://www.domain.com
http://www.domain.com/directory_you_were_surfing
....
then after its done one more slash "/" is added.
******/

for ($i=1; $i<$num; $i++){
$base .= "/$temp[$i]";
}
$base .= "/";



//*************(4)************
/*
ok, this section opens the page and gets all the data
*/

/**********
fopen, self explainatory.
**********/
$handle = fopen($url, "r");

//****initialize buffer so no error occurs when adding to it
$buffer;

//****till the end of file is reached, read 10k more.
while (!feof($handle)) { 
$buffer.=fread($handle,10000); 
} 
fclose($handle);


//*************(5)************
/*
ok, this section deals with the page data that was returned
from the remote server that you were getting data from.
*/


//********start to lower case replacement
$buffer = str_replace("SCRIPT", "script", $buffer);
$buffer = str_replace("SRC", "src", $buffer);
$buffer = str_replace("HREF", "href", $buffer);
$buffer = str_replace("HTTP", "http", $buffer);
$buffer = str_replace("BACKGROUND", "background", $buffer);
//********end to lower case replacement

/******
the following two lines tell the proxybase for replacement
of images and links to pages.
the image base s=j and the page base s=p
jpeg and page repectively(it also handles gifs, pngs, and art)
******/
$i_base = $base_url."/anon.php?s=j&url=$base";
$p_base = $base_url."/anon.php?s=p&url=$base";

/******
this if statement added to acomodate frames pages.
******/
if (eregi("<frame", $buffer)){
$i_base = $p_base;
} else {
}

//*****defining href, background, and src with " and '
//*****because we run into trouble putting " and ' in
//*****some commands.
$href = 'href="';
$src = 'src="';
$href2 = "href='";
$src2 = "src='";
$background = 'background="';
$background2 = "background='";


/*****
slighly confusing but i think you will get it:
these command go through the entire page and replace
href=", src=", background=",... with
href="http://www.xdweb.net/anon.php3?s=p&url=$base
                                        base...^
where base is the base of the url you are surfing
therefore what was:
<a href="somepage.html">blah</a>
is now:
<a href="http://www.xdweb.net/anon.php3?s=p&url=(base surfing url here)somepage.html">blah</a>
this works fine except for absolute links, they are now going to
http://www.xdweb.net/anon.php3?s=p&url=(base surfing url here)http://www.blahblahblahblh/dsgkd/dsg.html
which wont work.  dont worry, theres a fix below... 
*****/
$buffer = eregi_replace("$href", "$href$p_base", $buffer);
$buffer = eregi_replace("$href2", "$href2$p_base", $buffer);
$buffer = eregi_replace("$src", "$src$i_base", $buffer);
$buffer = eregi_replace("$src2", "$src2$i_base", $buffer);
$buffer = eregi_replace("$background", "$background$i_base", $buffer);
$buffer = eregi_replace("$background2", "$background2$i_base", $buffer);


/******
ok, really confusing now:
the following six commands will make and href=" and href=' into
herf=" and herf='
notice the misspelling of href.
it also goes through all src and background tags an misspells them
but only if they have an = sign and either ' or " after them.
the reason:
as of now, the script has inserted $i_base and $p_base after all
instances of:
href="
href='
src="
src='
background="
background='
but it has not inserted itself after instances of any of those
without the " or the '.  if it had the search function would have
done the replace two times on instances of those things that had
a " or a '.  icq me later if you dont understand and ill explain it
better.
anyway, the reason that it misspells them is so when i do the search 
and replace on those same instances WITHOUT the " and ' it will not
add $i_base or $p_base to them a second time.
******/
$buffer = eregi_replace('href="', 'herf="', $buffer);
$buffer = eregi_replace("href='", "herf='", $buffer);
$buffer = eregi_replace('src="', 'scr="', $buffer);
$buffer = eregi_replace("src='", "scr='", $buffer);
$buffer = eregi_replace('background="', 'bcakground="', $buffer);
$buffer = eregi_replace("background='", "bcakground='", $buffer);


/*****
the following three lines add $i_base and $p_base
to and instances of href= (without the " or ') or src=
or background= that is in the document.
*****/
$buffer = eregi_replace("href=", "href=$p_base", $buffer);
$buffer = eregi_replace("src=", "src=$i_base", $buffer);
$buffer = eregi_replace("background=", "background=$i_base", $buffer);


/*******
these line change all the misspellings back to normal.
*******/
$buffer = eregi_replace('herf="', 'href="', $buffer);
$buffer = eregi_replace("herf='", "href='", $buffer);
$buffer = eregi_replace('scr="', 'src="', $buffer);
$buffer = eregi_replace("scr='", "src='", $buffer);
$buffer = eregi_replace('bcakground="', 'background="', $buffer);
$buffer = eregi_replace("bcakground='", "background='", $buffer);


/*****
the following line fix our
http://www.domain.com/http://www.some.absolute.link.com
problem.
the replace command says to replace any instance of
(base surfing url here)http
with just http
so:
http://www.elitehackers.com/http://www.confine.com
would now be
http://www.confine.com
*****/
$http = "http://";
$http_check = "$base$http";
$buffer = eregi_replace($http_check, "http://", $buffer);

/******
the following commands just go through and
replace all <script> and </script> tags with
<comment> and </comment> tags.
they also change all javascript/vbscript
event handler flags to have an x before them
making them null.
so onclick is now xonclick so it doesnt work.
******/
$buffer = eregi_replace("<script", "<comment", $buffer);
$buffer = eregi_replace("</script", "</comment", $buffer);
$buffer = eregi_replace("onmouseover=", "xonmouseover=", $buffer);
$buffer = eregi_replace("onload=", "xonload=", $buffer);
$buffer = eregi_replace("onclick=", "xonclick=", $buffer);
$buffer = eregi_replace("onunload=", "xonunload=", $buffer);
$buffer = eregi_replace("onmouseout=", "xonmouseout=", $buffer);
$buffer = eregi_replace("onmousedown=", "xonmousedown=", $buffer);
$buffer = eregi_replace("onfocus=", "xonfocus=", $buffer);
$buffer = eregi_replace("onblur=", "xonblur=", $buffer);
$buffer = eregi_replace("<meta", "<xmeta", $buffer);
$buffer = eregi_replace("method=post", "method=get", $buffer);
$buffer = eregi_replace('method="post"', 'method="get"', $buffer);
$buffer = eregi_replace("method='post'", "method='get'", $buffer);


//*****send the final filtered data to the user
echo $buffer;


}

// were done.
?>