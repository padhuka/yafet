<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id_jasa = $_GET['id_jasa'];
    $sqlemp = "SELECT * FROM t_jasa WHERE id_jasa='$id_jasa'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
?>
<div class="modal-dialog">
            <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>

                <div class="modal-content" style="height:160px;">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Hapus Data Jasa</h4>
                    </div>
                        <br>
                        <div class="modal-body">
                        <div class="row">
                        <div class="col-lg-12">    
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $emp['nama'];?>) ?</div>
                                   <h4 class="modal-title" id="myModalLabel">
                                             <input type="hidden" id="id_jasa" name="id_jasa" value="<?php echo $id_jasa;?>">
                                            <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hid_jasaden="true">&nbsp;Batal&nbsp;</button>
                                        </h4>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <!-- /.jasa-body -->
                    </div>
                    <!-- /.jasa -->
                </div>

         

                <script type="text/javascript">
                  $(document).ready(function (){
                        $(".save_submit").click(function (e){
                            var id_jasa = $('#id_jasa').val();
                           $.ajax({
                                url: 'jasa/jasa_del_save.php?id_jasa='+id_jasa,
                                type: 'GET',
                                success: function (response){
                                      //alert('jasa/jasa_del_save.php?id_jasa='+id_jasa);
                                      $("#tablejasa").load('jasa/jasa_load.php');
                                      alert('Data Berhasil Dihapus');
                                      $('#ModalDelete').modal('hide');
                                }
                            });

                    });
                });
              </script> 