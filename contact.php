<?php
// Contact information is shown on the About page footer
header('Location: /about.html', true, 301);
echo '<!doctype html><meta http-equiv="refresh" content="0; url=/about.html">';
exit;
?>
