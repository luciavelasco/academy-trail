<?php

describe('TavernAndHotelBedroom', function () {
    it('should visually describe the bedroom', function () {
        $tavern = new \Project\Inanimate\Places\Tavern\TavernAndHotelBedroom();
        expect($tavern->displayThing(0))->toEqual(
            'Looking around you see a neat little room with a small table, a washbasin, a wardrobe, a chair and a large bed draped in fine linen. Due to a curious incident as a child I have never needed to use the bathroom facilities, as my body self purifies. But that is a story for another time.'
        );
        expect($tavern->displayThing(1))->toEqual(
            'Looking around you see a lavish room decorated in red and white brocade furniture. In front of you is an enormous bed, next to which you see a quaint vanity table. On the other side is a wardrobe and the door to the en suite. Due to a curious incident as a child you have never needed to use the bathroom facilities, as my body self purifies. But that is a story for another time.'
        );
    });


});
