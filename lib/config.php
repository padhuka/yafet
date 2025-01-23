<?php
    error_reporting(E_ALL ^ E_DEPRECATED);
	include_once 'setting.php';
	$objConn = mysql_connect("{$host}", "{$user}", "{$passsw}");
	mysql_select_db( "{$db}", $objConn );
	date_default_timezone_set('Asia/Jakarta');
	$hrini = date('Y-m-d H:i:s');
	$tahunnow = date('Y');
	$harinow = date('Y-m-d');
	$ppne= 11;
	$telp= '0361 9094738';
?>
