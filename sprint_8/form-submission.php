<!DOCTYPE html>
<html>
<head>
    <title>Untitled</title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"
          integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
    <!-- local BD css -->
    <!--<link rel="stylesheet" href="../../bootstrap/dist/css/bootstrap.css" type="text/css">-->
    <!--<link name="fonturl.com" rel='stylesheet' type='text/css'>-->
</head>
<!--bootstrap-->
<body>
<div class="container">
    <header>
        <h1>h1. Bootstrap heading</h1>
    </header>
    <form method="post" action="" enctype="multipart/form-data">
        <div class="form-group">
            <label for="exampleInputEmail1">Email address</label>
            <input name="wide[]" type="email" class="form-control" id="exampleInputEmail1" placeholder="Email">
        </div>
        <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input name="wide[]" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
        </div>
        <div class="form-group">
            <label for="exampleInputFile">File input</label>
            <input name="wide[]" type="file" id="exampleInputFile">

            <p class="help-block">Example block-level help text here.</p>
        </div>
        <div class="checkbox">
            <label>
                <input name="wide[]" value="check1" type="checkbox"> Check me out
            </label>
        </div>
        <div class="checkbox">
            <label>
                <input name="wide[]" value="check2" type="checkbox">
                Option one is this and that&mdash;be sure to include why it's great
            </label>
        </div>
        <div class="selectors">
            <select name="wide[selector][]" multiple class="form-control">
                <option value="1">1</option>
                <option value="2">2</option>
                <option value="3">3</option>
                <option value="4">4</option>
                <option value="5">5</option>
            </select>
        </div>
        <div class="radio">
            <div class="r1">
                <label>
                    <input type="radio" name="wide[optionsRadios]" id="optionsRadios1" value="option1" checked>
                    Option one is this and that
                </label>
            </div>
            <div class="r2">
                <label>
                    <input type="radio" name="wide[optionsRadios]" id="optionsRadios1" value="option2" checked>
                    Option twooooo! You suck...
                </label>
            </div>
            <button type="submit" class="btn btn-default">Submit</button>
        </div>
    </form>
</div>
</body>
</html>

<?php

echo "Hi!" . "\n";
if ($_POST['wide'] !== NULL) {
    var_dump($_POST['wide']);
    var_dump($_FILES['wide']);
//    var_dump(sys_get_temp_dir());
//    var_dump(('/tmp/' . $_FILES['wide[0][0]']));
    var_dump($_FILES['wide']['tmp_name']);
}
//should check filesize
//echo "moving...";
//$new_file_name = strtolower($_FILES['wide']['name'][0]);
//move_uploaded_file($_FILES['wide']['tmp_name'][0], '/var/www/html/uploads/' . basename($new_file_name) . 'png');
////should check if file in new folder then echo the following:
//    echo " File accepted!";
//    echo '<div><img src="/uploads/' . $new_file_name . '"></div>';



//$boundary = "----------";
//$header = "From: dililliliandpan@gmail.com\r\n";
//$header .= "Content-Type: multipart/alternative;boundary=" . $boundary . "\n\r";
////$header .= "Bcc: dililliliandpan@yahoo.com\r\n";
//$message = "Hi!! I'm pretty plain, but look what I can become...\n\r";
//$message .= "\n\r" . $boundary . "\n\r";
//$message .= "<div background-color=\"#f2f2f2\" color=\"#aaff22\">Hello My Darlings...</div>";
//$message .= "\n\r" . $boundary . "\n\r";
//
//$email1 = 'forloopmenow@yahoo.com';
$email2 = 'lucia.velasco@mayden.co.uk';
$email3 = 'lucia.velasco@mayden.co.uk';
////for ($i = 1; $i>0; $i++) {
////    $message = 'Test ' . $i;
//    $mail = mail($email2, 'Test email', $message, $header);
////}



//specify the email address you are sending to, and the email subject
$subject = 'Email Subject';

//create a boundary for the email. This
$boundary = uniqid('np');
$boundary = "----------------------";
//headers - specify your from email address and name here
//and specify the boundary for the email
$headers = "MIME-Version: 1.0\r\n";
$headers .= "From: luke.sturgess@mayden.co.uk\r\n";
$headers .= "To: ".$email3."\r\n";
//$headers .= "Cc: Alt <luke.sturgess@gmail.com>\r\n";
$headers .= "Content-Type: multipart/alternative;boundary=" . $boundary . "\r\n";

//here is the content body
$message = "This is a MIME encoded message.";
$message .= "\r\n\r\n--" . $boundary . "\r\n";
$message .= "Content-type: text/plain;charset=utf-8\r\n\r\n";

//Plain text body
$message .= "Hello,\nThis is a text email, the text/plain version.
\n\nRegards,\nYour Name";
$message .= "\r\n\r\n--" . $boundary . "\r\n";
$message .= "Content-type: text/html;charset=utf-8\r\n\r\n";

//Html body
$message .= "
 Hello,
This is a <i>text email</i>, the <b>html</b> version.
Nice Image: <img src=\"http://weknowmemes.com/wp-content/uploads/2011/12/yes-this-is-dog-inspirational-quote.jpg\" />
Regards,
Your Name";
$message .= "\r\n\r\n--" . $boundary . "--";

//invoke the PHP mail function
$mail = mail($email3, $subject, $message, $headers);
var_dump($mail);
echo "email sent!";

?>