     <?php
    include_once '../../lib/fungsi.php';
   ?>
     <div id="ModalEstimasi" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
     <div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="keluarkwitansior();">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formkwitansi">
                     <div class="modal-header">                        
                        <h4 class="modal-title"  style="height:30px;">Data Estimasi</h4>
                    </div>

                  <div class="box">
                <table id="estimasikwitansior" class="table table-condensed table-bordered table-striped table-hover">
                <thead class="thead-light">
                <tr>
                          <th>Kode Estimasi</th>
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
                             
                                   $sqlcatat = "SELECT * FROM t_estimasi e 
                                   LEFT JOIN t_customer c ON e.fk_customer=c.id_customer
                                   LEFT JOIN ( select * from t_kwitansi_or WHERE tgl_batal='0000-00-00 00:00:00') as k  ON k.fk_estimasi=e.id_estimasi
                                   WHERE e.tgl_batal='0000-00-00 00:00:00' AND e.approved='1' AND e.kategori='Asuransi' 
                                   AND k.fk_estimasi IS NULL ORDER BY e.id_estimasi DESC";
                                   $rescatat = mysql_query( $sqlcatat );
                                    while($catat = mysql_fetch_array( $rescatat )){
                                ?>
                        <tr>
                          <td><button type="button" class="btn btn-link" id="<?php echo $catat['id_estimasi']; ?>" onclick="open_est(idestimasi='<?php echo $catat['id_estimasi']; ?>');"><span><?php echo ($catat['id_estimasi']);?></span></button></td>
                       
                          <td ><?php echo $catat['nama'];?></td>
                          <td ><?php echo $catat['fk_no_chasis'];?></td>
                          <td ><?php echo $catat['fk_no_mesin'];?></td>
                         
                          <td ><?php echo $catat['fk_no_polisi'];?></td>
                       
                          <td >
                                       
                                        <button type="button" class="btn btn-default btn-circle" onclick="selectEstimasi(
                                        '<?php echo $catat['fk_no_chasis'];?>',
                                        '<?php echo $catat['fk_no_mesin'];?>',
                                        '<?php echo $catat['fk_no_polisi'];?>',
                                        '<?php echo $catat['nama'];?>',
                                        '<?php echo $catat['kategori'];?>',
                                        '<?php echo $catat['fk_asuransi'];?>',
                                        '<?php echo rupiah2($catat['total_gross_harga_panel']);?>',
                                        '<?php echo rupiah2($catat['total_diskon_rupiah_panel']);?>',
                                        '<?php echo rupiah2($catat['total_netto_harga_panel']);?>',
                                        '<?php echo rupiah2($catat['total_gross_harga_part']);?>',
                                        '<?php echo rupiah2($catat['total_diskon_rupiah_part']);?>',
                                        '<?php echo rupiah2($catat['total_netto_harga_part']);?>',
                                        '<?php echo rupiah2($catat['total_gross_harga_jasa']);?>',
                                        '<?php echo rupiah2($catat['total_diskon_rupiah_jasa']);?>',
                                        '<?php echo rupiah2($catat['total_netto_harga_jasa']);?>',
                                        '<?php echo $catat['id_estimasi'];?>');">Pilih</button>

                                    </td>
                        </tr>
                    <?php }?>
                </tfoot>
              </table>
              <script type="text/javascript">
                $('#estimasikwitansior').DataTable();
               function keluarkwitansior(){
                 $("#ModalEstimasi").modal('hide');
               }
               function selectEstimasi(b,c,d,e,f,h,j,k,l,m,n,o,p,q,r,s){
                              $("#chasis").html(b);
                              $("#mesin").html(c);
                              $("#polisi").html(d);
                              $("#nama").html(e);
                              $("#kategori").html(f);                              
                              $("#asuransi").html(h);
                              //--
                              $("#grosspanel").html(j);
                              $("#diskonpanel").html(k);
                              $("#nettopanel").html(l);
                              //--
                              $("#grosspart").html(m);
                              $("#diskonpart").html(n);
                              $("#nettopart").html(o);
                              //---
                              $("#grosstotal").html(p);
                              $("#diskontotal").html(q);
                              $("#nettototal").html(r);

                              $("#idestimasi2").html(s);
                              $("#idestimasi").val(s);
                              $("#ModalEstimasi").modal('hide');
                              
                      }; 
              </script>

