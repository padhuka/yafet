<?php
// Fungsi header dengan mengirimkan raw data excel
header("Content-type: application/vnd-ms-excel");
 
// Mendefinisikan nama file ekspor "hasil-export.xls"
header("Content-Disposition: attachment; filename=reportpembayarannonpkb.xls");
 
// Tambahkan table
//include 'data.php';

?>
								      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
            $tgle = date('d/m/Y');
            $jame = date('H:i:s');
      ?>
      <table width="100%" align="center" border="0">
                                  <tr>
                                    <td width="50%"><u style="font-size: 20px;"><strong><?php echo $title;?></strong><br>
                                    </u>
                                    <?php echo $telp;?> <br>
                                    
                                    </td>      
                                     <td align="right">
                                      Tanggal : <?php echo $tgle;?><br>
                                      Jam : <?php echo $jame;?>
                                    </td>                             
                                  </tr>                                   
                                </table>
                                    <span style="font-size: 20px;font-weight: bold;"><center>Laporan Pembayaran Non PKB</center></span>
                                      <span style="font-size: 20px;font-weight: bold;"><center> Per Tgl <?php echo date('d-m-Y' , strtotime($_GET['tgl1']));echo ' s/d '; echo date('d-m-Y' , strtotime($_GET['tgl2'])); ?></center></span>
                                <br>
      <table id="cash" border="1">
                <thead class="thead-light">
                <tr align="center">
                          <th>No</th>
                          <th>No Bukti</th>
                          <th>Tgl</th>
                          <th>Cara Bayar</th>
                          <th>Di Terima Dari</th>
                          <th>No Ref</th>
                          <th>No Polisi</th>
                          <th>Mobil</th>
                          <th>Total</th>
                          <th>Keterangan</th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $tgl1=$_GET['tgl1'];
                                    $tgl2=$_GET['tgl2'];
                                    $j=1;
                                    $jml=0;
                                    $sqlcatat = "SELECT * FROM t_paycuci p 
                                    LEFT JOIN t_nonpkb n ON p.no_ref=n.id_nonpkb
                                     WHERE p.tgl_batal='0000:00:00 00:00:00' AND substring(tgl_transaksi,1,10)>='$tgl1' AND  substring(tgl_transaksi,1,10)<='$tgl2' ORDER BY p.no_bukti DESC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                      $jml=$jml+$catat['total'];  
                                ?>
                        <tr>
                        <th><?php echo $j++;?></th>
                          <td><?php echo ($catat['no_bukti']);?></td>                       
                          <td ><?php echo date('d-m-Y' , strtotime($catat['tgl_transaksi']));?></td>
                          <td ><?php echo $catat['via_bayar'];?></td>
                          <td ><?php echo $catat['diterima_dari'];?></td>
                          <td ><?php echo $catat['no_ref'];?></td>
                          <td ><?php echo $catat['fk_no_polisi'];?></td>
                          <td ><?php echo $catat['namamobil'];?></td>
                           <td ><?php echo rupiah2($catat['total']);?></td>
                           <td ><?php echo $catat['keterangan'];?></td>
                        </tr>
                    <?php }?>
                    <tr><td colspan="6" align="right">Total</td><td><?php echo rupiah2($jml);?></td></tr>
                </tfoot>
              </table>