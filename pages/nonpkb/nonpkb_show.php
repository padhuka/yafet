<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idnonpkb= $_GET['idnonpkb'];
 //   $sqlpan= "SELECT * FROM t_nonpkb WHERE id_nonpkb='$idnonpkb'";
 //  $catat= mysql_fetch_array(mysql_query($sqlpan));
    $j=1;
                                    $sqlcatat = "SELECT * FROM t_nonpkb e 
                                                  left join t_customer c
                                                  on e.fk_customer=c.id_customer
                                                  where e.id_nonpkb='$idnonpkb'";
                                    $rescatat = mysql_query( $sqlcatat );
                                    $catat = mysql_fetch_array( $rescatat );
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Non PKB - <?php echo $catat['id_nonpkb'];?></h4>
                    </div>
                <div class="modal-body">
                      <br>
                      <div class="row">
                       <div class="col-sm-6">
                       <table id="nonpkbshow" class="dataTable table table-condensed table-bordered table-striped table-hover">
                       <td>
                         <th class="col-sm-6">
                        <tr> <th>No Non PKB</th> <td ><?php echo $catat['id_nonpkb'];?></td></tr>
                        <tr> <th>Tgl Masuk</th> <td ><?php echo $catat['tgl'];?></td></tr>
                        <tr> <th>No Chasis</th>  <td ><?php echo $catat['fk_no_chasis'];?></td></tr>
                        <tr> <th>No Mesin</th> <td ><?php echo $catat['fk_no_mesin'];?></td></tr>
                        <tr> <th>No Polisi</th>   <td ><?php echo $catat['fk_no_polisi'];?></td> </tr>
                        </th>
                       </td>
                      </table>
                           </div>
                         

                      </div><br>

                        <h4 class="modal-title" id="myModalLabel">Nilai Data Non PKB</h4>
                      <div class="row">
                       <div class="col-sm-12">
                       <table id="nonpkbshow" class="dataTable table table-condensed table-bordered table-striped table-hover">
                       <td >
                         <th class="col-sm-2">
                        <tr> 
                            <th>Cuci</th><td><?php echo rupiah2($catat['total_gross_harga_cuci']);?></td> 
                            <th>Disc</th><td ><?php echo rupiah2($catat['total_diskon_rupiah_cuci']);?></td>
                            <th>Total Netto</th> <td><?php echo rupiah2($catat['total_netto_harga_cuci']);?></td>
                        </tr>
                        
                        <tr> 
                          <th>Salon</th><td><?php echo rupiah2($catat['total_gross_harga_salon']);?></td>
                          <th>Disc</th> <td><?php echo rupiah2($catat['total_diskon_rupiah_salon']);?></td>
                          <th>Total Netto</th> <td><?php echo rupiah2($catat['total_netto_harga_salon']);?></td>
                        </tr>
                        <tr class="total"> 
                          <th>Total Gross</th><td><?php echo rupiah2($catat['total_gross_harga_salon']);?></td>
                          <th>Total Diskon</th> <td><?php echo rupiah2($catat['total_diskon_rupiah_salon']);?></td>
                          <th>Total Netto</th> <td><?php echo rupiah2($catat['total_netto_harga_salon']);?></td>
                        </tr>

                        </th>
                       </td>
                      </table>
                           </div>
                      </div><br>
                   <h4 class="modal-title" id="myModalLabel">
                                    <button type="button" class=" btn btn-default btn-circle" name="Cuci" onclick="Cucishow('<?php echo $idnonpkb;?>');">&nbsp;Cuci&nbsp;</button>
                                    <button type="button" class=" btn btn-default btn-circle" name="Salon" onclick="Salonshow('<?php echo $idnonpkb;?>');">Salon</button>
                    </h4><br>
                   <h4 class="modal-title" id="myModalLabel">
                                    <button type="button" class=" btn btn-default btn-circle" name="close" onclick="$('#ModalShow').modal('hide');">Close</button>
                   </h4>
               </div>
           </div>
           </div>      
           <div id="ModalSalonShow" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
           <div id="ModalCuciShow" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
<script type="text/javascript">
  
            function Cucishow(y){
              $.ajax({
                    url: "nonpkb/cuci_show_tab.php?idnonpkbne="+y,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalCuciShow").html(ajaxData);
                        $("#ModalCuciShow").modal({backdrop: 'static', keyboard:false});
                      }
                    });
              }
              function Salonshow(z){
              $.ajax({
                    url: "nonpkb/salon_show_tab.php?idnonpkbne="+z,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalSalonShow").html(ajaxData);
                        $("#ModalSalonShow").modal({backdrop: 'static', keyboard:false});
                      }
                    });
              }

  
</script>        