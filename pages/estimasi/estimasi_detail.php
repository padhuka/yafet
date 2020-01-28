<!-- general form elements disabled -->
   <?php

    include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';

    $idestimasi=explode('-',$_GET['idestimasi']);

    $sqles = "SELECT * FROM t_estimasi WHERE id_estimasi='$idestimasi[0]'";
    $hes = mysql_fetch_array(mysql_query($sqles));
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Edit Data Estimasi</h4>
                    </div>
				            <!-- form start -->
                   <div class="modal-body">
                    <br>
                   <div class="row">
                     <div class="col-sm-12">
                        <table id="estimasishow" class="table table-condensed table-bordered table-striped table-hover dataTable">
                          <td>
                         <th class="col-sm-6">
                        <tr> <th>Tgl Masuk</th> <td ><?php echo tampilTanggal(substr($hes['tgl'],0,10));?></td></tr>
                        <tr> <th>No Chasis</th> <td ><?php echo $hes['fk_no_chasis'];?></td></tr>
                        <tr> <th>No Mesin</th>  <td ><?php echo $hes['fk_no_mesin'];?></td></tr>
                        <tr> <th>No Polisi</th> <td ><?php echo $hes['fk_no_polisi'];?></td></tr>
                        <tr> <th>No Warna</th>   <td ><?php echo $idestimasi[1];?></td> </tr>
                        <tr> <th>kategori</th>   <td ><?php echo $hes['kategori'];?></td> </tr>
                        <tr> <th>Asuransi</th>   <td ><?php echo $hes['fk_no_polisi'];?></td> </tr>
                          <tr> <th>KM Masuk</th>   <td ><?php echo $hes['km_masuk'];?></td> </tr>
                        </th>
                       </td>
                        </table>

                     </div>
                   </div>             
                  </div>                  
                <div id="tableestimasidetail"></div>    
                 <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">
                        <button type="button" class=" btn btn-default btn-circle" name="part" onclick="parte('<?php echo $idestimasi[0];?>');">&nbsp;Part&nbsp;</button>
                                    <button type="button" class=" btn btn-default btn-circle" name="panel" onclick="panele('<?php echo $idestimasi[0];?>');">Panel</button>
                     
                        </h4>
                    </div>            
               
                <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">
                        <a href="estimasi/estimasi_cetak.php?idestimasi=<?php echo $idestimasi;?>" target="blank"><button type="button" class=" btn btn-default btn-circle" name="close" onclick="cetak();">Print</button></a>
                                    <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Simpan&nbsp;</button>
                     
                        </h4>
                    </div>
        </div>
</div>
        <div id="ModalAddPanelx" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
        <div id="ModalAddPartx" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
<style>
    .modal-content {
    height: 400px;
  }
</style>
        <script type="text/javascript">
            $(document).ready(function (){
                 var idestimasie='<?php echo $idestimasi[0];?>';
                 $("#tableestimasidetail").load('estimasi/estimasi_detail_tab.php?idestimasi='+idestimasie);
            });

            function panele(x){

              $.ajax({
                    url: "estimasi/panel_tab.php?idestimasine="+x,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAddPanelx").html(ajaxData);
                        $("#ModalAddPanelx").modal({backdrop: 'static',keyboard: false});
                      }
                    });
              }

            function parte(y){
              $.ajax({
                    url: "estimasi/part_tab.php?idestimasine="+y,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAddPartx").html(ajaxData);
                        $("#ModalAddPartx").modal('show',{backdrop: 'true'});
                      }
                    });
              }
        </script>