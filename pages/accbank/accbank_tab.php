
  <!-- Left side column. contains the logo and sidebar -->
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
    <div class="title-header">
    Data Accounting Bank
    </div>
      <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li><a href="#">Tables</a></li>
        <li class="active">Data Accounting Bank</li>
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
              <div id="tableaccbank">
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
  <div id="ModalBankAdd" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
  <div id="ModalAccAdd" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
  <div id="ModalBatal" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
  <div id="ModalApprove" class="modal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"></div>
               <script type="text/javascript">
            $(document).ready(function (){
                 $("#tableaccbank").load('accbank/accbank_load.php');
            });

            
        </script>