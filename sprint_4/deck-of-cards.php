<?php

$okay_deck = [
    'hearts' => ['ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king'],
    'spades' => ['ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king'],
    'clubs' => ['ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king'],
    'diamonds' => ['ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king']
];

$interesting_deck = [
    ['suit' => 'diamond', 'number' => 5],
    ['suit' => 'diamond', 'number' => 6]
];


//$handle = fopen("php://stdin", "r");
//$line = trim(fgets($handle));


//calling from the multidimensional array:
//echo $better_deck['diamonds'][2];
/*
function showOffMyCardSkills($deck = $better_deck)
{

    echo 'Do you want to see the deck? Enter e to exit' . "\n";
    callInput();
    if ($line == 'yes' || $line == 'y') {
        listAllTheCards($deck);
    } elseif ($line == 'no' || $line == 'n') {
        echo 'Oh... well, would you like to pick a card?' . "\n";
        callInput();
        if ($line == 'yes' || $line == 'y') {
            dealARandomCard($deck);
            showOffMyCardSkills();
        } elseif ($line == 'no' || $line == 'n') {
            echo 'Ah, would you like to count the deck?' . "\n";
            callInput();
            if ($line == 'yes' || $line == 'y') {
                //countTheDeck($deck);
                echo 'Well fuck you, we can\'t all always have what we want. Dick.' . "\n";
            }
        }
    }
}*/

/*-----------------------new intro-----------*/
/*--------arrays to iterate through*/

$cards = ['ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king'];
$better_deck = [
    'hearts' => $cards,
    'spades' => $cards,
    'clubs' => $cards,
    'diamonds' => $cards
];
/*------functions that do things*/
function listAllTheCards($deck)
{
    $cardNumber = 0;
    //iterate through the deck
    foreach ($deck as $suit => $allCards) {
        //iterate through the cards
        foreach ($allCards as $thisCard) {
            echo 'Card number ' . ($cardNumber + 1) . ' is the ' . $thisCard . ' of ' . $suit . '!' . "\n";
            $cardNumber++;
            echo "-";
        }

    }
}

//function dealARandomCard($deck)
//{
//    $randSuit = array_rand($deck);
//    $randCard = array_rand($deck[$randSuit]);
//    $dealtCard = $deck[$randSuit][$randCard];
//    echo 'Your card is the ' . $dealtCard . ' of ' . $randSuit . '!' . "\n";
//    unset($dealtCard);
//}
function dealARandomCard($deck)
{
    $num = rand(1, 52);
    if ($num <= 13) {
        $min = 1;
        $suit = 'hearts';
        $card = findCardInDeck($num, $min);
        $yourCard = $deck[$suit][$card];
    } elseif ($num <= 26) {
        $min = 14;
        $suit = 'spades';
        $card = findCardInDeck($num, $min);
        $yourCard = $deck[$suit][$card];
    } elseif ($num <= 39) {
        $min = 27;
        $suit = 'clubs';
        $card = findCardInDeck($num, $min);
        $yourCard = $deck[$suit][$card];
    } elseif ($num <= 52) {
        $min = 40;
        $suit = 'diamonds';
        $card = findCardInDeck($num, $min);
        $yourCard = $deck[$suit][$card];

    }
    return 'Your card is the ' . $yourCard . ' of ' . $suit . '!' . "\n";
}

function findCardInDeck($num, $min)
{
    return ($num - $min);
}

function countTheDeck($deck)
{
    $numOfCards = 0;
    foreach ($deck as $suit => $cards) {
        $numOfCards += count($cards);
    }
    echo 'There are ' . $numOfCards . ' left in the deck.' . "\n";
}

/*--------functions to interact with*/
function callInput()
{
    $handle = fopen("php://stdin", "r");
    return $line = trim(fgets($handle));
}

function presentChoices()
{
    echo 'To view the deck enter \'d\',' . "\n"
        . 'To count the deck enter \'c\',' . "\n"
        . 'To see a random card enter \'r\'.' . "\n";
    return callInput();
}

function selectChoice($response, $deck)
{
    if ($response == 'd') {
        listAllTheCards($deck);
        presentChoices();
    } elseif ($response == 'c') {
        countTheDeck($deck);
        presentChoices();
    } elseif
    ($response == 'r') {
        echo dealARandomCard($deck);
        presentChoices();
    }
}


presentChoices();
$line = presentChoices();
selectChoice($line, $better_deck);


//give option one
//give option two
//give option three
//showOffMyCardSkills();
//deal a random card to me, then remove it from the array




