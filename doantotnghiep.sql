-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 14, 2021 at 06:49 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doantotnghiep`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(10) UNSIGNED NOT NULL,
  `brand_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_name`, `brand_keyword`, `brand_description`, `created_at`, `updated_at`) VALUES
(2, 'Phòng Khách', 'Gương decor, ghế decor, thảm decor, sofa decor, tranh decor, tượng decor', 'Long Decor - Chuyên cung cấp những sản phẩm decor uy tín, chất lượng, giá rẻ', '2021-07-27 12:38:23', '2021-07-28 22:33:35'),
(3, 'Phòng Bếp', 'Gương decor, ghế decor, thảm decor, sofa decor, tranh decor, tượng decor', 'Long Decor - Chuyên cung cấp những sản phẩm decor uy tín, chất lượng, giá rẻ', '2021-07-27 12:38:29', '2021-07-28 22:33:58'),
(4, 'Phòng Ngủ', 'Gương decor, ghế decor, thảm decor, sofa decor, tranh decor, tượng decor', 'Long Decor - Chuyên cung cấp những sản phẩm decor uy tín, chất lượng, giá rẻ', '2021-07-28 22:34:13', '2021-07-28 22:34:13'),
(5, 'Phòng Đọc Sách', 'Gương decor, ghế decor, thảm decor, sofa decor, tranh decor, tượng decor', 'Long Decor - Chuyên cung cấp những sản phẩm decor uy tín, chất lượng, giá rẻ', '2021-08-03 11:50:02', '2021-08-03 11:50:02'),
(6, 'Sân thượng', 'Gương decor, ghế decor, thảm decor, sofa decor, tranh decor, tượng decor', 'Long Decor - Chuyên cung cấp những sản phẩm decor uy tín, chất lượng, giá rẻ', '2021-08-12 01:37:30', '2021-08-12 01:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `categorys`
--

CREATE TABLE `categorys` (
  `category_id` int(10) UNSIGNED NOT NULL,
  `category_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categorys`
--

INSERT INTO `categorys` (`category_id`, `category_name`, `category_keyword`, `category_description`, `created_at`, `updated_at`) VALUES
(1, 'Ghế Decor', 'Ghế decor, gương decor, sofa decor', 'Long Decor - Chuyên cung cấp nhưng dụng cụ decor uy tín, giá rẻ, chất lượng', '2021-07-28 22:29:57', '2021-07-28 22:29:57'),
(2, 'Sofa Decor', 'Ghế decor, gương decor, sofa decor, tranh decor, tượng decor', 'Long Decor - Chuyên cung cấp nhưng dụng cụ decor uy tín, giá rẻ, chất lượng', '2021-07-28 22:30:55', '2021-07-28 22:30:55'),
(3, 'Gương Decor', 'Ghế decor, gương decor, sofa decor, tranh decor, tượng decor', 'Long Decor - Chuyên cung cấp nhưng dụng cụ decor uy tín, giá rẻ, chất lượng', '2021-07-28 22:31:28', '2021-07-28 22:31:28'),
(4, 'Thảm Decor', 'Ghế decor, gương decor, sofa decor, tranh decor, tượng decor', 'Long Decor - Chuyên cung cấp nhưng dụng cụ decor uy tín, giá rẻ, chất lượng', '2021-07-28 22:31:48', '2021-07-28 22:31:48'),
(5, 'Tranh Decor', 'Ghế decor, gương decor, sofa decor, tranh decor, tượng decor', 'Long Decor - Chuyên cung cấp nhưng dụng cụ decor uy tín, giá rẻ, chất lượng', '2021-07-28 22:48:08', '2021-07-28 22:48:08'),
(6, 'Đồ Bếp Decor', 'Ghế decor, gương decor, sofa decor, tranh decor, tượng decor', 'Long Decor - Chuyên cung cấp nhưng dụng cụ decor uy tín, giá rẻ, chất lượng', '2021-08-03 11:38:18', '2021-08-03 11:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `citys`
--

CREATE TABLE `citys` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `citys`
--

INSERT INTO `citys` (`city_id`, `city_name`, `city_type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `comment_customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_admin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_rating` int(11) DEFAULT NULL,
  `comment_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `user_id`, `product_id`, `comment_customer`, `comment_admin`, `comment_rating`, `comment_status`, `created_at`, `updated_at`) VALUES
(16, 2, 19, 'Wao sản phẩm mua về rất ưng ý luôn', 'Gì đấy', 5, 3, '2021-08-11 09:24:07', '2021-08-11 09:35:23'),
(17, 1, 19, 'Có gì đâu, được cái giao hàng nhanh vài hàng đẹp giá rẻ chất lượng chứ được cái gì', 'Xàm', 5, 3, '2021-08-11 09:35:44', '2021-08-12 02:16:46'),
(18, 1, 15, 'Hàng rất tốt', NULL, 5, 1, '2021-08-14 01:45:19', '2021-08-14 01:45:19');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_value` int(11) NOT NULL,
  `coupon_status` int(11) NOT NULL,
  `coupon_expiry` date NOT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`coupon_id`, `coupon_name`, `coupon_code`, `coupon_value`, `coupon_status`, `coupon_expiry`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Giảm giá mùa Covid', 'COVID19', 10, 1, '2021-08-05', '6,1,7,8,', '2021-07-30 09:04:54', '2021-08-04 01:06:50'),
