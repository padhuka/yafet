<?php
		//$skrg = date('Y-m-d');
        include_once '../../lib/config.php';
        $idpkbjasa = $_GET['idpkbjasa'];
        $id = $_GET['id'];

        $sqlhapusasuransi = "DELETE FROM t_pkb_jasa_detail WHERE id='$id'";
        mysql_query($sqlhapusasuransi);
        //echo $sqlhapusasuransi;

        $sqljasa= "SELECT sum(harga_total_paket_jasa) AS totpaketjasa, sum(harga_total_jasa) AS totjasa FROM t_pkb_jasa_detail WHERE fk_pkb_jasa = '$idpkbjasa'";
                      $hjasa= mysql_fetch_array(mysql_query($sqljasa));
                      $totjasa=$hjasa['totpaketjasa'] + $hjasa['totjasa'];
                      //echo $sqljasa;
                      //exit();
                      $updatejasa = "UPDATE t_pkb_jasa set total_netto_harga_jasa='$totjasa' WHERE id_pkb_jasa='$idpkbjasa'";
                      mysql_query($updatejasa);
       
		
?>
