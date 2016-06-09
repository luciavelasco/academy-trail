<?php

namespace Project\Inanimate\Places;

use Project\Inanimate\Inanimate;

abstract class Places implements Inanimate
{
    protected $doesThis = 'Looking around';
    protected $looksLike = [];

    protected static $thing = 'hello';

    public function displayThing($x)
    {
        return $this->doesThis . ' you see ' . $this->looksLike[$x];
    }

    public function doAThing()
    {
        exit(static::$thing);
    }
}