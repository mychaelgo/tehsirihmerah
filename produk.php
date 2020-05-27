<h2>Produk</h2>
<form action="" method="post">
<table width="630">
<tr><td align="right"><input type="submit" name="konfirmasi_belanja" value="Konfirmasi belanja"/>
<a href=list-belanja.html>Cek belanjaan di sini</a>
</table>
<?php
	
	$q=mysql_query("SELECT * FROM produk ORDER BY id_produk DESC");
	$_SESSION['count']=1;
	while($r=mysql_fetch_array($q)){
		echo"<table>
			<tr>
				<td valign=top><a href='produk/$r[gambar]' target=blank><img src='produk/small/$r[gambar]' /></a>
				<td><b>Nama : $r[nama]</b><br>$r[isi]				
			</table>";
			$q_temp=mysql_query("SELECT * FROM temp WHERE nama_produk='$r[nama]' AND ip='$_SESSION[ip]'");
			if(mysql_num_rows($q_temp)==0){
				echo"
						Jumlah pesan : 
						<input type=text name=jumlah[] maxlength=2 size=1>
						
						<input type=hidden name=nama_produk[] value='$r[nama]'>
						<input type=hidden name=harga[] value='$r[harga]'>
					";
					$_SESSION['count']++;
			}else{
				echo "Anda telah memesan barang ini sebelumnya.";
			}
			echo"<hr width=620>";
		$i++;
		
	}
?>
<table width="630">
<tr><td align="right"><input type="submit" name="konfirmasi_belanja" value="Konfirmasi belanja"/>
<a href=list-belanja.html>Cek belanjaan di sini</a>
</table>
</form>