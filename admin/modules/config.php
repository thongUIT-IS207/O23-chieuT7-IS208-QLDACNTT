<?php
$mysqli = new mysqli("localhost","root","","management_employee");

if ($mysqli -> connect_errno) {
  die("Connection failed: " . $conn->connect_error);
}

?>
