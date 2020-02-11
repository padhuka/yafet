<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $no_kwitansigr= $_GET['no_kwitansigr'];;
  
   ?>
    <?php
                                    $j=1;
                                    $sqlcatat = "SELECT c.*,p.tgl,k.no_kwitansigr, k.tgl_kwitansigr,p.id_pkb_jasa,p.kategori,p.fk_no_chasis,p.fk_no_mesin,p.fk_no_polisi,c.nama,k.total_kwitansigr,k.total_ppn_kwitansigr,k.total_paymentgr,k.tgl_batal FROM t_kwitansigr k 
                                      INNER JOIN t_pkb_jasa p ON k.fk_pkb_jasa=p.id_pkb_jasa 
                                      INNER JOIN t_customer c ON p.fk_customer=c.id_customer
                                      WHERE k.no_kwitansigr='$no_kwitansigr'";
                                    $rescatat = mysql_query( $sqlcatat );
                                    $catat = mysql_fetch_array( $rescatat );
                                    $idpkb_jasa=$catat['id_pkb_jasa'];
                                ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">INVOICE - <?php echo $catat['no_kwitansigr'];?> -</h4>
                    </div>
                 
                    <div class="modal-body"><br>
                      
                      <div class="row">
                       <div class="col-sm-6">
                       <table id="pkb_jasashow" class="dataTable">
                       <td>
                         <th class="col-sm-6">
                        <tr> <th>No PKB Jasa</th> <td ><?php echo $catat['id_pkb_jasa'];?></td></tr>
                        <tr> <th>Tgl Masuk</th> <td ><?php echo $catat['tgl'];?></td></tr>
                        <tr> <th>No Chasis</th>  <td ><?php echo $catat['fk_no_chasis'];?></td></tr>
                        <tr> <th>No Mesin</th> <td ><?php echo $catat['fk_no_mesin'];?></td></tr>
                        <tr> <th>No Polisi</th>   <td ><?php echo $catat['fk_no_polisi'];?></td> </tr>
                        </th>
                       </td>
                      </table>
                           </div>

                            <div class="col-sm-6">
                              <table id="pkb_jasashow" class="dataTable">
                              <td>
                                  <th class="col-sm-6">                                    
                                    <tr><th>Nama Customer</th> <td ><?php echo $catat['nama'];?></td></tr>
                                    <tr><th>Telp</th><td ><?php echo $catat['no_telp'];?></td></tr>
                                    <tr><th>Alamat</th><td ><?php echo $catat['alamat'];?></td></tr>
                                  </th>
                              </td>
                              </table>
                         </div>
                      </div>
                       
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
                  $sqlest= "SELECT *, B.nama AS nmjasa, C.nama AS nmpaket FROM t_pkb_jasa_detail A
                  LEFT JOIN t_jasa B ON B.id_jasa=A.fk_jasa
                  LEFT JOIN t_paket_jasa C ON C.id_paket_jasa=A.fk_paket_jasa                  
                  LEFT JOIN t_kwitansigr D ON D.fk_pkb_jasa= A.fk_pkb_jasa
                  WHERE D.no_kwitansigr='$no_kwitansigr' AND A.fk_paket_jasa<>''";
                  //echo $sqlest;
                  $qest=mysql_query($sqlest);
                  $totals=0;
                  while($hest= mysql_fetch_array($qest)){;
                    //$totals=$totals+$hest['harga_jual_paket_jasa'];
                    $totals=$hest['harga_total_paket_jasa']+$totals;
                ?>              
                        <tr>
                          <td><?php echo $hest['nmjasa'];?></td>
                          <td><?php echo $hest['nmpaket'];?></td>
                          <td><?php echo rupiah2($hest['harga_jual_paket_jasa']);?></td>
                          <td><?php echo rupiah2($hest['diskon_paket_jasa']);?></td>
                          <td><?php echo rupiah2($hest['harga_total_paket_jasa']);?></td>                         
                        </tr>    
                  <?php } ?>   
                   <?php 
                 $sqlest= "SELECT *, B.nama AS nmjasa, C.nama AS nmpaket FROM t_pkb_jasa_detail A
                  LEFT JOIN t_jasa B ON B.id_jasa=A.fk_jasa
                  LEFT JOIN t_paket_jasa C ON C.id_paket_jasa=A.fk_paket_jasa                  
                  LEFT JOIN t_kwitansigr D ON D.fk_pkb_jasa= A.fk_pkb_jasa
                  WHERE D.no_kwitansigr='$no_kwitansigr' AND A.fk_paket_jasa=''";
                  //echo $sqlest;
                  $qest=mysql_query($sqlest);
                  while($hest= mysql_fetch_array($qest)){;
                    //$totals=$totals+$hest['harga_jual_paket_jasa'];
                    $totals=$hest['harga_total_jasa']+$totals;
                ?>              
                        <tr>
                          <td><?php echo $hest['nmjasa'];?></td>
                          <td></td>
                          <td><?php echo rupiah2($hest['harga_jual_jasa']);?></td>
                          <td><?php echo rupiah2($hest['diskon_jasa']);?></td>
                          <td><?php echo rupiah2($hest['harga_total_jasa']);?></td>                         
                        </tr>    
                  <?php } ?>      	
                  <tr><td colspan="4" align="right">Sub Total Jasa</td><td align="right"><?php echo rupiah2($catat['total_kwitansigr']);?></td></tr>
                        <tr><td colspan="4" align="right">PPN</td><td align="right"><?php echo rupiah2($catat['total_ppn_kwitansigr']);?></td></tr>
                        <tr><td colspan="4" align="right"><strong>Grand Total</strong></td><td align="right"><?php echo rupiah2($catat['total_paymentgr']);?></td></tr>
                        
                </tfoot>
              </table>                  
               </div>
                <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel"> <a href="paycuci/paycuci_cetak.php?nobukti=<?php echo $nobukti;?>" target="blank">
                        <a href="kwitansigr/kwitansigr_cetak.php?no_kwitansigr=<?php echo $no_kwitansigr;?>" target="blank"><button type="button" class=" btn btn-default btn-circle" name="close" onclick="cetak();">Print</button></a>
                                    <button type="button" class=" btn btn-default btn-circle" name="close" onclick="$('#ModalKwPrint').modal('hide');">Close</button>
                     
                        </h4>
                    </div>
           </div>
           </div>      
           

