<!-- general form elements disabled -->
   <?php
   // include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content" style="height: 240px;">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Tambah Data Payment Non PKB
</h4>
                    </div>
                  
                    <div class="modal-body">
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formpaycuci">
                      <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                  <td class="sorting_1" width="15%">Tgl Transaksi</td>
                  <td width="30%" colspan="3">
                  <div class="input-group date">
                            <div class="input-group-addon">
                              <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" class="form-control pull-right" id="tgltransaksi" name="tgltransaksi" required value="<?php echo $harinow;?>">
                  </td>                  
                </tr>

               <tr role="row" class="even">
                 <td class="sorting_1" width="15%">Via Bayar</td>
                  <td width="30%"> 
                            <select id="viabayar" name="viabayar" onchange="selectTransaksi();">
                                  <option value="Cash" onclick="$('#buttonPartner').hide();$('#showPartner').hide();">Cash</option>
                                  <option value="Transfer" onclick="$('#buttonPartner').hide();$('#showPartner').hide();">Transfer</option>                         
                                  <option value="Debit Card" onclick="$('#buttonPartner').show();$('#showPartner').show();">Debit Card</option>
                                  <option value="Credit Card" onclick="$('#buttonPartner').show();$('#showPartner').show();">Credit Card</option> 
                            </select>                                
                  <td  width="10%">No Ref</td>
                  <td  width="50%">
                    <div id="showKwitansi">
                      <div class="col-sm-10">
                        <input type="text"  class="form-control" id="nokwitansi" name="nokwitansi" readonly style="width:100%;">
                        </div>
                        <button type="button" class=" btn btn-default btn-circle btn-md" onclick="selectKwi();">Pilih</button><input type="hidden" class="form-control" id="tipe" name="tipe" readonly style="width: 10%;">
                    </div>
                   
                  </td>
               </tr>
               <tr role="row" class="even">
                 <td class="sorting_1" width="15%">Diterima Dari/ Diberikan Kepada</td>
                  <td colspan="3" width="30%">
                  <input type="text" class="form-control" id="diterima" name="diterima" required></td>                 
               </tr>
               <tr role="row" class="odd">
                 <td class="sorting_1" width="15%">Total</td>
                  <td colspan="3" width="30%">
                  <input type="text" class="form-control" id="nilai" name="nilai" required readonly></td>                 
               </tr>
               <tr role="row" class="even">
                 <td class="sorting_1" width="15%">Keterangan</td>
                  <td colspan="3" width="30%">
                  <input type="text" class="form-control" id="keterangan" name="keterangan" required></td>                 
               </tr>
               
               <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave"><button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button>
                </td></tr>
                </tbody>
              </table>                           
                    </form>
              
        </div>
</div>
<?php //include_once 'paycuci_pkb_tab.php';?>
<?php include_once 'paycuci_kwitansi_tab.php';?>
<?php //include_once 'paycuci_partner_tab.php';?>
<script type="text/javascript">
  $('#buttonTitipan').hide();
  $('#showPkb').hide();
  $('#buttonPartner').hide();
  $('#showPartner').hide();


  $('#tgltransaksi').datepicker({       
        format: 'yyyy-mm-dd',
        autoclose: true,
      });

  function selectKwi(){ 
    $("#ModalpaycuciKwitansi").modal({backdrop: 'static',keyboard:false});   

  }
  function selectPkb(){ 
    $("#ModalpaycuciPkb").modal({backdrop: 'static',keyboard:false});   
  }
  function selectPartner(){ 
    $("#ModalpaycuciP").modal({backdrop: 'static',keyboard:false});   
  }

  $(document).ready(function (){

                      $("#formpaycuci").on('submit', function(e){
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
                                                  url: 'paycuci/paycuci_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        $("#tablepaycuci").load('paycuci/paycuci_load.php');
                                                        $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAdd').modal('hide'); 
                                                            /*var hsl=data.trim();       
                                                              alert(hsl);*/
                                                           
                                                  }
                                                      
                                                });

                                      
              
                      });
    });

</script>