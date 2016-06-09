<?php
session_start();
if (($_SESSION["username"] == 'williamsly') && ($_SESSION["password"] == 'fox')) {
    $display = 'Welcome to the page mah bruh!';
    $inOrOut = 'out';
} else {
    $display = 'Yeah fuck you go back';
    $inOrOut = 'in';
}

?>