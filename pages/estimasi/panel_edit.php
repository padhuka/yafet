<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    $idestimasi=$_GET['idestimasi'];
    $id=$_GET['id'];

    $sqlpan= "SELECT * FROM t_estimasi_panel_detail WHERE id='$id'";
    $hslpan= mysql_fetch_array(mysql_query($sqlpan));

    $snm = "SELECT * FROM t_panel WHERE id_panel='$hslpan[fk_panel]'";
    $hnm = mysql_fetch_array(mysql_query($snm));

   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalEditPanel').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Edit Estimasi Panel</h4>
                    </div>

                    <div class="modal-body">
                    <br>
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formPanelEdit">
                     <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                  <td class="sorting_1" width="10%">Nama</td>
                  <td width="40%">
                    <div class="col-sm-10">
                            <input type="hidden" class="form-control" id="panele" name="panele" value="<?php echo $hslpan['fk_panel'];?>" required>
				                    <input type="text" class="form-control" id="panelnme" name="panelnme" value="<?php echo $hnm['nama'];?>" readonly required style="width:100%;">                            
				                  </div><!--<button type="button" class=" btn btn-default btn-circle btn-md" data-toggle="modal" data-target="#myModal" onclick="pilihpanele();">Pilih</button>-->
                  </td>
                  <td  width="10%">Harga</td>
                  <td  width="50%">
                    <div class="col-sm-10">
                          <input type="text" class="form-control" id="hargapokoke" name="hargapokoke" value="<?php echo $hslpan['harga_jual_panel'];?>" required onchange="kaliedit();" style="width:100%;">
                         <input type="hidden" class="form-control" id="hargapokoklme" name="hargapokoklme" value="<?php echo $hslpan['harga_jual_panel'];?>" readonly required>
                    </div>
                  </td>
                </tr>

                <tr role="row" class="even">
                 <td class="sorting_1" width="15%">Diskon</td>
                  <td width="30%">
                    <div class="col-sm-10">
                         <input type="text" class="form-control" id="diskone" name="diskone" value="<?php echo $hslpan['diskon_panel'];?>" required onchange="kaliedit();" style="width:100%;">
                            <input type="hidden" class="form-control" id="hargadiskonlme" name="hargadiskonlme" value="<?php echo $hslpan['harga_diskon_panel'];?>" required readonly>
                    </div>%
                  </td>
                  <td  width="10%">Harga Total</td>
                  <td  width="50%"><div class="col-sm-10">
                     <input type="text" class="form-control" id="hargatotale" name="hargatotale" value="<?php echo $hslpan['harga_total_estimasi_panel'];?>" required readonly>
                            <input type="hidden" class="form-control" id="hargatotallm" name="hargatotallm" value="<?php echo $hslpan['harga_total_estimasi_panel'];?>" required readonly style="width:100%;">
                    </div>                    
                  </td>
               </tr>
                <tr role="row" class="odd"  id="showAsuransi">
                 <td class="sorting_1" width="15%">Mark</td>
                  <td width="30%"> 
                              <div class="col-sm-10">
                                <?php if ($hslpan['mark_panel']==1){$ck='checked';}else{$ck='';}?>
                                <input type="checkbox" id="ceke" name="ceke" onclick="cekbe();" <?php echo $ck; ?> >
                                <input type="hidden" class="form-control" id="marke" name="marke" readonly>
                          
                              </div>
                  </td>
                  <td  width="10%"></td>
                  <td  width="50%"><div class="col-sm-10">
                    </div>                    
                  </td>
               </tr>
               <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave">
                 <input type="hidden" class="form-control" id="ide" name="ide" value="<?php echo $id?>" required>
                            <input type="hidden" class="form-control" id="idestimasie" name="idestimasie" value="<?php echo $idestimasi?>" required>
				                    <button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalEditPanel').modal('hide');">&nbsp;Batal&nbsp;</button>
                </td></tr>
                </tbody>
              </table>  
				            </form>
				          </div>
				</div>
</div>
<?php include_once 'panel_pilih_edit.php';?>
<script type="text/javascript">
  function pilihpanele(){ 
    $("#ModalPilihPanelEdit").modal({backdrop: 'static', keyboard:false});   
    //alert('milih');
  }
  function cekbe(){
    if(ceke.checked==true){$('#marke').val('1');}else{$('#marke').val('0');}
  }
  function kaliedit(){
    
    var hasile= $("#hargapokoke").val()-($("#diskone").val()*$("#hargapokoke").val()/100);
    //alert($("#diskone").val());
    $("#hargatotale").val(hasile);
    //alert(hasil);
  }
	$(document).ready(function (){

                      $("#formPanelEdit").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'estimasi/panel_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){  
                                                      //var hsl = data.trim();
                                                      //alert(hsl);
			                                                $("#tablepanel").load('estimasi/panel_load.php?idestimasi=<?php echo $idestimasi;?>');
                                                      $("#tableestimasi").load('estimasi/estimasi_load.php');
                                                      $('.modal-body').css('opacity', '');

                                                      alert('Data Berhasil Disimpan');
                                                      $('#ModalEditPanel').modal('hide');
                                                      $("#tableestimasidetail").load('estimasi/estimasi_detail_tab.php?idestimasi=<?php echo $idestimasi;?>');
			                                            }
                                                      
                                                });
                      });
    });

</script>