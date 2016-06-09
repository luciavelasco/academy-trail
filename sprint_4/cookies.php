<?php
// setcookie('visits', null, time() + 10);
// unset($_COOKIE['visits']);
// echo time();
$value = "Some useful information";
$timeout_in_an_hour = time()+3600;
$timeout_short = time()+10;
$timeout_year = time() + 3600 * 24 * 365;
​
//setcookie("name","value",$timeout);
// setcookie(string name [, string value [, int expire [, string path [, string domain [, bool secure [, bool httponly]]]]]])
​
setcookie("TestCookie", $value, $timeout_in_an_hour);
/*name is your cookie's name
value is cookie's value
$int is time that the cookie expires*/
​
if (isset($_COOKIE['visits'])) {
    $visits = $_COOKIE['visits'] + 1;
} else {
    $visits = 1;
}
​
setcookie("visits", $visits, time()+10);
​
printf("You have visited this site %u times!", $_COOKIE['visits']);
​
var_dump($_COOKIE);
​
​
// Array example
// set the cookies

setcookie("cookie[three]", "cookiethree");
setcookie("cookie[two]", "cookietwo");
setcookie("cookie[one]", "cookieone");
​
// after the page reloads, print them out
if (isset($_COOKIE['cookie'])) {
    foreach ($_COOKIE['cookie'] as $name => $value) {
        $name = htmlspecialchars($name);
        $value = htmlspecialchars($value);
        echo "$name : $value <br />\n";
    }
}

?>