<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $id_tipe_kendaraan = $_GET['id_tipe_kendaraan'];
    $sqlemp = "SELECT * FROM t_tipe_kendaraan WHERE id_tipe_kendaraan='$id_tipe_kendaraan'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );

    $sqlgrup=mysql_query("SELECT * FROM t_group_kendaraan WHERE id_group_kendaraan='$emp[fk_group_kendaraan]'");
    $hg=mysql_fetch_array($sqlgrup);
    $nmg=$hg['nama'];
  ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Tambah Data Tipe Kendaraan</h4>
                    </div>
				            <!--<div class="box-header with-border">
				              <h3 class="box-title">Horizontal Form</h3>
				            </div>
				             /.box-header -->
				            <!-- form start -->
                    <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formTipeEdit">
                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                   <td class="sorting_1" width="15%">Kode Tipe</td>
                  <td width="30%"> <input type="text" class="form-control" id="id_tipe_kendaraan" name="id_tipe_kendaraan" value="<?php echo $emp['id_tipe_kendaraan'];?>" required readonly></td>
                  <td  width="15%">Group Kendaraan</td>
                  <td  width="50%"><div class="col-sm-10">
                    <input type="hidden" class="form-control" id="groupe" name="groupe" value="<?php echo $emp['fk_group_kendaraan'];?>" readonly  style="width: 100%;">
                    <input type="text" class="form-control" id="groupnme" name="groupnme"  value="<?php echo $nmg;?>"  readonly  style="width: 100%;">
                    </div>
                    <button type="button" class=" btn btn-default btn-circle btn-md" onclick="pilihgroupe();">Pilih</button><input type="hidden" class="form-control" id="tipe" name="tipe" readonly style="width: 10%;">
                  </td>
                </tr>

                <tr role="row" class="even">
                 <td class="sorting_1" width="15%">Nama</td>
                  <td width="30%"> <input type="text" class="form-control" id="namae" name="namae" value="<?php echo $emp['nama'];?>" required></td>
                  <td  width="15%"></td>
                  <td  width="50%"><div class="col-sm-10">
                    
                    </div>                    
                  </td>
               </tr>

               
               <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave"><button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button></td></tr>
                                    <input type="hidden" name="idtipekendaraan" id="idtipekendaraan" value="<?php echo $emp['id_tipe_kendaraan'];?>">
                                    <input type="hidden" name="namakendaraan" id="namakendaraan" value="<?php echo $emp['nama'];?>">
                </tbody>
              </table>  
                       
				            </form>
			         </div>
				</div>

</div>

<?php include_once 'tipe_group_tab_edit.php';?>
<script type="text/javascript">
  function pilihgroupe(){  
    $("#ModalGroupEdit").modal('show',{backdrop: 'true'});   
  }
	$(document).ready(function (){
                      $("#formTipeEdit").on('submit', function(e){
                          e.preventDefault();
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'tipe/tipe_edit_save.php',
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
			                                                $("#tabletipe").load('tipe/tipe_load.php');
                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalEdit').modal('hide');
			                                            }
                                                      }
                                                });
                      });
    });
</script>
<style>
    .modal-content {
    height: 150px;
  }
</style>