  <?php
            include_once '../../lib/fungsi.php';
           
      ?>
    
    <div id="ModalPilihpart" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> <div class="modal-dialog">
      <div class="col-md-14">
                <div class="modal-content">
                    <div class="modal-header">
                         
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data Jasa <button type="button" class="close" aria-label="Close" onclick="$('#ModalPilihpart').modal('hide');"><span>&times;</span></button></h4>                        
                    </div>

                  <div class="box">
                <table id="pkbpartypilih" class="table table-condensed table-bordered table-striped table-hover">
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
                                    $sqlcatat = "SELECT * FROM t_part ORDER BY id_part ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                        
                          <td><?php echo $catat['nama'];?></td>
                          <td><?php echo rupiah2($catat['harga_jual']);?></td>
                     
                          <td>
                                        <button type="button" class="btn btn-default btn-circle" onclick="pilihparte('<?php echo $catat['id_part'];?>','<?php echo $catat['nama'];?>','<?php echo $catat['harga_jual'];?>');">Pilih</button>

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
                $('#pkbpartypilih').DataTable({
                   "language": {
                      "search": "Cari",
                      "lengthMenu": "Lihat _MENU_ baris per halaman",
                      "zeroRecords": "Maaf, Tidak di temukan - data",
                      "info": "Terlihat halaman _PAGE_ of _PAGES_",
                      "infoEmpty": "Tidak ada data di database"
                  },
                   "pageLength": 5,
                });
                function pilihparte(a,b,c){
                              $("#part").val(a);
                              $("#partnm").val(b);
                              $("#hargatotalpart").val(c);
                              $("#ModalPilihpart").modal('hide');                              
                      }; 
              </script>

