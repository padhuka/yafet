    <?php
    include_once '../../lib/fungsi.php';
   ?>
     <div id="ModalpaypkbjasaKwitansi" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
         <div class="title">   
        <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalpaypkbjasaKwitansi').modal('hide');">x</button></td></tr></table>
    </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Kwitansi</h4>
                    </div>

                  <div class="box">
                <table id="paypkbjasakwitansi" class="dataTable table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No Non PKB</th>
                          <th>Nilai</th>
                          <th></th>
                </tr>

                </thead>
                <tbody>
                <?php
                                   $j=1;
                                   $sqlcatat = "SELECT * FROM t_pkb_jasa WHERE approved='0'";
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td ><?php echo $catat['id_pkb_jasa'];?></td>
                          <td ><?php echo ($catat['total_netto_harga_jasa']);?></td>
                       
                          <td >
                                       
                                        <button type="button" class="btn btn-default btn-circle" onclick="selectKwitansi('<?php echo $catat['id_pkb_jasa'];?>','<?php echo ($catat['total_netto_harga_jasa']);?>');">Pilih</button>

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
                $('#paypkbjasakwitansi').DataTable();

               function selectKwitansi(a,b){
                              $("#nokwitansi").val(a);
                              $("#nilai").val(b);
                              $("#ModalpaypkbjasaKwitansi").modal('hide');
                              
                      }; 
              </script>

