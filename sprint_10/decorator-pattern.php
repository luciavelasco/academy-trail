<?php

interface theyAllFallDown {

//    public function watchThem($x);
    public function fellDown();
}

class TheyFall implements theyAllFallDown {
    public function watchThem(){
        return 'Watch the';
    }

    public function fellDown()
    {
        return ' fell down' . "\n";
    }
}

class CircusNana implements theyAllFallDown {
    public function watchThem()
    {
        return $this->theyFall->watchThem() . ' banana';
    }
    public function __construct($theyFall)
    {
        $this->theyFall = $theyFall;
    }
    public function fellDown()
    {
        return 'banana ' . $this->theyFall->fellDown();
    }
}

class CircusNelly implements theyAllFallDown {

    public function watchThem()
    {
        return $this->theyFall->watchThem() . ' elephant';
    }
    public function __construct($theyFall)
    {
        $this->theyFall = $theyFall;
    }
    public function fellDown()
    {
        return 'elephant ' . $this->theyFall->fellDown();
    }
}

$clown = new CircusNelly(new CircusNana(new TheyFall()));
echo $clown->fellDown();
echo $clown->watchThem() . "\n";