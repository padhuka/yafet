<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
   ?>
<div class="modal-dialog">
               <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalAdd').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Tambah Data Paket Jasa</h4>
                    </div>
                    <!--<div class="box-header with-border">
                      <h3 class="box-title">Horizontal Form</h3>
                    </div>
                     /.box-header -->
                    <!-- form start -->
                    <div class="modal-body">
                    
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formpaketjasa">
                      <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                <tr role="row" class="odd">
                   <td class="sorting_1" width="20%">Kode Paket</td>
                  <td width="30%"> <input type="text" class="form-control" id="id_paket_jasa" name="id_paket_jasa" required></td>
                  <td  width="20%"></td>
                  <td  width="50%">
                    </td>
                  </td>
                </tr>
               <tr role="row" class="even">
                   <td class="sorting_1" width="15%">Nama</td>
                  <td width="30%"> <input type="text" class="form-control" id="nama" name="nama" required></td>
                  <td  width="20%"></td>
                  <td  width="50%">
                     
                  </td>
                </tr>
              
               <tr role="row" class="even">
                   <td class="sorting_1" width="15%">Total</td>
                  <td width="30%"> <input type="text" class="form-control" id="total" name="total" readonly value="0"></td>
                  <td  width="20%"></td>
                  <td  width="50%">
                     
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
<script type="text/javascript">
  $(document).ready(function (){
                      $("#formpaketjasa").on('submit', function(e){
                        var idn= $("#id_paket_jasa").val();
                          e.preventDefault();
                          
                            //alert(disposisine)                       ;
                                            $.ajax({
                                                  type: 'POST',
                                                  url: 'paketjasa/paketjasa_add_save.php',
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
                                                        }else{
                                                                $("#tablepaketjasa").load('paketjasa/paketjasa_load.php');
                                                                $('.modal-body').css('opacity', '');
                                                                alert('Data Berhasil Disimpan');
                                                                $('#ModalAdd').modal('hide');      

                                                                 $.ajax({
                                                                      url: "paketjasa/paketjasa_detail.php?id_paket_jasa="+idn,

                                                                      type: "GET",
                                                                      success: function (ajaxData){
                                                                          $("#ModalEdit").html(ajaxData);
                                                                          $("#ModalEdit").modal({backdrop: 'static',keyboard: false});
                                                                      }
                                                                  });                                                      
                                                                
                                                                   
                                                          }
                                                    }
                                              });
                      });
    });

</script>