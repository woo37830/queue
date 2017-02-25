<?php
#
# $Author: woo $
# $Date: 2016/03/17 15:29:26 $
# $Revision: 1.3 $
# $Source: /Users/woo/cvsrep/queue/conn_local.php,v $
#

$conn = @mysql_connect('127.0.0.1','root','random1');
if (!$conn) {
	die('Could not connect: ' . mysql_error());
}
mysql_select_db('queue_db', $conn);

?>
