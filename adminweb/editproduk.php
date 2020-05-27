<?php
	include "../crop.php";
	if($_POST['simpan']=="Simpan"){
		mysql_query("UPDATE produk SET nama='$_POST[nama]',isi='$_POST[isi]',harga='$_POST[harga]' WHERE id_produk='$_POST[id]'");
	}elseif($_POST['simpan']=="Tambah"){
				mysql_query("INSERT INTO produk VALUES('','$_POST[nama]','$_POST[isi]','','$_POST[harga]')");
				//upload
				$namafile_tmp = $_FILES['berkas']['tmp_name'];
				$folder="produk/";
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
					$namabaru="../".$folder."TehSirihMerah_produk_".$id.$type;
					$copied = copy($_FILES['berkas']['tmp_name'],$namabaru);
					if (!$copied) {
						echo '<h1>Upload Gagal!!</h1>';
						
					}else{
						$gambar="TehSirihMerah_produk_".$id.$type;
						$image = new SimpleImage();
						$namafile=$folder.$namabaru;
						$image->load($namabaru); // gambar yang diload
						$image->resizeToWidth(100);
						$image->save("../produk/small/TehSirihMerah_produk_".$id.$type); // hasil gambar yang disimpan
						mysql_query("UPDATE produk SET gambar='TehSirihMerah_produk_$id$type' WHERE id_produk='$id'");
					}
	}
	
	if($_GET['action']=="edit"){
		$q_edit=mysql_query("SELECT * FROM produk WHERE id_produk='$_GET[id]'");
		$r_edit=mysql_fetch_array($q_edit);
	?>
		<h2>EDIT PRODUK</h2>
      	<form action="" method="post" enctype="multipart/form-data">
          <table border="0">
            <tr>
              <td>Nama Produk</td>
              <td><input name="nama" type="text" id="nama2" value="<?php echo $r_edit[nama]; ?>" size="50" /></td>
            </tr>
            <tr>
              <td>Harga</td>
              <td><label for="nama">
                <input name="harga" type="text" id="harga" value="<?php echo $r_edit[harga]; ?>" size="50" />
              </label></td>
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
			mysql_query("DELETE FROM produk WHERE id_produk='$id'");
			echo"Data berhasil dihapus";
		}
	?>
    <h2>TAMBAH PRODUK</h2>
      <form action="" method="post" enctype="multipart/form-data">
          <table border="0">
            <tr>
              <td>Nama Produk</td>
              <td><input name="nama" type="text" id="nama" size="50" /></td>
            </tr>
            <tr>
              <td>Harga</td>
              <td><label for="nama">
                <input name="harga" type="text" id="harga" size="50" />
              </label></td>
            </tr>
            <tr>
              <td>Keterangan</td>
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
	$q=mysql_query("SELECT * FROM produk");
	echo "Jumlah Produk : ".mysql_num_rows($q);
?>

<table border="1" align="center">
  <tr>
    <th width="150">Nama Produk</th>
    <th width="150">Gambar</th>
    <th colspan="2">Aksi</th>
  </tr>
  <?php while($r=mysql_fetch_array($q)){?>
  <tr>
    <td><?php echo $r[1];?></td>
    <td><?php echo $r[3];?></td>
    <td width="50" align="center"><a href='index.php?p=produk&action=edit&id=<?php echo $r[0];?>'>Edit</a></td>
    <td width="50" align="center"><a href='index.php?p=produk&action=delete&id=<?php echo $r[0];?>'>Hapus</a></td>
   <?php }?>
  </tr>
</table>
