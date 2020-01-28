<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    $idnonpkb=$_GET['idnonpkb'];
    $id=$_GET['id'];

    $sqlpan= "SELECT * FROM t_nonpkb_cuci_detail WHERE id='$id'";
    $hslpan= mysql_fetch_array(mysql_query($sqlpan));

    $snm = "SELECT * FROM t_cuci WHERE id_cuci='$hslpan[fk_cuci]'";
    $hnm = mysql_fetch_array(mysql_query($snm));

   ?>

<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalEditcuci').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Edit Data Non PKB</h4>
                    </div>

                    <div class="modal-body">
                    <br>
                    <form class="form-horizontal" enctype="multicuci/form-data" novalidate id="formcuciEdit">
                       <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                          <thead>
                          
                          </thead>
                          <tbody>
                            <tr role="row" class="odd">
                              <td class="sorting_1" width="20%">Nama</td>
                              <td width="30%"><div class="col-sm-10" style="margin-left:-15px;">
                                  <input type="hidden" class="form-control" id="cucie" name="cucie" value="<?php echo $hslpan['fk_cuci'];?>" required>
                            <input type="text" class="form-control" id="cucinme" name="cucinme" value="<?php echo $hnm['nama'];?>" readonly required>                            
                          </div><button type="button" class=" btn btn-default btn-circle btn-md" data-toggle="modal" data-target="#myModal" onclick="pilihcuciep();">Pilih</button>
                              </td>
                              <td  width="20%"></td>
                              <td  width="50%">
                                </td>
                              </td>
                            </tr>
                            <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Harga</td>
                                <td width="30%">
                                    <input type="text" class="form-control" id="hargapokokep" name="hargapokokep" value="<?php echo $hslpan['harga_jual_cuci'];?>" required onchange="kaliep();">
                         <input type="hidden" class="form-control" id="hargapokoklmep" name="hargapokoklmep" value="<?php echo $hslpan['harga_jual_cuci'];?>" readonly required>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>

                              <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Diskon</td>
                                <td width="30%">
                                      <input type="text" class="form-control" id="diskonep" name="diskonep" value="<?php echo $hslpan['diskon_cuci'];?>" required onchange="kaliep();">
                            <input type="hidden" class="form-control" id="hargadiskonlmep" name="hargadiskonlmep" value="<?php echo $hslpan['harga_diskon_cuci'];?>" required readonly>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>
                              <input type="hidden" class="form-control" id="qtye" name="qtye" required value="<?php echo $hslpan['qty_cuci'];?>" onchange="kaliep();">
                              <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Harga Total</td>
                                <td width="50%">                                      
                            <input type="text" class="form-control" id="hargatotalep" name="hargatotalep" value="<?php echo $hslpan['harga_total_nonpkb_cuci'];?>" required readonly>
                            <input type="hidden" class="form-control" id="hargatotallmp" name="hargatotallmp" value="<?php echo $hslpan['harga_total_nonpkb_cuci'];?>" required readonly>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>

                                  <br>
                              <tr><td colspan="4">&nbsp;</td></tr>
                              <tr><td colspan="4" align="center" class="bgsave">
                               <input type="hidden" class="form-control" id="idep" name="idep" value="<?php echo $id?>" required>
                            <input type="hidden" class="form-control" id="idnonpkbep" name="idnonpkbep" value="<?php echo $idnonpkb?>" required>
                            <button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalEditcuci').modal('hide');">&nbsp;Batal&nbsp;</button>
                              </td></tr>
                            </tbody>
                        </table>                       

                    </form>
                  </div>
        </div>
</div>
<?php include_once 'cuci_pilih_edit.php';?>
<script type="text/javascript">
  function pilihcuciep(){ 
    $("#ModalPilihcuciEdit").modal({backdrop: 'static', keyboard:false});   
    //alert('milih');
  }
   
  function kaliep(){
     var hasil= ($("#hargapokokep").val()-($("#diskonep").val()*$("#hargapokokep").val()/100))*$("#qtye").val();
    $("#hargatotalep").val(hasil);
  }
  $(document).ready(function (){

                      $("#formcuciEdit").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'nonpkb/cuci_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){  
                                                      //var hsl = data.trim();
                                                      //alert(hsl);
                                                      $("#nonpkbcuci").load('nonpkb/cuci_load.php?idnonpkb=<?php echo $idnonpkb;?>');
                                                      $("#tablenonpkb").load('nonpkb/nonpkb_load.php');
                                                      $('.modal-body').css('opacity', '');

                                                      alert('Data Berhasil Disimpan');
                                                      $('#ModalEditcuci').modal('hide');
                                                      $("#tablenonpkbdetail").load('nonpkb/nonpkb_detail_tab.php?idnonpkb=<?php echo $idnonpkb;?>');
                                                  }
                                                      
                                                });
                      });
    });

</script>

<style type="text/css">
  .modal-footer {
    padding-top: 10px;
    padding-bottom: 0px;
    padding-left: 0px;
    padding-right: 0px;
  }
  .modal-title {
    font-style: italic;
    background-color: lightcoral;
    text-align: center;
    font-weight: bold;
  }
  .modal-dialog {
    margin-bottom: 0px;
    border: 3px;
  }
</style>