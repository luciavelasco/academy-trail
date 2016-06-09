<?php

spl_autoload_register( 'autoloadClass' );

function autoloadClass($className) {
    include $className . ".php";
}


$lidls = new Shop();