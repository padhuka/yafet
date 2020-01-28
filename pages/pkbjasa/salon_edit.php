<!-- general form elements disabled -->
   <?php
    include_once '../../lib/config.php';
    $idnonpkb=$_GET['idnonpkb'];
    $id=$_GET['id'];

    $sqlpan= "SELECT * FROM t_nonpkb_salon_detail WHERE id='$id'";
    $hslpan= mysql_fetch_array(mysql_query($sqlpan));

    $snm = "SELECT * FROM t_salon WHERE id_salon='$hslpan[fk_salon]'";
    $hnm = mysql_fetch_array(mysql_query($snm));

   ?>
<div class="modal-dialog">
  <div class="title">
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalEditsalon').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Non PKB - Salon</h4>
                    </div>

                    <div class="modal-body"><br>
                    <form class="form-horizontal" enctype="multicuci/form-data" novalidate id="formsalonEdit">
                       <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                          <thead>
                          
                          </thead>
                          <tbody>
                            <tr role="row" class="odd">
                              <td class="sorting_1" width="20%">Nama</td>
                              <td width="30%"><div class="col-sm-10" style="margin-left:-15px;">
                                  <input type="hidden" class="form-control" id="salone" name="salone" value="<?php echo $hslpan['fk_salon'];?>" required>
                            <input type="text" class="form-control" id="salonnme" name="salonnme" value="<?php echo $hnm['nama'];?>" readonly required>                            
                          </div><button type="button" class=" btn btn-default btn-circle btn-md" data-toggle="modal" data-target="#myModal" onclick="pilihsalone();">Pilih</button>
                              </td>
                              <td  width="20%"></td>
                              <td  width="50%">
                                </td>
                              </td>
                            </tr>
                            <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Harga</td>
                                <td width="30%">
                                    <input type="text" class="form-control" id="hargapokoke" name="hargapokoke" value="<?php echo $hslpan['harga_jual_salon'];?>" required onchange="kaliedit();">
                         <input type="hidden" class="form-control" id="hargapokoklme" name="hargapokoklme" value="<?php echo $hslpan['harga_jual_salon'];?>" readonly required>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>

                              <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Diskon</td>
                                <td width="30%">
                                      <input type="text" class="form-control" id="diskone" name="diskone" value="<?php echo $hslpan['diskon_salon'];?>" required onchange="kaliedit();">
                            <input type="hidden" class="form-control" id="hargadiskonlme" name="hargadiskonlme" value="<?php echo $hslpan['harga_diskon_salon'];?>" required readonly>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>
                                      <input type="hidden" class="form-control" id="qty" name="qty" required onchange="kalip();">
                                
                              <tr role="row" class="even">
                                <td class="sorting_1" width="15%">Harga Total</td>
                                <td width="50%">                                      
                                    <input type="text" class="form-control" id="hargatotale" name="hargatotale" value="<?php echo $hslpan['harga_total_nonpkb_salon'];?>" required readonly>
                            <input type="hidden" class="form-control" id="hargatotallme" name="hargatotallme" value="<?php echo $hslpan['harga_total_nonpkb_salon'];?>" required readonly>
                                </td>
                                <td  width="20%"></td>
                                <td  width="50%">                     
                                </td>
                              </tr>                  
                              <br>
                              <tr><td colspan="4">&nbsp;</td></tr>
                              <tr><td colspan="4" align="center" class="bgsave">
                                     <input type="hidden" class="form-control" id="ide" name="ide" value="<?php echo $id?>" required>
                                <input type="hidden" class="form-control" id="idnonpkbe" name="idnonpkbe" value="<?php echo $idnonpkb?>" required>
                                <button type="submit" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                        <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalEditsalon').modal('hide');">&nbsp;Batal&nbsp;</button>
                              </td></tr>
                            </tbody>
                        </table>
                    </form>
                  </div>
        </div>
</div>
<?php include_once 'salon_pilih_edit.php';?>
<script type="text/javascript">
  function pilihsalone(){ 
    $("#ModalPilihsalonEdit").modal({backdrop: 'static', keyboard:false});   
    //alert('milih');
  }
  function kaliedit(){
    
    var hasile= $("#hargapokoke").val()-($("#diskone").val()*$("#hargapokoke").val()/100);
    //alert($("#diskone").val());
    $("#hargatotale").val(hasile);
  }
  $(document).ready(function (){

                       $("#formsalonEdit").on('submit', function(e){
                          e.preventDefault();                 ;;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'nonpkb/salon_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){  
                                                      //var hsl = data.trim();
                                                      //alert(hsl);
                                                      $("#tablesalon").load('nonpkb/salon_load.php?idnonpkb=<?php echo $idnonpkb;?>');
                                                      $("#tablenonpkb").load('nonpkb/nonpkb_load.php');
                                                      $('.modal-body').css('opacity', '');

                                                      alert('Data Berhasil Disimpan');
                                                      $('#ModalEditsalon').modal('hide');
                                                      $("#tablenonpkbdetail").load('nonpkb/nonpkb_detail_tab.php?idnonpkb=<?php echo $idnonpkb;?>');
                                                  }
                                                      
                                                });
                      });
    });

</script>