<!doctype html>
<html class="no-js" lang="en">

<?php 
    include '../dbconnect.php';
    include 'cek.php';

    if(isset($_POST['update'])){
        $idx = $_POST['idx'];
        $nama_barang = $_POST['nama_barang'];
        $stock = $_POST['stock'];

        $updatedata = mysqli_query($conn,"update sits_invkbrshn set tanggal='$tanggal',nama='$nama', stock='$stock'");
        
        //cek apakah berhasil
        if ($updatedata){

            echo " <div class='alert alert-success'>
                <strong>Success!</strong> Redirecting you back in 1 seconds.
              </div>
            <meta http-equiv='refresh' content='1; url= sits_invkbrshn.php'/>  ";
            } else { echo "<div class='alert alert-warning'>
                <strong>Failed!</strong> Redirecting you back in 1 seconds.
              </div>
             <meta http-equiv='refresh' content='1; url= sits_invkbrshn.php'/> ";
            }
    };

    if(isset($_POST['hapus'])){
        $idx = $_POST['idx'];

        $delete = mysqli_query($conn,"delete from sits_invkbrshn where idx='$idx'");
        // //hapus juga semua data barang ini di tabel keluar-masuk
        $deltabelkeluar = mysqli_query($conn,"delete from sbrg_keluar where idx='$idx'");
        $deltabelmasuk = mysqli_query($conn,"delete from sbrg_masuk where idx='$idx'");
        
        //cek apakah berhasil
        if ($delete && $deltabelkeluar && $deltabelmasuk){

            echo " <div class='alert alert-success'>
                <strong>Success!</strong> Redirecting you back in 1 seconds.
              </div>
            <meta http-equiv='refresh' content='1; url= sits_invkbrshn.php'/>  ";
            } else { echo "<div class='alert alert-warning'>
                <strong>Failed!</strong> Redirecting you back in 1 seconds.
              </div>
             <meta http-equiv='refresh' content='1; url= sits_invkbrshn.php'/> ";
            }
    };
	?>

<head>
    <meta charset="utf-8">
	<link rel="icon" 
      type="image/png" 
      href="../favicon.png">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>SITS</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-144808195-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-144808195-1');
	</script>
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
	<!-- Start datatable css -->
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.18/css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/responsive/2.2.3/css/responsive.jqueryui.min.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">
	
    <!-- others css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>

