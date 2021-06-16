-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2021 at 09:30 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trang_website_ban_do_co`
--

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `MaBL` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Binhluan` char(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaKH` int(10) NOT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MaQTV` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` int(255) NOT NULL,
  `MaSP` int(255) DEFAULT NULL,
  `Soluong` int(255) DEFAULT NULL,
  `Tongtien` decimal(18,0) DEFAULT NULL,
  `Tinhtrang` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`MaHD`, `MaSP`, `Soluong`, `Tongtien`, `Tinhtrang`) VALUES
(1, 1149, 10, '6500000', 1),
(3, 1116, 1, '670000', 1),
(4, 1148, 1, '800000', 0),
(5, 1116, 1, '670000', 0),
(6, 1148, 1, '800000', 0),
(7, 1130, 3, '1650000', 1),
(8, 1153, 1, '550000', 1),
(9, 1150, 2, '1400000', 1),
(10, 1129, 1, '800000', 1),
(11, 1150, 2, '1400000', 0),
(12, 1129, 1, '800000', 0),
(13, 1150, 2, '1400000', 0),
(14, 1150, 2, '1400000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieudat`
--

CREATE TABLE `chitietphieudat` (
  `MaPD` int(255) DEFAULT NULL,
  `MaSP` int(255) DEFAULT NULL,
  `Soluong` int(255) DEFAULT NULL,
  `Giatien` decimal(18,2) DEFAULT NULL,
  `Tinhtrang` int(255) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chitietphieudat`
--

INSERT INTO `chitietphieudat` (`MaPD`, `MaSP`, `Soluong`, `Giatien`, `Tinhtrang`) VALUES
(2026, 1111, 1, '550000.00', 1),
(2030, 1148, 3, '800000.00', 1),
(2037, 1150, 2, '700000.00', 0),
(2038, 1150, 2, '700000.00', 0),
(2038, 1129, 1, '800000.00', 0),
(2039, 1150, 2, '700000.00', 0),
(2039, 1129, 1, '800000.00', 0),
(2040, 1150, 2, '700000.00', 0),
(2040, 1129, 1, '800000.00', 0),
(2041, 1150, 2, '700000.00', 0),
(2041, 1129, 1, '800000.00', 0),
(2042, 1150, 2, '700000.00', 0),
(2042, 1129, 1, '800000.00', 0),
(2043, 1150, 2, '700000.00', 0),
(2043, 1129, 1, '800000.00', 0),
(2044, 1150, 2, '700000.00', 0),
(2044, 1129, 1, '800000.00', 0),
(2045, 1150, 2, '700000.00', 1),
(2045, 1129, 1, '800000.00', 1),
(2046, 1150, 2, '700000.00', 0),
(2046, 1129, 2, '800000.00', 0),
(2046, 1138, 3, '650000.00', 0),
(2046, 1111, 1, '550000.00', 0),
(2047, 1150, 2, '700000.00', 0),
(2047, 1129, 2, '800000.00', 0),
(2047, 1138, 3, '650000.00', 0),
(2047, 1111, 1, '550000.00', 0),
(2048, 1150, 2, '700000.00', 0),
(2048, 1129, 2, '800000.00', 0),
(2048, 1138, 3, '650000.00', 0),
(2048, 1111, 1, '550000.00', 0),
(2049, 1147, 1, '800000.00', 0),
(2050, 1147, 2, '800000.00', 0),
(2050, 1139, 1, '900000.00', 0),
(2051, 1128, 1, '800000.00', 0),
(2051, 1149, 8, '650000.00', 0),
(2052, 1128, 1, '800000.00', 0),
(2052, 1149, 8, '650000.00', 0),
(2053, 1030, 1, '900.00', 0),
(2053, 1010, 1, '7.00', 0),
(2053, 2, 2, '5000000.00', 0),
(2053, 1027, 1, '12000.00', 0),
(2054, 1032, 1, '1890.00', 0),
(2055, 1032, 1, '1890.00', 0),
(2056, 1032, 1, '1890.00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieunhap`
--

CREATE TABLE `chitietphieunhap` (
  `MaPN` int(255) NOT NULL,
  `MaSP` int(255) DEFAULT NULL,
  `Soluongnhap` int(255) DEFAULT NULL,
  `Gianhap` decimal(18,0) DEFAULT NULL,
  `Thanhtien` decimal(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chitietphieuxuat`
--

CREATE TABLE `chitietphieuxuat` (
  `MaPX` int(255) NOT NULL,
  `MaSP` int(255) DEFAULT NULL,
  `Soluong` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `MaDM` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenDM` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`MaDM`, `TenDM`) VALUES
('1001', 'Thế giới đá quý'),
('1002', 'Thế giới trang sức'),
('1003', 'Thế giới tranh'),
('1004', 'Thế giới đồ gốm');

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` int(255) NOT NULL,
  `MaKH` int(255) NOT NULL,
  `MaNV` int(255) DEFAULT NULL,
  `Ngaylap` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`MaHD`, `MaKH`, `MaNV`, `Ngaylap`) VALUES
(1, 1028, 102, '2018-06-09 20:34:45'),
(2, 1028, 102, '2018-06-10 11:19:48'),
(3, 1028, 102, '2018-06-10 11:19:50'),
(4, 1028, 102, '2018-06-10 11:19:51'),
(5, 1028, 102, '2018-06-10 11:19:53'),
(6, 1028, 102, '2018-06-10 11:19:53'),
(7, 1028, 102, '2018-06-10 12:41:07'),
(8, 1028, 102, '2018-06-10 21:14:34'),
(9, 1028, 102, '2018-06-13 14:51:19'),
(10, 1028, 102, '2018-06-13 14:51:19'),
(11, 1028, 102, '2018-06-13 14:51:23'),
(12, 1028, 102, '2018-06-13 14:51:23'),
(13, 1028, 102, '2021-06-08 14:14:38'),
(14, 1028, 102, '2021-06-08 14:14:39');

-- --------------------------------------------------------

--
-- Table structure for table `khachhang`
--

CREATE TABLE `khachhang` (
  `MaKH` int(255) NOT NULL,
  `TenKH` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Matkhau` char(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Diachi` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sdt` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `khachhang`
--

INSERT INTO `khachhang` (`MaKH`, `TenKH`, `Email`, `Matkhau`, `Diachi`, `Sdt`) VALUES
(1019, 'duchiep', 'duchiep@gmail.com', '12345', 'Hồ Chí Minh', '0901345678'),
(1020, 'minhhoang', 'minhhoang@gmail.com', '12345', 'Hà Nội', '0902245235'),
(1028, 'nguyenthibichlien', 'lien@gmail.com', '11111', 'Bắc Ninh', '01234567888'),
(1030, 'nam', 'nam@gmail.com', '11111', 'Tiền Gianag', '01234567887'),
(1031, 'dung', 'dung@gmail.com', '22222', 'Bắc Giang', '0935292787'),
(1032, 'đào thị thu trang', 'trang300501@gmail.com', '12345678', 'bắc ninh', '0921813709'),
(1036, 'Nguyễn Thị Hà', 'haha@gmail.com', '12345678', 'hanoi', '0813748153'),
(1038, 'thị huế', 'huế @gmail.com', '12345678', 'bắc ninh', '1982356789');

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` int(255) NOT NULL,
  `TenLSP` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`) VALUES
(1111, 'Gốm cổ vật'),
(1112, 'Gốm phong thủy'),
(1113, 'Gốm sứ gia dụng'),
(2221, 'Vòng tay'),
(2222, 'Dây chuyền'),
(2223, 'Nhẫn'),
(2224, 'Khuyên tai'),
(2225, 'Bộ vòng'),
(2226, 'Cài áo'),
(3331, 'Tranh sơn dầu'),
(3332, 'Tranh phong cảnh'),
(3333, 'Tranh từu tượng'),
(3334, 'Tranh phật giáo'),
(3335, 'Tranh thiếu nữ'),
(3336, 'Tranh nghệ thuật'),
(3337, 'Tranh treo tường'),
(4441, 'Vật phẩm phong thủy'),
(4442, 'Đá thạch anh'),
(4443, 'Đá cẩm thạch'),
(4444, 'Đá ruby'),
(4445, 'Đá quý khác');

-- --------------------------------------------------------

--
-- Table structure for table `nhacungcap`
--

CREATE TABLE `nhacungcap` (
  `MaNCC` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenNCC` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhacungcap`
--

INSERT INTO `nhacungcap` (`MaNCC`, `TenNCC`) VALUES
('', ''),
('2001', 'Đinh Công Tường-Vua đồ cổ'),
('2002', 'Chợ Nhật Tảo Quận 11, Hồ Chí Minh'),
('2003', 'Siêu thị tranh treo tường và quà tặng AmiA Hà Nội'),
('2004', 'Showroom Nữ Trang Kim Cương Hưng Phát USA'),
('2005', 'Xưởng vẽ tranh sơn dầu-TUONGLAMART');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `MaNV` int(255) NOT NULL,
  `TenNV` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Cmnd` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Sdt` char(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Matkhau` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Bophan` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Mucluong` decimal(18,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`MaNV`, `TenNV`, `Cmnd`, `Sdt`, `Matkhau`, `Bophan`, `Mucluong`) VALUES
(2467, 'Nguyễn Hồng Phương', '206127893', '0813748153', '123123', 'Bán hàng', '3000000'),
(3001, 'Nguyen Thi Phuong Dung', '206022727', '0935292787', 'abc123', 'Giao hang', '5000000'),
(3002, 'Truong Van Vu', '206022728', '0935292788', 'abc123', 'Ban hang', '5500000'),
(3003, 'Vo Thi Nguyet', '206022729', '0935292789', 'abc123', 'Quan Ly Kho', '7000000');

-- --------------------------------------------------------

--
-- Table structure for table `phieudat`
--

CREATE TABLE `phieudat` (
  `MaPD` int(255) NOT NULL,
  `MaKH` int(255) DEFAULT NULL,
  `Ngaydat` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `phieudat`
--

INSERT INTO `phieudat` (`MaPD`, `MaKH`, `Ngaydat`) VALUES
(2030, 1028, '2018-06-09 15:46:28'),
(2031, 1028, '2018-06-09 20:34:31'),
(2032, 1028, '2018-06-09 20:37:00'),
(2033, 1028, '2018-06-10 11:19:36'),
(2034, 1028, '2018-06-10 12:40:54'),
(2035, 1028, '2018-06-10 21:11:21'),
(2036, 1028, '2018-06-13 12:56:27'),
(2037, 1028, '2018-06-13 12:59:26'),
(2038, 1028, '2018-06-13 13:13:19'),
(2039, 1028, '2018-06-13 13:15:21'),
(2040, 1028, '2018-06-13 13:15:24'),
(2041, 1028, '2018-06-13 13:18:42'),
(2042, 1028, '2018-06-13 13:21:33'),
(2043, 1028, '2018-06-13 13:22:34'),
(2044, 1028, '2018-06-13 13:22:59'),
(2045, 1028, '2018-06-13 13:42:40'),
(2046, 1028, '2018-06-13 15:14:57'),
(2047, 1028, '2018-06-13 15:16:43'),
(2048, 1028, '2018-06-13 15:16:52'),
(2049, 0, '2021-05-26 23:21:18'),
(2050, 0, '2021-05-26 23:22:26'),
(2051, 0, '2021-06-01 10:52:21'),
(2052, 0, '2021-06-01 11:07:05'),
(2053, 0, '2021-06-10 20:49:18'),
(2054, 0, '2021-06-11 10:57:07'),
(2055, 0, '2021-06-11 11:20:01'),
(2056, 0, '2021-06-11 11:20:13');

-- --------------------------------------------------------

--
-- Table structure for table `phieunhap`
--

CREATE TABLE `phieunhap` (
  `MaPN` int(255) NOT NULL,
  `MaNV` int(255) DEFAULT NULL,
  `Ngaynhap` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `phieuxuat`
--

CREATE TABLE `phieuxuat` (
  `MaPX` int(255) NOT NULL,
  `MaNV` int(255) DEFAULT NULL,
  `Ngayxuat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quantrivien`
--

CREATE TABLE `quantrivien` (
  `MaQTV` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `TenQTV` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Matkhau` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quantrivien`
--

INSERT INTO `quantrivien` (`MaQTV`, `TenQTV`, `Matkhau`) VALUES
('H227', NULL, '123456'),
('Trang', NULL, 'abc123');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` int(255) NOT NULL,
  `MaLSP` int(255) NOT NULL,
  `TenLSP` varchar(50) DEFAULT NULL,
  `TenSP` varchar(50) DEFAULT NULL,
  `AnhSP` varchar(250) DEFAULT NULL,
  `Soluong` int(255) DEFAULT NULL,
  `Dongia` decimal(18,0) DEFAULT NULL,
  `Mota` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `TenLSP`, `TenSP`, `AnhSP`, `Soluong`, `Dongia`, `Mota`) VALUES
(1, 4444, 'Đá ruby', 'Đá Tanzanite', 'https://ni68.vn/wp-content/uploads/2017/12/10-tanzanite.jpg', 198, '145698123', 'Đá Tanzanite rất hiếm và chỉ được tìm thấy dưới chân núi Mount Kilimanjaro ở Tanzania thuộc Đông Phi. Loại đá này có màu xanh thẫm và phảng phất tím. Nguồn tài nguyên đá rất hạn chế, theo tính toán của các chuyên gia thì chỉ có thể khai thác đá Tanzanite '),
(2, 3331, 'Tranh sơn dầu', 'Tranh sơn thủy', 'https://scontent.fhan2-2.fna.fbcdn.net/v/t1.6435-9/123072721_177035347350038_1316393893365392023_n.png?_nc_cat=104&ccb=1-3&_nc_sid=730e14&_nc_ohc=4a2V2XbzpGYAX8PLNK0&_nc_ht=scontent.fhan2-2.fna&oh=379a8773f1b1db7d182f912903c4bca7&oe=60E4736E', 179, '5000000', 'Một bức tranh sơn thủy bằng tâm tình cùng nỗi nhớ quê hương của chính tác giả.'),
(374, 4441, 'Vật phẩm phong thủy', 'Tượng Phật Thích Ca đá Lapis Lazuli', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/October/11/Tuong-Phat-Thich-Ca-da-Lapis-Lazuli-0.JPG', 1678, '2', '-Tượng Phật Thích Ca đá Lapis Lazuli ngồi trên đài sen, đá có lẫn vàng găm. Tượng Phật được cửa hàng chế tác theo mẫu tượng Phật Ngọc Hoà Bình.\r\n-Chất liệu: đá Lapis Lazuli, một vài người gọi là đá Thiên Thanh\r\n-Kích thước tượng phật: cao 140m, ngang 75mm, dầy 50mm'),
(375, 4445, 'Đá quý khác', 'Cây quýt tài lộc đá ngọc vàng lớn', 'https://thegioidaquy.net/hinh-anh-san-pham/2012/November/30/Cay-quyt-tai-loc-da-ngoc-vang-lon-0.JPG', 2567, '2', 'Vật phẩm phong thuỷ: cây quất phong thuỷ đem lại may mắn và giàu có\r\n\r\nChất liệu: đá ngọc vàng\r\n\r\nHình dạng: cây quất đá ngọc vàng lớn\r\n\r\nKích thước: dài 32mm, rộng 18mm, cao 36mm'),
(376, 4445, 'Vật phẩm phong thủy', 'Đá vàng găm 920', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/September/13/Da-vang-gam-920-0.JPG', 1478, '3', 'Trang sức phong thuỷ: đá vàng găm phong thuỷ giúp trừ tà, trấn trạch, hoá giải khí xấu trong nhà.\r\n\r\nHình dạng: viên đá vàng găm thô hình dạng vô định\r\n\r\nChất liệu: vàng găm Pyrite\r\n\r\nKích thước đá luôn đế: nặng 920 gram, cao 120mm, dài 120mm, ngang 70mm.'),
(377, 4445, 'Vật phẩm phong thủy', 'Bồn tụ tài Cá Rồng đá mã não', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/May/13/Bon-tu-tai-Ca-Rong-da-ma-nao-0-small.JPG', 1378, '2', 'rang sức phong thuỷ: Tụ Tài Bồn phong thuỷ đem lại may mắn dư dả, giàu có, thăng tiến sự nghiệp, phù hợp cho người kinh doanh mua bán và quan trường.\r\n\r\nChất liệu: đá mã não\r\n\r\nHình dạng: đá mã não chạm hình Cá và Rồng, đá Việt Nam có tinh thể thạch anh kim sa\r\n\r\nKích thước vật phẩm: dài 185mm, ngang 135mm, cao 65mm, nặng 2kg2.'),
(378, 4445, 'Vật phẩm phong thủy', 'Tỳ hưu đá thạch anh khói đậm 75', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/May/6/Ty-huu-da-thach-anh-khoi-dam-75-0.JPG', 2579, '350', 'Trang sức phong thuỷ: Tỳ hưu phong thuỷ đem lại tài lộc, may mắn.\r\n\r\nChất liệu: đá thạch anh khói đậm có sớ, có chổ đá đậm gần như đá thạch anh đen.\r\n\r\nHình dạng: đá thạch anh chạm hình Tỳ Hưu nằm trên Đồng tiền\r\n\r\nKích thước Tỳ Hưu: dài 75mm, ngang 45mm, cao 45mm'),
(379, 4442, 'Đá thạch anh', 'Đá thạch anh vàng mài giác', 'https://thegioidaquy.net/hinh-anh-san-pham/2015/August/5/Da-thach-anh-vang-mai-giac-0.JPG', 23567, '200000', 'thạch anh vàng thiên nhiên, thạch anh vàng đẹp màu đá từ vàng chanh vàng lửa cho đến vàng khói vàng trà, đá có sắc mạnh sáng, đá sạch mây như ngọc, không qua bất cứ xử lý nào. Các viên thạch anh vàng này được thợ cắt mài tinh xảo, giác bóng lấp lánh như kim cương, rất thích hợp để làm mặt dây chuyền nam nữ hoặc làm nhẫn vàng nhẫn bạc.'),
(380, 4442, 'Đá thạch anh', 'Mặt đá thạch anh tím bán theo cara', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/July/1/Mat-da-thach-anh-tim-giac-ban-theo-cara-0.JPG', 2478, '180', 'Lô đá thạch anh tím trong đậm, mài giác rất đẹp. Thích hợp mua làm quà tặng mẹ, quà tặng bạn gái, quà tặng sếp, tặng sinh nhật.'),
(381, 4442, 'Đá thạch anh', 'Hang đá thạch anh tím đậm cao 21cm', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/July/1/Hang-da-thach-anh-tim-dam-cao-21cm-0.JPG', 4689, '345', 'Đây là vật phẩm phong thuỷ đá thạch anh đem lại may mắn và tài lộc mạnh. Thích hợp để làm quà tặng mừng tân gia, quà chúc khai trương đại cát, quà tặng biếu sếp. Người nhận sẽ rất phấn thích khi nhận được món quà tặng giá trị như vầy.\r\n\r\nChất liệu: đá thạch anh tím\r\n\r\nHình dạng: hang động đá thạch anh tím đậm\r\n\r\nKính thước hang đá luôn đế: cao 210mm, ngang 200mm, rộng 165mm, nặng 5,9 kg.'),
(382, 4442, 'Đá thạch anh', 'Mặt Tỳ Hưu đá thạch anh tím đậm', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/June/9/Mat-Ty-Huu-da-thach-anh-tim-dam-0.JPG', 1680, '300', 'Trang sức phong thuỷ: mặt tỳ hưu đá thạch anh tím phong thuỷ đem lại tài lộc và may mắn.\r\n\r\nChất liệu: đá thạch anh\r\n\r\nHình dạng: mặt dây chuyền tỳ hưu đá thạch anh tím đeo cổ\r\n\r\nKích thước: dài 27-30mm, ngang 15-17mm, cao 12-15mm'),
(383, 4442, 'Đá thạch anh', 'Mặt đá thạch anh tóc vàng kiểm định đá quý', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/May/23/Mat-da-thach-anh-toc-vang-kiem-dinh-da-quy-0.JPG', 2456, '467', 'Trang sức phong thuỷ: mặt đá thạch anh phong thuỷ đem lại may mắn, giúp tăng trí nhớ, phù hợp cho người mạng Thổ và mạng Kim.\r\n\r\nChất liệu: đá thạch anh tóc vàng\r\n\r\nHình dạng: giọt nước đá thạch anh tóc vàng tự nhiên\r\n\r\nKích thước mặt đá: cao 16mm, ngang 22mm, dày 10mm'),
(384, 4443, 'Đá cẩm thạch', 'Nhện phong thuỷ ', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/November/11/Nhen-phong-thuy-da-cam-thach-trang-0.JPG', 2578, '1', 'Loại trang sức đá: mặt dây chuyền Nhện phong thuỷ đem lại may mắn, giàu có vượt bậc, phù hợp cho các thương nhân, doanh nhân, chủ doanh nghiệp.\r\n\r\nChất liệu: đá cẩm thạch natural jadeite\r\n\r\nHình dạng: Nhện phong thuỷ nằm trên chiếc lá\r\n\r\nKích thước trung bình: dài 35mm, ngang 25mm, dày 8mm\r\n\r\nMua mặt đá được tặng kèm dây đeo cổ.'),
(385, 4443, 'Đá cẩm thạch', 'Phật bản mệnh Phổ Hiền ', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/February/17/Phat-ban-menh-Pho-Hien-da-cam-thach-xanh-0.JPG', 2456, '2', 'Trang sức phong thuỷ: mặt phật bản mệnh cho tuổi Thìn, Tỵ mạng Mộc và Hoả, hộ mệnh đem lại bình an, khai sáng trí huệ giúp học tập, làm việc được nhanh nhạy, thuận lợi.\r\n\r\nChất liệu: đá cẩm thạch A tự nhiên\r\n\r\nHình dạng: mặt dây chuyền phật bản mệnh Phổ Hiền đá cẩm thạch A\r\n\r\nKích thước mặt đá: đường kính 45mm, dày 6mm\r\n\r\nTặng kèm dây đeo cổ và túi gấm đẹp'),
(386, 4443, 'Đá cẩm thạch', 'Phật bản mệnh tuổi Tý ', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/February/17/Phat-ban-menh-tuoi-Ty-da-cam-thach-trang-0.JPG', 1345, '1', 'Trang sức phong thuỷ: mặt phật bản mệnh tuổi Tý hợp cho mạng Kim và Thuỷ, giúp hộ mệnh đem lại bình an.\r\n\r\nChất liệu: đá cẩm thạch\r\n\r\nHình dạng: mặt đá cẩm thạch chạm hình phật bản mệnh Thiên Thủ\r\n\r\nKích thước mặt phật: ngang 21-22mm, cao 35-36mm, dày 6-7mm\r\n\r\nTặng kèm dây đeo cổ và túi gấm đẹ'),
(387, 2221, 'Vòng tay', 'Vòng dây rút Hoa Mẫu Đơn ', 'https://thegioidaquy.net/hinh-anh-san-pham/2013/December/24/Vong-day-rut-Hoa-Mau-Don-da-cam-thach-0.JPG', 2467, '1', 'Trang sức phong thuỷ: Vòng tay hoa Mẫu Đơn phong thuỷ đem lại nhiều may mắn về tình cảm và tình duyên.\r\n\r\nChất liệu: vòng dây rút mặt đá cẩm thạch\r\n\r\nHình dạng: vòng tay dây rút xanh mặt hoa Mẫu Đơn bằng đá cẩm thạch'),
(388, 4443, 'Đá cẩm thạch', 'Phật Bất Động Minh Vương ', 'https://thegioidaquy.net/hinh-anh-san-pham/2013/December/10/Phat-ban-menh-Bat-Dong-Minh-Vuong-da-cam-thach-xanh-ly-tuoi-2.JPG', 1256, '750', 'Trang sức phong thuỷ: phật bản mệnh hộ mệnh cho tuổi Dậu mạng Mộc hay mạng Hoả, giúp học hành đạt nhiều thành tựu, sự nghiệp mau thăng tiến\r\n\r\nChất liệu: đá cẩm thạch A lên lý tươi rất đẹp\r\n\r\nHình dạng: phật bản mệnh Bất Động Minh Vương đá cẩm thạch A\r\n\r\nKích thước trung bình: ngang 22mm, cao 37mm, dày 5mm'),
(389, 4444, 'Đá ruby', 'Đại Thế Chí đá quý ruby đỏ ', 'https://thegioidaquy.net/hinh-anh-san-pham/2018/March/15/Quan-Am-da-ruby-do-thien-nhien-237ct-co-giam-dinh-da-quy-SJC-0.jpg', 2467, '1', 'Chất liệu: đá Ruby đỏ huyết ánh titan sáng đẹp, mặt chạm 3D rất có hồn.\r\n\r\nKích thước mặt: cao 62mm- ngang 36mm- dày 13mm- nặng 237.3 cara.\r\n\r\n- Mặt chạm khắc hình Đại Thế Chí có Đồng Tử kế bên, ngài đứng trên đài Sen, tay cầm cành Sen và gậy Như Ý với ý nghĩa phong thủy là phật bản mệnh cho tuổi Ngọ đem lại bình an, giúp vượt qua hoạn nạn, gia đạo được phúc như ý, con cháu đầy đàn, phù hợp cho cặp vợ chồng hiếm muộn đường con cái.'),
(390, 4444, 'Đá ruby', 'Rồng đá Ruby', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/May/12/Rong-da-Ruby-0.JPG', 23571, '1', 'Trang sức phong thuỷ: mặt dây chuyền hình Rồng phong thuỷ đem lại may mắn quyền lực, tăng uy quyền, thăng tiến sự nghiệp, phù hợp cho người mạng Hoả và mạng Thổ.\r\n\r\nChất liệu: đá Ruby ánh Titan, sao nhẹ\r\n\r\nHình dạng: mặt dây chuyền đá Ruby chạm hình Rồng ôm Châu\r\n\r\nKích thước: cao 31mm, ngang 21mm, dầy 7mm.'),
(391, 4444, 'Đá ruby', 'Di Lặc Ruby nam phi 50', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/April/8/Di-Lac-Ruby-nam-phi-50-0.JPG', 2467, '500', 'Trang sức phong thuỷ: mặt phật Di Lặc đá phong thuỷ đem lại giàu có, sức khoẻ và giảm stress\r\n\r\nChất liệu: đá ruby nam phi\r\n\r\nHình dạng: mặt dây chuyền đá Ruby chạm phật Di lặc\r\n\r\nKích thước mặt phật: cao 50mm, ngang 53mm, dày 18mm, nặng 67g ( 335.6ct )'),
(392, 4444, 'Đá ruby', 'Đá ruby giá rẻ làm nhẫn', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/September/6/Da-ruby-gia-re-lam-nhan-0.JPG', 2449485, '80', 'Chất liệu: đá Ruby\r\n\r\nHình dạng: mặt đá Ruby đủ kích thước làm mặt nhẫn\r\n\r\nKích thước: đá có hình Oval và Tròn, nhỏ tầm đầu đũa cho đến to bằng đầu ngón tay. Hình chụp kèm có đồng xu 200đ để dễ hình dung kích thước.'),
(393, 4445, 'Đá quý khác', 'Mặt đá Rhodonite lớn', 'https://thegioidaquy.net/hinh-anh-san-pham/2012/April/19/Mat-da-Rhodonite-0.JPG', 2456, '450', 'Trang sức phong thuỷ: mặt đá Rhodonite phong thuỷ đem lại tài lộc may mắn tình duyên.\r\n\r\nChất liệu: đá Rhodonite( còn gọi là Hồng ngọc thạch)\r\n\r\nKích thước: ngang 3.5cm, cao 5.5cm'),
(834, 4441, 'Vật phẩm phong thủy', 'Tượng Phật Thích Ca ', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/October/11/Tuong-Phat-Thich-Ca-da-Lapis-Lazuli-0.JPG', 1678, '2', '-Tượng Phật Thích Ca đá Lapis Lazuli ngồi trên đài sen, đá có lẫn vàng găm. Tượng Phật được cửa hàng chế tác theo mẫu tượng Phật Ngọc Hoà Bình.\r\n-Chất liệu: đá Lapis Lazuli, một vài người gọi là đá Thiên Thanh\r\n-Kích thước tượng phật: cao 140m, ngang 75mm, dầy 50mm'),
(835, 4445, 'Đá quý khác', 'Cây quýt tài lộc đá ngọc ', 'https://thegioidaquy.net/hinh-anh-san-pham/2012/November/30/Cay-quyt-tai-loc-da-ngoc-vang-lon-0.JPG', 2567, '2', 'Vật phẩm phong thuỷ: cây quất phong thuỷ đem lại may mắn và giàu có\r\n\r\nChất liệu: đá ngọc vàng\r\n\r\nHình dạng: cây quất đá ngọc vàng lớn\r\n\r\nKích thước: dài 32mm, rộng 18mm, cao 36mm'),
(836, 4441, 'Vật phẩm phong thủy', 'Đá vàng 920', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/September/13/Da-vang-gam-920-0.JPG', 1478, '3', 'Trang sức phong thuỷ: đá vàng găm phong thuỷ giúp trừ tà, trấn trạch, hoá giải khí xấu trong nhà.\r\n\r\nHình dạng: viên đá vàng găm thô hình dạng vô định\r\n\r\nChất liệu: vàng găm Pyrite\r\n\r\nKích thước đá luôn đế: nặng 920 gram, cao 120mm, dài 120mm, ngang 70mm.'),
(837, 4441, 'Vật phẩm phong thủy', 'Bồn tụ tài Cá Rồng đá mã não BN', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/May/13/Bon-tu-tai-Ca-Rong-da-ma-nao-0-small.JPG', 1378, '2', 'rang sức phong thuỷ: Tụ Tài Bồn phong thuỷ đem lại may mắn dư dả, giàu có, thăng tiến sự nghiệp, phù hợp cho người kinh doanh mua bán và quan trường.\r\n\r\nChất liệu: đá mã não\r\n\r\nHình dạng: đá mã não chạm hình Cá và Rồng, đá Việt Nam có tinh thể thạch anh kim sa\r\n\r\nKích thước vật phẩm: dài 185mm, ngang 135mm, cao 65mm, nặng 2kg2.'),
(838, 4441, 'Vật phẩm phong thủy', 'Tỳ hưu ', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/May/6/Ty-huu-da-thach-anh-khoi-dam-75-0.JPG', 2579, '350', 'Trang sức phong thuỷ: Tỳ hưu phong thuỷ đem lại tài lộc, may mắn.\r\n\r\nChất liệu: đá thạch anh khói đậm có sớ, có chổ đá đậm gần như đá thạch anh đen.\r\n\r\nHình dạng: đá thạch anh chạm hình Tỳ Hưu nằm trên Đồng tiền\r\n\r\nKích thước Tỳ Hưu: dài 75mm, ngang 45mm, cao 45mm'),
(839, 4442, 'Đá thạch anh', 'Đá thạch anh vàng mài giác 12', 'https://thegioidaquy.net/hinh-anh-san-pham/2015/August/5/Da-thach-anh-vang-mai-giac-0.JPG', 23567, '200000', 'thạch anh vàng thiên nhiên, thạch anh vàng đẹp màu đá từ vàng chanh vàng lửa cho đến vàng khói vàng trà, đá có sắc mạnh sáng, đá sạch mây như ngọc, không qua bất cứ xử lý nào. Các viên thạch anh vàng này được thợ cắt mài tinh xảo, giác bóng lấp lánh như kim cương, rất thích hợp để làm mặt dây chuyền nam nữ hoặc làm nhẫn vàng nhẫn bạc.'),
(840, 4442, 'Đá thạch anh', 'Mặt đá thạch anh ', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/July/1/Mat-da-thach-anh-tim-giac-ban-theo-cara-0.JPG', 2478, '180', 'Lô đá thạch anh tím trong đậm, mài giác rất đẹp. Thích hợp mua làm quà tặng mẹ, quà tặng bạn gái, quà tặng sếp, tặng sinh nhật.'),
(841, 4442, 'Đá thạch anh', 'Hang đá thạch anh tím đậm cao 30cm', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/July/1/Hang-da-thach-anh-tim-dam-cao-21cm-0.JPG', 4689, '345', 'Đây là vật phẩm phong thuỷ đá thạch anh đem lại may mắn và tài lộc mạnh. Thích hợp để làm quà tặng mừng tân gia, quà chúc khai trương đại cát, quà tặng biếu sếp. Người nhận sẽ rất phấn thích khi nhận được món quà tặng giá trị như vầy.\r\n\r\nChất liệu: đá thạch anh tím\r\n\r\nHình dạng: hang động đá thạch anh tím đậm\r\n\r\nKính thước hang đá luôn đế: cao 210mm, ngang 200mm, rộng 165mm, nặng 5,9 kg.'),
(842, 4442, 'Đá thạch anh', 'Mặt Tỳ Hưu đá thạch anh tím', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/June/9/Mat-Ty-Huu-da-thach-anh-tim-dam-0.JPG', 1680, '300', 'Trang sức phong thuỷ: mặt tỳ hưu đá thạch anh tím phong thuỷ đem lại tài lộc và may mắn.\r\n\r\nChất liệu: đá thạch anh\r\n\r\nHình dạng: mặt dây chuyền tỳ hưu đá thạch anh tím đeo cổ\r\n\r\nKích thước: dài 27-30mm, ngang 15-17mm, cao 12-15mm'),
(843, 4442, 'Đá thạch anh', 'Mặt đá thạch anh tóc vàng kiểm định đá', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/May/23/Mat-da-thach-anh-toc-vang-kiem-dinh-da-quy-0.JPG', 2456, '467', 'Trang sức phong thuỷ: mặt đá thạch anh phong thuỷ đem lại may mắn, giúp tăng trí nhớ, phù hợp cho người mạng Thổ và mạng Kim.\r\n\r\nChất liệu: đá thạch anh tóc vàng\r\n\r\nHình dạng: giọt nước đá thạch anh tóc vàng tự nhiên\r\n\r\nKích thước mặt đá: cao 16mm, ngang 22mm, dày 10mm'),
(844, 4443, 'Đá cẩm thạch', 'Nhện phong thuỷ đá cẩm thạch', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/November/11/Nhen-phong-thuy-da-cam-thach-trang-0.JPG', 2578, '1', 'Loại trang sức đá: mặt dây chuyền Nhện phong thuỷ đem lại may mắn, giàu có vượt bậc, phù hợp cho các thương nhân, doanh nhân, chủ doanh nghiệp.\r\n\r\nChất liệu: đá cẩm thạch natural jadeite\r\n\r\nHình dạng: Nhện phong thuỷ nằm trên chiếc lá\r\n\r\nKích thước trung bình: dài 35mm, ngang 25mm, dày 8mm\r\n\r\nMua mặt đá được tặng kèm dây đeo cổ.'),
(845, 4443, 'Đá cẩm thạch', 'Phật bản mệnh Phổ Hiền đá cẩm thạch trắng', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/February/17/Phat-ban-menh-Pho-Hien-da-cam-thach-xanh-0.JPG', 2456, '2', 'Trang sức phong thuỷ: mặt phật bản mệnh cho tuổi Thìn, Tỵ mạng Mộc và Hoả, hộ mệnh đem lại bình an, khai sáng trí huệ giúp học tập, làm việc được nhanh nhạy, thuận lợi.\r\n\r\nChất liệu: đá cẩm thạch A tự nhiên\r\n\r\nHình dạng: mặt dây chuyền phật bản mệnh Phổ Hiền đá cẩm thạch A\r\n\r\nKích thước mặt đá: đường kính 45mm, dày 6mm\r\n\r\nTặng kèm dây đeo cổ và túi gấm đẹp'),
(846, 4443, 'Đá cẩm thạch', 'Phật bản mệnh tuổi Tý đá cẩm thạch đen', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/February/17/Phat-ban-menh-tuoi-Ty-da-cam-thach-trang-0.JPG', 1345, '1', 'Trang sức phong thuỷ: mặt phật bản mệnh tuổi Tý hợp cho mạng Kim và Thuỷ, giúp hộ mệnh đem lại bình an.\r\n\r\nChất liệu: đá cẩm thạch\r\n\r\nHình dạng: mặt đá cẩm thạch chạm hình phật bản mệnh Thiên Thủ\r\n\r\nKích thước mặt phật: ngang 21-22mm, cao 35-36mm, dày 6-7mm\r\n\r\nTặng kèm dây đeo cổ và túi gấm đẹ'),
(847, 2221, 'Vòng tay', 'Vòng dây rút Hoa Mẫu Đơn đá cẩm thạch đen', 'https://thegioidaquy.net/hinh-anh-san-pham/2013/December/24/Vong-day-rut-Hoa-Mau-Don-da-cam-thach-0.JPG', 2467, '1', 'Trang sức phong thuỷ: Vòng tay hoa Mẫu Đơn phong thuỷ đem lại nhiều may mắn về tình cảm và tình duyên.\r\n\r\nChất liệu: vòng dây rút mặt đá cẩm thạch\r\n\r\nHình dạng: vòng tay dây rút xanh mặt hoa Mẫu Đơn bằng đá cẩm thạch'),
(848, 4443, 'Đá cẩm thạch', 'Phật bản mệnh Bất Động Minh Vương đá cẩm thạch', 'https://thegioidaquy.net/hinh-anh-san-pham/2013/December/10/Phat-ban-menh-Bat-Dong-Minh-Vuong-da-cam-thach-xanh-ly-tuoi-2.JPG', 1256, '750', 'Trang sức phong thuỷ: phật bản mệnh hộ mệnh cho tuổi Dậu mạng Mộc hay mạng Hoả, giúp học hành đạt nhiều thành tựu, sự nghiệp mau thăng tiến\r\n\r\nChất liệu: đá cẩm thạch A lên lý tươi rất đẹp\r\n\r\nHình dạng: phật bản mệnh Bất Động Minh Vương đá cẩm thạch A\r\n\r\nKích thước trung bình: ngang 22mm, cao 37mm, dày 5mm'),
(849, 4444, 'Đá ruby', 'Đại Thế Chí đá quý ruby đỏ thiên nhiên 237ct', 'https://thegioidaquy.net/hinh-anh-san-pham/2018/March/15/Quan-Am-da-ruby-do-thien-nhien-237ct-co-giam-dinh-da-quy-SJC-0.jpg', 2467, '1', 'Chất liệu: đá Ruby đỏ huyết ánh titan sáng đẹp, mặt chạm 3D rất có hồn.\r\n\r\nKích thước mặt: cao 62mm- ngang 36mm- dày 13mm- nặng 237.3 cara.\r\n\r\n- Mặt chạm khắc hình Đại Thế Chí có Đồng Tử kế bên, ngài đứng trên đài Sen, tay cầm cành Sen và gậy Như Ý với ý nghĩa phong thủy là phật bản mệnh cho tuổi Ngọ đem lại bình an, giúp vượt qua hoạn nạn, gia đạo được phúc như ý, con cháu đầy đàn, phù hợp cho cặp vợ chồng hiếm muộn đường con cái.'),
(850, 4444, 'Đá ruby', 'Rồng đá Ruby 99', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/May/12/Rong-da-Ruby-0.JPG', 23571, '1', 'Trang sức phong thuỷ: mặt dây chuyền hình Rồng phong thuỷ đem lại may mắn quyền lực, tăng uy quyền, thăng tiến sự nghiệp, phù hợp cho người mạng Hoả và mạng Thổ.\r\n\r\nChất liệu: đá Ruby ánh Titan, sao nhẹ\r\n\r\nHình dạng: mặt dây chuyền đá Ruby chạm hình Rồng ôm Châu\r\n\r\nKích thước: cao 31mm, ngang 21mm, dầy 7mm.'),
(851, 4444, 'Đá ruby', 'Di Lặc Ruby nam phi', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/April/8/Di-Lac-Ruby-nam-phi-50-0.JPG', 2467, '500', 'Trang sức phong thuỷ: mặt phật Di Lặc đá phong thuỷ đem lại giàu có, sức khoẻ và giảm stress\r\n\r\nChất liệu: đá ruby nam phi\r\n\r\nHình dạng: mặt dây chuyền đá Ruby chạm phật Di lặc\r\n\r\nKích thước mặt phật: cao 50mm, ngang 53mm, dày 18mm, nặng 67g ( 335.6ct )'),
(852, 4444, 'Đá ruby', 'Đá ruby giá rẻ', 'https://thegioidaquy.net/hinh-anh-san-pham/2014/September/6/Da-ruby-gia-re-lam-nhan-0.JPG', 2449485, '80', 'Chất liệu: đá Ruby\r\n\r\nHình dạng: mặt đá Ruby đủ kích thước làm mặt nhẫn\r\n\r\nKích thước: đá có hình Oval và Tròn, nhỏ tầm đầu đũa cho đến to bằng đầu ngón tay. Hình chụp kèm có đồng xu 200đ để dễ hình dung kích thước.'),
(853, 4445, 'Đá quý khác', 'Mặt đá Rhodonite', 'https://thegioidaquy.net/hinh-anh-san-pham/2012/April/19/Mat-da-Rhodonite-0.JPG', 2456, '450', 'Trang sức phong thuỷ: mặt đá Rhodonite phong thuỷ đem lại tài lộc may mắn tình duyên.\r\n\r\nChất liệu: đá Rhodonite( còn gọi là Hồng ngọc thạch)\r\n\r\nKích thước: ngang 3.5cm, cao 5.5cm'),
(854, 1111, 'Gốm cổ vật', 'Chum xanh trắng cửu long thế kỷ 18', 'https://baogialai.com.vn/dataimages/202101/original/images2987207_4a.jpg', 58, '13', 'Đồ cổ được tìm thấy ở thế kỉ 18.'),
(855, 1111, 'Gốm cổ vật', 'Nậm Phượng hiệu nội phủ thế kỷ 19', 'https://baogialai.com.vn/dataimages/202101/original/images2987202_2anh.jpg', 100, '19', 'Nậm Phượng hiệu nội phủ thế kỷ 19. Một cổ vật rất đẹp và mới.'),
(856, 1111, 'Gốm cổ vật', 'Đỉnh ngọc thế kỷ 20 ', 'https://baogialai.com.vn/dataimages/202101/original/images2987200_1lecongson.jpg', 98, '79', 'Đỉnh ngọc thế kỷ 20 .Một sản phẩm được tìm thấy vào đầu năm 20.'),
(857, 1112, 'Gốm phong thủy', 'Bình Hút Lộc Phúc Lộc Thọ Vẽ Vàng Kim H30', 'https://bizweb.dktcdn.net/thumb/small/100/367/882/products/z2229759095127-ffd166a75917b887ba4835a7ad542550.jpg?v=1608709819147', 198, '2', 'TÊN SẢN PHẨM: Bình Hút Lộc Phúc Lộc Thọ Vẽ Vàng Kim H30\r\n\r\nChất liệu: Gốm sứ \r\n\r\nLoại: Vẽ Vàng Kim\r\n\r\nXuất sứ: Bát Tràng\r\n\r\nKích thước: \r\n\r\n- Cao: 30 cm'),
(858, 1112, 'Gốm phong thủy', 'Bình Hút Lộc Vẽ Sen Cá ', 'https://bizweb.dktcdn.net/thumb/small/100/367/882/products/z2229759161118-f162b4f9603330644f0846ce92d8b36b.jpg?v=1608711867507', 389, '4', 'TÊN SẢN PHẨM: Bình hút lộc vẽ sen cá nền đỏ H35 \r\n\r\nChất liệu: Gốm sứ \r\n\r\nLoại: Vẽ Vàng Kim\r\n\r\nXuất sứ: Bát Tràng\r\n\r\nKích thước: \r\n\r\n- Cao: 35 cm'),
(884, 1111, 'Gốm cổ vật', 'Chum xanh trắng cửu long', 'https://baogialai.com.vn/dataimages/202101/original/images2987207_4a.jpg', 58, '13000000', 'Đồ cổ được tìm thấy ở thế kỉ 18.'),
(885, 1111, 'Gốm cổ vật', 'Nậm Phượng hiệu nội phủ ', 'https://baogialai.com.vn/dataimages/202101/original/images2987202_2anh.jpg', 100, '19', 'Nậm Phượng hiệu nội phủ thế kỷ 19. Một cổ vật rất đẹp và mới.'),
(886, 1111, 'Gốm cổ vật', 'Đỉnh ngọc', 'https://baogialai.com.vn/dataimages/202101/original/images2987200_1lecongson.jpg', 98, '79', 'Đỉnh ngọc thế kỷ 20 .Một sản phẩm được tìm thấy vào đầu năm 20.'),
(887, 1112, 'Gốm phong thủy', 'Bình Hút Lộc Phúc Lộc Thọ Vẽ Vàng Kim', 'https://bizweb.dktcdn.net/thumb/small/100/367/882/products/z2229759095127-ffd166a75917b887ba4835a7ad542550.jpg?v=1608709819147', 198, '2', 'TÊN SẢN PHẨM: Bình Hút Lộc Phúc Lộc Thọ Vẽ Vàng Kim H30\r\n\r\nChất liệu: Gốm sứ \r\n\r\nLoại: Vẽ Vàng Kim\r\n\r\nXuất sứ: Bát Tràng\r\n\r\nKích thước: \r\n\r\n- Cao: 30 cm'),
(888, 1112, 'Gốm phong thủy', 'Bình Hút Lộc Vẽ Sen Cá Nền Đỏ Vẽ Vàng Kim', 'https://bizweb.dktcdn.net/thumb/small/100/367/882/products/z2229759161118-f162b4f9603330644f0846ce92d8b36b.jpg?v=1608711867507', 389, '4', 'TÊN SẢN PHẨM: Bình hút lộc vẽ sen cá nền đỏ \r\n\r\nChất liệu: Gốm sứ \r\n\r\nLoại: Vẽ Vàng Kim\r\n\r\nXuất sứ: Bát Tràng\r\n\r\nKích thước: \r\n\r\n- Cao: 35 cm'),
(889, 1113, 'Gốm sứ gia dụng', 'Bộ Bát Đĩa Men Kem Vẽ Sen Nâu', 'https://bizweb.dktcdn.net/thumb/small/100/367/882/products/f786cb61c8c82e9677d9.jpg?v=1575090509577', 5896, '2', 'TÊN SẢN PHẨM: Bộ bát đĩa men kem vẽsen nâu\r\n\r\nChất liệu: Gốm sứ men kem\r\n\r\nLoại: Vẽ sen nâu\r\n\r\nXuất sứ: Bát Tràng\r\n\r\nBộ sản phẩm gồm: \r\n- 6 bát cơm: 180k\r\n- Âu cơm: 250k\r\n- Đĩa tròn: \r\nPhi 16: 60k\r\nPhi 18: 80k\r\nPhi 20: 100k\r\n- 1 bát nhật: 65k\r\n- 1 bát tô phi 16: 100k\r\n- 1 bát tô phi 20: 145k\r\n- 1 đĩa bầu dục S2: 150k\r\n- 1 đĩa bầu dục S1: 165k\r\n- Đĩa sao S1: 170k\r\n- Đĩa sao S2: 125k\r\n- khay vuông S2: 155k\r\n- Khay vuông S1: 170k\r\n- Đĩa lá sâu: 140k\r\n- Khay CN S3: 100k\r\n- Đĩa ảo phi 20: 115k\r\n- Đĩa'),
(890, 1113, 'Gốm sứ gia dụng', 'Bộ Bát Đĩa Men Kem Vẽ Sen Ba Cành', 'https://bizweb.dktcdn.net/thumb/small/100/367/882/products/bo-so-2-a2905ebf-5192-46c0-8312-4902f7291673.jpg?v=1576472024397', 234, '1', 'TÊN SẢN PHẨM: Bộ bát đĩa men kem vẽ sen ba cành\r\n\r\nChất liệu: Gốm sứ men kem\r\n\r\nLoại: Vẽ ba cành\r\n\r\nXuất sứ: Bát Tràng\r\n\r\nBộ sản phẩm gồm: \r\n\r\n- 10 bát cơm: 300k\r\n\r\n- 1 âu cơm: 235k\r\n\r\n- 1 bát tô phi 16: 90k\r\n\r\n- 1 đĩa ảo phi 18: 85k\r\n\r\n- 1 đĩa bầu dục múi S2: 135k\r\n\r\n- 1 đĩa lá nông: 130k\r\n\r\n- 1 bát mắm: 25k\r\n\r\n- 1 đĩa muối: 25k\r\n\r\n- 1 khay gia vị 2 ngăn: 30k'),
(891, 1113, 'Gốm sứ gia dụng', 'Lọ Hoa Men Cốm Vẽ Sen', 'https://bizweb.dktcdn.net/thumb/small/100/367/882/products/lh0048.jpg?v=1575534575663', 98, '220', 'TÊN SẢN PHẨM: Lọ hoa men cốm vẽ hoa sen\r\n\r\nChất liệu: Gốm sứ \r\n\r\nXuất sứ: Bát Tràng\r\n\r\nKích thước: \r\n\r\nCao: 27 cm\r\n\r\nRộng: 12 cm'),
(901, 1113, 'Gốm sứ gia dụng', 'Bộ Bát Đĩa Men Kem', 'https://bizweb.dktcdn.net/thumb/small/100/367/882/products/f786cb61c8c82e9677d9.jpg?v=1575090509577', 5896, '2', 'TÊN SẢN PHẨM: Bộ bát đĩa men kem vẽsen nâu\r\n\r\nChất liệu: Gốm sứ men kem\r\n\r\nLoại: Vẽ sen nâu\r\n\r\nXuất sứ: Bát Tràng\r\n\r\nBộ sản phẩm gồm: \r\n- 6 bát cơm: 180k\r\n- Âu cơm: 250k\r\n- Đĩa tròn: \r\nPhi 16: 60k\r\nPhi 18: 80k\r\nPhi 20: 100k\r\n- 1 bát nhật: 65k\r\n- 1 bát tô phi 16: 100k\r\n- 1 bát tô phi 20: 145k\r\n- 1 đĩa bầu dục S2: 150k\r\n- 1 đĩa bầu dục S1: 165k\r\n- Đĩa sao S1: 170k\r\n- Đĩa sao S2: 125k\r\n- khay vuông S2: 155k\r\n- Khay vuông S1: 170k\r\n- Đĩa lá sâu: 140k\r\n- Khay CN S3: 100k\r\n- Đĩa ảo phi 20: 115k\r\n- Đĩa'),
(902, 1113, 'Gốm sứ gia dụng', 'Bộ Bát Đĩa Men Kem Vẽ ', 'https://bizweb.dktcdn.net/thumb/small/100/367/882/products/bo-so-2-a2905ebf-5192-46c0-8312-4902f7291673.jpg?v=1576472024397', 234, '1', 'TÊN SẢN PHẨM: Bộ bát đĩa men kem vẽ sen ba cành\r\n\r\nChất liệu: Gốm sứ men kem\r\n\r\nLoại: Vẽ ba cành\r\n\r\nXuất sứ: Bát Tràng\r\n\r\nBộ sản phẩm gồm: \r\n\r\n- 10 bát cơm: 300k\r\n\r\n- 1 âu cơm: 235k\r\n\r\n- 1 bát tô phi 16: 90k\r\n\r\n- 1 đĩa ảo phi 18: 85k\r\n\r\n- 1 đĩa bầu dục múi S2: 135k\r\n\r\n- 1 đĩa lá nông: 130k\r\n\r\n- 1 bát mắm: 25k\r\n\r\n- 1 đĩa muối: 25k\r\n\r\n- 1 khay gia vị 2 ngăn: 30k'),
(903, 1113, 'Gốm sứ gia dụng', 'Lọ Hoa Men Cốm ', 'https://bizweb.dktcdn.net/thumb/small/100/367/882/products/lh0048.jpg?v=1575534575663', 98, '220', 'TÊN SẢN PHẨM: Lọ hoa men cốm vẽ hoa sen\r\n\r\nChất liệu: Gốm sứ \r\n\r\nXuất sứ: Bát Tràng\r\n\r\nKích thước: \r\n\r\nCao: 27 cm\r\n\r\nRộng: 12 cm'),
(904, 3333, 'Tranh trừu tượng', 'Trừu Tượng (Abstract)', 'https://bantranh.com/wp-content/uploads/2021/05/5F6451EC-F1A9-4305-B997-0E024DF284B6-600x468.jpeg', 134, '32', 'Oil pátel & acrylic on canvas\r\nKích thước 90x70x1,5(cm)'),
(905, 3333, 'Tranh trừu tượng', 'Who am I', 'https://bantranh.com/wp-content/uploads/2021/05/inbound9116288948534554471-300x300.jpg', 464, '4', 'Acrylic trên canvas\r\n50×50cm\r\n2020'),
(906, 3333, 'Tranh trừu tượng', 'Ngàn Hoa Khoe Sắc', 'https://bantranh.com/wp-content/uploads/2021/04/20-300x300.jpg', 356, '21', 'Tác phẩm Ngàn Hoa Khoe Sắc\r\nKích thước 80 x 150cm\r\nChất liệu Acrylic/toan\r\nSáng tác 2021'),
(907, 3332, 'Tranh phong cảnh', 'Sớm', 'https://bantranh.com/wp-content/uploads/2021/06/1FF08C7C-5A89-482B-A252-EF0318D3DEFB-e1623039640899-600x832.jpeg', 345, '1', 'Chất liệu Sơn dầu\r\nKích thước 50×70'),
(908, 3332, 'Tranh phong cảnh', 'Chiều quê', 'https://bantranh.com/wp-content/uploads/2021/05/IMG_20210526_161248-600x418.jpg', 245, '9', 'Chất liệu: Sơn dầu\r\nKích thước: 80x 100cm\r\nSáng tác: 2019'),
(909, 3331, 'Tranh sơn dầu', 'Em mùa hương', 'https://bantranh.com/wp-content/uploads/2021/06/AEFF1AE0-28C6-42AE-8B8B-1A9575B2E714-300x225.jpeg', 244, '5', 'Tác phẩm: Em mùa hương\r\nKích cỡ: 50x70cm\r\nChất liệu acrylic trên toan'),
(910, 3331, 'Tranh sơn dầu', 'Tận hưởng sắc hương', 'https://bantranh.com/wp-content/uploads/2021/06/5A9C2922-C480-4579-811D-73EFC1DE7021-e1622691828894-600x927.jpeg', 345, '7', 'Kích thước: 60*80\r\nChất liệu: Acrylic trên toan\r\nNăm sáng tác: 2021'),
(911, 3335, 'Tranh thiếu nữ', 'Thiếu nữ', 'https://bantranh.com/wp-content/uploads/2019/07/IMG_20190508_124043-1-600x764.jpg', 2489, '15', 'Acrylic trên toàn\r\n73x92cm'),
(912, 3335, 'Tranh thiếu nữ', 'Mùa hoa tím', 'https://bantranh.com/wp-content/uploads/2021/05/IMG_20210516_171901-600x700.jpg', 445, '15', 'Chất liệu: Sơn dầu/toan\r\nKích thước 120x140cm\r\nSáng tác: 2021'),
(913, 3335, 'Tranh thiếu nữ', 'Cô nàng yếm đỏ', 'https://bantranh.com/wp-content/uploads/2021/04/IMG_20210418_214151-600x450.jpg', 246, '12', 'Chất liệu: Sơn mài\r\nKích thước: 60×80 cm'),
(1004, 3333, 'Tranh trừu tượng', 'Tranh (Abstract)', 'https://bantranh.com/wp-content/uploads/2021/05/5F6451EC-F1A9-4305-B997-0E024DF284B6-600x468.jpeg', 134, '32', 'Oil pátel & acrylic on canvas\r\nKích thước 90x70x1,5(cm)'),
(1006, 3333, 'Tranh trừu tượng', 'Tranh Ngàn Hoa Khoe Sắc', 'https://bantranh.com/wp-content/uploads/2021/04/20-300x300.jpg', 356, '21', 'Tác phẩm Ngàn Hoa Khoe Sắc\r\nKích thước 80 x 150cm\r\nChất liệu Acrylic/toan\r\nSáng tác 2021'),
(1007, 3332, 'Tranh phong cảnh', 'Tranh Sớm', 'https://bantranh.com/wp-content/uploads/2021/06/1FF08C7C-5A89-482B-A252-EF0318D3DEFB-e1623039640899-600x832.jpeg', 345, '1', 'Chất liệu Sơn dầu\r\nKích thước 50×70'),
(1008, 3332, 'Tranh phong cảnh', 'Tranh Chiều quê', 'https://bantranh.com/wp-content/uploads/2021/05/IMG_20210526_161248-600x418.jpg', 245, '9', 'Chất liệu: Sơn dầu\r\nKích thước: 80x 100cm\r\nSáng tác: 2019'),
(1009, 3331, 'Tranh sơn dầu', 'Tranh Em mùa hương', 'https://bantranh.com/wp-content/uploads/2021/06/AEFF1AE0-28C6-42AE-8B8B-1A9575B2E714-300x225.jpeg', 244, '5', 'Tác phẩm: Em mùa hương\r\nKích cỡ: 50x70cm\r\nChất liệu acrylic trên toan'),
(1010, 3331, 'Tranh sơn dầu', 'Tranh Tận hưởng sắc hương', 'https://bantranh.com/wp-content/uploads/2021/06/5A9C2922-C480-4579-811D-73EFC1DE7021-e1622691828894-600x927.jpeg', 345, '7', 'Kích thước: 60*80\r\nChất liệu: Acrylic trên toan\r\nNăm sáng tác: 2021'),
(1011, 3335, 'Tranh thiếu nữ', 'Tranh Thiếu nữ', 'https://bantranh.com/wp-content/uploads/2019/07/IMG_20190508_124043-1-600x764.jpg', 2489, '15000', 'Acrylic trên toàn\r\n73x92cm'),
(1012, 3335, 'Tranh thiếu nữ', 'Tranh Mùa hoa tím', 'https://bantranh.com/wp-content/uploads/2021/05/IMG_20210516_171901-600x700.jpg', 445, '15000', 'Chất liệu: Sơn dầu/toan\r\nKích thước 120x140cm\r\nSáng tác: 2021'),
(1013, 3335, 'Tranh thiếu nữ', 'Tranh Cô nàng yếm đỏ', 'https://bantranh.com/wp-content/uploads/2021/04/IMG_20210418_214151-600x450.jpg', 246, '12000', 'Chất liệu: Sơn mài\r\nKích thước: 60×80 cm'),
(1014, 3336, 'Tranh nghệ thuật', 'Tranh sinh tồn', 'https://bantranh.com/wp-content/uploads/2021/06/63A48DB4-85F6-4C82-B3FD-6B74DB3E3A9C-600x800.jpeg', 4576, '15000', 'Chất liệu màu nước kết hợp\r\nKích thước: 30cm x 40cm\r\nNăm sáng tác 2021'),
(1015, 3336, 'Tranh nghệ thuật', 'Tranh Góc sân nhà', 'https://bantranh.com/wp-content/uploads/2021/06/E3352B89-78C4-493A-B7FE-949CCE54BAAC-600x834.jpeg', 245, '3000', 'Chất liệu màu nước trên giấy\r\nKích thước: 37cm x 27 cm\r\nSáng tác 2021'),
(1016, 3337, 'Tranh treo tường', 'Tranh cúc họa mi', 'https://bantranh.com/wp-content/uploads/2020/10/z2075505578122_cc915199012fe1f6d8ba1b8b85b1b509-300x300.jpg', 246, '9000', 'Cúc Họa Mi\r\nChất liệu: Acrylic on Canvas\r\nKích cỡ: 50 x 50'),
(1017, 3337, 'Tranh treo tường', 'Tranh Ngày vui', 'https://bantranh.com/wp-content/uploads/2021/03/received_446189679938871-600x805.jpeg', 378, '10000', 'Tác phẩm : Ngày Vui\r\nKích thước : 60/80 cm\r\nChất liệu : acrylic on canvas.\r\nCó giấy chứng nhận độc bản.'),
(1018, 3337, 'Tranh treo tường', 'Tranh Bước chân ta về', 'https://bantranh.com/wp-content/uploads/2021/04/132381724_925712007963023_3748676070056167276_n-600x913.jpg', 2346, '7000', 'Kích thước: 60x90cm\r\nChất liệu: Acrylic'),
(1019, 2221, 'Vòng tay', 'Vòng tay hoa hồng trắng', 'https://cf.shopee.vn/file/6a2df1b070d9462d2147aeeec56047ab', 279, '8000', 'Vòng đẹp'),
(1020, 2221, 'Vòng tay', 'Vòng vàng phát sáng', 'https://cf.shopee.vn/file/2b3a5932198fafd360891a5d55eff9f0', 234, '19000', 'Điểm nổi bật là phát sáng vào đêm'),
(1021, 2223, 'Nhẫn', 'Nhẫn vương niệm ', 'https://vnn-imgs-f.vgcloud.vn/2018/08/14/07/nhan-elizabeth.jpeg', 182, '30000', 'Nhẫn vương niệm ngọc bích xanh '),
(1022, 2223, 'Nhẫn', 'Nhẫn cưới trong thế giới cổ đại', 'https://vcdn-vnexpress.vnecdn.net/2015/10/12/VNE-The-Elusive-Ancient-Origin-7061-6399-1444644247.jpg', 246, '267000', 'Một biểu tượng đặc trưng của thế giới cổ đại'),
(1023, 2223, 'Nhẫn', 'Nhẫn ai cập', 'https://kenh14cdn.com/2018/12/22/photo-1-15454580392671662562431.jpg', 389, '672000', 'Chiếc nhẫn được tìm thấy ở ai cập, lên đến 2000 năm tuổi'),
(1024, 2222, 'Dây chuyền', 'Dây chuyền vàng hoa', 'https://sc04.alicdn.com/kf/HTB1mhRcX0zvK1RkSnfoq6zMwVXaw.jpg', 244, '23000', 'Hình ảnh hoa 5 lá kết hợp với nguyên liệu vàng, tọa nên tổng thể hài hòa'),
(1025, 2224, 'Khuyên tai', 'Khuyên tai cổ trang yêu tinh', 'https://cf.shopee.vn/file/2ccf233da47914e53d41f08e3f93f80d', 146, '14000', 'Lấy cảm hứng từ chiếc tai của yêu tinh'),
(1026, 2224, 'Khuyên tai', 'Khuyên tai cổ trang', 'https://cf.shopee.vn/file/1ce1e5db86c6ddf7a84d4cf2150cdde5', 456, '24000', 'Khuyên tai cosplay cổ trang'),
(1027, 2224, 'Khuyên tai', 'Khuyên tai hoa sen  dài', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnwPWNTTvBC2BPNLsGtizuRfHsPlXro8FCfg&usqp=CAU', 135, '12000', 'Lấy cảm hứng từ những bông hoa sen việt nam kết hợp với hình ảnh giợt mưa rơi'),
(1028, 2225, 'Bộ vòng', 'Bộ trang sức hình con chuồn chuồn', 'https://sc01.alicdn.com/kf/HTB1iI6_iljTBKNjSZFwq6AG4XXaj/223288984/HTB1iI6_iljTBKNjSZFwq6AG4XXaj.jpg_.webp', 345, '19000', 'Lấy hình ảnh từ những con chuồn chuồn việt nam'),
(1029, 2225, 'Bộ vòng', 'Bộ trang sức tì hưu', 'https://vn-test-11.slatic.net/p/5e6a07318f1cb63b78105d9325854a40.jpg_720x720q80.jpg_.webp', 234, '45300', 'đẹp'),
(1030, 2226, 'Cài áo', 'Cài áo ngọc hoa hồng', 'https://toplist.vn/images/800px/himhipshop-289088.jpg', 190, '900', 'Lấy cảm hứng từ những bông hồng nhẹ nhàng thuần khiết'),
(1031, 2226, 'Cài áo', 'Cài áo bạch ngoc', 'https://www.pnj.com.vn/images/detailed/72/trpf00w000001-cai-ao-bach-ngoc-lien-ma-bac-pnj-art-01.png', 2354, '500', 'sản phẩm cài áo bạch ngọc'),
(1032, 2226, 'Cài áo', 'Cài áo hình con ong', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGXCcHszqMX-TJ1DKthaelg8t_w_zPqWBzd0V8n8jne0SKN6dPixcba9yfE3Yf1zIelPo&usqp=CAU', 145, '1890', 'Cài áo hình con ong');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`MaBL`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaQTV` (`MaQTV`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `chitietphieudat`
--
ALTER TABLE `chitietphieudat`
  ADD KEY `MaPD` (`MaPD`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  ADD KEY `MaPN` (`MaPN`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  ADD KEY `MaPX` (`MaPX`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Indexes for table `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`MaDM`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `khachhang`
--
ALTER TABLE `khachhang`
  ADD PRIMARY KEY (`MaKH`),
  ADD UNIQUE KEY `khachhang_Email` (`Email`),
  ADD UNIQUE KEY `khachhang_Sdt` (`Sdt`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`);

--
-- Indexes for table `nhacungcap`
--
ALTER TABLE `nhacungcap`
  ADD PRIMARY KEY (`MaNCC`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`MaNV`),
  ADD UNIQUE KEY `nv_cmnd` (`Cmnd`),
  ADD UNIQUE KEY `nv_Sdt` (`Sdt`);

--
-- Indexes for table `phieudat`
--
ALTER TABLE `phieudat`
  ADD PRIMARY KEY (`MaPD`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Indexes for table `phieunhap`
--
ALTER TABLE `phieunhap`
  ADD PRIMARY KEY (`MaPN`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `phieuxuat`
--
ALTER TABLE `phieuxuat`
  ADD PRIMARY KEY (`MaPX`),
  ADD KEY `MaNV` (`MaNV`);

--
-- Indexes for table `quantrivien`
--
ALTER TABLE `quantrivien`
  ADD PRIMARY KEY (`MaQTV`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD UNIQUE KEY `Ten_SP` (`TenSP`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `MaKH` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `MaHD` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `chitietphieunhap`
--
ALTER TABLE `chitietphieunhap`
  MODIFY `MaPN` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `chitietphieuxuat`
--
ALTER TABLE `chitietphieuxuat`
  MODIFY `MaPX` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `MaHD` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `khachhang`
--
ALTER TABLE `khachhang`
  MODIFY `MaKH` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1039;

--
-- AUTO_INCREMENT for table `phieudat`
--
ALTER TABLE `phieudat`
  MODIFY `MaPD` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2057;

--
-- AUTO_INCREMENT for table `phieunhap`
--
ALTER TABLE `phieunhap`
  MODIFY `MaPN` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `MaSP` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1065;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
