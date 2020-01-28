  <!-- Left side column. contains the logo and sidebar -->
  <?php 
  include_once '../../lib/config.php';
  $idpkb=$_GET['idpkb'];?>

  <div class="modal-dialog">
  <div class="title">   
   <table width="100%"><tr style="text-align: center;"><td width="90%" style="padding-left: 10%;">.::<?php echo $title;?>::.</td><td width="10%" align="right"><button type="button" onclick="$('#ModalAddPanelPkb').modal('hide');">x</button></td></tr></table>
  </div>
                <div class="modal-content">
                    <div class="modal-header">                        
                        <h4 class="modal-title" id="myModalLabel">Tambah Data PKB</h4>
                    </div>
                    <!--<div class="box-header with-border">
                      <h3 class="box-title">Horizontal Form</h3>
                    </div>
                     /.box-header -->
                    <!-- form start -->
                    <div class="modal-body"><br>
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
                 $("#tablepanel").load('pkb/panel_load.php?idpkb=<?php echo $idpkb;?>');
            });
        </script>