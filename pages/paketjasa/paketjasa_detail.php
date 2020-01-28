<!-- general form elements disabled -->
   <?php

    include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';

    //$id_paket_jasa=explode('-',$_GET['id_paket_jasa']);
    $id_paket_jasa=$_GET['id_paket_jasa'];

    $sqles = "SELECT * FROM t_paket_jasa WHERE id_paket_jasa='$id_paket_jasa'";
    $hes = mysql_fetch_array(mysql_query($sqles));
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button"  onclick="$('#ModalEdit').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Paket Jasa</h4>
                    </div>
				            <!-- form start -->
                   <div class="modal-body">
                    <br>
                   <div class="row">
                     <div class="col-sm-12">
                        <table id="paketjasashow" class="table table-condensed table-bordered table-striped table-hover dataTable">
                          <td>
                         <th class="col-sm-6">
                        <tr> <th class="col-sm-2">Kode</th> <td ><?php echo $hes['id_paket_jasa'];?></td></tr>
                        <tr> <th>Nama Paket</th>  <td ><?php echo $hes['nama'];?></td></tr>
                        <tr> <th>Harga Paket</th> <td><span id="hartot"><?php echo rupiah2($hes['total_harga_paket']);?></span></td></tr>
                        </th>
                       </td>
                        </table>

                     </div>
                   </div>             
                  </div>                  
                
                 <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Jasa Detail</h4>
                    </div>            
                <div id="tablepaketjasadetail"></div>    
                <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">
                        <a href="paketjasa/paketjasa_cetak.php?id_paket_jasa=<?php echo $id_paket_jasa;?>" target="blank"><button type="button" class=" btn btn-default btn-circle" name="close" onclick="cetak();">Print</button></a>
                                    <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Simpan&nbsp;</button>
                     
                        </h4>
                    </div>
        </div>
        <div id="ModalAddPanelx" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
        <div id="ModalAddjasax" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
        <div id="ModalDeleteJasa" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
<style>
    .modal-content {
    height: 400px;
  }
</style>
        <script type="text/javascript">
            $(document).ready(function (){
                 var id_paket_jasae='<?php echo $id_paket_jasa;?>';
                 $("#tablepaketjasadetail").load('paketjasa/paketjasa_detail_tab.php?id_paket_jasa='+id_paket_jasae);
            });

            function panele(x){

              $.ajax({
                    url: "paketjasa/panel_tab.php?id_paket_jasane="+x,
                    type: "GET",
                      success: function (ajaxData){
                        $("#ModalAddPanelx").html(ajaxData);
                        $("#ModalAddPanelx").modal({backdrop: 'static',keyboard: false});
                      }
                    });
              }

           
        </script>