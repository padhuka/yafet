
  <!-- Left side column. contains the logo and sidebar -->
  <?php $idestimasi=$_GET['idestimasine']; 
  include_once '../../lib/config.php';?>
    <div class="modal-dialog">
    <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalAddPanelx').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content" style="height:170x;">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Data Estimasi Panel</h4>
                    </div>
                    <!-- form start -->
                    <div class="modal-body">
                    <br>
                      <!-- Content Wrapper. Contains page content -->
                      <div id="tablepanel"></div>
                    </div>
                </div>
</div>
      
        <div id="ModalAddPanel" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
         <div id="ModalEditPanel" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
         <div id="ModalDeletePanel" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>

        <script type="text/javascript">
            $(document).ready(function (){
                 $("#tablepanel").load('estimasi/panel_load.php?idestimasi=<?php echo $idestimasi;?>');
            });
        </script>
