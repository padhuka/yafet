  <!-- general form elements disabled -->
   <?php

    include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    
   ?>
   
     <div class="modal-dialog">
      <div class="col-md-12">
                <div class="modal-content">
                    <div class="modal-header">                         
                        <h4 class="modal-title" id="myModalLabel" style="text-align: center;padding-right: 0px">Data Account <button type="button" class="close" aria-label="Close" onclick="$('#ModalBankAdd').modal('hide');"><span>&times;</span></button></h4>
                    </div>
                  <div class="box">
                <table id="bankkwitansi" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>COA</th>
                          <th>Type Transaction</th>
                          <th>Description</th>
                          <th></th>
                </tr>

                </thead>
                <tbody>
                                <?php
                                    $j=1;
                                    $sqlcatat = "SELECT * FROM t_akun WHERE coa LIKE '11.02.01%' ORDER BY id ASC";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                            <td ><?php echo $catat['coa'];?></td>
                            <td ><?php echo $catat['transaction_type'];?></td>
                            <td ><?php echo $catat['description'];?></td>                         
                            <td >                                       
                                        <button type="button" class="btn btn-default btn-circle" onclick="selectKwitansi(
                                         '<?php echo $catat['coa'];?>',
                                         '<?php echo $catat['description'];?>',           
                                        );">Pilih</button>

                            </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              </div>
              </div>
              </div>
              </div>
              <script type="text/javascript">
                $('#bankkwitansi').DataTable();

               function selectKwitansi(a,b){
                              $("#idaccbank").val(a);
                              $("#nmaccbank").html(b);
                              $("#ModalBankAdd").modal('hide');
                              
                      }; 
              </script>

