<?php
function validateMe($age, $name, $dob, $postcode, $username, $password, $title, $url, $email){
    //Age
    if (preg_match('/^([1-9]|[1-9][0-9]|100)$/', $age)) {
        echo "Is age" . "\n";
    } else {
        echo "Is not age" . "\n";
    }
//Full name (must include a separate first name and last name)
    if (preg_match('/^[A-Z][a-z]+ [A-Z][a-z]+( [A-Z][a-z]+)*?$/', $name)) {
        echo "Is name" . "\n";
    } else {
        echo "Is not name" . "\n";
    }
//Date of birth (allow short and long years)
    if (preg_match('/^([1-9]|[1-2][0-9]|3[01])[\/ ]([1-9]|0[1-9]|1[012])[\/ ](19|20)?[0-9]{2}$/', $dob)){
        echo "Is dob" . "\n";
    } else {
        echo "Is not dob" . "\n";
    }

//American zip code

//UK Postcode (allow spaces or not)
    if (preg_match('/^[A-z]{1,2}\d{1,2}[A-z]? ?[0-9][A-z]{2}$/',$postcode)) {
        echo "Is UK postcode" . "\n";
    } else {
        echo "Is not UK postcode" . "\n";
    }
////International phone number or uk phone number (eg. 07891 123456 and +44 7891 123456 both validate)
//    if (1) {
//        echo "Is phone number" . "\n";
//    } else {
//        echo "Is not UK phone number" . "\n";
//    }
//American State code (e.g MI, AZ etc. - only match on the 2 digit codes which represent a US State)

//Web url (http:// is optional, www is optional)
    if(preg_match('/^(https:\/\/)?(www\.)?\w+\.\w+/', $url) &&
       !preg_match('/\s/', $url))
//    if (preg_match('/^([!#$&-;=?-[]_A-z~]|%[0-9a-fA-F]{2})+$/', $url) &&
//    preg_match('/\./', $url))
    {
        echo "is valid url" . "\n";
    } else {
        echo "is not valid url" . "\n";
    }
//Email address
    /*--------------------------------------------------------------------*/
    if (preg_match('/^[A-z0-9_\.]+@[A-z]+\.[A-z]{2,4}$/', $email)) {
        echo "Is email" . "\n";
    } else {
        echo "Is not email" . "\n";
    }
//Username (You decide what limitations you want to enforce)
    if (ctype_alnum($username)) {
        echo "Is username" . "\n";
    } else {
        echo "Is not username" . "\n";
    }
//Secure password (Must be 8 or more characters long, include at least one of the following: uppercase letter, lowercase letter, digit, punctuation, do not allow spaces, quotes or backslash)
    if (preg_match('/\d/', $password) &&
        preg_match('/[A-Z]/', $password) &&
        preg_match('/[a-z]/', $password) &&
        preg_match('/[\W\S\D]/', $password) &&
        !preg_match('/\s/', $password) &&
        !preg_match('/["\']/', $password) &&
        !preg_match('/\\\/', $password)
    ) {
        echo "Is secure password" . "\n";
    } else {
        echo "Is not secure password" . "\n";
    }
//Title (eg Mr, Mrs, Dr etc)
    if (preg_match('/^(Mrs|Ms|Miss|Mx|Mr|Lord|Lady|Dr)$/i',$title)) {
        echo "Is title" . "\n";
    } else {
        echo "Is not title" . "\n";
    }
//Time (allow 12 hr or 24 hr formats
}

echo "I am validating with good data here:" . "\n\n";
validateMe(12, 'Lana Alderman Crotche', '19/01/97', 'SN13 0EZ', 'Dilillili', 'Perfor8_m3', 'Mx', 'purple.com', "dorky.watermelons@yahoo.es");
echo "\n" . "I am validating with bad data here:" . "\n\n";
validateMe(999, 'Lana Cr0tche', '19/01/000', 'SN13 0EZZ', 'Di/i//i/i', 'Perfor8 m3', 'King', 'purple com', "dorky.watermelons@yahoo@es");