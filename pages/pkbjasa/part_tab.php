
  <!-- Left side column. contains the logo and sidebar -->
  <?php 
  include_once '../../lib/config.php';
  $idpkbjasa=$_GET['idpkbjasane'];?>

<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalAddpart').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content content-part">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data PKB Jasa - <?php echo $idpkbjasa;?>- Part</h4>
                    </div>

                    <div class="modal-body">
                    <br>
                      <!-- Content Wrapper. Contains page content -->
                      <div id="tablepart"></div>
                    </div>
                </div>
</div>
      
        <div id="ModalAddparty" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
         <div id="ModalEditpart" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
         <div id="ModalDeletepart" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>

        <script type="text/javascript">
            $(document).ready(function (){
                 $("#tablepart").load('pkbjasa/part_load.php?idpkbjasa=<?php echo $idpkbjasa;?>');
            });
        </script>
        <style>
            .content-part{
              height:450px;    
              margin-left:-2px;          
            }
        </style>