<table border="0" width="280">
	<tr><td>
    <div id="title">Layanan Online</div>
    <div id="contentRight"><br><center>
    	<?php
        	$q=mysql_query("SELECT * FROM ym");
			while($r=mysql_fetch_array($q)){
				echo "<a href=ymsgr:sendim?$r[nama] border=0><img src=http://opi.yahoo.com/online?u=$r[nama]&t=2></a>";
			}
		?>
        </center>        
        <center>
        <?php 
			$q=mysql_query("SELECT banner FROM info");
			$r=mysql_fetch_array($q);
			echo $r[0];
		?>
        </center></center>
     </div>
    <div id="title">ARTIKEL TERBARU</div>
    <?php
    	include "rss.php";
	?>
     <div id="title">Developed By</div>
        <tr><td align="center"><img src="images/logo.JPG" width="250">
</table>