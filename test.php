<?php
$to = "anuragle100@gmail.com";
$subject = "My subject";
$txt = "Hello world!";
$headers = "From: anuragle100@gmail" . "\r\n" .
"CC: somebodyelse@example.com";

mail($to,$subject,$txt,$headers);
?>