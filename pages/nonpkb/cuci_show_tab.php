<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idnonpkb = $_GET['idnonpkbne'];
   ?>
<div class="modal-dialog">
           <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data Non PKB - Cuci <button type="button" class="close" aria-label="Close" onclick="$('#ModalCuciShow').modal('hide');"><span>&times;</span></button></h4>                    
                    </div>
               
                    <div class="modal-body">
                     

                      <div class="row">
                      <table id="nonpkbcuci" class="table table-condensed table-bordered table-striped table-hover">
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
                                      $markpanel= $catat['mark_panel'];
                                ?>
                        <tr>
                          <td ><?php echo $catat['nama'];if ($markpanel=='1'){echo ' *';}?></td>
                          <td ><?php echo rupiah2($catat['harga_jual_cuci']);?></td>
                          <td ><?php echo rupiah2($catat['harga_diskon_cuci']);?></td>
                          <td ><?php echo rupiah2($catat['harga_total_nonpkb_cuci']);?></td>
                          
                        </tr>
                    <?php }?>
                   
                </tfoot>
              </table>
               
               </div>
                  <div class="form-group">
                      <div class="modal-footer">
                      <div class="but">
                                    <button type="button" class=" btn btn-default btn-circle" name="close" onclick="$('#ModalCuciShow').modal('hide');">Close</button>
                     </div>
                     </div>
                     </div>
           </div>
           </div>      
     

<style type="text/css">
  .modal-footer {
    padding-top: 10px;
    padding-bottom: 0px;
    padding-left: 0px;
    padding-right: 0px;
  }
  .modal-title {
    font-style: italic;
    background-color: lightcoral;
    text-align: center;
    font-weight: bold;
  }
  .total {
  font-weight: bold;border-top:   inset;
  }
    .but {
    text-align: center;
  }
  .modal-title-detail {
    font-style: italic;
    background-color: lightblue;
    text-align: center;
    font-weight: bold;
  }
  .modal-dialog {
    margin-bottom: 0px;
    border: 3px;
    width: 800px;
  }
</style>