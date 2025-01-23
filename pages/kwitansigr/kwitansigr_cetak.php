<!DOCTYPE html>
<html>
<head>
  <title></title>
</head>
<body onload="javascript:window.print()">
<?php //onload="javascript:window.print()"
          // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $no_kwitansigr = $_GET['no_kwitansigr'];

?>
<?php
    $j        = 1;
    $sqlcatat = "SELECT c.*,p.tgl,k.no_kwitansigr, k.tgl_kwitansigr,p.id_pkb_jasa,p.kategori,p.fk_no_chasis,p.fk_no_mesin,p.fk_no_polisi,c.nama,k.total_kwitansigr,k.total_ppn_kwitansigr,k.total_paymentgr,k.tgl_batal FROM t_kwitansigr k
                                      INNER JOIN t_pkb_jasa p ON k.fk_pkb_jasa=p.id_pkb_jasa
                                      INNER JOIN t_customer c ON p.fk_customer=c.id_customer
                                      WHERE k.no_kwitansigr='$no_kwitansigr'";
    $rescatat   = mysql_query($sqlcatat);
    $catat      = mysql_fetch_array($rescatat);
    $idpkb_jasa = $catat['id_pkb_jasa'];
?>
                               <table width="100%" style="font-size: 12px">
                                 <tr><td align="center" style="font-size: 20px; text-align: center;"><u>INVOICE</u></td></tr>
                                  <tr><td align="center" style="font-size: 20px; text-align: center;"><?php echo $no_kwitansigr; ?></td></tr>
                                </table>

                                <hr width="100%" align="center">
                                <table width="100%" align="center" style="font-size: 12px">
                                  <tr>
                                    <td width="20%">No PKB</td><td width="29%">:                                                                                 <?php echo $catat['id_pkb_jasa']; ?></td><td width="2%"></td>
                                    <td>Nama Customer</td><td>:                                                                <?php echo $catat['nama']; ?></td>
                                  </tr>
                                  <tr>
                                    <td width="20%">Tgl Masuk</td><td width="29%">:                                                                                    <?php echo date('d-m-Y H:i:s', strtotime($catat['tgl'])); ?></td><td width="2%"></td>
                                    <td>Telp</td><td>:                                                       <?php echo $catat['no_telp']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>No. Chasis</td><td>:                                                             <?php echo $catat['fk_no_chasis']; ?></td><td></td>
                                    <td>Alamat</td><td>:                                                         <?php echo $catat['alamat']; ?></td>
                                  </tr>
                                  <tr>
                                    <td>No. Mesin<td>:                                                       <?php echo $catat['fk_no_mesin']; ?></td><td></td>
                                    <td>No.Polisi</td><td>:                                                            <?php echo $catat['fk_no_polisi']; ?></td><td></td>
                                  </tr>
                                  <tr>


                                  </tr>

                                </table>
                                <hr width="100%" align="center">

                               <table id="paketjasadetailxx2" class="dataTable table table-condensed table-bordered table-striped table-hover"  width="90%" align="center">
                <thead class="thead-light">
                <tr>
                          <th>Nama Jasa</th>
                          <th>Nama Paket</th>
                          <th>Harga</th>
                          <th>Diskon</th>
                          <th>Sub Total</th>
                </tr>
                </thead>
                <tbody>
                <?php
                    $sqlest = "SELECT *, B.nama AS nmjasa, C.nama AS nmpaket FROM t_pkb_jasa_detail A
                  LEFT JOIN t_jasa B ON B.id_jasa=A.fk_jasa
                  LEFT JOIN t_paket_jasa C ON C.id_paket_jasa=A.fk_paket_jasa
                  LEFT JOIN t_kwitansigr D ON D.fk_pkb_jasa= A.fk_pkb_jasa
                  WHERE D.no_kwitansigr='$no_kwitansigr' AND A.fk_paket_jasa<>''";
                    //echo $sqlest;
                    $qest   = mysql_query($sqlest);
                    $totals = 0;
                    while ($hest = mysql_fetch_array($qest)) {;
                        //$totals=$totals+$hest['harga_jual_paket_jasa'];
                        $totals = $hest['harga_total_paket_jasa'] + $totals;
                    ?>
                        <tr>
                          <td><?php echo $hest['nmjasa']; ?></td>
                          <td><?php echo $hest['nmpaket']; ?></td>
                          <td><?php echo rupiah2($hest['harga_jual_paket_jasa']); ?></td>
                          <td><?php echo rupiah2($hest['diskon_paket_jasa']); ?></td>
                          <td><?php echo rupiah2($hest['harga_total_paket_jasa']); ?></td>
                        </tr>
                  <?php }?>
