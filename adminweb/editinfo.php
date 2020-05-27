<h2>EDIT INFO</h2>
<?php
	if($_POST['submit']){
		mysql_query("UPDATE info SET info='$_POST[info]'");
	}
	$q=mysql_query("SELECT info FROM info");
	$r=mysql_fetch_array($q);
?>
<form name="form1" method="post" action="">
  <table border="0" align="center">
    <tr>
      <td><textarea name="info" cols="30" id="info"><?php echo $r[0]; ?></textarea>        
 		</td>
    </tr>
    <tr>
      <td><input type="submit" name="submit" id="submit" value="Submit"></td>
    </tr>
  </table>
</form>
