<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id = $_GET['id'];
    $sqlemp = "SELECT * FROM t_estimasi_part_detail WHERE id='$id'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
    $idestimasi=$emp['fk_estimasi'];
    //echo $sqlemp;
    $nmpart="SELECT * FROM t_part WHERE id_part='$emp[fk_part]'";
    $hpart=mysql_fetch_array(mysql_query($nmpart));
?>

            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hid_partden="true">&times;</span></button>
                        <h4 class="modal-title" fk_part="myModalLabel">Hapus Data part</h4>
                    </div>
                        <div class="part-body">

                            <div class="row">
                                <div class="col-lg-6">
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $hpart['nama'];?>) ?</div>
                                        <div class="form-group">
                                            <input type="hidden" id="fk_part" name="fk_part" value="<?php echo $id;?>">
                                            <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hid_partden="true">&nbsp;Batal&nbsp;</button>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <!-- /.part-body -->
                    </div>
                    <!-- /.part -->
                </div>

                <script type="text/javascript">
                  $(document).ready(function (){
                        $(".save_submit").click(function (e){
                        	//alert('estimasi/part_del_save.php?id=<?php echo $id;?>&idestimasi=<?php echo $idestimasi;?>');
                        	//return false();
                           $.ajax({
                                url: 'estimasi/part_del_save.php?id=<?php echo $id;?>&idestimasi=<?php echo $idestimasi;?>',
                                type: 'GET',
                                success: function (response){
                                      //alert('part/part_del_save.php?id_part='+id_part);
                                     $("#estimasipart").load('estimasi/part_load.php?idestimasi=<?php echo $idestimasi;?>');
                                     $('.modal-body').css('opacity', '');
                                      alert('Data Berhasil Dihapus');
                                      $('#ModalDeletepart').modal('hide');
                                      $("#tableestimasidetail").load('estimasi/estimasi_detail_tab.php?idestimasi=<?php echo $idestimasi;?>');
                                }
                            });

                    });
                });
              </script> 