<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id = $_GET['idestimasi'];
    $sqlemp = "SELECT * FROM t_estimasi WHERE id_estimasi='$id'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );

?>

          <div class="modal-dialog">
            <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content" style="height:160px;">
                    <form>
                        <div class="modal-header">                        
                            <h4 class="modal-title" id="myModalLabel">Approve Data Estimasi</h4>
                        </div>
                        <br>
                        <div class="modal-body"  align="center">
                            <div class="row" style ="width:100%;">
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin approve data ini ( <?php echo $id;?>) ?</div>
                                        <h4 class="modal-title" id="myModalLabel">
                                            <input type="hidden" id="id" name="id" value="<?php echo $id;?>">
                                            <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalApproved').modal('hide');" >&nbsp;Batal&nbsp;</button>
                                       </h4>
                                    </form>
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
                                url: 'estimasi/estimasi_approved_save.php?idestimasi=<?php echo $id;?>',
                                type: 'GET',
                                success: function (response){
                                      //alert('panel/panel_del_save.php?id_panel='+id_panel);
                                     $("#tableestimasi").load('estimasi/estimasi_load.php');
                                     $('.modal-body').css('opacity', '');
                                      alert('Data Berhasil Diapprove');
                                      $('#ModalApproved').modal('hide');
                                  }
                            });

                    });
                });
              </script> 