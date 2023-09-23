<?php 
include '../dbconnect.php';
$serial=$_POST['serial']; // ini ID barang nya
$qty=$_POST['qty'];
$tglmasuk=$_POST['tglmasuk'];
$lokasi=$_POST['lokasi'];
$ket=$_POST['ket'];

$dt=mysqli_query($conn,"select * from stockmaterial where idx='$serial'");
$data=mysqli_fetch_array($dt);
$sisa=$data['stock']+$qty;
$query1 = mysqli_query($conn,"update stockmaterial set stock='$sisa' where idx='$serial'");

$query2 = mysqli_query($conn,"insert into masukmaterial (idx,tglmasuk,jumlah,lokasi,keterangan) values('$serial','$tglmasuk','$qty','$lokasi','$ket')");

if($query1 && $query2){
    echo " <div class='alert alert-success'>
    <strong>Success!</strong> Redirecting you back in 1 seconds.
  </div>
<meta http-equiv='refresh' content='1; url= cctv_inven_masukmaterial.php'/>  ";
} else {
    echo "<div class='alert alert-warning'>
    <strong>Failed!</strong> Redirecting you back in 1 seconds.
  </div>
 <meta http-equiv='refresh' content='1; url= cctv_inven_masukmaterial.php'/> ";
}


?>

<html>
<head>
  <title>Barang Masuk</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>