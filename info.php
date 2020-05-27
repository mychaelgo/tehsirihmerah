<?php
	$r=mysql_fetch_array(mysql_query("SELECT info FROM info"));
	echo "<marquee>$r[0]</marquee>";
?>
