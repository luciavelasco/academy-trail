<?php

describe('LivingThingMock', function () {
    it('does the thing', function () {
        $livingThing = new \Project\LivingThing\LivingThingMock('Character');
        expect($livingThing->sleep(0))->toEqual(
            'Character eventually falls into a restless sleep.'
        );
        expect($livingThing->sleep(1))->toEqual(
            'Character sinks into slumber.'
        );
        expect($livingThing->getDrunk(0))->toEqual(
            'Character\'s pleasantly deep in their cups at this point.'
        );
        expect($livingThing->getDrunk(1))->toEqual(
            'Character\'s pretty damn tipsy now, m8ey.'
        );
        $livingThing->setDrunk();
        expect($livingThing->getDrunk(0))->toEqual(
            'Glancing at their barley water Character thanks the gods they thought to stay sober.' //FF
        );
        expect($livingThing->getDrunk(1))->toEqual(
            'Glancing at their raspberry pressé Character enjoys their sobriety.' //FF
        );
        expect($livingThing->getInventory(0))->toEqual(
            'In Character\'s knapsack they have: '
        );
        expect($livingThing->getInventory(1))->toEqual(
            'In their briefcase Character\'s carrying: '
        );
        expect($livingThing->sit(0))->toEqual(
            'Character sits down.'
        );
        expect($livingThing->sit(1))->toEqual(
            'Character takes a seat.'
        );
        expect($livingThing->getName())->toEqual(
            'Character'
        );
//        expect($livingThing->func())->toEqual(
//        );
    });
});
