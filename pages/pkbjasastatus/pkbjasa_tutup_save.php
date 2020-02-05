<?php
		//$skrg = date('Y-m-d');
        include_once '../../lib/config.php';
        $idpkbjasa = $_GET['idpkbjasa'];
        
            $updatepkbjasa = "UPDATE t_pkb_jasa SET status_pkb_jasa='Tutup' WHERE id_pkb_jasa='$idpkbjasa'";
            mysql_query($updatepkbjasa);
?>
