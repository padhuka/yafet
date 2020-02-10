<?php
// Fungsi header dengan mengirimkan raw data excel
//header("Content-type: application/vnd-ms-excel");
 
// Mendefinisikan nama file ekspor "hasil-export.xls"
//header("Content-Disposition: attachment; filename=reportpkbjasa.xls");
 
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
                                    <td width="50%"><u style="font-size: 20px;"><strong>Atlantic Repair & Car Wash</strong><br>
                                    </u>
                                    (0271) 7880845 <br>
                                    
                                    </td>
                                    <td align="right">
                                      Tanggal : <?php echo $tgle;?><br>
                                      Jam : <?php echo $jame;?>
                                    </td>                                   
                                  </tr>                                   
                                </table>
                                    <span style="font-size: 20px;font-weight: bold;"><center>Laporan PKB</center></span>
                                     <span style="font-size: 20px;font-weight: bold;"><center> Per Tgl <?php echo date('d-m-Y' , strtotime($_GET['tgl1']));echo ' s/d '; echo date('d-m-Y' , strtotime($_GET['tgl2'])); ?></center></span>
                                <br>
      <table id="tablepkb1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No</th>
                          <th>No PKB Jasa</th>
                          <th>Tgl PKB Jasa</th>
                          <th>No Chasis</th>
                          <th>No Mesin</th>
                          <th>No Polisi</th>
                          <th>Nama Customer</th>
                          <th>Status</th>
                </tr>
                </thead>
                <tbody>
                <?php
                                   //WHERE p.tgl_batal='0000-00-00 00:00:00' AND p.status_pkb='' AND substring(tgl,1,10)>='$tgl1' AND  substring(tgl,1,10)<='$tgl2' 
                                   
                                    $tgl1=$_GET['tgl1'];
                                    $tgl2=$_GET['tgl2'];
                                    $j=1;
                                  $sqlcatat = "SELECT p.*,c.nama,k.no_kwitansigr FROM t_pkb_jasa p
                                   LEFT JOIN t_customer c ON p.fk_customer=c.id_customer
                                   LEFT JOIN t_kwitansigr k ON p.id_pkb_jasa=k.fk_pkb_jasa
                                   WHERE p.tgl_batal='0000-00-00 00:00:00' AND substring(tgl,1,10)>='$tgl1' AND  substring(tgl,1,10)<='$tgl2' 
                                   ORDER BY p.id_pkb_jasa DESC";
                                   	$rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <th><?php echo $j++;?></th>
                          <td><?php echo ($catat['id_pkb_jasa']);?></td>                       
                          <td><?php echo date('d-m-Y',strtotime($catat['tgl']));?></td>
                          <td><?php echo $catat['fk_no_chasis'];?></td>
                          <td><?php echo $catat['fk_no_mesin'];?></td>                          
                          <td><?php echo $catat['fk_no_polisi'];?></td>
                          <td><?php echo $catat['nama'];?></td>
                          <td><?php echo $catat['status_pkb_jasa'];?></td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>