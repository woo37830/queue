<?php
#
# $Author: woo $
# $Date: 2016/03/17 15:29:26 $
# $Revision: 1.3 $
# $Source: /Users/woo/cvsrep/queue/get_entries.php,v $
#
header("Content-type: application/json");
header("Cache-Control: no-cache, must-revalidate");

	include 'conn.php';
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
        error_log("sql = $sql");
    if( $rs = mysqli_query($conn, $sql) or die("Error: ".$conn->error)) {
#			$rowcount=mysqli_num_rows($rs);
#			error_log("rowcount = $rowcount");
	    while($row = $rs -> fetch_object()){
		    array_push($items, $row);
	    }
			$rs -> free_result();

		}
		$conn -> close();
	}
	$result["data"] = $items;

	echo json_encode($result);

?>
