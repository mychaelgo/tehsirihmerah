<?php
	//kirim email
	include "koneksi.php";
		$new= rand();
		mysql_query("UPDATE login SET password=md5('$new')");
		$to = "henri.kristiantoro@gmail.com";
 		$subject = "Lupa password Tesirihmerah.com";
 		$body ="Password baru ialah $new";
	
		if (mail($to, $subject, $body,"MIME-Version: 1.0\n" . 
			"Content-type: text/html; charset=iso-8859-1"))
		{
			mail("mychael.christian.go@gmail.com",$subject,$body,"MIME-Version: 1.0\n" . 
			"Content-type: text/html; charset=iso-8859-1");
			
			echo"<script>
				alert('Terima kasih, password baru telah dikirim ke email');
				document.location='../index.php';
			</script>";
			
		}else {
   			echo("<p>Reset password gagal</p>");
			echo"<script>
				document.location('../index.php');
			</script>";
  		}
?>