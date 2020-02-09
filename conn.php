<?php

$conn = new mysqli('jwooten37830.com','root','random1','queue_db');
if ($conn -> connect_errno) {
  echo "Failed to connect to MySQL: " . $conn -> connect_error;
	error_log("FAILURE: $conn -> connect_error");
  exit();
}

?>
