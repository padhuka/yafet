      <?php
            include_once '../../lib/config.php';
      ?>
      <table id="warna1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Kode Warna</th>
                          <th>Nama</th>
                          <th><button type="button" class="btn btn-default btn-circle open_add"><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_warna_kendaraan ORDER BY id_warna_kendaraan ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id_warna_kendaraan'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td >
                                        <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['id_warna_kendaraan']; ?>" onclick="open_modal(ideditwarna='<?php echo $catat['id_warna_kendaraan']; ?>');"><span>Edit</span></button>
                                         <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['id_warna_kendaraan']; ?>" onclick="open_del(iddelwarna='<?php echo $catat['id_warna_kendaraan']; ?>');"><span>Hapus</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
             $('#warna1').DataTable();
            $(".open_add").click(function (e){
                                //var m = $(this).attr("id_warna_kendaraan");
                    $.ajax({
                    url: "warna/warna_add.php",
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAdd").html(ajaxData);
                        $("#ModalAdd").modal({backdrop: 'static',keyboard: false});
                      }
                    });
            });
           function open_del(){
                                $.ajax({
                                    url: "warna/warna_del.php?id_warna_kendaraan="+iddelwarna,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDelete").html(ajaxData);
                                        $("#ModalDelete").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
            function open_modal(){
                              $.ajax({
                                  url: "warna/warna_edit.php?id_warna_kendaraan="+ideditwarna,

                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEdit").html(ajaxData);
                                      $("#ModalEdit").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
      </script>