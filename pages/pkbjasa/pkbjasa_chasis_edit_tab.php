     <div id="ModalChasisEdit" class="modal posisi" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" >
    <div class="modal-dialog">
    <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalChasisEdit').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content" style="height:170x;">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Inventory Kendaraan</h4>
                    </div>

                  <div class="box">
                <table id="tableChasisEdit" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No Chasis</th>
                          <th>No Mesin</th>
                          <th>No Polisi</th>
                          <th>Customer</th>
                          <th></th>
                </tr>
                </thead>
                <tbody>
                  <?php
                 $j=1;
                                     $sqlcatat = "SELECT i.*,c.nama as nama,w.id_warna_kendaraan,w.nama as warna from t_inventory_bengkel i 
                                      LEFT JOIN t_customer c ON i.fk_customer=c.id_customer
                                      LEFT JOIN t_warna_kendaraan w ON i.fk_warna_kendaraan=w.id_warna_kendaraan
                                      ORDER BY no_chasis ASC";
                                     $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['no_chasis'];?></td>
                          <td ><?php echo $catat['no_mesin'];?></td>
                          <td ><?php echo $catat['no_polisi'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td>
                                        <button type="button" class="btn btn-default btn-circle" onclick="selectChasis('<?php echo $catat['no_chasis'];?>','<?php echo $catat['no_mesin'];?>','<?php echo $catat['no_polisi'];?>','<?php echo $swrn['id_warna_kendaraan'];?>','<?php echo $catat['nama'];?>','<?php echo $catat['fk_customer'];?>','<?php echo $catat['nama'];?>');">Pilih</button>

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
                $('#tableChasisEdit').DataTable();
               function selectChasis(a,b,c,d,e,f,g){
                              $("#chasise").val(a);
                              $("#mesine").val(b);
                              $("#polisie").val(c);
                              $("#warnae").val(d);
                              $("#warnanme").val(e);
                              $("#customere").val(f);
                              $("#customernme").val(g);
                              $("#ModalChasisEdit").modal('hide');
                      }; 
              </script>
<style>                      
  .posisi{
    margin-left:-33px;
    width:103%;
  }
</style>
