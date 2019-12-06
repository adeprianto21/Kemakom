/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 10.1.13-MariaDB : Database - kemakom
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`kemakom` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `kemakom`;

/*Table structure for table `berita` */

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL AUTO_INCREMENT,
  `kd_kategori_berita` varchar(255) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `isi_berita` text NOT NULL,
  `status_berita` int(11) NOT NULL,
  `gambar` text NOT NULL,
  `tanggal_berita` date NOT NULL,
  `id_user` int(11) NOT NULL,
  PRIMARY KEY (`id_berita`),
  KEY `kd_kategori_berita` (`kd_kategori_berita`),
  KEY `id_user` (`id_user`),
  CONSTRAINT `berita_ibfk_1` FOREIGN KEY (`kd_kategori_berita`) REFERENCES `kategori_berita` (`kd_kategori`),
  CONSTRAINT `berita_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `users` (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `berita` */

insert  into `berita`(`id_berita`,`kd_kategori_berita`,`slug_berita`,`judul_berita`,`isi_berita`,`status_berita`,`gambar`,`tanggal_berita`,`id_user`) values (8,'kat3','contoh-berita-2','Contoh Berita 2','Fancy You',1,'WISUDA33.jpg','2019-12-04',1);

/*Table structure for table `kategori_berita` */

CREATE TABLE `kategori_berita` (
  `kd_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `keterangan_kategori` varchar(255) NOT NULL,
  PRIMARY KEY (`kd_kategori`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kategori_berita` */

insert  into `kategori_berita`(`kd_kategori`,`nama_kategori`,`keterangan_kategori`) values ('kat1','Non Divisi','Non Divisi'),('kat2','Divkomtekinfo','Divisi Komunikasi Teknologi Informasi'),('kat3','DPO','Divisi Pengembangan Organisasi'),('kat4','Divadsospol','Divisi Advokasi Sosial Politik'),('kat5','Dividiklat','Divisi Pendidikan dan Kepelatihan'),('kat6','DPMB','Divisi Pengembangan Minat dan Bakat'),('kat7','Divroh','Divisi Kerohanian'),('kat8','DPM','Dewan Perwakilan Mahasiswa'),('kat9','Kemakom','Umum');

/*Table structure for table `users` */

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(70) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`id_user`,`nama`,`email`,`username`,`password`,`level`) values (1,'kemakom','kemakom@upi.edu','kemakom','9fad3ecb414d8c3d6b58fa88c37ea4d9',1),(2,'Sidiq','sidiq@upi.edu','sidiq','321sidiq',2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
