<?php
//echo "Test, please write your name:\n";
//$handle = fopen("php://stdin", "r");
//$text = trim(fgets($handle));
//echo 'Hiya, ' . $text . '!' . "\n";

function makeArrayUpper(&$array) {
    if (!is_array($array)) {
        return false;
    }
    foreach($array as $key => $string) {
        $array[$key] = strtoupper($string);
    }
    return true;
}

$array = explode(' ', 'Zend Training - Building Security into your PHP Applications');
echo makeArrayUpper($array) . "\n";
var_dump($array);