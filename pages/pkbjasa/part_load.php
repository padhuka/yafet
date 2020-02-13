      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
            $idpkb=$_GET['idpkbjasa'];
      ?>
      <table id="pkbjasa" class="dataTable table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Jasa</th>
                          <th>Harga</th>
                          <th>Diskon</th>
                          <th>Harga</th>                          
                          <th><button type="button" class="btn btn-default btn-circle" onclick="open_addpart(idpkb='<?php echo $idpkb;?>');"><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT ep.*,p.nama AS nmjasa FROM t_pkb_jasa_detail ep
                                    LEFT JOIN t_part p ON ep.fk_jasa=p.id_part
                                    WHERE ep.fk_pkb_jasa='$idpkb' AND ep.fk_part<>'' ORDER BY ep.id ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['nmjasa'];?></td>
                          <td ><?php echo rupiah2($catat['harga_jual_jasa']);?></td>
                          <td ><?php echo rupiah2($catat['harga_diskon_jasa']);?></td>
                          <td ><?php echo rupiah2($catat['harga_total_jasa']);?></td>
                          <td >
                              <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['id'];?>" onclick="open_delpart(id='<?php echo $catat['id'];?>');"><span>Hapus</span></button>
                                      
                                    </td>
                        </tr>
                    <?php }?>
                   
                </tfoot>
              </table>
              <script>
            $('#pkbjasa').DataTable();
          
           function open_addpart(x){
              $.ajax({
                    url: "pkbjasa/part_add.php?idpkb="+x,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAddparty").html(ajaxData);
                        $("#ModalAddparty").modal({backdrop: 'static', keyboard:false});
                      }
                    });
              }
           function open_delpart(y){
                                $.ajax({
                                    url: "pkbjasa/part_del.php?id="+y,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDeletepart").html(ajaxData);
                                        $("#ModalDeletepart").modal({backdrop: 'static', keyboard:false});
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