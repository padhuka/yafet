      <div id="ModalSatuan" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
      <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="keluar();" >x</button></td></tr></table>
  </div>
      <div class="col-md-14">
                <div class="modal-content">
                    <div class="modal-header">
                      <h4 class="modal-title" id="myModalLabel">Data Satuan</h4>
                    </div>

              <div class="box">
              <table id="satuan1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Kode Satuan</th>
                          <th>Nama</th>
                          <th></th>
                </tr>
                </thead>
                <tbody>
                                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_satuan ORDER BY id_satuan ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id_satuan'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td >
                                        <button type="button" class="btn btn-default btn-circle" onclick="pilih('<?php echo $catat['id_satuan'];?>','<?php echo $catat['nama'];?>');">Pilih</button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              </div>
              </div>
              </div>
              </div>
              </div>
              <script type="text/javascript">
                function keluar(){
                  $("#ModalSatuan").modal('hide');
                }
                $('#satuan1').DataTable();
                function pilih(x,y){
                              $("#satuan").val(x);
                              $("#satuannm").val(y);
                              $("#ModalSatuan").modal('hide');
                      };
              </script>
  <style type="text/css">
  .row {
    margin-left: 0px;
    margin-right: 0px;
    margin-top:10px;
  }
  .modal-title {
    padding-top: 5px;padding-bottom: 5px;
  }
</style>

