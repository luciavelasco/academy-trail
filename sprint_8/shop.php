<?php

//namespace Shop;
//
//use Shop\Product\Product;

class Shop {
    public function __construct(){
        $handbag = new Product(Product::WOMENSWEAR);
        $handbag->getProp();
        $handbag->setProp();
        $handbag->getProp();
        $handbag = NULL;
        try {
            $this->exceptionTest(0);
        } catch (ErrorException $e) {
            echo "Never will you succeed in this endeavour, mortal..." . ".\n";
        }
    }
    public function exceptionTest($bool){
        if (!$bool) {
            throw new ErrorException();
        }
        echo "You doth invoke me, earthling?!" . ".\n";
    }
}

//$lidls = new Shop();