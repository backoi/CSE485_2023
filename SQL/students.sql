-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 21, 2023 lúc 03:38 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `students`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `giangvien`
--

CREATE TABLE `giangvien` (
  `ID_GiangVien` int(11) NOT NULL,
  `Ten` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ThongTinLienHe` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `giangvien`
--

INSERT INTO `giangvien` (`ID_GiangVien`, `Ten`, `Email`, `ThongTinLienHe`) VALUES
(1111, 'Trần Văn Quyết', 'tranquyet@gmail.com', '0223456789, Ha Noi'),
(1112, 'Hoàng Cẩm Linh', 'hoanglinh@gmail.com', '0259753453, Hai Phong'),
(1113, 'Phạm Thu Hồng', 'phamhong@gmail.com', '0278949612, Hue'),
(1114, 'Lê Chí Thiện', 'lethien@gmail.com', '0556789123, Da Nang'),
(1115, 'Trần Thị Hồng', 'tranhong@gmail.com', '0987654329, Ho Chi Minh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khoahoc`
--

CREATE TABLE `khoahoc` (
  `ID_KhoaHoc` int(11) NOT NULL,
  `MaKhoaHoc` varchar(255) DEFAULT NULL,
  `TieuDe` varchar(255) DEFAULT NULL,
  `MoTa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `khoahoc`
--

INSERT INTO `khoahoc` (`ID_KhoaHoc`, `MaKhoaHoc`, `TieuDe`, `MoTa`) VALUES
(1, 'TL01', 'Toán căn bản', 'Khóa học cung cấp kiến thức toán căn bản cho sinh viên'),
(2, 'TL02', 'Lập trình C++', 'Khóa học hướng dẫn lập trình bằng ngôn ngữ C++.'),
(3, 'TL03', 'Tiếng Anh giao tiếp', 'Khóa học tập trung vào kỹ năng giao tiếp tiếng Anh hàng ngày.'),
(4, 'TL04', 'Quản lý dự án', 'Khóa học giúp học viên nắm vững kiến thức và kỹ năng quản lý dự án.'),
(5, 'TL05', 'Kế Toán Căn Bản', 'Khóa học giới thiệu về kế toán căn bản và quy trình kế toán.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lophoc`
--

CREATE TABLE `lophoc` (
  `ID_LopHoc` int(11) NOT NULL,
  `ID_KhoaHoc` int(11) DEFAULT NULL,
  `ID_GiangVien` int(11) DEFAULT NULL,
  `KhoangThoiGian` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lophoc`
--

INSERT INTO `lophoc` (`ID_LopHoc`, `ID_KhoaHoc`, `ID_GiangVien`, `KhoangThoiGian`) VALUES
(101, 1, 1111, 'Thứ 2, 8:00-10:00'),
(102, 2, 1113, 'Thứ 3, 14:00-16:00'),
(103, 3, 1112, 'Thứ 4, 10:00-12:00'),
(104, 5, 1115, 'Thứ 5, 16:00-18:00'),
(105, 4, 1114, 'Thứ 6, 8:00-10:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `RoleID` int(11) NOT NULL,
  `RoleName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`RoleID`, `RoleName`) VALUES
(1, 'Quản trị viên'),
(2, 'Giảng viên'),
(3, 'Sinh viên');

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

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suthamdu`
--

CREATE TABLE `suthamdu` (
  `ID_SuThamDu` int(11) NOT NULL,
  `Ngay` date DEFAULT NULL,
  `ID_KhoaHoc` int(11) DEFAULT NULL,
  `ID_SinhVien` int(11) DEFAULT NULL,
  `TrangThaiThamDu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `suthamdu`
--

INSERT INTO `suthamdu` (`ID_SuThamDu`, `Ngay`, `ID_KhoaHoc`, `ID_SinhVien`, `TrangThaiThamDu`) VALUES
(1, '2023-01-15', 4, 2051063000, 'Có mặt'),
(2, '2023-01-02', 1, 2051063002, 'Có mặt'),
(3, '2023-01-03', 3, 2051063002, 'Vắng mặt'),
(4, '2023-01-04', 2, 2051063001, 'Có mặt'),
(5, '2023-01-10', 5, 2051063004, 'Vắng mặt'),
(6, '2023-01-17', 3, 2051063000, 'Có mặt'),
(7, '2023-01-16', 2, 2051063001, 'Có mặt'),
(8, '2023-01-15', 1, 2051063002, 'Vắng mặt'),
(9, '2023-01-19', 5, 2051063004, 'Vắng mặt'),
(10, '2023-01-08', 4, 2051063004, 'Có mặt'),
(11, '2023-01-09', 2, 2051063000, 'Có mặt'),
(12, '2023-01-21', 5, 2051063000, 'Vắng mặt'),
(13, '2023-01-22', 1, 2051063004, 'Có mặt'),
(14, '2023-01-23', 3, 2051063003, 'Có mặt'),
(15, '2023-01-25', 4, 2051063002, 'Vắng mặt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `RoleID` int(11) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`UserID`, `Username`, `Password`, `RoleID`, `Email`) VALUES
(1, 'admin1', 'password1', 1, 'admin1@example.com'),
(2, 'teacher2', 'password2', 2, 'teacher2@example.com'),
(3, 'teacher3', 'password3', 2, 'teacher3@example.com'),
(4, 'sinhvien1', 'password4', 3, 'sinhvien1@example.com'),
(5, 'sinhvien2', 'password5', 3, 'sinhvien2@example.com'),
(6, 'admin2', 'password6', 1, 'admin2@example.com'),
(7, 'teacher3', 'password7', 2, 'teacher07@example.com'),
(8, 'sinhvien08', 'password8', 3, 'sinhvien08@example.com'),
(9, 'teacher09', 'password9', 2, 'teacher09@example.com'),
(10, 'admin10', 'password10', 1, 'admin10@example.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `giangvien`
--
ALTER TABLE `giangvien`
  ADD PRIMARY KEY (`ID_GiangVien`);

--
-- Chỉ mục cho bảng `khoahoc`
--
ALTER TABLE `khoahoc`
  ADD PRIMARY KEY (`ID_KhoaHoc`);

--
-- Chỉ mục cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD PRIMARY KEY (`ID_LopHoc`),
  ADD KEY `ID_KhoaHoc` (`ID_KhoaHoc`),
  ADD KEY `ID_GiangVien` (`ID_GiangVien`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`RoleID`);

--
-- Chỉ mục cho bảng `sinhvien`
--
ALTER TABLE `sinhvien`
  ADD PRIMARY KEY (`ID_SinhVien`);

--
-- Chỉ mục cho bảng `suthamdu`
--
ALTER TABLE `suthamdu`
  ADD PRIMARY KEY (`ID_SuThamDu`),
  ADD KEY `ID_KhoaHoc` (`ID_KhoaHoc`),
  ADD KEY `ID_SinhVien` (`ID_SinhVien`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`),
  ADD UNIQUE KEY `UC_Email` (`Email`),
  ADD KEY `RoleID` (`RoleID`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `suthamdu`
--
ALTER TABLE `suthamdu`
  MODIFY `ID_SuThamDu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `lophoc`
--
ALTER TABLE `lophoc`
  ADD CONSTRAINT `lophoc_ibfk_1` FOREIGN KEY (`ID_KhoaHoc`) REFERENCES `khoahoc` (`ID_KhoaHoc`),
  ADD CONSTRAINT `lophoc_ibfk_2` FOREIGN KEY (`ID_GiangVien`) REFERENCES `giangvien` (`ID_GiangVien`);

--
-- Các ràng buộc cho bảng `suthamdu`
--
ALTER TABLE `suthamdu`
  ADD CONSTRAINT `suthamdu_ibfk_1` FOREIGN KEY (`ID_KhoaHoc`) REFERENCES `khoahoc` (`ID_KhoaHoc`),
  ADD CONSTRAINT `suthamdu_ibfk_2` FOREIGN KEY (`ID_SinhVien`) REFERENCES `sinhvien` (`ID_SinhVien`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
