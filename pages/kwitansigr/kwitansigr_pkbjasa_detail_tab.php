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
                  $totals=0;
                  while($hest= mysql_fetch_array($qest)){;
                    //$totals=$totals+$hest['harga_jual_paket_jasa'];
                    $totals=$hest['harga_jual_paket_jasa']+$totals;
                ?>              
                        <tr>
                          <td><?php echo $hest['nmjasa'];?></td>
                          <td><?php echo $hest['nmpaket'];?></td>
                          <td><?php echo rupiah2($hest['harga_jual_jasa']);?></td>
                          <td><?php echo rupiah2($hest['diskon_paket_jasa']);?></td>
                          <td><?php echo rupiah2($hest['harga_jual_paket_jasa']);?></td>                         
                        </tr>    
                  <?php } ?>       	
                        
                </tfoot>
              </table>
             <table align="center" width="90%"><tr><td width="80%" align="right"><strong>Total&nbsp;&nbsp;&nbsp;</td><td><?php echo rupiah2($totals);?></strong></td></tr></table>
              <input type="text" id="hartote" name="hartote" value="<?php echo $totals;?>">
        
        