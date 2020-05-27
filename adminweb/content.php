<?php
	if($_GET[p]==""){//Beranda
		include "editberanda.php";
	}elseif($_GET[p]=="artikel"){//Artikel
		include "editartikel.php";
	}elseif($_GET[p]=="produk"){//Produk
		include "editproduk.php";
	}elseif($_GET[p]=="cara-order"){//Cara Order
		include "editcaraorder.php";
	}elseif($_GET[p]=="orderan"){//Formulir Order
		include "orderan.php";
	}elseif($_GET[p]=="alamat"){//Alamat
		include "editalamat.php";
	}elseif($_GET[p]=="info"){//Alamat
		include "editinfo.php";
	}elseif($_GET[p]=="testimoni"){//Alamat
		include "edittestimoni.php";
	}elseif($_GET[p]=="faq"){//Alamat
		include "editfaq.php";
	}elseif($_GET[p]=="tentang-kami"){//Alamat
		include "edittentangkami.php";
	}elseif($_GET[p]=="edit-galeri"){//Alamat
		include "editgaleri.php";
	}elseif($_GET[p]=="edit-menu"){//Alamat
		include "editmenu.php";
	}elseif($_GET[p]=="edit-kanan"){//Alamat
		include "editkanan.php";
	}elseif($_GET[p]=="ganti-password"){//Alamat
		include "gantipassword.php";
	}else{//404 Page not found
		echo"Halaman tidak ditemukan !";
	}
?>