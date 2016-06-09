<?php

//EXAMPLE of some kind --> look up modes

$my_file = 'file.txt';

$handle = fopen($my_file, 'a+') or die('Cannot open file:  '.$my_file);
$data = 'This is the data';
fwrite($handle, $data);
$handle = fopen($my_file, 'a+') or die('Cannot open file:  '.$my_file);

$data = fread($handle,filesize($my_file));
echo $data;
fclose($handle);
$data2 = fread($handle,filesize($my_file));
echo $data2;

//$my_file = 'file.txt';
//unlink($my_file);