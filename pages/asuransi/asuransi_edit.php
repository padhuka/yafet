<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $id_asuransi = $_GET['id_asuransi'];
    $sqlemp = "SELECT * FROM t_asuransi WHERE id_asuransi='$id_asuransi'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
  ?>
<div class="modal-dialog">
                <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Edit Data Asuransi</h4>
                    </div>
                    <!--<div class="box-header with-border">
                      <h3 class="box-title">Horizontal Form</h3>
                    </div>
                     /.box-header -->
                    <!-- form start -->
                    <div class="modal-body">
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formAsuransi">
                      <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>


                <tr role="row" class="odd">
                   <td class="sorting_1" width="15%">Kode Asuransi</td>
                  <td width="30%"> <input type="text" class="form-control" id="id_asuransi" name="id_asuransi" value="<?php echo $emp['id_asuransi'];?>" readonly required></td>
                  <td  width="20%"></td>
                  <td  width="50%">
                   </td>
                  </td>
                </tr>

               <tr role="row" class="even">
                   <td class="sorting_1" width="15%">Nama</td>
                  <td width="30%"> <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $emp['nama'];?>" required></td>
                  <td  width="20%">Alamat</td>
                  <td  width="50%">
                     <textarea type="text" class="form-control" id="alamat" name="alamat" required><?php echo $emp['alamat'];?></textarea></td>
                  </td>
                </tr>
                  <tr role="row" class="odd">
                   <td class="sorting_1" width="15%">Telp</td>
                  <td width="30%"> <input type="text" class="form-control" id="no_telp" name="no_telp"  value="<?php echo $emp['no_telp'];?>"required></td>
                  <td  width="20%">NPWP</td>
                  <td  width="50%">
                     <input type="text" class="form-control" id="npwp" name="npwp"  value="<?php echo $emp['npwp'];?>"required></td>
                  </td>
                </tr>
                 <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave"><button type="submit" class="btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button></td></tr>
                                    <input type="hidden" name="id_asuransihid" id="id_asuransihid" value="<?php echo $emp['id_asuransi'];?>">
                            <input type="hidden" name="namahid" id="namahid" value="<?php echo $emp['nama'];?>">
                </tbody>
                </table>
                        
				            </form>
			         </div>
				</div>

</div>
<script type="text/javascript">
	$(document).ready(function (){

                      $("#formAsuransi").on('submit', function(e){
                          e.preventDefault();
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'asuransi/asuransi_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        //alert('lolos');
                                                        var hsl=data.trim();
                                                        if (hsl=='y'){
			                                                alert('Data Sudah ada');
			                                                return false;
			                                                exit();
			                                            }else{
			                                                $("#tabele").load('asuransi/asuransi_load.php');
                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalEdit').modal('hide');
			                                            }
                                                      }
                                                });
                      });
    });
</script>