
<div class="wrapper">

  <header class="main-header">
 
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar fixed-top" style="margin-left: 0px" >
      <!-- Sidebar toggle button-->
    <div class="container">
      <a class="navbar-brand" href="index.php">Alfa Omega
        </a>
      <div class="navbar-custom-menu" style="padding: 0 0 0 0;margin: 0 auto;">
        <ul class="nav navbar-nav" style="list-style: none;padding: 0;margin: 0 auto;font-size: 1px;margin-top: 8px;">
         
          <li style="display: block;margin:0;padding:0;float: left;"><a href="index.php" style="width: 100%;padding: 0.5em;"><button class="btn btn-default btne" style="padding: 5px 10px;background-color:white;">Home <i class="fa fa-home"></i></button></a></li>
          <?php if ($seskdlvl=='Umum' || $seskdlvl=='Admin'){?>
          <li style="display: block;margin:0;padding:0;float: left;"><a href="?p=inventory" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">Kartu Pelanggan <i class="fa fa-user-plus"></i></button></a></li>
          <?php } ?>
          <?php if ($seskdlvl=='Umum' || $seskdlvl=='Admin'){?>
          <li style="display: block;margin:0;padding:0;float: left;"><a href="?p=estimasi" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">Estimasi <i class="fa fa-file-text"></i></button></a></li>
          <?php }?>

          <?php if ($seskdlvl=='Admin'){?>
           <li class="dropdown" style="display: block;margin:0;padding:0;float: left;">
            <a href="#" data-toggle="dropdown" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">PKB BR <i class="fa fa-file-text dropdown-toggle"></i></button> </a>
            <ul class="dropdown-menu">
              <li class="header"><a href="?p=pkb">PKB BR</a></li> 
              <li class="header"><a href="?p=pkbbukatutup">Buka/Tutup PKB BR</a></li>    
                          </ul>
          </li><?php } ?>

          <?php if ($seskdlvl=='Admin'){?>
           <li class="dropdown" style="display: block;margin:0;padding:0;float: left;">
            <a href="#" data-toggle="dropdown" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">PKB GR <i class="fa fa-file-text dropdown-toggle"></i></button> </a>
            <ul class="dropdown-menu">
              <li class="header"><a href="?p=pkbjasa">PKB Jasa</a></li>
              <li class="header"><a href="?p=pkbjasabukatutup">Buka/Tutup PKB Jasa</a></li>
              <li class="header"><a href="?p=nonpkb">Non PKB</a></li>
                          </ul>
          </li><?php } ?>

          <?php if ($seskdlvl=='Umum' || $seskdlvl=='Admin'){?>
          <li style="display: block;margin:0;padding:0;float: left;"><a href="?p=panel" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">Panel <i class="fa fa-window-restore"></i></button></a></li>
          <?php }?>
            <?php if ($seskdlvl=='Umum' || $seskdlvl=='Admin'){?>
          <li style="display: block;margin:0;padding:0;float: left;"><a href="?p=part" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">Part <i class="fa fa-wrench"></i></button></a></li>
          <?php }?>
         <?php if ($seskdlvl=='Admin'){?>
           <li class="dropdown" style="display: block;margin:0;padding:0;float: left;">
            <a href="#" data-toggle="dropdown" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">Finance BR <i class="fa fa-usd dropdown-toggle"></i></button> </a>
            <ul class="dropdown-menu">
              <li class="header"><a href="?p=kwitansi">Kwitansi BR</a></li> 
              <li class="header"><a href="?p=kwitansior">Kwitansi OR BR</a></li>   
               <li class="header"><a href="?p=cash">Cash BR</a></li> 
               <li class="header"><a href="?p=bank">Bank BR</a></li> 
              <li class="header"><a href="?p=gatepass">Gate Pass BR</a></li> 
                          </ul>
          </li><?php } ?>
          <?php if ($seskdlvl=='Admin'){?>
           <li class="dropdown" style="display: block;margin:0;padding:0;float: left;">
            <a href="#" data-toggle="dropdown" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">Finance GR <i class="fa fa-usd dropdown-toggle"></i></button> </a>
            <ul class="dropdown-menu">
              <li class="header"><a href="?p=kwitansigr">Kwitansi GR</a></li> 
               <li class="header"><a href="?p=cashgr">Cash GR</a></li> 
               <li class="header"><a href="?p=bankgr">Bank GR</a></li> 
               <li class="header"><a href="?p=gatepassgr">Gate Pass GR</a></li> 
               <li class="header"><a href="?p=paycuci">Payment Non PKB</a></li> 
                <!--<li class="header"><a href="?p=paypkbjasa">Payment PKB Jasa</a></li>-->
          </ul>
          </li><?php } ?>
            <?php if ($seskdlvl=='Admin'){?>
           <li class="dropdown" style="display: block;margin:0;padding:0;float: left;">
            <a href="#" data-toggle="dropdown" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">Accounting <i class="fa fa-usd dropdown-toggle"></i></button> </a>
            <ul class="dropdown-menu">
              <li class="header"><a href="?p=mcoa">Master COA</a></li> 
              <li class="header"><a href="?p=acccash">Cash</a></li>  
              <li class="header"><a href="?p=accbank">Bank</a></li>   
               
                          </ul>
          </li><?php } ?>
          <li class="dropdown" style="display: block;margin:0;padding:0;float: left;">
            <a href="?p=laporan" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">Laporan <i class="fa fa-gears dropdown-toggle"></i></button> </a>
            <!--<ul class="dropdown-menu">
              <?php if ($seskdlvl=='SuratMasuk' || $seskdlvl=='Admin'){?>
              <li class="header"><a href="?p=lapsuratmasuk">Lap. PKB</a></li><?php }?>
              <?php if ($seskdlvl=='SuratKeluar' || $seskdlvl=='Admin'){?>
              <li class="header"><a href="?p=lapsuratkeluar">Lap. PKB Batal</a></li><?php }?>
              
            </ul>-->
          </li>
          <?php if ($seskdlvl=='Admin'){?>
           <li class="dropdown" style="display: block;margin:0;padding:0;float: left;">
            <a href="#" data-toggle="dropdown" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">Master <i class="fa fa-gears dropdown-toggle"></i></button> </a>
            <ul class="dropdown-menu">
              <li class="header"><a href="?p=customer">Customer</a></li> 
              <li class="header"><a href="?p=asuransi">Asuransi</a></li>   
              <li class="header"><a href="?p=supplier">Supplier</a></li>
              <li class="header"><a href="?p=partnerbank">Partner Bank</a></li>
              <li class="header"><a href="?p=satuan">Satuan</a></li>
              <li class="header"><a href="?p=part">Part</a></li>
              <li class="header"><a href="?p=panel">Panel</a></li>   
              <li class="header"><a href="?p=group">Group Kendaraan</a></li>   
              <li class="header"><a href="?p=tipe">Tipe Kendaraan</a></li>   
              <li class="header"><a href="?p=warna">Warna Kendaraan</a></li>   
              <li class="header"><a href="?p=cuci">Cuci Mobil</a></li>   
              <li class="header"><a href="?p=salon">Salon Mobil</a></li> 
              <li class="header"><a href="?p=jasa">Jasa</a></li> 
              <li class="header"><a href="?p=paketjasa">Paket Jasa</a></li> 
              <li class="header">----------------------------------</li>
              <li class="header"><a href="?p=backup">Backup Database</a></li>
            <!--   <li class="header"><a href="?p=user">User</a></li>   
              <li class="header"><a href="?p=company">Company</a></li> 
              <li class="header"><a href="?p=backup">Backup Database</a></li>
              <li class="header"><a href="?p=restore">Restore Database</a></li>
              <li class="header"><a href="?p=backupfile">Backup File</a></li> -->
            </ul>
          </li><?php } ?>

          <li class="dropdown" style="display: block;margin:0;padding:0;float: left;" class="dropdown notifications-menu">
            <a href="login/logout.php" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">Logout <i class="fa fa-sign-out"></i></button></a></li>

          </li>

        </ul>
      </div>
    </div>
    </nav>
  </header>

 <style>
 table.dataTable tbody th, table.dataTable tbody td {
    font-size: 12px;
  }
  .modal-dialog {
    width:70%;
  }
  
  .title{
    margin-bottom:-5px;
    background-color: #AAAAAA;
    text-align: right;
    font-weight: bold;
    font-size: 13px;
    height: 28px;
    vertical-align: middle;
  }
  .modal-body{
     margin-top: -50px;
  }
  .modal-footer {
    padding-top: 10px;
    padding-bottom: 0px;
    padding-left: 0px;
    padding-right: 0px;
  }
  .modal-title {
    font-style: italic;
    background-color:skyblue;
    text-align: center;
    font-weight: bold;
    font-size: 12px;
    height: 24px;
    vertical-align: middle;
    padding-top:3px;
  }
  .modal-dialog {
    margin-bottom: 0px;
    border: 1px;
    border-style: solid;
    border-color:#5E5E5E;
  }
    .title-header {
    font-size: 20px;
    text-align: center;
    font-weight: bold;
    font-family: monospace;
   
  }
   .form-control{
        height: 20px;
        width: 80%;
        font-size: 12px;
   }
  .btn-default{
    background-color: white;
    padding: 5px 10px;
    
  }  

   .table {
    border-spacing: 0;
    border-collapse: collapse;
    margin-bottom: 0px;
  }
  .thead-light{
    background-color: lightgrey;
  }

table.dataTable tbody th, table.dataTable tbody td {
    padding: 0px 0px 0px 0px;  /* e.g. change 8x to 4px here */
    font-size: 11px;
    vertical-align: middle;
}
table.dataTable thead tr, table.dataTable thead tr {
    padding: 0px 0px 0px 0px;  /* e.g. change 8x to 4px here */
    font-size: 12px;
    vertical-align: middle;
}

.bgsave{
   background-color:skyblue;
   text-align: center;
   font-weight:bold;
   height:24px;
}
   
  .btn-circle{
    background-color: white;
  }
  .btn-primary{
    background-color: white;
  }
  
  .btn {
    padding-bottom: 0px;
    padding-top: 3px;
    padding-left: 4px;
    padding-right: 4px;
    font-size: 11px;
    color: black;    
    background-color:white;
    border-width: 1px;
  }
  
 </style>