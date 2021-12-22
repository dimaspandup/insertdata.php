<?php
    if($_GET['id_jurusan']){
    	include "koneksi.php";
    	$sqr_hapus=mysqli_query($conn,"delete from jurusan where id_jurusan='".$_GET['id_jurusan']."'");
    	if($sqr_hapus){
    		echo "<script>alert('Sukses hapus Jurusan');location.href='tampil_jurusan.php';</script>";
    	} else {
    		echo "<script>alert('Gagal hapus Jurusan');location.href='tampil_jurusan.php';</script>";
    	}
    }
?>