<?php
    $sqlest = "SELECT *, B.nama AS nmjasa, C.nama AS nmpaket FROM t_pkb_jasa_detail A
                  LEFT JOIN t_jasa B ON B.id_jasa=A.fk_jasa
                  LEFT JOIN t_paket_jasa C ON C.id_paket_jasa=A.fk_paket_jasa
                  LEFT JOIN t_kwitansigr D ON D.fk_pkb_jasa= A.fk_pkb_jasa
                  WHERE D.no_kwitansigr='$no_kwitansigr' AND A.fk_paket_jasa='' AND A.fk_part=''";
    //echo $sqlest;
    $qest = mysql_query($sqlest);
    while ($hest = mysql_fetch_array($qest)) {;
        //$totals=$totals+$hest['harga_jual_paket_jasa'];
        $totals = $hest['harga_total_jasa'] + $totals;
    ?>
                        <tr>
                          <td><?php echo $hest['nmjasa']; ?></td>
                          <td></td>
                          <td><?php echo rupiah2($hest['harga_jual_jasa']); ?></td>
                          <td><?php echo rupiah2($hest['diskon_jasa']); ?></td>
                          <td><?php echo rupiah2($hest['harga_total_jasa']); ?></td>
                        </tr>
                  <?php }?>

                  <?php
                      $sqlest = "SELECT *, B.nama AS nmjasa, C.nama AS nmpaket FROM t_pkb_jasa_detail A
                  LEFT JOIN t_part B ON B.id_part=A.fk_part
                  LEFT JOIN t_paket_jasa C ON C.id_paket_jasa=A.fk_paket_jasa
                  LEFT JOIN t_kwitansigr D ON D.fk_pkb_jasa= A.fk_pkb_jasa
                  WHERE D.no_kwitansigr='$no_kwitansigr' AND A.fk_part<>''";
                      //echo $sqlest;
                      $qest = mysql_query($sqlest);
                      while ($hest = mysql_fetch_array($qest)) {;
                          //$totals=$totals+$hest['harga_jual_paket_jasa'];
                          $totals = $hest['harga_total_jasa'] + $totals;
                      ?>
                        <tr>
                          <td><?php echo $hest['nmjasa']; ?></td>
                          <td></td>
                          <td><?php echo rupiah2($hest['harga_jual_jasa']); ?></td>
                          <td><?php echo rupiah2($hest['diskon_jasa']); ?></td>
                          <td><?php echo rupiah2($hest['harga_total_jasa']); ?></td>
                        </tr>
                  <?php }?>
                  <br>
                  <tr><td colspan="4" align="right">Sub Total Jasa</td><td align="right"><?php echo rupiah2($catat['total_kwitansigr']); ?></td></tr>
                        <tr><td colspan="4" align="right">PPN</td><td align="right"><?php echo rupiah2($catat['total_ppn_kwitansigr']); ?></td></tr>
                        <?php if ($catat['tgl'] >= '2025-01-01'): ?>
                        <tr><td colspan="4" align="right">DPP Lain</td><td align="right"><?php echo rupiah2(11 / 12 * ($catat['total_kwitansigr']));
?></td></tr>
                        <?php endif; ?>
                        <tr><td colspan="4" align="right"><strong>Grand Total</strong></td><td align="right"><?php echo rupiah2($catat['total_paymentgr']); ?></td></tr>

                </tfoot>
              </table>
                                </table>

                                <hr width="100%" align="center">

                                 <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                                   <tr><td width="50%" align="center"></td><td width="50%" align="center"><?php echo date('d-m-Y', strtotime($catat['tgl_kwitansigr'])); ?></td></tr>
                                </table>
                                 <table width="100%" align="center" border="0" cellspacing="0" cellpadding="0" style="font-size: 12px">
                                   <tr><td width="50%" align="center">Menyetujui<br><br><br><br>(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)</td><td width="50%" align="center">Hormat Kami<br><br><br><br>(&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;)</td></tr>
                                 </table><br>

</body>
</html>