<?php
	$page = isset($_POST['page']) ? intval($_POST['page']) : 1;
	$result = array();
	$items = array();
    $user = htmlspecialchars($_POST["uName"]);
    $role = htmlspecialchars($_POST["uRole"]);
	include 'conn_local.php';
    if( $user != "" && $role != "" ) {
        $sql = "select * from entries WHERE ENTRY_STATUS = 'ACTIVE'  AND ( (QUEUED_FOR_USER = '$user') OR (QUEUED_FOR_ROLE = '$role' ) ) ";
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
