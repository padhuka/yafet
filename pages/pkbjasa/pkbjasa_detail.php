<!-- general form elements disabled -->
   <?php

    include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';

    $idpkbjasa=explode('-',$_GET['idpkbjasa']);  
    $idpkbjasa=$idpkbjasa['0'];
    $sqles = "SELECT * FROM t_pkb_jasa i
    LEFT JOIN t_customer c ON i.fk_customer=c.id_customer
    WHERE i.id_pkb_jasa='$idpkbjasa'";
    $hes = mysql_fetch_array(mysql_query($sqles));
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data PKB Jasa - <?php echo $idpkbjasa;?></h4>
                    </div>
                    
                    <div class="modal-body bodypkbjasadetail">
                    <br>

                   <div class="row">
                     <div class="col-sm-12">
                        <table id="pkbjasashow" class="dataTable table table-condensed table-bordered table-striped table-hover">
                          <td>
                         <th class="col-sm-6">
                        <tr> <th width="5%">Tgl Masuk</th> <td ><?php echo tampilTanggal(substr($hes['tgl'],0,10));?></td></tr>
                        <tr> <th>No Polisi</th> <td ><?php echo $hes['nama'];?></td></tr>
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
                <div id="tablepkbjasadetail"></div>                
                <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">
                                    <button type="button" class=" btn btn-default btn-circle" name="jasa" onclick="jasae('<?php echo $idpkbjasa;?>'); $('#ModalAddjasax').modal('show');">&nbsp;Tambah Paket Jasa&nbsp;</button>
                                    <button type="button" class=" btn btn-default btn-circle" name="jasay" onclick="jasaey('<?php echo $idpkbjasa;?>'); $('#ModalAddjasay').modal('show');">&nbsp;Tambah Jasa&nbsp;</button>
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
        <div id="ModalAddjasax" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
        <div id="ModalAddjasay" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>

        <script type="text/javascript">
            $(document).ready(function (){
                 var idpkbjasae='<?php echo $idpkbjasa;?>';
                 $("#tablepkbjasadetail").load('pkbjasa/pkbjasa_detail_tab.php?idpkbjasa='+idpkbjasae);
            });

            function jasae(y){
              $.ajax({
                    url: "pkbjasa/jasa_tab.php?idpkbjasane="+y,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAddjasax").html(ajaxData);
                        $("#ModalAddjasax").modal('show',{backdrop: 'true'});
                      }
                    });
              }

              function jasaey(y){
              $.ajax({
                    url: "pkbjasa/jasay_tab.php?idpkbjasane="+y,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAddjasay").html(ajaxData);
                        $("#ModalAddjasay").modal('show',{backdrop: 'true'});
                      }
                    });
              }
        </script>
        <style>
              .bodypkbjasadetail{
                200px;
              }
        </style>