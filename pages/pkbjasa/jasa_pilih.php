  <?php
            include_once '../../lib/fungsi.php';
           
      ?>
    
    <div id="ModalPilihjasa" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> <div class="modal-dialog">
      <div class="col-md-14">
                <div class="modal-content">
                    <div class="modal-header">
                         
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data jasa <button type="button" class="close" aria-label="Close" onclick="$('#ModalPilihjasa').modal('hide');"><span>&times;</span></button></h4>                        
                    </div>

                  <div class="box">
                <table id="pkbjasapilih" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                        
                          <th>Nama</th>
                          <th>Harga</th>
                        
                          <th></th>
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
                        
                          <td><?php echo $catat['nama'];?></td>
                          <td><?php echo rupiah2($catat['total_harga_paket']);?></td>
                     
                          <td>
                                        <button type="button" class="btn btn-default btn-circle" onclick="pilihjasae('<?php echo $catat['id_paket_jasa'];?>','<?php echo $catat['nama'];?>','<?php echo $catat['total_harga_paket'];?>');">Pilih</button>

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
                $('#pkbjasapilih').DataTable({
                   "language": {
                      "search": "Cari",
                      "lengthMenu": "Lihat _MENU_ baris per halaman",
                      "zeroRecords": "Maaf, Tidak di temukan - data",
                      "info": "Terlihat halaman _PAGE_ of _PAGES_",
                      "infoEmpty": "Tidak ada data di database"
                  },
                   "pageLength": 5,
                });
                function pilihjasae(a,b,c){
                  //alert(c);
                              $("#jasa").val(a);
                              $("#jasanm").val(b);
                              $("#hargatotalp").val(c);
                              $("#ModalPilihjasa").modal('hide');
                              $("#tablepilihjasadetail").load('pkbjasa/jasa_pilih_detail.php?id_paket_jasa='+a);
                              /*$.ajax({
                              url: "suratmasuk/suratmasuk_add.php",
                              type: "GET",
                                success: function (ajaxData){
                                  $("#ModalAdd").html(ajaxData);
                                  $("#ModalAdd").modal('show',{backdrop: 'true'});
                                  $("#tablepilihjasadetail").load('pkbjasa/jasa_pilih_detail.php');
                                }
                              });*/
                              
            //});
                              //$("#tablejasapilih").load('pkbjasa/tablejasapilih.php?id_paket_jasa='+a);
                      }; 
              </script>

