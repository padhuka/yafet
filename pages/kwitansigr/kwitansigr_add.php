<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formkwitansigr">
                     <div class="modal-header">                        
                        <h4 class="modal-title"  style="height:30px;">Data PKB Jasa</h4>
                    </div>
                    <div class="modal-body">
				            
                     <table id="example1" class="dataTable table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                   <td class="sorting_1" width="15%">No PKB Jasa</td>
                  <td width="40%" align="left">
                        <label id="idpkbjasa2"></label>   
                        <input type="hidden" id="idpkbjasa" name="idpkbjasa">        
                    <button type="button" class=" btn btn-default btn-circle btn-md" onclick="kwitansigr();">Pilih</button><input type="hidden" class="form-control" id="tipe" name="tipe" readonly style="width: 10%;">
                  </td>
                  <td  width="20%"></td>
                  <td  width="50%">
                  </td>
                </tr>

                <tr role="row" class="even">
                 <td class="sorting_1" width="15%">No Chasis</td>
                  <td width="30%"><label id="chasis"></label></td>
                  <td  width="20%"></td>
                  <td  width="50%">
                  </td>
               </tr>

               <tr role="row" class="odd">
                 <td class="sorting_1" width="15%">No Mesin</td>
                  <td width="30%"><label id="mesin"></label></td>
                  <td  width="20%"></td>
                  <td  width="50%">
                  </td>
               </tr>
               
                <tr role="row" class="even">
                 <td class="sorting_1" width="15%">Nama</td>
                  <td width="30%"><label id="nama"></label></td>
                  <td  width="20%"></td>
                  <td  width="50%">
                    <label id="asuransi"></label>
                  </td>
               </tr>
               
                </tbody>
              </table>  
            </div>
                     <div class="modal-header">                        
                        <h4 class="modal-title"  style="height:30px;">Nilai GR</h4>
                    </div>
                     
                    <div class="modal-body">   <br>         
                        <div id="tablepkbjasadetail"></div>          
                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                      <thead>                    
                      </thead>
                      <tbody>        
                            <tr><td colspan="6">&nbsp;</td></tr>
                            <tr><td colspan="6" align="center" class="bgsave"><button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                            <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button></td></tr>
                                  
                      </tbody>
                    </table> 
               </div>
             </form>
           </div>
           </div>      
           <?php include_once 'kwitansigr_pkb_tab.php';?>

            <script type="text/javascript">
              function kwitansigr(){                 
                $("#Modalpkbjasa").modal({backdrop: 'static',keyboard:false});
              }
              
            $(document).ready(function (){

                      $("#formkwitansigr").on('submit', function(e){
                          var ides=  $("#idpkbjasa").val();
                          //alert(ides); return false;
                          if (ides==''){
                            alert('Data ada yang belum diisi');
                            return false;
                          }
                          e.preventDefault();
                            //alert(disposisine)                       ;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'kwitansigr/kwitansigr_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        $("#kwitansigr").load('kwitansigr/kwitansigr_load.php');
                                                        $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAdd').modal('hide'); 
                                                            //var hsl=data.trim();       
                                                          // alert(hsl);

                                                             
                                                  }
                                                      
                                                });

                                      
              
                      });
    });
</script>        