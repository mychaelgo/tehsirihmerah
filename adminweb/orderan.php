<h2>Orderan</h2>
<?php
	if($_GET['id']){
		$id=mysql_escape_string($_GET['id']);
		$q=mysql_query("SELECT * FROM $db.order WHERE id_order='$id'");
		$r=mysql_fetch_array($q);
		echo"	Nama 	: 	$r[nama]<br>
				Alamat	:	$r[alamat]<br>
				No Telp	:	$r[no_telp]<br>
				E-mail	:	$r[email]<br>";
		$q=mysql_query("SELECT * FROM detail_order WHERE id_order='$id'");
		echo"<table border=1 align=center><tr><th>Nama Produk<th>Jumlah<th>Harga<th>Total";
		$total=0;
		while($r=mysql_fetch_array($q)){
			$jumlah=$r[jumlah]*$r[harga];
			echo"<tr>
					<td>$r[nama]
					<td>$r[jumlah]
					<td>$r[harga]
					<td>$jumlah";
				$total = $total + ($r[jumlah]*$r[harga]);
		}
		echo"<tr><td colspan=4>Total Seluruhnya : $total";
		echo"</table><hr width=900>";
	}
	$q=mysql_query("SELECT * FROM $db.order ORDER BY id_order DESC ");
	echo"<table border=1 align=center>";
	echo"<tr><th>Nama<th>Alamat<th>E-mail<th>No. Telp<th>Lihat orderan";
	while($r=mysql_fetch_array($q)){
		echo"<tr>
		<td>$r[nama]
		<td>$r[alamat]
		<td>$r[email]
		<td>$r[no_telp]
		<td><a href=index.php?p=orderan&id=$r[id_order]>Lihat Order</a>";		
	}
	echo"</table>";
?>