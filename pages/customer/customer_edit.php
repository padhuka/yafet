<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $id_customer = $_GET['id_customer'];
    $sqlemp = "SELECT * FROM t_customer WHERE id_customer='$id_customer'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
  ?>
<div class="modal-dialog">
              <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Edit Data Customer</h4>
                    </div>

                     <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formCustomer">
                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                   <td class="sorting_1" width="15%">Nama Customer</td>
                  <td width="30%"> <input type="text" class="form-control" id="namacustomer" name="namacustomer" value="<?php echo $emp['nama'];?>" required></td>
                  <td  width="20%">Jenis Kelamin</td>
                  <td  width="50%">
                              <input type="radio" name="jeniskelamin" value="L" <?php if ($emp['jenis_kelamin']=='L'){echo "checked";}?>>Laki-Laki                           
                              <input type="radio"  name="jeniskelamin" value="P" <?php if ($emp['jenis_kelamin']=='P'){echo "checked";}?>>Perempuan
                  </td>
                </tr>
                 <tr role="row" class="even">
                   <td class="sorting_1" width="15%">No KTP</td>
                  <td width="30%"> <input type="text" class="form-control" id="no_ktp" name="no_ktp" value="<?php echo $emp['no_ktp'];?>" required></td>
                  <td  width="20%">No Telepon</td>
                  <td  width="50%">
                    <input type="text" class="form-control" id="no_telp" name="no_telp" value="<?php echo $emp['no_telp'];?>" required></td>
                  </td>
                </tr>
                <tr role="row" class="odd">
                   <td class="sorting_1" width="15%">Email</td>
                  <td width="30%"> <input type="text" class="form-control" id="email" name="email" value="<?php echo $emp['email'];?>" required></td>
                  <td  width="20%">Alamat</td>
                  <td  width="50%">
                     <textarea type="text" class="form-control" id="alamat" name="alamat" required><?php echo $emp['alamat'];?></textarea></textarea></td>
                  </td>
                </tr>
                 <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave"><button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button></td></tr>
                                    <input type="hidden" name="id_customerhid" id="id_customerhid" value="<?php echo $emp['id_customer'];?>">
                            <input type="hidden" name="namacustomerhid" id="namacustomerhid" value="<?php echo $emp['nama'];?>">
                </tbody>
                </table>
                        
				            </form>
			         </div>
				</div>

</div>
<script type="text/javascript">
	$(document).ready(function (){

                      $("#formCustomer").on('submit', function(e){
                          e.preventDefault();
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'customer/customer_edit_save.php',
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
			                                                $("#tablecustomer").load('customer/customer_load.php');
                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalEdit').modal('hide');
			                                            }
                                                      }
                                                });
                      });
    });
</script>