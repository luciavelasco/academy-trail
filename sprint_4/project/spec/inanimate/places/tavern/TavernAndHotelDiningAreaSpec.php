<?php

describe('TavernAndHotelDiningArea', function () {
    it('should visually describe the dining area', function () {
        $tavern = new \Project\Inanimate\Places\Tavern\TavernAndHotelDiningArea();
        expect($tavern->displayThing(0))->toEqual(
            'Looking around you see a smokey, cramped, poorly lit room with a number of tables and benches.'
        );
        expect($tavern->displayThing(1))->toEqual(
            'Looking around you see a fine restaurant peppered with tables at which are seated sharp women and fat lipped men.'
        );
    });
});
