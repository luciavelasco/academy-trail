<?php

//setting variables
$servername ="192.168.20.56";
$port = "3306";
$username = "root";
$password = "";
$database = "test1";

//$db = mysqli_connect($servername, $username, $password);
$db = new mysqli($servername, $username, $password, $database);

if ($db->connect_error) {
	die("Connection failed: " .  $db->connect_error);
	}
echo "Connected successfully! <br>";

//SQL select
$sql ="SELECT * FROM test_table;";


$result = $db->query($sql);

while($row = $result->fetch_assoc()){
	echo $row['first_name'] . ' ' .  $row['last_name'] . '<br />';
}


//add something to the database
//$sql ="INSERT INTO test_table (first_name, last_name, dob) VALUES ('Hermione', 'Granger', '1989-09-20');";

//$result = $db->query($sql);

//$sql ="DELETE FROM test_table WHERE id = 3;";
//$result = $db->query($sql);

//var_dump($result);




?>