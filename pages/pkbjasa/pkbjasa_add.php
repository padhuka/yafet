<!-- general form elements disabled -->
   <?php
    include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';    
   ?>

<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Tambah Data Non PKB</h4>
                    </div>
                <div class="modal-body bodypkbjasaadd">
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formpkbjasa">

                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                  <td class="sorting_1" width="15%">Tgl Masuk</td>
                  <td width="30%"> <input type="text" class="form-control" id="tgl" name="tgl"  value="<?php echo date('d-m-Y' , strtotime($harinow));?>" required readonly></td>
                  <td  width="10%">No Chasis</td>
                  <td  width="50%"><div class="col-sm-10">
                    <input type="text"  class="form-control" id="chasis" name="chasis" readonly style="width:100%;">
                    </div>
                    <button type="button" class="btn btn-default btn-circle btn-md" onclick="chasise();">Pilih</button><input type="hidden" class="form-control" id="tipe" name="tipe" readonly style="width: 10%;">
                  </td>
                </tr>

                <tr role="row" class="even">
                
                 <td class="sorting_1" width="15%">Tgl Estimasi Selesai</td>
                  <td width="30%"><input type="text" class="form-control" id="tglselesai" name="tglselesai" required value="<?php echo $harinow;?>"></td>
                  <td  width="10%">No Polisi</td>
                  <td  width="50%"><div class="col-sm-10">
                     <input type="text"  class="form-control" id="polisi" name="polisi" readonly style="width:100%;">
                    </div>
                  </td>
               </tr>
               
               <tr role="row" class="even">
                <td class="sorting_1" width="15%">Customer</td>
                  <td width="30%"> 
                                  <input type="hidden" class="form-control" id="customer" name="customer" required readonly>                          
                                  <input type="text" class="form-control" id="customernm" name="customernm" required readonly>                          
                  </td>
                  <td  width="10%">No Mesin</td>
                  <td  width="50%"><div class="col-sm-10">
                     <input type="text"  class="form-control" id="mesin" name="mesin" readonly style="width:100%;">
                    </div>                    
                  </td>
               </tr>             
               <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave"><button type="submit" class="btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button>
                </td></tr>
                </tbody>
              </table>     
      </form>
                    
        </div>
</div>
</div>
<?php include_once 'pkbjasa_chasis_tab.php';?>
<style>
  .bodypkbjasaadd{
    height:150px;
  }
  
</style>
<script type="text/javascript">

  $('#tglselesai').datepicker({       
        format: 'yyyy-mm-dd',
        autoclose: true,
      });
  function chasise(){ 
    $("#ModalChasis").modal({backdrop: 'static',keyboard:false});   
  }
  $(document).ready(function (){

                      $("#formpkbjasa").on('submit', function(e){
                          var chs= $("#polisi").val();
                          if (chs==''){
                            alert('Data ada yang belum diisi');
                            return false;
                          }
                          e.preventDefault();
                            //alert(disposisine)                       ;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'pkbjasa/pkbjasa_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        $("#tablepkbjasa").load('pkbjasa/pkbjasa_load.php');
                                                        $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAdd').modal('hide'); 
                                                             var hsl=data.trim();       
alert(hsl);
                                                            //alert('pkbjasa/pkbjasa_detail.php?idpkbjasa='+hsl);
                                                             $.ajax({
                                                                url: "pkbjasa/pkbjasa_detail.php?idpkbjasa="+hsl,
                                                                type: "GET",
                                                                  success: function (ajaxData){
                                                                    $("#ModalpkbjasaDet").html(ajaxData);
                                                                    $("#ModalpkbjasaDet").modal({backdrop: 'static', keyboard:false});
                                                                  }
                                                                }); 

                                                  }
                                                      
                                                });

                                      
              
                      });
    });

</script>
