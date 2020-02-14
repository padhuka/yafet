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
                        <h4 class="modal-title" id="myModalLabel">Tambah Data Estimasi</h4>
                    </div>
				            <!-- form start -->
                   <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formestimasi">
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
                 <td class="sorting_1" width="15%">Kategori</td>
                  <td width="30%"> 
                                <select id="kategori" name="kategori" onchange="selectKategori();">                                
                                  <option value="Pribadi">Pribadi</option>
                                  <option value="Asuransi">Asuransi</option>
                                </select>                                  
                  </td>
                  <td  width="10%">No Mesin</td>
                  <td  width="50%"><div class="col-sm-10">
                     <input type="text"  class="form-control" id="mesin" name="mesin" readonly style="width:100%;">
                    </div>                    
                  </td>
               </tr>
                <tr role="row" class="odd"  id="showAsuransi">
                 <td class="sorting_1" width="15%">Asuransi</td>
                  <td width="30%"> 
                               <input type="hidden" class="form-control" id="asuransi" name="asuransi"> 
                                <input type="text" class="form-control" id="asuransinm" name="asuransinm" readonly> 
                                <button type="button" class="btn btn-default btn-circle btn-md" data-toggle="modal" data-target="#myModal" onclick="selectAsuransi();" id="buttonAsuransi">Pilih Asuransi</button>
                  </td>
                  <td  width="10%"></td>
                  <td  width="50%"><div class="col-sm-10">
                     
                    </div>                    
                  </td>
               </tr>

               <tr role="row" class="even">
                 <td class="sorting_1" width="15%">KM Masuk</td>
                  <td width="30%"> <input type="text" class="form-control" id="kmmasuk" name="kmmasuk" required></td>
                  <td  width="10%">No Polisi</td>
                  <td  width="50%"><div class="col-sm-10">
                     <input type="text"  class="form-control" id="polisi" name="polisi" readonly style="width:100%;">
                    </div>
                  </td>
               </tr>
               
               <tr role="row" class="odd">
                 <td class="sorting_1" width="15%">Tgl Estimasi Selesai</td>
                  <td width="30%"><input type="text" class="form-control" id="tglselesai" name="tglselesai" required value="<?php echo $harinow;?>"></td>
                  <td  width="10%">Warna</td>
                  <td  width="50%"><div class="col-sm-10">
                  <input type="hidden"  class="form-control" id="warna" name="warna" readonly style="width:100%;">
                  <input type="text"  class="form-control" id="warnanm" name="warnanm" readonly style="width:100%;">
                  </div>
                  </td>
               </tr>

               <tr role="row" class="odd">
                 <td class="sorting_1" width="15%">Customer</td>
                  <td width="30%"><input type="hidden"  class="form-control" id="uname" name="uname" readonly style="width:100%;">
                  <input type="text"  class="form-control" id="customer" name="customer" readonly style="width:100%;">
                  </td>
                  <td  width="10%"></td>
                  <td  width="50%"><div class="col-sm-10">
                  
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
<?php include_once 'estimasi_chasis_tab.php';?>
<?php include_once 'estimasi_asuransi_tab.php';?>
<style>
  .modal-content{
    height:50%;
  }
  
</style>
<script type="text/javascript">
  $('#buttonAsuransi').hide();
  $('#showAsuransi').hide();

    function selectKategori(){
        var infor = $('#kategori').val();
        if (infor=='Asuransi') {
          $('#buttonAsuransi').show();$('#showAsuransi').show();
        }

        if (infor=='Pribadi'){
          $('#buttonAsuransi').hide();$('#showAsuransi').hide();$('#asuransi').val('');$('#asuransinm').val('');
        }
    
    }

  $('#tglselesai').datepicker({       
        format: 'yyyy-mm-dd',
        autoclose: true,
      });

  function selectAsuransi(){ 
    $("#ModalAsuransi").modal({backdrop: 'static',keyboard:false});   
  }
  function chasise(){ 
    $("#ModalChasis").modal({backdrop: 'static',keyboard:false});   
  }
  $(document).ready(function (){

                      $("#formestimasi").on('submit', function(e){
                          var chs= $("#chasis").val();
                          var km=  $("#kmmasuk").val();
                          if (chs==''){
                            alert('Data ada yang belum diisi');
                            return false;
                          }
                          e.preventDefault();
                            //alert(disposisine)                       ;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'estimasi/estimasi_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        $("#tableestimasi").load('estimasi/estimasi_load.php');
                                                        $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAdd').modal('hide'); 
                                                            var hsl=data.trim();
                                                            alert(hsl);

                                                             $.ajax({
                                                                url: "estimasi/estimasi_detail.php?idestimasi="+hsl,
                                                                type: "GET",
                                                                  success: function (ajaxData){
                                                                    $("#ModalEstimasiDet").html(ajaxData);
                                                                    $("#ModalEstimasiDet").modal({backdrop: 'static', keyboard:false});
                                                                  }
                                                                }); 

                                                  }
                                                      
                                                });

                                      
              
                      });
    });

</script>