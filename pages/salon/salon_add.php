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
                        <h4 class="modal-title" id="myModalLabel">Tambah Data Salon Mobil</h4>
                    </div>
				            <!--<div class="box-header with-border">
				              <h3 class="box-title">Horizontal Form</h3>
				            </div>
				             /.box-header -->
				            <!-- form start -->
                    <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formsalon">
                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                <tr role="row" class="odd">
                  <td class="sorting_1" width="20%">Kode Salon Mobil</td>
                  <td width="30%"> <input type="text" class="form-control" id="id_salon" name="id_salon" required></td>
                  <td  width="20%">Harga Pokok</td>
                  <td  width="50%"><input type="text" class="form-control" id="hargapokok" name="hargapokok" required></td>
                </tr>
               <tr role="row" class="even">
                   <td class="sorting_1" width="15%">Nama</td>
                  <td width="30%"> <input type="text" class="form-control" id="nama" name="nama" required></td>
                  <td  width="20%">Harga Jual</td>
                  <td  width="50%">
                     <input type="text" class="form-control" id="hargajual" name="hargajual" required>
                  </td>
                </tr>
                 <tr role="row" class="odd">
                   <td class="sorting_1" width="20%">Diskon</td>
                  <td width="30%"> <input type="text" class="form-control" id="diskon" name="diskon" required></td>
                  <td  width="20%"></td>
                  <td  width="50%"></td>
                </tr>
               
                 <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave"><button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button></td></tr>
                </tbody>
                </table> 

				            </form>
				          </div>
				</div>
</div>
<script type="text/javascript">
	$(document).ready(function (){

                      $("#formsalon").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'salon/salon_add_save.php',
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

			                                                $("#tablesalon").load('salon/salon_load.php');
                                                                      $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAdd').modal('hide');
			                                            }
                                                      }
                                                });
                      });
    });

</script>