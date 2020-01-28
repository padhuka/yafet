<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    $idnonpkb=$_GET['idnonpkb'];
   ?>

<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalAddsalon').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Non PKB - Salon</h4>
                    </div>

                    <div class="modal-body"><br>
				            <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formsalon">
                       <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                          <thead>
                          
                          </thead>
                          <tbody>
                            <tr role="row" class="odd">
                              <td class="sorting_1" width="20%">Nama</td>
                              <td width="30%"><div class="col-sm-10" style="margin-left:-15px;">
                                  <input type="hidden" class="form-control" id="salon" name="salon" required>
				                    <input type="text" class="form-control" id="salonnm" name="salonnm" readonly required>
				                  </div><button type="button" class=" btn btn-default btn-circle" data-toggle="modal" data-target="#myModal" onclick="pilihsalon();">Pilih</button>
                              </td>
                              <td  width="20%"></td>
                              <td  width="50%">
                                </td>
                              </td>
                            </tr>
                            <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Harga</td>
                                <td width="30%">
                                    <input type="text" class="form-control" id="hargapokok" name="hargapokok" required onchange="kali();">
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>

                              <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Diskon</td>
                                <td width="30%">
                                      <input type="text" class="form-control" id="diskon" name="diskon" required onchange="kali();">
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>
                                      <input type="hidden" class="form-control" id="qty" name="qty" required onchange="kalip();">
                                
                              <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Harga Total</td>
                                <td width="50%">                                      
                                    <input type="text" class="form-control" id="hargatotal" name="hargatotal" required readonly>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>                  
                              <br>
                              <tr><td colspan="4">&nbsp;</td></tr>
                              <tr><td colspan="4" align="center" class="bgsave">
                                      <input type="hidden" class="form-control" id="idnonpkb" name="idnonpkb" value="<?php echo $idnonpkb?>" required>
				                    <button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalAddsalon').modal('hide');">&nbsp;Batal&nbsp;</button>
                              </td></tr>
                            </tbody>
                        </table>
				            </form>
				          </div>
				</div>
</div>
<?php include_once 'salon_pilih.php';?>
<script type="text/javascript">
  function pilihsalon(){ 
    $("#ModalPilihsalon").modal({backdrop: 'static', keyboard:false});   
  }
 
  function kali(){
    var hasil= $("#hargapokok").val()-($("#diskon").val()*$("#hargapokok").val()/100);
    $("#hargatotal").val(hasil);
    //alert(hasil);
  }
	$(document).ready(function (){
                      $("#formsalon").on('submit', function(e){
                          e.preventDefault();
                            //alert(disposisine)                       ;
                           						$.ajax({
                                                  type: 'POST',
                                                  url: 'nonpkb/salon_add_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){  
                                                      //var hsl=data.trim();
                                                      //alert(hsl);
                                                      //alert('nonpkb/nonpkb_detail_tab.php?idnonpkb=<?php //echo $idnonpkb;?>');
			                                                $("#tablesalon").load('nonpkb/salon_load.php?idnonpkb=<?php echo $idnonpkb;?>');

                                                      
                                                      $("#tablenonpkb").load('nonpkb/nonpkb_load.php');
                                                                      $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalAddsalon').modal('hide');
                                                    $("#tablenonpkbdetail").load('nonpkb/nonpkb_detail_tab.php?idnonpkb=<?php echo $idnonpkb;?>');
			                                            }
                                                      
                                                });
                      });
    });

</script>