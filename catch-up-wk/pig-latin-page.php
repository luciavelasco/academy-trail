<!DOCTYPE html>
<?php
require 'pig-latin-page.inc';
?>

<html>
<head>
    <title> Pig Latin Translator </title>
    <link href="pig-latin-page.css" type="text/css" rel="stylesheet" media="screen">
</head>

<body>
<div class="translator-title">
    <h1>Welcome to my Pig-Latin Translator!</h1>
    <h2>Please enter text to translate...</h2>
</div>
<div class="translator">
    <div class="formselect">
        <form method="GET" action="<?php $_SERVER['PHP_SELF'] ?>">
            <input type="text" name="line" placeholder="Enter Text...">
            <input type="submit" value="Submit">
        </form>
    </div>
    <p class="result"><?php echo $result; ?></p>
</div>
</body>

</html>