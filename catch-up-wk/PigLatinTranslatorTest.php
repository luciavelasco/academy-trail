<?php

/**
 * Created by PhpStorm.
 * User: luciavelasco
 * Date: 09/11/2015
 * Time: 10:17
 *
 * Unit Testing:
 * phpunit [options] UnitTest [UnitTest.php]
 * phpunit [options] <directory>
 */

require_once 'pig-latin-page.inc';

class PigLatinTranslatorTest extends PHPUnit_Framework_TestCase
{
    public function testPigLatinTranslator(){
        $this->assertEquals('histay  ordway ', pigLatinTranslator('this word'));
    }
}
