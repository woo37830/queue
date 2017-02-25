<?php
#
# $Author: woo $
# $Date: 2016/03/17 15:29:26 $
# $Revision: 1.3 $
# $Source: /Users/woo/cvsrep/queue/get_entries.php,v $
#
	include 'conn_local.php';
	$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
	$result = array();
	$items = array();
    $user = htmlspecialchars($_POST["uName"]);
    $role = htmlspecialchars($_POST["uRole"]);
    $user = "";
    $role = "mgr";
#    echo "Hello World!";
    if( $user != "" || $role != "" ) {
        $sql = "select * from queueEntry WHERE ENTRY_STATUS = 'ACTIVE'  AND ( (QUEUED_FOR_USERID = '$user') OR (QUEUED_FOR_ROLE = '$role' ) ) ";
#        error_log("sql = $sql");
	    $rs = mysql_query($sql);

	    while($row = mysql_fetch_object($rs)){
		    array_push($items, $row);
	    }
	}
	$result["data"] = $items;
        header("Content-type: application/json");
        header("Cache-Control: no-cache, must-revalidate");

	echo json_encode($result);

?>
