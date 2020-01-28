      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
            $idpkb=$_GET['idpkbjasa'];
      ?>
      <table id="pkbjasa" class="dataTable table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Nama</th>
                          <th>Harga</th>
                          <th>Diskon</th>
                          <th>Harga</th>                          
                          <th><button type="button" class="btn btn-default btn-circle" onclick="open_addjasa(idpkb='<?php echo $idpkb;?>');"><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT ep.*,p.nama FROM t_pkb_jasa_detail  ep
                                    LEFT JOIN t_jasa p ON ep.fk_jasa=p.id_jasa
                                    WHERE fk_pkb_jasa='$idpkb' ORDER BY id ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo rupiah2($catat['harga_jual_jasa']);?></td>
                          <td ><?php echo rupiah2($catat['harga_diskon_jasa']);?></td>
                          <td ><?php echo rupiah2($catat['harga_total_pkb_jasa']);?></td>
                          <td >
                                        <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['idpkb'];?>" onclick="open_modaljasa(id='<?php echo $catat['idpkb'];?>');"><span>Edit</span></button>
                                         <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['idpkb'];?>" onclick="open_deljasa(id='<?php echo $catat['idpkb'];?>');"><span>Hapus</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                   
                </tfoot>
              </table>
              <script>
            $('#pkbjasa').DataTable();
          
           function open_addjasa(x){
              $.ajax({
                    url: "pkbjasa/jasa_add.php?idpkb="+x,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAddjasa").html(ajaxData);
                        $("#ModalAddjasa").modal({backdrop: 'static', keyboard:false});
                      }
                    });
              }
           function open_deljasa(y){
                                $.ajax({
                                    url: "pkbjasa/jasa_del.php?id="+y,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDeletejasa").html(ajaxData);
                                        $("#ModalDeletejasa").modal({backdrop: 'static', keyboard:false});
                                    }
                                });
            };
            function open_modaljasa(z){
                              $.ajax({
                                  url: "pkb/jasa_edit.php?idpkb=<?php echo $idpkb;?>&id="+z,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEditjasa").html(ajaxData);
                                      $("#ModalEditjasa").modal({backdrop: 'static', keyboard:false});
                                  }
                              });
            };
      </script>