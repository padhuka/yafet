<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $id_partner_bank = $_GET['id_partner_bank'];
    $sqlpartnerbank = "SELECT * FROM t_partner_bank WHERE id_partner_bank='$id_partner_bank'";
    $partner = mysql_query( $sqlpartnerbank );
    $emp = mysql_fetch_array( $partner );
?>

            <div class="modal-dialog">
            <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>

                <div class="modal-content" style="height:160px;">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Hapus Data Partner Bank</h4>
                    </div>
                        <br>
                        <div class="modal-body">
                        <div class="row">
                        <div class="col-lg-12">    
                                    <form>
                                    <div class="alert alert-danger">Apakah anda yakin ingin menghapus data ini ( <?php echo $emp['nama'];?>) ?</div>
                                   <h4 class="modal-title" id="myModalLabel">
                                            <input type="hidden" id="id_partner_bank" name="id_partner_bank" value="<?php echo $id_partner_bank;?>">
                                            <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hid_partner_bank="true">&nbsp;Batal&nbsp;</button>
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
                            var id_partner_bank = $('#id_partner_bank').val();
                           $.ajax({
                                url: 'partnerbank/partnerbank_del_save.php?id_partner_bank='+id_partner_bank,
                                type: 'GET',
                                success: function (response){
                                      //alert('asuransi/asuransi_del_save.php?$id_partner_bank='+$id_partner_bank);
                                      $("#tablepartnerbank").load('partnerbank/partnerbank_load.php');
                                      alert('Data Berhasil Dihapus');
                                      $('#ModalDelete').modal('hide');
                                }
                            });

                    });
                });
              </script> 