<?php
function thing()
{
    try {
        try {
            //try to do the thing
            call();
        } catch (Exception $e) {
            //if an exception is fired do this thing instead of try thing
            throw new Exception();
        }

        try {
            callElse();
        } catch (ErrorException $e) {
            throw new Exception();
        }

    } catch(Exception $e) {
        echo 'This is the ' . $e->getMessage() . '.' . "\n";
    } finally {
        //happens whether or not try or catch is applied
    }

    function call()
    {
        throw new Exception('message');
    }
    function callElse()
    {
        throw new ErrorException('message');
    }
}

thing();