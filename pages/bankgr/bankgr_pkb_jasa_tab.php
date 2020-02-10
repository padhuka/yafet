    <?php
    include_once '../../lib/fungsi.php';
   ?>
     <div id="Modalbankpkb_jasa" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#Modalbankpkb_jasa').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data pkb_jasa</h4>
                    </div>
                  <div class="box">
                <table id="bankpkb_jasa" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No pkb_jasa</th>
                          <th>Customer</th>
                          <th>No Polisi</th>
                          <th></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                   $j=1;
                                   $sqlcatat = "SELECT * FROM t_pkb_jasa e LEFT JOIN t_customer c ON e.fk_customer=c.id_customer WHERE tgl_batal='0000-00-00 00:00:00' ORDER BY e.id_pkb_jasa DESC";
                                   $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td><button type="button" class="btn btn-link" id="<?php echo $catat['id_pkb_jasa']; ?>" onclick="open_pkb_jasa(idpkb_jasa='<?php echo $catat['id_pkb_jasa']; ?>');"><span><?php echo ($catat['id_pkb_jasa']);?></span></button></td>
                       
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['fk_no_polisi'];?></td>
                       
                          <td >
                                       
                                        <button type="button" class="btn btn-default btn-circle" onclick="selectpkb_jasa(
                                         '<?php echo $catat['id_pkb_jasa'];?>'
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
                $('#bankpkb_jasa').DataTable();

               function selectpkb_jasa(a){
                              $("#idpkb_jasa").val(a);
                              $("#Modalbankpkb_jasa").modal('hide');
                              
                      }; 
              </script>
