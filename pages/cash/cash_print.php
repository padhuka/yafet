<!-- general form elements disabled -->
   <?php

    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $nobukti= $_GET['nobukti'];
    $sqlcatat = "SELECT * FROM t_cash WHERE no_bukti='$nobukti'";
                                    $rescatat = mysql_query( $sqlcatat );
                                    $catat = mysql_fetch_array( $rescatat );
                                    echo $sqlcatat;
   ?>
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Cetak Data Cash</h4>
                    </div>
                  
                    <div class="modal-body">
                    <br>
                     <div class="row">
                       <div class="col-sm-6">
                      <table id="pkbshow" class="dataTable">
                        <tr> <th>Tgl Transaksi</th> <td ><?php echo $catat['tgl_transaksi'];?></td></tr>
                        <tr> <th>Tipe Transaksi</th> <td ><?php echo $catat['tipe_transaksi'];?></td></tr>
                        <tr> <th>No Ref</th>  <td ><?php echo $catat['no_ref'];?></td></tr>
                        <tr> <th>Terima Dari/Diberikan Kepada</th> <td ><?php echo $catat['diterima_dari'];?></td></tr>
                        <tr> <th>Total</th>   <td ><?php echo rupiah2($catat['total']);?></td> </tr>
                        <tr><th>Keterangan</th> <td ><?php echo $catat['keterangan'];?></td></tr>
                      </table>
                      </div>
                    </div>
                    <div class="row">
                                          <div class="col-sm-12">
                                              <h4 class="modal-title" id="myModalLabel">
                                              <a href="cash/cash_cetak.php?nobukti=<?php echo $nobukti;?>" target="blank"><button type="button" class=" btn btn-default btn-circle" name="close" onclick="cetak();">Print</button></a>
                                    <button type="button" class=" btn btn-default btn-circle" name="close" onclick="$('#ModalCashPrint').modal('hide');">Close</button>
                                              </h4>
                                          </div>
                                        </div>
                                    </form>
                                </div>
                            </div>

                        </div>
                        <!-- /.panel-body -->
                    </div>
