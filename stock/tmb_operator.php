<?php 
include '../dbconnect.php';
        $tanggal = $_POST['tanggal'];
        $id = $_POST['id'];
        $keterangan = $_POST['keterangan'];

// $dt=mysqli_query($conn,"select * from lokasi where id='$idx'");
// $data=mysqli_fetch_array($dt);
$query2 = mysqli_query($conn,"insert into operator_dokgiat (tanggal,id,keterangan) values('$tanggal','$id','$keterangan')");
if ($query2){

echo " <div class='alert alert-success'>
    <strong>Success!</strong> Redirecting you back in 1 seconds.
  </div>
<meta http-equiv='refresh' content='1; url= operator.php'/>  ";
} else { echo "<div class='alert alert-warning'>
    <strong>Failed!</strong> Redirecting you back in 1 seconds.
  </div>
 <meta http-equiv='refresh' content='1; url= operator.php'/> ";
}


?>
 
<head>
  <title>Input Data Giat</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>