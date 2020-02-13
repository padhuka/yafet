<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
       //$ip = ; // Ambil IP Address dari User
        $id_part=$_GET['id_part'];
        $idpkbjasa=$_GET['idpkbjasa'];

        $sqlest= "SELECT * FROM t_pkb_jasa_detail
                  WHERE fk_pkb_jasa='$idpkbjasa' AND fk_paket_jasa='' AND fk_part<>'' AND fk_jasa='$id_part'";
                  //echo $sqlest;
                  $qest=mysql_query($sqlest);
                  $hest= mysql_fetch_array($qest);
                  $hcek=$hest['fk_part'];
                  
                  if ($hcek){ echo "Data Sudah Ada";
                  }else{
                      //paketdata
                      $spaketdata= "SELECT * FROM t_part WHERE id_part='$id_part'";
                      
                      $qpaketdata= mysql_query($spaketdata);
                      $hpdata=mysql_fetch_array($qpaketdata);
                      $hargadiskon= $hpdata['diskon']*$hpdata['harga_beli']/100;
                      $totaljasa= $hpdata['harga_jual']-$hargadiskon;

                        $sqltbemp = "INSERT INTO t_pkb_jasa_detail (fk_pkb_jasa,fk_paket_jasa,fk_jasa,fk_part,harga_jual_jasa,diskon_jasa,harga_diskon_jasa,harga_total_jasa)                         
                         VALUES ('$idpkbjasa','','$hpdata[id_part]','$hpdata[id_part]','$hpdata[harga_jual]','$hpdata[diskon]',' $hargadiskon','$totaljasa')";
                          mysql_query($sqltbemp);
                      //echo $sqltbemp;
                      

                      $sqljasa= "SELECT sum(harga_total_paket_jasa) AS totpaketjasa, sum(harga_total_jasa) AS totjasa FROM t_pkb_jasa_detail WHERE fk_pkb_jasa = '$idpkbjasa'";
                      $hjasa= mysql_fetch_array(mysql_query($sqljasa));
                      $totjasa=$hjasa['totpaketjasa'] + $hjasa['totjasa'];
                      //echo $sqljasa;
                      //exit();
                      $updatejasa = "UPDATE t_pkb_jasa set total_netto_harga_jasa='$totjasa' WHERE id_pkb_jasa='$idpkbjasa'";
                      mysql_query($updatejasa);
                     
                  }
		
		   



           //$updatepkbjasa = "UPDATE t_pkb_jasa SET total_gross_harga_jasa='$totgrosjasa', total_diskon_rupiah_jasa='$totdiskonjasa',total_netto_harga_jasa='$totnettojasa' WHERE id_pkb_jasa='$idpkbjasa'";
              //mysql_query($updatepkbjasa);
            //echo $updatepkbjasa;

?>