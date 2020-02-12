
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
         
          <li style="display: block;margin:0;padding:0;float: left;"><a href="index.php" style="width: 100%;padding: 0.5em;"><button class="btn btn-default btne" style="padding: 5px 10px;background-color:white;">HOME <i class="fa fa-home"></i></button></a></li>
          
          <?php if ($seskdlvl=='Umum' || $seskdlvl=='Admin'){?>
          <li style="display: block;margin:0;padding:0;float: left;"><a href="?p=inventory" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">KARTU PELANGGAN <i class="fa fa-user-plus"></i></button></a></li>
          <?php } ?>

          <?php if ($seskdlvl=='Admin'){?>
           <li class="dropdown" style="display: block;margin:0;padding:0;float: left;">
            <a href="#" data-toggle="dropdown" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">BODY REPAIR <i class="fa fa-file-text dropdown-toggle"></i></button> </a>
            <ul class="dropdown-menu">
              <li><a href="?p=estimasi">ESTIMASI</a></li>
              <li><a href="?p=pkb">PKB BR</a></li> 
              <li><a href="?p=pkbbukatutup">BUKA/TUTUP PKB</a></li>   
              <li class="dropdown-submenu">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">FINANCE</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="?p=kwitansi">KWITANSI BR</a></li> 
                                        <li><a href="?p=kwitansior">KWITANSI OR</a></li>   
                                        <li><a href="?p=cash">CASH</a></li> 
                                        <li><a href="?p=bank">BANK</a></li> 
                                        <li><a href="?p=gatepass">GATE PASS</a></li> 
                                    </ul>
                                </li>
            </ul>
          </li>
          <?php } ?>

          <?php if ($seskdlvl=='Admin'){?>
           <li class="dropdown" style="display: block;margin:0;padding:0;float: left;">
            <a href="#" data-toggle="dropdown" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">GENERAL REPAIR <i class="fa fa-file-text dropdown-toggle"></i></button> </a>
            <ul class="dropdown-menu">              
              <li><a href="?p=pkbjasa">PKB GR</a></li>
              <li><a href="?p=pkbjasabukatutup">BUKA/TUTUP PKB</a></li>
              <li><a href="?p=nonpkb">NON PKB</a></li>
              <li class="dropdown-submenu">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">FINANCE</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="?p=kwitansigr">KWITANSI GR</a></li> 
                                        <li><a href="?p=cashgr">CASH</a></li> 
                                        <li><a href="?p=bankgr">BANK</a></li> 
                                        <li><a href="?p=gatepassgr">GATE PASS</a></li> 
                                        <li><a href="?p=paycuci">PAYMENT NON PKB</a></li>  
                                    </ul>
                                </li>
            </ul>
          </li>
          <?php } ?>

          
            <?php if ($seskdlvl=='Admin'){?>
           <li class="dropdown" style="display: block;margin:0;padding:0;float: left;">
            <a href="#" data-toggle="dropdown" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">ACCOUNTING <i class="fa fa-usd dropdown-toggle"></i></button> </a>
            <ul class="dropdown-menu">
              <li class="header"><a href="?p=mcoa">MASTER COA</a></li> 
              <li class="header"><a href="?p=acccash">CASH</a></li>  
              <li class="header"><a href="?p=accbank">BANK</a></li>   
               
                          </ul>
          </li><?php } ?>
         
          <?php if ($seskdlvl=='Admin'){?>
           <li class="dropdown" style="display: block;margin:0;padding:0;float: left;">
            <a href="#" data-toggle="dropdown" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">MASTER <i class="fa fa-gears dropdown-toggle"></i></button> </a>
            <ul class="dropdown-menu">
              <li class="header"><a href="?p=customer">CUSTOMER</a></li> 
              <li class="header"><a href="?p=asuransi">ASURANSI</a></li>   
              <li class="header"><a href="?p=supplier">SUPPLIER</a></li>
              <li class="header"><a href="?p=partnerbank">PARTNER BANK</a></li>
              <li class="header"><a href="?p=satuan">SATUAN</a></li>
              <li class="header"><a href="?p=part">PART</a></li>
              <li class="header"><a href="?p=panel">PANEL</a></li>   
              <li class="header"><a href="?p=group">GROUP KENDARAAN</a></li>   
              <li class="header"><a href="?p=tipe">TIPE KENDARAAN</a></li>   
              <li class="header"><a href="?p=warna">WARNA KENDARAAN</a></li>   
              <li class="header"><a href="?p=cuci">CUCI MOBIL</a></li>   
              <li class="header"><a href="?p=salon">SALON MOBIL</a></li> 
              <li class="header"><a href="?p=jasa">JASA</a></li> 
              <li class="header"><a href="?p=paketjasa">PAKET JASA</a></li> 
              <li class="header">----------------------------------</li>
              <li class="header"><a href="?p=backup">BACKUP DATABASE</a></li>            
            </ul>
          </li><?php } ?>

          <li class="dropdown" style="display: block;margin:0;padding:0;float: left;" class="dropdown notifications-menu">
            <a href="login/logout.php" style="width: 100%;padding: 0.5em;"><button class="btn btn-default" style="padding: 5px 10px;">LOGOUT <i class="fa fa-sign-out"></i></button></a></li>

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
  /* HEADER MENU*/
  .dropdown-submenu {
    position: relative;
}

.dropdown-submenu>.dropdown-menu {
    top: 0;
    left: 100%;
    margin-top: -6px;
    margin-left: -1px;
    -webkit-border-radius: 0 6px 6px 6px;
    -moz-border-radius: 0 6px 6px;
    border-radius: 0 6px 6px 6px;
}

.dropdown-submenu:hover>.dropdown-menu {
    display: block;
}

.dropdown-submenu>a:after {
    display: block;
    content: " ";
    float: right;
    width: 0;
    height: 0;
    border-color: transparent;
    border-style: solid;
    border-width: 5px 0 5px 5px;
    border-left-color: #ccc;
    margin-top: 5px;
    margin-right: -10px;
}

.dropdown-submenu:hover>a:after {
    border-left-color: #fff;
}

.dropdown-submenu.pull-left {
    float: none;
}

.dropdown-submenu.pull-left>.dropdown-menu {
    left: -100%;
    margin-left: 10px;
    -webkit-border-radius: 6px 0 6px 6px;
    -moz-border-radius: 6px 0 6px 6px;
    border-radius: 6px 0 6px 6px;
}
 </style>