<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
         //$ip = ; // Ambil IP Address dari User
        $idpkbjasa = trim($_POST['idpkbjasae']);
        $chasis = trim($_POST['chasise']);
        $mesin = trim($_POST['mesine']);
        $polisi = trim($_POST['polisie']);
        $uname = trim($_POST['unamee']);
        $customer = trim($_POST['customere']);
        $namamobil = trim($_POST['nmmobil']);
        //message_back($id_pkb_jasa);
        //$kodeawal = 'est_'.$hrini.'_';
        //UPDATE t_pkb_jasa\
        $updateEs = "UPDATE t_pkb_jasa SET fk_no_chasis='$chasis',fk_no_mesin='$mesin',fk_no_polisi='$polisi',fk_user='$uname',fk_customer='$customer' WHERE id_pkb_jasa='$idpkbjasa'";
        mysql_query($updateEs);
        echo $idpkbjasa;
        //echo $updateEs;      
?>