<body>
    <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- page container area start -->
    <div class="page-container">
          <!-- sidebar menu area start -->
      <div class="sidebar-menu">
                <div class="sidebar-header"></div>
                <div class="main-menu">
                    <div class="menu-inner">
                        <nav>
                            <ul class="metismenu" id="menu">
                                <li>
                                    <a href="index.php">
                                        <i class="ti-control-stop"></i>
                                        <span>Beranda</span></a>
                                </li>
                                <li  class="active">
                                    <a href="javascript:void(0)" aria-expanded="true">
                                        <i class="ti-layout"></i>
                                        <span>SITS
                                        </span>
                                    </a>
                                    <ul class="collapse">
                                        <li>
                                            <a href="sits_bukutamu.php">Buku Tamu Pengambilan Rekaman</a>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)">Inventaris Server</a>
                                            <ul class="collapse">
                                                <li >
                                                    <a href="stocksits.php">Stock</a>
                                                </li>
                                                <li>
                                                    <a href="masuksits.php">Masuk</a>
                                                </li>
                                                <l>
                                                    <a href="keluarsits.php">Keluar</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li class="active">
                                            <a href="javascript:void(0)">Inventaris Alat Kebersihan</a>
                                            <ul class="collapse">
                                                <li class="active">
                                                    <a href="sits_invkbrshn.php">Stock</a>
                                                </li>
                                                <li>
                                                    <a href="masukkbrshn.php">Masuk</a>
                                                </li>
                                                <li>
                                                    <a href="keluarkbrshn.php">Keluar</a>
                                                </li>
                                            </ul>
                                        </li>

                                    </ul>
                                </li>
                                <li>
                                    <a href="operator.php">
                                        <i class="ti-shine"></i>
                                        <span>Operator</span></a>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" aria-expanded="true">
                                        <i class="ti-check-box"></i>
                                        <span>Evaluator
                                        </span>
                                    </a>
                                    <ul class="collapse">
                                        <li>
                                            <a href="eva_dokgiat.php">Dokumentasi Giat</a>
                                        </li>
                                        <li>
                                                <a href="javascript:void(0)" aria-expanded="true">Inventaris Evaluator</a>
                                                    <ul>
                                                        <li>
                                                            <a href="eva_inven_stock.php">Stock</a>
                                                        </li>
                                                        <li>
                                                            <a href="eva_inven_masuk.php">Masuk</a>
                                                        </li>
                                                        <li>
                                                            <a href="eva_inven_keluar.php">Keluar</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="javascript:void(0)" aria-expanded="true">
                                        <i class="ti-video-camera"></i>
                                        <span>CCTV
                                        </span>
                                    </a>
                                    <ul class="collapse">
                                        <li>
                                            <a href="javascript:void(0)" aria-expanded="true">
                                                <i class="ti-video-camera"></i>
                                                <span>Dokumentasi Giat
                                                </span>
                                            </a>
                                            <ul class="collapse">
                                                <li>
                                                    <a href="cctv_dokgiat_satgas.php">Giat Satgas</a>
                                                </li>
                                                <li>
                                                    <a href="cctv_dokgiat_pemasangan.php">Giat Pemasangan CCTV</a>
                                                </li>
                                                <li>
                                                    <a href="cctv_dokgiat_koordinir.php">Giat Mengkoordinir Satgas</a>
                                                </li>
                                            </ul>
                                        </li>
                                        <li>
                                            <a href="javascript:void(0)" aria-expanded="true">
                                                <i class="ti-video-camera"></i>
                                                <span>Inventaris CCTV
                                                </span>
                                            </a>
                                            <ul class="collapse">
                                                <li>
                                                    <a href="javascript:void(0)" aria-expanded="true">Stock CCTV</a>
                                                    <ul>
                                                        <li>
                                                            <a href="cctv_inven_stockcctv.php">Stock</a>
                                                        </li>
                                                        <li>
                                                            <a href="cctv_inven_masukcctv.php">Masuk</a>
                                                        </li>
                                                        <li>
                                                            <a href="cctv_inven_keluarcctv.php">Keluar</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                                <li>
                                                    <a href="javascript:void(0)" aria-expanded="true">Stock Material</a>
                                                    <ul>
                                                        <li>
                                                            <a href="cctv_inven_stockmaterial.php">Stock</a>
                                                        </li>
                                                        <li>
                                                            <a href="cctv_inven_masukmaterial.php">Masuk</a>
                                                        </li>
                                                        <li>
                                                            <a href="cctv_inven_keluarmaterial.php">Keluar</a>
                                                        </li>
                                                    </ul>
                                                </li>
                                            </ul>
                                        </li>
                                    </ul>
                                </li>
                                <li>
                                    <a href="traffic.php">
                                        <i class="ti-shine"></i>
                                        <span>Traffic</span></a>
                                </li>
                                <li>
                                    <a href="marka.php">
                                        <i class="ti-line-dashed"></i>
                                        <span>Marka</span></a>
                                </li>
                                <li>
                                    <a href="rambu.php">
                                        <i class="ti-direction-alt"></i>
                                        <span>Rambu</span></a>
                                </li>
                                <li>
                                    <a href="logout.php">
                                        <span>Logout</span></a>

                                </li>

                            </ul>
                        </nav>
                    </div>
                </div>
            </div>
            <!-- sidebar menu area end -->
        <!-- main content area start -->
        <div class="main-content">
            <!-- header area start -->
            <div class="header-area">
                <div class="row align-items-center">
                    <!-- nav and search button -->
                    <div class="col-md-6 col-sm-8 clearfix">
                        <div class="nav-btn pull-left">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                        <div class="search-box pull-left">
                            <form action="#">
                                <h2>Hi, <?=$_SESSION['user'];?>!</h2>
                            </form>
                        </div>
                    </div>
                    <!-- profile info & task notification -->
                    <div class="col-md-6 col-sm-4 clearfix">
                        <ul class="notification-area pull-right">
                            <li><h3><div class="date">
								<script type='text/javascript'>
						var months = ['Januari', 'Februari', 'Maret', 'April', 'Mei', 'Juni', 'Juli', 'Agustus', 'September', 'Oktober', 'November', 'Desember'];
						var myDays = ['Minggu', 'Senin', 'Selasa', 'Rabu', 'Kamis', 'Jumat', 'Sabtu'];
						var date = new Date();
						var day = date.getDate();
						var month = date.getMonth();
						var thisDay = date.getDay(),
							thisDay = myDays[thisDay];
						var yy = date.getYear();
						var year = (yy < 1000) ? yy + 1900 : yy;
						document.write(thisDay + ', ' + day + ' ' + months[month] + ' ' + year);		
						//-->
						</script></b></div></h3>

						</li>
                        </ul>
                    </div>
                </div>
            </div>
            <!-- header area end -->
			<?php 
			
				$periksa_bahan=mysqli_query($conn,"select * from sits_invkbrshn where stock <1");
				while($p=mysqli_fetch_array($periksa_bahan)){	
					if($p['stock']<=1){	
						?>	
						<script>
							$(document).ready(function(){
								$('#pesan_sedia').css("color","white");
								$('#pesan_sedia').append("<i class='ti-flag'></i>");
							});
						</script>
						<?php
						echo "<div class='alert alert-danger alert-dismissible fade show'><button type='button' class='close' data-dismiss='alert'>&times;</button>Stok  <strong><u>".($p['nama_barang'])."</u> &nbsp <u>".$p['stock']."</u></strong> yang tersisa sudah habis</div>";		
					}
				}
				?>
			
            <!-- page title area start -->
            <div class="page-title-area">
                <div class="row align-items-center">
                    <div class="col-sm-6">
                        <div class="breadcrumbs-area clearfix">
                            <h4 class="page-title pull-left">Dashboard</h4>
                            <ul class="breadcrumbs pull-left">
                                <li><a href="index.php">Home</a></li>
                                <li><span>Daftar Inventaris Alat Kebersihan</span></li>
                            </ul>
                        </div>
                    </div>
                    <div class="col-sm-6 clearfix">
                        <!-- <div class="user-profile pull-right" style="color:black; padding:0px;">
                            <img src="log.jpg" width="220px" class="user-name dropdown-toggle" data-toggle="dropdown"\>
                        </div> -->
                    </div>
                </div>
            </div>
            <!-- page title area end -->
            <div class="main-content-inner">
               
                <!-- market value area start -->
                <div class="row mt-5 mb-5">
                    <div class="col-12">
                        <div class="card">
                            <div class="card-body">
                                <div class="d-sm-flex justify-content-between align-items-center">
									<h2>Daftar Inventaris Alat Kebersihan</h2>
									<button style="margin-bottom:20px" data-toggle="modal" data-target="#myModal" class="btn btn-info col-md-2"><span class="glyphicon glyphicon-plus"></span>Tambah Barang</button>
                                </div>
                                    <div class="data-tables datatable-dark">
										 <table id="dataTable3" class="display" style="width:100%"><thead class="thead-dark">
											<tr>
												<th>No</th>
                                                <!-- <th>Tanggal</th> -->
												<th>Nama Barang</th>
												<th>Jumlah</th>
                                                <th>Opsi</th>
											</tr></thead><tbody>
											<?php 
											$brgs=mysqli_query($conn,"SELECT * from sits_invkbrshn order by idx ASC");
											$no=1;
											while($p=mysqli_fetch_array($brgs)){
                                                $idb = $p['idx'];
												?>
												
												<tr>
													<td><?php echo $no++ ?></td>
													<td><?php echo $p['nama_barang'] ?></td>
													<td><?php echo $p['stock'] ?></td>
                                                    <td><button data-toggle="modal" data-target="#edit<?=$idb;?>" class="btn btn-warning">Edit</button> <button data-toggle="modal" data-target="#del<?=$idb;?>" class="btn btn-danger">Del</button></td>
												</tr>


                                                <!-- The Modal -->
                                                    <div class="modal fade" id="edit<?=$idb;?>">
                                                        <div class="modal-dialog">
                                                        <div class="modal-content">
                                                        <form method="post">
                                                            <!-- Modal Header -->
                                                            <div class="modal-header">
                                                            <h4 class="modal-title">Edit Barang <?php echo $p['tanggal']?> - 
                                                                                                <?php echo $p['nama_barang']?> - 
                                                                                                <?php echo $p['stock']?></h4>
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                            </div>
                                                            
                                                            <!-- Modal body -->
                                                            <div class="modal-body">

                                                            <!-- <label for="tanggal">Tanggal</label> -->
                                                            <input type="date" id="tanggal" name="tanggal" class="form-control" value="<?php echo $p['tanggal'] ?>"hidden>
                                                            
                                                            <label for="nama_barang">Nama</label>
                                                            <input type="text" id="nama_barang" name="nama" class="form-control" value="<?php echo $p['nama_barang'] ?>">

                                                            <label for="stock"></label>
                                                            <input type="number" id="stock" name="stock" class="form-control" value="<?php echo $p['stock'] ?>" hidden>

                                                        </div>
                                                            
                                                            <!-- Modal footer -->
                                                            <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                            <button type="submit" class="btn btn-success" name="update">Save</button>
                                                            </div>
                                                            </form>
                                                        </div>
                                                        </div>
                                                    </div>



                                                    <!-- The Modal -->
                                                    <div class="modal fade" id="del<?=$idb;?>">
                                                        <div class="modal-dialog">
                                                        <div class="modal-content">
                                                        <form method="post">
                                                            <!-- Modal Header -->
                                                            <div class="modal-header">
                                                            <h4 class="modal-title">Hapus Barang <?php echo $p['nama_barang']?> - <?php echo $p['stock']?></h4>
                                                            <button type="button" class="close" data-dismiss="modal">&times;</button>
                                                            </div>
                                                            
                                                            <!-- Modal body -->
                                                            <div class="modal-body">
                                                            Apakah Anda yakin ingin menghapus ini?
                                                            <input type="hidden" name="idx" value="<?=$idb;?>">
                                                            </div>
                                                            
                                                            <!-- Modal footer -->
                                                            <div class="modal-footer">
                                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                                                            <button type="submit" class="btn btn-success" name="hapus">Hapus</button>
                                                            </div>
                                                            </form>
                                                        </div>
                                                        </div>
                                                    </div>


												<?php 
											}
											?>
										</tbody>
										</table>
                                    </div>
									<a href="export_sits_invkbrshan.php" target="_blank" class="btn btn-info">Export Data</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
              
                
                <!-- row area start-->
            </div>
        </div>
        <!-- main content area end -->
        <!-- footer area start-->
        <footer>
            <div class="footer-area">
                <p>By Richard's Lab</p>
            </div>
        </footer>
        <!-- footer area end-->
    </div>
    <!-- page container area end -->
	
	<!-- modal input -->
			<div id="myModal" class="modal fade">
				<div class="modal-dialog">
					<div class="modal-content">
						<div class="modal-header">
							<h4 class="modal-title">Masukkan Data</h4>
						</div>
						<div class="modal-body">
							<form action="tmb_sits_invkbrshn.php" method="post" enctype="multipart/form-data">
                                <div class="form-group">
									<label>Tanggal</label>
									<input name="tanggal" type="date" class="form-control" placeholder="Masukkan Tanggal" hidden>
								</div>
								<div class="form-group">
									<label>Nama</label>
									<input name="nama_barang" type="text" class="form-control" placeholder="Nama Barang" required>
								</div>
								<div class="form-group">
									<input name="stock" type="number" min="0" class="form-control" placeholder="Qty" hidden>
								</div>

							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">Batal</button>
								<input type="submit" class="btn btn-primary" value="Simpan">
							</div>
						</form>
					</div>
				</div>
			</div>
	
	<script>
		$(document).ready(function() {
		$('input').on('keydown', function(event) {
			if (this.selectionStart == 0 && event.keyCode >= 65 && event.keyCode <= 90 && !(event.shiftKey) && !(event.ctrlKey) && !(event.metaKey) && !(event.altKey)) {
			   var $t = $(this);
			   event.preventDefault();
			   var char = String.fromCharCode(event.keyCode);
			   $t.val(char + $t.val().slice(this.selectionEnd));
			   this.setSelectionRange(1,1);
			}
		});
	});
	
	$(document).ready(function() {
    $('#dataTable3').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'print'
        ]
    } );
	} );
	</script>
	
	<!-- jquery latest version -->
    <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>
		<!-- Start datatable js -->
	 <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    <script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.18/js/dataTables.bootstrap4.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/dataTables.responsive.min.js"></script>
    <script src="https://cdn.datatables.net/responsive/2.2.3/js/responsive.bootstrap.min.js"></script>
	<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
    <!-- start chart js -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.min.js"></script>
    <!-- start highcharts js -->
    <script src="https://code.highcharts.com/highcharts.js"></script>
    <!-- start zingchart js -->
    <script src="https://cdn.zingchart.com/zingchart.min.js"></script>
    <script>
    zingchart.MODULESDIR = "https://cdn.zingchart.com/modules/";
    ZC.LICENSE = ["569d52cefae586f634c54f86dc99e6a9", "ee6b7db5b51705a13dc2339db3edaf6d"];
    </script>
    <!-- all line chart activation -->
    <script src="assets/js/line-chart.js"></script>
    <!-- all pie chart -->
    <script src="assets/js/pie-chart.js"></script>
    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>
	
	
</body>

</html>
