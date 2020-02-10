<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
      
        $tgltransaksi = trim($_POST['tgltransaksi']);
        $tipetransaksi = trim($_POST['tipetransaksi']); 
        $diterimadari = trim($_POST['diterima']);  
        $idpkb_jasa = trim($_POST['idpkb_jasa']); 
        $idkwitansigr = trim($_POST['nokwitansigr']); 
       // echo $idpkb_jasa;
       // echo $idkwitansi;

            if (!empty($idpkb_jasa))  {
                //echo $idpkb_jasa;
                    $noref = $idpkb_jasa;
            }
            else {
                 //echo $idkwitansi;
                 $noref = $idkwitansigr;
            }
        
        $total = trim($_POST['nilai']); 
        $keterangan = trim($_POST['keterangan']); 
        
        $hrn2= date('dmy' , strtotime($hrini));
        $kodeawal2 = 'BM_GR.';
        $kodeawal = 'BM_GR.'.$hrn2.'.';
        $sqljur = "SELECT * FROM t_bankgr ORDER BY tgl DESC";
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

        
            $sqltbemp = "INSERT INTO t_bankgr (no_bukti,tgl_transaksi,tipe_transaksi,diterima_dari,no_ref,total,keterangan) VALUES ('$kodebaru','$tgltransaksi','$tipetransaksi','$diterimadari','$noref','$total','$keterangan')";
           // echo "$sqltbemp";
            mysql_query($sqltbemp);
            //echo $kodebaru.'-'.$warnanm;    


        if ($tipetransaksi == 'Pelunasan') {
            $getIdpkb_jasa = "SELECT fk_pkb_jasa_jasa FROM t_kwitansigr where no_kwitansi='$noref'";
            $result = mysql_fetch_array(mysql_query($getIdpkb_jasa));
            $pkb_jasa = $result['fk_pkb_jasa_jasa'];
            $updatestatus = "INSERT INTO t_status_pkb_jasa (fk_pkb_jasa_jasa,status) VALUES ('$pkb_jasa','LUNAS')";
            mysql_query($updatestatus);  
        }
?>