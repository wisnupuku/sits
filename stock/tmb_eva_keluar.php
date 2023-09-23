<?php 
include '../dbconnect.php';
$barang=$_POST['barang']; // ini ID barang nya
$qty=$_POST['qty'];
$tglkeluar=$_POST['tglkeluar'];


$dt=mysqli_query($conn,"select * from eva_invenstock where idx='$barang'");
$data=mysqli_fetch_array($dt);
$sisa=$data['stock']-$qty;
$query1 = mysqli_query($conn,"update eva_invenstock set stock='$sisa' where idx='$barang'");

$query2 = mysqli_query($conn,"insert into eva_invenkeluar (idx,tglkeluar,jumlah) values('$barang','$tglkeluar','$qty')");

if($query1 && $query2){
    echo " <div class='alert alert-success'>
    <strong>Success!</strong> Redirecting you back in 1 seconds.
  </div>
<meta http-equiv='refresh' content='1; url= eva_inven_keluar.php'/>  ";
} else {
    echo "<div class='alert alert-warning'>
    <strong>Failed!</strong> Redirecting you back in 1 seconds.
  </div>
 <meta http-equiv='refresh' content='1; url= eva_inven_keluar.php'/> ";
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