<?php
$text = "I am the horse in the darkness. I am the night in the lie. What.";

echo $text;
echo "\n";
//1) length
echo 'string length: ' . strlen($text);
echo "\n";
//2) no. of words
echo 'number of words: ' . count(explode(' ', $text));
echo "\n";
//3) no. of sentences
echo 'number of sentences: ' . count(explode('.', $text));
echo "\n";
//4) no. of paragraphs
//5) longest word
$a = explode(' ', $text);

function isort($a,$b){
    return strlen($a)-strlen($b);
}

usort($a,'isort');
echo 'longest word: ' . array_pop($a);
echo "\n";
//6) average word length
$a = explode(' ', $text);
foreach($a as $b) {
    $c[] = strlen($b);
}
echo 'avg word length: ' . round((array_sum($c)/count($c)));
echo "\n";
//7) longest sentence
$f = explode('.', $text);

usort($f,'isort');

echo 'longest sentence: ' . array_pop($f) . '.';
echo "\n";
//:sunglasses: average sentence length
foreach($f as $g) {
    $h[] = strlen($g);
}
echo 'avg sentence length: ' . round((array_sum($h)/count($h)));
echo "\n";
//9) unique word count
$j = array_count_values($a);
sort($j);
$k = array_shift($j);
echo 'unique word: ' . $k; //?
echo "\n";
//10) word count
echo 'word count: ' . array_pop($j); //?
echo "\n";

//11) most common word
//12) extract quotations

//if ($a || $b) {
//    echo 'trupp';
//}
//echo "\n";
//
//switch($a || $b) {
//    case true:
//        echo 'trupp two';
//        echo "\n";
//        break;
//    case false:
//        echo 'nut trupp...';
//        echo "\n";
//        break;
//    default:
//        echo 'dis nut uptin doe';
//        echo "\n";
//}