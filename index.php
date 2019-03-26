<?php

include "config.php";

	print("NAMA : WISNU ADHI PRSETYO<br>");
	print("NIM  : 16.01.53.0086<br>");
	print("________________________________________________________<br><br>");
	$run_Query =mysqli_query($kon,"select * from posyandu order by id ASC");
	$hasil = array();

	while ($data =mysqli_fetch_array($run_Query)) {

		array_push($hasil, array(
			'Id' => $data['id'],
			'Nama' => $data['nama'],
			'Alamat' => $data['alamat'],
		));
	}

	$run_Query =mysqli_query($kon,"select * from kader order by id ASC");
	$hasil2 = array();

	while ($data =mysqli_fetch_array($run_Query)) {
		array_push($hasil2, array(
			'Id' => $data['id'],
			'User' => $data['user_id'],
			'Posyandu' => $data['posyandu_id'],
			'Nama' => $data['nama'],
			'Tanggal lahir' => $data['tanggal_lahir'],
			'Alamat' => $data['alamat'],

		));
	}


	$run_Query =mysqli_query($kon,"select * from orang_tua order by id ASC");
	$hasil3 = array();

	while ($data =mysqli_fetch_array($run_Query)) {
		array_push($hasil3, array(
			'Id' => $data['id'],
			'User' => $data['user_id'],
			'Posyandu' => $data['posyandu_id'],
			'Nama_Ayah' => $data['nama_ayah'],
			'Nama_Ibu' => $data['nama_ibu'],
			'Alamat_Orang_Tua' => $data['alamat'],
			
		));
}

$run_Query =mysqli_query($kon,"select * from pengukuran order by id ASC");
	$hasil4 = array();

	while ($data =mysqli_fetch_array($run_Query)) {
		array_push($hasil4, array(
			'Id' => $data['id'],
			'Id Anak' => $data['anak_id'],
			'Posyandu' => $data['posyandu_id'],
			'Lingkar Kepala' => $data['lingkar_kepala'],
			'Lingkar Lengan' => $data['lingkar_lengan'],
			'Berat Badan' => $data['berat_badan'],
			'Tinggi Badan' => $data['tinggi_badan'],
			'Tanggal Pengukuran' => $data['tanggal_pengukuran'],
			'Pemeriksa' => $data['pemeriksa'],
			
		));
}

$run_Query =mysqli_query($kon,"select * from anak order by id ASC");
	$hasil5 = array();

	while ($data =mysqli_fetch_array($run_Query)) {
		array_push($hasil5, array(
			'Id' => $data['id'],
			'Id Orang Tua' => $data['orangtua_id'],
			'Nama' => $data['nama'],
			'Tempat Lahir' => $data['tempat_lahir'],
			'Tanggal Lahir' => $data['tanggal_lahir'],
			
		));
}

$run_Query =mysqli_query($kon,"select * from user order by id ASC");
	$hasil6 = array();

	while ($data =mysqli_fetch_array($run_Query)) {
		array_push($hasil6, array(
			'Id' => $data['id'],
			'Username' => $data['user_name'],
			'Password' => $data['password'],
		));
}


		echo json_encode(array(
			'Posyandu'=> $hasil,
			'Kader'=> $hasil2,
			'Oreangtua'=> $hasil3,
			'Pengukuran'=> $hasil4,
			'Anak'=> $hasil5,
			'User'=> $hasil6,

		));
?>
