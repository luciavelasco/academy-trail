<?php

namespace Project\Inanimate;

interface Inanimate
{
/**
*                displayThing uses $doesThis and $looksLike members
* @param int $x medieval or modern
* @return string              a description of the place or item being interacted with
*/
public function displayThing($x);
// =building
// =room
// ==passage
}