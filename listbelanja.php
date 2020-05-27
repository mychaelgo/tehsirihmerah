<h2>LIST BELANJA</h2>
<form action="" method="post">
<?php
	if($_GET['delete']!=""){
		mysql_query("DELETE FROM temp WHERE id='$_GET[delete]'");
	}elseif($_POST['confirm']){
		$nama=mysql_escape_string($_POST['nama']);
		$alamat=mysql_escape_string($_POST['alamat']);
		$no_telp=mysql_escape_string($_POST['no_telp']);
		$email=mysql_escape_string($_POST['email']);
		$keterangan=mysql_escape_string($_POST['keterangan']);
		//kirim email
		$to = "sales@herbalkoe.com";
 		//Sales@herbalkoe.com
 		$subject = "Order ".date("d M Y");
 		$body ="
		Nama		: $nama<br>
		Alamat		: $alamat<br>
		No.Telp		: $no_telp<br>
		E-mail		: $email<br>
		Keterangan	: $keterangan<p>
		
		Detail Pemesanan :<br>";
		
		$q=mysql_query("SELECT * FROM temp WHERE ip='$_SESSION[ip]'");
		$id=mysql_insert_id();
		$body.="<table border=1><tr><th>Nama Produk<th>Jumlah<th>Harga<th>Total";
		while($r=mysql_fetch_array($q)){
			$total=$r[jumlah]*$r[harga];
			$body .= "<tr><td>$r[nama_produk]<td>$r[jumlah]<td>Rp.$r[harga]<td>Rp.$total";
		}
		$body.="</table><br>Total : $_SESSION[total_belanja]";
		if (mail($to, $subject, $body,"MIME-Version: 1.0\n" . 
			"Content-type: text/html; charset=iso-8859-1"))
		{
			mail("mychael.christian.go@gmail.com",$subject,$body,"MIME-Version: 1.0\n" . 
			"Content-type: text/html; charset=iso-8859-1");
			
			echo"<script>alert('Terima kasih atas pesanan Anda, kami akan konfirmasi paling lambat 1 x 24 jam.');</script>";

		}else {
   			echo("<p>Order Gagal</p>");
  		}
		
		mysql_query("DELETE FROM temp WHERE ip='$_SESSION[ip]'");
		session_destroy();
		
	}elseif($_POST['batal']){
		mysql_query("DELETE FROM temp WHERE ip='$_SESSION[ip]'");
	}
	$q=mysql_query("SELECT * FROM temp WHERE ip='$_SESSION[ip]'");
	if(mysql_num_rows($q)==0){
		echo"<center><h2>List belanja masih kosong</h2></center>";
	}else{
?>

<table border="0" align="center">
  <tr>
    <td width="120">Nama Lengkap</td>
    <td width="174"><input type="text" name="nama" id="nama" /></td>
  </tr>
  <tr>
    <td>Alamat Lengkap</td>
    <td><textarea name="alamat" id="alamat"></textarea></td>
  </tr>
  <tr>
    <td>No Telp / HP</td>
    <td><input type="text" name="no_telp" id="no_telp" /></td>
  </tr>
  <tr>
    <td>Email</td>
    <td><input type="text" name="email" id="email" /></td>
  </tr>
  <tr>
    <td>Keterangan</td>
    <td><p>
      <textarea name="keterangan" id="keterangan"></textarea>
    </p></td>
  </tr>
</table>

<table border="1" align="center">
  <tr>
    <th>Nama Produk
    <th>Jumlah
    <th>Harga
    <th>Total
    <th>Tool
  </tr>
<?php
	
	$q=mysql_query("SELECT * FROM temp WHERE ip='$_SESSION[ip]'");
	$_SESSION['total_belanja']=0;
	while($r=mysql_fetch_array($q)){

?>
  <tr>
    <td><?php echo $r[nama_produk]?></td>
    <td><?php echo $r[jumlah]?></td>
    <td><?php echo $r[harga]?></td>
    <td><?php $total=$r[jumlah]*$r[harga];echo $total;$_SESSION['total_belanja']+=$total ?></td>
    <td><a href="index.php?p=list-belanja&delete=<?php echo $r[id] ;?>">Hapus</a></td>
  </tr>
<?php 
	}
?>
<tr>
	<td colspan="5">Total belanja : <?php echo $_SESSION['total_belanja']; ?>
<tr>
	<td colspan="5" align="center">
        <input name="confirm" type="submit" value="Konfirmasi" id="confirm">
      <input name="batal" type="submit" value="Batal" id="batal" /></td>
</table>
</form>
<?php

	}
?>
