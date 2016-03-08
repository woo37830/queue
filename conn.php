<?php

$conn = @mysql_connect('jwooten37830.com','root','random1');
if (!$conn) {
	die('Could not connect: ' . mysql_error());
}
mysql_select_db('queue_db', $conn);

?>
