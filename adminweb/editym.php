<h3>YM</h3>
<?php
	if($_POST['tambah']){
		mysql_query("INSERT INTO ym VALUES('$_POST[nama]')");
	}else if($_GET['delete']){
		mysql_query("DELETE FROM ym WHERE nama='$_GET[delete]'");
	}
?><form name="form1" method="post" action="">
<table border="0">
  <tr>
    <td height="25">Nama YM</td>
    <td><label for="nama"></label>
      <input name="nama" type="text" id="nama" value="" size="45"></td>
  </tr>
  <tr>
    <td>&nbsp;</td>
    <td><input type="submit" name="tambah" id="tambah" value="Tambah"></td>
  </tr>
</table>
 </form>
<?php
	$q=mysql_query("SELECT * FROM ym");
	echo "<table border=1 align=center><tr><th>Nama<th>Aksi";
	while($r=mysql_fetch_array($q)){
		echo"<tr><td>$r[nama]<td><a href=index.php?p=edit-ym&delete=$r[nama]>Hapus</a>";	
	}
	echo"</table>";
?>
<hr>
