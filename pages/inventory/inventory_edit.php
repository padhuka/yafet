<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    include_once 'inventory_warna_tab_edit.php';
    include_once 'inventory_tipe_tab_edit.php';
    include_once 'inventory_customer_tab_edit.php';
    $no_chasis = $_GET['no_chasis'];
    $sqlemp = "SELECT *, B.nama AS nmtipe, C.nama AS nmwarna, D.nama AS nmcust FROM t_inventory_bengkel A
    LEFT JOIN t_tipe_kendaraan B ON A.fk_tipe_kendaraan=B.id_tipe_kendaraan
    LEFT JOIN t_warna_kendaraan C ON A.fk_warna_kendaraan=C.id_warna_kendaraan
    LEFT JOIN t_customer D ON A.fk_customer=D.id_customer
    WHERE A.no_chasis='$no_chasis'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
  ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">
                        
                        <h4 class="modal-title" no_chasis="myModalLabel">Edit Data Inventory</h4>
                    </div>

                     <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formInventory">
                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                   <td class="sorting_1" width="15%">No Chasis</td>
                  <td width="30%"><input type="text" class="form-control" id="no_chasis" name="no_chasis" value="<?php echo $emp['no_chasis'];?>" readonly></td>
                  <td  width="20%">Tipe Kendaraan</td>
                  <td  width="50%"><div class="col-sm-10">
                   <input type="text"  class="form-control" id="tipenm" name="tipenm" value="<?php echo $emp['nmtipe'];?>"   readonly style="width: 100%;">
                    <input type="hidden" class="form-control" id="tipes" name="tipes" value="<?php echo $emp['id_tipe_kendaraan'];?>" readonly>
                    </div>
                    <button type="button" class=" btn btn-default btn-circle btn-md" onclick="selecttipe();">Pilih</button><input type="hidden" class="form-control" id="tipe" name="tipe" readonly style="width: 10%;">
                  </td>
                </tr>

                <tr role="row" class="even">
                 <td class="sorting_1" width="15%">No Mesin</td>
                  <td width="30%"> <input type="text" class="form-control" id="no_mesin" name="no_mesin" value="<?php echo $emp['no_mesin'];?>"  required></td>
                  <td  width="20%">Warna Kendaraan</td>
                  <td  width="50%"><div class="col-sm-10">
                    <input type="text"  class="form-control" id="warnanm" name="warnanm" value="<?php echo $emp['nmwarna'];?>"   readonly style="width: 100%;">
                    <input type="hidden" class="form-control" id="warna" name="warna" value="<?php echo $emp['id_warna_kendaraan'];?>" readonly>
                    </div>
                    <button type="button" class=" btn btn-default btn-circle btn-md" onclick="selectwarna();">Pilih</button><input type="hidden" class="form-control" id="nopolisi" name="nopolisi" readonly style="width: 10%;">
                  </td>
               </tr>

               <tr role="row" class="odd">
                 <td class="sorting_1" width="15%">No Polisi</td>
                  <td width="30%"> <input type="text" class="form-control" id="no_polisi" name="no_polisi" value="<?php echo $emp['no_polisi'];?>"  required></td>
                  <td  width="20%">Customer</td>
                  <td  width="50%"><div class="col-sm-10">
                    <input type="text"  class="form-control" id="customernm" name="customernm" value="<?php echo $emp['nmcust'];?>"readonly style="width: 100%;">
                    <input type="hidden" class="form-control" id="customer" name="customer" value="<?php echo $emp['id_customer'];?>" readonly>
                    </div>
                    <button type="button" class=" btn btn-default btn-circle btn-md" onclick="selectcustomer();">Pilih</button><input type="hidden" class="form-control" id="nopolisi" name="nopolisi" readonly style="width: 10%;">
                  </td>
               </tr>
               
               <tr role="row" class="odd">
                 <td class="sorting_1" width="15%">Nama STNK</td>
                  <td width="30%"> <input type="text" class="form-control" id="namastnk" name="namastnk" value="<?php echo $emp['nama_stnk'];?>"  required></td>
                  <td  width="20%"></td>
                  <td  width="50%"><div class="col-sm-10"></td>
               </tr>
              <tr role="row" class="odd">
                 <td class="sorting_1" width="15%">Alamat STNK</td>
                  <td width="30%"><textarea type="text" class="form-control" id="alamatstnk" name="alamatstnk" required><?php echo  $emp['alamat_stnk']; ?></textarea></td>
                  <td  width="20%"></td>
                  <td  width="50%"><div class="col-sm-10">
                   
                  </td>
               </tr>
               <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave">
                 <button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button></td></tr>
                                    <input type="hidden" name="no_chasishid" id="no_chasishid" value="<?php echo $emp['no_chasis'];?>">
                </tbody>
              </table>    
                        

				               
				            </form>
                       </div>
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
                          //alert($('#tipes').val());
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'inventory/inventory_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        //alert('lolos');
                                                        var hsl=data.trim();
                                                        //alert(hsl);
                                                        if (hsl=='y'){
			                                                alert('Data Sudah ada');
			                                                return false;
			                                                exit();
			                                            }else{
			                                                $("#tableinventory").load('inventory/inventory_load.php');
                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalEdit').modal('hide');
			                                            }
                                                      }
                                                });
                      });
    });


  function selecttipe(){
    $("#ModalTipeEdit").modal('show',{backdrop: 'true'});   
  }
  function selectwarna(){  
    $("#ModalWarnaEdit").modal('show',{backdrop: 'true'});   
  }
   function selectcustomer(){  
    $("#ModalCustomerEdit").modal('show',{backdrop: 'true'});   
  }

</script>