(2, 'Giảm giá VIP', 'VIP2021', 100000, 2, '2021-08-05', '1,7,8,', '2021-07-30 09:05:29', '2021-08-04 01:33:31'),
(3, 'Giản giá mùa tuyển sinh 2021', 'TS2021', 200000, 2, '2021-08-19', '9,1,1,1,1,1,2,', '2021-08-02 09:26:27', '2021-08-11 08:13:29'),
(4, 'Thích thì giảm giá thôi', 'T8VV', 100000, 2, '2021-08-24', '1,', '2021-08-14 01:23:40', '2021-08-14 01:42:27');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `district_id` int(11) NOT NULL,
  `district_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district_type` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`district_id`, `district_name`, `district_type`, `city_id`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(16, 'Huyện Sóc Sơn', 'Huyện', 1),
(17, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R\'Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `image_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`image_id`, `product_id`, `image_name`, `created_at`, `updated_at`) VALUES
(18, 5, '7jt2_28.jpg', '2021-07-28 22:52:00', '2021-07-28 22:52:00'),
(19, 5, 'Ll6Y_29.jpg', '2021-07-28 22:52:00', '2021-07-28 22:52:00'),
(20, 5, 'Q2Cm_30.jpg', '2021-07-28 22:52:00', '2021-07-28 22:52:00'),
(21, 4, 'hXIi_28.jpg', '2021-07-28 22:53:54', '2021-07-28 22:53:54'),
(22, 4, 'w3cl_29.jpg', '2021-07-28 22:53:54', '2021-07-28 22:53:54'),
(23, 6, 'BfaB_25.jpg', '2021-07-28 22:55:35', '2021-07-28 22:55:35'),
(24, 7, 'nZxQ_22.jpg', '2021-07-28 22:56:25', '2021-07-28 22:56:25'),
(25, 8, 'SOLS_17.jpg', '2021-07-28 22:58:52', '2021-07-28 22:58:52'),
(26, 9, 'XrKW_28.jpg', '2021-07-28 22:59:51', '2021-07-28 22:59:51'),
(27, 10, 'ZLEl_19.jpg', '2021-07-28 23:02:40', '2021-07-28 23:02:40'),
(28, 11, 'tAwU_10.jpg', '2021-07-28 23:06:03', '2021-07-28 23:06:03'),
(29, 12, 'Xez9_13.jpg', '2021-07-28 23:06:48', '2021-07-28 23:06:48'),
(30, 13, 'CyoE_11.jpg', '2021-07-28 23:08:05', '2021-07-28 23:08:05'),
(31, 14, '39mR_5.jpg', '2021-07-28 23:20:19', '2021-07-28 23:20:19'),
(32, 15, 'vQ94_2.jpg', '2021-07-28 23:21:27', '2021-07-28 23:21:27'),
(33, 16, 'p31c_4.png', '2021-07-28 23:22:09', '2021-07-28 23:22:09'),
(34, 17, 'Hpy7_2.jpg', '2021-07-28 23:22:55', '2021-07-28 23:22:55'),
(35, 18, 'hLBp_1.jpg', '2021-07-28 23:23:40', '2021-07-28 23:23:40'),
(36, 19, 'ncKl_6.jpg', '2021-07-28 23:24:31', '2021-07-28 23:24:31'),
(37, 20, 'iS6c_20.jpg', '2021-07-31 03:20:53', '2021-07-31 03:20:53'),
(38, 20, 'hXgH_22.jpg', '2021-07-31 03:20:53', '2021-07-31 03:20:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(28, '2021_07_26_183015_create_citys_table', 1),
(29, '2021_07_26_183309_create_districts_table', 2),
(31, '2021_07_26_193520_create_ships_table', 3),
(33, '2021_07_23_191036_create_brands_table', 4),
(39, '2021_07_27_173951_create_products_table', 5),
(40, '2021_07_28_071501_create_images_table', 6),
(41, '2021_07_23_173754_create_categorys_table', 7),
(43, '2021_07_27_155013_create_coupons_table', 8),
(47, '2021_07_30_191330_create_orderdetail_table', 9),
(56, '2021_07_31_175756_create_comments_table', 11),
(57, '2021_08_01_145126_create_wishlist_table', 12),
(60, '2014_10_12_000000_create_users_table', 10),
(62, '2021_07_30_190602_create_orders_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `orderdetail`
--

CREATE TABLE `orderdetail` (
  `order_detail_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_detail_quantity` int(11) NOT NULL,
  `order_detail_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orderdetail`
--

INSERT INTO `orderdetail` (`order_detail_id`, `order_id`, `product_id`, `order_detail_quantity`, `order_detail_price`, `created_at`, `updated_at`) VALUES
(77, 1, 17, 1, 405000, '2021-08-11 09:13:44', '2021-08-11 09:13:44'),
(78, 1, 14, 19, 315000, '2021-08-11 09:13:44', '2021-08-11 09:13:44'),
(79, 2, 8, 1, 680000, '2021-08-11 09:18:27', '2021-08-11 09:18:27'),
(81, 3, 18, 2, 500000, '2021-08-11 09:59:01', '2021-08-11 09:59:01'),
(82, 3, 14, 7, 315000, '2021-08-11 09:59:01', '2021-08-11 09:59:01'),
(83, 3, 20, 1, 630000, '2021-08-11 09:59:01', '2021-08-11 09:59:01'),
(84, 4, 7, 1, 720000, '2021-08-12 01:59:40', '2021-08-12 01:59:40'),
(85, 4, 6, 1, 540000, '2021-08-12 01:59:40', '2021-08-12 01:59:40'),
(86, 5, 5, 3, 540000, '2021-08-14 01:42:56', '2021-08-14 01:42:56'),
(87, 5, 15, 2, 360000, '2021-08-14 01:42:56', '2021-08-14 01:42:56'),
(88, 6, 20, 1, 630000, '2021-08-14 01:44:06', '2021-08-14 01:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_shipping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_pay_type` int(11) NOT NULL,
  `order_profit` int(11) NOT NULL,
  `order_total` int(11) NOT NULL,
  `order_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_shipping`, `order_note`, `order_pay_type`, `order_profit`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Tên người nhận: Võ Chí Long - Emailcontactvochilong@gmail.com - Số điện thoại0833280401 - Địa chỉ: Hoàn Kiếm - Quận Hai Bà Trưng - Thành phố Hà Nội', NULL, 1, 20000, 6410000, 1, '2021-08-10 17:00:00', '2021-08-11 09:13:44'),
(2, 2, 'Tên người nhận: Long Víp - Emaillongvcpd03510@fpt.edu.vn - Số điện thoại0833280401 - Địa chỉ: Đội 3 - Lộc An - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 2, 15000, 1332500, 3, '2021-08-10 17:00:00', '2021-08-11 09:33:38'),
(3, 2, 'Tên người nhận: Võ Chí Long - Email: longvcpd03510@fpt.edu.vn - Số điện thoại: 0833280401 - Địa chỉ: Đội 3 - Lộc An - Huyện Duy Tiên - Tỉnh Hà Nam', NULL, 1, 20000, 3855000, 5, '2021-08-10 17:00:00', '2021-08-12 01:20:21'),
(4, 2, 'Tên người nhận: Long Víp - Email: longvcpd03510@fpt.edu.vn - Số điện thoại: 0833280401 - Địa chỉ: Đội 3 - Lộc An - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 1, 15000, 1275000, 1, '2021-08-11 17:00:00', '2021-08-12 01:59:40'),
(5, 1, 'Tên người nhận: Võ Chí Long - Email: contactvochilong@gmail.com - Số điện thoại: 0833280401 - Địa chỉ: Hoàn Kiếm - Quận Hai Bà Trưng - Thành phố Hà Nội', NULL, 2, -80000, 2260000, 1, '2021-08-13 17:00:00', '2021-08-14 01:42:56'),
(6, 1, 'Tên người nhận: Võ Chí Long - Email: contactvochilong@gmail.com - Số điện thoại: 0833280401 - Địa chỉ: Hoàn Kiếm - Huyện Lệ Thủy - Tỉnh Quảng Bình', NULL, 1, 15000, 645000, 1, '2021-08-13 17:00:00', '2021-08-14 01:44:06');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `product_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `product_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price_buy` int(11) NOT NULL,
  `product_price_sell` int(11) NOT NULL,
  `product_amount` int(11) NOT NULL,
  `product_sale` int(11) NOT NULL,
  `product_attribute` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_keyword` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `category_id`, `brand_id`, `product_image`, `product_price_buy`, `product_price_sell`, `product_amount`, `product_sale`, `product_attribute`, `product_detail`, `product_keyword`, `product_description`) VALUES
(4, 'Tranh decor phòng khách', 5, 2, 'oEcZ_29.jpg', 700000, 750000, 49, 15, '<p>Chất liệu:<br />\r\nK&iacute;ch thước:<br />\r\nSản xuất: Việt Nam<br />\r\nBảo h&agrave;ng: 6 th&aacute;ng</p>', '<p>Tranh treo tường hiện đại - Tranh Canvas đang l&agrave; xu hướng d&agrave;nh cho c&aacute;c căn nh&agrave; hiện đại, căn hộ chung cư.<br />\r\nVải canvas &ndash; loại vải cao cấp chuy&ecirc;n d&ugrave;ng trong lĩnh vực hội hoạ, được căng tr&ecirc;n khung gỗ, tạo cảm gi&aacute;c thanh, nhẹ, kh&ocirc;ng cần lồng kiếng an to&agrave;n cho trẻ nhỏ.<br />\r\nVới ưu điểm: sang trọng, nhẹ nh&agrave;ng v&agrave; hiện đại kh&ocirc;ng bay m&agrave;u, dễ lau ch&ugrave;i kết hợp với đinh 3 ch&acirc;n, rất dễ d&agrave;ng cho việc treo tr&ecirc;n tường m&agrave; kh&ocirc;ng cần khoan v&igrave; vậy những bộ tranh treo tường hiện đại l&agrave; sự lựa chọn ho&agrave;n hảo cho căn hộ của bạn.</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(5, 'Tranh decor phòng khách', 5, 2, 'Jw5x_30.jpg', 500000, 600000, 45, 10, '<p>Chất liệu:<br />\r\nK&iacute;ch thước:<br />\r\nSản xuất: Việt Nam<br />\r\nBảo h&agrave;ng: 6 th&aacute;ng</p>', '<p>Tranh treo tường hiện đại - Tranh Canvas đang l&agrave; xu hướng d&agrave;nh cho c&aacute;c căn nh&agrave; hiện đại, căn hộ chung cư.<br />\r\nVải canvas &ndash; loại vải cao cấp chuy&ecirc;n d&ugrave;ng trong lĩnh vực hội hoạ, được căng tr&ecirc;n khung gỗ, tạo cảm gi&aacute;c thanh, nhẹ, kh&ocirc;ng cần lồng kiếng an to&agrave;n cho trẻ nhỏ.<br />\r\nVới ưu điểm: sang trọng, nhẹ nh&agrave;ng v&agrave; hiện đại kh&ocirc;ng bay m&agrave;u, dễ lau ch&ugrave;i kết hợp với đinh 3 ch&acirc;n, rất dễ d&agrave;ng cho việc treo tr&ecirc;n tường m&agrave; kh&ocirc;ng cần khoan v&igrave; vậy những bộ tranh treo tường hiện đại l&agrave; sự lựa chọn ho&agrave;n hảo cho căn hộ của bạn.</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(6, 'Tranh decor phòng ngủ', 5, 4, 'XjnM_24.jpg', 550000, 600000, 1, 10, '<p>Chất liệu:<br />\r\nK&iacute;ch thước:<br />\r\nSản xuất: Việt Nam<br />\r\nBảo h&agrave;ng: 6 th&aacute;ng</p>', '<p>Tranh treo tường hiện đại - Tranh Canvas đang l&agrave; xu hướng d&agrave;nh cho c&aacute;c căn nh&agrave; hiện đại, căn hộ chung cư.<br />\r\nVải canvas &ndash; loại vải cao cấp chuy&ecirc;n d&ugrave;ng trong lĩnh vực hội hoạ, được căng tr&ecirc;n khung gỗ, tạo cảm gi&aacute;c thanh, nhẹ, kh&ocirc;ng cần lồng kiếng an to&agrave;n cho trẻ nhỏ.<br />\r\nVới ưu điểm: dễ lau ch&ugrave;i kết hợp với đinh 3 ch&acirc;n, rất dễ d&agrave;ng cho việc treo tr&ecirc;n tường m&agrave; kh&ocirc;ng cần khoan v&igrave; vậy những bộ tranh treo tường l&agrave; sự lựa chọn ho&agrave;n hảo cho căn hộ của bạn.<br />\r\n&nbsp;</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(7, 'Tranh decor phòng khách', 5, 2, 'vuJn_23.jpg', 750000, 800000, 49, 10, '<p>Chất liệu:<br />\r\nK&iacute;ch thước:<br />\r\nSản xuất: Việt Nam<br />\r\nBảo h&agrave;ng: 6 th&aacute;ng</p>', '<p>Tranh treo tường hiện đại - Tranh Canvas đang l&agrave; xu hướng d&agrave;nh cho c&aacute;c căn nh&agrave; hiện đại, căn hộ chung cư.<br />\r\nVải canvas &ndash; loại vải cao cấp chuy&ecirc;n d&ugrave;ng trong lĩnh vực hội hoạ, được căng tr&ecirc;n khung gỗ, tạo cảm gi&aacute;c thanh, nhẹ, kh&ocirc;ng cần lồng kiếng an to&agrave;n cho trẻ nhỏ.<br />\r\nVới ưu điểm: dễ lau ch&ugrave;i kết hợp với đinh 3 ch&acirc;n, rất dễ d&agrave;ng cho việc treo tr&ecirc;n tường m&agrave; kh&ocirc;ng cần khoan v&igrave; vậy những bộ tranh treo tường l&agrave; sự lựa chọn ho&agrave;n hảo cho căn hộ của bạn.<br />\r\n&nbsp;</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(8, 'Tranh decor phòng ngủ', 5, 2, 'sYXi_16.jpg', 750000, 800000, 49, 15, '<p>Chất liệu:<br />\r\nK&iacute;ch thước:<br />\r\nSản xuất: Việt Nam<br />\r\nBảo h&agrave;ng: 6 th&aacute;ng</p>', '<p>Tranh treo tường hiện đại - Tranh Canvas đang l&agrave; xu hướng d&agrave;nh cho c&aacute;c căn nh&agrave; hiện đại, căn hộ chung cư.<br />\r\nVải canvas &ndash; loại vải cao cấp chuy&ecirc;n d&ugrave;ng trong lĩnh vực hội hoạ, được căng tr&ecirc;n khung gỗ, tạo cảm gi&aacute;c thanh, nhẹ, kh&ocirc;ng cần lồng kiếng an to&agrave;n cho trẻ nhỏ.<br />\r\nVới ưu điểm: dễ lau ch&ugrave;i kết hợp với đinh 3 ch&acirc;n, rất dễ d&agrave;ng cho việc treo tr&ecirc;n tường m&agrave; kh&ocirc;ng cần khoan v&igrave; vậy những bộ tranh treo tường l&agrave; sự lựa chọn ho&agrave;n hảo cho căn hộ của bạn.</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(9, 'Tranh decor đẹp phòng khách', 5, 2, '5Ju7_27.jpg', 800000, 850000, 50, 20, '<p>Chất liệu:<br />\r\nK&iacute;ch thước:<br />\r\nSản xuất: Việt Nam<br />\r\nBảo h&agrave;ng: 6 th&aacute;ng</p>', '<p>Tranh treo tường hiện đại - Tranh Canvas đang l&agrave; xu hướng d&agrave;nh cho c&aacute;c căn nh&agrave; hiện đại, căn hộ chung cư.<br />\r\nVải canvas &ndash; loại vải cao cấp chuy&ecirc;n d&ugrave;ng trong lĩnh vực hội hoạ, được căng tr&ecirc;n khung gỗ, tạo cảm gi&aacute;c thanh, nhẹ, kh&ocirc;ng cần lồng kiếng an to&agrave;n cho trẻ nhỏ.<br />\r\nVới ưu điểm: dễ lau ch&ugrave;i kết hợp với đinh 3 ch&acirc;n, rất dễ d&agrave;ng cho việc treo tr&ecirc;n tường m&agrave; kh&ocirc;ng cần khoan v&igrave; vậy những bộ tranh treo tường l&agrave; sự lựa chọn ho&agrave;n hảo cho căn hộ của bạn.</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(10, 'Sofa Decor 2021', 2, 2, '1sA1_20.jpg', 15000000, 15500000, 50, 15, '<p>BIG BOB A sofa</p>\r\n\r\n<p>- K&iacute;ch thước: 2,1m x 0,87m x 0,72m<br />\r\n- Nguy&ecirc;n vật liệu:&nbsp;<br />\r\nKhung gỗ dầu đ&atilde; được xử l&yacute; chống mối mọt<br />\r\nVải nhập khẩu Th&aacute;i Lan, H&agrave;n Quốc.<br />\r\n- M&agrave;u sắc: tự chọn<br />\r\n- Bảo h&agrave;nh 3 năm</p>', '<p>Nhiều gia đ&igrave;nh hiện đại y&ecirc;u th&iacute;ch phong c&aacute;ch tối giản, v&igrave; thế họ chọn cho m&igrave;nh những bộ sofa văng gỗ đệm nỉ.&nbsp;<br />\r\nĐ&acirc;y l&agrave; một trong số những m&oacute;n đồ nội thất được thiết kế theo phong c&aacute;ch hiện đại, kh&ocirc;ng qu&aacute; cầu kỳ nhưng vẫn to&aacute;t l&ecirc;n được n&eacute;t thanh lịch, tinh tế.</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(11, 'Thảm Decor', 4, 2, 'VuAe_11.jpg', 200000, 250000, 20, 10, '<p>1. Chất liệu sản phẩm :<br />\r\n- &nbsp; &nbsp;Độ cao sợi : 10 mm<br />\r\n- &nbsp; &nbsp;Chất liệu : 100% Len Acrylic<br />\r\n- &nbsp; &nbsp;Mật độ sợi: 2.3 kg/m2<br />\r\n- &nbsp; &nbsp;Quy chuẩn : Dệt thủ c&ocirc;ng, c&oacute; lớp vải đế chống ẩm mốc.<br />\r\n2. K&iacute;ch thước sản phẩm : ĐK 1600 (mm)<br />\r\n3. H&igrave;nh ảnh sản phẩm&nbsp;</p>', '<p>Kh&ocirc;ng chỉ l&agrave;m ấm đ&ocirc;i b&agrave;n ch&acirc;n, che khuyết điểm của s&agrave;n nh&agrave;. Thảm trang tr&iacute; c&ograve;n tạo điểm nhấn ấn tượng cho căn ph&ograve;ng với những thiết kế độc đ&aacute;o v&agrave; đẹp mắt.&nbsp;<br />\r\nKh&ocirc;ng gian sống trong ng&ocirc;i nh&agrave; của bạn sẽ trở n&ecirc;n nổi bật hơn rất nhiều khi bạn chọn c&aacute;c mẫu thảm của Long Decor.<br />\r\n&nbsp;</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(12, 'Thảm Decor', 4, 2, 'MFfG_10.jpg', 250000, 300000, 30, 10, '<p>1. Chất liệu sản phẩm :<br />\r\n- &nbsp; &nbsp;Độ cao sợi : 10 mm<br />\r\n- &nbsp; &nbsp;Chất liệu : 100% Len Acrylic<br />\r\n- &nbsp; &nbsp;Mật độ sợi: 2.3 kg/m2<br />\r\n- &nbsp; &nbsp;Quy chuẩn : Dệt thủ c&ocirc;ng, c&oacute; lớp vải đế chống ẩm mốc.<br />\r\n2. K&iacute;ch thước sản phẩm : ĐK 1600 (mm)<br />\r\n3. H&igrave;nh ảnh sản phẩm&nbsp;</p>', '<p>Kh&ocirc;ng chỉ l&agrave;m ấm đ&ocirc;i b&agrave;n ch&acirc;n, che khuyết điểm của s&agrave;n nh&agrave;. Thảm trang tr&iacute; c&ograve;n tạo điểm nhấn ấn tượng cho căn ph&ograve;ng với những thiết kế độc đ&aacute;o v&agrave; đẹp mắt.&nbsp;<br />\r\nKh&ocirc;ng gian sống trong ng&ocirc;i nh&agrave; của bạn sẽ trở n&ecirc;n nổi bật hơn rất nhiều khi bạn chọn c&aacute;c mẫu thảm của Long Decor.<br />\r\n&nbsp;</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(13, 'Thảm Decor phòng ngủ', 4, 4, 'SSEK_14.jpg', 150000, 250000, 0, 10, '<p>1. Chất liệu sản phẩm :<br />\r\n- &nbsp; &nbsp;Độ cao sợi : 10 mm<br />\r\n- &nbsp; &nbsp;Chất liệu : 100% Len Acrylic<br />\r\n- &nbsp; &nbsp;Mật độ sợi: 2.3 kg/m2<br />\r\n- &nbsp; &nbsp;Quy chuẩn : Dệt thủ c&ocirc;ng, c&oacute; lớp vải đế chống ẩm mốc.<br />\r\n2. K&iacute;ch thước sản phẩm : ĐK 1600 (mm)<br />\r\n3. H&igrave;nh ảnh sản phẩm&nbsp;</p>', '<p>Kh&ocirc;ng chỉ l&agrave;m ấm đ&ocirc;i b&agrave;n ch&acirc;n, che khuyết điểm của s&agrave;n nh&agrave;. Thảm trang tr&iacute; c&ograve;n tạo điểm nhấn ấn tượng cho căn ph&ograve;ng với những thiết kế độc đ&aacute;o v&agrave; đẹp mắt.&nbsp;<br />\r\nKh&ocirc;ng gian sống trong ng&ocirc;i nh&agrave; của bạn sẽ trở n&ecirc;n nổi bật hơn rất nhiều khi bạn chọn c&aacute;c mẫu thảm của Long Decor.<br />\r\n&nbsp;</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(14, 'Gương Decor Phòng ngủ', 3, 4, 'jtEs_2.jpg', 300000, 350000, 14, 10, '<p>Gương Tr&ograve;n D60 Treo Tương D&acirc;y Da Simili Cao Cấp<br />\r\n&ndash; Đường K&iacute;nh 60cm (K&Egrave;M V&Iacute;T TREO)<br />\r\n✔️ KHUYẾN KH&Iacute;CH KH&Aacute;CH XEM H&Agrave;NG TRƯỚC KHI THANH TO&Aacute;N.<br />\r\n&nbsp;✔️ K&iacute;ch thước: D60 (cm)<br />\r\n✔️ M&agrave;u sắc: N&acirc;u, đen, v&agrave;ng b&ograve;<br />\r\n✔️ Chất liệu: D&acirc;y da b&ograve; Simili, ph&ocirc;i gương Việt Nhật.<br />\r\n✔️ Trọn bộ sản phẩm bao gồm gương tr&ograve;n treo tường, d&acirc;y da v&agrave; v&iacute;t treo</p>', '<p>✔️ Gương Tr&ograve;n Treo Tường D&acirc;y Da c&oacute; thể sử dụng trong kh&ocirc;ng gian ph&ograve;ng ngủ, ph&ograve;ng tắm hoặc trang tr&iacute; nội thất gi&uacute;p kh&ocirc;ng gian th&ecirc;m phần sang trọng, tinh tế.</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(15, 'Tranh decor phòng ngủ', 3, 4, 'cYPo_5.jpg', 300000, 400000, 18, 10, '<p>Gương Tr&ograve;n D60 Treo Tương D&acirc;y Da Simili Cao Cấp<br />\r\n&ndash; Đường K&iacute;nh 60cm (K&Egrave;M V&Iacute;T TREO)<br />\r\n✔️ KHUYẾN KH&Iacute;CH KH&Aacute;CH XEM H&Agrave;NG TRƯỚC KHI THANH TO&Aacute;N.<br />\r\n&nbsp;✔️ K&iacute;ch thước: D60 (cm)<br />\r\n✔️ M&agrave;u sắc: N&acirc;u, đen, v&agrave;ng b&ograve;<br />\r\n✔️ Chất liệu: D&acirc;y da b&ograve; Simili, ph&ocirc;i gương Việt Nhật.<br />\r\n✔️ Trọn bộ sản phẩm bao gồm gương tr&ograve;n treo tường, d&acirc;y da v&agrave; v&iacute;t treo</p>', '<p>✔️ Gương Tr&ograve;n Treo Tường D&acirc;y Da c&oacute; thể sử dụng trong kh&ocirc;ng gian ph&ograve;ng ngủ, ph&ograve;ng tắm hoặc trang tr&iacute; nội thất gi&uacute;p kh&ocirc;ng gian th&ecirc;m phần sang trọng, tinh tế.</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(16, 'Gương Decor Phòng Bếp', 3, 3, 'VDEL_3.jpg', 350000, 400000, 0, 10, '<p>Gương Tr&ograve;n D60 Treo Tương D&acirc;y Da Simili Cao Cấp<br />\r\n&ndash; Đường K&iacute;nh 60cm (K&Egrave;M V&Iacute;T TREO)<br />\r\n✔️ KHUYẾN KH&Iacute;CH KH&Aacute;CH XEM H&Agrave;NG TRƯỚC KHI THANH TO&Aacute;N.<br />\r\n&nbsp;✔️ K&iacute;ch thước: D60 (cm)<br />\r\n✔️ M&agrave;u sắc: N&acirc;u, đen, v&agrave;ng b&ograve;<br />\r\n✔️ Chất liệu: D&acirc;y da b&ograve; Simili, ph&ocirc;i gương Việt Nhật.<br />\r\n✔️ Trọn bộ sản phẩm bao gồm gương tr&ograve;n treo tường, d&acirc;y da v&agrave; v&iacute;t treo</p>', '<p>✔️ Gương Tr&ograve;n Treo Tường D&acirc;y Da c&oacute; thể sử dụng trong kh&ocirc;ng gian ph&ograve;ng ngủ, ph&ograve;ng tắm hoặc trang tr&iacute; nội thất gi&uacute;p kh&ocirc;ng gian th&ecirc;m phần sang trọng, tinh tế.</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(17, 'Gương Decor Phòng ngủ', 3, 4, 'EcF8_4.png', 400000, 450000, 0, 10, '<p>Gương Tr&ograve;n D60 Treo Tương D&acirc;y Da Simili Cao Cấp<br />\r\n&ndash; Đường K&iacute;nh 60cm (K&Egrave;M V&Iacute;T TREO)<br />\r\n✔️ KHUYẾN KH&Iacute;CH KH&Aacute;CH XEM H&Agrave;NG TRƯỚC KHI THANH TO&Aacute;N.<br />\r\n&nbsp;✔️ K&iacute;ch thước: D60 (cm)<br />\r\n✔️ M&agrave;u sắc: N&acirc;u, đen, v&agrave;ng b&ograve;<br />\r\n✔️ Chất liệu: D&acirc;y da b&ograve; Simili, ph&ocirc;i gương Việt Nhật.<br />\r\n✔️ Trọn bộ sản phẩm bao gồm gương tr&ograve;n treo tường, d&acirc;y da v&agrave; v&iacute;t treo</p>', '<p>✔️ Gương Tr&ograve;n Treo Tường D&acirc;y Da c&oacute; thể sử dụng trong kh&ocirc;ng gian ph&ograve;ng ngủ, ph&ograve;ng tắm hoặc trang tr&iacute; nội thất gi&uacute;p kh&ocirc;ng gian th&ecirc;m phần sang trọng, tinh tế.</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(18, 'Gương Decor Treo tường', 3, 2, '5d7E_6.jpg', 450000, 500000, 0, 0, '<p>Gương Tr&ograve;n D60 Treo Tương D&acirc;y Da Simili Cao Cấp<br />\r\n&ndash; Đường K&iacute;nh 60cm (K&Egrave;M V&Iacute;T TREO)<br />\r\n✔️ KHUYẾN KH&Iacute;CH KH&Aacute;CH XEM H&Agrave;NG TRƯỚC KHI THANH TO&Aacute;N.<br />\r\n&nbsp;✔️ K&iacute;ch thước: D60 (cm)<br />\r\n✔️ M&agrave;u sắc: N&acirc;u, đen, v&agrave;ng b&ograve;<br />\r\n✔️ Chất liệu: D&acirc;y da b&ograve; Simili, ph&ocirc;i gương Việt Nhật.<br />\r\n✔️ Trọn bộ sản phẩm bao gồm gương tr&ograve;n treo tường, d&acirc;y da v&agrave; v&iacute;t treo</p>', '<p>✔️ Gương Tr&ograve;n Treo Tường D&acirc;y Da c&oacute; thể sử dụng trong kh&ocirc;ng gian ph&ograve;ng ngủ, ph&ograve;ng tắm hoặc trang tr&iacute; nội thất gi&uacute;p kh&ocirc;ng gian th&ecirc;m phần sang trọng, tinh tế.</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(19, 'Gương Decor Treo tường phòng khách', 3, 2, 'zlmc_1.jpg', 500000, 550000, 0, 15, '<p>Gương Tr&ograve;n D60 Treo Tương D&acirc;y Da Simili Cao Cấp<br />\r\n&ndash; Đường K&iacute;nh 60cm (K&Egrave;M V&Iacute;T TREO)<br />\r\n✔️ KHUYẾN KH&Iacute;CH KH&Aacute;CH XEM H&Agrave;NG TRƯỚC KHI THANH TO&Aacute;N.<br />\r\n&nbsp;✔️ K&iacute;ch thước: D60 (cm)<br />\r\n✔️ M&agrave;u sắc: N&acirc;u, đen, v&agrave;ng b&ograve;<br />\r\n✔️ Chất liệu: D&acirc;y da b&ograve; Simili, ph&ocirc;i gương Việt Nhật.<br />\r\n✔️ Trọn bộ sản phẩm bao gồm gương tr&ograve;n treo tường, d&acirc;y da v&agrave; v&iacute;t treo</p>', '<p>✔️ Gương Tr&ograve;n Treo Tường D&acirc;y Da c&oacute; thể sử dụng trong kh&ocirc;ng gian ph&ograve;ng ngủ, ph&ograve;ng tắm hoặc trang tr&iacute; nội thất gi&uacute;p kh&ocirc;ng gian th&ecirc;m phần sang trọng, tinh tế.</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý'),
(20, 'Tranh decor phòng khách', 5, 2, '8cZ0_16.jpg', 500000, 700000, 0, 10, '<p>Chất liệu:<br />\r\nK&iacute;ch thước:<br />\r\nSản xuất: Việt Nam<br />\r\nBảo h&agrave;ng: 6 th&aacute;ng</p>', '<p>Tranh treo tường hiện đại - Tranh Canvas đang l&agrave; xu hướng d&agrave;nh cho c&aacute;c căn nh&agrave; hiện đại, căn hộ chung cư.<br />\r\nVải canvas &ndash; loại vải cao cấp chuy&ecirc;n d&ugrave;ng trong lĩnh vực hội hoạ, được căng tr&ecirc;n khung gỗ, tạo cảm gi&aacute;c thanh, nhẹ, kh&ocirc;ng cần lồng kiếng an to&agrave;n cho trẻ nhỏ.<br />\r\nVới ưu điểm:&nbsp;<br />\r\n+ dễ lau ch&ugrave;i kết hợp với đinh 3 ch&acirc;n,&nbsp;<br />\r\n+ rất dễ d&agrave;ng cho việc treo tr&ecirc;n tường m&agrave; kh&ocirc;ng cần khoan v&igrave; vậy những bộ tranh treo tường l&agrave; sự lựa chọn ho&agrave;n hảo cho căn hộ của bạn.</p>', 'tranh decor, tượng decor, ghế decor, thảm decor, sofa decor', 'Long Decor - chuyên cung cấp những sản phẩm decor uy tín, giá rẻ, hợp lý');

-- --------------------------------------------------------

--
-- Table structure for table `ships`
--

CREATE TABLE `ships` (
  `ship_id` int(10) UNSIGNED NOT NULL,
  `city_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `ship_price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ships`
--

INSERT INTO `ships` (`ship_id`, `city_id`, `district_id`, `ship_price`, `created_at`, `updated_at`) VALUES
(2, 44, 457, 15000, '2021-07-27 01:58:59', '2021-07-27 01:58:59'),
(4, 1, 3, 18000, '2021-08-03 12:29:20', '2021-08-03 12:29:20'),
(5, 1, 3, 25000, '2021-08-03 12:29:33', '2021-08-03 12:29:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `user_name` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_addres` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_district` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_password`, `user_phone`, `user_addres`, `user_district`, `user_city`, `provider`, `provider_id`, `email_verified_at`, `remember_token`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 'Võ Chí Long', 'contactvochilong@gmail.com', '$2y$10$Lph3drPhjuQ.HRWNfCvOz.2qB2YKceMLtn2QUNoiaVuzeK38q/XL2', '0833280401', 'Hoàn Kiếm', '7', '1', NULL, NULL, NULL, NULL, 1, '2021-08-10 11:12:52', '2021-08-10 12:20:59'),
(2, 'Long Víp', 'longvcpd03510@fpt.edu.vn', NULL, '0833280401', 'Đội 3 - Lộc An', '457', '44', 'google', '109630395836598112268', NULL, NULL, 2, '2021-08-10 11:38:50', '2021-08-11 09:34:58'),
(3, 'Khách hàng', 'longamvanime@gmail.com', '$2y$10$UVFkX4AZ43IMCaOMA/29uuMC8iA/PPsnhotz8nzXwwnYx.XI6vIsS', NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 1, '2021-08-11 09:34:46', '2021-08-12 01:27:16');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `wishlist_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`wishlist_id`, `product_id`, `user_id`) VALUES
(12, 13, 7),
(13, 6, 7),
(21, 15, 8),
(24, 19, 9),
(31, 19, 1),
(34, 5, 2),
(35, 18, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `categorys`
--
ALTER TABLE `categorys`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `citys`
--
ALTER TABLE `citys`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupon_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`district_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orderdetail`
--
ALTER TABLE `orderdetail`
  ADD PRIMARY KEY (`order_detail_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `ships`
--
ALTER TABLE `ships`
  ADD PRIMARY KEY (`ship_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_user_email_unique` (`user_email`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`wishlist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categorys`
--
ALTER TABLE `categorys`
  MODIFY `category_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupon_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `orderdetail`
--
ALTER TABLE `orderdetail`
  MODIFY `order_detail_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `ships`
--
ALTER TABLE `ships`
  MODIFY `ship_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `wishlist_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
