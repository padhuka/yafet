		      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
                  $id_paket_jasa= $_GET['id_paket_jasa'];
      ?>

        <table id="paketjasadetailxx2" class="dataTable table table-condensed table-bordered table-striped table-hover"  width="90%" align="center">
                <thead class="thead-light">
                <tr>
                          <th>Nama</th>
                          <th>Harga</th>
                          <th>Diskon(%)</th>
                          <th>Sub Total</th>
                          <th><button type="button" class=" btn btn-default btn-circle" name="jasa" onclick="tambahjasa('<?php echo $id_paket_jasa;?>');">&nbsp;Tambah&nbsp;</button></th>                          
                </tr>
                </thead>
                <tbody>  
                <?php 
                  $sqlest= "SELECT * FROM t_paket_jasa_detail A
                  LEFT JOIN t_jasa B ON B.id_jasa=A.fk_jasa
                  WHERE A.fk_paket_jasa = '$id_paket_jasa'";
                  $qest=mysql_query($sqlest);
                  $totals=0;
                  while($hest= mysql_fetch_array($qest)){;
                    $totals=$totals+$hest['harga_total_paket_jasa'];
                ?>              
                        <tr>
                          <td><?php echo $hest['nama'];?></td>
                          <td><?php echo rupiah2($hest['harga_jual_paket_jasa']);?></td>
                          <td><?php echo rupiah2($hest['diskon_paket_jasa']);?></td>
                          <td><?php echo rupiah2($hest['harga_total_paket_jasa']);?></td>
                          <td>
                            <button type="button" class="btn btn-default btn-circle" id="<?php echo $catat['fk_jasa']; ?>" onclick="open_deljasa(iddeljasa='<?php echo $hest['fk_jasa'];?>');"><span>Hapus</span></button>
                          </td>
                        </tr>    
                  <?php } ?>       	
                </tfoot>
              </table>
              <input type="hidden" id="hartote" value="<?php echo $totals;?>">
        <script>$('#paketjasadetailxx2').DataTable();

         function tambahjasa(y){
              $.ajax({
                    url: "paketjasa/jasa_add.php?id_paket_jasane="+y,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAddjasax").html(ajaxData);
                        $("#ModalAddjasax").modal('show',{backdrop: 'true'});
                      }
                    });
              }

             function open_deljasa(){
                                $.ajax({
                                    url: "paketjasa/jasa_del.php?fk_jasa="+iddeljasa,
                                    type: "GET",
                                    success: function (ajaxData){
                                        $("#ModalDeleteJasa").html(ajaxData);
                                        $("#ModalDeleteJasa").modal({backdrop: 'static',keyboard: false});
                                    }
                                });
            }
            </script>
            
        