<?php

//!make deck of cards
//ask whether someone wants to play a game of blackjack
//--best of three?
//your hand and your total - stick or hit?
//dealer's hand and dealer's total

//options:
//hit => dealer's hand (is 21?), your hand
//stick => dealer's hand

//what is the ace?
//is total hand > 21?

function makeDeck(){
    $cards = ['ace', 2, 3, 4, 5, 6, 7, 8, 9, 10, 'jack', 'queen', 'king'];
    $suits = ['hearts', 'diamonds', 'clubs', 'spades'];
    foreach($suits as $suit) {
        foreach ($cards as $card) {
            $deck = [['card' => $card, 'suit' => $suit]];
        }
    }
    return $deck;
}

function randomCard(&$deck)
{
    $cardNumber = rand(0, count($deck)-1);
    //index!!
    $card = $deck[$cardNumber];
    $number = $card['card'];
    $suit = $card['suit'];
    $value = cardScore($card);
    unset($deck[$cardNumber]);
    return [$card, $number, $suit, $value];
}
//remove card from deck
function cardScore($currCard){
    $cardVal = $currCard[2];
    if (is_int($cardVal)){
        return $cardVal;
    } elseif ($cardVal == 'ace'){
        return aceValue($total);
    } else {
        return 10;
    }
}

function aceValue($total){
    if ($total < 11){
        $ace = 11;
    } else {
        $ace = 1;
    }
    return $ace;
}

function totalHand($currTotal, $firstCard, $secondCard){
    $total = $currTotal + $firstCard + $secondCard;
    return $total;
}

//function expressCard(&$deck){
//    $card = randomCard($deck);
//    echo 'The card is the ' . $card[2] . " of " . $card[3] . "\n";
//}

//function expressHand(){
//    ;
//    echo 'The card is the ' . $card[2] . " of " . $card[3] . "\n";
//    return $cardScore = cardScore($card[2]);
//}

function callInput()
{
    $handle = fopen("php://stdin", "r");
    $line = trim(fgets($handle));
    if ($line == 't') {

    }
}

function newHand(&$currTotal, &$deck)
{
    $cardInfo1 = randomCard($deck);
    $cardInfo2 = randomCard($deck);
    $cardScore1 = cardScore($cardInfo1[1]);
    $cardScore2 = cardScore($cardInfo2[1]);
    echo 'The first card is the ' . $cardInfo1[1] . ' of ' . $cardInfo1[2] . "\n";
    echo 'The second card is the ' . $cardInfo2[1] . ' of ' . $cardInfo2[2] . "\n";
    $currTotal = totalHand($currTotal, $cardScore1, $cardScore2);
    echo 'The score now is ' . $currTotal . ".\n";
}

function checkWinOrLose($playerScore, $dealerScore){
    if
    ($playerScore == 21 || $dealerScore > 21) {
        echo 'YOU WON!' . "\n";
        exit;
    } elseif ($playerScore > 21 || $dealerScore == 21) {
        echo 'You LOSE bitch! Too bad.' . "\n";
        exit;
    } else {
        echo 'Would you like to stick(s) with what\'cha got, or try(h) for more?';
    }

}

function blackjack(){
    $playerTotal = 0;
    $deck = makeDeck();
    newHand(&$playerTotal, &$deck);
    checkWinOrLose($playerTotal, $dealerTotal);
    $dealerTotal = 0;
    newHand($dealerTotal, $deck);
    checkWinOrLose($playerTotal, $dealerTotal);
}