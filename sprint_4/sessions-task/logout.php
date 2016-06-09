<?php
session_start();
session_unset();
session_destroy();
echo 'dude';
header('Location: login.php');
