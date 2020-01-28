<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $id_partner_bank = $_GET['id_partner_bank'];
    $sqlemp = "SELECT * FROM t_partner_bank WHERE id_partner_bank='$id_partner_bank'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
  ?>
<div class="modal-dialog">
                <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Edit Data Partner Bank</h4>
                    </div>
                    <!--<div class="box-header with-border">
                      <h3 class="box-title">Horizontal Form</h3>
                    </div>
                     /.box-header -->
                    <!-- form start -->
                    <div class="modal-body">
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formPartnerBank">
                      <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>


                <tr role="row" class="odd">
                   <td class="sorting_1" width="20%">Kode Partner Bank</td>
                  <td width="30%"> <input type="text" class="form-control" id="id_partner_bank" name="id_partner_bank" value="<?php echo $emp['id_partner_bank'];?>" required  readonly></td>
                  <td class="sorting_1" width="15%">Telp</td>
                  <td width="30%"> <input type="text" class="form-control" id="no_telp" name="no_telp"  value="<?php echo $emp['no_telp'];?>"required></td>
                </tr>

               <tr role="row" class="even">
                   <td class="sorting_1" width="15%">Nama</td>
                  <td width="30%"> <input type="text" class="form-control" id="nama" name="nama" value="<?php echo $emp['nama'];?>" required></td>
                  <td  width="20%">Alamat</td>
                  <td  width="50%">
                     <textarea type="text" class="form-control" id="alamat" name="alamat" required><?php echo $emp['alamat'];?></textarea></td>
                  </td>
                </tr>
                 <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave"><button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button></td></tr>
                                    <input type="hidden" name="idpartnerbank" id="idpartnerbank" value="<?php echo $emp['id_partner_bank'];?>">
                            <input type="hidden" name="namapartnerbank" id="namapartnerbank" value="<?php echo $emp['nama'];?>">
                </tbody>
                </table>
                        
				            </form>
			         </div>
				</div>

</div>
<script type="text/javascript">
	$(document).ready(function (){
                      $("#formPartnerBank").on('submit', function(e){
                          e.preventDefault();
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'partnerbank/partnerbank_edit_save.php',
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
			                                                $("#tablepartnerbank").load('partnerbank/partnerbank_load.php');
                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalEdit').modal('hide');
			                                            }
                                                      }
                                                });
                      });
    });
</script>