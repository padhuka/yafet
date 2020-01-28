<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idpkb= $_GET['idpkb'];
 //   $sqlpan= "SELECT * FROM t_pkb WHERE id_pkb='$idpkb'";
 //  $catat= mysql_fetch_array(mysql_query($sqlpan));
  
   ?>
    <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_pkb e 
                                                  left join t_customer c
                                                  on e.fk_customer=c.id_customer
                                                  where e.id_pkb='$idpkb'";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data PKB</h4>
                    </div>
                 
                    <div class="modal-body"><br>
                          <div class="row">
                              <div class="col-sm-6">
                                  <table id="pkbshow" class="dataTable table table-condensed table-bordered table-striped table-hover">
                                        <td>
                                          <th class="col-sm-6">
                                          <tr> <th>No pkb</th> <td ><?php echo $catat['id_pkb'];?></td></tr>
                                          <tr> <th>Tgl Masuk</th> <td ><?php echo $catat['tgl'];?></td></tr>
                                          <tr> <th>No Chasis</th>  <td ><?php echo $catat['fk_no_chasis'];?></td></tr>
                                          <tr> <th>No Mesin</th> <td ><?php echo $catat['fk_no_mesin'];?></td></tr>
                                          <tr> <th>No Polisi</th>   <td ><?php echo $catat['fk_no_polisi'];?></td> </tr>
                                          </th>
                                        </td>
                                  </table>
                              </div>

                                <div class="col-sm-6">
                                  <table id="pkbshow" class="dataTable table table-condensed table-bordered table-striped table-hover">
                                            <td>
                                          <th class="col-sm-6">
                                          <tr> <th>Kategori </th> <td ><?php echo $catat['kategori'];?></td></tr>
                                          <tr> <th>KM Masuk</th> <td ><?php echo $catat['km_masuk'];?></td></tr>
                                          <tr> <th>Asuransi</th>  <td ><?php echo $catat['fk_asuransi'];?></td></tr>
                                          <tr> <th>Nama Customer</th> <td ><?php echo $catat['nama'];?></td></tr>
                                          <tr> <th>Telp</th>   <td ><?php echo $catat['no_telp'];?></td> </tr>
                                          </th>
                                        </td>
                                  </table>
                                </div>

                            </div>
                      </div>
                
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data PKB</h4>
                    </div>
                    <div class="modal-body"><br>
                      <div class="row">
                       <div class="col-sm-12">
                       <table id="pkbshow" class="dataTable table table-condensed table-bordered table-striped table-hover">
                            <td >
                              <th class="col-sm-2">
                              <tr> 
                                  <th>Nilai Panel</th><td><?php echo rupiah2($catat['total_gross_harga_panel']);?></td> 
                                  <th>Disc</th><td ><?php echo rupiah2($catat['total_diskon_rupiah_panel']);?></td>
                                  <th>Total Netto</th> <td><?php echo rupiah2($catat['total_netto_harga_panel']);?></td>
                              </tr>
                              
                              <tr> 
                                <th>Nilai Part</th><td><?php echo rupiah2($catat['total_gross_harga_part']);?></td>
                                <th>Disc</th> <td><?php echo rupiah2($catat['total_diskon_rupiah_part']);?></td>
                                <th>Total Netto</th> <td><?php echo rupiah2($catat['total_netto_harga_part']);?></td>
                              </tr>
                              <tr class="total"> 
                                <th>Total Gross</th><td><?php echo rupiah2($catat['total_gross_harga_jasa']);?></td>
                                <th>Total Diskon</th> <td><?php echo rupiah2($catat['total_diskon_rupiah_jasa']);?></td>
                                <th>Total Netto</th> <td><?php echo rupiah2($catat['total_netto_harga_jasa']);?></td>
                              </tr>

                              </th>
                            </td>
                            </table>
                      <?php }?>
                           </div>
                      </div>

                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">
                                    <button type="button" class=" btn btn-default btn-circle" name="part" onclick="partshow('<?php echo $idpkb;?>');">&nbsp;Part&nbsp;</button>
                                    <button type="button" class=" btn btn-default btn-circle" name="panel" onclick="panelshow('<?php echo $idpkb;?>');">Panel</button>
                        </h4>
                    </div>

                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">
                                    <button type="button" class=" btn btn-default btn-circle" name="close" onclick="$('#ModalShow').modal('hide');">Close</button>
                        </h4>
                    </div>

               </div>
           </div>
           </div>      
           <div id="ModalPanelShow" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
           <div id="ModalPartShow" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
<script type="text/javascript">
  
            function partshow(y){
              $.ajax({
                    url: "pkb/part_show_tab.php?idpkbne="+y,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalPartShow").html(ajaxData);
                        $("#ModalPartShow").modal({backdrop: 'static', keyboard:false});
                      }
                    });
              }
              function panelshow(z){
              $.ajax({
                    url: "pkb/panel_show_tab.php?idpkbne="+z,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalPanelShow").html(ajaxData);
                        $("#ModalPanelShow").modal({backdrop: 'static', keyboard:false});
                      }
                    });
              }

  
</script>        