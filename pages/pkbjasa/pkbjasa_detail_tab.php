		      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php'; 
                  $idpkbjasa=$_GET['idpkbjasa'];
      ?>

        <table id="paketjasadetailxx2" class="dataTable table table-condensed table-bordered table-striped table-hover"  width="90%" align="center">
                <thead class="thead-light">
                <tr>
                          <th>Nama Jasa</th>
                          <th>Nama Paket</th>
                          <th>Harga</th>
                          <th>Diskon</th>
                          <th>Sub Total</th>
                          <th></th>                          
                </tr>
                </thead>
                <tbody>  
                <?php 
                  $sqlest= "SELECT *, B.nama AS nmjasa, C.nama AS nmpaket FROM t_pkb_jasa_detail A
                  LEFT JOIN t_jasa B ON B.id_jasa=A.fk_jasa
                  LEFT JOIN t_paket_jasa C ON C.id_paket_jasa=A.fk_paket_jasa
                  WHERE A.fk_pkb_jasa = '$idpkbjasa'";
                  //echo $sqlest;
                  $qest=mysql_query($sqlest);
                  //$totals=0;
                  while($hest= mysql_fetch_array($qest)){;
                    //$totals=$totals+$hest['harga_jual_paket_jasa'];
                    $totals=$hest['total_harga_paket'];
                ?>              
                        <tr>
                          <td><?php echo $hest['nmjasa'];?></td>
                          <td><?php echo $hest['nmpaket'];?></td>
                          <td><?php echo rupiah2($hest['harga_jual_jasa']);?></td>
                          <td><?php echo rupiah2($hest['diskon_paket_jasa']);?></td>
                          <td><?php echo rupiah2($hest['harga_jual_paket_jasa']);?></td>
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
            
        