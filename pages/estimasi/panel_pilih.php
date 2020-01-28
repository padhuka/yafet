   <?php
            include_once '../../lib/fungsi.php';
            include_once '../../lib/config.php';           
      ?>
<div id="ModalPilihPanel" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> <div class="modal-dialog">
 <div class="modal-dialog">
                    <div class="title">   
                    <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalPilihPanel').modal('hide');">x</button></td></tr></table>
                    </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Panel</h4>
                    </div>

                <div class="modal-body">
                <br>
                <table id="panelestimasi" class="table table-condensed table-bordered table-striped table-hover">
                        <thead class="thead-light">
                        <tr>
                                  
                                  <th>Nama</th>
                                  <th>Harga Pokok</th>
                                  <th>Harga Jual</th>
                                  <th></th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php
                                            $j=1;
                                            $sqlcatat = "SELECT * FROM t_panel ORDER BY id_panel ASC";
                                            $rescatat = mysql_query( $sqlcatat );
                                            while($catat = mysql_fetch_array( $rescatat )){
                                              $diskon= ($catat['diskon']/100)*$catat['harga_jual'];
                                              //$ppn= ($catat['ppn']/100)*$catat['harga_jual'];
                                              $hartot= $catat['harga_jual']-$diskon;
                                        ?>
                                <tr>
                              
                                  <td><?php echo $catat['nama'];?></td>
                                  <td><?php echo rupiah2($catat['harga_pokok']);?></td>
                                  <td><?php echo rupiah2($catat['harga_jual']);?></td>
                                  <td>
                                                <button type="button" class="btn btn-default btn-circle" onclick="pilihpanele('<?php echo $catat['id_panel'];?>','<?php echo $catat['nama'];?>','<?php echo $catat['harga_jual'];?>','<?php echo $hartot;?>','<?php echo $catat['diskon'];?>');">Pilih</button>

                                            </td>
                                </tr>
                            <?php }?>
                        </tfoot>
                    </table>

                  </div>
              </div>
              </div>
              </div>  
                    
              <script type="text/javascript">
                $('#panelestimasi').DataTable({
                  "pageLength": 5,
                    "language": {
                      "search": "Cari",
                      "lengthMenu": "Lihat _MENU_ baris per halaman",
                      "zeroRecords": "Maaf, Tidak di temukan - data",
                      "info": "Terlihat halaman _PAGE_ of _PAGES_",
                      "infoEmpty": "Tidak ada data di database"
                  }

                });
                function pilihpanele(a,b,c,d,e){
                              $("#panel").val(a);
                              $("#panelnm").val(b);
                              $("#hargapokok").val(c);
                              $("#hargatotal").val(d);                              
                              $("#diskon").val(e);                              
                              $("#ModalPilihPanel").modal('hide');                            
                      }; 
              </script>


