<!-- general form elements disabled -->
   <?php

    include_once '../../lib/sess.php';
    include_once '../../lib/config.php';
    include_once '../../lib/fungsi.php';
    $idpkbjasa= $_GET['idpkbjasa'];
    $sqlpan= "SELECT * FROM t_pkb_jasa i
    LEFT JOIN t_customer c ON i.fk_customer=c.id_customer
    WHERE i.id_pkb_jasa='$idpkbjasa'";
    $catat= mysql_fetch_array(mysql_query($sqlpan));

    $sqlcatat = "SELECT * FROM t_inventory_bengkel A, t_warna_kendaraan B  WHERE A.no_chasis='$catat[fk_no_chasis]' AND A.fk_warna_kendaraan=B.id_warna_kendaraan";  
    
    /*$swrn= mysql_fetch_array(mysql_query($sqlcatat));
    $wrne=$swrn['nama'];
    $kdwrne=$swrn['fk_warna_kendaraan'];

    $sas = "SELECT * FROM t_asuransi WHERE id_asuransi='$catat[fk_asuransi]'";
    $has= mysql_fetch_array(mysql_query($sas));
    $nmas=$has['nama'];*/
   ?>

<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" data-dismiss="modal">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Edit Data PKB Jasa - <?php echo $idpkbjasa;?></h4>
                    </div>
                    <div class="modal-body">
                    <br>
                    <form class="form-horizontal" enctype="multipart/form-data" novalidate id="formpkbjasae">
                    <table id="example1" class="table table-bordered table-striped dataTable" role="grid" aria-describedby="example1_info">
                    <thead>
                    
                    </thead>
                    <tbody>
                
                <tr role="row" class="odd">
                  <td class="sorting_1" width="15%">Tgl Masuk</td>
                  <td width="30%"> <input type="text" class="form-control" id="tgl" name="tgl"  value="<?php echo date('d-m-Y' , strtotime($catat['tgl']));?>" readonly></td>
                  <td  width="10%">No Chasis</td>
                  <td  width="50%"><div class="col-sm-10">
                    <input type="text"  class="form-control" id="chasise" name="chasise" value="<?php echo $catat['fk_no_chasis'];?>" readonly style="width:100%;">
                    </div>
                    <button type="button" class="btn btn-default btn-circle btn-md" onclick="editChasis();">Pilih</button><input type="hidden" class="form-control" id="tipe" name="tipe" readonly style="width: 10%;">
                  </td>
                </tr>

                <tr role="row" class="even">                 
                 <td class="sorting_1" width="15%">Tgl Estimasi Selesai</td>
                  <td width="30%"><input type="text" class="form-control" id="tglselesai" name="tglselesai" required value="<?php echo $harinow;?>"></td>
                  <td  width="10%">No Polisi</td>
                  <td  width="50%"><div class="col-sm-10">
                     <input type="text"  class="form-control" id="polisie" name="polisie"  value="<?php echo $catat['fk_no_polisi'];?>" style="width:100%;" readonly>
                    </div>
                  </td>
               </tr>
               
               <tr role="row" class="even">
               <td class="sorting_1" width="15%">Customer</td>
                  <td width="30%"> 
                                  <input type="hidden" class="form-control" id="customere" name="customere"   value="<?php echo $catat['fk_customer'];?>">
                                  <input type="text" class="form-control" id="customernme" name="customernme"   value="<?php echo $catat['nama'];?>" readonly>
                                  </td>
                  <td  width="10%">No Mesin</td>
                  <td  width="50%"><div class="col-sm-10">
                     <input type="text"  class="form-control" id="mesine" name="mesine"  value="<?php echo $catat['fk_no_mesin'];?>" readonly style="width:100%;">
                    </div>                    
                  </td>
               </tr>             
               <br>
                <tr><td colspan="4">&nbsp;</td></tr>
                 <tr><td colspan="4" align="center" class="bgsave"><button type="submit" class="btn btn-default btn-circle save_submit" name="Submit" value="SIMPAN">Simpan</button>
                                    <button type="button" class="btn btn-default btn-circle" data-dismiss="modal" aria-hidden="true">&nbsp;Batal&nbsp;</button>
                                    <input type="hidden" class="form-control" id="idpkbjasae" name="idpkbjasae" value="<?php echo $idpkbjasa;?>" readonly>
                          <input type="hidden" class="form-control" id="unamee" name="unamee" value="<?php echo $sesuname;?>" readonly>                     
                </td></tr>
                </tbody>
              </table>  

                    </form>        
    </div>
</div>
</div>
<?php include_once 'pkbjasa_chasis_edit_tab.php';?>
<script type="text/javascript">
  function editChasis(){ 
    $("#ModalChasisEdit").modal({backdrop: 'static',keyboard:false});   
  }
  $(document).ready(function (){

                      $("#formpkbjasae").on('submit', function(e){
                          var chs= $("#polisie").val();
                          if (chs==''){
                            alert('Data ada yang belum diisi');
                            return false;
                          }
                          e.preventDefault();
                            //alert(disposisine)                       ;
                                      $.ajax({
                                                  type: 'POST',
                                                  url: 'pkbjasa/pkbjasa_edit_save.php',
                                                  data: new FormData(this),
                                                  contentType: false,
                                                  cache: false,
                                                  processData:false,
                                                  success: function(data){
                                                        $("#tablepkbjasa").load('pkbjasa/pkbjasa_load.php');
                                                        $('.modal-body').css('opacity', '');

                                                            alert('Data Berhasil Disimpan');
                                                            $('#ModalEdit').modal('hide'); 
                                                            var hsl=data.trim();       
                                                            //alert('pkbjasa/pkbjasa_detail.php?idpkbjasa='+hsl);
                                                             $.ajax({
                                                                url: "pkbjasa/pkbjasa_detail.php?idpkbjasa="+hsl,
                                                                type: "GET",
                                                                  success: function (ajaxData){
                                                                    $("#ModalpkbjasaDet").html(ajaxData);
                                                                    $("#ModalpkbjasaDet").modal({backdrop: 'static', keyboard:false});
                                                                  }
                                                                }); 

                                                  }
                                                      
                                                });

                                      
              
                      });
    });

</script>