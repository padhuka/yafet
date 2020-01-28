<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    $id_paket_jasane=$_GET['id_paket_jasane'];
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalAddjasax').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Tambah Jasa</h4>
                    </div>

                    <div class="modal-body">
                    <br>
				            <form class="form-horizontal" enctype="multijasa/form-data" novalidate id="formjasa">
                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                  <td class="sorting_1" width="10%">Nama</td>
                  <td width="40%">
                    <div class="col-sm-10">
                            <input type="hidden" class="form-control" id="jasa" name="jasa" required>
				                    <input type="text" class="form-control" id="jasanm" name="jasanm" readonly required style="width:100%;">
                    </div>
                            <button type="button" class=" btn btn-default btn-circle btn-md" data-toggle="modal" data-target="#myModal" onclick="pilihjasa();">Pilih</button>
                  </td>
                  <td  width="10%">Harga</td>
                  <td  width="50%">
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="hargapokokp" name="hargapokokp" required  onchange="kalip();" style="width:100%;" readonly>
                    </div>
                  </td>
                </tr>

                <tr role="row" class="even">
                 <td class="sorting_1" width="15%">Diskon</td>
                  <td width="30%">
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="diskonp" name="diskonp" required onchange="kalip();" style="width:100%;" readonly>                           
                    </div>%
                  </td>
                  <td  width="10%">Harga Total</td>
                  <td  width="50%"><div class="col-sm-10">
                     <input type="text" class="form-control" id="hargatotalp" name="hargatotalp" required readonly style="width:100%;">
                    </div>                    
                  </td>
               </tr>               
               
              
               <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave">
                 <input type="text" class="form-control" id="id_paket_jasanep" name="id_paket_jasanep" value="<?php echo $id_paket_jasane?>" required>
				                    <button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalAddjasax').modal('hide');">&nbsp;Batal&nbsp;</button>
                </td></tr>
                </tbody>
              </table>  
				            </form>
				          </div>
				</div>
</div>
<?php include_once 'jasa_pilih.php';?>
<script type="text/javascript">
  function pilihjasa(){ 
    $("#ModalPilihjasa").modal({backdrop: 'static', keyboard:false});   
  }
  function kalip(){
    var hasil= ($("#hargapokokp").val()-($("#diskonp").val()*$("#hargapokokp").val()/100))*$("#qty").val();
    $("#hargatotalp").val(hasil);
    //alert(hasil);
  }
  function cekbp(){
    if(cekp.checked==true){$('#markp').val('1');}else{$('#markp').val('0');}
  }
	$(document).ready(function (){
                      $("#formjasa").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'paketjasa/jasa_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){  
                                                      var hsl=data.trim();
                                                      if (hsl){
                                                        alert(hsl);
                                                      }else{
                                                          //alert('paketjasa/paketjasa_detail_tab.php?id_paket_jasane=<?php //echo $id_paket_jasane;?>');
                                                          $("#tablepaketjasa").load('paketjasa/jasa_load.php?id_paket_jasa=<?php echo $id_paket_jasane;?>');
                                                                          $('.modal-body').css('opacity', '');

                                                                alert('Data Berhasil Disimpan');
                                                                $('#ModalAddjasax').modal('hide');
                                                                $("#tablepaketjasadetail").load('paketjasa/paketjasa_detail_tab.php?id_paket_jasa=<?php echo $id_paket_jasane;?>');   
                                                        
                                                      }
			                                            }
                                                      
                                                });
                      });
    });

</script>