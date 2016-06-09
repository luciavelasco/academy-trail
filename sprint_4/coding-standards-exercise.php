<?php

class NiceClass
{
    $thisIs = "a variable";

    if ($x = 1) {
        print "hello";
    }

    for ($i = 1; $i < 10; $i++) {
        print $i;
    }

    function myFunction($one, $two)
    {
        return $one + $two;
    }

    function niceFunction($one, $two = null)
    {
        if ($this == 'that') {
            $result = myFunction($one, $two);
            return $result;
        }
    }
}
?>