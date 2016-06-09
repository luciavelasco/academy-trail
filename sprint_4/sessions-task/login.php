<!DOCTYPE html>
<?php
require 'login.inc';
?>

<html>
<head>
    <title> Session </title>
</head>

<body>
<div>
    <form method="POST" action="<?php $_SERVER['PHP_SELF'] ?>">
        <div class="formselect">
            <input type="text" name="username" placeholder="Enter Username...">
            <input type="password" name="password" placeholder="Enter Password...">
            <input type="submit" value="Login">
        </div>
    </form>
    <p><?php echo $error; ?></p>
</div>
</body>

</html>