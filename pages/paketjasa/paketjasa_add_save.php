<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
		 //$ip = ; // Ambil IP Address dari User
		$id_paket_jasa = trim($_POST['id_paket_jasa']);
        $nama = trim($_POST['nama']);
        //message_back($id_paket_jasa);
		 #cek idsurat
        $sqlcek = "SELECT * FROM t_paket_jasa WHERE nama='$nama' OR id_paket_jasa='$id_paket_jasa'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
		    $sqltbemp = "INSERT INTO t_paket_jasa (id_paket_jasa,nama) VALUES ('$id_paket_jasa','$nama')";
            mysql_query($sqltbemp);
            //echo 'n';
            //echo $sqltbemp;
        }
?>