<?php
$mysqli = new mysqli("localhost","root","","management_employee");
// Check connection
if ($mysqli -> connect_error) {
  die("Connection failed: " . $conn->connect_error);
}
?>
