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
                <table id="jasaestimasi" class="dataTable table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                        
                          <th>Nama</th>
                          <th>Harga Pokok</th>
                          <th>Diskon(%)</th>
                          <th>Harga Jual</th>
                        
                          <th></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_jasa ORDER BY id_jasa ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                      //$diskon= ($catat['diskon']/100)*$catat['harga_jual'];
                                      //$ppn= ($catat['ppn']/100)*$catat['harga_jual'];
                                      //$hartot= $catat['harga_jual']-$diskon;
                                      $hartot= $catat['harga_jual'];
                                ?>
                        <tr>
                        
                          <td><?php echo $catat['nama'];?></td>
                          <td><?php echo rupiah2($catat['harga_pokok']);?></td>
                          <td><?php echo $catat['diskon'];?></td>
                          <td><?php echo rupiah2($catat['harga_jual']);?></td>
                     
                          <td>
                                        <button type="button" class="btn btn-default btn-circle" onclick="pilihjasae('<?php echo $catat['id_jasa'];?>','<?php echo $catat['nama'];?>','<?php echo $catat['harga_pokok'];?>','<?php echo $hartot;?>','<?php echo $catat['diskon'];?>');">Pilih</button>

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
                $('#jasaestimasi').DataTable({
                   "language": {
                      "search": "Cari",
                      "lengthMenu": "Lihat _MENU_ baris per halaman",
                      "zeroRecords": "Maaf, Tidak di temukan - data",
                      "info": "Terlihat halaman _PAGE_ of _PAGES_",
                      "infoEmpty": "Tidak ada data di database"
                  },
                   "pageLength": 5,
                });
                function pilihjasae(a,b,c,d,e){
                  //alert(c);
                              $("#jasa").val(a);
                              $("#jasanm").val(b);
                              $("#hargapokokp").val(d);
                              $("#hargatotalp").val(d);                              
                              $("#diskonp").val(e);
                              $("#qty").val('1');
                              $("#ModalPilihjasa").modal('hide');
                              /*$.ajax({
                              url: "suratmasuk/suratmasuk_add.php",
                              type: "GET",
                                success: function (ajaxData){
                                  $("#ModalAdd").html(ajaxData);
                                  $("#ModalAdd").modal('show',{backdrop: 'true'});
                                }
                              });*/
                      }; 
              </script>

