      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>
      <table id="tablekwitansigr" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No</th>
                          <th>No kwitansigr</th>
                          <th>Tanggal</th>
                          <th>No PKB</th>
                          <th>No Chasis</th>
                          <th>No Polisi</th>
                          <th>Nama Customer</th>
                          <th>Total</th>
                          <!--<th>PPN</th>
                           <th>Total Bayar</th>-->
                         
                          <th><button type="button" class="btn btn-default btn-circle" onclick="open_add();"><span>Tambah</span></button></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT k.no_kwitansigr, k.tgl_kwitansigr,p.id_pkb_jasa,p.kategori,p.fk_no_chasis,p.fk_no_mesin,p.fk_no_polisi,c.nama,k.total_kwitansigr,k.total_ppn_kwitansigr,k.total_paymentgr,k.tgl_batal FROM t_kwitansigr k 
                                      INNER JOIN t_pkb_jasa p ON k.fk_pkb_jasa=p.id_pkb_jasa 
                                      INNER JOIN t_customer c ON p.fk_customer=c.id_customer
                                      WHERE k.tgl_batal='0000:00:00 00:00:00'
                                      ORDER BY k.tgl_kwitansigr DESC";
                                      
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>  
                          <td><?php echo $j++;?></td>
                          <td><button type="button" class="btn btn-link" id="<?php echo $catat['no_kwitansigr']; ?>" onclick="open_kwitansigr(idkwitansigr='<?php echo $catat['no_kwitansigr']; ?>');"><span><?php echo ($catat['no_kwitansigr']);?></span></button></td>
                       
                          <td ><?php echo date('d-m-Y',strtotime($catat['tgl_kwitansigr']));?></td>
<!--                           <td ><?php echo $catat['id_pkb_jasa'];?></td> --> 
                      <td><button type="button" class="btn btn-link" id="<?php echo $catat['id_pkb_jasa']; ?>" onclick="open_pkb(idpkb='<?php echo $catat['id_pkb_jasa']; ?>');"><span><?php echo ($catat['id_pkb_jasa']);?></span></button></td>
                   
                          <td ><?php echo $catat['fk_no_chasis'];?></td>
                          <td ><?php echo $catat['fk_no_polisi'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo rupiah2($catat['total_paymentgr']);?></td>
                         <!-- <td ><?php //echo rupiah2($catat['total_ppn_kwitansigr']);?></td>
                          <td ><?php //echo rupiah2($catat['total_payment']);?></td>-->
                          <td >
                                        <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['no_kwitansigr']; ?>" onclick="cetak_kw(idkwitansigr='<?php echo $catat['no_kwitansigr']; ?>');"><span>Cetak</span></button>
                                        <?php 
                                        #CASH
                                            $sqlkwcash="SELECT no_bukti FROM t_cashgr WHERE no_ref='$catat[no_kwitansigr]' AND tipe_transaksi='Pelunasan' AND tgl_batal<>'0000-00-00 00:00:00'";
                                            $hkwcash=mysql_fetch_array(mysql_query($sqlkwcash));
                                            $lunas=$hkwcash['no_bukti'];

                                           $sqllunas="SELECT no_bukti FROM t_cashgr WHERE no_ref='$catat[no_kwitansigr]'";
                                           $hcekcash=mysql_fetch_array(mysql_query($sqllunas));
                                           $ada=$hcekcash['no_bukti'];
                                        #BANK
                                           $sqlkwcash2="SELECT no_bukti FROM t_cashgr WHERE no_ref='$catat[no_kwitansigr]' AND tipe_transaksi='Pelunasan' AND tgl_batal<>'0000-00-00 00:00:00'";
                                            $hkwcash2=mysql_fetch_array(mysql_query($sqlkwcash2));
                                            $lunas2=$hkwcash2['no_bukti'];

                                           $sqllunas2="SELECT no_bukti FROM t_cashgr WHERE no_ref='$catat[no_kwitansigr]'";
                                           $hcekcash2=mysql_fetch_array(mysql_query($sqllunas2));
                                           $ada2=$hcekcash2['no_bukti'];

                                           if($ada || $ada2){if($lunas || $lunas2){
                                        ?>
                                         <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['no_kwitansigr']; ?>" onclick="open_del(idkwitansigr='<?php echo $catat['no_kwitansigr']; ?>');"><span>Batal</span></button>
                                         <?php } }else{?>
                                          <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['no_kwitansigr']; ?>" onclick="open_del(idkwitansigr='<?php echo $catat['no_kwitansigr']; ?>');"><span>Batal</span></button>
                                        <?php  }?>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script>
             $('#tablekwitansigr').DataTable({
              "columnDefs": [
                  { "orderable": false, "targets": 10 }
                ]
            });
           
           function open_add(){
              $.ajax({
                    url: "kwitansigr/kwitansigr_add.php",
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAdd").html(ajaxData);
                        $("#ModalAdd").modal({backdrop: 'static',keyboard: false});
                      }
                    });
              }
            
             function open_del(x){
                                $.ajax({
                                    url: "kwitansigr/kwitansigr_del.php?idkwitansigr="+x,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDelete").html(ajaxData);
                                        $("#ModalDelete").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            };
                         
            function open_pkb(z){
                              $.ajax({
                                  url: "pkbjasa/pkbjasa_show.php?idpkb="+z,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalShow").html(ajaxData);
                                      $("#ModalShow").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
            function cetak_kw(q){
                              $.ajax({
                                  url: "kwitansigr/kwitansigr_print.php?no_kwitansigr="+q,
                                  type: "GET",
                                  success: function (ajaxData){
                                      $("#ModalKwPrint").html(ajaxData);
                                      $("#ModalKwPrint").modal({backdrop: 'static',keyboard: false});
                                  }
                              });
            };
            
      </script>