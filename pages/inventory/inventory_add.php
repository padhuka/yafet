<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    include_once 'inventory_warna_tab.php';
    include_once 'inventory_tipe_tab.php';
    include_once 'inventory_customer_tab.php';
   ?>

<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Tambah Data Inventory</h4>
                    </div>
				            <!--<div class="box-header with-border">
				              <h3 class="box-title">Horizontal Form</h3>
				            </div>
				             /.box-header -->
				            <!-- form start -->
                    <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formInventory">
                     <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                   <td class="sorting_1" width="15%">No Chasis</td>
                  <td width="30%"> <input type="text" class="form-control" id="nochasis" name="nochasis" required></td>
                  <td  width="20%">Tipe Kendaraan</td>
                  <td  width="50%"><div class="col-sm-10">
                    <input type="text"  class="form-control" id="tipenm" name="tipenm" readonly style="width: 100%;">
                    <input type="hidden"  class="form-control" id="tipe" name="tipe" readonly style="width: 100%;">
                    </div>
                    <button type="button" class=" btn btn-default btn-circle btn-md" onclick="selecttipe();">Pilih</button><input type="hidden" class="form-control" id="tipe" name="tipe" readonly style="width: 10%;">
                  </td>
                </tr>

                <tr role="row" class="even">
                 <td class="sorting_1" width="15%">No Mesin</td>
                  <td width="30%"> <input type="text" class="form-control" id="nomesin" name="nomesin" required></td>
                  <td  width="20%">Warna Kendaraan</td>
                  <td  width="50%"><div class="col-sm-10">
                    <input type="text"  class="form-control" id="warnanm" name="warnanm" readonly style="width: 100%;">
                    <input type="hidden" class="form-control" id="warna" name="warna" readonly>
                    </div>
                    <button type="button" class=" btn btn-default btn-circle btn-md" onclick="selectwarna();">Pilih</button><input type="hidden" class="form-control" id="nopolisi" name="nopolisi" readonly style="width: 10%;">
                  </td>
               </tr>

               <tr role="row" class="odd">
                 <td class="sorting_1" width="15%">No Polisi</td>
                  <td width="30%"> <input type="text" class="form-control" id="nopolisi" name="nopolisi" required></td>
                  <td  width="20%">Customer</td>
                  <td  width="50%"><div class="col-sm-10">
                    <input type="text"  class="form-control" id="customernm" name="customernm" readonly style="width: 100%;">
                    <input type="hidden" class="form-control" id="customer" name="customer" readonly>
                    </div>
                    <button type="button" class=" btn btn-default btn-circle btn-md" onclick="selectcustomer();">Pilih</button>
                  </td>
               </tr>
               
               <tr role="row" class="odd">
                 <td class="sorting_1" width="15%">Nama STNK</td>
                  <td width="30%"> <input type="text" class="form-control" id="namastnk" name="namastnk" required></td>
                  <td  width="20%"></td>
                  <td  width="50%"><div class="col-sm-10"></td>
               </tr>
              <tr role="row" class="odd">
                 <td class="sorting_1" width="15%">Alamat STNK</td>
                  <td width="30%"><textarea type="text" class="form-control" id="alamatstnk" name="alamatstnk" required></textarea></td>
                  <td  width="20%"></td>
                  <td  width="50%"><div class="col-sm-10">
                   
                  </td>
               </tr>
               <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave">
                      <button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                      <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button>
                </td></tr>
                </tbody>
              </table>                        
                     
				            </form>
				          </div>
				</div>
</div>
<style>
.modal-content{
    height:70%;
  }  
</style>
<script type="text/javascript">
	$(document).ready(function (){

                      $("#formInventory").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'inventory/inventory_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        //alert('lolos');
                                                        var hsl=data.trim();
                                                        //alert(hsl);
                                                        //return false;
                                                        if (hsl=='y'){
			                                                alert('Data Sudah ada');
			                                                return false;
			                                                exit();
			                                              }else{
			                                                $("#tableinventory").load('inventory/inventory_load.php');
                                                                      $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAdd').modal('hide');
			                                            }
                                                      }
                                                });
                      });
    });

  function selecttipe(){
    $("#ModalTipe").modal({backdrop: 'static',keyboard: false});   
  }
  function selectwarna(){  
    $("#ModalWarna").modal({backdrop: 'static',keyboard: false});   
  }
   function selectcustomer(){  
    $("#ModalCustomer").modal({backdrop: 'static',keyboard: false});   
  }
</script>
