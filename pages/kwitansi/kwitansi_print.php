<!-- general form elements disabled -->
   <?php
       // include_once '../../lib/sess.php';
       include_once '../../lib/config.php';
       include_once '../../lib/fungsi.php';
       $no_kwitansi = $_GET['no_kwitansi'];
       //   $sqlpan= "SELECT * FROM t_kwitansi WHERE t_kwitansi='$no_kwitansi'";
       //  $catat= mysql_fetch_array(mysql_query($sqlpan));

   ?>
<?php
    $j        = 1;
    $sqlcatat = "SELECT *,kw.nilai_kwitansi as nilaior, c.alamat AS alamatcustomer,c.no_telp AS telpcustomer,c.nama AS nmcustomer,d.nama AS nmasuransi FROM t_kwitansi e
                                    LEFT JOIN t_pkb a ON e.fk_pkb=a.id_pkb
                                    LEFT JOIN t_customer c ON a.fk_customer=c.id_customer
                                    LEFT JOIN t_asuransi d ON a.fk_asuransi=d.id_asuransi
                                    LEFT JOIN (select * from t_kwitansi_or where tgl_batal='0000-00-00 00:00:00') kw ON a.fk_estimasi=kw.fk_estimasi
                                    WHERE e.no_kwitansi='$no_kwitansi'";
    $rescatat = mysql_query($sqlcatat);
    $catat    = mysql_fetch_array($rescatat);
    $idpkb    = $catat['id_pkb'];
?>
<div class="modal-dialog">
  <div class="title">
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title; ?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel">INVOICE -                                                                                                                                                                                                                                  <?php echo $catat['no_kwitansi']; ?> -</h4>
                    </div>

                    <div class="modal-body"><br>

                      <div class="row">
                       <div class="col-sm-6">
                       <table id="pkbshow" class="dataTable">
                       <td>
                         <th class="col-sm-6">
                        <tr> <th>No Estimasi</th> <td ><?php echo $catat['id_pkb']; ?></td></tr>
                        <tr> <th>Tgl Masuk</th> <td ><?php echo $catat['tgl']; ?></td></tr>
                        <tr> <th>No Chasis</th>  <td ><?php echo $catat['fk_no_chasis']; ?></td></tr>
                        <tr> <th>No Mesin</th> <td ><?php echo $catat['fk_no_mesin']; ?></td></tr>
                        <tr> <th>No Polisi</th>   <td ><?php echo $catat['fk_no_polisi']; ?></td> </tr>
                        <tr><th>KM Masuk</th> <td ><?php echo $catat['km_masuk']; ?></td></tr>
                        </th>
                       </td>
                      </table>
                           </div>

                            <div class="col-sm-6">
                              <table id="pkbshow" class="dataTable">
                              <td>
                                  <th class="col-sm-6">
                                    <tr><th>Kategori </th> <td ><?php echo $catat['kategori']; ?></td></tr>
                                    <tr><th>Asuransi</th>  <td ><?php echo $catat['nmasuransi']; ?></td></tr>
                                    <tr><th>Nama Customer</th> <td ><?php echo $catat['nmcustomer']; ?></td></tr>
                                    <tr><th>Telp</th><td ><?php echo $catat['telpcustomer']; ?></td></tr>
                                    <tr><th>Alamat</th><td ><?php echo $catat['alamatcustomer']; ?></td></tr>
                                  </th>
                              </td>
                              </table>
                         </div>
                      </div>

                <table id="pkbpanel" class="table table-condensed table-bordered table-striped table-hover dataTable">
                <thead class="thead-light">
                        <tr><th>Nama </th><th>Harga</th><th>Qty</th><th>Disc</th><th>Total</th></tr>
                        </thead>
                        <tbody>
                <?php
                    $j         = 1;
                    $sqlcatatp = "SELECT * FROM t_pkb_panel_detail a
                                    LEFT JOIN t_panel p ON a.fk_panel=p.id_panel
                                    WHERE a.fk_pkb ='$idpkb'";
                    $rescatatp = mysql_query($sqlcatatp);
                    while ($catatp = mysql_fetch_array($rescatatp)) {
                    ?>
                        <tr>
                          <td><?php echo $catatp['nama']; ?></td>
                          <td><?php echo rupiah2($catatp['harga_jual_panel']); ?></td>
                          <td>1</td>
                          <td><?php echo $catatp['diskon']; ?></td>
                          <td align="right"><?php echo rupiah2($catatp['harga_total_pkb_panel']); ?></td>
                        </tr>
                    <?php
                    }?>

                           <?php $j = $j;
                               $sqlcatat2                          = "SELECT * FROM t_pkb_part_detail a
                                    LEFT JOIN t_part p ON a.fk_part=p.id_part
                                    WHERE a.fk_pkb='$idpkb'";
                               $rescatat2 = mysql_query($sqlcatat2);
                               while ($catat2 = mysql_fetch_array($rescatat2)) {
                               ?>
                        <tr>
                          <td><?php echo $catat2['nama']; ?></td>
                          <td><?php echo rupiah2($catat2['harga_jual_part']); ?></td>
                          <td><?php echo $catat2['qty_part']; ?></td>
                          <td><?php echo $catat2['diskon']; ?></td>
                          <td align="right"><?php echo rupiah2($catat2['harga_total_pkb_part']); ?></td>
                        </tr>
                    <?php
                    }?>
                        <tr><td colspan="4" align="right">Sub Total Jasa</td><td align="right"><?php echo rupiah2($catat['total_netto_panel'] + $catat['total_netto_part']); ?></td></tr>
                        <tr><td colspan="4" align="right">PPN</td><td align="right"><?php echo rupiah2($catat['total_ppn_kwitansi']); ?></td></tr>
                        <?php if ($catat['tgl'] >= '2025-01-01'): ?>
                        <tr><td colspan="4" align="right">DPP Lain</td><td align="right"><?php echo rupiah2(11 / 12 * (($catat['total_netto_panel'] + $catat['total_netto_part'])));
?></td></tr>
                        <?php endif; ?>
                        <tr><td colspan="4" align="right">OR</td><td align="right"><?php echo rupiah2($catat['nilaior']); ?></td></tr>
                        <tr><td colspan="4" align="right"><strong>Grand Total</strong></td><td align="right"><?php echo rupiah2($catat['total_payment']); ?></td></tr>
                </tfoot>
              </table>
               </div>
                <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel"> <a href="paycuci/paycuci_cetak.php?nobukti=<?php echo $nobukti; ?>" target="blank">
                        <a href="kwitansi/kwitansi_cetak.php?no_kwitansi=<?php echo $no_kwitansi; ?>" target="blank"><button type="button" class=" btn btn-default btn-circle" name="close" onclick="cetak();">Print</button></a>
                                    <button type="button" class=" btn btn-default btn-circle" name="close" onclick="$('#ModalKwPrint').modal('hide');">Close</button>

                        </h4>
                    </div>
           </div>
           </div>


