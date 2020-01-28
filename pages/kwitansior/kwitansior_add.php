<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
   // $idestimasi= 'EST_BR.020818.000001';
 //   $sqlpan= "SELECT * FROM t_estimasi WHERE id_estimasi='$idestimasi'";
 //  $catat= mysql_fetch_array(mysql_query($sqlpan));
  
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formkwitansior">
                    <div class="modal-header">                        
                        <h4 class="modal-title"  style="height:30px;">Data Estimasi</h4>
                    </div>
                 
                    <div class="modal-body">
                      <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                   <td class="sorting_1" width="15%">No Estimasi</td>
                  <td width="40%" align="left">
                        <label id="idestimasi2"></label>  
                        <input type="hidden" id="idestimasi" name="idestimasi">
                    <button type="button" class=" btn btn-default btn-circle btn-md" onclick="kwitansior();">Pilih</button><input type="hidden" class="form-control" id="tipe" name="tipe" readonly style="width: 10%;">
                  </td>
                  <td  width="20%">Kategori</td>
                  <td  width="50%">
                    <label id="kategori"></label>
                  </td>
                </tr>

                <tr role="row" class="even">
                 <td class="sorting_1" width="15%">No Chasis</td>
                  <td width="30%"><label id="chasis"></label></td>
                  <td  width="20%">Asuransi</td>
                  <td  width="50%">
                    <label id="asuransi"></label>
                  </td>
               </tr>

               <tr role="row" class="odd">
                 <td class="sorting_1" width="15%">No Mesin</td>
                  <td width="30%"><label id="mesin"></label></td>
                  <td  width="20%">Customer</td>
                  <td  width="50%">
                    <label id="nama"></label>
                  </td>
               </tr>
               
                </tbody>
              </table>                
                      </div>
                <div class="modal-header">                        
                        <h4 class="modal-title"  style="height:30px;">Nilai OR</h4>
                    </div>
                    <div class="modal-body">                      
                       <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>                    
                    </thead>
                    <tbody>                
                      <tr role="row" class="odd">
                        <td>Nilai Panel</td><td><label id="grosspanel"></label></td><td>Diskon Panel</td><td><label id="diskonpanel"></label></td><td>Total Netto</td><td><label id="nettopanel"></label></td>
                      </tr>
                      <tr role="row" class="even">
                        <td>Nilai Part</td><td><label id="grosspart"></label></td><td>Diskon part</td><td><label id="diskonpart"></label></td><td>Total Netto</td><td><label id="nettopart"></label></td>
                      </tr>
                      <tr role="row" class="odd" style="font-weight:bold; font-size:16px;color:red;">
                        <td>Total Gross</td><td><label id="grosstotal"></label></td><td>Total Diskon</td><td><label id="diskontotal"></label></td><td>Total Netto</td><td><label id="nettototal"></label></td>
                      </tr>
               
                      </tbody>
                    </table> 
               </div>

                <div class="modal-header">                        
                        <h4 class="modal-title"  style="height:30px;">OR</h4>
                    </div>
                    <div class="modal-body">                      
                       <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>                    
                    </thead>
                    <tbody>                
                      <tr role="row" class="odd">
                        <td style="font-weight: bold;">Nilai Kwitansi OR</td><td><div class="col-sm-10">
                    <input type="text"  class="form-control" id="nilaikwitansi" name="nilaikwitansi" required style="width: 100%;">
                    </div>
                    <td>
                      </tr>
                      <tr role="row" class="odd">
                        <td style="font-weight: bold;">Diskon OR</td><td><div class="col-sm-10">
                    <input type="text"  class="form-control" id="diskonor" name="diskonor" required style="width: 100%;">
                    </div>
                    <td>
                      </tr>
                      <tr role="row" class="odd">
                        <td style="font-weight: bold;">Keterangan</td><td><div class="col-sm-10">
                    <input type="text"  class="form-control" id="keterangan" name="keterangan" required style="width: 100%;">
                    </div>
                    <td>
                      </tr>
                      
                <tr><td colspan="6">&nbsp;</td></tr>
                 <tr><td colspan="6" align="center" class="bgsave"><button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button></td></tr>
                     
               
                      </tbody>
                    </table> 
               </div>
             </form>
           </div>
           </div>      
           <?php include_once 'kwitansior_estimasi_tab.php';?>

            <script type="text/javascript">
              function kwitansior(){ 
                $("#ModalEstimasi").modal({backdrop: 'static',keyboard:false});   
              }
              
            $(document).ready(function (){

                      $("#formkwitansior").on('submit', function(e){
                          var ides=  $("#idestimasi").val();
                          if (ides==''){
                            alert('Data ada yang belum diisi');
                            return false;
                          }
                          e.preventDefault();
                            //alert(disposisine)                       ;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'kwitansior/kwitansior_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        $("#kwitansior").load('kwitansior/kwitansior_load.php');
                                                        $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAdd').modal('hide'); 
                                                            var hsl=data.trim();       
                                                           // alert(hsl);

                                                             
                                                  }
                                                      
                                                });

                                      
              
                      });
    });
</script>        