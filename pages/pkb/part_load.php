      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
            $idpkb=$_GET['idpkb'];
      ?>
      <table id="pkbpart" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Nama</th>
                          <th>Harga</th>
                          <th>Diskon</th>
                          <th>Harga</th>                          
                          <th></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT ep.*, p.nama as nama FROM t_pkb_part_detail ep 
                                    LEFT JOIN t_part p ON ep.fk_part=p.id_part
                                    WHERE fk_pkb='$idpkb' ORDER BY id ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo rupiah2($catat['harga_jual_part']);?></td>
                          <td ><?php echo rupiah2($catat['harga_diskon_part']);?></td>
                          <td ><?php echo rupiah2($catat['harga_total_pkb_part']);?></td>
                          <td >
                                        <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['id'];?>" onclick="open_modalpart(id='<?php echo $catat['id'];?>');"><span>Edit</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                   
                </tfoot>
              </table>
              <script>
            $('#pkbpart').DataTable();
          
         
            function open_modalpart(z){
                              $.ajax({
                                  url: "pkb/part_edit.php?idpkb=<?php echo $idpkb;?>&id="+z,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEditPart").html(ajaxData);
                                      $("#ModalEditPart").modal({backdrop: 'static', keyboard:false});
                                  }
                              });
            };
      </script>
