<?php
	if($_POST['pratinjau']){
		echo $_POST['isi'];
	}elseif($_POST['simpan']){
		mysql_query("UPDATE info SET banner='$_POST[isi]'");
	}
	$r=mysql_fetch_array(mysql_query("SELECT banner FROM info"));
	
?>
<form method="post" action="">
<table border="1" align="center">
	<tr><td><textarea name="isi" id="txtarea" cols="100" rows="20"><?php echo $r[0];?></textarea>
    <tr><td align="center"><input name="simpan" type="submit" id="simpan" value="Simpan"/><input name="reset" type="reset" id="reset" value="Ulang"/>
</table>
</form>
<hr>
