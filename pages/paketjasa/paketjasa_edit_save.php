<?php
        include_once '../../lib/config.php';
         //$ip = ; // Ambil IP Address dari User
        $id_paket_jasae = trim($_POST['id_paket_jasae']);
        $idpaketjasa = trim($_POST['idpaketjasa']);

        $nama = trim($_POST['namae']);
        $namapaketjasa= trim($_POST['namapaketjasa']);

        $sqlcek = "SELECT * FROM t_paket_jasa WHERE id_paket_jasa='$id_paket_jasae' AND id_paket_jasa<>'$idpaketjasa'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
                $sqltbemp = "UPDATE t_paket_jasa SET nama='$nama' WHERE id_paket_jasa='$idpaketjasa'";
                mysql_query($sqltbemp);
                //echo $sqltbemp;
     }
?>