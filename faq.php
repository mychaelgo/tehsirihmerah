<h2>FAQ</h2><br>
<?php
	$r=mysql_fetch_array(mysql_query("SELECT faq FROM info"));
	echo $r[0];
?>