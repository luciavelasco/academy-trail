<?php

namespace Project\Inanimate\Places\Tavern;

use Project\Inanimate\Places\Places;

class TavernAndHotelReception extends Places
{
    protected $looksLike = [
        'a small wood-panelled room. A warm fire burns in the stone hearth to your left. On your right is a doorway and directly in front of you sits a large, ruddy fellow in a big oaken chair behind a heavy desk, snoring deeply.',
        'an elegant reception. Through an open doorway to your right comes delicate piano and the sound of cutlery clinking, you glimpse tables and a piano forte. To your left is a lift and directly in front of you a perfect plastic receptionist smiles mawkishly behind her desk.'
    ];

    public function doAThing()
    {
        exit(self::$thing);
    }

}