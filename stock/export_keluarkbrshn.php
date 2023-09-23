<!DOCTYPE html>
<html lang="en">

    <?php 
    include 'cek.php';
    include '../dbconnect.php';
?>
    <head>
        <title>Keluar Inventaris Kebersihan SITS</title>
        <link rel="icon" type="image/png" href="favicon.png">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link
            rel="stylesheet"
            href="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js"></script>
        <script
            src="https://maxcdn.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js"></script>
        <link
            rel="stylesheet"
            type="text/css"
            href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">
        <link
            rel="stylesheet"
            type="text/css"
            href="https://cdn.datatables.net/buttons/1.5.2/css/buttons.dataTables.min.css">
        <link
            rel="stylesheet"
            type="text/css"
            href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css">
        <script
            type="text/javascript"
            charset="utf8"
            src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    </head>

    <body>
        <div class="container">
            <h2>Inventaris Kebersihan SITS</h2>
            <h4>(Keluar)</h4>
            <div class="data-tables datatable-dark">
                <table id="dataTable3" class="display" style="width:100%">
                    <thead class="thead-dark">
                        <tr>
                            <th>No</th>
                            <th>Nama Barang</th>
                            <th>Tanggal</th>
                            <th>Jumlah</th>
                            
                        </tr>
                    </thead>
                    <tbody>
                        <?php 
                    $brgs=mysqli_query($conn,"SELECT * from  keluarkebersihan sb, sits_invkbrshn st where st.idx=sb.idx order by sb.id DESC");
                    $no = 1;
                    while ($p = mysqli_fetch_array($brgs)) {
                      $idb = $p['idx'];
                      $id = $p['id'];
                        ?>
                        <tr>
                            <td><?php echo $no++ ?></td>
                            <td><?php echo $p['nama_barang'] ?></td>
                            <td><?php echo $p['tglkeluar'] ?></td>
                            <td><?php echo $p['jumlah'] ?></td>
                            
                        </tr>
                        <?php 
                    }
                    ?>
                    </tbody>
                </table>
            </div>
        </div>

        <script>
            $(document).ready(function () {
                $('#dataTable3').DataTable({
                    dom: 'Bfrtip',
                    buttons: ['copy', 'csv', 'excel', 'pdf', 'print']
                });
            });
        </script>

        <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
        <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
        <script
            src="https://cdn.datatables.net/buttons/1.5.2/js/dataTables.buttons.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.flash.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/pdfmake.min.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.36/vfs_fonts.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.html5.min.js"></script>
        <script src="https://cdn.datatables.net/buttons/1.5.2/js/buttons.print.min.js"></script>
    </body>

</html>