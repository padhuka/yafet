<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    $idnonpkb=$_GET['idnonpkb'];
   ?>

<div class="modal-dialog dialogcuciadd">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalAddcuci').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Non PKB - Cuci</h4>
                    </div>

                    <div class="modal-body bodycuciadd">
                    <br>
				            <form class="form-horizontal" enctype="multicuci/form-data" novalidate id="formcuci">
                        <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                          <thead>
                          
                          </thead>
                          <tbody>
                            <tr role="row" class="odd">
                              <td class="sorting_1" width="20%">Nama</td>
                              <td width="30%"><div class="col-sm-10" style="margin-left:-15px;">
                                  <input type="hidden" class="form-control" id="cuci" name="cuci" required>
				                          <input type="text" class="form-control" id="cucinm" name="cucinm" readonly required>            
                            </div>
                            <button type="button" class="btn btn-default btn-circle" data-toggle="modal" data-target="#myModal" onclick="pilihcuci();">Pilih</button>
                              </td>
                              <td  width="20%"></td>
                              <td  width="50%">
                                </td>
                              </td>
                            </tr>
                            <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Harga</td>
                                <td width="30%">
                                    <input type="text" class="form-control" id="hargapokokp" name="hargapokokp" required  onchange="kalip();" required>                                    
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>

                              <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Diskon</td>
                                <td width="30%">
                                      <input type="text" class="form-control" id="diskonp" name="diskonp" required onchange="kalip();">                                      
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>
                                      <input type="hidden" class="form-control" id="qty" name="qty" required onchange="kalip();">
                                
                              <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Harga Total</td>
                                <td width="50%">                                      
                            <input type="text" class="form-control" id="hargatotalp" name="hargatotalp" required readonly>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>
                  
                              <br>
                              <tr><td colspan="4">&nbsp;</td></tr>
                              <tr><td colspan="4" align="center" class="bgsave">
                                      <input type="hidden" class="form-control" id="idnonpkbp" name="idnonpkbp" value="<?php echo $idnonpkb?>" required>
				                    <button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalAddcuci').modal('hide');">&nbsp;Batal&nbsp;</button>
                              </td></tr>
                            </tbody>
                        </table>


				            </form>
				          </div>
				</div>
</div>
<?php include_once 'cuci_pilih.php';?>
<script type="text/javascript">
  function pilihcuci(){ 
    $("#ModalPilihcuci").modal({backdrop: 'static', keyboard:false});   
  }
  function kalip(){
    var hasil= ($("#hargapokokp").val()-($("#diskonp").val()*$("#hargapokokp").val()/100))*$("#qty").val();
    $("#hargatotalp").val(hasil);
    //alert(hasil);
  }
  
	$(document).ready(function (){
                      $("#formcuci").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'nonpkb/cuci_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){  
                                                      //var hsl=data.trim();
                                                      //alert(hsl);
			                                                $("#nonpkbcuci").load('nonpkb/cuci_load.php?idnonpkb=<?php echo $idnonpkb;?>');
                                                                      $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAddcuci').modal('hide');
                                                            $("#tablenonpkbdetail").load('nonpkb/nonpkb_detail_tab.php?idnonpkb=<?php echo $idnonpkb;?>');
			                                            }
                                                      
                                                });
                      });
    });

</script>
<style>
.dialogcuciadd{width:72%;}
.bodycuciadd{height:450px;}
  
</style>