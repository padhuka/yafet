  <!-- Left side column. contains the logo and sidebar -->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <div class="title-header">
    Data PKB
    </div>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data PKB</li>
      </ol>
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="row">
        <div class="col-xs-12">
          <div class="box">
            <!--<div class="box-header">
              <h3 class="box-title"></h3>
            </div>
             /.box-header -->
            <div class="box-body">
              <div id="tablepkb">
              </div>
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
        <div id="ModalAdd" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
        <div id="ModalShow" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
         <div id="ModalEdit" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
         <div id="ModalDelete" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
         <div id="ModalPkbDet" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
         <div id="ModalPkbPrint" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>

        <script type="text/javascript">
            $(document).ready(function (){
                 $("#tablepkb").load('pkb/pkb_load.php');
            });
        </script>