<h2>MITRA KAMI</h2><br>
<?php
	$r=mysql_fetch_array(mysql_query("SELECT alamat FROM info"));
	echo $r[0];
?>