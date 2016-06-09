<?php

$baseurl = 'http://maps.googleapis.com/maps/api/geocode/xml?address=350+5th+Avenue+New+York,NY&sensor=false';
$xml_content = file_get_contents($baseurl);
$xml = simplexml_load_string($xml_content);
echo $xml_content;
//var_dump($xml->result->geometry->viewport->southwest);
echo "Southwesterly latitude: " . $xml->result->geometry->viewport->southwest->lat . "\n";
echo "Southwesterly longitude: " . $xml->result->geometry->viewport->southwest->lng . "\n";
//var_dump($xml->result->geometry->viewport->northeast);
echo "Northeasterly longitude: " . $xml->result->geometry->viewport->northeast->lat . "\n";
echo "Northeasterly longitude: " . $xml->result->geometry->viewport->northeast->lng . "\n";
//var_dump($xml->result->address_component);
//var_dump($xml);