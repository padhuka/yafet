<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
<body onload="javascript:window.print()">
<?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idpkbjasa= $_GET['idpkbjasa'];
    //   $sqlpan= "SELECT * FROM t_pkb_jasa WHERE id_pkb_jasa='$idpkbjasa'";
 //  $catat= mysql_fetch_array(mysql_query($sqlpan));
  
   ?>
   <?php
                                    $j=1;
                                    $sqlcatat = "SELECT *, c.nama As nmcust,w.nama as warna,g.nama as nmgrup, t.nama as nmtipe,  c.nama as nama, c.no_telp as no_telp FROM t_pkb_jasa e 
                                    left join t_customer c on e.fk_customer=c.id_customer 
                                    left join t_inventory_bengkel b on e.fk_no_chasis=b.no_chasis
                                    left join t_tipe_kendaraan t on b.fk_tipe_kendaraan=t.id_tipe_kendaraan
                                    left join t_group_kendaraan g on t.fk_group_kendaraan=g.id_group_kendaraan
                                    left join t_warna_kendaraan w on b.fk_warna_kendaraan=w.id_warna_kendaraan
                                    where e.id_pkb_jasa='$idpkbjasa'";
                                    $rescatat = mysql_query( $sqlcatat );
                                    $catat = mysql_fetch_array( $rescatat );
                                ?>
                                <table width="100%">
                                  <tr><td align="center" style="font-size: 20px; text-align: center;"><u>PKB Jasa</u></td></tr>
                                  <tr><td align="center" style="font-size: 18px; text-align: center;"><?php echo $catat['id_pkb_jasa'];?></td></tr>
                                </table>
                                <br/>
                                <table width="100%" align="center">
                                  <tr><td width="20%">Nama</td><td width="29%">: <?php echo $catat['nmcust'];?></td><td width="2%"></td><td width="20%"></td><td width="29%"></td></tr>
                                  <tr><td>No.Polisi</td><td>: <?php echo $catat['fk_no_polisi'];?></td><td></td></tr>
                                </table>
                                <br/>
                                <table width="100%" align="center" border="1" cellspacing="0" cellpadding="0">
                                            <tr>
                                              <td align="center" width="3%">NO.</td>
                                              <td align="center">JASA</td>
                                              <td align="center">TOTAL</td>
                                            </tr>
                                               <?php $j=1;
                                                        $sqlcatat2 = "SELECT * FROM t_pkb_jasa_detail a
                                                        LEFT JOIN t_jasa p ON a.fk_jasa=p.id_jasa 
                                                        WHERE a.fk_pkb_jasa='$idpkbjasa' AND a.fk_paket_jasa<>''";
                                                        $rescatat2 = mysql_query( $sqlcatat2 );
                                                        while($catat2 = mysql_fetch_array( $rescatat2 )){
                                                    ?>
                                            <tr>
                                              <td ><?php echo $j++;?></td>
                                              <td ><?php echo $catat2['nama'];?></td>
                                              <td align="right"><?php echo rupiah2($catat2['harga_total_paket_jasa']);?></td>
                                            </tr>
                                        <?php }?>

                                        <?php //$j=1;
                                                        $sqlcatat2 = "SELECT * FROM t_pkb_jasa_detail a
                                                        LEFT JOIN t_jasa p ON a.fk_jasa=p.id_jasa 
                                                        WHERE a.fk_pkb_jasa='$idpkbjasa' AND a.fk_paket_jasa='' AND a.fk_part=''";
                                                        $rescatat2 = mysql_query( $sqlcatat2 );
                                                        while($catat2 = mysql_fetch_array( $rescatat2 )){
                                                    ?>
                                            <tr>
                                              <td ><?php echo $j++;?></td>
                                              <td ><?php echo $catat2['nama'];?></td>
                                              <td align="right"><?php echo rupiah2($catat2['harga_total_jasa']);?></td>
                                            </tr>
                                        <?php }?>

                                        <?php //$j=1;
                                                        $sqlcatat2 = "SELECT * FROM t_pkb_jasa_detail a
                                                        LEFT JOIN t_part p ON a.fk_part=p.id_part
                                                        WHERE a.fk_pkb_jasa='$idpkbjasa' AND a.fk_part<>''";
                                                        $rescatat2 = mysql_query( $sqlcatat2 );
                                                        while($catat2 = mysql_fetch_array( $rescatat2 )){
                                                    ?>
                                            <tr>
                                              <td ><?php echo $j++;?></td>
                                              <td ><?php echo $catat2['nama'];?></td>
                                              <td align="right"><?php echo rupiah2($catat2['harga_total_jasa']);?></td>
                                            </tr>
                                        <?php }?>
                                        
                                </table>
                                 <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
                                            <tr><td colspan="2" align="right">Sub Total Jasa</td><td align="right" width="20%"><?php echo rupiah2($catat['total_netto_harga_jasa']);?></td></tr>
                                            <!--<tr><td colspan="2" align="right">PPN</td><td align="right"><?php echo rupiah2((10/100)*$catat['total_netto_harga_jasa']);?></td></tr>
                                            <tr><td colspan="2" align="right">Total Jasa</td><td align="right"><?php echo rupiah2((110/100)*$catat['total_netto_harga_jasa']);?></td></tr>-->
                                </table>
                                <br>

                                 <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
                                   <tr><td align="right"><strong>GRAND TOTAL RP <?php echo rupiah2($catat['total_netto_harga_jasa']);?></strong></td><td width="10%"></td></tr>
                                 </table>
                                <br><br>
                                <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
                                   <tr><td width="50%" align="center"></td><td width="50%" align="center"><?php echo date('d-m-Y' , strtotime($catat['tgl']));?></td></tr>
                                </table>
                                 <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0">
                                   <tr><td width="50%" align="center"><br><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td width="50%" align="center">Hormat Kami<br><br><br><br>(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)</td></tr>
                                 </table><br>
                                 <table width="60%" align="center" border="0" cellspacing="0" cellpadding="0">
                                   
                                 </table>
                               
</body>
</html>