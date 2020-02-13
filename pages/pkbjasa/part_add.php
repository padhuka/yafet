<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    $idpkbjasa=$_GET['idpkb'];
   ?>

<div class="modal-dialog dialogjasaadd">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalAddparty').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data PKB - <?php echo $idpkbjasa; ?> - Part</h4>
                    </div>

                    <div class="modal-body bodyjasaadd">
                    <br>
				            <form class="form-horizontal" enctype="multijasa/form-data" novalidate id="formpart">
                        <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                          <thead>
                          
                          </thead>
                          <tbody>
                            <tr role="row" class="odd">
                              <td class="sorting_1" width="20%">Nama</td>
                              <td width="30%"><div class="col-sm-10" style="margin-left:-15px;">
                                  <input type="hidden" class="form-control" id="part" name="part" required>
				                          <input type="text" class="form-control" id="partnm" name="partnm" readonly required>            
                                  </div>
                            <button type="button" class="btn btn-default btn-circle" data-toggle="modal" data-target="#myModal" onclick="pilihpart();">Pilih</button>
                              </td>
                              <td  width="20%"></td>
                              <td  width="50%">
                                </td>
                              </td>
                            </tr>
                            
                                
                              <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Harga Total</td>
                                <td width="50%">                                      
                            <input type="text" class="form-control" id="hargatotalpart" name="hargatotalpart" required readonly>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>
                              <br>
                              
                        </table>
                          <table width="100%">
                            <tr><td><div id="tablepilihpartdetaily"></div></td></tr>
                          </table>
                        <table width="100%">
                            <tr><td colspan="4">&nbsp;</td></tr>
                              <tr><td colspan="4" align="center" class="bgsave">
                                      <input type="hidden" class="form-control" id="idpkbjasap" name="idpkbpartp" value="<?php echo $idpkbjasa?>" required>
				                    <button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalAddparty').modal('hide');">&nbsp;Batal&nbsp;</button>
                              </td></tr>
                            
                        </table>

				            </form>
				          </div>
                  
                  
				</div>
</div>
<?php include_once 'part_pilih.php';?>
<script type="text/javascript">

  function pilihpart(){ 
    $("#ModalPilihpart").modal({backdrop: 'static', keyboard:false});   
  }
    
	$(document).ready(function (){                

                      $("#formpart").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)        
                            var id_part= $("#part").val();              ;
                            //alert('pkbjasa/part_add_save.php?id_jasa='+id_paket_jasa+'&idpkbjasa=<?php echo $idpkbjasa;?>');
                            //exit();
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'pkbjasa/part_add_save.php?id_part='+id_part+'&idpkbjasa=<?php echo $idpkbjasa;?>',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){  
                                                      var hsl=data.trim();
                                                      //alert(hsl);                                                   
                                                      if (hsl=='Data Sudah Ada'){
                                                        alert(hsl);
                                                        return false;
                                                      }
                                                      $("#tablepkbjasa").load('pkbjasa/pkbjasa_load.php');
			                                                $("#pkbjasa").load('pkbjasa/part_load.php?idpkbjasa=<?php echo $idpkbjasa;?>');
                                                         $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAddparty').modal('hide');
                                                            //$('#ModalAddjasax').modal('hide');
                                                            $("#tablepart").load('pkbjasa/part_load.php?idpkbjasa=<?php echo $idpkbjasa;?>');
                                                            $("#tablepkbjasa").load('pkbjasa/pkbjasa_load.php');
                                                            $("#tablepkbjasadetail").load('pkbjasa/pkbjasa_detail_tab.php?idpkbjasa=<?php echo $idpkbjasa;?>');
                                                            $("#ModalpkbjasaDet").html(ajaxData);
                                                            $("#ModalpkbjasaDet").modal({backdrop: 'static', keyboard:false});
			                                            }
                                                      
                                                });
                      });
    });

</script>
<style>
.dialogjasaadd{width:72%;}
.bodyjasaadd{height:450px;}
  
</style>