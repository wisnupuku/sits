<!doctype html>
<html class="no-js" lang="en">

<?php 
	include 'cek.php';
	include '../dbconnect.php';
	?>

<html>
<head>
<title>Data Inventaris Kebersihan</title>
<link rel="icon" 
      type="image/png" 
      href="favicon.png">
	   <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">
<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-144808195-1"></script>
	<script>
	  window.dataLayer = window.dataLayer || [];
	  function gtag(){dataLayer.push(arguments);}
	  gtag('js', new Date());

	  gtag('config', 'UA-144808195-1');
	</script>

</head>

<body>
		<div class="container">
			<h2>Data Inventaris Kebersihan</h2>
				<div class="data-tables datatable-dark">
					<table class="display" id="dataTable3" style="width:100%">
					<thead class="thead-dark">
                        <tr>
                            <th>No</th>
                            <th>Nama Barang</th>
                            <th>Tanggal masuk</th>
                            <th>jumlah barang masuk</th>
                            <th>Tanggal barang keluar</th>
                            <th>Jumlah barang keluar</th>
                            <th>Jumlah</th>
                            <th>Jumlah Stock barang</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                    $brgs=mysqli_query($conn,"SELECT sits_invkbrshn.nama_barang AS Nama, 
                    masukkebersihan.tglmasuk AS TanggalMasuk, masukkebersihan.jumlah AS JumlahBarangMasuk, 
                    keluarkebersihan.tglkeluar AS TanggalKeluar, keluarkebersihan.jumlah AS JumlahBarangKeluar,
                    masukkebersihan.jumlah - keluarkebersihan.jumlah AS Jumlah,
                    sits_invkbrshn.stock AS JumlahStockBarang
                    FROM sits_invkbrshn
                    JOIN masukkebersihan ON sits_invkbrshn.idx = masukkebersihan.idx
                    LEFT JOIN keluarkebersihan ON sits_invkbrshn.idx = keluarkebersihan.idx");
                    $no = 1;
                    while ($p = mysqli_fetch_array($brgs)) {
                        ?>
                        <tr>
                            <td><?php echo $no++ ?></td>
                            <td><?php echo $p['Nama'] ?></td>
                            <td><?php echo $p['TanggalMasuk'] ?></td>
                            <td><?php echo $p['JumlahBarangMasuk'] ?></td>
                            <td><?php echo $p['TanggalKeluar'] ?></td>>
                            <td><?php echo $p['JumlahBarangKeluar'] ?></td>
                            <td><?php echo $p['Jumlah'] ?></td>
                            <td><?php echo $p['JumlahStockBarang'] ?></td>
                        </tr>
                        <?php 
                    }
                    ?>
                    </tbody>
										</table>
								</div>
						</div>
	
<script>
$(document).ready(function() {
    $('#dataTable3').DataTable( {
        dom: 'Bfrtip',
        buttons: [
           'copy', 'csv', 'excel', 'pdf', 'print',
        ]
    } );
} );

</script>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
<script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>

	

</body>

</html>