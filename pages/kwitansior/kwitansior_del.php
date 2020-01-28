<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id = $_GET['idkwitansior'];
    $sqlemp = "SELECT * FROM t_kwitansi_or WHERE no_kwitansi_or='$id'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );

?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
               <div class="modal-content" style="height:190px;">
				            <!-- form start -->                    
                    <div class="modal-header">                        
                       <h4 class="modal-title"  style="height:30px;">Batal Kwitansi OR</h4>
                    </div>
                    <br>
                        <div class="modal-body">

                            <div class="row">
                                <div class="col-lg-12">
                                   <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formkwitansior">
                                        <div class="alert alert-danger">Apakah anda yakin ingin membatalkan No Kwitansi ( <?php echo $id;?>) ?</div>
                                          <div class="form-group">
                                          <div class="col-sm-4">
                                            <label for="keteranganbatal"> Keterangan Batal</label>
                                          </div>
                                          <div class="col-sm-8">
                                            <input type="text" class="form-control" id="keteranganbatal" name="keteranganbatal" required>
                                          </div>
                                        </div>
                                        <div class="row">
                                          <div class="col-sm-12">
                                              <h4 class="modal-title" id="myModalLabel">
                                                    <input type="hidden" id="id" name="id" value="<?php echo $id;?>">
                                                    <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                                    <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalDelete').modal('hide');" >&nbsp;Batal&nbsp;</button>
                                              </h4>
                                          </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <!-- /.panel-body -->
                    </div>



                <script type="text/javascript">
                  $(document).ready(function (){
                        $(".save_submit").click(function (e){
                           var keteranganbatal = $('#keteranganbatal').val();
                           $.ajax({
                                url: 'kwitansior/kwitansior_del_save.php?idkwitansior=<?php echo $id;?>&keteranganbatal='+keteranganbatal,
                                type: 'GET',
                                success: function (response){
                                  //alert($)
                                      //alert('panel/panel_del_save.php?id_panel='+id_panel);
                                     $("#kwitansior").load('kwitansior/kwitansior_load.php');
                                     $('.modal-body').css('opacity', '');
                                      alert('Data Berhasil Dibatalkan');
                                      $('#ModalDelete').modal('hide');
                                  }
                            });

                    });
                });
              </script> 