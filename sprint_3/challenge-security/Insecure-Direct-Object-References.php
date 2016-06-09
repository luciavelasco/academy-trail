<?php
$dsn = 'mysql:host=vagrant.shit;dbname=witchery';
$username = 'root';
$password = '';
​
$id = $_GET['id'];
​
$dbh = new PDO($dsn, $username, $password);
$stuff = $dbh->query('SELECT * FROM witchery WHERE id = ' . $id)->fetchAll(PDO::FETCH_ASSOC);
​
foreach ($stuff as $thing) {
    ?><pre><?php
    foreach ($thing as $key => $value) {
        echo $key . ' => ' . $value . PHP_EOL;
    }
    ?></pre><?php
}