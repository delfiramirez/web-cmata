<?php

       $recipient = "$friendsEmail";

       $subject = "Carlos Mata Sculpteur Website";

       $mailheaders = "From: <$senderName>" . "\n";

       $mailheaders .= "Reply-To: <$senderEmail>" . "\n\n";
	   
	   $mailheaders .= "Content-type: text/plain; charset=utf-8" . "\r\n";
	   
	   $mailheaders .= "Last-Modified: " . date('D, d M Y H:i:s');
	   
	   $mailheaders .= "Pragma: public" . "\r\n";
	   
	   $mailheaders .= "Cache-Control: cache, must-revalidate" . "\r\n";
	   

		   $msg = "Carlos Mata is on-line || Visit his pieces and artwork" . "\n";

           $msg .= "\n";

		   $msg .= "$senderMessage" . "\n";

           $msg .= "\n";

           $msg .= "$senderName\n". "a personal honest recommendation" . "\n";

       mail($recipient, $subject, $msg, $mailheaders);

       $recipient = "admin@carlosmata.eu, webmaster@segonquart.net";  

       $subject = "$senderName\n". "has recommended you website" . "\n";

       $mailheaders = "From: <$senderName>"."\n";

       $mailheaders .= "Reply-To: <$senderEmail>" ."\n\n";
	   
	   $mailheaders .= "Content-type: text/plain; charset=utf-8" . "\r\n";
	   
	   $mailheaders .= "Last-Modified: " . date("D, d M Y H:i:s");
	   
	   $mailheaders .= "Pragma: public" . "\r\n";
	   
	   $mailheaders .= "Cache-Control: cache, must-revalidate" . "\r\n";

       $msg .= "$friendsEmail\n". "has received your invitation. Thank you very much"."\n";
		   
   

?>