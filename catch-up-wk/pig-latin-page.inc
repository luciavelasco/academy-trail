<?php
/*input box and submit button
integrate punctuation, integrate capitalization,
integrate exceptions (eg th and wh)
*/
function pigLatinTranslator($string)
{
    $whitespace = " ";
    $words = explode($whitespace, $string);
    foreach ($words as $word) {
        $pig = "ay";
        $wordBody = substr($word, 1);
        $firstLetter = substr($word, 0, 1);
        $pigWord = strtolower($wordBody . $firstLetter . $pig) . " ";
        $translatedText[] = $pigWord;
    };
    return $translatedString = implode(' ', $translatedText);
}
/*
if (isset($_COOKIE['visits'])) {
    $numberOfVisits = $_COOKIE['visits'] + 1;
} else {
    $numberOfVisits = 1;
}
​
setcookie("visits", $numberOfVisits, time() + 10);
​
$pigCook = printf("You have visited this site %u times!", $numberOfVisits]);
*/
session_start();
$result = '3';

if (isset($_GET["line"])) {
    $result = pigLatinTranslator($_GET['line']);
};
