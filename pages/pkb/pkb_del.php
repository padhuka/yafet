<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id = $_GET['idpkb'];
    $sqlemp = "SELECT * FROM t_pkb WHERE id_pkb='$id'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );

?>

           <div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Batal Data PKB</h4>
                    </div>
                        <div class="panel-body">
                        <form>
                            <div class="row">
                                <div class="col-lg-12">                                    
                                    <div class="alert alert-danger">Apakah anda yakin ingin membatalkan data ini ( <?php echo $id;?>) ?</div>                                                                           
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    
                                        <div class="form-group">
                                            <h4 class="modal-title" id="myModalLabel">
                                              <input type="hidden" id="id" name="id" value="<?php echo $id;?>">
                                              <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                              <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalDelete').modal('hide');" >&nbsp;Batal&nbsp;</button>
                                            </h4>
                                        </div>
                                    
                                </div>
                            </div>
                        </form>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>

                <script type="text/javascript">
                  $(document).ready(function (){
                        $(".save_submit").click(function (e){
                           $.ajax({
                                url: 'pkb/pkb_del_save.php?idpkb=<?php echo $id;?>',
                                type: 'GET',
                                success: function (response){
                                      //alert('panel/panel_del_save.php?id_panel='+id_panel);
                                     $("#tablepkb").load('pkb/pkb_load.php');
                                     $('.modal-body').css('opacity', '');
                                      alert('Data Berhasil Dibatalkan');
                                      $('#ModalDelete').modal('hide');
                                  }
                            });

                    });
                });
              </script> 