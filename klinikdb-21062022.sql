/*
SQLyog Community v13.1.7 (64 bit)
MySQL - 10.4.17-MariaDB : Database - klinikdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `daftar` */

DROP TABLE IF EXISTS `daftar`;

CREATE TABLE `daftar` (
  `iddaftar` int(5) NOT NULL AUTO_INCREMENT,
  `no_rm` varchar(21) DEFAULT NULL,
  `tgl_daftar` date DEFAULT NULL,
  `dokterid` int(5) DEFAULT NULL,
  `total` int(20) DEFAULT NULL,
  `bayar` int(20) DEFAULT NULL,
  `kembalian` int(20) DEFAULT NULL,
  PRIMARY KEY (`iddaftar`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `daftar` */

insert  into `daftar`(`iddaftar`,`no_rm`,`tgl_daftar`,`dokterid`,`total`,`bayar`,`kembalian`) values 
(2,'P000004','2022-05-10',1,250000,300000,50000),
(3,'P000002','2022-05-12',1,700000,800000,100000),
(4,'P000001','2022-06-15',1,10000000,10000000,0),
(5,'P000003','2022-06-15',2,400000,400000,0),
(6,'P000002','2022-06-15',2,200000,200000,0);

/*Table structure for table `dokter` */

DROP TABLE IF EXISTS `dokter`;

CREATE TABLE `dokter` (
  `iddokter` int(5) NOT NULL AUTO_INCREMENT,
  `nama_dokter` varchar(100) DEFAULT NULL,
  `jenis_dokter` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`iddokter`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

/*Data for the table `dokter` */

insert  into `dokter`(`iddokter`,`nama_dokter`,`jenis_dokter`) values 
(1,'Drg. Bernard A. Pasaribu','Dokter Spesialis Gigi'),
(2,'Drg. Alfrida Panggabean','Dokter Gigi Umum'),
(3,'Drg. Giena Anggraini','Dokter Gigi Umumm');

/*Table structure for table `layanan` */

DROP TABLE IF EXISTS `layanan`;

CREATE TABLE `layanan` (
  `idlayanan` int(5) NOT NULL AUTO_INCREMENT,
  `nama_layanan` varchar(100) DEFAULT NULL,
  `harga` int(10) DEFAULT NULL,
  PRIMARY KEY (`idlayanan`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `layanan` */

insert  into `layanan`(`idlayanan`,`nama_layanan`,`harga`) values 
(1,'Cabut Gigi',50000),
(2,'Tambal Gigi',200000),
(3,'Scalling',500000),
(4,'Rontgen Gigi',250000),
(5,'Orto',10000000),
(6,'Bleaching',5000000),
(7,'Veener',1000000),
(8,'Dental Crown',150000);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user` varchar(50) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`user`,`pass`,`email`) values 
(1,'admin','admin','adminadmin@gmail.com'),
(7,'owner','owner','ownerowner@gmil.com');

/*Table structure for table `pasien` */

DROP TABLE IF EXISTS `pasien`;

CREATE TABLE `pasien` (
  `id_pasien` int(4) NOT NULL AUTO_INCREMENT,
  `no_rm` varchar(21) NOT NULL,
  `no_kk` varchar(20) DEFAULT NULL,
  `nik` varchar(20) DEFAULT NULL,
  `nama` varchar(55) DEFAULT NULL,
  `tgl_lhr` date DEFAULT NULL,
  `jk` varchar(20) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `layanan` varchar(10) DEFAULT NULL,
  `no_hp` varchar(15) DEFAULT NULL,
  `ket` varchar(55) DEFAULT NULL,
  `tdt` varchar(20) DEFAULT NULL,
  `pj` varchar(20) DEFAULT NULL,
  `dm` varchar(20) DEFAULT NULL,
  `hm` varchar(20) DEFAULT NULL,
  `ht` varchar(20) DEFAULT NULL,
  `pl` varchar(20) DEFAULT NULL,
  `ato` varchar(20) DEFAULT NULL,
  `atm` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`no_rm`),
  KEY `id_pasien` (`id_pasien`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `pasien` */

insert  into `pasien`(`id_pasien`,`no_rm`,`no_kk`,`nik`,`nama`,`tgl_lhr`,`jk`,`alamat`,`layanan`,`no_hp`,`ket`,`tdt`,`pj`,`dm`,`hm`,`ht`,`pl`,`ato`,`atm`) values 
(1,'P000001','-','157101025470001','Abdul Majid','1947-05-02','Laki-Laki','RT.20 SOLOK SIPIN ','UMUM','-','-','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada'),
(2,'P000002','-','1505074502860001','Retno Widyawati','1986-02-05','Perempuan','rt.002 selamat','UMUM','-','-','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada'),
(3,'P000003','-','1571017112420102','Nurhasanah','1942-12-31','Perempuan','RT.02 SUNGAI PUTRI','UMUM','-','-','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada'),
(4,'P000004','-','1571104607180002','Zalfa Sahwalin','2018-07-06','Perempuan','RT.20 LEGOK','UMUM','-','-','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada'),
(5,'P000005','-','1571014909600021','Septi ','1960-09-09','Perempuan','RT.29 SOLOK SIPIN','UMUM','-','-','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada'),
(7,'P000006','-','123123412345','Joan Mirando','1992-06-09','Laki-Laki','Jelutung, Kotabaru','UMUM','081344442222','-','Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Tidak Ada','Ada');

/*Table structure for table `transaksi` */

DROP TABLE IF EXISTS `transaksi`;

CREATE TABLE `transaksi` (
  `idtrans` int(5) NOT NULL AUTO_INCREMENT,
  `daftarid` int(5) DEFAULT NULL,
  `layananid` int(5) DEFAULT NULL,
  PRIMARY KEY (`idtrans`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4;

/*Data for the table `transaksi` */

insert  into `transaksi`(`idtrans`,`daftarid`,`layananid`) values 
(12,2,1),
(13,2,2),
(14,3,2),
(15,3,3),
(16,4,5),
(17,5,8),
(18,5,4),
(19,3,1),
(20,6,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
