      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>
      <table id="tablepkbjasa1" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No</th>
                          <th>No pkbjasa</th>
                          <th>Tgl Masuk</th>
                          <th>No Chasis</th>
                          <th>No Mesin</th>
                          <th>No Polisi</th>
                          <th>Nama Customer</th>
                          <th>Status pkbjasa</th>
                          <th></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT p.*,c.nama FROM t_pkb_jasa p
                                    LEFT JOIN t_customer c ON p.fk_customer=c.id_customer
                                    WHERE tgl_batal='0000-00-00 00:00:00' 
                                    ORDER BY id_pkb_jasa DESC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td><?php echo $j++;?></td>
                          <td><button type="button" class="btn btn-link" id="<?php echo $catat['id_pkb_jasa']; ?>" onclick="open_pkbjasa(idpkbjasa='<?php echo $catat['id_pkb_jasa']; ?>');"><span><?php echo ($catat['id_pkb_jasa']);?></span></button></td>
                       
                          <td ><?php echo date('d-m-Y',strtotime($catat['tgl']));?></td>
                          <td ><?php echo $catat['fk_no_chasis'];?></td>
                          <td ><?php echo $catat['fk_no_mesin'];?></td>
                          <td ><?php echo $catat['fk_no_polisi'];?></td>
                           <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['status_pkb_jasa'];?></td>
                          <td >
                                        <?php if($catat['status_pkb_jasa']=='Buka'){ ?>
                                        <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['id_pkb_jasa']; ?>" onclick="open_tutup(idpkbjasa='<?php echo $catat['id_pkb_jasa']; ?>');"><span>Tutup</span></button>
                                        <?php }else{?>
                                        
                                        <?php }?>
                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
            $('#tablepkbjasa1').DataTable({
              "columnDefs": [
                  { "orderable": false, "targets": 8 }
                ],
              "language": {
                      "search": "Cari",
                      "lengthMenu": "Lihat _MENU_ baris per halaman",
                      "zeroRecords": "Maaf, Tidak di temukan - data",
                      "info": "Terlihat halaman _PAGE_ of _PAGES_",
                      "infoEmpty": "Tidak ada data di database"
                  }
            });
           
              
           function open_tutup(x){
                                $.ajax({
                                    url: "pkbjasastatus/pkbjasa_tutup.php?idpkbjasa="+x,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalTutup").html(ajaxData);
                                        $("#ModalTutup").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
            function open_buka(x){
                                $.ajax({
                                    url: "pkbjasastatus/pkbjasa_buka.php?idpkbjasa="+x,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalBuka").html(ajaxData);
                                        $("#ModalBuka").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
              
                 
            function open_pkbjasa(z){
                              $.ajax({
                                  url: "pkbjasa/pkbjasa_show.php?idpkbjasa="+z,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalShow").html(ajaxData);
                                      $("#ModalShow").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
            
      </script>