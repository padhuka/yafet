<?php
        include_once '../../lib/config.php';
        include_once '../../lib/fungsi.php';
		 //$ip = ; // Ambil IP Address dari User
		$id_jasa = trim($_POST['id_jasa']);
        $nama = trim($_POST['nama']);
        $harga_pokok = trim($_POST['hargapokok']);
        $harga_jual= trim($_POST['hargajual']);
        $diskon = trim($_POST['diskon']);
        $ppn = trim($_POST['ppn']);
        //message_back($id_jasa);
		 #cek idsurat
        $sqlcek = "SELECT * FROM t_jasa WHERE nama='$nama' OR id_jasa='$id_jasa'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);

        if ($row){
            echo 'y';
        }else{
		    $sqltbemp = "INSERT INTO t_jasa (id_jasa,nama,harga_pokok,harga_jual,diskon,ppn) VALUES ('$id_jasa','$nama','$harga_pokok','$harga_jual','$diskon','$ppn')";
            mysql_query($sqltbemp);
            //echo 'n';
        }
?>