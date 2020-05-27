-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 17, 2012 at 07:47 AM
-- Server version: 5.0.92
-- PHP Version: 5.2.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tehsiri1_tehsirihmerah`
--

-- --------------------------------------------------------

--
-- Table structure for table `artikel`
--

CREATE TABLE IF NOT EXISTS `artikel` (
  `id_artikel` int(11) NOT NULL auto_increment,
  `judul` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` text NOT NULL,
  `tanggal` varchar(50) NOT NULL,
  PRIMARY KEY  (`id_artikel`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `artikel`
--

INSERT INTO `artikel` (`id_artikel`, `judul`, `isi`, `gambar`, `tanggal`) VALUES
(6, 'FAQ', '<div>Berikut ini adalah kumpulan pertanyaan yang sering diajukan oleh pelanggan TehSirihMerah.com.</div><div><br></div><div><ul><li>Bagaimana cara mendapatkan teh dan ekstrak sirih merah ini, untuk yang berada di luar Jakarta?</li></ul></div><div>Jawab :</div><div>Kami mengirim pesanan Anda melalui berbagai ekspedisi kepercayaan kami atau Anda bisa memberikan alternatifnya.</div><div><br></div><div><ul><li>Bagaimana aturan minum teh dan ekstraknya ini?</li></ul></div><div>Jawab :</div><div>Untuk pengobatan berbagai &nbsp;keluhan minum teh sirih merah 2x sehari setiap pagi dan sore. Untuk ekstraknya 2-3 kali sehari selama 2 minggu.</div><div><br></div><div><ul><li>Apakah ada herbal lainnya selain teh dan ekstrak sirih merah ini?</li></ul></div><div>Jawab :</div><div>Kami menyediakan beberapa herbal lainnya seperti Ekstrak Daun Jati Belanda, Uratin untuk Asam Urat, Jahe Merah Instan berbagai rasa, silahkan klik halaman Produk.</div>', 'TehSirihMerah_artikel_6.png', ''),
(7, 'Dunia Herbal', '<div style="text-align: justify; ">Kalau kita bicara pengobatan herbal maka pikiran kita pasti melayang ke obat tradisional, jamu gendong, warung yang menyediakan jamu kemasan untuk obat sakit kepala atau masuk angin. Tidak salah memang sebab herbal memang masuk kategori obat tradisional. Di negara Asia lainnya terutama Cina, Korea dan India untuk penduduk pedesaan, obat herbal masuk dalam pilihan pertama untuk pengobatan, dinegara maju pun saat ini kecenderungan beralih kepengobatan tradisional terutama herbal menunjukan gejala peningkatan yang sangat signifikan.</div><div style="text-align: justify; "><br></div><div style="text-align: justify; ">Dari hasil Susenas tahun 2007 menunjukan di Indonesia sendiri keluhan sakit yang diderita penduduk Indonesia sebesar 28.15% dan dari jumlah tersebut ternyata 65.01% nya memilih pengobatan sendiri menggunakan obat dan 38.30% lainnya memilih menggunakan obat tradisional, jadi kalau penduduk Indonesia diasumsikan sebanyak 220 juta jiwa maka yang memilih menggunakan obat tradisional sebanyak kurang lebih 23,7 juta jiwa, suatu jumlah yang sangat besar.</div><div style="text-align: justify; "><br></div><div style="text-align: justify; ">Pengobatan tradisional sendiri menurut Undang-undang No 36/2009 tentang Kesehatan melingkupi bahan atau ramuan berupa bahan tumbuhan, bahan hewan, bahan mineral, sediaan sarian [galenik] atau campuran dari bahan-bahan tersebut yang secara turun temurun telah digunakan untuk pengobatan. Sesuai dengan pasal 100 ayat (1) dan (2), sumber obat tradisional yang sudah terbukti berkhasiat dan aman digunakan akan tetap dijaga kelestariannya dan dijamin Pemerintah untuk pengembangan serta pemeliharaan bahan bakunya. Indonesia sendiri yang terletak didaerah tropis memiliki keunikan dan kekayaan hayati yang sangat luar biasa, tercatat tidak kurang dari 30.000 jenis tanaman obat yang tumbuh di Indonesia walaupun yang sudah tercatat sebagai produk Fitofarmaka [bisa diresepkan] baru ada 5 produk dan produk obat herbal terstandar baru ada 28 produk. Terlihat potensi yang masih belum digali masih sangat besar dalam pengembangan obat herbal terutama yang merupakan produk herbal asli Indonesia. Tahun 2007 telah dicanangkan oleh pemerintah bahwa Jamu adalah Brand Indonesia, walau pada kenyataannya masih dianggap strata paling bawah dalam pengobatan karena belum teruji secara ilmiah.</div><div style="text-align: justify; "><br></div><div style="text-align: justify; ">Dunia Kedokteran Indonesia sendiri secara perlahan mulai membuka diri menerima herbal sabagai pilihan untuk pengobatan, bukan sekedar sebagai pengobatan alternatif saja, ini terbukti dengan berdirinya beberapa organisasi seperti Badan Kajian Kedokteran Tradisional dan Komplementer Ikatan Dokter Indonesia pada Muktamar IDI XXVII tahun 2009, Persatuan Dokter Herbal Medik Indonesia [PDHMI], Persatuan Dokter Pengembangan Kesehatan Timur [PDPKT] dan beberapa organisasi sejenis lainnya. Ini semua menggambarkan dunia kedokteran walau masih belum terbuka lebar tetapi para pelakunya, yaitu para dokter mulai melihat potensi yang besar dan ternyata bisa dikembangkan dalam pengobatan berbasis obat herbal, tidak hanya untuk menangani penyakit yang ringan saja tetapi juga untuk mengatasi penyakit yang berat.</div><div style="text-align: justify; "><br></div><div style="text-align: justify; ">Ketergantungan masyarakat terhadap obat konvensional kedokteran diharapkan bisa secara pasti diganti dengan masuknya obat herbal, saat ini ternyata 95% bahan baku obat konvensional masih di import, berapa banyak devisa yang bisa dihemat bila peralihan ini berjalan mulus. Memasuki tahun 2010, Badan Litbang Depkes mempelopori suatu usaha yang sangat terpuji dan patut didukung penuh yaitu dengan membuat model â€œRumah Sehatâ€ atau â€œKlinik Jamuâ€, model ini akan menerapkan penggunaan jamu sebagai obat yang diberikan dokter untuk pasiennya, suatu terobosan yang didukung oleh kebijakan pemerintah dan akan diuji coba didaerah Jawa Tengah pada awal tahun 2010. Dipilihnya Jawa Tengah mungkin juga dengan pertimbangan saat ini banyak perusahaan Jamu dalam skala kecil sampai besar yang berlokasi di Jawa Tengah serta kebiasaan orang jawa meminum jamu sejak dulu.</div><div style="text-align: justify; "><br></div><div style="text-align: justify; ">Bekerjasama dengan GP Jamu [Gabungan Pengusaha Jamu] sebagai penyedia kebutuhan obat herbal, Rumah Sehat ini akan dipimpin oleh Dokter sebagai penanggung jawab dan yang menggembirakan ternyata sudah cukup banyak para dokter yang berminat dan terdaftar untuk mempelajari serta mendalami pengobatan herbal. Memang masih memerlukan banyak persiapan, baik secara mental dari para dokter yang memberikan obat serta merubah persepsi pasien bahwa pengobatan herbal atau â€œminum jamuâ€ itu ketinggalan jaman, kita harus bisa menerima kenyataan bahwa jaman sudah berubah, mencontoh Cina yang dengan berani memberikan pilihan kepada pasien untuk menggunakan pengobatan dengan obat konvensional atau tradisional. Saatnya juga bagi perusahaan jamu yang peduli dengan khasiat serta mutu untuk mulai menerapka standar yang berlaku seperti GMP, SNI, CPOTB sampai HACCP agar keyakinan masyarakat atas mutu produk yang dihasilkan bisa diperoleh.</div><div style="text-align: justify; "><br></div><div style="text-align: justify; ">Dukungan dari semua pihak, baik para pelaku petani yang diharapkan memberikan hasil olahan tanaman herbal dengan kualitas tinggi, keterlibatan dunia perguruan tingga dan swasta untuk melakukan uji coba khasiat obat herbal, kemudahan peraturan dan dukungan penuh pemerintah dalam hal ini Departemen Kesehatan dan BPOM akan menjadikan Indonesia menjadi salah satu Negara terkemuka yang menghasilkan Obat Herbal bermutu tinggi dan menjadikan Pengobatan Tradisional terutama Herbal bukanlah sekedar Pengobatan Alternative belaka.</div><div style="text-align: justify; "><br></div><div style="text-align: justify; ">Salam dari pecinta Tanaman Obat Indonesia</div><div style="text-align: justify; "><br></div><div style="text-align: justify; ">Sumber :&nbsp;<a href="http://tanamanherbal.wordpress.com/" title="" target="_blank">Informasi Herbal</a></div>', 'TehSirihMerah_artikel_7.jpg', ''),
(8, 'Liputan Majalah Agrofarm utk TehSirihMerah.com', '<div><b>Liputan Majalah Agrofarm</b></div><div><b><br></b></div><div><b>Teh Sirih Merah</b></div><div><b>Segar &amp; Berkhasiat</b></div><div><br></div><div>SIRIH MERAH DIKENAL ORANG KARENA KEINDAHAN DAUNNYA. MENYERUPAI BENTUK HATI DAN BERWARNA MERAH KEPERAKAN JIKA TERKENA CAHAYA. TAPI TERNYATA TIDAK HANYA ITU. TANAMAN YANG TUMBUH MERAMBAT INI TELAH LAMA DIKETAHUI MEMILIKIBANYAK KHASIAT UNTUK PENGOBATAN. PENYAJIANNYA SEDERHANA. MULAI DARI DIREBUS HINGGA DIJADIKAN EKSTRAK. DAN YANG TERBARU ADA DALAM BENTUK KEMASAN TEH CELUP.</div><div><br></div><div>Adalah Henri Kristiantoro yang melakukan itu.CEO teh sirih merah ini berbagi cerita mengenai produk herbal ini. Ditemui Argofarm di kediamannya didaerah Meruya Selatan, Jakarta Barat, Lelaki ini bercerita banyak tentang produknya itu.</div><div>Menurutnya, semua itu berawal dari kesenangan ibunya terhadap tanaman sirih merah yang ditahun 2009 booming sebagai tanaman hias.Henri pun mulai mencari informasi ke herbalis di Yogyakarta mengenai khasiat tanaman ini. â€œkata mereka (Herbalis), iya, tanaman sirih merah ini bagus. Mereka juga sedang melakukan riset untuk pembuatan teh dan ekstrak herbalnya. Kemudian saya perbanyak, daunnya saya budidayakan dan saya hubungu mereka. Mereka ambil lalu dibuatlah teh sirih merah ini,â€ ucap dia.</div><div>Lokasi perkebunan sirih merah berada di Bntul, Yogyakarta, dengan luas lahan 200meter2. Pasca erupsi gunung merapi, abu vulkanik menutupi seluruh lahan perkebunan, sehingga tanaman herbal ini tidak dapat diolah. Namun saat ini sedang dibudidayakan lagi. Daun sirih merah yang diolah adalah daun yang memiliki kelebaran sekitar 8-12 cm, berusia 6 bulan setelah penanaman.</div><div>Teh sirih merah dikemas dalam bentuk teh sirih merah seperti teh celup biasa. Untuk menghilangkan pahitnya, maka teh sirih merah dicampur dengan beberapa tanaman herbal lainnya seperti daun teh, curcuma xanthorrhiza rhizome (temulawak), Centella herba (pegagang), Zingiberis Rhizome (jahe), Talinun sp.,dan daun pappermint. â€œSirih merah ini kan pahit. Kalau direbus saja, itu rasanya pahit sekali, saya pernah coba,â€aku henri.</div><div>Khasiat</div><div>Khasiat sirih merah sudah bukan rahasia lagi. Henri pun sudah merasakannya sendiri. Bapak satu anak ini sering mengalami maag akibat tingginya asam lambung. Setelah meminum air rebusan daun sirih merah, ia merasa lebih baik. Tidak hanya air rebusannya, Henri juga mengkonsumsi ekstrak sirih merah untuk pengobatannya. Hasil endoskopi yang dilakukannya setelah meminum ekstrak sirih merah, menunjukkan perkembangan yang jauh lebih baik dibandingkan sebelum meminum ekstrak tanaman herbal ini. Kini penyakit maag yang dideritanya sudah jarang kambuh.</div><div>â€œBahkan ada konsumen saya, dia juga minum teh sirih merah untuk pengganti teh biasa. Kembung yang dideritanya perlahan hilang setelah rutin meminumnya setiap pagi,â€tutur Henri.</div><div>Setelah mengatasi maag dan perut kembung, sirih merah terbukti menurunkan kadar gula dalam daranpada penderita diabetes. Khasiatnya dirasakan dalam kurun waktu 1-2 minggu setelah mengkonsumsi ekstrak sirih merah secara rutin. Menurut Henri, khasiat obat herbal akan terasa setelah dikonsumsi sekitar 1-2 minggu, â€œKalau minumnya hanya sehari atau dua hari, belum terasa khasiatnya,â€ lanjut dia.</div><div>Teh ini juga berkhasiat untuk menghilangkan rasa nyeri dan pegal pada badan. Reaksinya dapat dirasakan keesokan hari setelah meminumnya. Kelebihan sirih merah adalah kandungan antiseptik, antikanker, antioksidan, serta antidiabetiknya yang tinggi berdasarkan hasil kromotogram. Kandungan antiseptiknya juga dapat mengobati radang usus.</div><div>Salah satu konsumen Henri di Bandung mengaku awalnya meminum ekstrak sirih merah untuk mengobali keputihan. Dia sudah mencoba berbagai obat herbal lainnya tapi tidak berhasil. Setelah meminum sirih ini, tidak hanya keputihan yang hilang, tetapi juga kadar kolesterolnya juga turun.</div><div>Teh sirih merah aman dikonsumsi untuk siapa saja, mulai dari anak-anak hingga dewasa. Henri mengatakan, anaknya pun juga meminum teh herbal ini dan tidak ada efek samping yang dirasakan hingga kini.</div><div><br></div><div><b>Pemakaian dan Penyajian</b></div><div>Untuk pengobatan, konsumsi maksimal ekstrak sirih merah sebanyak 3x sehari masing-masing 2 kapsul, normalnya 2x sehari Sedangkan untuk pencegahan dan menjada daya tahan tubuh, tehsirih merah atau 2 kapsul ekstraknya dapat dikonsumsi per hari.</div><div>Teh sirih merah dapatdisajilan panas maupun dingin. Kalau tidak menderita diabetes boleh ditambahkan madu atau gula seperti penyajian teh biasa.</div><div><br></div><div><b>Bisnis Herbal</b></div><div>Menurut Henri, bisnis herbal perkembangannya sangat bagus dan prospektif. Itu karena masyarakat mulai sadar bahwa obat-obatan kimia sebenarnya berbahaya untuk tubuh. Obat kimia hanya menyembuhkan sesaat dan merusak organ tubuh lainnya, seperti hati dan ginjal karena langsung berasal dari bahan kimia. Sedangkan obat herbal yang berasal dari bahan alami mengatasi langsung ke sumber rasa sakit, meskipun reaksinya berlangsung agak lama.</div><div>Efek sambing obat kimia lebuh besar dibandingkan obat herbal. Namun bukan berarti obat herbal tidak memiliki efek samping. Pengolahan obat herbal juga dapat dapat menimbulkan efek samping, tapi lebih kecil dan masih bisa dinetralisir oleh tubuh.</div><div>â€œKenapa saya bilang masih ada efek sampingnya. Karena herbal ini kan diolah dulu. Ada bahan kimia seperti kapsulnya. Itu yang menimbulkan efek samping. Namun pada dasarnya hanya sekian 0% saja,â€ papar Henri.</div><div>Henri mungungkapkan, bahwa produsen sirih merah tidak hanya mengambil tanaman ini dari kebun orang tuanya karena disana juga sudah banyak petaninya. Produsen membuka peluang pada masyarakat untuk membudidayakan dengan persyaratan yang telah ditentukan. â€œKalau yang di kebun ibu saya itu kan tanaman organic menggunakan pupuk kandang, dan tidak disemprot pestisida. Jadi produsen juga n=mensyaratkan seperti itu,â€ jelasnya.</div><div>Harga per unit untuk teh sirih merah sebesar Rp. 55.000,- dan untuk eksraknya Rp. 135.000,-. Karena penjualannya yang melalui media online, Henri mendistribusikan produk herbal ini ke beberapa agen di luar pulau Jawa seperti di kota Medan, Palembang, dan Bontang. Selain agen juga terdapat Reseller yang mem-back up Agen.</div><div>Henri Pun menekankan perlu adanya kedisiplinan menjada pola makan dan olah raga.Seperti penderita diabetes, harus disiplin mengurangi asupan gula dan karbohidrat tinggi dan juga diimbangi dengan olah raga. Menurutnya, sumber penyakit ada pada makanan. â€œMakanan membuat kita sakit karena konsumsinya berlebihan. Makanan Berasal dari alam, pasti obatnya dari alam. Herbal ini bagus karena berasal dari alam juga,â€ pungkasnya.</div><div><i>Rizki rahmadani.</i></div><div><i><br></i></div>', 'TehSirihMerah_artikel_8.jpg', ''),
(9, 'Sehat dengan Si Cantik', '<div><b>Sehat dengan Si Cantik</b></div><div><br></div><div>Di balik kecantikannya, sirih merah menyimpan beragam khasiat. Dari sekadar pegal-pegal hingga penyakit-penyakit degeneratif.</div><div><br></div><div>Beberapa tahun lalu sirih merah sempat sangat populer di kalangan pecinta tanaman hias. Tanaman keluarga Piperaceae ini menampilkan warna merah marun yang cantik pada permukaan bawah daunnya. Sementara bagian permukaan atas daunnya hijau keunguan dan keperakan pada tulang daunnya. Dibandingkan sirih hijau, daun sirih merah cenderung lebih tebal dan kaku.</div><div><br></div><div>Seperti saudaranya itu yang telah lama dikenal sebagai tanaman berkhasiat, sirih merah pun menyimpan beragam manfaat bagi tubuh. Si &nbsp;Merah ini juga sudah lama dimanfaatkan secara tradisional dalam pengobatan maupun upacara adat.</div><div><br></div><div><b>Teh dan Ekstrak</b></div><div><br></div><div>Henri Kristiantoro melihat manfaat sirih merah sebagai peluang bisnis. Berawal dari sang ibu yang membudidayakan sirih merah, Henri lalu tertarik untuk mencoba mengembangkannya. â€œSaya kembangkan, kemudian diambil oleh Sekar Kedhaton (Yogyakarta) untuk dibuat teh dan ekstraknya. Mereka (ahli herbal) bilang, ini khasiatnya bagus,â€ ungkap CEO tehsirihmerah.com ini saat ditemui AGRINA di rumahnya, kawasan Meruya Utara, Jakarta Barat.</div><div><br></div><div>Pembuatan teh dan ekstrak sirih merah, diakui Henri, merupakan solusi bagi konsumen. â€œSaya pernah coba air rebusannya, itu memang pahit luar biasa. Kalau yang biasa minum jamu mungkin tidak masalah, tapi kalau tidak (biasa), ya repot,â€ katanya sembari tersenyum.</div><div><br></div><div>Masih menurut Henri, air rebusan daun sirih merah dibuat dari tiga lembar daun yang dicacah, direbus dalam 500ml air hingga tersisa dua-tiga gelas, dikonsumsi pagi dan sore hari.Dengan dibuat teh celup, sirih merah lebih praktis karena mengandung tambahan herbal lain seperti jahe,pegagan,daun mint,dan kayu manis untuk menghilangkan rasa pahit. Sedangkan tambahan daun mint membuat teh sirih merah terasa segar saat dikonsumsi.</div><div><br></div><div>Berbeda dengan teh, ekstrak sirih merah yang dikemas dalam kapsul tidak mengandung tambahan herbal lain.â€karena itu,kalau untuk pengobatan lebih dianjurkan munim ekstraknya.Teh juga bisa, tapi lebih untuk konsumsi sehari-hari,â€jelas Sarjana Akuntansi, Universitas Islam indonesia Yogyakarta ini.</div><div><br></div><div>Untuk pengobatan Henri menganjurkan konsumsi eksrteak dau-tiga kali sehari,dua kapsul sekali minum.â€Biasanya dalam dua minggu sudah ada perubahan. Kalau sudah lebih baik, yang tadi kita konsumsi tiga kali, dikurangi jadi dua kali. Kalau memang sudah Normal, sekali sudah cukup,â€ paparnya. Sedangkan teh sirih merah dapat dikonsumsi sebagai pengganti teh biasa. Biasanya dikonsumsi sehari sekali,dengan atau tanpa gula.</div><div><br></div><div><b>Kaya Khasiat</b></div><div><br></div><div>Manfaat pertama yang dirasakan Henri setelah mengkonsumsi sirih merah adalah staminanya lebih prima. Setelah seharian bekerja atau melakukan aktivitas berat, konsumsi teh sirih merah mengurangi rasa lelah sehingga tubuh menjadi lebih segar. Tambahan lagi, ayah satu putri ini mengakui kadar asam lambungnya tinggi sehingga sering merasa mual,kembung,dan pusing. Setelah mengkonsumsi teh dan ekstrak sirih merah, keluhannya pun hilang tanpa resep dokter.</div><div><br></div><div>Tidak hanya keluhan ringan seperti Henri, sirih merah pun bisa menurunkan kadar gula darah pada penderita diabetes. Daun sirih merah mengandung senyawa fitokimia alkoloid, saponin, tanin, dan flavonoid. Senyawa Alkoloid dan flavonoid sendiri mempunyai aktifitas hipoglikemik, yaitu menurunkan kadar glukosa dalam darah.</div><div><br></div><div>Manfaat tersebut telah teruju secara preklinis.Uji yang dilakukan balai Penelitian Tanaman Obat dan Aromatik (Balittro),Bogor, menunjukkan, pemberian ekstrak sirih merah 20g per kg bobot kitus menurunkan kadar glukosa darah tikus sebesar 34,3 persen. Hasil ini lebih tinggi dibandingkan dengan obat antidiabetes komersial yang hanya menurunkan 27 persen glukosa darah.</div><div><br></div><div>â€œKonsumen saya banyak penderita diabetes. Ada lagi, kalau dibuka kapsulnya, ekstrak itu kita tabur di luka diabetes, itu cepat kering. Bonusnya setelah minum ekstrak ini, kolesterol dan asam urat pun ikut turun,â€ tutur Henri yang lahir di Kendal, Jateng, 32tahun silam itu.</div><div><br></div><div>Menurut dia, bila masih stadium ringan, penderita diabetes dapat merasakan perubahan dalam dua minggu, dan membaik setalah satu-dua bulan. Memang, konsumsi ini sebaiknya diiringi kedisiplinan penderita dalam mengatur asupan makanannya. Selain diabetes, penderita radang usus hingga payudara pun merasakan manfaat teh dan Ekstrak sirih merah.</div><div><br></div><div><b>Sistem Online</b></div><div><br></div><div>Berbekal pengalaman dan pengetahuannya mengenai sirih merah. Sejak awal 2009 suami Desi Yuresta ini memberanikan diri untuk terjun sebagai distributor teh dan ekstrak sirih merah. Keduanya diambil langsung dari produsen Sekar Kedhaton di Yogyakarta.</div><div><br></div><div>Henri mengungkapkan,â€Awalnya saya ikut berbagai macam pameran, setelah cukup yakin dengan pasar, saya mulai memasarkan secara online sejak awal 2010.â€ Melalui situs Tehsirihmerah.com, pria ramah nin menjaring cukup banyak pembeli.Dalam sebulan, ia dapat menjual 100 hingga 150 pak teh dan ekstrak sirih merah.</div><div><br></div><div>Untuk Mempermudah pembeli, pria yang aktif diberbagai komunitas UKM ini pun menggandeng beberapa mitra dan agen penjual. Saat ini toto sembilan agen di beberapa kota, yaitu Pangkal Pinang, Palembang, Lahat, Jakarta Timur, Jakarta Barat, Jakarta Selatan, Bandung, Balikpapan, dan Depok.</div><div><br></div><div>Teh sirih merah dijual dengan harga Rp 55 ribu per kotak berisi 20 kantong, sedangkan ekstraknya dibanderol Rp135 ribu isi 60 kapsul. Harga masih menjadi keluhan banyak konsumen saat ini. â€œIni karena sistem budidaya yang organik, dan tanaman yang memang cenderung rewel tadi,â€alasannya.</div><div><br></div><div><i>Renda Diennazola</i></div><div><br></div><div><b>Lebih lanjut mengenai liputan ini baca di Tabloid AGRINA versi Cetak volume 7 Edisi No. 166 yang terbit pada Rabu, 23 November 2011.</b></div>', 'TehSirihMerah_artikel_9.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `detail_order`
--

CREATE TABLE IF NOT EXISTS `detail_order` (
  `id_order` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_order`
--

INSERT INTO `detail_order` (`id_order`, `nama`, `jumlah`, `harga`, `total`) VALUES
(1, 'Ekstrak Sirih Merah', 1, 150000, 150000),
(2, 'Teh Celup Sirih Merah', 3, 70000, 210000),
(3, 'Ekstrak Sirih Merah', 50, 150000, 7500000),
(4, 'Teh Celup Sirih Merah', 1, 70000, 70000),
(4, 'Ekstrak Sirih Merah', 1, 150000, 150000);

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE IF NOT EXISTS `galeri` (
  `id_gambar` int(11) NOT NULL auto_increment,
  `gambar` text NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY  (`id_gambar`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `galeri`
--


-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE IF NOT EXISTS `info` (
  `beranda` text NOT NULL,
  `alamat` text NOT NULL,
  `info` text NOT NULL,
  `cara_order` text NOT NULL,
  `testimoni` text NOT NULL,
  `tentangkami` text NOT NULL,
  `hubungikami` text NOT NULL,
  `lokasi` text NOT NULL,
  `banner` text NOT NULL,
  `facebook` text NOT NULL,
  `twitter` text NOT NULL,
  `faq` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`beranda`, `alamat`, `info`, `cara_order`, `testimoni`, `tentangkami`, `hubungikami`, `lokasi`, `banner`, `facebook`, `twitter`, `faq`) VALUES
('Selamat Datang di Beranda TehSirihMerah.com<p>Kami hadir untuk Anda yang ingin mencintai produk Herbal Indonesia. TehSirihMerah.com hadir untuk Anda yang ingin hidup sehat secara alamiah seperti Nenek Moyang kita. Indonesia yang dikenal dengan memiliki berbagai tanaman obat sudah sepantasnya pengobatan secara alamiah menjadi tuan rumah di negeri sendiri. Mari biasakan hidup sehat dengan herbal bersama TehSirihMerah.com<br></p><p>TehSirihMerah.com membuka peluang bisnis bagi Anda yang ingin mendapatkan penghasilan tambahan silahkan hubungi kami untuk informasi peluang tersebut.</p><p>Hubungi Kami :</p>sales@tehsirihmerah.com<br>+62 212804356 <br>+62 81 808 606 113<br>pinBB 2327013F<p><br></p><p><br></p><p><br></p>', '<div>Untuk mempercepat pengiriman dengan biaya kirim lebih murah, silahkan order ke Agen atau Reseller TehSirihMerah.com di kota Anda atau kota terdekat.</div><div><br></div><div><b>AGEN PANGKAL PINANG :</b></div><div>Bobby Cahyadi</div><div>Jl. Jend. Sudirman No 146 A Pangkal Pinang</div><div>Hp. 081 918 908 081</div><div><br></div><div><b>AGEN PALEMBANG :</b></div><div>Noni</div><div>Toko Kunci Pinangsia</div><div>Jl. Kol. Atmo No. 596/1 Palembang</div><div>Hp. 087897715500</div><div><br></div><div><b>AGEN LAHAT:</b></div><div>Cici Relawati</div><div>Jl. Prof. DR. Emil Salim No. 071 Lahat, Sumsel</div><div>Hp. 0812 7807 &nbsp;880</div><div><br></div><div><b>AGEN JAKARTA BARAT :</b></div><div>Tan</div><div>Kembang Asri 4 Blok B4 No 8 Puri Indah Jakarta Barat</div><div>Hp. 081 808 92 8888</div><div><br></div><div><b>AGEN JAKARTA TIMUR:</b></div><div>Tri Widodo</div><div>Jl. Cipinang Baru Bundar No. 18</div><div>Cipinang, Pulo Gadung, Jakarta Timur</div><div>Hp. 021 9929 1814</div><div><br></div><div><b>AGEN JAKARTA SELATAN:</b></div><div>WR Eki</div><div>Jl. Nangka RT 01 RW 06 No. 54</div><div>Tanjung Barat, Jakarta Selatan 12530</div><div>Hp. 081 80795 7470</div><div><br></div><div><b>AGEN DEPOK:</b></div><div>Waloejo</div><div>Jl. Nangka i nO. 6A RT 05 RW 15</div><div>Depok 16421</div><div>Hp. 081 198 6854</div><div><br></div><div><b>AGEN BANDUNG :</b></div><div>Ester</div><div>Jl. A. Yani No. 23 Bandung</div><div>Hp. 0856224779 / 022-93357285</div><div><br></div><div><b>AGEN BALIKPAPAN :</b></div><div>Sofyan</div><div>Jl. Senayan No 19 Balikpapan Kalimantan Timur</div><div>Hp. 0542 6124 777</div><div><br></div><div><br></div><div><br></div><div><b>RESELLER JAKARTA PUSAT :</b></div><div>Neti Cahyaningrum 081 7485 9755</div><div><br></div><div><b>RESELLER JAKARTA SELATAN :</b></div><div>Fatoni 081 701 40107</div><div>Ratna 085 2166 88 367</div><div><br></div><div><b>RESELLER JAKARTA BARAT :</b></div><div>Peni Maryanto 085 636 35006</div><div><br></div><div><b>RESELLER CIBINONG :</b></div><div>Junjun Aj 0818 413 600, 021 333 91200</div><div><br></div><div><b>RESELLER DEPOK :</b></div><div>Hermiati 081 218 06621, 085 618 37003</div><div>Waloejo 021 772 129 29, 0811 986 854</div><div><br></div><div><b>RESELLER MEDAN :</b></div><div>Ilfi Rahmi 08197551508</div>', 'Selamat datang di TehSirihMerah.com, untuk produk <a style="color: rgb(51, 255, 0);" target="_blank" title="" href="http://www.blogherbalkoe.wordpress.com">Herbal Indonesia</a> lainnya silahkan kunjungi <a style="color: rgb(255, 153, 0);" target="_blank" title="" href="http://herbalkoe.com">HerbalKoe</a><br>', '<div>Pilih cara pemesanan yang paling memudahkan Anda.</div>1. Langsung klik halaman <a target="" title="" href="http://tehsirihmerah.com/produk.html">PRODUK.</a> <br>2. Isi sesuai kebutuhan dan klik konfirmasinya.<br>3. Kami akan memberikan konfirmasi total beserta biaya kirim.<br>4. Sesuai konfirmasi yang kami kirim Anda dapat membayar sejumlah tersebut ke <br><div><div style="text-align: center; "><b><br></b><div><div style="text-align: center; "><b>BCA CAB. KS TUBUN</b></div><div style="text-align: center; "><b>NOMOR REKENING. 526.057.3308</b></div></div>\r\n<br><b>BANK BNI CAB. MENTENG</b></div><div style="text-align: center; "><b>NOMOR REKENING. 011.072.7532</b></div></div><div style="text-align: center; "><img src="http://mychael-web.co.cc/tes/images/bca.jpg" alt="" align="none"></div><div><br></div><div style="text-align: center; "><img src="http://mychael-web.co.cc/tes/images/mandiri.jpg" alt="" align="none"></div><div><div style="text-align: center; "><b>BANK MANDIRI CAB. RS. PELNI</b></div><div style="text-align: center; "><b>NOMOR REKENING. 116.000501.7596</b></div></div><br><div>5. Pesanan kami kirim ke alamat tujuan melalui JNE.<br><br>atau <br><br>Anda dapat menghubungi kami melalui pesan ke +6281 808 606 113 atau pinBB 2327013F<br></div><br>Terima kasih.<br><div style="text-align: center; "><img src="http://mychael-web.co.cc/tes/images/bni.jpg" alt="" align="none"></div><br>', '<div><b>Ibu Ester Young - Agen Bandung, Jabar</b></div><div>Obat Dokter dan berbagai obat herbal lainnya kurang optimal menyembuhkn keputihan saya, setelah saya minum Ekstrak Sirih Merah dan Tehnya, sekarang saya sudah terbebas dari keputihan. Sedangkan Mama saya memiliki kolesterol yang cukup tinggi yaitu 270 setelah minum Ekstrak dan Teh Sirih Merah kadar kolesterol Mama menjadi 180, biasanya jika minum obat kimia tida pernah dibawah 200.</div><div><br></div><div><b>Ibu Naomi - Medan</b></div><div>Dokter menyarankan untuk operasi Kanker Payudara stadium 3, yang baru diketahui sekitar 4 bulan yang lalu (juni 2010). Awalnya badan terasa kaku namun setelah minum Ekstrak Sirih Merah saya merasa lebih fit dan dapat melakukan aktifitas kembali.</div><div><br></div><div><b>Ibu Feni Heryani </b><b>-</b><b> Jakarta Timur</b></div><div>Saya sering belanja melalui internet, baru kali ini saya belanja online dengan pelayanan yang cepat dari TehSirihMerah.com. Herannya, saya sms baru bisa membayar hari senin (saat itu hari jumat), namun barang tetap dikirim hari itu juga dan esoknya saya sudah terima kiriman dari TehSirihMerah.com (hari sabtu), biasanya setiap belanja online barang dikirim setelah ada pembayaran. Semoga bisnis di TehSirihMerah.com terlindungi dari orang â€“ orang yang berniat tidak baik dan semakin sukses.</div><div><br></div><div><b>Ibu Cici Relawati </b><b>-</b><b> Agen Lahat, Sumsel</b></div><div>Alhamdulilllahi setelah minum Teh Celup Sirih Merah saya merasa lebih segar dan bersemangat Pak. Bahkan anak â€“ anak saya pun menyukainya. Setelah melihat perubahan drastis dari keluarga saya, tetangga â€“ tetangga pun ingin tahu rahasianya. Terima kasih Pak atas kerjasamanya.</div><div><br></div><div><b>Ibu Desi </b><b>-</b><b> Meruya Jakarta Barat</b></div><div>Penyakit magh Ibu Desi sering kambuh terutama saat terlambat makan. Pertama kali mengenal Teh Sirih Merah dan Ekstraknya Ibu Desi langsung tertarik mencoba. Awalnya hanya minum Teh Sirih Merah setiap pagi, merasa ada perkembangan yang membaik lalu Ibu Desi mencoba mengkonsumsi Ekstrak Sirih Merah yang sudah dimasukkan ke dalam kapsul. selama 2 minggu Sakit Magh yang sering dialami Ibu Desi berangsur â€“ angsur jarang kambuh, saat ini Ibu Desi selalu sedia Teh Sirih Merah, saat â€“ saat diperlukan Ibu Desi minum Teh Sirih Merah, terkadang Teh Sirih Merah ini dikonsumsi harian layaknya minum teh biasa, bahkan putri semata wayang Ibu Desi yang baru berusia 6 tahun pun sangat menyukai Teh Sirih Merah ini. (seperti disampaikan melalui telepon)</div><div><br></div><div><b>Bapak Hans </b><b>-</b><b> Duren Sawit Baru Jakarta Timur</b></div><div>Setelah minum Ekstrak Sirih Merah 4 hari pertama Kadar Gula Darah saya turun 78 poin dari sekitar 200 an poin.</div><div><br></div><div><b>Wan Suhaini </b><b>- </b><b>Serawak Malaysia</b></div><div>Saya mengenal Teh Sirih Merah dari seorang teman dan saya akui khasiatnya, hanya saja sangat sulit mendapatkannya di Malaysia.</div><div><br></div><div><b>Bapak Nanang Pujatmiko </b><b>- </b><b>via nanang_pujatmiko@yahoo.co.id</b></div><div>Saya mempunyai riwayat DM, saya mengkonsumsi daun sirih merah setiap pagi sore sebanyak 2 lembar. Hasil rebusan disaring setelah dingin diminum, manfaatnya sangat terasa untuk tubuh saya. Disamping itu saya berolah raga jalan kaki selama 30 menit setiap hari badan saya jadi segar selamat mencoba.</div>', 'Berawal dari kepedulian terhadap kesehatan secara alami, kami memasarkan produk secara offline dari bazaar ke bazaar. Namun sejak 2010 kami hadir langsung dihadapan Anda melalui sebuah website yaitu <a style="color: rgb(204, 0, 0);" target="" title="TehSirihMerah.com" href="http://tehsirihmerah.com/">TehSirihMerah.com</a><span style="color: rgb(0, 0, 0);">. </span><br><br>TehSirihMerah.com telah memiliki beberapa Mitra Pemasar yang tersebar ke berbagai kota di Indonesia. Anda dapat menghubungi Mitra Pemasar terdekat di kota Anda.<br><br>Terima kasih semoga Anda senantiasa dikaruniai kesehatan.<br><br>TehSirihMerah.com<br>Jl. Gn Bromo No 15 Meruya Selatan<br>Jakarta Barat 11650<br><br>sales@tehsirihmerah.com<br>telp. +622128043567 <br>hp. +6281808606113<br>pinBB 2327013F<br>', 'test hubungi kami di.....<br>', 'lokasi', '<div>TehSirihMerah</div><div>Jl. Gn Bromo No 15 Meruya Selatan</div><div>Jakarta Barat</div><div>email : &nbsp;sales@herbalkoe.com&nbsp;</div><div>Hp. 081 808 606 113<br>Telp. 021-28043567</div>', '', '', '<div>Berikut ini adalah kumpulan pertanyaan yang sering diajukan oleh pelanggan TehSirihMerah.com.</div><div><br></div><div><ul><li>Bagaimana cara mendapatkan teh dan ekstrak sirih merah ini, untuk yang berada di luar Jakarta?</li></ul></div><div>Jawab :</div><div>Kami mengirim pesanan Anda melalui berbagai ekspedisi kepercayaan kami atau Anda bisa memberikan alternatifnya.</div><div><br></div><div><ul><li>Bagaimana aturan minum teh dan ekstraknya ini?</li></ul></div><div>Jawab :</div><div>Untuk pengobatan berbagai &nbsp;keluhan minum teh sirih merah 2x sehari setiap pagi dan sore. Untuk ekstraknya 2-3 kali sehari selama 2 minggu.</div><div><br></div><div><ul><li>Apakah ada herbal lainnya selain teh dan ekstrak sirih merah ini?</li></ul></div><div>Jawab :</div><div>Kami menyediakan beberapa herbal lainnya seperti Ekstrak Daun Jati Belanda, Uratin untuk Asam Urat, Jahe Merah Instan berbagai rasa, silahkan klik halaman Produk.</div>');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', '681f852c71245196c0bcf786298f68d2');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int(11) NOT NULL auto_increment,
  `nama_menu` varchar(50) NOT NULL,
  `link` text NOT NULL,
  `posisi` int(11) NOT NULL,
  `target` int(11) NOT NULL,
  PRIMARY KEY  (`id_menu`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `nama_menu`, `link`, `posisi`, `target`) VALUES
(1, 'Halaman Utama', 'index.php', 1, 0),
(2, 'Produk', 'produk.html', 2, 0),
(3, 'List Belanja', 'list-belanja.html', 3, 0),
(4, 'Hubungi Kami', 'hubungi-kami.html', 4, 0),
(7, 'Artikel', 'http://www.blogherbalkoe.wordpress.com/ ', 5, 1),
(12, 'Galeri', 'galeri.html', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
  `id_order` int(11) NOT NULL auto_increment,
  `nama` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `session_id` text NOT NULL,
  PRIMARY KEY  (`id_order`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id_order`, `nama`, `alamat`, `no_telp`, `email`, `keterangan`, `session_id`) VALUES
(1, 'Mychael', 'a', '085241292523', 'mychael.christian.go@gmail.com', 'a', 'fp8tjv1vcmdb98pncliil2a5q0'),
(2, 'Mychael', 'b', '085241292523', 'mychael.go', 'b', 'fp8tjv1vcmdb98pncliil2a5q0'),
(3, 'a', 'a', 'a', 'a', 'a', 'fr0d58mna73q48a0us9jlca6e5'),
(4, 'a', 'a', 'a', 'adryuzaki3000@yahoo.coma', 'a', 'fr0d58mna73q48a0us9jlca6e5');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_produk` int(11) NOT NULL auto_increment,
  `nama` varchar(100) NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY  (`id_produk`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `nama`, `isi`, `gambar`, `harga`) VALUES
(1, 'Ekstrak Sirih Merah', '<div><b>Khasiat</b> : Menambah daya tahan tubuh, mengatasi keletihan, menyembuhkan kembung/magh/asam lambung, menurunkan kadar gula darah,mempercepat penyembuhan luka.</div><div><span style="font-weight: bold;">Isi </span>: 60 kapsul.</div><div><b>Cara Minum</b> : untuk pengobatan minum setelah makan 2 kapsul sehari 2 â€“ 3 kali, untuk menjaga kesehatan minum 2 kapsul sehari sekali.</div>', 'TehSirihMerah_produk_1.jpg', 145000),
(2, 'Teh Sirih Merah', '<div><b>Khasiat</b> : Menambah daya tahan tubuh, mengatasi keletihan, menyembuhkan kembung/magh/asam lambung, menurunkan <b>kadar gula darah,mempercepat penyembuhan luka.</b></div><div><span style="font-weight: bold;">Isi</span> : 20 Celup.</div><div><b>Cara Minum</b> : untuk pengobatan minum setelah makan 2 kali sehari dipadu dengan Ekstrak Sirih Merah, untuk menjaga kesehatan minum sehari sekali.</div>', 'TehSirihMerah_produk_2.jpg', 65000),
(10, 'test1', 'test1', 'TehSirihMerah_produk_10.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

CREATE TABLE IF NOT EXISTS `temp` (
  `id` int(11) NOT NULL auto_increment,
  `nama_produk` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `ip` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`id`, `nama_produk`, `jumlah`, `harga`, `ip`) VALUES
(25, 'Ekstrak Sirih Merah', 2, 150000, '4b661s44go7v64pj6jbecvs1b6'),
(30, 'Ekstrak Sirih Merah', 0, 150000, '864b3208e0465ac1a573b649248d6d54'),
(29, 'Teh Celup Sirih Merah', 0, 70000, '864b3208e0465ac1a573b649248d6d54'),
(38, 'Teh Sirih Merah', 1, 65000, '63df1378c99123cd035fc1a4e075d609'),
(37, 'Teh Sirih Merah', 1, 65000, '63df1378c99123cd035fc1a4e075d609'),
(39, 'Ekstrak Sirih Merah', 1, 145000, 'e1003bc0e37b8a05ea1923863a570e39'),
(40, 'Ekstrak Sirih Merah', 1, 145000, '09675d765725b385d9aa317490c32e6a');

-- --------------------------------------------------------

--
-- Table structure for table `ym`
--

CREATE TABLE IF NOT EXISTS `ym` (
  `nama` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ym`
--

INSERT INTO `ym` (`nama`) VALUES
('hneir09');
