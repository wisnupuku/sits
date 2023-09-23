<?php 
include '../dbconnect.php';
$serial = $_POST['serial'];
$tipe = $_POST['tipe'];
$jenis = $_POST['jenis'];
$tahun = $_POST['tahun'];
$stock = $_POST['stock'];
$tglkontrak = $_POST['tglkontrak'];
$paket = $_POST['paket'];

  
$query = mysqli_query($conn,"INSERT INTO stockcctv values('','$serial','$tipe','$jenis','$tahun','$stock','$tglkontrak','$paket')");
if ($query){

echo " <div class='alert alert-success'>
    <strong>Success!</strong> Redirecting you back in 1 seconds.
  </div>
<meta http-equiv='refresh' content='1; url= cctv_inven_stockcctv.php'/>  ";
} else { echo "<div class='alert alert-warning'>
    <strong>Failed!</strong> Redirecting you back in 1 seconds.
  </div>
 <meta http-equiv='refresh' content='1; url= cctv_inven_stockcctv.php'/> ";
}


?>
 
<head>
  <title>Input Data Stock CCTV</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>