<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id = $_GET['idnonpkb'];
    $sqlemp = "SELECT * FROM t_nonpkb WHERE id_nonpkb='$id'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );

?>

            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Batal Data nonpkb <button type="button" class="close" aria-label="Close" onclick="$('#ModalDelete').modal('hide');"><span>&times;</span></button></h4> 
                    </div>
                        <div class="panel-body">

                            <div class="row">
                                <div class="col-lg-6">
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin membatalkan data ini ( <?php echo $id;?>) ?</div>
                                        <div class="form-group">
                                            <input type="hidden" id="id" name="id" value="<?php echo $id;?>">
                                            <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalDelete').modal('hide');" >&nbsp;Batal&nbsp;</button>
                                        </div>
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
                           $.ajax({
                                url: 'nonpkb/nonpkb_del_save.php?idnonpkb=<?php echo $id;?>',
                                type: 'GET',
                                success: function (response){
                                      //alert('panel/panel_del_save.php?id_panel='+id_panel);
                                     $("#tablenonpkb").load('nonpkb/nonpkb_load.php');
                                     $('.modal-body').css('opacity', '');
                                      alert('nonpkb Berhasil Di Batalkan');
                                      $('#ModalDelete').modal('hide');
                                  }
                            });

                    });
                });
              </script> 