<?php
    include_once '../../lib/config.php';
    //include_once '../../lib/fungsi.php';
    $fk_jasa = $_GET['fk_jasa'];
    $sqlpaketjasa = "SELECT * FROM t_paket_jasa_detail A
    LEFT JOIN t_jasa B ON B.id_jasa=A.fk_jasa
    WHERE A.fk_jasa='$fk_jasa'";
    $paketjasaar = mysql_query( $sqlpaketjasa );
    $emp = mysql_fetch_array( $paketjasaar );
    $fk_paket_jasa=$emp['fk_paket_jasa'];
?>
<div class="modal-dialog">
            <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button"  onclick="$('#ModalDeleteJasa').modal('hide');">x</button></td></tr></table>
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
                                            <input type="hidden" id="fk_jasa" name="fk_jasa" value="<?php echo $fk_jasa;?>">
                                            <input type="hidden" id="fk_paket_jasa" name="fk_paket_jasa" value="<?php echo $fk_paket_jasa;?>">
                                            <button type="button" class=" btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">&nbsp;&nbsp;&nbsp;Ya&nbsp;&nbsp;&nbsp;</button>
                                            <button type="button" class=" btn btn-default btn-circle" data-dismiss="modal" aria-hfk_jasa="true">&nbsp;Batal&nbsp;</button>
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
                            var fk_jasa = $('#fk_jasa').val();
                            var fk_paket_jasa = $('#fk_paket_jasa').val();
                           $.ajax({
                                url: 'paketjasa/jasa_del_save.php?fk_jasa='+fk_jasa+'&fk_paket_jasa='+fk_paket_jasa,
                                type: 'GET',
                                success: function (response){
                                      //alert('asuransi/asuransi_del_save.php?$fk_jasa='+$fk_jasa);
                                      //$("#tablepaketjasa").load('paketjasa/paketjasa_load.php');
                                      $("#tablepaketjasadetail").load('paketjasa/paketjasa_detail_tab.php?id_paket_jasa=<?php echo $emp['fk_paket_jasa'];?>');
                                      alert('Data Berhasil Dihapus');
                                      $('#ModalDeleteJasa').modal('hide');                                      
                                }
                            });

                    });
                });
              </script> 