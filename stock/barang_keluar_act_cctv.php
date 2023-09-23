<?php 
include '../dbconnect.php';
$barang=$_POST['barang']; // ini ID barang nya
$qty=$_POST['qty'];
$tglkeluar=$_POST['tglkeluar'];
$ket=$_POST['ket'];
$lokasi=$_POST['lokasi'];
$penerima=$_POST['penerima'];

$dt=mysqli_query($conn,"select * from stockcctv where idx='$barang'");
$data=mysqli_fetch_array($dt);
$sisa=$data['stock']-$qty;
$query1 = mysqli_query($conn,"update stockcctv set stock='$sisa' where idx='$barang'");

$query2 = mysqli_query($conn,"insert into keluarcctv (idx,tglkeluar,jumlah,lokasi,penerima,keterangan) values('$barang','$tglkeluar','$qty','$lokasi','$penerima','$ket')");

if($query1 && $query2){
    echo " <div class='alert alert-success'>
    <strong>Success!</strong> Redirecting you back in 1 seconds.
  </div>
<meta http-equiv='refresh' content='1; url= cctv_inven_keluarcctv.php'/>  ";
} else {
    echo "<div class='alert alert-warning'>
    <strong>Failed!</strong> Redirecting you back in 1 seconds.
  </div>
 <meta http-equiv='refresh' content='1; url= cctv_inven_keluarcctv.php'/> ";
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