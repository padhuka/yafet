<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    $idpkb=$_GET['idpkb'];
    $id=$_GET['id'];

    $sqlpan= "SELECT * FROM t_pkb_part_detail WHERE id='$id'";
    $hslpan= mysql_fetch_array(mysql_query($sqlpan));

    $snm = "SELECT * FROM t_part WHERE id_part='$hslpan[fk_part]'";
    $hnm = mysql_fetch_array(mysql_query($snm));

   ?>
<div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Edit Data Part <button type="button" class="close" aria-label="Close" onclick="$('#ModalEditPart').modal('hide');"><span>&times;</span></button></h4> 
                    </div>
                    <div class="modal-body">
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formpartEdit">
                       <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                          <thead>
                          
                          </thead>
                          <tbody>
                            <tr role="row" class="odd">
                              <td class="sorting_1" width="20%">Nama</td>
                              <td width="30%">
                                  <input type="hidden" class="form-control" id="partep" name="partep" value="<?php echo $hslpan['fk_part'];?>" required>
				                          <input type="text" class="form-control" id="partnmep" name="partnmep" value="<?php echo $hnm['nama'];?>" readonly required>                            
                              </td>
                              <td  width="20%"></td>
                              <td  width="50%">
                                </td>
                              </td>
                            </tr>
                            <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Harga</td>
                                <td width="30%">
                                    <input type="text" class="form-control" id="hargapokokep" name="hargapokokep" value="<?php echo $hslpan['harga_jual_part'];?>" required>
                                    <input type="hidden" class="form-control" id="hargapokoklmep" name="hargapokoklmep" value="<?php echo $hslpan['harga_jual_part'];?>" readonly required>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>

                              <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Diskon</td>
                                <td width="30%">
                                      <input type="text" class="form-control" id="diskonep" name="diskonep" value="<?php echo $hslpan['diskon_part'];?>" required onchange="kaliedite();">
                                      <input type="hidden" class="form-control" id="hargadiskonlmep" name="hargadiskonlmep" value="<?php echo $hslpan['harga_diskon_part'];?>" required readonly>   
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>
                              <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Quantity</td>
                                <td width="30%">
                                      <input type="text" class="form-control" id="qty" name="qty" value="<?php echo $hslpan['qty_part'];?>" required onchange="kaliedite();">
                            <input type="hidden" class="form-control" id="qtylm" name="qtylm" value="<?php echo $hslpan['qty_part'];?>" required readonly>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>
                              <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Harga Total</td>
                                <td width="50%">
                                      <input type="text" class="form-control" id="hargatotalep" name="hargatotalep" value="<?php echo $hslpan['harga_total_pkb_part'];?>" required readonly>
                            <input type="hidden" class="form-control" id="hargatotallmep" name="hargatotallmep" value="<?php echo $hslpan['harga_total_pkb_part'];?>" required readonly>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>
                  
                              <br>
                              <tr><td colspan="4">&nbsp;</td></tr>
                              <tr><td colspan="4" align="center" class="bgsave">
                                     <input type="hidden" class="form-control" id="idep" name="idep" value="<?php echo $id?>" required>
                            <input type="hidden" class="form-control" id="idpkbep" name="idpkbep" value="<?php echo $idpkb?>" required>
				                    <button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalEditPart').modal('hide');">&nbsp;Batal&nbsp;</button>
                              </td></tr>
                            </tbody>
                        </table>

				               

				            </form>
				          </div>
				</div>
</div>
<script type="text/javascript">
 
  function kaliedite(){
    
    var hasile= ($("#hargapokokep").val()-($("#diskonep").val()*$("#hargapokokep").val()/100))*$("#qty").val();
    //alert($("#diskone").val());
    $("#hargatotalep").val(hasile);
    //alert(hasil);
  }
	$(document).ready(function (){

                      $("#formpartEdit").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'pkb/part_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){  
                                                      var hsl = data.trim();
                                                      alert(hsl);
			                                                $("#pkbpart").load('pkb/part_load.php?idpkb=<?php echo $idpkb;?>');
                                                      $('.modal-body').css('opacity', '');

                                                      alert('Data Berhasil Disimpan');
                                                      $('#ModalEditPart').modal('hide');
                                                      //$("#tablepkbdetail").load('pkb/pkb_detail_tab.php?idpkb=<?php echo $idpkb;?>');
                                                      $("#loaddetail").load('pkb/pkb_edit_detail_load.php?idpkb=<?php echo $idpkb;?>');
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