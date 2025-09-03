<?php
// Permanent redirect to the updated HTML page
header('Location: /links.html', true, 301);
echo '<!doctype html><meta http-equiv="refresh" content="0; url=/links.html">';
exit;
?>
