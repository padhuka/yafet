<!-- general form elements disabled -->
   <?php

    include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idestimasi= $_GET['idestimasi'];
    $sqlpan= "SELECT * FROM t_estimasi WHERE id_estimasi='$idestimasi'";
    $catat= mysql_fetch_array(mysql_query($sqlpan));

    $sqlcatat = "SELECT * FROM t_inventory_bengkel A, t_warna_kendaraan B  WHERE A.no_chasis='$catat[fk_no_chasis]' AND A.fk_warna_kendaraan=B.id_warna_kendaraan";  
    
    $swrn= mysql_fetch_array(mysql_query($sqlcatat));
    $wrne=$swrn['nama'];
    $kdwrne=$swrn['fk_warna_kendaraan'];

    $sas = "SELECT * FROM t_asuransi WHERE id_asuransi='$catat[fk_asuransi]'";
    $has= mysql_fetch_array(mysql_query($sas));
    $nmas=$has['nama'];
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Edit Data Estimasi</h4>
                    </div>
				            <!-- form start -->
                   <div class="modal-body">
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formestimasie">
                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                  <td class="sorting_1" width="15%">Tgl Masuk</td>
                  <td width="30%"> <input type="text" class="form-control" id="tgl" name="tgl"  value="<?php echo date('d-m-Y' , strtotime($harinow));?>" required readonly></td>
                  <td  width="10%">No Chasis</td>
                  <td  width="50%"><div class="col-sm-10">
                          <input type="text" class="form-control" id="chasise" name="chasise" readonly value="<?php echo $catat['fk_no_chasis'];?>" style="width:100%;">
                          </div>
                          <button type="button" class="btn btn-default btn-circle" data-toggle="modal" data-target="#myModal" onclick="editChasis();">Pilih</button>
                  </td>
                </tr>

                <tr role="row" class="even">
                 <td class="sorting_1" width="15%">Kategori</td>
                  <td width="30%"> 
                                <select id="kategorie" name="kategorie" onchange="selectKategorie();">    
                                <option value="<?php echo $catat['kategori'];?>"><?php echo $catat['kategori'];?></option>                            
                                  <option value="Pribadi">Pribadi</option>
                                  <option value="Asuransi">Asuransi</option>
                                </select>                                  
                  </td>
                  <td  width="10%">No Mesin</td>
                  <td  width="50%"><div class="col-sm-10">
                     <input type="text"  class="form-control" id="mesine" name="mesine" readonly style="width:100%;" value="<?php echo $catat['fk_no_mesin'];?>">
                    </div>                    
                  </td>
               </tr>
                <tr role="row" class="odd"  id="showAsuransie">
                 <td class="sorting_1" width="15%">Asuransi</td>
                  <td width="30%"> 
                               <input type="hidden" class="form-control" id="asuransie" name="asuransie"> 
                                <input type="text" class="form-control" id="asuransinme" name="asuransinme" readonly> 
                                <button type="button" class="btn btn-default btn-circle" data-toggle="modal" data-target="#myModal" onclick="selectKategorie();" id="buttonAsuransi">Pilih Asuransi</button>
                  </td>
                  <td  width="10%"></td>
                  <td  width="50%"><div class="col-sm-10">
                     
                    </div>                    
                  </td>
               </tr>

               <tr role="row" class="even">
                 <td class="sorting_1" width="15%">KM Masuk</td>
                  <td width="30%"> <input type="text" class="form-control" id="kmmasuke" name="kmmasuke" required value="<?php echo $catat['km_masuk'];?>"></td>
                  <td  width="10%">No Polisi</td>
                  <td  width="50%"><div class="col-sm-10">
                     <input type="text"  class="form-control" id="polisie" name="polisie" readonly style="width:100%;"  value="<?php echo $catat['fk_no_polisi'];?>">
                    </div>
                  </td>
               </tr>
               
               <tr role="row" class="odd">
                 <td class="sorting_1" width="15%">Tgl Estimasi Selesai</td>
                  <td width="30%"><input type="text" class="form-control" id="tglselesai" name="tglselesai" required value="<?php echo $harinow;?>" readonly></td>
                  <td  width="10%">Warna</td>
                  <td  width="50%"><div class="col-sm-10">
                  <input type="hidden"  class="form-control" id="warnae" name="warnae" readonly style="width:100%;" value="<?php echo $kdwrne;?>">
                  <input type="text"  class="form-control" id="warnanme" name="warnanme" readonly style="width:100%;" value="<?php echo $wrne;?>">
                  </div>
                  </td>
               </tr>
              
               <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave"><button type="submit" class="btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button>
                                    <input type="hidden" class="form-control" id="idestimasie" name="idestimasie" value="<?php echo $idestimasi;?>" readonly>
                          <input type="hidden" class="form-control" id="unamee" name="unamee" value="<?php echo $sesuname;?>" readonly>
                          <input type="hidden" class="form-control" id="customere" name="customere" readonly value="<?php echo $catat['fk_customer'];?>">                        
                </td></tr>
                </tbody>
              </table>  

                    </form>
                    </div>
        </div>
</div>
<?php include_once 'estimasi_chasis_edit_tab.php';?>
<?php include_once 'estimasi_asuransi_edit_tab.php';?>
<style>
    .modal-content {
    height: 60%;
  }
</style>
<script type="text/javascript">
  //selectKategorie();

  function selectKategorie(){
    var infor = $('#kategorie').val();
    if (infor=='Asuransi') {
      $('#buttonAsuransie').show();$('#showAsuransie').show();
    }

    if (infor=='Pribadi'){
      $('#buttonAsuransie').hide();$('#showAsuransie').hide();$('#asuransie').val('');$('#asuransinme').val('');
    }
  }

  function selectAsuransie(){ 
    $("#ModalAsuransiEdit").modal('show',{backdrop: 'static',keyboard:false});   
  }
  function editChasis(){ 
    $("#ModalChasisEdit").modal({backdrop: 'static',keyboard:false});   
  }
  $(document).ready(function (){

                      $("#formestimasie").on('submit', function(e){
                          var chs= $("#chasise").val();
                          var km=  $("#kmmasuke").val();
                          if (chs==''){
                            alert('Data ada yang belum diisi');
                            return false;
                          }
                          e.preventDefault();
                            //alert(disposisine)                       ;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'estimasi/estimasi_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        $("#tableestimasi").load('estimasi/estimasi_load.php');
                                                        $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalEdit').modal('hide'); 
                                                            var hsl=data.trim();       

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
