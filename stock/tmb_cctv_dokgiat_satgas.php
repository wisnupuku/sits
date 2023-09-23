<?php 
include '../dbconnect.php';
$tanggal = $_POST['tanggal'];
$jam = $_POST['jam'];
$sebelum = $_FILES['sebelum'];
$sesudah = $_FILES['sesudah'];
$lokasi = $_POST['lokasi'];
$kegiatan = $_POST['kegiatan'];
$progres = $_POST['progres'];
$maintener = $_POST['maintener'];
$tglup = $_POST['tglup'];

if($_FILES["sebelum"]["name"]!=''){
  $loc=$_FILES['sebelum']['tmp_name'];
  $des="assets/images/sits/".$_FILES['sebelum']['name'];
  if( move_uploaded_file($loc, $des))
    {$pesan='.Foto asli berhasil di upload';}
  else
    {$pesan='.Foto asli gagal di upload';}	
}
if($_FILES["sesudah"]["name"]!=''){
    $loc=$_FILES['sesudah']['tmp_name'];
    $des="assets/images/sits/".$_FILES['sesudah']['name'];
    if( move_uploaded_file($loc, $des))
      {$pesan='.Foto asli berhasil di upload';}
    else
      {$pesan='.Foto asli gagal di upload';}	
  }

$query = mysqli_query($conn,"insert into cctv_dokgiat_satgas values('','$tanggal','$jam','".$_FILES["sebelum"]["name"]."','".$_FILES["sesudah"]["name"]."', '$lokasi', '$kegiatan', '$progres', '$maintener', '$tglup')");
if ($query){

  echo " <div class='alert alert-success'>
      <strong>Success!</strong> Redirecting you back in 1 seconds.
    </div>
  <meta http-equiv='refresh' content='1; url= cctv_dokgiat_satgas.php'/>  ";
  } else { echo "<div class='alert alert-warning'>
      <strong>Failed!</strong> Redirecting you back in 1 seconds.
    </div>
   <meta http-equiv='refresh' content='1; url= cctv_dokgiat_satgas.php'/> ";
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