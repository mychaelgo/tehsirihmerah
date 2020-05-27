<h2>CARA ORDER</h2>
<br>
<?php
	$r=mysql_fetch_array(mysql_query("SELECT cara_order FROM info"));
	echo $r[0];
?>