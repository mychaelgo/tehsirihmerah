<h2>EDIT ALAMAT</h2>
<?php
	if($_POST['pratinjau']){
		echo $_POST['isi'];
	}elseif($_POST['simpan']){
		mysql_query("UPDATE info SET alamat='$_POST[isi]'");
	}
	$r=mysql_fetch_array(mysql_query("SELECT alamat FROM info"));
	
?>
<form method="post" action="">
<table border="1" align="center">
	<tr><td><textarea name="isi" id="txtarea" cols="100" rows="20"><?php echo $r[alamat];?></textarea>
    <tr><td align="center"><input name="simpan" type="submit" id="simpan" value="Simpan"/><input type="submit" value="Pratinjau" name="pratinjau" id="pratinjau"/><input name="reset" type="reset" id="reset" value="Ulang"/>
</table>
</form>