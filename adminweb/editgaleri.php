<h2>EDIT GALERI</h2>
<?php
	include "../crop.php";
	if($_POST['upload']){
	//upload
				mysql_query("INSERT INTO galeri VALUES ('','','$_POST[ket]')");
				$namafile_tmp = $_FILES['berkas']['tmp_name'];
				$folder="galeri/";
				$a=$_FILES['berkas']['name'];
				$b=str_replace(" ", "-", $a) ; 
				$newname="../".$folder.$b;
				if(ereg(".jpg",$_FILES[berkas][name])){
					$type=".jpg";
				}elseif(ereg(".gif",$_FILES[berkas][name])){
					$type=".gif";
				}elseif(ereg(".png",$_FILES[berkas][name])){
					$type=".png";
				}
				
					$id=mysql_insert_id();
					$namabaru="../".$folder."galeri_".$id.$type;
					$copied = copy($_FILES['berkas']['tmp_name'],$namabaru);
					if (!$copied) {
						echo '<h1>Upload Gagal!!</h1>';
						
					}else{
						$gambar="galeri_".$id.$type;
						$image = new SimpleImage();
						$namafile=$folder.$namabaru;
						$image->load($namabaru); // gambar yang diload
						$image->resizeToWidth(100);
						$image->save("../galeri/small/galeri_".$id.$type); // hasil gambar yang disimpan
						mysql_query("UPDATE galeri SET gambar='$gambar' WHERE id_gambar='$id'");
					}
	}else if($_GET['delete']){
		$id=mysql_escape_string($_GET['delete']);
		$q=mysql_query("SELECT gambar FROM galeri WHERE id_gambar='$id'");
		$r=mysql_fetch_array($q);
		unlink("../galeri/$r[gambar]");
		unlink("../galeri/small/$r[gambar]");
		mysql_query("DELETE FROM galeri WHERE id_gambar='$id'");
	}
?>
<form name="form1" method="post" action="" enctype="multipart/form-data">
  <table border="0">
    <tr>
      <td>File Gambar</td>
      <td><input type="file" name="berkas" id="berkas" /></td>
    </tr>
    <tr>
      <td>Keterangan</td>
      <td><label for="ket"></label>
      <input type="text" name="ket" id="ket"></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="upload" id="upload" value="Unggah"></td>
    </tr>
  </table>

</form>


<?php
	$q=mysql_query("SELECT * FROM galeri");
	$i=0;
	echo"<table align=center>";
	while($r=mysql_fetch_array($q)){
		if($i%6 ==0){
			echo "<tr>";
		}
		echo"<td><img src=../galeri/small/$r[gambar]>
		<br><center><a href=index.php?p=edit-galeri&delete=$r[id_gambar]>Hapus</a></center>";
		$i++;
	}
	echo"</table>";
?>