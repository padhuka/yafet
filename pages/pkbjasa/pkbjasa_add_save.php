<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
        //$ip = ; // Ambil IP Address dari User
        //$id_pkb_jasa = trim($_POST['id_pkb_jasa']);
        $chasis = trim($_POST['chasis']);
        $mesin = trim($_POST['mesin']);
        $polisi = trim($_POST['polisi']);
        //$uname = trim($_POST['uname']);
        $customer = trim($_POST['customer']);
        $tglselesai = trim($_POST['tglselesai']);
        $tgl_batal="0000-00-00 00:00:00";
        //message_back($id_pkb_jasa);
        //$kodeawal = 'est_'.$hrini.'_';
        $hrn2= date('dmy' , strtotime($hrini));
  //EST.BR.020818.000001
        $kodeawal2 = 'PKB_GR.';
        $kodeawal = 'PKB_GR.'.$hrn2.'.';
        //$sqljur = "SELECT * FROM t_pkb_jasa WHERE id_pkb_jasa LIKE '$kodeawal2%' ORDER BY id_pkb_jasa DESC";
        $sqljur = "SELECT * FROM t_pkb_jasa ORDER BY tgl DESC";
        $resultjur = mysql_query($sqljur);
        $jur = mysql_fetch_array($resultjur);
        if (empty($jur['id_pkb_jasa'])){
            $kodeakhir = '000001';
        }else{
            # GENERATE
            $kode = $jur['id_pkb_jasa'];
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
        
        $sqltbemp = "INSERT INTO t_pkb_jasa (id_pkb_jasa,fk_no_chasis,fk_no_mesin,fk_no_polisi,fk_customer,tgl_pkbjasa_selesai,tgl_batal) VALUES ('$kodebaru','$chasis','$mesin','$polisi','$customer','$tglselesai','$tgl_batal')";
            mysql_query($sqltbemp);
            echo $kodebaru;

        $sqlstatus= "INSERT INTO t_status_pkb_jasa(fk_pkb_jasa) VALUES ('$kodebaru')";
                mysql_query($sqlstatus);
            //echo $sqltbemp;
?>
