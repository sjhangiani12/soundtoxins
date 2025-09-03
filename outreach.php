<?php
// Permanent redirect to the updated HTML page
header('Location: /outreach.html', true, 301);
echo '<!doctype html><meta http-equiv="refresh" content="0; url=/outreach.html">';
exit;
?>
