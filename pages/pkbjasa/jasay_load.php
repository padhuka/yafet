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
                          <th><button type="button" class="btn btn-default btn-circle" onclick="open_addjasay(idpkb='<?php echo $idpkb;?>');"><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT ep.*,p.nama AS nmjasa, j.nama AS nmpaket FROM t_pkb_jasa_detail ep
                                    LEFT JOIN t_paket_jasa j ON ep.fk_paket_jasa=j.id_paket_jasa
                                    LEFT JOIN t_jasa p ON ep.fk_jasa=p.id_jasa
                                    WHERE fk_pkb_jasa='$idpkb' AND fk_paket_jasa='' ORDER BY id ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['nmjasa'];?></td>
                          <td ><?php echo rupiah2($catat['harga_jual_jasa']);?></td>
                          <td ><?php echo rupiah2($catat['harga_diskon_jasa']);?></td>
                          <td ><?php echo rupiah2($catat['harga_total_pkb_jasa']);?></td>
                          <td >
                              <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['id'];?>" onclick="open_deljasa(id='<?php echo $catat['id'];?>');"><span>Hapus</span></button>
                                      
                                    </td>
                        </tr>
                    <?php }?>
                   
                </tfoot>
              </table>
              <script>
            $('#pkbjasa').DataTable();
          
           function open_addjasay(x){
              $.ajax({
                    url: "pkbjasa/jasay_add.php?idpkb="+x,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAddjasay").html(ajaxData);
                        $("#ModalAddjasay").modal({backdrop: 'static', keyboard:false});
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