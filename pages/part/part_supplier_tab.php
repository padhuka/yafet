 <div id="ModalSupplier" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
      <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="keluar2();" >x</button></td></tr></table>
  </div>
      <div class="col-md-14">
                <div class="modal-content">
                    <div class="modal-header">
                      <h4 class="modal-title" id="myModalLabel">Data Supplier</h4>
                    </div>

                  <div class="box">
              <table id="supplier1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Kode Supplier</th>
                          <th>Nama</th>
                          <th>Alamat</th>
                          <th>No Telp</th>
                          <th></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_supplier ORDER BY id_supplier ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id_supplier'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['alamat'];?></td>
                          <td ><?php echo $catat['no_telp'];?></td>
                          <td>
                          <button type="button" class="btn btn-default btn-circle" onclick="pilihsup('<?php echo $catat['id_supplier'];?>','<?php echo $catat['nama'];?>');">Pilih</button>
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

                function keluar2(){
                  $("#ModalSupplier").modal('hide');
                }

                $('#supplier1').DataTable();
                function pilihsup(m,n){
                              $("#supplier").val(m);
                              $("#suppliernm").val(n);
                              $("#ModalSupplier").modal('hide');
                      };
              </script>