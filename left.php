<?php
	if($_GET[p]==""){//Beranda
		include "beranda.php";
	}elseif($_GET[p]=="artikel"){//Artikel
		include "artikel.php";
	}elseif($_GET[p]=="produk"){//Produk
		include "produk.php";
	}elseif($_GET[p]=="cara-order"){//Cara Order
		include "caraorder.php";
	}elseif($_GET[p]=="testimoni"){//Formulir Order
		include "testimoni.php";
	}elseif($_GET[p]=="alamat"){//Alamat
		include "alamat.php";
	}elseif($_GET[p]=="list-belanja"){//Alamat
		include "listbelanja.php";
	}elseif($_GET[p]=="tentang-kami"){//Alamat
		include "tentangkami.php";
	}elseif($_GET[p]=="faq"){//Alamat
		include "faq.php";
	}elseif($_GET[p]=="galeri"){//Alamat
		include "galeri.php";
	}elseif($_GET[p]=="hubungi-kami"){//Alamat
		include "hubungikami.php";
	}else{//404 Page not found
		echo"";
	}
?>