<?php
	session_start();
	$_SESSION['ip']=session_id();
	include "adminweb/koneksi.php";
	if($_POST['konfirmasi_belanja']){
		
		for($i=0;$i<$_SESSION['count']-1; $i++){
			if($_POST['jumlah'][$i]!=""){
				$nama_produk=$_POST['nama_produk'][$i];
				$jumlah=$_POST[jumlah][$i];
				$harga=$_POST[harga][$i];
				mysql_query("INSERT INTO temp VALUES('','$nama_produk','$jumlah','$harga','$_SESSION[ip]')");
			}
		}
		
	}else if($_POST['pesan']){
		echo "pesan";
	}
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>TehSirihMerah.com Toko Herbal Indonesia</title>
<link rel="stylesheet" href="style.css" type="text/css" />
</head>

<body>
	<div id="wrapper">
    	<div id="header"></div>
        <div id="menu"><?php include "menu.php";?></div>
        <div id="info"><?php include "info.php";?></div>
        <div id="left"><?php include "left.php"?></div>
        <div id="right"><?php include "right.php";?></div>
        <div id="clear"></div>
    </div>
    <div id="clear"></div>
    <div id="footer"><?php include "footer.php";?></div>
    
</body>
</html>