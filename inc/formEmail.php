<?php

$headers = "MIME-Version: 1.0\r\n";

$headers = "From: " . stripslashes(trim( $_POST["firstName"] )) ." ". stripslashes(trim($_POST["lastname"] )). "<" . stripslashes(trim($_POST["email"] )).">\r\n";

$headers .= "Reply-To: " . stripslashes(trim($_POST["email"] )) . "\r\n";

$headers .= "Reply-To: no-reply@carlosmata.eu\r\n";

$headers .= "Return-path: " . stripslashes(trim($_POST["email"]));


$sendTo = strtolower(trim("admin@carlosmata.eu");

$subject = htmlspecialchars("WEB: Contacto", ENT_NOQUOTES, 'utf-8');

$message = stripslashes(trim($_POST["message"]));


mail($sendTo, $subject, $message, $headers);

$sendTo = " ";

$subject =" ";

$message =" ";

$headers =" ";

?>
