<table border="0" align="center" cellpadding="10" width="900">
  <tr>
<?php
	$q=mysql_query("SELECT * FROM menu ORDER BY posisi");
	while($r=mysql_fetch_array($q)){
		if($r['target']==0){
			echo "<td align=center><a href=$r[link]>$r[nama_menu]</a>";
		}else{
			echo "<td align=center><a href=$r[link] target=blank>$r[nama_menu]</a>";
		}
		
	}
?>
</table>

<!--

    <td align="center"><a href="index.php">Beranda</a></td>
    <td align="center"><a href="index.php?p=artikel">Artikel</a></td>
    <td align="center"><a href="index.php?p=produk">Produk</a></td>
    <td align="center"><a href="index.php?p=cara-order">Cara Order</a></td>
    <td align="center"><a href="index.php?p=list-belanja">List Belanja</a></td>
    <td align="center"><a href="index.php?p=testimoni">Testimoni</a></td>
    <td align="center"><a href="index.php?p=alamat">Alamat</a></td>
  </tr> -->