<?php
		//$skrg = date('Y-m-d');
        include_once '../../lib/config.php';
		$id_jasa = $_GET['id_jasa'];
		# HAPUS DATA 
		$sqlhapusasuransi = "DELETE FROM t_jasa WHERE id_jasa='$id_jasa'";
   		mysql_query( $sqlhapusasuransi );
?>
