<?php
$servername = "localhost";
$username = "root";
$password = "12345678";
$MyDB= "together";

// Create connection
$conn =mysqli_connect($servername, $username, $password, $MyDB);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

?>