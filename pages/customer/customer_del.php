<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id_customer = $_GET['id_customer'];
    $sqlemp = "SELECT * FROM t_customer WHERE id_customer='$id_customer'";
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
                            <h4 class="modal-title" id="myModalLabel">Hapus Data Customer</h4>
                        </div>
                        <br>
                        <div class="modal-body">
                        <div class="row">
                        <div class="col-lg-12">                                    
                            <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $emp['nama'];?>) ?</div>                                    
                            <h4 class="modal-title" id="myModalLabel">
                                <input type="hidden" id="id_customer" name="id_customer" value="<?php echo $id_customer;?>">
                                <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hid_asuransiden="true">&nbsp;Batal&nbsp;</button>
                            </h4>
                        </div>
                        </div>
                        </div>
                        
                    </form>
                </div>
                    <!-- /.panel -->
        </div>

                <script type="text/javascript">
                  $(document).ready(function (){
                        $(".save_submit").click(function (e){
                            var id_customer = $('#id_customer').val();
                           $.ajax({
                                url: 'customer/customer_del_save.php?id_customer='+id_customer,
                                type: 'GET',
                                success: function (response){
                                      //alert('customer/asuransi_del_save.php?id_customer='+id_customer);
                                      $("#tablecustomer").load('customer/customer_load.php');
                                      alert('Data Berhasil Dihapus');
                                      $('#ModalDelete').modal('hide');
                                }
                            });

                    });
                });
              </script> 