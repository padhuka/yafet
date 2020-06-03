<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    $idestimasi=$_GET['idestimasi'];
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalAddPanel').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Tambah Estimasi Panel</h4>
                    </div>

                    <div class="modal-body">
                    <br>
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formPanel">
                       <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                  <td class="sorting_1" width="10%">Nama</td>
                  <td width="40%">
                    <div class="col-sm-10">
                            <input type="hidden" class="form-control" id="panel" name="panel" required>
				                    <input type="text" class="form-control" id="panelnm" name="panelnm" readonly required  style="width:100%;">
				                  </div><button type="button" class=" btn btn-default btn-circle btn-md" data-toggle="modal" data-target="#myModal" onclick="pilihpanel();">Pilih</button>
                  </td>
                  <td  width="10%">Harga</td>
                  <td  width="50%">
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="hargapokok" name="hargapokok" required  onchange="kali();" style="width:100%;">
                    </div>
                  </td>
                </tr>

                <tr role="row" class="even">
                 <td class="sorting_1" width="15%">Diskon</td>
                  <td width="30%">
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="diskon" name="diskon" required onchange="kali();" style="width:100%;">                           
                    </div>%
                  </td>
                  <td  width="10%">Harga Total</td>
                  <td  width="50%"><div class="col-sm-10">
                     <input type="text" class="form-control" id="hargatotal" name="hargatotal" required readonly style="width:100%;">
                    </div>                    
                  </td>
               </tr>
                <tr role="row" class="odd"  id="showAsuransi">
                 <td class="sorting_1" width="15%">Mark</td>
                  <td width="30%"> 
                              <div class="col-sm-10">
                              <input type="checkbox" id="cek" name="cek" onclick="cekb();">
                              <input type="hidden" class="form-control" id="mark" name="mark" readonly>
                              </div>
                  </td>
                  <td  width="10%"></td>
                  <td  width="50%"><div class="col-sm-10">
                    </div>                    
                  </td>
               </tr>
               <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave">
                 <input type="hidden" class="form-control" id="idestimasi" name="idestimasi" value="<?php echo $idestimasi?>" required>
				                    <button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalAddPanel').modal('hide');">&nbsp;Batal&nbsp;</button>
                </td></tr>
                </tbody>
              </table>  

				            </form>
				          </div>
				</div>
</div>
<?php include_once 'panel_pilih.php';?>
<script type="text/javascript">
  $('#mark').val('0')
  function pilihpanel(){ 
    $("#ModalPilihPanel").modal({backdrop: 'static', keyboard:false});   
  }
  function cekb(){
    if(cek.checked==true){$('#mark').val('1');}else{$('#mark').val('0');}
  }
  function kali(){
    var hasil= $("#hargapokok").val()-($("#diskon").val()*$("#hargapokok").val()/100);
    $("#hargatotal").val(hasil);
    //alert(hasil);
  }
	$(document).ready(function (){
                      $("#formPanel").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'estimasi/panel_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){  
                                                      //var hsl=data.trim();
                                                      //alert(hsl);
                                                      //alert('estimasi/estimasi_detail_tab.php?idestimasi=<?php //echo $idestimasi;?>');
			                                                $("#tablepanel").load('estimasi/panel_load.php?idestimasi=<?php echo $idestimasi;?>');

                                                      
                                                      $("#tableestimasi").load('estimasi/estimasi_load.php');
                                                                      $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAddPanel').modal('hide');
                                                    $("#tableestimasidetail").load('estimasi/estimasi_detail_tab.php?idestimasi=<?php echo $idestimasi;?>');
			                                            }
                                                      
                                                });
                      });
    });

</script>