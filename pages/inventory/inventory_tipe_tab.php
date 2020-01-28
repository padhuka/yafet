      <div id="ModalTipe" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
      <div class="col-md-14">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data Tipe <button type="button" class="close" aria-label="Close" onclick="$('#ModalTipe').modal('hide');"><span>&times;</span></button></h4>
                    </div>

                  <div class="box">
              <table id="tipe1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Kode Tipe</th>
                          <th>Nama</th>
                          <th>Group</th>
                          <th></th>
                </tr>
                </thead>
                <tbody>
                                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_tipe_kendaraan ORDER BY id_tipe_kendaraan ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id_tipe_kendaraan'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['fk_group_kendaraan'];?></td>
                          <td >
                                        <button type="button" class="btn btn-default btn-circle" onclick="pilihtipe('<?php echo $catat['id_tipe_kendaraan'];?>','<?php echo $catat['nama'];?>');">Pilih</button>

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
                $('#tipe1').DataTable();
                function pilihtipe(x,y){
                              $("#tipe").val(x);
                              $("#tipenm").val(y);
                              $("#ModalTipe").modal('hide');
                      };
              </script>

