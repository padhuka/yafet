<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idpkbjasa= $_GET['idpkbjasa'];
    //   $sqlpan= "SELECT * FROM t_pkb_jasa WHERE id_pkb_jasa='$idpkbjasa'";
 //  $catat= mysql_fetch_array(mysql_query($sqlpan));
   $j=1;
                                    $sqlcatat = "SELECT * FROM t_pkb_jasa e 
                                    left join t_customer c on e.fk_customer=c.id_customer
                                    where e.id_pkb_jasa='$idpkbjasa'";
                                    $rescatat = mysql_query( $sqlcatat );
                                    $catat = mysql_fetch_array( $rescatat );
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalEstPrint').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data PKB Jasa - <?php echo $idpkbjasa;?></h4>
                    </div>
                    
                    <div class="modal-body">
                    <br>
                      <div class="row">
                       <div class="col-sm-6">
                       <table id="pkbjasashow" class="dataTable">
                       <td>
                         <th class="col-sm-6">
                        <tr> <th>No Non PKB</th> <td ><?php echo $catat['id_pkb_jasa'];?></td></tr>
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
                       
                <table id="pkbjasasalon" class="dataTable table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                        <tr><th>No</th><th>Jasa</th><th>Total</th></tr>
                        </thead>
                        <tbody>
                
                    <?php 
                           $j=$j;
                                    $sqlcatat2 = "SELECT * FROM t_pkb_jasa_detail a
                                    LEFT JOIN t_jasa p ON a.fk_jasa=p.id_jasa
                                    WHERE a.fk_pkb_jasa='$idpkbjasa'";
                                    $rescatat2 = mysql_query( $sqlcatat2 );
                                    while($catat2 = mysql_fetch_array( $rescatat2 )){
                                ?>
                        <tr>
                          <td ><?php echo $j++;?></td>
                          <td ><?php echo $catat2['nama'];?></td>
                          <td align="right"><?php echo rupiah2($catat2['harga_jual_paket_jasa']);?></td>
                        </tr>
                    <?php }?>
                        <tr><td colspan="2" align="center">Sub Total Jasa</td><td align="right"><?php echo rupiah2($catat['total_netto_harga_jasa']);?></td></tr>                        
                </tfoot>
              </table>
                     <h4 class="modal-title" id="myModalLabel">
                        <a href="pkbjasa/pkbjasa_cetak.php?idpkbjasa=<?php echo $idpkbjasa;?>" target="blank"><button type="button" class=" btn btn-default btn-circle" name="close" onclick="cetak();">Print</button></a>
                                    <button type="button" class=" btn btn-default btn-circle" name="close" onclick="$('#ModalEstPrint').modal('hide');">Close</button>
                     </h4>
               </div>
           </div>
           </div>      
           

