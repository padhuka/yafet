<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
       //$ip = ; // Ambil IP Address dari User
        $id_jasa=$_GET['id_jasa'];
        $idpkbjasa=$_GET['idpkbjasa'];

        $sqlest= "SELECT * FROM t_pkb_jasa_detail
                  WHERE fk_pkb_jasa='$idpkbjasa' AND fk_paket_jasa='' AND fk_jasa='$id_jasa'";
                  //echo $sqlest;
                  $qest=mysql_query($sqlest);
                  $hest= mysql_fetch_array($qest);
                  $hcek=$hest['id_jasa'];
                  
                  if ($hcek){ echo "Data Sudah Ada";
                  }else{
                      //paketdata
                      $spaketdata= "SELECT * FROM t_jasa WHERE id_jasa='$id_jasa'";
                      
                      $qpaketdata= mysql_query($spaketdata);
                      $hpdata=mysql_fetch_array($qpaketdata);
                        //$sqltbemp = "INSERT INTO t_pkb_jasa_detail (fk_pkb_jasa,fk_paket_jasa,fk_jasa,harga_jual_jasa,diskon_jasa,harga_diskon_jasa,harga_jual_paket_jasa,diskon_paket_jasa,harga_diskon_paket_jasa,harga_total_pkb_jasa)
                        $sqltbemp = "INSERT INTO t_pkb_jasa_detail (fk_pkb_jasa,fk_paket_jasa,fk_jasa,harga_jual_jasa,diskon_jasa,harga_diskon_jasa,harga_jual_paket_jasa,diskon_paket_jasa,harga_diskon_paket_jasa,harga_total_pkb_jasa)
                         VALUES ('$idpkbjasa','','$hpdata[id_jasa]','$hpdata[harga_pokok]','$hpdata[diskon]','$hpdata[diskon]*$hpdata[harga_pokok]/100','$hpdata[harga_jual]','','','')";
                          mysql_query($sqltbemp);
                      

                      $sqljasa= "SELECT sum(harga_jual_paket_jasa) AS totpaketjasa FROM t_pkb_jasa_detail WHERE fk_pkb_jasa = '$idpkbjasa'";
                      $hjasa= mysql_fetch_array(mysql_query($sqljasa));
                      $totjasa=$hjasa['totpaketjasa'];
                      //echo $sqljasa;
                      //exit();
                      $updatejasa = "UPDATE t_pkb_jasa set total_netto_harga_jasa='$totjasa' WHERE id_pkb_jasa='$idpkbjasa'";
                      mysql_query($updatejasa);
                     
                  }
		
		   



           //$updatepkbjasa = "UPDATE t_pkb_jasa SET total_gross_harga_jasa='$totgrosjasa', total_diskon_rupiah_jasa='$totdiskonjasa',total_netto_harga_jasa='$totnettojasa' WHERE id_pkb_jasa='$idpkbjasa'";
              //mysql_query($updatepkbjasa);
            //echo $updatepkbjasa;

?>