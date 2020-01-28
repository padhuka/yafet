      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>
      <table id="paycuci" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No</th>
                          <th>No Bukti</th>
                          <th>Tgl</th>
                          <th>Cara Bayar</th>
                          <th>Di Terima Dari</th>
                          <th>No Ref</th>
                          <th>Total</th>
                          <th>Keterangan</th>

                     
                          <th><button type="button" class="btn btn-default btn-circle" onclick="open_addpaycuci();"><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = " SELECT * FROM t_paycuci 
                                    WHERE tgl_batal='0000:00:00 00:00:00' ORDER BY tgl DESC ";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td><?php echo $j++;?></td> 
                          <td><button type="button" class="btn btn-link" id="<?php echo $catat['no_bukti']; ?>" onclick="open_paycuci(nobukti='<?php echo $catat['no_bukti']; ?>');"><span><?php echo ($catat['no_bukti']);?></span></button></td>
                       
                          <td ><?php echo date('d-m-Y' , strtotime($catat['tgl_transaksi']));?></td>
                          <td ><?php echo $catat['via_bayar'];?></td>
                          <td ><?php echo $catat['diterima_dari'];?></td>
                          <td ><?php echo $catat['no_ref'];?></td>
                          
                           <td ><?php echo rupiah2($catat['total']);?></td>
                           <td ><?php echo $catat['keterangan'];?></td>
                          <td >
                                         <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['no_bukti']; ?>" onclick="open_del(nobukti='<?php echo $catat['no_bukti']; ?>');"><span>Batal</span></button>
                                         <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['no_bukti']; ?>" onclick="cetak_paycuci(nobukti='<?php echo $catat['no_bukti']; ?>');"><span>Cetak</span></button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
            $('#paycuci').DataTable({
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
           
           function open_addpaycuci(){
              $.ajax({
                    url: "paycuci/paycuci_add.php",
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAdd").html(ajaxData);
                        $("#ModalAdd").modal({backdrop: 'static',keyboard: false});
                      }
                    });
              }
              
           function open_del(x){
                                $.ajax({
                                    url: "paycuci/paycuci_del.php?nobukti="+x,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalBatal").html(ajaxData);
                                        $("#ModalBatal").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
      
            function open_paycuci(z){
                              $.ajax({
                                  url: "paycuci/paycuci_show.php?nobukti="+z,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalShow").html(ajaxData);
                                      $("#ModalShow").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };


             function cetak_paycuci(q){
                              $.ajax({
                                  url: "paycuci/paycuci_print.php?nobukti="+q,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalpaycuciPrint").html(ajaxData);
                                      $("#ModalpaycuciPrint").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };

            
      </script>

<style type="text/css">
  .table {
    border-spacing: 0;
    border-collapse: collapse;
    margin-bottom: 0px;
  }
  .thead-light{
    background-color: lightgrey;
  }
  .btn {
    font-weight: bold;
    padding-bottom: 0px;
    padding-top: 3px;
    padding-left: 4px;
    padding-right: 4px;
  }
</style>