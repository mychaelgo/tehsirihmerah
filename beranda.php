<h2>BERANDA</h2><br>
<?php
	$r=mysql_fetch_array(mysql_query("SELECT beranda FROM info"));
	echo $r[0];
?>