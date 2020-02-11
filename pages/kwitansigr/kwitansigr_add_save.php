<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';

        $idpkbjasa = trim($_POST['idpkbjasa']);
     
        $hrn2= date('dmy' , strtotime($hrini));
        $kodeawal2 = 'SI_GR.';
        $kodeawal = 'SI_GR.'.$hrn2.'.';
        //$sqljur = "SELECT * FROM t_kwitansigr WHERE no_kwitansigr LIKE '$kodeawal2%' ORDER BY no_kwitansigr DESC";
        $sqljur = "SELECT * FROM t_kwitansigr ORDER BY tgl_kwitansigr DESC";
        $resultjur = mysql_query( $sqljur );
        $jur = mysql_fetch_array( $resultjur );
        if (empty($jur['no_kwitansigr'])){
            $kodeakhir = '000001';
        }else{
            # GENERATE
            $kode = $jur['no_kwitansigr'];
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

         /*$sqlest = "SELECT * FROM t_pkb_jasa p LEFT JOIN t_kwitansigr_or k  ON p.fk_estimasi=k.fk_estimasi WHERE id_pkb_jasa='$idpkbjasa'";
         $hsl= mysql_fetch_array(mysql_query($sqlest));

            $grosspanel = $hsl['total_gross_harga_panel'];
            $diskonpanel = $hsl['total_diskon_rupiah_panel'];
            $nettopanel = $hsl['total_netto_harga_panel'];
            $grosspart = $hsl['total_gross_harga_part'];
            $diskonpart = $hsl['total_diskon_rupiah_part'];
            $nettopart = $hsl['total_netto_harga_part'];
            $grosstotal = $hsl['total_gross_harga_jasa'];
            $diskontotal = $hsl['total_diskon_rupiah_jasa'];
            $nettototal = $hsl['total_netto_harga_jasa'];
            $nilaior = $hsl['nilai_kwitansigr'];


            $ppn = $nettototal*10/100;
            $payment = $nettototal+$ppn;*/
            $nettototal = trim($_POST['hartote']);
            $ppntotal = $ppne*$nettototal/100;
            $paymenttotal = $nettototal+$ppntotal;

        
        //$sqltbemp = "INSERT INTO t_kwitansigr (no_kwitansigr,fk_pkb,total_gross_panel,total_gross_part,total_diskon_panel,total_diskon_part,total_netto_panel,total_netto_part,total_ppn_kwitansigr,total_kwitansigr,total_payment) VALUES ('$kodebaru','$idpkbjasa','$grosspanel','$grosspart','$diskonpanel','$diskonpart','$nettopanel','$nettopart',$ppn,'$nettototal',$payment)";
           $sqltbemp = "INSERT INTO t_kwitansigr (no_kwitansigr,fk_pkb_jasa,total_ppn_kwitansigr,total_kwitansigr,total_paymentgr,tgl_batal) VALUES ('$kodebaru','$idpkbjasa','$ppntotal','$nettototal','$paymenttotal','0000-00-00 00:00:00')";
            //echo  $sqltbemp;
            mysql_query($sqltbemp);

        $updatestatus = "INSERT INTO t_status_pkb_jasa (fk_pkb_jasa,status) VALUES ('$idpkbjasa','CETAK KWITANSI')";
        mysql_query($updatestatus);
        
?>