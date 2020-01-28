<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    $idestimasi=$_GET['idestimasi'];
    $id=$_GET['id'];

    $sqlpan= "SELECT * FROM t_estimasi_part_detail WHERE id='$id'";
    $hslpan= mysql_fetch_array(mysql_query($sqlpan));

    $snm = "SELECT * FROM t_part WHERE id_part='$hslpan[fk_part]'";
    $hnm = mysql_fetch_array(mysql_query($snm));

   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalAddPart').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Edit Estimasi Part</h4>
                    </div>
                    <div class="modal-body">
                    <br>
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formpartEdit">
                       <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                  <td class="sorting_1" width="10%">Nama</td>
                  <td width="40%">
                    <div class="col-sm-10">
                            <input type="hidden" class="form-control" id="parte" name="parte" value="<?php echo $hslpan['fk_part'];?>" required>
                            <input type="text" class="form-control" id="partnme" name="partnme" value="<?php echo $hnm['nama'];?>" readonly required  style="width:100%;">                            
                          </div>
                          <!--<button type="button" class=" btn btn-default btn-circle btn-md" data-toggle="modal" data-target="#myModal" onclick="pilihpartep();">Pilih</button>-->
                  </td>
                  <td  width="10%">Harga</td>
                  <td  width="50%">
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="hargapokokep" name="hargapokokep" value="<?php echo $hslpan['harga_jual_part'];?>" required onchange="kaliep();" style="width:100%;">
                         <input type="hidden" class="form-control" id="hargapokoklmep" name="hargapokoklmep" value="<?php echo $hslpan['harga_jual_part'];?>" readonly required>
                    </div>
                  </td>
                </tr>

                <tr role="row" class="even">
                 <td class="sorting_1" width="15%">Diskon</td>
                  <td width="30%">
                    <div class="col-sm-10">
                        <input type="text" class="form-control" id="diskonep" name="diskonep" value="<?php echo $hslpan['diskon_part'];?>" required onchange="kaliep();" style="width:100%;">
                            <input type="hidden" class="form-control" id="hargadiskonlmep" name="hargadiskonlmep" value="<?php echo $hslpan['harga_diskon_part'];?>" required readonly>
                    </div>%
                  </td>
                  <td  width="10%">Quantity</td>
                  <td  width="50%"><div class="col-sm-10">
                     <input type="text" class="form-control" id="qtye" name="qtye" required value="<?php echo $hslpan['qty_part'];?>" onchange="kaliep();" style="width:100%;">
                    </div>                    
                  </td>
               </tr>
                <tr role="row" class="odd"  id="showAsuransi">
                 <td class="sorting_1" width="15%">Harga Total</td>
                  <td width="30%"> 
                              <div class="col-sm-10">
                              <input type="text" class="form-control" id="hargatotalep" name="hargatotalep" value="<?php echo $hslpan['harga_total_estimasi_part'];?>" required readonly>
                            <input type="hidden" class="form-control" id="hargatotallmp" name="hargatotallmp" value="<?php echo $hslpan['harga_total_estimasi_part'];?>" required readonly>
                              </div>
                  </td>
                  <td  width="10%">Mark</td>
                  <td  width="50%"><?php if ($hslpan['mark_part']==1){$ck='checked';}else{$ck='';}?>
                          <div class="col-sm-3">
                            <input type="checkbox" id="cekep" name="cekep" onclick="cekbep();" <?php echo $ck; ?> >
                            <input type="hidden" class="form-control" id="markep" name="markep" readonly>
                          </div>        
                  </td>
               </tr>

               
              
               <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave">
                 <input type="hidden" class="form-control" id="idep" name="idep" value="<?php echo $id?>" required>
                            <input type="hidden" class="form-control" id="idestimasiep" name="idestimasiep" value="<?php echo $idestimasi?>" required>
                            <button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalEditPart').modal('hide');">&nbsp;Batal&nbsp;</button>
                </td></tr>
                </tbody>
              </table>  
                    </form>
                  </div>
        </div>
</div>
<?php include_once 'part_pilih_edit.php';?>
<script type="text/javascript">
  function pilihpartep(){ 
    $("#ModalPilihPartEdit").modal({backdrop: 'static', keyboard:false});   
    //alert('milih');
  }
   function cekbep(){
    if(cekep.checked==true){$('#markep').val('1');}else{$('#markep').val('0');}
  }
  function kaliep(){
     var hasil= ($("#hargapokokep").val()-($("#diskonep").val()*$("#hargapokokep").val()/100))*$("#qtye").val();
    $("#hargatotalep").val(hasil);
  }
  $(document).ready(function (){

                      $("#formpartEdit").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'estimasi/part_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){  
                                                      //var hsl = data.trim();
                                                      //alert(hsl);
                                                      $("#estimasipart").load('estimasi/part_load.php?idestimasi=<?php echo $idestimasi;?>');
                                                      $("#tableestimasi").load('estimasi/estimasi_load.php');
                                                      $('.modal-body').css('opacity', '');

                                                      alert('Data Berhasil Disimpan');
                                                      $('#ModalEditPart').modal('hide');
                                                      $("#tableestimasidetail").load('estimasi/estimasi_detail_tab.php?idestimasi=<?php echo $idestimasi;?>');
                                                  }
                                                      
                                                });
                      });
    });

</script>