<?php 
include '../dbconnect.php';
$tanggal=$_POST['tanggal'];
$nama=$_POST['nama'];
$no_telp=$_POST['no_telp'];
$instansi=$_POST['instansi'];
$keperluan=$_POST['keperluan'];
$lokasi=$_POST['lokasi'];
$ktp=$_FILES['ktp'];
$surat=$_POST['surat'];

if($_FILES["ktp"]["name"]!=''){
  $loc=$_FILES['ktp']['tmp_name'];
  $des="assets/images/sits/".$_FILES['ktp']['name'];
  if( move_uploaded_file($loc, $des))
    {$pesan='.Foto asli berhasil di upload';}
  else
    {$pesan='.Foto asli gagal di upload';}	
}


$query = mysqli_query($conn,"insert into sits_bukutamu values('','$tanggal','$nama','$no_telp','$instansi','$keperluan','$lokasi','".$_FILES["ktp"]["name"]."', '$surat')");
if ($query){

  echo " <div class='alert alert-success'>
      <strong>Success!</strong> Redirecting you back in 1 seconds.
    </div>
  <meta http-equiv='refresh' content='1; url= sits_bukutamu.php'/>  ";
  } else { echo "<div class='alert alert-warning'>
      <strong>Failed!</strong> Redirecting you back in 1 seconds.
    </div>
   <meta http-equiv='refresh' content='1; url= sits_bukutamu.php'/> ";
  }
  
  
  ?>
   
  <head>
    <title>Buku Tamu</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  </head>