
   <?php
            include_once '../../lib/fungsi.php';
           
      ?>
    <div id="ModalPilihsalonEdit" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"> <div class="modal-dialog">
      <div class="col-md-14">
                <div class="modal-content">
                    <div class="modal-header">
                         
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data salon <button type="button" class="close" aria-label="Close" onclick="$('#ModalPilihsalonEdit').modal('hide');"><span>&times;</span></button></h4>                        
                    </div>

                  <div class="box">
                <table id="salonnonpkbe" class="table table-condensed table-bordered table-striped table-hover">
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
                                    $sqlcatat = "SELECT * FROM t_salon ORDER BY id_salon ASC";
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
                                        <button type="button" class="btn btn-default btn-circle" onclick="pilihsalonedit('<?php echo $catat['id_salon'];?>','<?php echo $catat['nama'];?>','<?php echo $catat['harga_jual'];?>','<?php echo $hartot;?>','<?php echo $catat['diskon'];?>');">Pilih</button>

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
                $('#salonnonpkbe').DataTable({
                    "language": {
                      "search": "Cari",
                      "lengthMenu": "Lihat _MENU_ baris per halaman",
                      "zeroRecords": "Maaf, Tidak di temukan - data",
                      "info": "Terlihat halaman _PAGE_ of _PAGES_",
                      "infoEmpty": "Tidak ada data di database"
                  }
                });
                function pilihsalonedit(a,b,c,d,e){
                              $("#salone").val(a);
                              $("#salonnme").val(b);
                              $("#hargapokoke").val(c);
                              $("#hargatotale").val(d);                              
                              $("#diskone").val(e);                              
                              $("#ModalPilihsalonEdit").modal('hide');
                              // $("#tablenonpkbdetail").load('nonpkb/nonpkb_detail_tab.php');
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
<style type="text/css">
.modal-open .modal {
    overflow-y: scroll;
  }
  .modal-header {
    padding-top: 15px;padding-bottom: 15px;
  }
  .title-header {
    font-size: 20px;
    text-align: center;
    font-weight: bold;
    font-family: monospace;
  }
  .modal-content {
    height: 556px;
  }
  .row {
    margin-left: 0px;
    margin-right: 0px;
    margin-top:10px;
  }
  .modal-title {
    padding-top: 5px;padding-bottom: 5px;
  }
</style>


