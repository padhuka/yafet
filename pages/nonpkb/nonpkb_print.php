<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idnonpkb= $_GET['idnonpkb'];
    //   $sqlpan= "SELECT * FROM t_nonpkb WHERE id_nonpkb='$idnonpkb'";
 //  $catat= mysql_fetch_array(mysql_query($sqlpan));
 $j=1;
                                    $sqlcatat = "SELECT * FROM t_nonpkb e left join t_customer c on e.fk_customer=c.id_customer where e.id_nonpkb='$idnonpkb'";
                                    $rescatat = mysql_query( $sqlcatat );
                                    $catat = mysql_fetch_array( $rescatat );
  
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Cetak Data Non PKB - <?php echo $catat['id_nonpkb'];?></h4>
                    </div>
                <div class="modal-body">
                      <br>
                      <div class="row">
                       <div class="col-sm-6">
                       <table id="nonpkbshow" class="dataTable">
                       <td>
                         <th class="col-sm-6">
                        <tr> <th>No Non PKB</th> <td ><?php echo $catat['id_nonpkb'];?></td></tr>
                        <tr> <th>Tgl Masuk</th> <td ><?php echo $catat['tgl'];?></td></tr>
                        <tr> <th>No Chasis</th>  <td ><?php echo $catat['fk_no_chasis'];?></td></tr>
                        <tr> <th>No Mesin</th> <td ><?php echo $catat['fk_no_mesin'];?></td></tr>
                        <tr> <th>No Polisi</th>   <td ><?php echo $catat['fk_no_polisi'];?></td> </tr>
                        </th>
                       </td>
                      </table>
                           </div>

                            <div class="col-sm-6">
                             
                         </div>
                      </div>
                       
                <table id="nonpkbsalon" class="dataTable table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                        <tr><th>No</th><th>Pekerjaan</th><th>Total</th></tr>
                        </thead>
                        <tbody>
                <?php
                                    $j=1;
                                    $sqlcatatp = "SELECT * FROM t_nonpkb_salon_detail a LEFT JOIN t_salon p ON a.fk_salon=p.id_salon WHERE a.fk_nonpkb='$idnonpkb'";
                                    $rescatatp = mysql_query( $sqlcatatp );
                                    while($catatp = mysql_fetch_array( $rescatatp )){
                                ?>
                        <tr>
                          <td ><?php echo $j++;?></td>
                          <td ><?php echo $catatp['nama'];?></td>
                          <td align="right"><?php echo rupiah2($catatp['harga_total_nonpkb_salon']);?></td>
                        </tr>
                    <?php }
                           $j=$j;
                                    $sqlcatat2 = "SELECT * FROM t_nonpkb_cuci_detail a LEFT JOIN t_cuci p ON a.fk_cuci=p.id_cuci WHERE a.fk_nonpkb='$idnonpkb'";
                                    $rescatat2 = mysql_query( $sqlcatat2 );
                                    while($catat2 = mysql_fetch_array( $rescatat2 )){
                                ?>
                        <tr>
                          <td ><?php echo $j++;?></td>
                          <td ><?php echo $catat2['nama'];?></td>
                          <td align="right"><?php echo rupiah2($catat2['harga_total_nonpkb_cuci']);?></td>
                        </tr>
                    <?php }?>
                        <tr><td colspan="2" align="center">Sub Total Jasa</td><td align="right"><?php echo rupiah2($catat['total_netto_harga_jasa']);?></td></tr>
                        <!--<tr><td colspan="2" align="center">PPN</td><td align="right"><?php echo rupiah2((10/100)*$catat['total_netto_harga_jasa']);?></td></tr>
                        <tr><td colspan="2" align="center">Total Jasa</td><td align="right"><?php echo rupiah2((110/100)*$catat['total_netto_harga_jasa']);?></td></tr>-->
                </tfoot>
              </table>
                       <div class="form-group">
                      <div class="modal-footer">
                      <div class="but">
                      <h4 class="modal-title" id="myModalLabel">
                                  <a href="nonpkb/nonpkb_cetak.php?idnonpkb=<?php echo $idnonpkb;?>" target="blank"><button type="button" class=" btn btn-default btn-circle" name="close" onclick="cetak();">Print</button></a>
                                    <button type="button" class=" btn btn-default btn-circle" name="close" onclick="$('#ModalEstPrint').modal('hide');">Close</button>
                        </h4>
                     </div>
                     </div>
               </div>
           </div>
           </div>      
           

