<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id = $_GET['id'];
    $sqlemp = "SELECT * FROM t_nonpkb_cuci_detail WHERE id='$id'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
    $idnonpkb=$emp['fk_nonpkb'];
    //echo $sqlemp;
    $nmcuci="SELECT * FROM t_cuci WHERE id_cuci='$emp[fk_cuci]'";
    $hcuci=mysql_fetch_array(mysql_query($nmcuci));
?>


<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalDeletecuci').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Hapus Data Non PKB</h4>
                    </div>
                        <div class="body">
                        

                            <div class="row">
                                <div class="col-lg-12">
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $hcuci['nama'];?>) ?</div>
                                        <div class="form-group">
                                            <input type="hidden" id="fk_cuci" name="fk_cuci" value="<?php echo $id;?>">
                                            <div  class="bgsave">
                                                <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                                <button type="button" class=" btn btn-default btn-circle" onclick="$('#ModalDeletecuci').modal('hide');" >&nbsp;Batal&nbsp;</button>
                                            </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <!-- /.cuci-body -->
                    </div>
                    <!-- /.cuci -->
                </div>

                <script type="text/javascript">
                  $(document).ready(function (){
                        $(".save_submit").click(function (e){
                        	//alert('nonpkb/cuci_del_save.php?id=<?php echo $id;?>&idnonpkb=<?php echo $idnonpkb;?>');
                        	//return false();
                           $.ajax({
                                url: 'nonpkb/cuci_del_save.php?id=<?php echo $id;?>&idnonpkb=<?php echo $idnonpkb;?>',
                                type: 'GET',
                                success: function (response){
                                      //alert('cuci/cuci_del_save.php?id_cuci='+id_cuci);
                                     $("#nonpkbcuci").load('nonpkb/cuci_load.php?idnonpkb=<?php echo $idnonpkb;?>');
                                     $('.modal-body').css('opacity', '');
                                      alert('Data Berhasil Dihapus');
                                      $('#ModalDeletecuci').modal('hide');
                                      $("#tablenonpkbdetail").load('nonpkb/nonpkb_detail_tab.php?idnonpkb=<?php echo $idnonpkb;?>');
                                }
                            });

                    });
                });
              </script> 