<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id = $_GET['idpkbjasa'];
    $sqlemp = "SELECT * FROM t_pkb_jasa WHERE id_pkb_jasa='$id'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );

?>

            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Tutup PKB <button type="button" class="close" aria-label="Close" onclick="$('#ModalTutup').modal('hide');"><span>&times;</span></button></h4> 
                    </div>
                        <div class="panel-body">

                            <div class="row">
                                <div class="col-lg-12">
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin menutup PKB ini ( <?php echo $id;?>) ?</div>
                                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">
                                            <input type="hidden" id="id" name="id" value="<?php echo $id;?>">
                                            <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalTutup').modal('hide');" >&nbsp;Batal&nbsp;</button>
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
                           $.ajax({
                                url: 'pkbjasastatus/pkbjasa_tutup_save.php?idpkbjasa=<?php echo $id;?>',
                                type: 'GET',
                                success: function (response){
                                      //alert('panel/panel_del_save.php?id_panel='+id_panel);
                                     $("#tablepkbjasa").load('pkbjasastatus/pkbjasa_load.php');
                                     $('.modal-body').css('opacity', '');
                                      alert('Data Berhasil Ditutup');
                                      $('#ModalTutup').modal('hide');
                                  }
                            });

                    });
                });
              </script> 