<?php

namespace Project\LivingThing;

abstract class LivingThing
{
    ////Abstract funcs:
    /**
     * @param $name 
     */
    abstract public function __construct($name);

    /**
     * @param $name
     * @return mixed
     */
    abstract protected function setCharacterName($name);

    ////Variable properties:
    protected $isDrunk = 0;
    public $name = '';

    ////Array properties:
    protected $sleeping = [
    '%s eventually falls into a restless sleep.',
    '%s sinks into slumber.'
    ];

    protected $drunk = [
    [
    '%s\'s pleasantly deep in their cups at this point.',
    '%s\'s pretty damn tipsy now, m8ey.'
    ],
    [
    'Glancing at their barley water %s thanks the gods they thought to stay sober.',
    'Glancing at their raspberry pressé %s enjoys their sobriety.'
    ]
    ];

    protected $listItems = [
    'In %s\'s knapsack they have: ',
    'In their briefcase %s\'s carrying: '
    ];

    protected $howToSit = [
        '%s sits down.',
        '%s takes a seat.'
    ];

    ////Methods:
    public function sleep($x){
//        return $this->name . ' eventually fall into a restless sleep.'
        return sprintf($this->sleeping[$x], $this->name);
    }

    public function setDrunk(){
        if ($this->isDrunk == 1){
            $this->isDrunk = 0;
        } else{
            $this->isDrunk = 1;
        }
    }

    public function getDrunk($x){
        $sobriety = $this->isDrunk;
        return sprintf($this->drunk[$sobriety][$x], $this->name);
    }

    public function getInventory($x)
    {
        return sprintf($this->listItems[$x], $this->name);
    }

    public function sit($x)
    {
        return sprintf($this->howToSit[$x], $this->name);
    }

    public function getName(){
        return $this->name;
    }
}
