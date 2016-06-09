<?php

$postcode = "SN13 0EZ";

//UK Postcode (allow spaces or not)
if (preg_match('/^[A-z]{1,2}\d{1,2}[A-z]? ?[0-9][A-z]{2}$/',$postcode)) {
echo "Is UK postcode" . "\n";
} else {
echo "Is not UK postcode" . "\n";
}