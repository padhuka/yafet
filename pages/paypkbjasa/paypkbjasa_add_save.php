<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
      
        $tgltransaksi = trim($_POST['tgltransaksi']);
        $tipetransaksi = trim($_POST['tipetransaksi']); 
        $diterimadari = trim($_POST['diterima']);  
        /*$idpkb = trim($_POST['idpkb']); */
        $noref = trim($_POST['nokwitansi']); 

          /*  if (!empty($idpkb))  {
                    $noref = $idpkb;
            }
            else {
                 $noref = $idkwitansi;
            }*/
        
        $viabayar = trim($_POST['viabayar']); 
        $partnerbank = trim($_POST['id_partner_paypkbjasa']); 
        $total = trim($_POST['nilai']); 
        $keterangan = trim($_POST['keterangan']); 
        
        $hrn2= date('dmy' , strtotime($hrini));
        $kodeawal2 = 'BM_GR.';
        $kodeawal = 'BM_GR.'.$hrn2.'.';
        $sqljur = "SELECT * FROM t_paypkbjasa ORDER BY tgl DESC";
        $resultjur = mysql_query( $sqljur );
        $jur = mysql_fetch_array( $resultjur );
        if (empty($jur['no_bukti'])){
            $kodeakhir = '000001';
        }else{
            # GENERATE
            $kode = $jur['no_bukti'];
            $pecah = explode('.',$kode);
            $nilbaru = $pecah[2] + 1;
            $panj = strlen($nilbaru);
            //message_back($panj);
            switch($panj){
                default : break;
                case '1' : $kodeakhir='00000'.$nilbaru; break;
                case '2' : $kodeakhir='0000'.$nilbaru; break;
                case '3' : $kodeakhir='000'.$nilbaru; break;
                case '4' : $kodeakhir='00'.$nilbaru; break;
                case '5' : $kodeakhir='0'.$nilbaru; break;
                case '6' : $kodeakhir=$nilbaru; break;
            }
        }
        
        $kodebaru = $kodeawal.$kodeakhir;   

        
            $sqltbemp = "INSERT INTO t_paypkbjasa (no_bukti,tgl_transaksi,diterima_dari,via_bayar,fk_partner_bank,no_ref,total,keterangan) VALUES ('$kodebaru','$tgltransaksi','$diterimadari','$viabayar','$partnerpaypkbjasa','$noref','$total','$keterangan')";
         //   echo "$sqltbemp";
            mysql_query($sqltbemp);
            //echo $kodebaru.'-'.$warnanm; 

            $upnonpkb="UPDATE t_pkb_jasa SET approved='1' WHERE id_pkb_jasa='$noref'";
            mysql_query($upnonpkb);

        /*if ($tipetransaksi == 'Pelunasan') {
            $getIdPkb = "SELECT fk_pkb FROM t_kwitansi where no_kwitansi='$noref'";
            $result = mysql_fetch_array(mysql_query($getIdPkb));
            $pkb = $result['fk_pkb'];
            $updatestatus = "INSERT INTO t_status_pkb (fk_pkb,status) VALUES ('$pkb','LUNAS')";
            mysql_query($updatestatus);  
        }*/
?>