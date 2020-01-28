      <?php
            include_once '../../lib/config.php';
      ?>
      <table id="paketjasa1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Kode Paket</th>
                          <th>Nama</th>
                          <th>Harga Paket</th>
                          <th><button type="button" class="btn btn-default btn-circle open_add" ><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_paket_jasa ORDER BY id_paket_jasa ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id_paket_jasa'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['total_harga_paket'];?></td>
                          <td >
                                        <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['id_paket_jasa']; ?>" onclick="open_modal(ideditpaketjasa='<?php echo $catat['id_paket_jasa']; ?>');"><span>Edit</span></button>
                                         <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['id_paket_jasa']; ?>" onclick="open_del(iddelpaketjasa='<?php echo $catat['id_paket_jasa']; ?>');"><span>Hapus</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
             $('#paketjasa1').DataTable();
            $(".open_add").click(function (e){
                    $.ajax({
                    url: "paketjasa/paketjasa_add.php",
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAdd").html(ajaxData);
                        $("#ModalAdd").modal({backdrop: 'static',keyboard: false});
                      }
                    });
            });
           function open_del(){
                                $.ajax({
                                    url: "paketjasa/paketjasa_del.php?id_paket_jasa="+iddelpaketjasa,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDelete").html(ajaxData);
                                        $("#ModalDelete").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
            function open_modal(){
                              $.ajax({
                                  //url: "paketjasa/paketjasa_detail.php?id_paket_jasa="+ideditpaketjasa,
                                  url: "paketjasa/paketjasa_edit.php?id_paket_jasa="+ideditpaketjasa,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEdit").html(ajaxData);
                                      $("#ModalEdit").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
      </script>