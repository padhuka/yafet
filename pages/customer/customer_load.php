      <?php
            include_once '../../lib/config.php';
      ?>
      <table id="customer1" class="table table-condensed table-bordered table-striped table-hover">
      
                <thead class="thead-light">
                <tr>
                          <th>ID</th>
                          <th>Nama</th>
                          <th>Jenis Kelamin</th>
                          <th>Alamat</th>
                          <th>No.KTP</th>
                          <th>No.Telp</th>
                          <th>E-mail</th>
                          <th><button type="button" class="btn btn-default btn-circle open_add"><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_customer ORDER BY id_customer ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id_customer'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['jenis_kelamin'];?></td>
                          <td ><?php echo $catat['alamat'];?></td>
                          <td ><?php echo $catat['no_ktp'];?></td>
                          <td ><?php echo $catat['no_telp'];?></td>
                          <td ><?php echo $catat['email'];?></td>
                          <td >
                                        <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['id_customer']; ?>" onclick="open_modal(ideditas='<?php echo $catat['id_customer']; ?>');"><span>Edit</span></button>
                                         <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['id_customer']; ?>" onclick="open_del(iddelas='<?php echo $catat['id_customer']; ?>');"><span>Hapus</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
             $('#customer1').DataTable();
            
            $(".open_add").click(function (e){
                    $.ajax({
                    url: "customer/customer_add.php",
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAdd").html(ajaxData);
                        $("#ModalAdd").modal({backdrop: 'static',keyboard: false});
                      }
                    });
            });
            
           function open_del(){
                                $.ajax({
                                    url: "customer/customer_del.php?id_customer="+iddelas,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDelete").html(ajaxData);
                                        $("#ModalDelete").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
            function open_modal(){
                              $.ajax({
                                  url: "customer/customer_edit.php?id_customer="+ideditas,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEdit").html(ajaxData);
                                      $("#ModalEdit").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
      </script>