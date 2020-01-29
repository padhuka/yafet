<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idnonpkb = $_GET['idnonpkbne'];
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalSalonShow').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Non PKB - <?php echo $idnonpkb;?></h4>
                    </div>
                <div class="modal-body">
                      <br>                    

                      <div class="row">
            <table id="nonpkbSalon" class="table table-condensed table-bordered table-striped table-hover">
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
                                    $sqlcatat = "SELECT * FROM t_nonpkb_salon_detail pd
                                    LEFT JOIN t_Salon p ON p.id_Salon=pd.fk_Salon
                                    WHERE fk_nonpkb='$idnonpkb' ORDER BY id ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo rupiah2($catat['harga_jual_salon']);?></td>
                          <td ><?php echo rupiah2($catat['harga_diskon_salon']);?></td>
                          <td ><?php echo rupiah2($catat['harga_total_nonpkb_salon']);?></td>
                          
                        </tr>
                    <?php }?>
                   
                </tfoot>
              </table>
               
               </div>
                  <h4 class="modal-title" id="myModalLabel">
                        <button type="button" class=" btn btn-default btn-circle" name="close" onclick="$('#ModalSalonShow').modal('hide');">Close</button>
                  </h4>
           </div>
           </div>      