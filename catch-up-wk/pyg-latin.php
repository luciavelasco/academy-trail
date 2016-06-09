<?php
/*
echo "Are you sure you want to do this?  Type 'yes' to continue: ";
$handle = fopen("php://stdin", "r");
$line = fgets($handle);
if (trim($line) != 'yes') {
    echo "ABORTING!\n";
    exit;
}
*/


/*Pig Latin is a language game, where
you move the first letter of the word to
the end and add "ay." So "Python" becomes
"ythonpay."
*/

/* Welcome
 * enter text
 * if no text or  ask for text with no special characters
 * if only "exit"', say goodbye and exit program
 *
 * if all other text call translator function
 * else call error
 * call if function
 * if yes take back to the beginning
 * if no or exit say goodbye and exit program
*/


function pigLatinTranslator($string)
{

    $whitespace = " ";
    $words = explode($whitespace, $string);
    foreach ($words as $word) {
        $pig = "ay";
        $word_body = substr($word, 1);
        $first_letter = substr($word, 0, 1);
        $pig_word = $word_body . $first_letter . $pig . " ";
        echo "$pig_word";
    };
    echo "\n";
    startAgain();
}

function startAgain()
{
    echo "Would you like to translate more words? Please input yes or no.\n";
    $handle = fopen("php://stdin", "r");
    $line = trim(fgets($handle));
    if ($line == "yes" || $line == "y") {
        callTranslator();
    } elseif ($line == "no" || $line == "n") {
        exitTranslator();
    } else {
        echo "Sorry, I didn't catch that!";
        startAgain();
    }
}

function exitTranslator()
{
    echo "Exiting translator. Bye-bye, see you again soon!\n";
    exit;
}

/*
* enter text
* if no text or  ask for text with no special characters
* if only "exit"', say goodbye and exit program
*/
function callTranslator()
{
    echo "Please input text to translate into Pig Latin:\n";
    $handle = fopen("php://stdin", "r");
    $line = trim(fgets($handle));
    //preg_match_all($pattern, $input_str, $matches_out)
    $isString = "/^[A-Za-z\s]+$/";
    if (preg_match($isString, $line)) {
        if ($line === "exit") {
            exitTranslator();
        } else {
            $string = strtolower($line); //line in lower case
            pigLatinTranslator($string);
        }

    } elseif ($line != "/[A-Za-z\s]+/") {
        echo "Please input only text, no punctuation or numbers!\n";
        callTranslator();
    } else {
        echo "There was an error! Aborting translator!\n";
        exitTranslator();
    };
}

echo "Welcome to the PHP Pig Latin Translator!\n";
callTranslator();


?>