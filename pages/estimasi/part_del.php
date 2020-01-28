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
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Hapus Data Part</h4>
                    </div>
                        <div class="part-body">

                            <div class="row">
                                <div class="col-lg-12">
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $hpart['nama'];?>) ?</div>
                                    
                                    </form>
                                </div>
                                <div class="col-lg-12"><h4 class="modal-title" id="myModalLabel">
                                    <input type="hidden" id="fk_part" name="fk_part" value="<?php echo $id;?>">
                                            <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalDeletePart').modal('hide');" >&nbsp;Batal&nbsp;</button>
                                    </h4>
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
                                      $('#ModalDeletePart').modal('hide');
                                      $("#tableestimasidetail").load('estimasi/estimasi_detail_tab.php?idestimasi=<?php echo $idestimasi;?>');
                                }
                            });

                    });
                });
              </script> 