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
                <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formgate">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Tambah Data Gate Pass GR</h4>
                    </div>
                  
                    <div class="modal-body">
                    
                      <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                  <td class="sorting_1" width="15%">Tgl Transaksi</td>
                  <td width="30%">
                  <div class="input-group date">
                            <div class="input-group-addon">
                              <i class="fa fa-calendar"></i>
                            </div>
                            <input type="text" class="form-control pull-right" id="tgl" name="tgl" required value="<?php echo $harinow;?>">
                  </td>
                  <td  width="10%">No Ref</td>
                  <td  width="50%">
                    <div id="showKwitansi">
                      <div class="col-sm-10">
                        <input type="text"  class="form-control" id="idpkb" name="idpkb" readonly style="width:100%;">
                        </div>
                        <button type="button" class=" btn btn-default btn-circle btn-md" data-toggle="modal" data-target="#myModal" onclick="selectPkb();" id="buttonTitipan">Pilih</button>
                    </div>                    
                  </td>
                  <td  width="50%"></td>
                  </td>
                </tr>

                <tr role="row" class="even">
                 <td class="sorting_1" width="15%">Tipe Transaksi</td>
                  <td width="30%">                                
                                <select id="status" name="status">
                                  <option value="Sementara">Sementara</option>                         
                                  <option value="Final">Final</option>                                
                                </select>  
                  </td>
                  <td  width="10%"></td>
                  <td  width="50%">        
                  </td>
               </tr>
               
               <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave"><button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button>
                </td></tr>
                </tbody>
              </table>                           
</div>
                    </form>
              
        </div>
</div>
<?php include_once 'gatepass_pkb_tab.php';?>

<script type="text/javascript">

  $('#tgl').datepicker({       
        format: 'yyyy-mm-dd',
        autoclose: true,
      });

  function selectPkb(){ 
    $("#ModalGatePkb").modal({backdrop: 'static',keyboard:false}); 
  }

  $(document).ready(function (){

                      $("#formgate").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'gatepassgr/gatepass_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        $("#tablegatepass").load('gatepassgr/gatepass_load.php');
                                                        $('.modal-body').css('opacity', '');
                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalGateAdd').modal('hide'); 
                                                            //var hsl=data.trim();       
                                                              //alert(hsl);
                                                             

                                                  }
                                                      
                                                });

                                      
              
                      });
    });

</script>