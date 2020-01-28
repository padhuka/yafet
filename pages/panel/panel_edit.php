<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $id_panel = $_GET['id_panel'];
    $sqlemp = "SELECT * FROM t_panel WHERE id_panel='$id_panel'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
  ?>
<div class="modal-dialog">
               <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Tambah Data Panel</h4>
                    </div>
				            <!--<div class="box-header with-border">
				              <h3 class="box-title">Horizontal Form</h3>
				            </div>
				             /.box-header -->
				            <!-- form start -->
                    <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formPanelEdit">
                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                <tr role="row" class="odd">
                  <td class="sorting_1" width="20%">Kode Panel</td>
                  <td width="30%"> <input type="text" class="form-control" id="id_panel" name="id_panel" value="<?php echo $emp['id_panel'];?>" required  readonly></td>
                  <td  width="20%">Harga Pokok</td>
                  <td  width="50%"><input type="text" class="form-control" id="hargapokok" name="hargapokok" value="<?php echo $emp['harga_pokok'];?>" required></td>
                </tr>
               <tr role="row" class="even">
                   <td class="sorting_1" width="15%">Nama</td>
                  <td width="30%"> <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $emp['nama'];?>" required></td>
                  <td  width="20%">Harga Jual</td>
                  <td  width="50%">
                     <input type="text" class="form-control" id="hargajual" name="hargajual" value="<?php echo $emp['harga_jual'];?>" required>
                  </td>
                </tr>
                 <tr role="row" class="odd">
                   <td class="sorting_1" width="20%">Diskon</td>
                  <td width="30%"> <input type="text" class="form-control" id="diskon" name="diskon" value="<?php echo $emp['diskon'];?>" required></td>
                  <td  width="20%">PPN</td>
                  <td  width="50%"><input type="text" class="form-control" id="ppn" name="ppn" required value="<?php echo $emp['ppn'];?>"></td>
                </tr>
               
                 <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave"><button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button></td></tr>
                            	<input type="hidden" name="id_panelhid" id="id_panelhid" value="<?php echo $emp['id_panel'];?>">
                            <input type="hidden" name="namahid" id="namahid" value="<?php echo $emp['nama'];?>">
                </tbody>
                </table>
                        
				            </form>
			         </div>
				</div>

</div>
<script type="text/javascript">
	$(document).ready(function (){

                      $("#formPanelEdit").on('submit', function(e){
                          e.preventDefault();
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'panel/panel_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        //alert('lolos');
                                                        var hsl=data.trim();
                                                       // alert(hsl);
                                                        if (hsl=='y'){
			                                                alert('Data Sudah ada');
			                                                return false;
			                                                exit();
			                                            }else{
			                                                $("#tablepanel").load('panel/panel_load.php');
                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalEdit').modal('hide');
			                                            }
                                                      }
                                                });
                      });
    });
</script>