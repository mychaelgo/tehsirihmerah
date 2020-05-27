<?php
	include "../crop.php";
	if($_POST['simpan']=="Simpan"){
		mysql_query("UPDATE artikel SET judul='$_POST[judul]',isi='$_POST[isi]' WHERE id_artikel='$_POST[id]'");
	}elseif($_POST['simpan']=="Tambah"){
				mysql_query("INSERT INTO artikel VALUES('','$_POST[judul]','$_POST[isi]','','')");
				//upload
				$namafile_tmp = $_FILES['berkas']['tmp_name'];
				$folder="artikel/";
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
					$namabaru="../".$folder."TehSirihMerah_artikel_".$id.$type;
					$copied = copy($_FILES['berkas']['tmp_name'],$namabaru);
					if (!$copied) {
						echo '<h1>Upload Gagal!!</h1>';
						
					}else{
						$gambar="TehSirihMerah_artikel_".$id.$type;
						$image = new SimpleImage();
						$namafile=$folder.$namabaru;
						$image->load($namabaru); // gambar yang diload
						$image->resizeToWidth(100);
						$image->save("../artikel/small/TehSirihMerah_artikel_".$id.$type); // hasil gambar yang disimpan
						mysql_query("UPDATE artikel SET gambar='TehSirihMerah_artikel_$id$type' WHERE id_artikel='$id'");
					}
	}
	
	if($_GET['action']=="edit"){
		$q_edit=mysql_query("SELECT * FROM artikel WHERE id_artikel='$_GET[id]'");
		$r_edit=mysql_fetch_array($q_edit);
	?>
		<h2>EDIT ARTIKEL</h2>
      	<form action="" method="post" enctype="multipart/form-data">
          <table border="0">
            <tr>
              <td>Nama Produk</td>
              <td><label for="judul"></label>
              <input name="judul" type="text" id="judul" value="<?php echo $r_edit[judul]; ?>" size="50" /></td>
            </tr>
            <tr>
              <td>Keterangan</td>
              <td><textarea name="isi" id="txtarea" cols="100" rows="10"><?php echo $r_edit[isi]; ?></textarea></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="simpan" id="simpan" value="Simpan" />
              <input type="reset" name="ulang" id="ulang" value="Ulang" />
              <input name="id" type="hidden" id="id" value="<?php echo $_GET[id]; ?>" /></td>
            </tr>
          </table>
        </form>
	<?php
	}else{
		if($_GET['action']=="delete"){
			$id=mysql_escape_string($_GET['id']);
			mysql_query("DELETE FROM artikel WHERE id_artikel='$id'");
			echo"Data berhasil dihapus";
		}
	?>
    <h2>TAMBAH ARTIKEL</h2>
      <form action="" method="post" enctype="multipart/form-data">
          <table border="0">
            <tr>
              <td>Judul Artikel</td>
              <td><label for="judul"></label>
              <input name="judul" type="text" id="judul" size="50" /></td>
            </tr>
            <tr>
              <td>Isi</td>
              <td><textarea name="isi" id="txtarea" cols="100" rows="10"></textarea></td>
            </tr>
            <tr>
              <td>Gambar</td>
              <td><label for="berkas"></label>
              <input type="file" name="berkas" id="berkas" /></td>
            </tr>
            <tr>
              <td>&nbsp;</td>
              <td><input type="submit" name="simpan" id="simpan" value="Tambah" />
              <input type="reset" name="ulang" id="ulang" value="Ulang" />
              <input type="hidden" name="id" id="id" /></td>
            </tr>
          </table>
</form>
	<?php
	}
?>

<p>
  <?php
	$q=mysql_query("SELECT * FROM artikel");
	echo "Jumlah Artikel : ".mysql_num_rows($q);
?>

<table border="1" align="center">
  <tr>
    <th width="150">Judul Artikel</th>
    <th width="150">Gambar</th>
    <th colspan="2">Aksi</th>
  </tr>
  <?php while($r=mysql_fetch_array($q)){?>
  <tr>
    <td><?php echo $r['judul'];?></td>
    <td><?php echo $r['gambar'];?></td>
    <td width="50" align="center"><a href='index.php?p=artikel&action=edit&id=<?php echo $r[0];?>'>Edit</a></td>
    <td width="50" align="center"><a href='index.php?p=artikel&action=delete&id=<?php echo $r[0];?>'>Hapus</a></td>
   <?php }?>
  </tr>
</table>
