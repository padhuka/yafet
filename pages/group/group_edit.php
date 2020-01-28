<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $id_group_kendaraan = $_GET['id_group_kendaraan'];
    $sqlemp = "SELECT * FROM t_group_kendaraan WHERE id_group_kendaraan='$id_group_kendaraan'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
  ?>
<div class="modal-dialog">
               <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Edit Data Group Kendaraan</h4>
                    </div>
                    <!--<div class="box-header with-border">
                      <h3 class="box-title">Horizontal Form</h3>
                    </div>
                     /.box-header -->
                    <!-- form start -->
                    <div class="modal-body">
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formgroupedit">
                      <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                <tr role="row" class="odd">
                   <td class="sorting_1" width="20%">Kode Group</td>
                  <td width="30%"> <input type="text" class="form-control" id="id_group_kendaraan" name="id_group_kendaraan" readonly value="<?php echo $emp['id_group_kendaraan'];?>" required ></td>
                  <td  width="20%"></td>
                  <td  width="50%">
                    </td>
                  </td>
                </tr>
               <tr role="row" class="even">
                   <td class="sorting_1" width="15%">Nama</td>
                  <td width="30%"> <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $emp['nama'];?>" required></td>
                  <td  width="20%"></td>
                  <td  width="50%">
                     
                  </td>
                </tr>
                  
                 <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave"><button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button></td></tr>
                                    	<input type="hidden" name="idgroupkendaraan" id="idgroupkendaraan" value="<?php echo $emp['id_group_kendaraan'];?>">
                            <input type="hidden" name="namakendaraan" id="namakendaraan" value="<?php echo $emp['nama'];?>">
                </tbody>
                </table>
				            </form>
			         </div>
				</div>

</div>
<script type="text/javascript">
	$(document).ready(function (){
                      $("#formgroupedit").on('submit', function(e){
                          e.preventDefault();
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'group/group_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        //alert('lolos');
                                                        var hsl=data.trim();
                                                       alert(hsl);
                                                        if (hsl=='y'){
			                                                alert('Data Sudah ada');
			                                                return false;
			                                                exit();
			                                            }else{
			                                                $("#tablegroup").load('group/group_load.php');
                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalEdit').modal('hide');
			                                            }
                                                      }
                                                });
                      });
    });
</script>