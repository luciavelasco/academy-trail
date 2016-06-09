<?php
session_start();

$error = null;

if (isset($_POST["username"]) && isset($_POST["password"])) {
    $_SESSION['username'] = $_POST["username"];
    $_SESSION['password'] = $_POST["password"];
    header('Location: session-validated-page.php');
}
//else
// {
//  $error = "error, please enter username and password!"; }

