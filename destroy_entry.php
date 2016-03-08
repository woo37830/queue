<?php

$id = intval($_REQUEST['id']);

include 'conn_local.php';

$sql = "delete from entries where ENTRY_NUMBER=$id";
$result = @mysql_query($sql);
if ($result){
	echo json_encode(array('success'=>true));
} else {
	echo json_encode(array('errorMsg'=>'Some errors occured.'));
}
?>
