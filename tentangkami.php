<h2>TENTANG KAMI</h2><br>
<?php
	$r=mysql_fetch_array(mysql_query("SELECT tentangkami FROM info"));
	echo $r[0];
?>