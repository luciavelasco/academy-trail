<?php

describe('TavernAndHotelReception', function () {
    it('should visually describe the reception', function () {
        $tavern = new \Project\Inanimate\Places\Tavern\TavernAndHotelReception();
        expect($tavern->displayThing(0))->toEqual(
            'Looking around you see a small wood-panelled room. A warm fire burns in the stone hearth to your left. On your right is a doorway and directly in front of you sits a large, ruddy fellow in a big oaken chair behind a heavy desk, snoring deeply.'
        );
        expect($tavern->displayThing(1))->toEqual(
            'Looking around you see an elegant reception. Through an open doorway to your right comes delicate piano and the sound of cutlery clinking, you glimpse tables and a piano forte. To your left is a lift and directly in front of you a perfect plastic receptionist smiles mawkishly behind her desk.'
        );

        $tavern->doAThing();
    });
});
