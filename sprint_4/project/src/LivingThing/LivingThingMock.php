<?php

namespace Project\LivingThing;

use Project\LivingThing\LivingThing;

class LivingThingMock extends LivingThing
{
    public function __construct($name){
        $this->setCharacterName($name);
    }

    protected function setCharacterName($name){
        $this->name = $name;
    }
}

