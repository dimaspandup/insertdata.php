<!DOCTYPE html>
<html>
<head>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<title></title>
</head>
<body>
    <h3>Data Mahasiswa</h3>
    <table class="table table-hover table-striped">
    	<thead>
    		<tr>
    			<th>NO</th>
    			<th>NAMA</th>
    			<th>TANGGAL LAHIR</th>
    			<th>JENIS KELAMIN</th>
    			<th>ALAMAT</th>
    			<th>USERNAME</th>
    			<th>JURUSAN</th>
    			<th>AKSI</th>
    		</tr>
    	</thead>
    	<tbody>
    		<?php
    		include "koneksi.php";
    		$qry_mahasiswa=mysqli_query($conn,"select * from mahasiswa join jurusan on jurusan.id_jurusan=mahasiswa.id_jurusan");
    		$no=0;
    		while($dt_mahasiswa=mysqli_fetch_array($qry_mahasiswa)){
            $no++;?>
               <tr>
               	  <td><?=$no?></td> <td><?=$dt_mahasiswa['nama']?></td> <td><?=$dt_mahasiswa['tanggal_lahir']?></td> <td><?=$dt_mahasiswa['jenis_kelamin']?></td> <td><?=$dt_mahasiswa['alamat']?></td> <td><?=$dt_mahasiswa['username']?></td> <td><?=$dt_mahasiswa['nama_jurusan']?></td> 

               	  <td><a href="ubah_mahasiswa.php?id_mhs=<?=$dt_mahasiswa['id_mhs']?>" class="btn btn-success">Ubah</a> | <a href="hapus_mahasiswa.php?id_mhs=<?=$dt_mahasiswa['id_mhs']?>" onclick="return confirm('Apakah anda yakin menghapus data ini?')" class="btn btn-danger">Hapus</a></td>
               </tr>
               <?php
    		   }
               ?>
    	</tbody>
    </table>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>

