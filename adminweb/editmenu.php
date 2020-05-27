<?php
	if($_GET['action']=="delete"){
		$id=mysql_escape_string($_GET['id']);
		mysql_query("DELETE FROM menu WHERE id_menu='$id'");
		$pos=1;
		$q=mysql_query("SELECT * FROM menu ORDER BY posisi");
		while($r=mysql_fetch_array($q)){
			mysql_query("UPDATE menu SET posisi='$pos' WHERE id_menu='$r[id_menu]'");
			$pos++;
		}
	}elseif($_GET['posisi']=="naik"){
		$id=mysql_escape_string($_GET['id']);
		mysql_query("UPDATE menu SET posisi=999 WHERE posisi=$id");
		mysql_query("UPDATE menu SET posisi=$id WHERE posisi=$id-1");
		mysql_query("UPDATE menu SET posisi=$id-1 WHERE posisi=999");
	}elseif($_GET['posisi']=="turun"){
		$id=mysql_escape_string($_GET['id']);
		mysql_query("UPDATE menu SET posisi=999 WHERE posisi=$id");
		mysql_query("UPDATE menu SET posisi=$id WHERE posisi=$id+1");
		mysql_query("UPDATE menu SET posisi=$id+1 WHERE posisi=999");
	}elseif($_POST['tambah']){
		$q=mysql_query("SELECT max(posisi) FROM menu");
		$posisi=mysql_fetch_array($q);
		$posisi=$posisi[0]+1;
		mysql_query("INSERT INTO menu VALUES('','$_POST[nama]','$_POST[link]','$posisi','$_POST[target]')" );
	}elseif($_GET['action']=="edit"){
		$q=mysql_query("SELECT * FROM menu WHERE id_menu='$_GET[id]'");
		$r=mysql_fetch_array($q);
		
	}elseif($_POST['update']){
			mysql_query("UPDATE menu SET nama_menu='$_POST[nama]',link='$_POST[link]' WHERE id_menu='$_POST[id]'");
			echo "<script>
				document.location='index.php?p=edit-menu';
			</script>";
	}
?>

<form name="form1" method="post" action="index.php?p=edit-menu">
  <table border="0" align="center">
    <tr>
      <td>Nama Menu</td>
      <td><label for="nama"></label>
      <input name="nama" type="text" id="nama" value="<?php echo $r[nama_menu]; ?>" size="50"></td>
    </tr>
    <tr>
      <td>Link</td>
      <td><input name="link" type="text" id="link" value="<?php echo $r[link]; ?>" size="50"></td>
    </tr>
    <tr>
      <td>Target</td>
      <td>
      <?php 
	  	if($r['target']==0){
			echo '<input type="radio" name="target" value="0" checked="checked">Window Sama<br>
     				<input type="radio" name="target" value="1">Window Baru</td>';		  
		}elseif($r['target']==1){
			echo '<input type="radio" name="target" value="0" >Window Sama<br>
     				<input type="radio" name="target" value="1" checked="checked">Window Baru</td>';	
		}else{
			echo '<input type="radio" name="target" value="0" checked="checked">Window Sama<br>
     				<input type="radio" name="target" value="1">Window Baru</td>';	
		}
		?>
    </tr>
    <tr>
      <td colspan="2" align="center"><input name="id" type="hidden" id="id" value="<?php echo $r[id_menu]; ?>">        
      <?php 
	  	if($_GET['action']=="edit"){
			echo'<input type="submit" name="update" id="Update" value="Update"></td>';
		}else{
			echo '<input type="submit" name="tambah" id="tambah" value="Tambah"></td>';
		}
	  ?>
    </tr>
  </table>
</form>

<?php
	$q=mysql_query("SELECT * FROM menu ORDER BY posisi");
	echo"<table border=1 align=center><tr><th>Menu<th>Link<th>Posisi<th colspan=2>Aksi";
	$jumlah=mysql_num_rows($q);
	while($r=mysql_fetch_array($q)){
		echo "<tr align=center>
				<td>$r[nama_menu]
				<td>$r[link]";
		if($r['posisi']==1){
			echo"<td><a href=index.php?p=edit-menu&posisi=turun&id=$r[posisi]>[Turun]</a>";
		}elseif($r['posisi']==$jumlah){
			echo"<td><a href=index.php?p=edit-menu&posisi=naik&id=$r[posisi]>[Naik]</a>";
		}else{
			echo"<td><a href=index.php?p=edit-menu&posisi=naik&id=$r[posisi]>[Naik]</a> | <a href=index.php?p=edit-menu&posisi=turun&id=$r[posisi]>[Turun]</a>";
		}
			
				echo"<td><a href=index.php?p=edit-menu&action=edit&id=$r[id_menu]>Edit</a>
				<td><a href=index.php?p=edit-menu&action=delete&id=$r[id_menu]>Hapus</a>";	
	}
	echo"</table>";
?>