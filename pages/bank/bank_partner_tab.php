    <?php
    include_once '../../lib/fungsi.php';
   ?>
     <div id="ModalBankP" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="title">   
        <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalBankP').modal('hide');">x</button></td></tr></table>
    </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Partner Bank</h4>
                    </div>

                  <div class="box">
                <table id="bankpartner" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Kode Partner</th>
                          <th>Nama</th>
                          <th></th>
                </tr>

                </thead>
                <tbody>
                <?php
                                   $j=1;
                                   $sqlcatat = "SELECT * from t_partner_bank order by id_partner_bank";
                                   $rescatat = mysql_query( $sqlcatat );
                                   while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                       
                       
                          <td ><?php echo $catat['id_partner_bank'];?></td>
                          <td ><?php echo $catat['nama'];?></td>
                       
                          <td >
                                       
                                        <button type="button" class="btn btn-default btn-circle" onclick="selectPartnerx('<?php echo $catat['id_partner_bank'];?>','<?php echo $catat['nama'];?>');">Pilih</button>

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
                $('#bankpartner').DataTable();

               function selectPartnerx(x,y){
                              $("#id_partner_bank").val(x);
                              $("#namapartner").val(y);
                              $("#ModalBankP").modal('hide');
                              
                      }; 
              </script>