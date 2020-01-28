		      <?php
            include_once '../../lib/config.php';
            include_once '../../lib/fungsi.php';
      ?>

        <table width="60%" id="pkbjasaxx2" class="dataTable table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Item</th>
                          <th>Gros</th>
                          <th>Disc</th>
                          <th>Netto</th>                       
                </tr>
                </thead>
                <tbody>  
                <?php 
                  $idpkbjasa= $_GET['idpkbjasa'];
                  $sqlest= "SELECT * FROM t_pkb_jasa WHERE id_pkb_jasa = '$idpkbjasa'";
                  $hest= mysql_fetch_array(mysql_query($sqlest));
                ?>              
                        <tr>
                          <td style="font-weight: bold;">Jasa</td>
                          <td><?php echo rupiah2($hest['total_gross_harga_cuci']);?></td>
                          <td><?php echo rupiah2($hest['total_diskon_rupiah_cuci']);?></td>
                          <td><?php echo rupiah2($hest['total_netto_harga_cuci']);?></td>
                        </tr>
                        <!--<tr>
                          <td style="font-weight: bold;">Salon</td>
                          <td><?php //echo rupiah2($hest['total_gross_harga_salon']);?></td>
                          <td><?php //echo rupiah2($hest['total_diskon_rupiah_salon']);?></td>
                          <td><?php //echo rupiah2($hest['total_netto_harga_salon']);?></td>
                        </tr> -->
                        <tr>
                          <td style="font-weight: bold;">Total</td>                          
                          <td><?php echo rupiah2($hest['total_gross_harga_cuci']+$hest['total_gross_harga_salon']);?></td>
                          <td><?php echo rupiah2($hest['total_diskon_rupiah_cuci']+$hest['total_diskon_rupiah_salon']);?></td>
                          <td style="font-weight: bold;"><?php echo rupiah2($hest['total_netto_harga_cuci']+$hest['total_netto_harga_salon']);?></td>
                        </tr>                    	
                </tfoot>
              </table>
              <script>
            $('#pkbjasaxx').DataTable();
        </script>