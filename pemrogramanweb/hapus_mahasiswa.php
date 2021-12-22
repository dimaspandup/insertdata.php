<?php
   if($_GET['id_mhs']){
    	include "koneksi.php";
    	$sqr_hapus=mysqli_query($conn,"delete from mahasiswa where id_mhs='".$_GET['id_mhs']."'");
    	if($sqr_hapus){
    		echo "<script>alert('Sukses hapus mahasiswa');location.href='tampil_mahasiswa.php';</script>";
    	} else {
    		echo "<script>alert('Gagal hapus mahasiswa');location.href='tampil_mahasiswa.php';</script>";
    	}
    }
?>