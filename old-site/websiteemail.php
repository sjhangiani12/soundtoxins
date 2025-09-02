<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>SoundToxins.org</title>
<meta name="description" content="SoundToxins website (SoundToxins.org) - The Goal of the SoundToxins project is to provide sufficient warning of HAB and "Vibrio" events to enable early or selective harvesting of shellfish in Puget Sound." />
<meta name="keywords" content="harmful,algal,blooms,puget,sound,washington,vibrio,pseudo,nitzschia,toxin" />
<link href="soundtoxins.css" rel="stylesheet" type="text/css" />
</head>

<body>
<table align="center"><tr><td>
<div style="width:900px;"><img src="soundtox_banner.jpg" /></div>

<div class="topnav"><?php include('../includes/soundtox/topnav.inc'); ?></div>

<!--<div style="width:900px; background-image:url(nav_bkgrd.jpg); background-repeat:repeat-x; color:#FFFFFF; padding-left:10px; padding-right:10px;"><table width="100%"><tr><td width="90%"><a class="topnav" href="index.php">Home</a> | <a class="topnav" href="participants.php">Participants</a> | <a class="topnav" href="meetings.php">Meetings</a> | <a class="topnav" href="outreach.php">Outreach</a> | <a class="topnav" href="links.php">Links</a> | <a class="topnav" href="contact.php">Contact</a></td><td align="right"><a class="topnav" href="private/">Log in</a></td></tr></table></div>-->

<div class="bodytxt" align="center">

<p class="bigtitle">Send an Email</p>

<form method="post" action="sendemail.php">
<table width="600px">
<tr valign="top"><td><p>Name:</p></td><td><input type="text" size="51" name="sender" /></td></tr>
<tr valign="top"><td><p>Email:</p></td><td><input type="text" size="51" name="email" /></td></tr>
<tr valign="top"><td><p>Subject:</p></td><td><input type="text" size="51" name="subject" value="SoundToxins Website Inquiry" /></td></tr>
<tr valign="top"><td><p>Message:</p></td><td><textarea rows="12" cols="40" name="message"></textarea></td></tr>
<input type="hidden" name="inquirytype" value="website" />
<tr><td>&nbsp;</td><td><input type="reset" value="Clear form" /><input type="submit" value="Send email" /></td><td></td></tr>
</table>
</form>


</div></td></tr></table>
</body>
</html>
