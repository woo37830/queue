<?php

$id = intval($_REQUEST['id']);
$msg = htmlspecialchars($_REQUEST['msg']);

include 'conn_local.php';

$sql = "update entries set msg='$msg' where ENTRY_NUMBER=$id";
$result = @mysql_query($sql);
if ($result){
	echo json_encode(array(
		'msg' => $msg
	));
} else {
	echo json_encode(array('errorMsg'=>'Some update errors occured'));
}
?>
