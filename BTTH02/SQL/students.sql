-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 22, 2023 lúc 03:39 PM
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
-- Cấu trúc bảng cho bảng `attendance`
--

CREATE TABLE `attendance` (
  `ID_Attendance` int(11) NOT NULL,
  `Ngay` date DEFAULT NULL,
  `ID_KhoaHoc` int(11) DEFAULT NULL,
  `ID_SinhVien` int(11) DEFAULT NULL,
  `TrangThaiThamDu` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `attendance`
--

INSERT INTO `attendance` (`ID_Attendance`, `Ngay`, `ID_KhoaHoc`, `ID_SinhVien`, `TrangThaiThamDu`) VALUES
(1, '2023-01-11', 101, 2051063401, 'Có mặt'),
(2, '2023-01-21', 103, 2051063402, 'Có mặt'),
(3, '2023-01-01', 104, 2051063403, 'Vắng mặt'),
(4, '2023-01-02', 102, 2051063404, 'Có mặt'),
(5, '2023-01-05', 105, 2051063476, 'Vắng mặt'),
(6, '2023-01-13', 101, 2051063401, 'Có mặt'),
(7, '2023-01-14', 102, 2051063402, 'Có mặt'),
(8, '2023-01-15', 103, 2051063403, 'Vắng mặt'),
(9, '2023-01-20', 101, 2051063404, 'Có mặt'),
(10, '2023-01-30', 103, 2051063476, 'Vắng mặt');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `classroom`
--

CREATE TABLE `classroom` (
  `ID_Lop` int(11) NOT NULL,
  `ID_KhoaHoc` int(11) DEFAULT NULL,
  `ID_GiangVien` int(11) DEFAULT NULL,
  `KhoangThoiGian` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `classroom`
--

INSERT INTO `classroom` (`ID_Lop`, `ID_KhoaHoc`, `ID_GiangVien`, `KhoangThoiGian`) VALUES
(1, 101, 1111, 'Thứ 2, 8:00-10:00'),
(2, 102, 1112, 'Thứ 3, 14:00-16:00'),
(3, 101, 1111, 'Thứ 4, 10:00-12:00'),
(4, 103, 1113, 'Thứ 5, 16:00-18:00'),
(5, 104, 1115, 'Thứ 6, 8:00-10:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lecturers`
--

CREATE TABLE `lecturers` (
  `ID_GiangVien` int(11) NOT NULL,
  `Ten` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ThongTinLienHe` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `lecturers`
--

INSERT INTO `lecturers` (`ID_GiangVien`, `Ten`, `Email`, `ThongTinLienHe`) VALUES
(1111, 'Trần Văn Quyết', 'tranquyet@gmail.com', '0223456789, Ha Noi'),
(1112, 'Hoàng Cẩm Linh', 'hoanglinh@gmail.com', '0259753453, Hai Phong'),
(1113, 'Phạm Thu Hồng', 'phamhong@gmail.com', '0278949612, Hue'),
(1114, 'Lê Chí Thiện', 'lethien@gmail.com', '0556789123, Da Nang'),
(1115, 'Trần Thị Hồng', 'tranhong@gmail.com', '0987654329, Ho Chi Minh');

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
-- Cấu trúc bảng cho bảng `science`
--

CREATE TABLE `science` (
  `ID_KhoaHoc` int(11) NOT NULL,
  `MaKhoaHoc` varchar(255) DEFAULT NULL,
  `TieuDe` varchar(255) DEFAULT NULL,
  `MoTa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `science`
--

INSERT INTO `science` (`ID_KhoaHoc`, `MaKhoaHoc`, `TieuDe`, `MoTa`) VALUES
(101, 'TL01', 'Toán căn bản', 'Khóa học cung cấp kiến thức toán căn bản cho sinh viên.'),
(102, 'TL02', 'Lập trình C++', 'Khóa học hướng dẫn lập trình bằng ngôn ngữ C++.'),
(103, 'TL03', 'Tiếng Anh giao tiếp', 'Khóa học tập trung vào kỹ năng giao tiếp tiếng Anh hàng ngày.'),
(104, 'TL04', 'Quản lý dự án', 'Khóa học giúp học viên nắm vững kiến thức và kỹ năng quản lý dự án.'),
(105, 'TL05', 'Kế Toán Căn Bản', 'Khóa học giới thiệu về kế toán căn bản và quy trình kế toán.'),
(106, 'TL06', 'Marketing', 'Khóa học về kỹ năng marketing trên nền tảng kỹ thuật số.'),
(107, 'TL07', 'Học thuật và nghiên cứu', 'Khóa học hướng dẫn phương pháp nghiên cứu và viết báo cáo học thuật.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `student`
--

CREATE TABLE `student` (
  `ID_SinhVien` int(11) NOT NULL,
  `Ten` varchar(255) NOT NULL,
  `NgaySinh` date DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `ThongTinLienHe` text DEFAULT NULL,
  `KhoaHoc` varchar(255) DEFAULT NULL,
  `HocKy` int(11) DEFAULT NULL,
  `GiaiDoan` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `student`
--

INSERT INTO `student` (`ID_SinhVien`, `Ten`, `NgaySinh`, `Email`, `ThongTinLienHe`, `KhoaHoc`, `HocKy`, `GiaiDoan`) VALUES
(2051063401, 'Nguyen Van A', '1995-05-10', 'nguyenvana@gmail.com', '023456789, Ha Noi', 'Toan can ban', 2, 'Hoc ky 1'),
(2051063402, 'Tran Thi B', '1998-09-15', 'tranthib@gmail.com', '087654321, Ho Chi Minh', 'Lap trinh C++', 1, 'Giai doan 2'),
(2051063403, 'Le Van C', '1997-03-22', 'levanc@gmail.com', '056789123, Da Nang', 'Tieng Anh giao tiep', 3, 'Hoc ky 2'),
(2051063404, 'Pham Thi D', '2000-01-05', 'phamthid@gmail.com', '089456123, Hue', 'Quan ly du an', 2, 'Giai doan 1'),
(2051063476, 'Hoang Van E', '1999-07-18', 'hoangvane@gmail.com', '059753456, Hai Phong', 'Ke toan can ban', 1, 'Hoc ky 1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `RoleID` int(11) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`UserID`, `Password`, `RoleID`, `Email`) VALUES
(1, 'password1', 1, 'admin1@example.com'),
(2, 'password2', 2, 'teacher2@example.com'),
(3, 'password3', 2, 'teacher3@example.com'),
(4, 'password4', 3, 'sinhvien1@example.com'),
(5, 'password5', 3, 'sinhvien2@example.com'),
(6, 'password6', 1, 'admin2@example.com'),
(7, 'password7', 2, 'teacher07@example.com'),
(8, 'password8', 3, 'sinhvien08@example.com'),
(9, 'password9', 2, 'teacher09@example.com'),
(10, 'password10', 1, 'admin10@example.com');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`ID_Attendance`),
  ADD KEY `ID_KhoaHoc` (`ID_KhoaHoc`),
  ADD KEY `ID_SinhVien` (`ID_SinhVien`);

--
-- Chỉ mục cho bảng `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`ID_Lop`),
  ADD KEY `ID_KhoaHoc` (`ID_KhoaHoc`),
  ADD KEY `ID_GiangVien` (`ID_GiangVien`);

--
-- Chỉ mục cho bảng `lecturers`
--
ALTER TABLE `lecturers`
  ADD PRIMARY KEY (`ID_GiangVien`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`RoleID`);

--
-- Chỉ mục cho bảng `science`
--
ALTER TABLE `science`
  ADD PRIMARY KEY (`ID_KhoaHoc`);

--
-- Chỉ mục cho bảng `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`ID_SinhVien`);

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
-- AUTO_INCREMENT cho bảng `attendance`
--
ALTER TABLE `attendance`
  MODIFY `ID_Attendance` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `classroom`
--
ALTER TABLE `classroom`
  MODIFY `ID_Lop` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `student`
--
ALTER TABLE `student`
  MODIFY `ID_SinhVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2051063477;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `attendance`
--
ALTER TABLE `attendance`
  ADD CONSTRAINT `attendance_ibfk_1` FOREIGN KEY (`ID_KhoaHoc`) REFERENCES `science` (`ID_KhoaHoc`),
  ADD CONSTRAINT `attendance_ibfk_2` FOREIGN KEY (`ID_SinhVien`) REFERENCES `student` (`ID_SinhVien`);

--
-- Các ràng buộc cho bảng `classroom`
--
ALTER TABLE `classroom`
  ADD CONSTRAINT `classroom_ibfk_1` FOREIGN KEY (`ID_KhoaHoc`) REFERENCES `science` (`ID_KhoaHoc`),
  ADD CONSTRAINT `classroom_ibfk_2` FOREIGN KEY (`ID_GiangVien`) REFERENCES `lecturers` (`ID_GiangVien`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`RoleID`) REFERENCES `roles` (`RoleID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
