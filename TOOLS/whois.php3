<HTML>

<?PHP
if ($domain){if ($domain)        {
        // first get the domain server from internic
        $fp = fsockopen("whois.networksolutions.com", 43, &$errno, &$errstr, 10);
        if (!$fp) 	{		echo "$errstr ($errno)<br>\n";        }        else
        {        fputs($fp,"$domain\r\n");        while(!feof($fp))
                {                $buf = fgets($fp,128);
                if (ereg("Whois Server:", $buf))                        {
                        $server = str_replace("Whois Server: ", "", $buf);
                        $server = trim($server);                        }
                }        fclose($fp);        }        if ($server)
                {
                echo "<B>$domain is registered at $server:</B><BR>";
                echo "<PRE>";
                $fp = fsockopen($server, 43, &$errno, &$errstr, 10);
                if(!$fp)                        {
                        echo "Could not open connection to $server on port 43.\n";
                        echo "$errstr ($errno)<br>\n";                        }
                else                        {
                        fputs($fp,"$domain\r\n");
                        while(!feof($fp))                                {
                                echo fgets($fp,128);
                                }                        fclose($fp);
                        }                }        else    {
                echo("<b>$domain does not appear to be registered.</b><BR>");
                }        echo ("</PRE><BR>");        } }?>
<FORM ACTION=" <?PHP echo($PHP_SELF); ?> " METHOD="post">
  This will find .com, .org, and .net domains<br>
  domain: <INPUT TYPE="text" NAME="domain" SIZE="40" MAXLENGTH="100">
  <INPUT TYPE=submit VALUE="Find out"><INPUT TYPE=reset VALUE="Reset"></FORM>
  </HTML>
