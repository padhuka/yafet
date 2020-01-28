<?php
		//$skrg = date('Y-m-d');
        include_once '../../lib/config.php';
		$id_paket_jasa = $_GET['id_paket_jasa'];
		$sqlhapussatuan = "DELETE FROM t_paket_jasa WHERE id_paket_jasa='$id_paket_jasa'";
   		mysql_query( $sqlhapussatuan );
?>
