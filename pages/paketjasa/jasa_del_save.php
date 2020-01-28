<?php
		//$skrg = date('Y-m-d');
        include_once '../../lib/config.php';
        $fk_jasa = $_GET['fk_jasa'];
        $fk_paket_jasa = $_GET['fk_paket_jasa'];
		$sqlhapussatuan = "DELETE FROM t_paket_jasa_detail WHERE fk_jasa='$fk_jasa'";
           mysql_query( $sqlhapussatuan );
        
            $sqljasa= "SELECT sum(harga_total_paket_jasa) AS totpaketjasa FROM t_paket_jasa_detail WHERE fk_paket_jasa = '$fk_paket_jasa'";
            $hjasa= mysql_fetch_array(mysql_query($sqljasa));
            //jml jasa

            $totgrosjasa=$hjasa['totpaketjasa'];
            //$totdiskonjasa=$hjasa['totdiskonjasa'];
            //$totnettojasa=$hjasa['totpaketjasa'];

            $updatejasa = "UPDATE t_paket_jasa set total_harga_paket='$totgrosjasa' WHERE id_paket_jasa='$fk_paket_jasa'";
            mysql_query($updatejasa);
            echo $totgrosjasa;
?>