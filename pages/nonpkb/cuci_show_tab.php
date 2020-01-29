<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idnonpkb = $_GET['idnonpkbne'];
   ?>

<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalCuciShow').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Non PKB - <?php echo $idnonpkb;?></h4>
                    </div>
                <div class="modal-body">
                      <br>

                      <div class="row"  width="90%">
                      <table id="nonpkbcuci" class="dataTable table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Nama</th>
                          <th>Harga</th>
                          <th>Diskon</th>
                          <th>Harga</th>                          
                          
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_nonpkb_cuci_detail pd
                                    LEFT JOIN t_cuci p ON p.id_cuci=pd.fk_cuci
                                    WHERE fk_nonpkb='$idnonpkb' ORDER BY id ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo rupiah2($catat['harga_jual_cuci']);?></td>
                          <td ><?php echo rupiah2($catat['harga_diskon_cuci']);?></td>
                          <td ><?php echo rupiah2($catat['harga_total_nonpkb_cuci']);?></td>
                          
                        </tr>
                    <?php }?>
                   
                </tfoot>
              </table>
               
               </div>
                 <h4 class="modal-title" id="myModalLabel">
                                    <button type="button" class=" btn btn-default btn-circle" name="close" onclick="$('#ModalCuciShow').modal('hide');">Close</button>
                </h4>
           </div>
           </div>      
     

