<h2>ARTIKEL</h2>
<?php
	if($_GET['id']==""){
		$q=mysql_query("SELECT * FROM artikel ORDER BY id_artikel DESC");
		while($r=mysql_fetch_array($q)){		
				echo "<div id=berita>
						<a href=index.php?p=artikel&id=$r[id_artikel]><h2>$r[judul]</h2></a>
						<a href='artikel/$r[gambar]' target=blank><img src='artikel/small/$r[gambar]' class=image /></a>
						$r[isi]	
					</div><br>&nbsp;<hr width=620>";
		}
	}else{
		$id=mysql_escape_string($_GET['id']);
		$q=mysql_query("SELECT * FROM artikel WHERE id_artikel='$id'");
		$r=mysql_fetch_array($q);
		echo "<div id=berita>
						<h2>$r[judul]</h2>
						<a href='artikel/$r[gambar]' target=blank><img src='artikel/small/$r[gambar]' class=image /></a>
						$r[isi]	
				</div><br>";
		include "share.php";
	}
?>