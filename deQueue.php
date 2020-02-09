<?php
#
# $Author: woo $
# $Date: 2016/03/17 15:29:26 $
# $Revision: 1.3 $
# $Source: /Users/woo/cvsrep/queue/deQueue.php,v $
#
    $id = intval($_REQUEST['id']);
    header("Content-type: application/json");
    header("Cache-Control: no-cache, must-revalidate");
    $result = array();
	$items = array();
	include 'conn_local.php';
    $sql = "select * from entries WHERE ENTRY_NUMBER = $id";
    $rs = mysql_query($sql);
    if ($rs){
        while($row = mysql_fetch_object($rs)){
            array_push($items, $row);
        }
        $result["data"] = $items;
        echo json_encode($result);
    } else {
       $response_array['errorMsg'] = 'Some errors occurred.';
       $response_array['msg'] = 'Hellow World';
	   echo json_encode($response_array);
    }
?>
