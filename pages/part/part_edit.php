<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $id_part = $_GET['id_part'];
    $sqlemp = "SELECT A.*,A.nama AS nmpart, B.nama AS nmsatuan, B.*, C.nama AS nmsupplier, C.* FROM t_part A
    LEFT JOIN t_satuan B ON A.fk_satuan=B.id_satuan
    LEFT JOIN t_supplier C ON A.fk_supplier=C.id_supplier
    WHERE A.id_part='$id_part'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
  ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Edit Data Part</h4>
                    </div>
				            <!--<div class="box-header with-border">
				              <h3 class="box-title">Horizontal Form</h3>
				            </div>
				             /.box-header -->
				            <!-- form start -->
                    <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formpartedit">
                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                   <td class="sorting_1" width="15%">Kode Part</td>
                  <td width="30%"> <input type="text" class="form-control" id="id_part" name="id_part" value="<?php echo $emp['id_part'];?>" required  readonly></td>
                  <td  width="15%">Satuan</td>
                  <td  width="50%"><div class="col-sm-10">
                    <input type="hidden"  class="form-control" id="satuan" name="satuan" value="<?php echo $emp['id_satuan'];?>" readonly style="width: 100%;">
                    <input type="text"  class="form-control" id="satuannm" name="satuannm" value="<?php echo $emp['nmsatuan'];?>" readonly style="width: 100%;">
                    </div>
                    <button type="button" class=" btn btn-default btn-circle btn-md" onclick="satuane();">Pilih</button><input type="hidden" class="form-control" id="tipe" name="tipe" readonly style="width: 10%;">
                  </td>
                </tr>

                <tr role="row" class="even">
                 <td class="sorting_1" width="15%">Nama</td>
                  <td width="30%"> <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $emp['nmpart'];?>" required></td>
                  <td  width="15%">Harga Beli</td>
                  <td  width="50%"><div class="col-sm-10">
                    <input type="text" class="form-control" id="hargabeli" name="hargabeli" value="<?php echo $emp['harga_beli'];?>" required>
                    </div>                    
                  </td>
               </tr>

               <tr role="row" class="odd">
                 <td class="sorting_1" width="15%">Diskon</td>
                  <td width="30%"> <input type="text" class="form-control" id="diskon" name="diskon" value="<?php echo $emp['diskon'];?>" required></td>
                  <td  width="15%">Harga Jual</td>
                  <td  width="50%"><div class="col-sm-10">
                   <input type="text" class="form-control" id="hargajual" name="hargajual" value="<?php echo $emp['harga_jual'];?>" required>
                    </div>
                    
                  </td>
               </tr>
               
               <tr role="row" class="even">
                 <td class="sorting_1" width="15%">PPN</td>
                  <td width="30%"> <input type="text" class="form-control" id="ppn" name="ppn" value="<?php echo $emp['ppn'];?>" required></td>
                  <td  width="15%">Supplier</td>
                  <td  width="50%"><div class="col-sm-10">
                    <input type="hidden"  class="form-control" id="supplier" name="supplier" value="<?php echo $emp['id_supplier'];?>" readonly style="width: 100%;">
                    <input type="text"  class="form-control" id="suppliernm" name="suppliernm"  value="<?php echo $emp['nmsupplier'];?>" readonly style="width: 100%;">
                    </div>
                    <button type="button" class=" btn btn-default btn-circle btn-md" onclick="suppliere();">Pilih</button><input type="hidden" class="form-control" id="tipe" name="tipe" readonly style="width: 10%;">
                  </td>
               </tr>
              <tr role="row" class="odd">
                 <td class="sorting_1" width="15%">Stock</td>
                <td width="30%"> <input type="text" class="form-control" id="stock" name="stock" value="<?php echo $emp['stock'];?>" required></td>
                  <td  width="15%"></td>
                  <td  width="50%">
                  </td>
               </tr>
               <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave"><button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button></td></tr>
                                    <input type="hidden" name="id_parthid" id="id_parthid" value="<?php echo $emp['id_part'];?>">
                            <input type="hidden" name="namahid" id="namahid" value="<?php echo $emp['nama'];?>">
                </tbody>
              </table>     
				            </form>
                       </div>
			         </div>
				</div>

</div>
<?php include_once 'part_supplier_tab_edit.php';?>
<?php include_once 'part_satuan_tab_edit.php';?>
<style>
    .modal-content {
    height: 210px;
  }
</style>
<script type="text/javascript">
	$(document).ready(function (){

                      $("#formpartedit").on('submit', function(e){
                          e.preventDefault();
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'part/part_edit_save.php',
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
			                                                $("#tablepart").load('part/part_load.php');
                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalEdit').modal('hide');
			                                            }
                                                      }
                                                });
                      });
    });
function satuane(){
    $("#ModalSatuanEdit").modal('show',{backdrop: 'true'});
  }

  function suppliere(){
    $("#ModalSupplierEdit").modal('show',{backdrop: 'true'});
  }
</script>