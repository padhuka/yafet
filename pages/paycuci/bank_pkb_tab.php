    <?php
    include_once '../../lib/fungsi.php';
   ?>
     <div id="ModalBankPkb" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="title">   
        <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalBankPkb').modal('hide');">x</button></td></tr></table>
    </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Non PKBs</h4>
                    </div>

                  <div class="box">
                <table id="bankpkb" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No PKB</th>
                          <th>Customer</th>
                          <th>No Polisi</th>
                          <th></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                   $j=1;
                                   $sqlcatat = "SELECT * FROM t_pkb e LEFT JOIN t_customer c ON e.fk_customer=c.id_customer WHERE tgl_batal='0000-00-00 00:00:00' ORDER BY e.id_pkb DESC";
                                   $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                        
                           <td ><?php echo $catat['id_pkb'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['fk_no_polisi'];?></td>
                       
                          <td >
                                       
                                        <button type="button" class="btn btn-default btn-circle" onclick="selectPKB(
                                         '<?php echo $catat['id_pkb'];?>'
                                        );">Pilih</button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              </div>
              </div>
              </div>
              <script type="text/javascript">
                $('#bankpkb').DataTable();

               function selectPKB(a){
                              $("#idpkb").val(a);
                              $("#ModalBankPkb").modal('hide');
                              
                      }; 
              </script>

