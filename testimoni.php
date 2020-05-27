<h2>TESTIMONI</h2><br>
<?php
	$r=mysql_fetch_array(mysql_query("SELECT testimoni FROM info"));
	echo $r[0];
?>