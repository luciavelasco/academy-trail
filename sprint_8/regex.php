<!DOCTYPE html>
<html lang="en">
<head>
    <title>Regex Evaluator</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
</head>
<body>
<div class="container">

    <h1>Regex Evaluator</h1>
    <form method="post" action="">
        <div class="form-group row">
            <label for="regexinput">Pattern:</label>
            <input value="<?php echo $_POST['regex']; ?>" name="regex" id="regexinput" class="form-control" type="text" placeholder="Please write pattern inside /es">
        </div>
        <div class="form-group row">
            <label>Text to match</label>
            <textarea type="text" value="<?php echo $_POST['string']; ?>" name="string" class="form-control" placeholder="Match Text.."></textarea>
        </div>
        <button class="btn btn-default row" type="submit">Evaluate</button>
    </form>
</div>
</body>

</html>

<?php
//$textSubmitted = "Hello this is some test text 123@52 9nine6";
//$regex = "/test/";
$textSubmitted = trim($_POST['string']);
$regex = trim($_POST['regex']);

function pregMatch($regex, $text)
{
    if (preg_match($regex, $text)) {
        // Indeed, the expression "[a-zA-Z]+ \d+" matches the date string
        echo "Found a match!" . "\n";
    } else {
        // If preg_match() returns false, then the regex does not
        // match the string
        echo "The regex pattern does not match. :(" . "\n";
    }
}

//add delimiter, then take it away if they've used one:
//function isRegexValid($re){
//    if(!preg_match($re, "/^[/~|]+/")) {
//        $regex = "/" . $re;
//    }
//    if(!preg_match($re, "/[/~|][i]*$/")) {
//        $regex = $re . "/";
//    }
//}

if ($regex == "") {
    echo "Please fill in both fields!";
} else {
    pregMatch($regex, $textSubmitted);
}
