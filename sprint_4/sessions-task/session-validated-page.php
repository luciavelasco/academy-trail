<!DOCTYPE html>
<?php
require 'session-validated-page.inc';
?>

<html>
<head>
    <title> Session </title>
</head>

<body>
<div>
    <p><?php echo $display; ?></p>
    <a href="logout.php">Log<?php echo $inOrOut ?></a>
</div>
</body>

</html>