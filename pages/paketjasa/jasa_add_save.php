<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
		 //$ip = ; // Ambil IP Address dari User
		    $id_jasa = trim($_POST['jasa']);
        $idpaketjasa = trim($_POST['id_paket_jasanep']);
        $diskon = trim($_POST['diskonp']);
        $hargajual= trim($_POST['hargapokokp']);
        //$qty= trim($_POST['qty']);
        $hargadiskon= ($diskon*$hargajual)/100;
        $total= trim($_POST['hargatotalp']);
        //$markp= trim($_POST['markp']);
        //cek idpaket
                  $sqlest= "SELECT * FROM t_paket_jasa_detail
                  WHERE fk_jasa = '$id_jasa' AND fk_paket_jasa='$idpaketjasa'";
                  $qest=mysql_query($sqlest);
                  $hest= mysql_fetch_array($qest);
                  $hcek=$hest['fk_jasa'];
                  if ($hcek){ echo "Data Sudah Ada";
                  }else{
                      $sqltbemp = "INSERT INTO t_paket_jasa_detail (fk_paket_jasa,fk_jasa,harga_jual_paket_jasa,diskon_paket_jasa,harga_diskon_paket_jasa,harga_total_paket_jasa) VALUES ('$idpaketjasa','$id_jasa','$hargajual','$diskon','$hargadiskon','$total')";
                      //echo $sqltbemp;
                      mysql_query($sqltbemp);
                  }

            $sqljasa= "SELECT sum(harga_jual_paket_jasa) AS totjualjasa,sum(harga_diskon_paket_jasa) AS totdiskonjasa, sum(harga_total_paket_jasa) AS totpaketjasa FROM t_paket_jasa_detail WHERE fk_paket_jasa = '$idpaketjasa'";
            $hjasa= mysql_fetch_array(mysql_query($sqljasa));
            //jml jasa

            $totgrosjasa=$hjasa['totpaketjasa'];
            //$totdiskonjasa=$hjasa['totdiskonjasa'];
            //$totnettojasa=$hjasa['totpaketjasa'];

            $updatejasa = "UPDATE t_paket_jasa set total_harga_paket='$totgrosjasa' WHERE id_paket_jasa='$idpaketjasa'";
            mysql_query($updatejasa);

/*

            $sqles= "SELECT sum(total_gross_harga_panel+total_gross_harga_jasa) as total_gross_harga_jasa,sum(total_diskon_rupiah_panel+total_diskon_rupiah_jasa) as total_diskon_rupiah_jasa,sum(total_netto_harga_panel+total_netto_harga_jasa) as total_netto_harga_jasa FROM t_paket WHERE id_paket = '$idpaketjasa'";
           
            $hpes= mysql_fetch_array(mysql_query($sqles));

         

            $totgrosjasa=$hpes['total_gross_harga_jasa'];
            $totdiskonjasa=$hpes['total_diskon_rupiah_jasa'];
            $totnettojasa=$hpes['total_netto_harga_jasa'];



           $updatepaket = "UPDATE t_paket SET total_gross_harga_jasa='$totgrosjasa', total_diskon_rupiah_jasa='$totdiskonjasa',total_netto_harga_jasa='$totnettojasa' WHERE id_paket='$idpaketjasa'";
              mysql_query($updatepaket);
            //echo $updatepaket;*/

?>