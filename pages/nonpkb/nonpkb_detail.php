<!-- general form elements disabled -->
   <?php

    include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';

    $idnonpkb=explode('-',$_GET['idnonpkb']);

    $sqles = "SELECT * FROM t_nonpkb WHERE id_nonpkb='$idnonpkb[0]'";
    $hes = mysql_fetch_array(mysql_query($sqles));
   ?>
<<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Non PKB</h4>
                    </div>
                    
                    <div class="modal-body bodynonpkbdetail">
                    <br>

                   <div class="row">
                     <div class="col-sm-12">
                        <table id="nonpkbshow" class="dataTable table table-condensed table-bordered table-striped table-hover">
                          <td>
                         <th class="col-sm-6">
                        <tr> <th width="5%">Tgl Masuk</th> <td ><?php echo tampilTanggal(substr($hes['tgl'],0,10));?></td></tr>
                        <tr> <th>No Polisi</th> <td ><?php echo $hes['fk_no_polisi'];?></td></tr>
                        <tr> <th>No Chasis</th> <td ><?php echo $hes['fk_no_chasis'];?></td></tr>
                        <tr> <th>No Mesin</th>  <td ><?php echo $hes['fk_no_mesin'];?></td></tr>
                        
                        </th>
                       </td>
                        </table>

                     </div>
                   </div>
                    <hr>
                                           
                  </div>                  
                <div id="tablenonpkbdetail"></div>                
                <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">
                                    <button type="button" class=" btn btn-default btn-circle" name="cuci" onclick="cucie('<?php echo $idnonpkb[0];?>'); $('#ModalAddcucix').modal('show');">&nbsp;Cuci&nbsp;</button>
                                    <button type="button" class=" btn btn-default btn-circle" name="salon" onclick="salone('<?php echo $idnonpkb[0];?>');">Salon</button>
                        </h4>
                </div> 
                <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">
                                    <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Simpan&nbsp;</button>
                        </h4>
                </div>  
                <br>
        </div>
</div>
        <div id="ModalAddsalonx" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
        <div id="ModalAddcucix" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>

        <script type="text/javascript">
            $(document).ready(function (){
                 var idnonpkbe='<?php echo $idnonpkb[0];?>';
                 $("#tablenonpkbdetail").load('nonpkb/nonpkb_detail_tab.php?idnonpkb='+idnonpkbe);
            });

            function salone(x){

              $.ajax({
                    url: "nonpkb/salon_tab.php?idnonpkbne="+x,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAddsalonx").html(ajaxData);
                        $("#ModalAddsalonx").modal({backdrop: 'static',keyboard: false});
                      }
                    });
              }

            function cucie(y){
              $.ajax({
                    url: "nonpkb/cuci_tab.php?idnonpkbne="+y,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAddcucix").html(ajaxData);
                        $("#ModalAddcucix").modal('show',{backdrop: 'true'});
                      }
                    });
              }
        </script>
        <style>
              .bodynonpkbdetail{
                200px;
              }
        </style>