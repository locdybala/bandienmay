-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th1 14, 2021 lúc 02:35 PM
-- Phiên bản máy phục vụ: 10.4.17-MariaDB
-- Phiên bản PHP: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `bandienmay`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `email`, `password`, `admin_name`) VALUES
(1, 'locdybala@gmail.com', 'locdybala', 'Lộc Dybala');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'Laptop'),
(2, 'Tủ lạnh'),
(3, 'Máy giặt'),
(4, 'Điện thoại'),
(5, 'Tivi '),
(7, 'Máy ảnh');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_donhang`
--

CREATE TABLE `tbl_donhang` (
  `donhang_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `mahang` varchar(50) NOT NULL,
  `khachhang_id` int(11) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `tinhtrang` int(11) NOT NULL,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_donhang`
--

INSERT INTO `tbl_donhang` (`donhang_id`, `sanpham_id`, `soluong`, `mahang`, `khachhang_id`, `ngaythang`, `tinhtrang`, `huydon`) VALUES
(11, 21, 5, '8979', 14, '2019-10-04 02:29:52', 0, 0),
(12, 26, 6, '8979', 14, '2019-10-04 02:29:52', 0, 0),
(13, 20, 3, '4236', 15, '2019-10-04 02:33:55', 0, 0),
(14, 21, 4, '4236', 15, '2019-10-04 02:33:56', 0, 0),
(15, 20, 3, '6503', 16, '2019-10-04 02:34:56', 0, 0),
(16, 21, 4, '6503', 16, '2019-10-04 02:34:56', 0, 0),
(17, 21, 1, '2508', 17, '2019-10-04 02:35:19', 0, 0),
(18, 26, 3, '4249', 18, '2019-10-04 02:45:46', 0, 0),
(19, 26, 3, '8728', 19, '2019-10-04 02:46:40', 0, 0),
(20, 21, 1, '5037', 20, '2019-10-04 02:48:16', 0, 0),
(21, 20, 1, '5037', 20, '2019-10-04 02:48:17', 0, 0),
(22, 21, 1, '1594', 21, '2019-10-04 02:51:05', 0, 0),
(23, 20, 1, '1594', 21, '2019-10-04 02:51:05', 0, 0),
(28, 25, 3, '7785', 25, '2019-10-04 03:11:51', 0, 0),
(29, 22, 5, '7785', 25, '2019-10-04 03:11:52', 0, 0),
(30, 27, 2, '7785', 25, '2019-10-04 03:11:52', 0, 0),
(33, 20, 3, '7914', 28, '2019-10-05 05:38:42', 0, 0),
(34, 26, 1, '7914', 28, '2019-10-05 05:38:42', 0, 0),
(35, 25, 2, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(36, 26, 3, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(37, 27, 1, '6687', 27, '2019-10-09 09:48:42', 1, 2),
(48, 21, 2, '8100', 30, '2021-01-02 17:04:53', 0, 0),
(49, 28, 1, '8100', 30, '2021-01-02 17:04:53', 0, 0),
(50, 34, 1, '5639', 31, '2021-01-06 18:31:55', 1, 0),
(51, 44, 2, '5639', 31, '2021-01-06 18:31:55', 1, 0),
(52, 34, 1, '7507', 31, '2021-01-06 18:50:30', 0, 0),
(53, 44, 2, '7507', 31, '2021-01-06 18:50:30', 0, 0),
(54, 45, 1, '2095', 32, '2021-01-06 19:54:18', 0, 0),
(55, 40, 1, '2095', 32, '2021-01-06 19:54:18', 0, 0),
(56, 44, 1, '8881', 34, '2021-01-07 06:39:27', 0, 0),
(57, 34, 1, '8881', 34, '2021-01-07 06:39:27', 0, 0),
(58, 45, 3, '1052', 33, '2021-01-07 07:51:47', 1, 0),
(59, 44, 1, '1052', 33, '2021-01-07 07:51:47', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giaodich`
--

