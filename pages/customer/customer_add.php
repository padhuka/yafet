<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title">Tambah Data Inventory</h4>
                    </div>
				            <!--<div class="box-header with-border">
				              <h3 class="box-title">Horizontal Form</h3>
				            </div>
				             /.box-header -->
				            <!-- form start -->
                    <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formCustomer">
                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                   <td class="sorting_1" width="15%">Nama Customer</td>
                  <td width="30%"> <input type="text" class="form-control" id="namacustomer" name="namacustomer" required></td>
                  <td  width="20%">Jenis Kelamin</td>
                  <td  width="50%">
                              <input type="radio" name="jeniskelamin" value="L" checked="checked">Laki-Laki
                           
                              <input type="radio"  name="jeniskelamin" value="P">Perempuan
                  </td>
                </tr>
                 <tr role="row" class="even">
                   <td class="sorting_1" width="15%">No KTP</td>
                  <td width="30%"> <input type="text" class="form-control" id="no_ktp" name="no_ktp" required></td>
                  <td  width="20%">No Telepon</td>
                  <td  width="50%">
                    <input type="text" class="form-control" id="no_telp" name="no_telp" required></td>
                  </td>
                </tr>
                <tr role="row" class="odd">
                   <td class="sorting_1" width="15%">Email</td>
                  <td width="30%"> <input type="text" class="form-control" id="email" name="email" required></td>
                  <td  width="20%">Alamat</td>
                  <td  width="50%">
                     <textarea type="text" class="form-control" id="alamat" name="alamat" required></textarea></td>
                  </td>
                </tr>
                 <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave"><button type="submit" class="btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button></td></tr>
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
                            //alert(disposisine)                       ;
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'customer/customer_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                    //var hsl=data.trim();
                                                        //alert(hsl);
			                                                $("#tablecustomer").load('customer/customer_load.php');
                                                                      $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAdd').modal('hide');
			                                            }
                                                });
                      });
    });

</script>
