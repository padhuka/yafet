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
                        <h4 class="modal-title" id="myModalLabel">Tambah Data Tipe Kendaraan</h4>
                    </div>
				            <!--<div class="box-header with-border">
				              <h3 class="box-title">Horizontal Form</h3>
				            </div>
				             /.box-header -->
				            <!-- form start -->
                    <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formTipe">
                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                   <td class="sorting_1" width="15%">Kode Tipe</td>
                  <td width="30%"> <input type="text" class="form-control" id="id_tipe_kendaraan" name="id_tipe_kendaraan" required></td>
                  <td  width="15%">Group Kendaraan</td>
                  <td  width="50%"><div class="col-sm-10">
                    <input type="hidden"  class="form-control" id="group" name="group" readonly style="width: 100%;">
                    <input type="text"  class="form-control" id="groupnm" name="groupnm" readonly style="width: 100%;">
                    </div>
                    <button type="button" class=" btn btn-default btn-circle btn-md" onclick="groupe();">Pilih</button><input type="hidden" class="form-control" id="tipe" name="tipe" readonly style="width: 10%;">
                  </td>
                </tr>

                <tr role="row" class="even">
                 <td class="sorting_1" width="15%">Nama</td>
                  <td width="30%"> <input type="text" class="form-control" id="nama" name="nama" required></td>
                  <td  width="15%"></td>
                  <td  width="50%"><div class="col-sm-10">
                    
                    </div>                    
                  </td>
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
<?php include_once 'tipe_group_tab.php';?>
<script type="text/javascript">
  
  function groupe(){  
    $("#ModalGroup").modal({backdrop: 'static',keyboard: false});   
  }
  $(document).ready(function (){

                      $("#formTipe").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'tipe/tipe_add_save.php',
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

                                                      $("#tabletipe").load('tipe/tipe_load.php');
                                                                      $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAdd').modal('hide');
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