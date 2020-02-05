    <?php
    include_once '../../lib/fungsi.php';
   ?>
    <div id="Modalpkbjasa" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
       <div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="keluarpkbjasa();">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Group Kendaraan</h4>
                    </div>

                  <div class="box">
                <table id="pkbjasawitansi" class="table table-condensed table-bordered table-striped table-hover dataTable">
                <thead class="thead-light">
                <tr>
                          <th>No pkbjasa</th>
                          <th>Nama Customer</th>
                          <th>No Chasis</th>
                          <th>No Mesin</th>
                          <th>No Pol</th>
                          <th></th>
                </tr>
                </thead>
                <tbody>
                <?php
                                   $j=1;
                                   $sqlcatat = "SELECT * FROM t_pkb_jasa e 
                                   LEFT JOIN t_customer c ON e.fk_customer=c.id_customer
                                   LEFT JOIN ( SELECT * from t_kwitansigr where tgl_batal='0000-00-00 00:00:00') AS k ON k.fk_pkb_jasa=e.id_pkb_jasa
                                   WHERE e.tgl_batal='0000-00-00 00:00:00' AND e.status_pkb_jasa='Tutup' AND k.fk_pkb_jasa IS NULL ORDER BY e.id_pkb_jasa DESC";
                                   $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td><button type="button" class="btn btn-link" id="<?php echo $catat['id_pkb_jasa']; ?>" onclick="open_pkb_jasa(idpkbjasa='<?php echo $catat['id_pkb_jasa']; ?>');"><span><?php echo ($catat['id_pkb_jasa']);?></span></button></td>
                       
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['fk_no_chasis'];?></td>
                          <td ><?php echo $catat['fk_no_mesin'];?></td>
                          <td ><?php echo $catat['fk_no_polisi'];?></td>
                       
                          <td >
                                       
                                        <button type="button" class="btn btn-default btn-circle" onclick="selectpkbjasa(
                                        '<?php echo $catat['fk_no_chasis'];?>',
                                        '<?php echo $catat['fk_no_mesin'];?>',
                                        '<?php echo $catat['fk_no_polisi'];?>',
                                        '<?php echo $catat['nama'];?>',
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
                $('#pkbjasawitansi').DataTable();
                function keluarpkbjasa(){
                   $('#Modalpkbjasa').modal('hide');
                }                          
               function selectpkbjasa(b,c,d,e,f){
                              $("#chasis").html(b);
                              $("#mesin").html(c);
                              $("#polisi").html(d);
                              $("#nama").html(e);
                              /*---
                              $("#grosstotal").html(p);
                              $("#diskontotal").html(q);
                              $("#nettototal").html(r);*/

                              $("#idpkbjasa2").html(f);
                              $("#idpkbjasa").val(f);
                              $("#Modalpkbjasa").modal('hide');
                              $("#tablepkbjasadetail").load('kwitansigr/kwitansigr_pkbjasa_detail_tab.php?idpkbjasa='+f);
                              
                      }; 
              </script>


