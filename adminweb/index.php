<?php
	session_start();
	if(empty($_SESSION['user'])){
		echo"<script>
				document.location='login.php';
			</script>";
	}
	include "koneksi.php";
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title></title>
<link rel="stylesheet" href="style.css" type="text/css" />
<script type="text/javascript" src="../nicEdit.js"></script>
<script type="text/javascript">
	bkLib.onDomLoaded(function() { nicEditors.allTextAreas() });
</script>
</script>
</head>

<body>
	<div id="wrapper">
    	<div id="header"></div>
        <div id="menu"><?php include "menu.php";?></div>
        <div id="clear"></div>
        <div id="content"><?php include "content.php";?></div>
        <div id="clear"></div>
    </div>
    <div id="clear"></div>
    <div id="footer"><?php include "../footer.php";?></div>
    
</body>
</html>