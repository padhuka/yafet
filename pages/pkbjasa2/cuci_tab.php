
  <!-- Left side column. contains the logo and sidebar -->
  <?php 
  include_once '../../lib/config.php';
  $idnonpkb=$_GET['idnonpkbne'];?>

<div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalAddcucix').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content content-cuci">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Non PKB - Cuci</h4>
                    </div>

                    <div class="modal-body">
                    <br>
                      <!-- Content Wrapper. Contains page content -->
                      <div id="tablecuci"></div>
                    </div>
                </div>
</div>
      
        <div id="ModalAddcuci" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
         <div id="ModalEditcuci" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
         <div id="ModalDeletecuci" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>

        <script type="text/javascript">
            $(document).ready(function (){
                 $("#tablecuci").load('nonpkb/cuci_load.php?idnonpkb=<?php echo $idnonpkb;?>');
            });
        </script>
        <style>
            .content-cuci{
              height:450px;    
              margin-left:-2px;          
            }
        </style>