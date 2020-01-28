<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    $idpkb=$_GET['idpkb'];
    $id=$_GET['id'];

    $sqlpan= "SELECT * FROM t_pkb_panel_detail WHERE id='$id'";
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
                        <h4 class="modal-title" id="myModalLabel">Tambah Data PKB</h4>
                    </div>
                    <div class="modal-body"><br>
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formPanelEdit">
                       <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                          <thead>
                          
                          </thead>
                          <tbody>
                            <tr role="row" class="odd">
                              <td class="sorting_1" width="20%">Nama</td>
                              <td width="30%">
                                  <input type="hidden" class="form-control" id="panele" name="panele" value="<?php echo $hslpan['fk_panel'];?>" required>
				                          <input type="text" class="form-control" id="panelnme" name="panelnme" value="<?php echo $hnm['nama'];?>" readonly required>                            
                              </td>
                              <td  width="20%"></td>
                              <td  width="50%">
                                </td>
                              </td>
                            </tr>
                            <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Harga</td>
                                <td width="30%">
                                    <input type="text" class="form-control" id="hargapokoke" name="hargapokoke" value="<?php echo $hslpan['harga_jual_panel'];?>" required onchange="hargarubah();">
                                    <input type="hidden" class="form-control" id="hargapokoklme" name="hargapokoklme" value="<?php echo $hslpan['harga_jual_panel'];?>" readonly required>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>

                              <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Diskon</td>
                                <td width="30%">
                                      <input type="text" class="form-control" id="diskone" name="diskone" value="<?php echo $hslpan['diskon_panel'];?>" required onchange="kaliedit();">
                                      <input type="hidden" class="form-control" id="hargadiskonlme" name="hargadiskonlme" value="<?php echo $hslpan['harga_diskon_panel'];?>" required readonly>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>
                              <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Harga Total</td>
                                <td width="50%">
                                      <input type="text" class="form-control" id="hargatotale" name="hargatotale" value="<?php echo $hslpan['harga_total_pkb_panel'];?>" required readonly>
                                      <input type="hidden" class="form-control" id="hargatotallm" name="hargatotallm" value="<?php echo $hslpan['harga_total_pkb_panel'];?>" required readonly>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>
                  
                              <br>
                              <tr><td colspan="4">&nbsp;</td></tr>
                              <tr><td colspan="4" align="center" class="bgsave">
                                    <input type="hidden" class="form-control" id="ide" name="ide" value="<?php echo $id?>" required>
                                    <input type="hidden" class="form-control" id="idpkbe" name="idpkbe" value="<?php echo $idpkb?>" required>
                                    <button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalEditPanel').modal('hide');">&nbsp;Batal&nbsp;</button>
                              </td></tr>
                            </tbody>
                        </table>
                       
				                

				            </form>
				          </div>
				</div>
</div>
<script type="text/javascript">
  
  
  function kaliedit(){
    
    var hasile= $("#hargapokoke").val()-($("#diskone").val()*$("#hargapokoke").val()/100);
    $("#hargatotale").val(hasile);
  }

 function hargarubah(){
    
    var hasile= $("#hargapokoke").val()-($("#diskone").val()*$("#hargapokoke").val()/100);
    $("#hargatotale").val(hasile);
  }

	$(document).ready(function (){

                      $("#formPanelEdit").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'pkb/panel_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){  
                                                      //var hsl = data.trim();
                                                      //alert(hsl);
			                                                $("#pkbpanel").load('pkb/panel_load.php?idpkb=<?php echo $idpkb;?>');
                                                      $('.modal-body').css('opacity', '');

                                                      alert('Data Berhasil Disimpan');
                                                      $('#ModalEditPanel').modal('hide');
                                                      //$("#tablepkbdetail").load('pkb/pkb_detail_tab.php?idpkb=<?php echo $idpkb;?>');
                                                      $("#loaddetail").load('pkb/pkb_edit_detail_load.php?idpkb=<?php echo $idpkb;?>');
			                                            }
                                                      
                                                });
                      });
    });

</script>