<?php

       $recipient = "$friendsEmail";

       $subject = "Carlos Mata Sculpteur Website";

       $mailheaders = "From: <$senderName> \n";

       $mailheaders .= "Reply-To: <$senderEmail>\n\n";
	   
	   $mailheaders .= 'Content-type: text/plain; charset=utf-8';


		   $msg = "Carlos Mata is on-line || Visit his pieces and artwork \n";

           $msg .= "\n";

		   $msg .= "$senderMessage\n";

           $msg .= "\n";

           $msg .= "$senderName\n". "honest recommendation";

       mail($recipient, $subject, $msg, $mailheaders);

       $recipient = "admin@carlosmata.eu, webmaster@segonquart.net ";  

       $subject = "$senderName\n". "has recommended you website";

       $mailheaders = "From: <$senderName> \n";

       $mailheaders .= "Reply-To: <$senderEmail>\n\n";


       $msg .= "$friendsEmail\n". "has received your invitation. Thank you very much";

           mail($recipient, $subject, $msg, $mailheaders);
		   
	   $msg="";
	   

?>