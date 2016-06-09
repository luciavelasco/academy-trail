<?php
//namespace Shop\Product;

class Product {
    public $prop1 = 1;
    public $prop2 = 1;
    private $prop3 = 1;
    const WOMENSWEAR = 1;
    const MENSWEAR = 2;
    const UNISEX = 0;

    public function __construct($department){
        echo "helloo!" . "\n";
        $this->department = $department;
        echo "Welcome to department " . $this->department . ".\n";
    }

    public function __destruct(){
    echo "Noooooooo!" . "\n";
    }

    public function setProp(){
        $this->prop3 == 1 ? $this->prop3 = 0 : $this->prop3 = 1;
    }

    public function getProp(){
        echo "The third property value is: " . $this->prop3 . "\n";
    }
}
