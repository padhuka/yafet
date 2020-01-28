<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id_tipe_kendaraan = $_GET['id_tipe_kendaraan'];
    $sqlwarna = "SELECT * FROM t_tipe_kendaraan WHERE id_tipe_kendaraan='$id_tipe_kendaraan'";
    $warnaar = mysql_query( $sqlwarna );
    $emp = mysql_fetch_array( $warnaar );
?>
<div class="modal-dialog">
            <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>

                <div class="modal-content" style="height:160px;">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Hapus Data Tipe Kendaraan</h4>
                    </div>
                        <br>
                        <div class="modal-body">
                        <div class="row">
                        <div class="col-lg-12">    
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $emp['nama'];?>) ?</div>
                                   <h4 class="modal-title" id="myModalLabel">
                                            <input type="hidden" id="id_tipe_kendaraan" name="id_tipe_kendaraan" value="<?php echo $id_tipe_kendaraan;?>">
                                            <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hid_warna="true">&nbsp;Batal&nbsp;</button>
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
                            var id_tipe_kendaraan = $('#id_tipe_kendaraan').val();
                           $.ajax({
                                url: 'tipe/tipe_del_save.php?id_tipe_kendaraan='+id_tipe_kendaraan,
                                type: 'GET',
                                success: function (response){
                                      //alert('asuransi/asuransi_del_save.php?$id_tipe_kendaraan='+$id_tipe_kendaraan);
                                      $("#tabletipe").load('tipe/tipe_load.php');
                                      alert('Data Berhasil Dihapus');
                                      $('#ModalDelete').modal('hide');
                                }
                            });

                    });
                });
              </script> 
              <style>
    .modal-content {
    height: 210px;
  }
</style>