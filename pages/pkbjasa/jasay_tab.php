
  <!-- Left side column. contains the logo and sidebar -->
  <?php 
  include_once '../../lib/config.php';
  $idpkbjasa=$_GET['idpkbjasane'];?>

<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalAddjasay').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content content-jasay">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data PKB jasay - <?php echo $idpkbjasa;?>- Jasa</h4>
                    </div>

                    <div class="modal-body">
                    <br>
                      <!-- Content Wrapper. Contains page content -->
                      <div id="tablejasay"></div>
                    </div>
                </div>
</div>
      
        <div id="ModalAddjasay" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
         <div id="ModalEditjasay" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
         <div id="ModalDeletejasay" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>

        <script type="text/javascript">
            $(document).ready(function (){
                 $("#tablejasay").load('pkbjasa/jasay_load.php?idpkbjasa=<?php echo $idpkbjasa;?>');
            });
        </script>
        <style>
            .content-jasay{
              height:450px;    
              margin-left:-2px;          
            }
        </style>