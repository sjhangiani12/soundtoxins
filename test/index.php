<?php
session_start();

// set timeout period in seconds
$inactive = 10;

// check to see if $_SESSION['timeout'] is set
if(isset($_SESSION['timeout']) ) {
  $session_life = time() - $_SESSION['timeout'];
    if($session_life > $inactive)
        { session_destroy(); header("Location: logout.php"); }
}
$_SESSION['timeout'] = time();
?>

<html>
<head><title>Test Page</title></head>
<meta http-equiv="refresh" content="15">
<body>
<?php echo '<p>Hello.</p>'; ?>
</body>
</html>
