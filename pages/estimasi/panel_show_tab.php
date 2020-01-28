<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idestimasi = $_GET['idestimasine'];
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Estimasi Panel - <?php echo $idestimasi;?> -</h4>
                    </div>
               
                    <div class="modal-body"><br>  
                     

                      <div class="row">
            <table id="estimasishowpanel" class="dataTable table table-condensed table-bordered table-striped table-hover">
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
                                    $sqlcatat = "SELECT * FROM t_estimasi_panel_detail pd
                                    LEFT JOIN t_panel p ON p.id_panel=pd.fk_panel
                                    WHERE fk_estimasi='$idestimasi' ORDER BY id ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                         $markpanel= $catat['mark_panel'];
                                ?>
                        <tr>
                          <td ><?php echo $catat['nama'];if ($markpanel=='1'){echo ' *';}?></td>
                          <td ><?php echo rupiah2($catat['harga_jual_panel']);?></td>
                          <td ><?php echo rupiah2($catat['harga_diskon_panel']);?></td>
                          <td ><?php echo rupiah2($catat['harga_total_estimasi_panel']);?></td>
                          
                        </tr>
                    <?php }?>
                   
                </tfoot>
              </table>
               
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
    $('#estimasishowpanel').dataTable();
    </script>