CREATE TABLE `tbl_giaodich` (
  `giaodich_id` int(11) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `soluong` int(11) NOT NULL,
  `magiaodich` varchar(50) NOT NULL,
  `ngaythang` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `khachhang_id` int(11) NOT NULL,
  `tinhtrangdon` int(11) NOT NULL DEFAULT 0,
  `huydon` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_giaodich`
--

INSERT INTO `tbl_giaodich` (`giaodich_id`, `sanpham_id`, `soluong`, `magiaodich`, `ngaythang`, `khachhang_id`, `tinhtrangdon`, `huydon`) VALUES
(3, 21, 2, '5737', '2019-10-04 02:57:00', 23, 0, 0),
(4, 26, 1, '6219', '2019-10-04 02:58:34', 24, 0, 0),
(5, 25, 3, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(6, 22, 5, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(7, 27, 2, '7785', '2019-10-04 03:11:52', 25, 0, 0),
(8, 21, 1, '5396', '2019-10-04 03:49:08', 26, 0, 0),
(9, 20, 3, '5396', '2019-10-04 03:49:08', 26, 0, 0),
(10, 20, 3, '7914', '2019-10-05 05:38:42', 28, 0, 0),
(11, 26, 1, '7914', '2019-10-05 05:38:42', 28, 0, 0),
(12, 25, 2, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(13, 26, 3, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(14, 27, 1, '6687', '2019-10-09 09:48:42', 27, 1, 2),
(15, 22, 1, '1125', '2019-10-09 09:47:17', 27, 1, 2),
(16, 24, 1, '1125', '2019-10-09 09:47:17', 27, 1, 2),
(17, 20, 1, '555', '2019-10-09 09:50:08', 27, 0, 2),
(18, 27, 1, '2511', '2020-12-27 08:42:59', 29, 0, 0),
(19, 21, 1, '2511', '2020-12-27 08:42:59', 29, 0, 0),
(20, 26, 1, '2511', '2020-12-27 08:42:59', 29, 0, 0),
(21, 17, 1, '2851', '2021-01-02 16:47:17', 30, 0, 0),
(22, 27, 1, '2851', '2021-01-02 16:47:17', 30, 0, 0),
(23, 21, 2, '9529', '2021-01-02 16:48:47', 30, 0, 0),
(24, 28, 1, '9529', '2021-01-02 16:48:47', 30, 0, 0),
(25, 21, 2, '8100', '2021-01-02 17:04:53', 30, 0, 0),
(26, 28, 1, '8100', '2021-01-02 17:04:53', 30, 0, 0),
(27, 34, 1, '5639', '2021-01-06 18:31:55', 31, 1, 0),
(28, 44, 2, '5639', '2021-01-06 18:31:55', 31, 1, 0),
(29, 34, 1, '7507', '2021-01-06 18:50:30', 31, 0, 0),
(30, 44, 2, '7507', '2021-01-06 18:50:30', 31, 0, 0),
(31, 45, 1, '2095', '2021-01-06 19:54:18', 32, 0, 0),
(32, 40, 1, '2095', '2021-01-06 19:54:18', 32, 0, 0),
(33, 44, 1, '8881', '2021-01-07 06:39:27', 34, 0, 0),
(34, 34, 1, '8881', '2021-01-07 06:39:27', 34, 0, 0),
(35, 45, 3, '1052', '2021-01-07 07:51:47', 33, 1, 0),
(36, 44, 1, '1052', '2021-01-07 07:51:47', 33, 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_giohang`
--

CREATE TABLE `tbl_giohang` (
  `giohang_id` int(11) NOT NULL,
  `tensanpham` varchar(100) NOT NULL,
  `sanpham_id` int(11) NOT NULL,
  `giasanpham` varchar(50) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_khachhang`
--

CREATE TABLE `tbl_khachhang` (
  `khachhang_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(200) NOT NULL,
  `note` text NOT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(100) NOT NULL,
  `giaohang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_khachhang`
--

INSERT INTO `tbl_khachhang` (`khachhang_id`, `name`, `phone`, `address`, `note`, `email`, `password`, `giaohang`) VALUES
(29, 'Ngô Đình Lộc', '0366280440', 'Thôn 9 phùng xá thạch thất hà nội', 'sadsa', 'tailanpx@gmail.com', '1daeecc678a37a01d37067f492bfa20f', 0),
(31, 'Nguyễn Văn A', 'Lộc Dybala', 'Thôn 9 phùng xá thạch thất hà nội', '123', 'locdybala11@gmail.com', '8613287991e02b68162dcc37689cf095', 0),
(32, 'Nguyễn Văn B', '023242131', 'Hà Tây', '1\r\n', 'lololo@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 0),
(33, 'Ngô Đình Lộc', '0366280440', 'Thôn 9 phùng xá thạch thất hà nội', 'sfdsf', 'loc@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 0),
(34, 'Ngô Đình Lộc', '0366280440', 'Thôn 9 phùng xá thạch thất hà nội', 'loc', 'loc@gmail.com', 'c4ca4238a0b923820dcc509a6f75849b', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `sanpham_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `sanpham_name` varchar(255) NOT NULL,
  `sanpham_chitiet` text NOT NULL,
  `sanpham_mota` text NOT NULL,
  `sanpham_gia` varchar(100) NOT NULL,
  `sanpham_giakhuyenmai` varchar(100) NOT NULL,
  `sanpham_active` int(11) NOT NULL,
  `sanpham_hot` int(11) NOT NULL,
  `sanpham_soluong` int(11) NOT NULL,
  `sanpham_image` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`sanpham_id`, `category_id`, `sanpham_name`, `sanpham_chitiet`, `sanpham_mota`, `sanpham_gia`, `sanpham_giakhuyenmai`, `sanpham_active`, `sanpham_hot`, `sanpham_soluong`, `sanpham_image`) VALUES
(29, 4, 'Điện thoại 1', '16gb', 'Iphone đẹp', '10000000', '9000000', 0, 0, 3, 'mk1.jpg'),
(30, 4, 'Điện thoại 2', '2gb', 'Chiếc điện thoại đẹp', '9000000', '8000000', 0, 0, 4, 'mk2.jpg'),
(31, 4, 'Điện thoại 3', '1000000', 'iphone đẹp', '8000000', '7000000', 0, 0, 2, 'mk3.jpg'),
(33, 1, 'Laptop2', 'laptop', 'laptop', '10000000', '9000000', 0, 0, 2, 'mk5.jpg'),
(34, 1, 'Laptop3', 'laptop', 'laptop', '23000000', '12000000', 0, 0, 2, 'mk5.jpg'),
(35, 2, 'Tủ lạnh 1', 'tủ lạnh', 'tủ lạnh', '1000000', '324234', 0, 0, 2, 'm7.jpg'),
(36, 2, 'Tủ lạnh 2', 'tủ lạnh', 'tủ lạnh', '100000', '90000', 0, 0, 324, 'm7.jpg'),
(37, 2, 'Tủ lạnh 3', 'tủ lạnh', 'tủ lạnh số 2', '1000000', '9000000', 0, 0, 2, 'm7.jpg'),
(38, 5, 'Ti vi 1', 'tivi', 'ti vi', '23000000', '9000000', 0, 0, 2, 'm4.jpg'),
(39, 5, 'Ti vi 2', 'tivi', 'ti vi', '10000000', '9000000', 0, 0, 2, 'm4.jpg'),
(40, 5, 'Ti vi 3', 'ti vi', 'ti vi ', '10000000', '9000000', 0, 0, 4, 'm4.jpg'),
(41, 3, 'Máy giặt 1', 'máy giặt', 'máy giặt', '10000000', '9000000', 0, 0, 2, 'm8.jpg'),
(42, 3, 'Máy giặt 2', 'máy giặt', 'máy giặt', '100000', '90000', 0, 0, 4, 'm8.jpg'),
(43, 3, 'Máy giặt 3', 'máy giặt', 'máy giặt', '1000000', '900000', 0, 0, 4, 'm8.jpg'),
(44, 7, 'Máy ảnh 1', 'máy ảnh', 'máy ảnh', '15000000', '12000000', 0, 0, 2, 'a4.jpg'),
(45, 7, 'Máy ảnh 2', 'máy ảnh', 'máy ảnh', '1000000', '9000000', 0, 0, 3, 'a4.jpg'),
(46, 0, '', '', '', '', '', 0, 0, 0, ''),
(47, 0, '', '', '', '', '', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_image` varchar(100) NOT NULL,
  `slider_caption` text NOT NULL,
  `slider_active` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `slider_caption`, `slider_active`) VALUES
(1, 'b2.jpg', 'I love Cô Đơn', 1),
(2, 'b3.jpg', 'Lộc Dybala ở đâu rẻ hơn ở đây hoàn tiền', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  ADD PRIMARY KEY (`donhang_id`),
  ADD KEY `sanpham_id` (`sanpham_id`,`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  ADD PRIMARY KEY (`giaodich_id`),
  ADD KEY `sanpham_id` (`sanpham_id`),
  ADD KEY `khachhang_id` (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  ADD PRIMARY KEY (`giohang_id`),
  ADD KEY `sanpham_id` (`sanpham_id`);

--
-- Chỉ mục cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  ADD PRIMARY KEY (`khachhang_id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`sanpham_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Chỉ mục cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tbl_donhang`
--
ALTER TABLE `tbl_donhang`
  MODIFY `donhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT cho bảng `tbl_giaodich`
--
ALTER TABLE `tbl_giaodich`
  MODIFY `giaodich_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tbl_giohang`
--
ALTER TABLE `tbl_giohang`
  MODIFY `giohang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT cho bảng `tbl_khachhang`
--
ALTER TABLE `tbl_khachhang`
  MODIFY `khachhang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `sanpham_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT cho bảng `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD CONSTRAINT `tbl_category_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `tbl_sanpham` (`category_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
