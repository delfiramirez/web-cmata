<?php

$headers = "MIME-Version: 1.0" . "\r\n";

$headers = "From: " . stripslashes(trim( $_POST["firstName"] )) ." ". stripslashes(trim($_POST["lastname"] )). "<" . stripslashes(trim($_POST["email"] )) . ">\r\n";

$headers .= "Reply-To: " . stripslashes(trim($_POST["email"] )) . "\r\n";

$headers .= "Reply-To: no-reply@carlosmata.eu" . "\r\n";

$headers .= "Return-path: " . stripslashes(trim($_POST["email"]));
	   
$headers .= "Content-type: text/plain; charset=utf-8" . "\r\n";
	   
$headers .= "Last-Modified: " . date('D, d M Y H:i:s');
	   
$headers .= "Pragma: public" . "\r\n";
	   
$headers .= "Cache-Control: cache, must-revalidate" . "\r\n";

$sendTo = strtolower(trim("admin@carlosmata.eu");

$subject = htmlspecialchars("WEB: Contacto", ENT_NOQUOTES, 'utf-8');

$message = stripslashes(trim($_POST["message"]));


mail($sendTo, $subject, $message, $headers);

$sendTo = " ";

$subject =" ";

$message =" ";

$headers =" ";

?>
