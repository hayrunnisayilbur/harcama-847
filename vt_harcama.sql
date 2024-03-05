-- --------------------------------------------------------
-- Sunucu:                       127.0.0.1
-- Sunucu sürümü:                10.4.28-MariaDB - mariadb.org binary distribution
-- Sunucu İşletim Sistemi:       Win64
-- HeidiSQL Sürüm:               12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- harcama için veritabanı yapısı dökülüyor
CREATE DATABASE IF NOT EXISTS `harcama` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `harcama`;

-- tablo yapısı dökülüyor harcama.butce
CREATE TABLE IF NOT EXISTS `butce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tanim` varchar(50) DEFAULT NULL,
  `tur_id` int(11) DEFAULT NULL,
  `miktar` double DEFAULT NULL,
  `tarih` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_butce_tur` (`tur_id`),
  CONSTRAINT `FK_butce_tur` FOREIGN KEY (`tur_id`) REFERENCES `tur` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=91 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- harcama.butce: ~10 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `butce` (`id`, `tanim`, `tur_id`, `miktar`, `tarih`) VALUES
	(1, 'Ocak Maaş', 1, 20000, '2024-01-15'),
	(2, 'Şubat Maaş', 1, 21000, '2024-02-15'),
	(3, 'Mart Maaş', 1, 21500, '2024-03-15'),
	(4, 'Nisan Maaş', 1, 22000, '2024-04-15'),
	(5, 'Mayıs Maaş', 1, 22500, '2024-05-15'),
	(6, 'Market Alışverişi', 6, 250, '2024-01-20'),
	(7, 'Kredi Kartı Ödemesi', 7, 150, '2024-01-25'),
	(8, 'Elektrik Faturası', 8, 300, '2024-01-28'),
	(9, 'Pazar Alışverişi', 9, 100, '2024-02-05'),
	(10, 'Yakıt Masrafı', 10, 200, '2024-02-10'),
	(21, 'Şubat Maaşı', 1, 30000, '2025-02-15'),
	(22, 'Mart Maaşı', 1, 30500, '2025-03-15'),
	(23, 'Nisan Maaşı', 1, 31000, '2025-04-15'),
	(24, 'Mayıs Maaşı', 1, 31500, '2025-05-15'),
	(25, 'Market Alışverişi', 38, 280, '2024-12-20'),
	(26, 'Kredi Kartı Ödemesi', 39, 150, '2025-01-25'),
	(27, 'Su Faturası', 40, 200, '2025-02-12'),
	(28, 'Pazar Alışverişi', 41, 110, '2025-03-05'),
	(29, 'Yakıt Masrafı', 42, 230, '2025-03-10'),
	(30, 'Kırtasiye Alışverişi', 43, 100, '2025-04-01'),
	(31, 'Haziran Maaşı', 1, 32000, '2025-06-15'),
	(32, 'Temmuz Maaşı', 1, 32500, '2025-07-15'),
	(33, 'Ağustos Maaşı', 1, 33000, '2025-08-15'),
	(34, 'Eylül Maaşı', 1, 33500, '2025-09-15'),
	(35, 'Market Alışverişi', 44, 300, '2025-05-20'),
	(36, 'Kredi Kartı Ödemesi', 45, 170, '2025-06-10'),
	(37, 'Su Faturası', 46, 220, '2025-07-15'),
	(38, 'Pazar Alışverişi', 47, 120, '2025-08-05'),
	(39, 'Yakıt Masrafı', 48, 250, '2025-09-10'),
	(40, 'Kırtasiye Alışverişi', 49, 110, '2025-10-01'),
	(41, 'Ekim Maaşı', 1, 34000, '2025-10-15'),
	(42, 'Kasım Maaşı', 1, 34500, '2025-11-15'),
	(43, 'Aralık Maaşı', 1, 35000, '2025-12-15'),
	(44, 'Market Alışverişi', 50, 320, '2025-10-20'),
	(45, 'Kredi Kartı Ödemesi', 51, 180, '2025-11-10'),
	(46, 'Su Faturası', 52, 230, '2025-12-15'),
	(47, 'Pazar Alışverişi', 53, 130, '2026-01-05'),
	(48, 'Yakıt Masrafı', 54, 270, '2026-01-10'),
	(49, 'Kırtasiye Alışverişi', 55, 120, '2026-02-01'),
	(50, 'Elektrik Faturası', 56, 300, '2026-02-10'),
	(51, 'Haziran Maaşı', 1, 26500, '2024-06-15'),
	(52, 'Temmuz Maaşı', 1, 27000, '2024-07-15'),
	(53, 'Ağustos Maaşı', 1, 27500, '2024-08-15'),
	(54, 'Eylül Maaşı', 1, 28000, '2024-09-15'),
	(55, 'Ekim Maaşı', 1, 28500, '2024-10-15'),
	(56, 'Market Alışverişi', 25, 220, '2024-07-05'),
	(57, 'Kredi Kartı Ödemesi', 26, 130, '2024-07-10'),
	(58, 'Su Faturası', 27, 180, '2024-08-15'),
	(59, 'Pazar Alışverişi', 28, 90, '2024-08-20'),
	(60, 'Yakıt Masrafı', 29, 200, '2024-09-05'),
	(61, 'Kasım Maaşı', 1, 25500, '2024-11-15'),
	(62, 'Aralık Maaşı', 1, 26000, '2024-12-15'),
	(63, 'Market Alışverişi', 17, 200, '2024-04-05'),
	(64, 'Kredi Kartı Ödemesi', 18, 120, '2024-04-10'),
	(65, 'Doğalgaz Faturası', 19, 200, '2024-04-15'),
	(66, 'Pazar Alışverişi', 20, 80, '2024-05-01'),
	(67, 'Elektrik Faturası', 21, 250, '2024-05-10'),
	(68, 'Yakıt Masrafı', 22, 220, '2024-05-15'),
	(69, 'Kırtasiye Alışverişi', 23, 70, '2024-06-01'),
	(70, 'Su Faturası', 24, 130, '2024-06-10'),
	(71, 'Haziran Maaş', 1, 23000, '2024-06-15'),
	(72, 'Temmuz Maaş', 1, 23500, '2024-07-15'),
	(73, 'Ağustos Maaş', 1, 24000, '2024-08-15'),
	(74, 'Eylül Maaş', 1, 24500, '2024-09-15'),
	(75, 'Ekim Maaş', 1, 25000, '2024-10-15'),
	(76, 'Kırtasiye Alışverişi', 12, 80, '2024-01-30'),
	(77, 'Su Faturası', 13, 150, '2024-02-12'),
	(78, 'Yakıt Masrafı', 14, 180, '2024-02-20'),
	(79, 'Telefon Faturası', 15, 100, '2024-03-05'),
	(80, 'Market Alışverişi', 16, 300, '2024-03-10'),
	(81, 'Ocak Maaş', 1, 20000, '2024-01-15'),
	(82, 'Şubat Maaş', 1, 21000, '2024-02-15'),
	(83, 'Mart Maaş', 1, 21500, '2024-03-15'),
	(84, 'Nisan Maaş', 1, 22000, '2024-04-15'),
	(85, 'Mayıs Maaş', 1, 22500, '2024-05-15'),
	(86, 'Market Alışverişi', 6, 250, '2024-01-20'),
	(87, 'Kredi Kartı Ödemesi', 7, 150, '2024-01-25'),
	(88, 'Elektrik Faturası', 8, 300, '2024-01-28'),
	(89, 'Pazar Alışverişi', 9, 100, '2024-02-05'),
	(90, 'Yakıt Masrafı', 10, 200, '2024-02-10');

-- tablo yapısı dökülüyor harcama.tur
CREATE TABLE IF NOT EXISTS `tur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ad` varchar(20) NOT NULL,
  `durum` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- harcama.tur: ~11 rows (yaklaşık) tablosu için veriler indiriliyor
INSERT INTO `tur` (`id`, `ad`, `durum`) VALUES
	(1, 'Kira Geliri', 'Gelir'),
	(2, 'Satış Geliri', 'Gelir'),
	(3, 'Hediye Geliri', 'Gelir'),
	(4, 'Yatırım Geliri', 'Gelir'),
	(5, 'Diğer Gelir', 'Gelir'),
	(6, 'Market', 'Gider'),
	(7, 'Kredi Kartı', 'Gider'),
	(8, 'Fatura', 'Gider'),
	(9, 'Pazar', 'Gider'),
	(10, 'Yakıt', 'Gider'),
	(11, 'Kırtasiye', 'Gider');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
