<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $no_chasis = $_GET['no_chasis'];
    $sqlemp = "SELECT * FROM t_inventory_bengkel WHERE no_chasis='$no_chasis'";
    $resemp = mysql_query( $sqlemp );
    $emp = mysql_fetch_array( $resemp );
?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content" style="height:190x;">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Hapus Data Inventory</h4>
                    </div>
                        <form>
                            <div class="modal-body"><br>

                                <div class="row">
                                    <div class="col-lg-12">
                                    
                                        <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $emp['no_chasis'];?>) ?</div>                                       
                                            <h4 class="modal-title" id="myModalLabel">
                                                <input type="hidden" id="no_chasis" name="no_chasis" value="<?php echo $no_chasis;?>">
                                                <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                                <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hno_chasisden="true">&nbsp;Batal&nbsp;</button>
                                            </h4>
                                        </div>
                                    </div>
                            </div>
                        </form>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>

                <script type="text/javascript">
                  $(document).ready(function (){
                        $(".save_submit").click(function (e){
                            var no_chasis = $('#no_chasis').val();
                           $.ajax({
                                url: 'inventory/inventory_del_save.php?no_chasis='+no_chasis,
                                type: 'GET',
                                success: function (response){
                                      //alert('panel/panel_del_save.php?no_chasis='+no_chasis);
                                      $("#tableinventory").load('inventory/inventory_load.php');
                                      alert('Data Berhasil Dihapus');
                                      $('#ModalDelete').modal('hide');
                                }
                            });

                    });
                });
              </script> 