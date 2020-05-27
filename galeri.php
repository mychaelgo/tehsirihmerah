<h2>GALERI</h2>
<?php
	if($_GET['id']){
		$id=mysql_escape_string($_GET['id']);
		$q=mysql_query("SELECT * FROM galeri WHERE id_gambar='$id'");
		$r=mysql_fetch_array($q);
		echo"<center><img src=galeri/$r[gambar] width=600></center><br>$r[ket]";
	}
	$q=mysql_query("SELECT * FROM galeri");
	$i=0;
	echo"<table align=center>";
	while($r=mysql_fetch_array($q)){
		if($i%6 ==0){
			echo "<tr>";
		}

		echo"<td><a href=galeri-$r[id_gambar].html><img src=galeri/small/$r[gambar]></a>";
		$i++;
	}
	echo"</table>";
?>