    <?php
    include_once '../../lib/fungsi.php';
   ?>
     <div id="Modalbankgrkwitansigr" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     <div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#Modalbankgrkwitansigr').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data kwitansigr GR</h4>
                    </div>

                  <div class="box">
                <table id="bankgrkwitansigr" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>No kwitansigr GR</th>
                          <th>Nilai</th>
                          <th></th>
                </tr>

                </thead>
                <tbody>
                <?php
                                   $j=1;
                                   $sqlcatat = "   SELECT k.no_kwitansigr as no_kwitansigr,total_paymentgr as nilai, cash.no_ref ,bayar_cashgr , bayar_bankgr, (IFNULL(bayar_cashgr,0)+IFNULL(bayar_bankgr,0)) as totbayar
                                      FROM t_kwitansigr k
                                    LEFT JOIN (SELECT no_bukti, no_ref, sum(total) as bayar_cashgr
                                    FROM t_cashgr where tipe_transaksi='Pelunasan'
                                    GROUP BY no_ref)AS cash ON cash.no_ref=k.no_kwitansigr
                                    LEFT JOIN (SELECT no_bukti, no_ref, sum(total) as bayar_bankgr
                                    FROM t_bankgr where tipe_transaksi='Pelunasan'  
                                    GROUP BY no_ref)AS bank ON bank.no_ref=k.no_kwitansigr 
                                            WHERE tgl_batal='0000-00-00 00:00:00' and cash.no_ref is NULL and bank.no_ref is NULL";
                                    //echo $sqlcatat;
                                    $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                       
                       
                          <td ><?php echo $catat['no_kwitansigr'];?></td>
                          <td ><?php echo ($catat['nilai']);?></td>
                       
                          <td >
                                       
                                        <button type="button" class="btn btn-default btn-circle" onclick="selectkwitansigr(
                                         '<?php echo $catat['no_kwitansigr'];?>',
                                         '<?php echo ($catat['nilai']-($catat['titip_cash']+$catat['titip_bankgr']));?>',
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
                $('#bankgrkwitansigr').DataTable();

               function selectkwitansigr(a,b){
                              $("#nokwitansigr").val(a);
                              $("#nilai").val(b);
                              $("#Modalbankgrkwitansigr").modal('hide');
                              
                      }; 
              </script>
