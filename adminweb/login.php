<?php
	session_start();
	if(!empty($_SESSION['user'])){
		echo"<script>
				document.location='index.php';
			</script>";
		exit();
	}
	
	include "koneksi.php";
	if($_POST['login']){
		$user=mysql_escape_string($_POST['username']);
		$pass=mysql_escape_string($_POST['password']);
		$q=mysql_query("SELECT * FROM login WHERE username='$user' AND password=md5('$pass')");
		if(mysql_num_rows($q)==0){
			echo"<script>
				alert('Username atau Password Salah ! ');
			</script>";	
		}else{
			$_SESSION['user']="admin";
			echo"<script>
				document.location='index.php';
			</script>";
		}
	}	
?>
<form name="form1" method="post" action="">
  <table border="0">
    <tr>
      <td>Username</td>
      <td><label for="username"></label>
      <input name="username" type="text" id="username" value=""></td>
    </tr>
    <tr>
      <td>Password</td>
      <td><input name="password" type="password" id="password" value=""></td>
    </tr>
    <tr>
      <td><input type="submit" name="login" id="login" value="Login"></td>
      <td><a href="forgot.php">Lupa password</a></td>
    </tr>
  </table>
</form>
