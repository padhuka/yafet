<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idpkb = $_GET['idpkbne'];
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalPanelShow').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data PKB Panel</h4>
                    </div>
               
                    <div class="modal-body"><br>
                      <div class="row">
                      <div class="col-sm-12">
            <table id="pkbpanelshow" class="dataTable table table-condensed table-bordered table-striped table-hover">
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
                                    $sqlcatat = "SELECT * FROM t_pkb_panel_detail pk
                                    LEFT JOIN t_panel p ON pk.fk_panel=p.id_panel
                                    WHERE fk_pkb='$idpkb' ORDER BY id ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo rupiah2($catat['harga_jual_panel']);?></td>
                          <td ><?php echo rupiah2($catat['harga_diskon_panel']);?></td>
                          <td ><?php echo rupiah2($catat['harga_total_pkb_panel']);?></td>
                          
                        </tr>
                    <?php }?>
                   
                </tfoot>
              </table>
                </div>
               </div>
                  <div class="form-group">
                      <div class="modal-footer">
                      <div class="but">
                                    <button type="button" class=" btn btn-default btn-circle" name="close" onclick="$('#ModalPanelShow').modal('hide');">Close</button>
                     </div>
                     </div>
                     </div>
           </div>
           </div>      
     <script>
      $('#pkbpanelshow').dataTable();
     </script>