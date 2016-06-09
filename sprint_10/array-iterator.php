<?php

class Circus extends ArrayObject {
    public $act1 = "Clowns!";
    public $act2 = "Sad giraffe belly dancing";

    public function __construct() {
        $this->getIterator();
    }
}


$rhymes = array(
    "red", "lorry", "yellow", "lorry",
);
$obj = new ArrayObject( $rhymes );
$it = $obj->getIterator();
// How many items are we iterating over?
echo "Iterating over: " . $obj->count() . " values\n";
// Iterate over the values in the ArrayObject:
while( $it->valid() )
{
    echo $it->key() . "=" . $it->current() . "\n";
    $it->next();
}

foreach ($it as $key=>$val)
    echo $key.":".$val."\n";

$array = array(
    "firstelement",
    "secondelement",
    "lastelement");

$arrayObj = new arrayObject($array);

var_dump($arrayObj);

$arrayObj->append('fourthelement');

var_dump($arrayObj);