<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id = $_GET['id'];
    $sqlemp = "SELECT * FROM t_nonpkb_salon_detail WHERE id='$id'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
    $idnonpkb=$emp['fk_nonpkb'];
    //echo $sqlemp;
    $nmsalon="SELECT * FROM t_salon WHERE id_salon='$emp[fk_salon]'";
    $hsalon=mysql_fetch_array(mysql_query($nmsalon));
?>

            <div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalDeletesalon').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Hapus Data PKB - Salon</h4>
                    </div>

                        <div class="salon-body">

                            <div class="row">
                                <div class="col-lg-12">
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $hsalon['nama'];?>) ?</div>
                                        <div class="form-group">
                                        <div  class="bgsave">
                                            <input type="hidden" id="fk_salon" name="fk_salon" value="<?php echo $id;?>">
                                            <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalDeletesalon').modal('hide');" >&nbsp;Batal&nbsp;</button>
                                        </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <!-- /.salon-body -->
                    </div>
                    <!-- /.salon -->
                </div>

                <script type="text/javascript">
                  $(document).ready(function (){
                        $(".save_submit").click(function (e){
                        	//alert('nonpkb/salon_del_save.php?id=<?php echo $id;?>&idnonpkb=<?php echo $idnonpkb;?>');
                        	//return false();
                           $.ajax({
                                url: 'nonpkb/salon_del_save.php?id=<?php echo $id;?>&idnonpkb=<?php echo $idnonpkb;?>',
                                type: 'GET',
                                success: function (response){
                                      //alert('salon/salon_del_save.php?id_salon='+id_salon);
                                     $("#tablesalon").load('nonpkb/salon_load.php?idnonpkb=<?php echo $idnonpkb;?>');
                                     $("#tablenonpkb").load('nonpkb/nonpkb_load.php');
                                     $('.modal-body').css('opacity', '');
                                      alert('Data Berhasil Dihapus');
                                      $('#ModalDeletesalon').modal('hide');
                                      $("#tablenonpkbdetail").load('nonpkb/nonpkb_detail_tab.php?idnonpkb=<?php echo $idnonpkb;?>');
                                }
                            });

                    });
                });
              </script> 