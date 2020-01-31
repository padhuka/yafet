<?php
     include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id = $_GET['id'];
    $sqlemp = "SELECT * FROM t_pkb_jasa_detail WHERE id='$id'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
    $idpkbjasa=$emp['fk_pkb_jasa'];
    //echo $sqlemp;
    $nmjasa="SELECT * FROM t_jasa WHERE id_jasa='$emp[fk_jasa]'";
    $hjasa=mysql_fetch_array(mysql_query($nmjasa));
?>
<div class="modal-dialog">
            <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalDeletejasa').hide();$('#ModalAddjasaxy').modal('hide');">x</button></td></tr></table>
  </div>

                <div class="modal-content" style="height:160px;">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Hapus Data jasa</h4>
                    </div>
                        <br>
                        <div class="modal-body">
                        <div class="row">
                        <div class="col-lg-12">    
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $hjasa['nama'];?>) ?</div>
                                   <h4 class="modal-title" id="myModalLabel">
                                             <input type="hidden" id="id_jasa" name="id_jasa" value="<?php echo $id;?>">
                                            <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class=" btn btn-default btn-circle"  onclick="$('#ModalDeletejasay').hide();$('#ModalAddjasaxy').modal('hide');" aria-hid_jasa="true">&nbsp;Batal&nbsp;</button>
                                        </h4>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>


         

                <script type="text/javascript">
                  $(document).ready(function (){
                        $(".save_submit").click(function (e){
                            //var id_jasa = $('#id_jasa').val();       
                            //alert(<?php echo $id;?>);
                            //return false;
                                $.ajax({
                                   url: 'pkbjasa/jasay_del_save.php?id=<?php echo $id;?>&idpkbjasa=<?php echo $idpkbjasa;?>',
                                    type: 'GET',
                                    success: function (response){
                                       
                                        alert('Data Berhasil Dihapus');
                                       

                                                        $("#tablepkbjasa").load('pkbjasa/pkbjasa_load.php');
			                                            $("#pkbjasa").load('pkbjasa/jasa_load.php?idpkbjasa=<?php echo $idpkbjasa;?>');
                                                         $('.modal-body').css('opacity', '');

                                                            
                                                            $('#ModalDeletejasay').modal('hide');
                                                            $('#ModalAddjasay').modal('hide');
                                                            $("#tablepkbjasa").load('pkbjasa/pkbjasa_load.php');
                                                            $("#tablepkbjasadetail").load('pkbjasa/pkbjasa_detail_tab.php?idpkbjasa=<?php echo $idpkbjasa;?>');
                                                            $("#ModalpkbjasaDet").html(ajaxData);
                                                            $("#ModalpkbjasaDet").modal({backdrop: 'static', keyboard:false});
                                    }
                                });                          
                        });
                    });
              </script> 