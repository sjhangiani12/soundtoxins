<?php
$sender=$_POST['sender'];
$email=$_POST['email'];
$subject=$_POST['subject'];
$message=$_POST['message'];
$inquirytype=$_POST['inquirytype'];
switch ($inquirytype) {
case "program": $soundtoxemail="Vera.L.Trainer@noaa.gov" . "," . "Rohinee.Paranjpye@noaa.gov" . "," . "Brian.D.Bill@noaa.gov";
break;
case "email": $soundtoxemail="Brian.D.Bill@noaa.gov";
break;
default: $soundtoxemail="Brian.D.Bill@noaa.gov";
}
mail($soundtoxemail, $subject, "Name:  " . $sender .  "\nEmail:  " . $email . "\nMessage:  " . $message);
header("Location: http://www.soundtoxins.org/dev/confirmemail.php");
?>
