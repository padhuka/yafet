<?php
        include_once '../../lib/config.php';
		 //$ip = ; // Ambil IP Address dari User
    	$id_jasa = trim($_POST['id_jasa']);
        $id_jasahid = trim($_POST['id_jasahid']);
		$nama = trim($_POST['nama']);
        $namahid = trim($_POST['namahid']);  
        $harga_pokok = trim($_POST['hargapokok']);
        $harga_jual = trim($_POST['hargajual']); 
        $diskon = trim($_POST['diskon']); 
        $ppn = trim($_POST['ppn']); 
		 #cek id_jasasurat
        //$sqlcek = "SELECT * FROM t_jasa WHERE (id_jasa='$id_jasa' AND id_jasa<>'$id_jasahid') OR (nama='$nama' AND nama<>'$namahid')";
        $sqlcek = "SELECT * FROM t_jasa WHERE id_jasa='$id_jasa' AND id_jasa<>'$id_jasahid'";
        $qrycek = mysql_query($sqlcek);
        $row = mysql_fetch_array($qrycek);
        if ($row){
            echo 'y';
        }else{
		        $sqltbemp = "UPDATE t_jasa SET id_jasa='$id_jasa',nama='$nama',harga_pokok='$harga_pokok',harga_jual='$harga_jual',diskon='$diskon', ppn='$ppn' WHERE id_jasa='$id_jasa'";
        		mysql_query($sqltbemp);
           // echo 'n';
        }
?>