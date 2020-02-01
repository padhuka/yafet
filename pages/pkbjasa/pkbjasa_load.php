      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>
      <table id="pkbjasa1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No</th>
                          <th>No PKB Jasa</th>
                          <th>Tgl Masuk</th>
                          <th>Customer</th>
                          <th>No Polisi</th>
                          <th>Total</th>
                          <th>Status</th>

                     
                          <th><button type="button" class="btn btn-default btn-circle" onclick="open_add();"><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_pkb_jasa p
                                    LEFT JOIN t_customer c ON p.fk_customer=c.id_customer
                                    LEFT JOIN ( SELECT * from t_kwitansigr where tgl_batal='0000-00-00 00:00:00') AS k ON p.id_pkb_jasa=k.fk_pkb_jasa
                                    LEFT JOIN (SELECT id, fk_pkb_jasa, status
                                      FROM t_status_pkb_jasa
                                      WHERE id IN (
                                      SELECT MAX(id)
                                      FROM t_status_pkb_jasa
                                      GROUP BY fk_pkb_jasa
                                    ))AS state ON p.id_pkb_jasa=state.fk_pkb_jasa
                                    WHERE p.tgl_batal ='0000-00-00 00:00:00'                                    
                                    ORDER BY p.tgl DESC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){

                                ?>
                        <tr>
                          <td><?php echo $j++;?></td>
                          <td><button type="button" class="btn btn-link" id="<?php echo $catat['id_pkb_jasa']; ?>" onclick="open_est(idpkbjasa='<?php echo $catat['id_pkb_jasa']; ?>');"><span><?php echo ($catat['id_pkb_jasa']);?></span></button></td>
                       
                          <td ><?php echo date('d-m-Y' , strtotime($catat['tgl']));?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['fk_no_polisi'];?></td>
                          <td ><?php echo rupiah2($catat['total_netto_harga_jasa']);?></td>
                          <td ><?php echo $catat['status'];?></td>
                          <td >
                                        <?php if ($catat['approved']==0){?>
                                        <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['id_pkb_jasa']; ?>" onclick="open_modal(idpkbjasa='<?php echo $catat['id_pkb_jasa']; ?>');"><span>Edit</span></button>
                                       <!--
                                        <button type="button" class="btn btn-default btn-circle" id="<?php //echo $catat['id_pkb_jasa']; ?>" onclick="open_approved(idpkbjasa='<?php //echo $catat['id_pkb_jasa']; ?>');"><span>Approve</span></button>-->
                                        <?php } ?>

                                      <?php if ($catat['approved']==1 && $catat['tgl_batal']!='0000-00-00 00:00:00' ){?>
                                        <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['id_pkb_jasa']; ?>" onclick="open_del(idpkbjasa='<?php echo $catat['id_pkb_jasa']; ?>');"><span>Batal</span></button>
                                         <?php } ?>

                                         <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['id_pkb_jasa']; ?>" onclick="cetak_est(idpkbjasa='<?php echo $catat['id_pkb_jasa']; ?>');"><span>Cetak</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
            $('#pkbjasa1').DataTable({
              "columnDefs": [
                  { "orderable": false, "targets": 6 }
                ]
            });
           
           function open_add(){
              $.ajax({
                    url: "pkbjasa/pkbjasa_add.php",
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAdd").html(ajaxData);
                        $("#ModalAdd").modal({backdrop: 'static',keyboard: false});
                      }
                    });
              }
              
           function open_del(x){
                                $.ajax({
                                    url: "pkbjasa/pkbjasa_del.php?idpkbjasa="+x,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDelete").html(ajaxData);
                                        $("#ModalDelete").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
            function open_approved(x){
                                $.ajax({
                                    url: "pkbjasa/pkbjasa_approved.php?idpkbjasa="+x,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalApproved").html(ajaxData);
                                        $("#ModalApproved").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
            function open_modal(y){
                              $.ajax({
                                  url: "pkbjasa/pkbjasa_edit.php?idpkbjasa="+y,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEdit").html(ajaxData);
                                      $("#ModalEdit").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
              
            function open_est(z){
                              $.ajax({
                                  url: "pkbjasa/pkbjasa_show.php?idpkbjasa="+z,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalShow").html(ajaxData);
                                      $("#ModalShow").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };

            function cetak_est(q){
                              $.ajax({
                                  url: "pkbjasa/pkbjasa_print.php?idpkbjasa="+q,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalEstPrint").html(ajaxData);
                                      $("#ModalEstPrint").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
            
      </script>