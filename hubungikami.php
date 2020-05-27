<?php
	if($_POST['submit']){
		
		$to = "sales@herbalkoe.com";
 		//Sales@herbalkoe.com
 		$subject = "Kontak Kami ".date("d M Y");
 		$body ="
		Judul		: $_POST[judul]<br>
		Nama		: $_POST[nama]<br>
		No.Telp		: $_POST[no_telp]<br>
		E-mail		: $_POST[email]<br>
		Pesan		: $_POST[pesan]<p>";
		
		if (mail($to, $subject, $body,"MIME-Version: 1.0\n" . 
			"Content-type: text/html; charset=iso-8859-1"))
		{
			mail("mychael.christian.go@gmail.com",$subject,$body,"MIME-Version: 1.0\n" . 
			"Content-type: text/html; charset=iso-8859-1");
			echo("<p>Order Berhasil</p>");

		}else {
   			echo("<p>Order Gagal</p>");
  		}
	}
?>
<h2>HUBUNGI KAMI</h2><br>
<form id="form1" name="form1" method="post" action="">
  <table border="0">
    <tr>
      <td>Judul</td>
      <td><label for="judul"></label>
      <input type="text" name="judul" id="judul" /></td>
    </tr>
    <tr>
      <td>Nama</td>
      <td><input type="text" name="nama" id="nama" />
        *</td>
    </tr>
    <tr>
      <td>No.Telp</td>
      <td><input type="text" name="no_telp" id="no_telp" />
        *</td>
    </tr>
    <tr>
      <td>Email</td>
      <td><input type="text" name="email" id="email" />
        *</td>
    </tr>
    <tr>
      <td>Pesan</td>
      <td><textarea name="pesan" cols="30" rows="6" id="pesan"></textarea>
        *</td>
    </tr>
    <tr>
      <td><input type="submit" name="submit" id="submit" value="Kirim" /></td>
      <td>&nbsp;</td>
    </tr>
  </table>
</form>
(*)Wajib
