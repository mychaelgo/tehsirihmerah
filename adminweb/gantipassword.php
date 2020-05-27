<?php
	if($_POST['submit']){
		if($_POST['password']==""){
			echo "<script>
				alert('Field harus diisi!');
			</script>";
		}else{
			mysql_query("UPDATE login SET password=md5('$_POST[password]')");
			echo "<script>
				alert('Ganti password berhasil');
			</script>";	
		}
	}
?>
<form id="form1" name="form1" method="post" action="">
  <table border="0">
    <tr>
      <td>Password Baru</td>
      <td><label for="password"></label>
      <input type="password" name="password" id="password" /></td>
    </tr>
    <tr>
      <td>&nbsp;</td>
      <td><input type="submit" name="submit" id="submit" value="Submit" /></td>
    </tr>
  </table>
</form>

