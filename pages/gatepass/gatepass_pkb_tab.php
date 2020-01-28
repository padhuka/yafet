    <?php
    include_once '../../lib/fungsi.php';
   ?>
     
<div id="ModalGatePkb" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
      <div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick=" $('#ModalGatePkb').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data PKB</h4>
                    </div>

                  <div class="box">
                      <table id="cashpkb" class="table table-condensed table-bordered table-striped table-hover">
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
                          <td><button type="button" class="btn btn-link" id="<?php echo $catat['id_pkb']; ?>" onclick="open_pkb(idpkb='<?php echo $catat['id_pkb']; ?>');"><span><?php echo ($catat['id_pkb']);?></span></button></td>
                       
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
          </div>
      </div> 
              <script type="text/javascript">
                $('#cashpkb').DataTable();

               function selectPKB(a){
                              $("#idpkb").val(a);
                              $("#ModalGatePkb").modal('hide');
                              
                      }; 
              </script>
