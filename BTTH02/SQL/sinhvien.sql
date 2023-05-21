-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 21, 2023 lúc 07:27 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `sinhvien`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sinhvien`
--

CREATE TABLE `sinhvien` (
  `ID_SinhVien` int(11) NOT NULL,
  `Ten` varchar(255) DEFAULT NULL,
  `NgaySinh` date DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ThongTinLienHe` text DEFAULT NULL,
  `KhoaHoc` varchar(255) DEFAULT NULL,
  `HocKy` varchar(255) DEFAULT NULL,
  `GiaiDoan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `sinhvien`
--

INSERT INTO `sinhvien` (`ID_SinhVien`, `Ten`, `NgaySinh`, `Email`, `ThongTinLienHe`, `KhoaHoc`, `HocKy`, `GiaiDoan`) VALUES
(2051063000, 'Nguyễn Thị Thu', '1998-09-15', 'nguyenthu@gmail.com', '0345121241, Ho Chi Minh', 'Lap trinh C++', '1', 'Giai doan 2'),
(2051063001, 'Hoàng Văn Kiên', '1999-07-18', 'hoangvan@gmail.com', '0159753456, Hai Phong', 'Ke toan can ban', '1', 'Hoc ky 1'),
(2051063002, 'Phạm Thị Điệp', '2000-01-05', 'phamthi@gmail.com', '0178945613, Hue', 'Quan ly du an', '2', 'Giai doan 1'),
(2051063003, 'Lê văn Cú', '1997-03-22', 'levan@gmail.com', '0123971799, Da Nang', 'Tieng Anh giao tiep', '3', 'Hoc ky 2'),
(2051063004, 'Trần Văn Hân', '1995-05-10', 'tranhan@gmail.com', '0123456789, Ha Noi', 'Toan can ban', '2', 'Hoc ky 1');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
