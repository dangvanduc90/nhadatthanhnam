-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th3 10, 2020 lúc 11:45 AM
-- Phiên bản máy phục vụ: 10.3.22-MariaDB-cll-lve
-- Phiên bản PHP: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nhadatt4_nhadatthanhnam`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `UsersID` int(10) UNSIGNED NOT NULL,
  `RolesID` int(10) UNSIGNED DEFAULT NULL,
  `Username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Passwords` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FullName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsActive` bit(1) DEFAULT b'1',
  `LastedLogin` timestamp NULL DEFAULT NULL,
  `IpAddress` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`UsersID`, `RolesID`, `Username`, `Passwords`, `FullName`, `Address`, `Phone`, `Email`, `IsActive`, `LastedLogin`, `IpAddress`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(1, 1, 'admin', 'bietthudep123', NULL, NULL, NULL, NULL, b'1', '2020-03-09 15:02:58', NULL, '2013-05-29 10:38:03', NULL, NULL, NULL),
(2, 2, 'mod', '123456', NULL, NULL, NULL, NULL, b'1', '2013-07-09 02:52:08', NULL, '2013-05-29 10:38:14', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ads`
--

CREATE TABLE `ads` (
  `AdsID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImagePreset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'quang-cao/',
  `ImageURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Orders` double UNSIGNED DEFAULT NULL,
  `Publish` bit(1) DEFAULT NULL,
  `Height` int(10) UNSIGNED DEFAULT NULL,
  `Width` int(10) UNSIGNED DEFAULT NULL,
  `Link` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `AdsGroupsID` int(10) UNSIGNED NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ads`
--

INSERT INTO `ads` (`AdsID`, `Title`, `Description`, `ImagePreset`, `ImageURL`, `Orders`, `Publish`, `Height`, `Width`, `Link`, `AdsGroupsID`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(1, 'Lắp đặt camera quan sát giá rẻ', 'lap-dat-camera-quan-sat-gia-re', 'quang-cao/', 'lap-dat-camera-quan-sat-gia-re.gif', 2, b'1', 0, 0, 'http://fptcamera.vn/tron-bo-camera-gia-re', 2, '2015-04-12 07:24:32', 1, '2015-08-01 05:19:22', 1),
(3, 'Camera Vantech', 'Hãng Camera Vantech Việt Nam linh kiện nhập khẩu từ Đài Loan chính gốc. Phân phối hãng camera vantech tại hà nội', 'quang-cao/', 'camera-vantech.jpg', 1, b'1', 110, 75, '', 1, '2015-04-16 05:03:58', 1, '2015-07-26 15:46:56', 1),
(4, 'Camera Benco', '', 'quang-cao/', 'camera-hang-benco1.jpg', 2, b'1', 110, 75, '', 1, '2015-04-16 05:04:57', 1, '2015-07-26 15:47:05', 1),
(16, 'demo xem camera quan sát', 'de-mo-camera-quan-sat', 'quang-cao/', 'demo-camera-quan-sat.jpg', 1, b'1', 0, 0, 'http://fptcamera.vn/tin-tuc/xem-demo-camera', 2, '2015-05-28 10:43:23', 1, '2015-08-01 06:21:45', 1),
(34, 'camera giám sát giá rẻ', 'camera giám sát giá rẻ', 'quang-cao/', 'lap-camera-giam-sat-khong-day-wifi.gif', 1, b'1', 0, 0, '', 3, '2015-07-26 15:58:30', 1, '2015-08-28 03:34:36', 1),
(10, 'lắp đặt camera trọn bộ giá rẻ', 'lắp đặt camera trọn bộ giá rẻ', 'quang-cao/', 'lap-dat-camera-quan-sat-tron-bo-hd-gia-re.jpg', 1, b'1', 0, 0, '', 4, '2015-05-23 03:38:53', 1, '2015-08-28 03:16:42', 1),
(23, 'đầu ghi hình camera quan sát', '111', 'quang-cao/', 'dau-ghi-hinh-camera-DVR.jpg', 1, b'1', 0, 0, '', 5, '2015-05-30 04:01:40', 1, '2015-08-28 03:38:06', 1),
(26, 'camera quan sát trên điện thoại', 'camera quan sát trên điện thoại', 'quang-cao/', 'lap-dat-camera-quan-sat-fpt.jpg', 1, b'1', 0, 0, '', 9, '2015-06-06 02:38:07', 1, '2015-08-01 01:15:27', 1),
(28, 'camera Dahua', '', 'quang-cao/', 'camera-dahua.jpg', 3, b'1', 0, 0, '', 1, '2015-06-24 09:12:06', 1, '2015-07-26 15:47:14', 1),
(29, 'Camera Questek', '', 'quang-cao/', 'camera-questek.jpg', 4, b'1', 0, 0, '', 1, '2015-06-24 15:06:14', 1, '2015-07-26 15:47:23', 1),
(30, 'thiết bị an ninh', 'thiết bị an ninh', 'quang-cao/', 'thiet-bi-an-ninh.jpg', 1, b'1', 0, 0, '', 6, '2015-07-26 15:01:18', 1, NULL, NULL),
(31, 'máy chấm công', 'máy chấm công', 'quang-cao/', 'may-cham-cong-gia-re1.jpg', 1, b'1', 0, 0, '', 10, '2015-07-26 15:18:20', 1, NULL, NULL),
(32, 'tổng đài bộ đàm giá rẻ', 'tổng đài bộ đàm giá rẻ', 'quang-cao/', 'tong-dai-bo-dam.jpg', 1, b'1', 0, 0, '', 7, '2015-07-26 15:38:02', 1, NULL, NULL),
(33, 'phụ kiện camera giá rẻ', 'phụ kiện camera giá rẻ', 'quang-cao/', 'phu-kien-camera-gia-re.jpg', 1, b'1', 0, 0, '', 8, '2015-07-26 15:45:35', 1, NULL, NULL),
(35, 'camera quan sát trên điện thoại 2', 'camera quan sát trên điện thoại', 'quang-cao/', 'camera-quan-sat-tren-dien-thoai-2.jpg', 2, b'1', 0, 0, '', 9, '2015-07-26 16:17:00', 1, NULL, NULL),
(36, 'xem camera trên điện thoại di động', 'banner xem camera trên điện thoại di động. chúng tôi chuyên lắp đặt camera quan sát từ xa trên điện thoại di dộng', 'quang-cao/', 'xem-camera-tren-dien-thoai-di-dong.jpg', 3, b'1', 0, 0, 'http://fptcamera.vn/tin-tuc/xem-camera-giam-sat-qua-dien-thoai', 9, '2015-08-01 01:00:05', 1, NULL, NULL),
(37, 'Đầu ghi hình camera quan sát', 'banner đầu ghi hình camera quan sát chất lượng cao. Chúng tôi chuyên cung cấp và lắp đặt camera đầu ghi hình ', 'quang-cao/', 'dau-ghi-hinh-camera-quan-sat1.jpg', 4, b'1', 0, 0, '', 9, '2015-08-01 01:01:17', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `adsgroups`
--

CREATE TABLE `adsgroups` (
  `AdsGroupsID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CategoriesProductsID` int(11) DEFAULT 0,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `adsgroups`
--

INSERT INTO `adsgroups` (`AdsGroupsID`, `Title`, `CategoriesProductsID`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(1, 'Logo camera các hãng (110 x 75 pixels)', 0, '2015-04-12 07:16:54', 1, '2015-05-18 01:33:36', 1),
(2, 'Ảnh quảng cáo bên trái banner trang chủ', 0, '2015-04-12 07:59:28', 1, '2015-05-16 07:51:35', 1),
(3, 'Quảng cáo Camera giám sát', 1, '2015-05-16 12:04:11', 1, NULL, NULL),
(4, 'Quảng cáo camera trọn bộ', 2, '2015-05-22 09:41:22', 1, NULL, NULL),
(5, 'Quảng cáo đầu ghi hình', 3, '2015-05-22 09:45:52', 1, NULL, NULL),
(6, 'Quảng cáo thiết bị an ninh', 4, '2015-05-27 10:54:20', 1, NULL, NULL),
(7, 'Quảng cáo Tổng đài - Bộ đàm', 5, '2015-05-30 03:15:51', 1, NULL, NULL),
(8, 'Quảng cáo phụ kiện camera', 6, '2015-05-30 04:00:57', 1, NULL, NULL),
(9, 'Ảnh banner đầu trang trên mobile', 0, '2015-06-06 02:32:01', 1, NULL, NULL),
(10, 'máy chấm công', 25, '2015-07-26 15:17:27', 1, NULL, NULL),
(11, 'thiết bị văn phòng', 0, '2015-07-26 15:17:51', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `answers_poll`
--

CREATE TABLE `answers_poll` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(355) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(355) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `answers_poll`
--

INSERT INTO `answers_poll` (`Id`, `Title`, `Title_en`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(1, 'Có biết', 'I Know', '2013-12-03 09:11:07', 1, NULL, NULL),
(2, 'Chưa biết nhiều', 'Limited understanding', '2013-12-03 09:11:59', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `banner`
--

CREATE TABLE `banner` (
  `BannerID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImagePreset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'banner/',
  `ImageURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Orders` smallint(5) UNSIGNED DEFAULT NULL,
  `Publish` bit(1) DEFAULT b'1',
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL,
  `Link` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `banner`
--

INSERT INTO `banner` (`BannerID`, `Title`, `Title_en`, `Body`, `Body_en`, `ImagePreset`, `ImageURL`, `Orders`, `Publish`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `Link`) VALUES
(24, 'Thiết kế nội thất tân cổ điển sáng trong', '', '', '', 'banner/', 'slider-trang-chu-gemihome-1.png', 999, b'1', '2019-12-29 15:29:23', 1, NULL, NULL, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `block`
--

CREATE TABLE `block` (
  `HotlineID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publish` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `call_us`
--

CREATE TABLE `call_us` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categoriesnews`
--

CREATE TABLE `categoriesnews` (
  `CategoriesNewsID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_fr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body` text COLLATE utf8_unicode_ci NOT NULL,
  `ParentID` int(10) UNSIGNED DEFAULT NULL,
  `Slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publish` bit(1) DEFAULT b'1',
  `Orders` float UNSIGNED DEFAULT NULL,
  `SEOTitle` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeyword` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(11) DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `ImagePreset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'danh-muc-tin-tuc/',
  `Banner` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageTitle` text COLLATE utf8_unicode_ci NOT NULL,
  `ImageAlt` text COLLATE utf8_unicode_ci NOT NULL,
  `IsHot` bit(1) DEFAULT b'0',
  `IsCool` bit(1) DEFAULT b'0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categoriesnews`
--

INSERT INTO `categoriesnews` (`CategoriesNewsID`, `Title`, `Title_en`, `Title_fr`, `Description`, `Body`, `ParentID`, `Slug`, `Publish`, `Orders`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `ImagePreset`, `Banner`, `ImageTitle`, `ImageAlt`, `IsHot`, `IsCool`) VALUES
(1, 'About Us', 'Unknowns', 'Unknowns', '', '', 0, 'about-us', b'1', 999, 'Về chúng tôi', 'Về chúng tôi', 'Ngày nay, khi đất nước phát triển, những công trình kiến trúc thay đổi cả về kích thước, mẫu mã, hình ảnh cũng như nhiều công năng hơn trước. Để biến những ngôi nhà trong mong ước của bạn thành những ngôi nhà ở hiện thực đòi hỏi bạn cần phải có một đội ngũ kiến trúc sư có kiến thức chuyên môn cùng những kiến thức phong thủy,.... sâu rộng. Lĩnh vực kiến trúc nhà ở, văn phòng không ngừng phát triển theo dòng chảy thời gian, vì vậy những công ty kiến trúc không ngừng ra đời. Đây là một lợi thế giúp bạn có nhiều sự lựa chọn hơn, tuy nhiên cũng là bất cập khi có quá nhiều sự lựa chọn khiến khách hàng bị hoang mang. ', '2017-02-20 17:00:09', 1, '2020-02-07 15:20:28', 1, 'danh-muc-tin-tuc/', 'default.png', '', '', b'1', b'1'),
(8, 'TIN TỨC', 'Unknowns', 'Unknowns', '', '', 0, 'tin-tuc', b'1', 999, 'TIN TỨC', 'TIN TỨC', '', '2019-09-29 15:37:50', 1, '2019-10-12 17:34:16', 1, 'danh-muc-tin-tuc/', 'default.png', '', '', b'1', b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categoriesproducts`
--

CREATE TABLE `categoriesproducts` (
  `CategoriesProductsID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_fr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParentID` int(10) UNSIGNED DEFAULT NULL,
  `Slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publish` bit(1) DEFAULT b'1',
  `IsTop` bit(1) DEFAULT NULL,
  `ImagePreset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'danh-muc-san-pham/',
  `ImagesURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImagesTitle` text COLLATE utf8_unicode_ci NOT NULL,
  `ImagesAlt` text COLLATE utf8_unicode_ci NOT NULL,
  `Orders` smallint(5) UNSIGNED NOT NULL,
  `SortingPrice` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SortingBrand` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SortingRes` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SortingChannel` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tags` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL,
  `SEOTitle` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeyword` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescription` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categoriesproducts`
--

INSERT INTO `categoriesproducts` (`CategoriesProductsID`, `Title`, `Title_en`, `Title_fr`, `Description`, `Body`, `ParentID`, `Slug`, `Publish`, `IsTop`, `ImagePreset`, `ImagesURL`, `ImagesTitle`, `ImagesAlt`, `Orders`, `SortingPrice`, `SortingBrand`, `SortingRes`, `SortingChannel`, `Tags`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `SEOTitle`, `SEOKeyword`, `SEODescription`) VALUES
(81, 'THIẾT KẾ BIỆT THỰ HAI TẦNG', 'Unknowns', 'Unknowns', '<p>Gemihome chuyên thiết kế biệt thự hai tầng với nhiều phong cách như tân cổ, mái thái, hay vila hiện đại. ..... Với chi phí hợp lý giám sát thiết kế và thi công đến tận lúc hoàn thành cho khách hàng sẽ là đảm bảo cho công trình biệt thự của bạn hoàn hảo nhất</p>\n', '<p>Gemihome chuyên thiết kế biệt thự hai tầng với nhiều phong cách như tân cổ, mái thái, hay vila hiện đại. ..... Với chi phí hợp lý giám sát thiết kế và thi công đến tận lúc hoàn thành cho khách hàng sẽ là đảm bảo cho công trình biệt thự của bạn hoàn hảo nhất</p>\n', 77, 'thiet-ke-biet-thu-hai-tang', b'1', b'0', 'danh-muc-san-pham/', 'hinh-anh-banner-thiet-ke-noi-that-biet-thu-hai-tang.jpg', '', '', 999, '', '', '', '', '', '2019-12-31 11:06:07', 1, '2020-02-09 10:29:12', 1, 'THIẾT KẾ BIỆT THỰ HAI TẦNG - GEMIHOME', 'thiết kế biệt thự hai tầng, thiet ke biet thu hai tang', 'Gemihome chuyên thiết kế biệt thự hai tầng với nhiều phong cách như tân cổ, mái thái, hay vila hiện đại. ..... Với chi phí hợp lý giám sát thiết kế và thi công đến tận lúc hoàn thành cho khách hàng sẽ là đảm bảo cho công trình biệt thự của bạn hoàn hảo nhất'),
(86, 'THIẾT KẾ BIỆT THỰ MỘT TẦNG', 'Unknowns', 'Unknowns', '<p>Biệt thư một tầng luôn có thiết kế gần giũ với thiên nhiên với diện tích rộng khách hàng có thể thoải mái thiết kế nên điều mình thích. Phong cách nhà vườn kết hợp với ao cá luôn là sự lựa chọn hoàn hảo cho khách hàng</p>\n', '<p>Biệt thư một tầng luôn có thiết kế gần giũ với thiên nhiên với diện tích rộng khách hàng có thể thoải mái thiết kế nên điều mình thích. Phong cách nhà vườn kết hợp với ao cá luôn là sự lựa chọn hoàn hảo cho khách hàng</p>\n', 77, 'thiet-ke-biet-thu-mot-tang', b'1', b'0', 'danh-muc-san-pham/', 'hinh-anh-banner-thiet-ke-noi-that-biet-thu-mot-tang.jpg', '', '', 999, '', '', '', '', '', '2020-01-17 14:47:15', 1, '2020-02-09 10:24:46', 1, 'THIẾT KẾ BIỆT THỰ  MỘT TẦNG - GEMIHOME', 'thiết kế biệt thư một tầng, thiet ke biet thu mot tang', 'Biệt thư một tầng luôn có thiết kế gần giũ với thiên nhiên với diện tích rộng khách hàng có thể thoải mái thiết kế nên điều mình thích. Phong cách nhà vườn kết hợp với ao cá luôn là sự lựa chọn hoàn hảo cho khách hàng'),
(83, 'THIẾT KẾ KHÁC', 'Unknowns', 'Unknowns', '<p>Là nơi tổng hợp những danh mục thiết kế ngoài nhà cửa như của hàng, spa, quán ăn. Với kinh nghiệm thiết kế 10 năm phong phú đa dạng chúng tôi sẽ mang cho bạn những sản phẩm thiết kế ưng ý nhất.</p>\n', '<p>Là nơi tổng hợp những danh mục thiết kế ngoài nhà cửa như của hàng, spa, quán ăn. Với kinh nghiệm thiết kế 10 năm phong phú đa dạng chúng tôi sẽ mang cho bạn những sản phẩm thiết kế ưng ý nhất.</p>\n', 0, 'thiet-ke-khac', b'1', b'0', 'danh-muc-san-pham/', 'hinh-anh-banner-thiet-ke-khac.jpg', '', '', 999, '', '', '', '', '', '2019-12-31 11:10:16', 1, '2020-02-09 10:20:02', 1, 'Thiết kế khác - GEMIHOME VIỆT NAM', 'thiết kế của hàng, thiet ke cua hang ', 'Là nơi tổng hợp những danh mục thiết kế ngoài nhà cửa như của hàng, spa, quán ăn. Với kinh nghiệm thiết kế 10 năm phong phú đa dạng chúng tôi sẽ mang cho bạn những sản phẩm thiết kế ưng ý nhất.'),
(84, 'THIẾT KẾ NHÀ ỐNG NHÀ PHỐ', 'Unknowns', 'Unknowns', '<p>Là kiểu thiết kế nhà được sử dụng nhất thiết kế nhà phố luôn là sự lựa chọn hàng đầu với những lô nhà ống trong ngõ hay nhà mặt đường. Một kiểu thiết kế hơp lý sẽ làm nổi bật ngôi nhà của bạn ở khu phố. Thiết kế kế nhà phố có những thay đổi mạnh mẽ nhiều năm gần đây</p>\n', '<p>Là kiểu thiết kế nhà được sử dụng nhất thiết kế nhà phố luôn là sự lựa chọn hàng đầu với những lô nhà ống trong ngõ hay nhà mặt đường. Một kiểu thiết kế hơp lý sẽ làm nổi bật ngôi nhà của bạn ở khu phố. Thiết kế kế nhà phố có những thay đổi mạnh mẽ nhiều năm gần đây</p>\n', 77, 'thiet-ke-nha-ong-nha-pho', b'1', b'0', 'danh-muc-san-pham/', 'hinh-anh-banner-thiet-ke-nha-pho.jpg', '', '', 999, '', '', '', '', '', '2020-01-12 13:55:28', 1, '2020-02-09 10:33:45', 1, 'THIẾT KẾ NHÀ ỐNG NHÀ PHỐ ', 'thiet ke nha pho, thiết kế nhà phố', 'Là kiểu thiết kế nhà được sử dụng nhất thiết kế nhà phố luôn là sự lựa chọn hàng đầu với những lô nhà ống trong ngõ hay nhà mặt đường. Một kiểu thiết kế hơp lý sẽ làm nổi bật ngôi nhà của bạn ở khu phố. Thiết kế kế nhà phố có những thay đổi mạnh mẽ nhiều năm gần đây'),
(85, 'THIẾT KẾ CỦA HÀNG', 'Unknowns', 'Unknowns', '', '', 83, 'thiet-ke-cua-hang', b'1', b'0', 'danh-muc-san-pham/', '', '', '', 999, '', '', '', '', '', '2020-01-12 15:12:32', 1, NULL, NULL, '', '', ''),
(76, 'THIẾT KẾ NỘI THẤT', 'Unknowns', 'Unknowns', '<p>Khi nhu cầu cuộc sống ngày càng tăng cao, người dân hướng đến tiện nghi&nbsp; đẹp đẽ thì câu truyện thiết kế nội thất ngày được chú ý hơn. Với 10 năm làm trong lĩnh vực thiết kế nội thất 15 năm trong thi công nội thất chúng tôi mang sẽ mang lại cho bạn nhưng sản phẩm ưng ý nhất</p>\n', '<p>Khi nhu cầu cuộc sống ngày càng tăng cao, người dân hướng đến tiện nghi&nbsp; đẹp đẽ thì câu truyện thiết kế nội thất ngày được chú ý hơn. Với 10 năm làm trong lĩnh vực thiết kế nội thất 15 năm trong thi công nội thất chúng tôi mang sẽ mang lại cho bạn nhưng sản phẩm ưng ý nhất.&nbsp;&nbsp;</p>\n', 0, 'thiet-ke-noi-that', b'1', b'0', 'danh-muc-san-pham/', 'hinh-anh-banner-thiet-ke-noi-noi-that.jpg', '', '', 999, '', '', '', '', '', '2019-12-31 11:04:08', 1, '2020-02-03 04:27:11', 1, 'THIẾT KẾ NỘI THẤT - GEMIHOME VIỆT NAM', 'thiet ke noi that, thiết kế nội thất', 'Khi nhu cầu cuộc sống ngày càng tăng cao, người dân hướng đến tiện nghi  đẹp đẽ thì câu truyện thiết kế nội thất ngày được chú ý hơn. Với 10 năm làm trong lĩnh vực thiết kế nội thất 15 năm trong thi công nội thất chúng tôi mang sẽ mang lại cho bạn nhưng sản phẩm ưng ý nhất'),
(77, 'THIẾT KẾ KIẾN TRÚC NHÀ ĐẸP', 'Unknowns', 'Unknowns', '<p>Thiết kế một ngôi nhà đầy đủ cônng năng và có mặt tiền đẹp luôn là những vấn đề lớn với khách hàng. Bạn&nbsp; muốn thiết kế kiến trúc một ngôi nhà theo mong muốn nhưng lại không biết phải bắt đầu từ đâu, kết cấu ngôi nhà như nào mặt bằng công năng ra sao. Với đội ngũ 10 năm kinh nghiệm trong lĩnh vực thiết kế Gemihome tự tin khẳng định&nbsp; sẽ giúp bạn có ngôi nhà đầy đủ công năng với mặt tiền đẹp nhất ưng ý nhất</p>\n', '<p>Thiết kế một ngôi nhà đầy đủ cônng năng và có mặt tiền đẹp luôn là những vấn đề lớn với khách hàng. Bạn&nbsp; muốn thiết kế kiến trúc một ngôi nhà theo mong muốn nhưng lại không biết phải bắt đầu từ đâu, kết cấu ngôi nhà như nào mặt bằng công năng ra sao. Với đội ngũ 10 năm kinh nghiệm trong lĩnh vực thiết kế Gemihome tự tin khẳng định&nbsp; sẽ giúp bạn có ngôi nhà đầy đủ công năng với mặt tiền đẹp nhất ưng ý nhất</p>\n', 0, 'thiet-ke-kien-truc-nha-dep', b'1', b'1', 'danh-muc-san-pham/', 'hinh-anh-banner-thiet-ke-noi-kien-truc.jpg', '', '', 999, '', '', '', '', '', '2019-12-31 11:04:30', 1, '2020-02-09 10:20:03', 1, 'THIẾT KẾ KIẾN TRÚC NHÀ ĐẸP - GEMIHOME VIỆT NAM', 'thiet ke kien truc, thiet ke nha dep, thiết kế nhà đẹp', 'Thiết kế một ngôi nhà đầy đủ cônng năng và có mặt tiền đẹp luôn là những vấn đề lớn với khách hàng. Bạn  muốn thiết kế kiến trúc một ngôi nhà theo mong muốn nhưng lại không biết phải bắt đầu từ đâu, kết cấu ngôi nhà như nào mặt bằng công năng ra sao. Với đội ngũ 10 năm kinh nghiệm trong lĩnh vực thiết kế Gemihome tự tin khẳng định  sẽ giúp bạn có ngôi nhà đầy đủ công năng với mặt tiền đẹp nhất ưng ý nhất');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chungchi`
--

CREATE TABLE `chungchi` (
  `Id` int(11) NOT NULL,
  `tabs_chungchi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullName_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Position_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImgUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImgInformation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImgInformation_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Orders` int(11) DEFAULT 999,
  `Publish` tinyint(5) DEFAULT 1,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `ip_address` varchar(16) COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `user_agent` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `user_data` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ci_sessions`
--

INSERT INTO `ci_sessions` (`session_id`, `ip_address`, `user_agent`, `last_activity`, `user_data`) VALUES
('6c0d44e65e7c8f55f01071a6a0c82f43', '216.244.66.238', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.opensiteexplorer.org/dotbot, help@moz.com)', 1583815280, ''),
('44540d71ee37c1940b3d010b38db9a95', '173.252.127.1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1583815207, ''),
('5e8738b0e427278d9d065be129e1d183', '173.252.127.1', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1583815207, ''),
('5fe4f9b05a6b6e409e29b34ad982e7c7', '173.252.127.44', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1583815205, ''),
('f744df268dfe146da79b9ff7fcc5e0e9', '173.252.127.7', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1583815203, ''),
('06eeb129ec5a8ebfd095bbec5d92ce80', '173.252.127.15', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1583815197, ''),
('c34609d271b68b572770be04de125af8', '173.252.127.15', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1583815197, ''),
('609b59bc0bf96b06d8b3056bf83f4811', '66.220.149.23', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1583814788, ''),
('019e677b0f39091bc2ff29203ec45eac', '125.212.133.227', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) GSA/96.0.297407227 Mobil', 1583814567, ''),
('bdaf663498deeeea0a8bb4a6a8372096', '14.163.244.10', 'Mozilla/5.0 (Linux; Android 9; SM-A505F) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Mobile Safari/537.3', 1583814382, ''),
('dbf26a8c68dfe49c90c30f6d3243f872', '14.163.78.146', 'Mozilla/5.0 (Linux; Android 9; CPH1819) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Mobile Safari/537.36', 1583814263, ''),
('e2540415ed0983634202212cd09ca5d4', '216.244.66.238', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.opensiteexplorer.org/dotbot, help@moz.com)', 1583812734, ''),
('ba94d4974dbcdad096c9aaf4a31674e7', '216.244.66.238', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.opensiteexplorer.org/dotbot, help@moz.com)', 1583812723, ''),
('d6b9a26dd59fc2ce045ba489b347821b', '113.185.40.107', 'Mozilla/5.0 (Linux; Android 9; CPH1989) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Mobile Safari/537.36', 1583812712, ''),
('1ead38f6e61896040bf1313f23444f73', '171.244.15.47', 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:x.x.x) Gecko/20041107 Firefox/x.x', 1583811704, ''),
('be85eeebb69e8407d1d8d67b3881ac4f', '14.235.69.53', 'Mozilla/5.0 (iPhone; CPU iPhone OS 11_4 like Mac OS X) AppleWebKit/604.1.34 (KHTML, like Gecko) GSA/53.1.203016890 Mobil', 1583814831, ''),
('56b0c22305853049e02d4ee298fb0d3d', '173.252.127.40', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1583815194, ''),
('408db1b29fe08a1f5af054e2dacbf0ba', '116.96.171.127', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Mobile/', 1583811005, ''),
('5d49a62bf3e87e23c05272c06ecfde21', '173.252.127.40', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1583815194, ''),
('86b0f496cab67d243298f6e6a030f0ac', '66.220.149.5', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1583814790, ''),
('8a9a0f4dcb4e4bb3093ad0498a573368', '116.96.169.99', 'Mozilla/5.0 (Linux; U; Android 4.4.2; vi-vn; HTC_Butterfly Build/KOT49H) AppleWebKit/534.30 (KHTML, like Gecko) Version/', 1583807621, ''),
('a1d6211463d7de8fb424c2cbc6487474', '66.220.149.24', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1583814789, ''),
('2d70a2cf950e98f2a8692d86891fd52b', '42.116.156.234', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/85.0.134 Chrome/79.0.3945.13', 1583809303, ''),
('d39e45896ec44794d5e27e51a8ed0dce', '171.231.230.11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/83.0.142 Chrome/7', 1583810178, ''),
('2bf27067e86ffd83497ccd1097f4479d', '171.231.230.11', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/83.0.142 Chrome/7', 1583812174, ''),
('139145ec4882212168c19198065ffe16', '171.244.15.47', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/75.0.3770.100 Safari/537.36', 1583811570, ''),
('6f8e0b78d35abcf04e40b3890f0fcf69', '116.97.100.250', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.4 Mobile/15', 1583811377, ''),
('5267ed16847a54cfe433d50070cff8cc', '171.231.230.11', 'Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/83.0.144 Chrome/77.0.3865.14', 1583814263, ''),
('62f0721c530c0be0838abbeb3445ce36', '66.249.71.137', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', 1583808831, ''),
('4d52dda622082c1873b5eeb3523e17c6', '216.244.66.238', 'Mozilla/5.0 (compatible; DotBot/1.1; http://www.opensiteexplorer.org/dotbot, help@moz.com)', 1583810322, ''),
('4c973af1739cff7a2c47d946d6324495', '113.185.46.242', 'Mozilla/5.0 (Linux; Android 8.1.0; CPH1912) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.132 Mobile Safari/53', 1583809125, ''),
('4e5f4521846953aece4b9101d47ae605', '171.229.239.225', 'Mozilla/5.0 (iPhone; CPU iPhone OS 13_3_1 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.5 Mobile/', 1583808746, ''),
('eb9e8798382bccbdfb5db881ff210eaf', '123.25.42.43', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/537.36 (KHTML, like Gecko) coc_coc_browser/85.0.134 Chrome/7', 1583810178, ''),
('0e4cdf12724811482ffdd0a363ee1aa9', '65.154.226.220', 'Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Safari/537.36', 1583809617, ''),
('07d94b840d9c8f3b503beb019d23c766', '66.220.149.23', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1583814788, ''),
('b2eedd46240cf37d2255ce87fe7f7a61', '103.7.37.139', 'Mozilla/5.0 (Linux; Android 7.1.1; SAMSUNG SM-J250F) AppleWebKit/537.36 (KHTML, like Gecko) SamsungBrowser/11.1 Chrome/7', 1583810758, ''),
('35022364fc52367caede1e3c3238927a', '69.171.251.35', 'facebookexternalhit/1.1 (+http://www.facebook.com/externalhit_uatext.php)', 1583814788, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `CommentsID` int(11) NOT NULL,
  `ForeignID` int(11) NOT NULL,
  `ParentID` int(11) NOT NULL DEFAULT 0,
  `Type` int(11) NOT NULL COMMENT '1:product, 2:news, 3:cateproduct, 4:catenews',
  `Name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Message` text COLLATE utf8_unicode_ci NOT NULL,
  `StarRating` int(11) DEFAULT NULL,
  `Publish` bit(1) NOT NULL DEFAULT b'1',
  `IsRead` bit(1) NOT NULL DEFAULT b'0',
  `Orders` int(11) NOT NULL DEFAULT 999,
  `CreatedDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `comments`
--

INSERT INTO `comments` (`CommentsID`, `ForeignID`, `ParentID`, `Type`, `Name`, `Email`, `Message`, `StarRating`, `Publish`, `IsRead`, `Orders`, `CreatedDate`, `ModifiedDate`) VALUES
(13, 70, 0, 1, 'Nguyễn Vui', 'nguyenvui@gmail.com', 'kjfjsbfjdfsfssdf', NULL, b'1', b'0', 999, '2016-12-26 03:46:51', '2016-12-26 03:46:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`Id`, `Name`, `Email`, `Phone`, `Address`, `Content`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(6, 'Lê bá linh', 'lebalinhnd1984@gmail.com', '0912021105', '', '80m2', '2020-02-23 01:04:08', NULL, NULL, NULL),
(7, 'Vũ anh cường', 'chunettb1@gmail', '0384409456', '', '120m2', '2020-02-23 01:35:47', NULL, NULL, NULL),
(8, 'Nhâm trung', 'thanhtrungbvhh@gmail.com', '0913625875', '', 'Vì kinh phí hạn chế mik muốn tư vấn mẫu nhà ống hai tầng kt 5×13m: 3 phòng ngủ(bố mẹ tầng 1) 2 toilett', '2020-02-23 02:55:38', NULL, NULL, NULL),
(10, 'Bui xuân linh', 'buixuanlinh05061987@gmail.com', '0979057995', '', 'Chiều rộng 8mx chiều dài 9m', '2020-02-23 10:36:07', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customers`
--

CREATE TABLE `customers` (
  `CustomersID` int(10) UNSIGNED NOT NULL,
  `FullName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Address` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ShippingAddress` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customers`
--

INSERT INTO `customers` (`CustomersID`, `FullName`, `Phone`, `Email`, `Address`, `ShippingAddress`) VALUES
(1, 'Thanh Pham Quang', '+841643639483', 'thanh.phamquang@hotmail.com', '471 Trương Định, Hoàng Mai, Hà Nội', NULL),
(2, 'aa', 'â', 'nguyendangphuc25@gmail.com', 'â', NULL),
(3, 'Nguyen nam', '0966311637', 'cuuthien1892@gmail.com', 'âsasa', NULL),
(4, 'Nguyen nam 124', '0966311637', 'cuuthien1892@gmail.com', 'âsasa', NULL),
(5, 'aaa', 'â', '4homeshop@gmail.com', 'aaa', NULL),
(6, 'Thanh Pham Quang', '+841643639483', 'thanh.phamquang@hotmail.com', 'gdfgsdsdg', NULL),
(7, 'Thanh Pham Quang', '+841643639483', 'thanh.phamquang@hotmail.com', 'gdfgsdsdg', NULL),
(8, 'Thanh Pham Quang', '+841643639483', 'thanh.phamquang@hotmail.com', 'gdfgsdsdg', NULL),
(9, 'Thanh Pham Quang', '+841643639483', 'thanh.phamquang@hotmail.com', 'gdfgsdsdg', NULL),
(10, 'a', 'a', 'r@gmail.com', 'a', NULL),
(11, 'Thanh Pham Quang', '+841643639483', 'thanh.phamquang@hotmail.com', '471 Trương Định, Hoàng Mai, Hà Nội', NULL),
(12, '123', 'ádfadf', 'xuanhuyen55@gmail.com', 'aaaa', NULL),
(13, 'A', '1', 'a@a.com', 'd', NULL),
(14, 'hjfhvh', '097666544', 'hfhfj@yfyug.com', 'yyur7iu', NULL),
(15, 'a', '1212412', 'jaja@gmail.com', 'sudasgag', NULL),
(16, 'a', '1212412', 'jaja@gmail.com', 'sudasgag', NULL),
(17, 'ểtrt', '346346346', 'namthanh.htth@gmail.com', 'ểtrt', NULL),
(18, 'dfgdfg', '67867867', 'ghfg@gmail.com', 'dfgdf', NULL),
(19, 'dfgdfg', '67867867', 'ghfg@gmail.com', 'dfgdf', NULL),
(20, 'ggfgf', 'jllkjjj', 'luong@ifo.com.vn', 'hanoi', NULL),
(21, 'duc', '091.234.0789', 'dangvanduc0@gmail.com', 'định công, hoàng mai, hà nội', NULL),
(22, 'duc', '0912340789', 'dangvanduc0@gmail.com', 'dinh cong, hoang mai, ha noi', NULL),
(23, 'duc', '0912340789', 'dangvanduc0@gmail.com', 'dinh cong, hoang mai, ha noi', NULL),
(24, 'duc', '0912340789', 'dangvanduc0@gmail.com', 'dinh cong, hoang mai, ha noi', NULL),
(25, 'duc', '0912340789', 'dangvanduc0@gmail.com', 'dinh cong, hoang mai, ha noi', NULL),
(26, 'duc', '0912340789', 'dangvanduc0@gmail.com', 'dinh cong, hoang mai, ha noi', NULL),
(27, 'duc', '0912340789', 'dangvanduc0@gmail.com', 'dinh cong, hoang mai, ha noi', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dich_vu`
--

CREATE TABLE `dich_vu` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Orders` int(11) DEFAULT 999,
  `Publish` tinyint(5) DEFAULT 1,
  `Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `ModifiedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `faqs`
--

CREATE TABLE `faqs` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Question` varchar(355) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Question_en` varchar(355) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Answer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Answer_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Slug` varchar(455) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publish` smallint(6) DEFAULT 1,
  `Orders` double DEFAULT 999,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL,
  `IsShowFooter` smallint(6) DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `favicons`
--

CREATE TABLE `favicons` (
  `FaviconsID` int(10) UNSIGNED NOT NULL,
  `IconPreset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'favicon/',
  `IconURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsMain` bit(1) DEFAULT b'0',
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `favicons`
--

INSERT INTO `favicons` (`FaviconsID`, `IconPreset`, `IconURL`, `IsMain`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(5, 'favicon/', 'favicon-32x321.png', b'1', '2018-05-08 09:58:15', 1, '2020-02-08 03:54:27', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `footer`
--

CREATE TABLE `footer` (
  `FooterID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImagePreset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'footer/',
  `ImageURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Orders` smallint(5) UNSIGNED DEFAULT NULL,
  `Publish` bit(1) DEFAULT b'1',
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL,
  `Link` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `footer`
--

INSERT INTO `footer` (`FooterID`, `Title`, `Title_en`, `Body`, `Body_en`, `ImagePreset`, `ImageURL`, `Orders`, `Publish`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `Link`) VALUES
(3, 'KINH NGHIỆM VỀ NHÀ MỚI', '', '<p>Kiến thức phong thuỷ<br />\nTư vấn xây nhà<br />\nMẫu nhà đẹp mặt đường<br />\nMẹo trang trí nhà đẹp</p>\n', '', 'footer/', 'footer/', 4, b'1', '2017-02-22 02:57:07', 1, '2019-10-01 09:04:07', 1, ''),
(4, 'DANH MỤC THIẾT KẾ', '', '<p>Thiết kế nhà mặt phố&nbsp;<br />\nThiết kế nhà biệt thự một tầng&nbsp;<br />\nThiết kế biệt thự hai tầng<br />\nThiết kế nhà lô góc<br />\nThiết kế nhà ống</p>\n', '', 'footer/', 'footer/', 3, b'1', '2017-02-22 02:57:21', 1, '2020-01-12 13:54:48', 1, ''),
(5, 'HỆ THỐNG CỦA CHÚNG TÔI', '', '<p>HN: P.319 - Imperia Sky Garden - 423 Minh Khai&nbsp;- Hà Nội<br />\nNĐ: Số 89 Trần Thánh Tông&nbsp;- Nam Định<br />\nNB: Số 55 Thành Công - Ninh Bình<br />\nTB: 183 Trần Thái Tông - Thái Bình<br />\nHN: Số 397 Lý Thường Kiệt&nbsp;- Hà Nam<br />\nHY: Số 238 Điện Biên&nbsp;- Hưng Yên<br />\nBN: Số 69 Nguyễn Đăng Đạo&nbsp;- Bắc Ninh<br />\nBG: Số 222 Nguyễn Thị Lưu 2 - Bắc Giang<br />\nHP: Số 251 Lý Thường Kiệt&nbsp;- Hải Phòng<br />\nQN: Số 205 Phường Cao Thắng&nbsp;- Quảng Ninh<br />\nVP: 782 Lý Thái Tổ &nbsp;- Vĩnh Phúc</p>\n', '', 'footer/', 'footer/', 2, b'1', '2017-02-22 02:57:32', 1, '2020-02-22 15:46:44', 1, ''),
(7, 'LIỆN HỆ VỚI CHÚNG TÔI', '', '<p>CÔNG TY TNHH GEMI HOME VIỆT NAM<br />\nNgười đại diện:Nguyễn Trọng Phúc<br />\nĐịa chỉ: P.319 - Imperia Sky Garden - 423 Minh Khai - Hà Nội</p>\n\n<p>Tư vấn : 096.943.9221 - 0967.545.654<br />\nEmail: gemihome@gmail.com<br />\nMST: 0108002309 Nơi cấp: Sở KH &amp; ĐT Hà Nội&nbsp;<br />\nXưởng gỗ: TT Cát Thành - Huyện Trực Ninh - Nam Định</p>\n', '', 'footer/', 'footer/', 1, b'1', '2018-08-30 08:42:45', 1, '2020-02-10 05:47:22', 1, '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hotline`
--

CREATE TABLE `hotline` (
  `HotlineID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Orders` smallint(5) UNSIGNED DEFAULT NULL,
  `Publish` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `hotline`
--

INSERT INTO `hotline` (`HotlineID`, `Title`, `Title_en`, `Phone`, `Orders`, `Publish`) VALUES
(1, 'Hotline 1', NULL, '0832026777', 1, b'1');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imageproducts`
--

CREATE TABLE `imageproducts` (
  `ImageProductsID` int(10) UNSIGNED NOT NULL,
  `ImagePreset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'san-pham/',
  `ImageURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsMainImage` bit(1) DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `AltText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TitleText` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Orders` int(10) UNSIGNED DEFAULT NULL,
  `ProductsID` int(10) UNSIGNED NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `imageproducts`
--

INSERT INTO `imageproducts` (`ImageProductsID`, `ImagePreset`, `ImageURL`, `IsMainImage`, `Title`, `Description`, `AltText`, `TitleText`, `Orders`, `ProductsID`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(1, 'san-pham/', '2ce5af082ae93018f821ec94e4c9807a.png', b'1', NULL, NULL, '', '', 999, 2, '2015-04-18 06:51:18', NULL, NULL, NULL),
(2, 'san-pham/', '1851871a55f4efaa4533fe7b61b23f0a.png', b'0', NULL, NULL, '', '', 999, 2, '2015-04-18 06:51:18', NULL, NULL, NULL),
(264, 'san-pham/', 'biet-thu-2-tang-hien-dai01.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại ', 999, 65, '2017-11-20 08:56:14', NULL, NULL, NULL),
(15, 'san-pham/', '15073406_1016617281800267_8812929719380095565_n.jpg', b'0', NULL, NULL, '', '', 999, 4, '2017-02-21 10:08:00', NULL, NULL, NULL),
(14, 'san-pham/', '15073315_1016617151800280_1922683785192351590_n.jpg', b'0', NULL, NULL, '', '', 999, 4, '2017-02-21 10:08:00', NULL, NULL, NULL),
(13, 'san-pham/', '15055724_1016617158466946_7285492237488450150_n.jpg', b'0', NULL, NULL, '', '', 999, 4, '2017-02-21 10:08:00', NULL, NULL, NULL),
(12, 'san-pham/', '15036175_1016617348466927_7981060588971684714_n.jpg', b'0', NULL, NULL, '', '', 999, 4, '2017-02-21 10:08:00', NULL, NULL, NULL),
(11, 'san-pham/', '15027608_1016617238466938_7828145562416044440_n.jpg', b'1', NULL, NULL, '', '', 999, 4, '2017-02-21 10:08:00', NULL, NULL, NULL),
(16, 'san-pham/', '15134734_1020735661388429_3508849937899100478_n2.jpg', b'1', NULL, NULL, '', '', 999, 4, '2017-02-21 10:08:18', NULL, NULL, NULL),
(17, 'san-pham/', '15094919_1016617328466929_7442351798393503573_n.jpg', b'1', NULL, NULL, '', '', 999, 4, '2017-02-21 10:14:28', NULL, NULL, NULL),
(77, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-phuong-nghi-tam-2.jpg', b'0', NULL, NULL, '', '', 999, 10, '2017-03-15 10:40:23', NULL, NULL, NULL),
(76, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-phuong-nghi-tam-1.jpg', b'0', NULL, NULL, '', '', 999, 10, '2017-03-15 10:40:23', NULL, NULL, NULL),
(75, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-phuong-nghi-tam1.jpg', b'1', NULL, NULL, '', '', 999, 10, '2017-03-15 10:40:23', NULL, NULL, NULL),
(23, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-gia-dinh-anh-thang-tay-ho1.jpg', b'1', NULL, NULL, '', '', 999, 30, '2017-03-15 09:03:03', NULL, NULL, NULL),
(24, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-gia-dinh-anh-thang-tay-ho-1.jpg', b'0', NULL, NULL, '', '', 3, 30, '2017-03-15 09:05:34', NULL, NULL, NULL),
(25, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-gia-dinh-anh-thang-tay-ho-2.jpg', b'0', NULL, NULL, '', '', 4, 30, '2017-03-15 09:05:34', NULL, NULL, NULL),
(26, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-gia-dinh-anh-thang-tay-ho-3.jpg', b'0', NULL, NULL, '', '', 5, 30, '2017-03-15 09:05:34', NULL, NULL, NULL),
(27, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-gia-dinh-anh-thang-tay-ho-4.jpg', b'0', NULL, NULL, '', '', 6, 30, '2017-03-15 09:05:34', NULL, NULL, NULL),
(28, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-gia-dinh-anh-thang-tay-ho-5.jpg', b'0', NULL, NULL, '', '', 7, 30, '2017-03-15 09:05:34', NULL, NULL, NULL),
(29, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-gia-dinh-anh-thang-tay-ho-7.jpg', b'0', NULL, NULL, '', '', 8, 30, '2017-03-15 09:05:34', NULL, NULL, NULL),
(30, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-gia-dinh-anh-thang-tay-ho-6.jpg', b'0', NULL, NULL, '', '', 2, 30, '2017-03-15 09:05:34', NULL, NULL, NULL),
(31, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-sanh-grand-hotel1.jpg', b'1', NULL, NULL, '', '', 999, 9, '2017-03-15 09:07:57', NULL, NULL, NULL),
(32, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-sanh-grand-hotel-1.jpg', b'0', NULL, NULL, '', '', 999, 9, '2017-03-15 09:07:57', NULL, NULL, NULL),
(33, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-sanh-grand-hotel-2.jpg', b'0', NULL, NULL, '', '', 999, 9, '2017-03-15 09:07:57', NULL, NULL, NULL),
(34, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh2.jpg', b'1', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(35, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-12.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(36, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-22.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(37, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-32.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(38, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-41.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(39, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-51.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(40, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-61.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(41, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-71.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(42, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-81.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(43, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-9.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(44, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-102.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(45, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-112.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(46, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-121.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(47, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-13.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(48, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-14.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(49, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-15.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(50, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-16.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(51, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quyet-my-dinh-17.jpg', b'0', NULL, NULL, '', '', 999, 29, '2017-03-15 09:24:08', NULL, NULL, NULL),
(52, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-hoan-7-tang.jpg', b'1', NULL, NULL, '', '', 999, 28, '2017-03-15 09:29:29', NULL, NULL, NULL),
(53, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-hoan-7-tang-1.jpg', b'0', NULL, NULL, '', '', 999, 28, '2017-03-15 09:29:29', NULL, NULL, NULL),
(54, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-hoan-7-tang-2.jpg', b'0', NULL, NULL, '', '', 999, 28, '2017-03-15 09:29:29', NULL, NULL, NULL),
(55, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-hoan-7-tang-3.jpg', b'0', NULL, NULL, '', '', 999, 28, '2017-03-15 09:29:29', NULL, NULL, NULL),
(56, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-hoan-7-tang-4.jpg', b'0', NULL, NULL, '', '', 999, 28, '2017-03-15 09:29:29', NULL, NULL, NULL),
(57, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-hoan-7-tang-5.jpg', b'0', NULL, NULL, '', '', 999, 28, '2017-03-15 09:29:29', NULL, NULL, NULL),
(58, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-biet-thu-ecopark1.jpg', b'1', NULL, NULL, '', '', 999, 12, '2017-03-15 10:35:33', NULL, NULL, NULL),
(59, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-biet-thu-ecopark-1.jpg', b'0', NULL, NULL, '', '', 999, 12, '2017-03-15 10:35:33', NULL, NULL, NULL),
(60, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-biet-thu-ecopark-2.jpg', b'0', NULL, NULL, '', '', 999, 12, '2017-03-15 10:35:33', NULL, NULL, NULL),
(61, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-biet-thu-ecopark-3.jpg', b'0', NULL, NULL, '', '', 999, 12, '2017-03-15 10:35:33', NULL, NULL, NULL),
(62, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-biet-thu-ecopark-4.jpg', b'0', NULL, NULL, '', '', 999, 12, '2017-03-15 10:35:33', NULL, NULL, NULL),
(63, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-biet-thu-ecopark-5.jpg', b'0', NULL, NULL, '', '', 999, 12, '2017-03-15 10:35:33', NULL, NULL, NULL),
(64, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-biet-thu-ecopark-6.jpg', b'0', NULL, NULL, '', '', 999, 12, '2017-03-15 10:35:33', NULL, NULL, NULL),
(65, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-biet-thu-ecopark-7.jpg', b'0', NULL, NULL, '', '', 999, 12, '2017-03-15 10:35:33', NULL, NULL, NULL),
(66, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-biet-thu-ecopark-8.jpg', b'0', NULL, NULL, '', '', 999, 12, '2017-03-15 10:35:33', NULL, NULL, NULL),
(67, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quang-vinhomes1.jpg', b'1', NULL, NULL, '', '', 999, 11, '2017-03-15 10:37:52', NULL, NULL, NULL),
(68, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quang-vinhomes-1.jpg', b'0', NULL, NULL, '', '', 999, 11, '2017-03-15 10:37:52', NULL, NULL, NULL),
(69, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quang-vinhomes-2.jpg', b'0', NULL, NULL, '', '', 999, 11, '2017-03-15 10:37:52', NULL, NULL, NULL),
(70, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quang-vinhomes-3.jpg', b'0', NULL, NULL, '', '', 999, 11, '2017-03-15 10:37:52', NULL, NULL, NULL),
(71, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quang-vinhomes-4.jpg', b'0', NULL, NULL, '', '', 999, 11, '2017-03-15 10:37:52', NULL, NULL, NULL),
(72, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quang-vinhomes-5.jpg', b'0', NULL, NULL, '', '', 999, 11, '2017-03-15 10:37:52', NULL, NULL, NULL),
(73, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quang-vinhomes-6.jpg', b'0', NULL, NULL, '', '', 999, 11, '2017-03-15 10:37:52', NULL, NULL, NULL),
(74, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-quang-vinhomes-7.jpg', b'0', NULL, NULL, '', '', 999, 11, '2017-03-15 10:37:52', NULL, NULL, NULL),
(78, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-phuong-nghi-tam-3.jpg', b'0', NULL, NULL, '', '', 999, 10, '2017-03-15 10:40:23', NULL, NULL, NULL),
(79, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-phuong-nghi-tam-4.jpg', b'0', NULL, NULL, '', '', 999, 10, '2017-03-15 10:40:23', NULL, NULL, NULL),
(80, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-anh-phuong-nghi-tam-5.jpg', b'0', NULL, NULL, '', '', 999, 10, '2017-03-15 10:40:23', NULL, NULL, NULL),
(81, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-mandarin.jpg', b'1', NULL, NULL, '', '', 999, 31, '2017-03-16 02:48:00', NULL, NULL, NULL),
(82, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-mandarin-2.jpg', b'0', NULL, NULL, '', '', 999, 31, '2017-03-16 02:48:00', NULL, NULL, NULL),
(83, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-mandarin-3.jpg', b'0', NULL, NULL, '', '', 999, 31, '2017-03-16 02:48:00', NULL, NULL, NULL),
(84, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-mandarin-4.jpg', b'0', NULL, NULL, '', '', 999, 31, '2017-03-16 02:48:00', NULL, NULL, NULL),
(85, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-mandarin-5.jpg', b'0', NULL, NULL, '', '', 999, 31, '2017-03-16 02:48:00', NULL, NULL, NULL),
(86, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-mandarin-6.jpg', b'0', NULL, NULL, '', '', 999, 31, '2017-03-16 02:48:00', NULL, NULL, NULL),
(87, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-mandarin-7.jpg', b'0', NULL, NULL, '', '', 999, 31, '2017-03-16 02:48:00', NULL, NULL, NULL),
(88, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-mandarin-81.jpg', b'0', NULL, NULL, '', '', 999, 31, '2017-03-16 02:48:00', NULL, NULL, NULL),
(89, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-mandarin-9.jpg', b'0', NULL, NULL, '', '', 999, 31, '2017-03-16 02:48:00', NULL, NULL, NULL),
(90, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-Up.jpg', b'1', NULL, NULL, '', '', 999, 32, '2017-03-16 03:11:06', NULL, NULL, NULL),
(91, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-Up-2.jpg', b'0', NULL, NULL, '', '', 999, 32, '2017-03-16 03:11:06', NULL, NULL, NULL),
(92, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-Up-31.jpg', b'0', NULL, NULL, '', '', 999, 32, '2017-03-16 03:11:06', NULL, NULL, NULL),
(93, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-Up-4.jpg', b'0', NULL, NULL, '', '', 999, 32, '2017-03-16 03:11:06', NULL, NULL, NULL),
(94, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-Up-5.jpg', b'0', NULL, NULL, '', '', 999, 32, '2017-03-16 03:11:06', NULL, NULL, NULL),
(95, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-Up-6.jpg', b'0', NULL, NULL, '', '', 999, 32, '2017-03-16 03:11:06', NULL, NULL, NULL),
(96, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-Up-7.jpg', b'0', NULL, NULL, '', '', 999, 32, '2017-03-16 03:11:06', NULL, NULL, NULL),
(97, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-Up-8.jpg', b'0', NULL, NULL, '', '', 999, 32, '2017-03-16 03:11:06', NULL, NULL, NULL),
(98, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-Up-9.jpg', b'0', NULL, NULL, '', '', 999, 32, '2017-03-16 03:11:06', NULL, NULL, NULL),
(99, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-Linh-Dam.jpg', b'1', NULL, NULL, '', '', 999, 33, '2017-03-16 03:23:55', NULL, NULL, NULL),
(100, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-Linh-Dam-21.jpg', b'0', NULL, NULL, '', '', 999, 33, '2017-03-16 03:23:55', NULL, NULL, NULL),
(101, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-Linh-Dam-3.jpg', b'0', NULL, NULL, '', '', 999, 33, '2017-03-16 03:23:55', NULL, NULL, NULL),
(102, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-Linh-Dam-4.jpg', b'0', NULL, NULL, '', '', 999, 33, '2017-03-16 03:23:55', NULL, NULL, NULL),
(103, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-Linh-Dam-5.jpg', b'0', NULL, NULL, '', '', 999, 33, '2017-03-16 03:23:55', NULL, NULL, NULL),
(104, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-Linh-Dam-6.jpg', b'0', NULL, NULL, '', '', 999, 33, '2017-03-16 03:23:55', NULL, NULL, NULL),
(105, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-Linh-Dam-7.jpg', b'0', NULL, NULL, '', '', 999, 33, '2017-03-16 03:23:55', NULL, NULL, NULL),
(106, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-Linh-Dam-8.jpg', b'0', NULL, NULL, '', '', 999, 33, '2017-03-16 03:23:55', NULL, NULL, NULL),
(107, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-Linh-Dam-9.jpg', b'0', NULL, NULL, '', '', 999, 33, '2017-03-16 03:23:55', NULL, NULL, NULL),
(108, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-van-phong-Topica-Native.jpg', b'1', NULL, NULL, '', '', 999, 34, '2017-03-16 03:45:17', NULL, NULL, NULL),
(109, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-van-phong-Topica-Native-21.jpg', b'0', NULL, NULL, '', '', 999, 34, '2017-03-16 03:45:17', NULL, NULL, NULL),
(110, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-van-phong-Topica-Native-3.jpg', b'0', NULL, NULL, '', '', 999, 34, '2017-03-16 03:45:17', NULL, NULL, NULL),
(111, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-van-phong-Topica-Native-4.jpg', b'0', NULL, NULL, '', '', 999, 34, '2017-03-16 03:45:17', NULL, NULL, NULL),
(112, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-van-phong-Topica-Native-5.jpg', b'0', NULL, NULL, '', '', 999, 34, '2017-03-16 03:45:17', NULL, NULL, NULL),
(113, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-hh3-linh-dam.jpg', b'1', NULL, NULL, '', '', 999, 35, '2017-03-16 04:21:27', NULL, NULL, NULL),
(114, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-hh3-linh-dam-11.jpg', b'0', NULL, NULL, '', '', 999, 35, '2017-03-16 04:21:27', NULL, NULL, NULL),
(115, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-hh3-linh-dam-2.jpg', b'0', NULL, NULL, '', '', 999, 35, '2017-03-16 04:21:27', NULL, NULL, NULL),
(116, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-hh3-linh-dam-3.jpg', b'0', NULL, NULL, '', '', 999, 35, '2017-03-16 04:21:27', NULL, NULL, NULL),
(117, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-hh3-linh-dam-5.jpg', b'0', NULL, NULL, '', '', 999, 35, '2017-03-16 04:21:27', NULL, NULL, NULL),
(118, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-hh3-linh-dam-6.jpg', b'0', NULL, NULL, '', '', 999, 35, '2017-03-16 04:21:27', NULL, NULL, NULL),
(119, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-hh3-linh-dam-7.jpg', b'0', NULL, NULL, '', '', 999, 35, '2017-03-16 04:21:27', NULL, NULL, NULL),
(120, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-chi-Trang-Nam-Thang-Long-22.jpg', b'1', NULL, NULL, '', '', 999, 36, '2017-03-18 01:32:51', NULL, NULL, NULL),
(121, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-chi-Trang-Nam-Thang-Long-2-2.jpg', b'0', NULL, NULL, '', '', 999, 36, '2017-03-18 01:32:51', NULL, NULL, NULL),
(122, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-chi-Trang-Nam-Thang-Long-3.jpg', b'0', NULL, NULL, '', '', 999, 36, '2017-03-18 01:32:51', NULL, NULL, NULL),
(123, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-biet-thu-anh-Duc-Thanh-Hoa.jpg', b'1', NULL, NULL, '', '', 999, 37, '2017-03-18 01:39:55', NULL, NULL, NULL),
(124, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-biet-thu-anh-Duc-Thanh-Hoa-2.jpg', b'0', NULL, NULL, '', '', 999, 37, '2017-03-18 01:39:55', NULL, NULL, NULL),
(125, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-biet-thu-anh-Duc-Thanh-Hoa-3.jpg', b'0', NULL, NULL, '', '', 999, 37, '2017-03-18 01:39:55', NULL, NULL, NULL),
(126, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-biet-thu-anh-Duc-Thanh-Hoa-4.jpg', b'0', NULL, NULL, '', '', 999, 37, '2017-03-18 01:39:55', NULL, NULL, NULL),
(127, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-biet-thu-anh-Duc-Thanh-Hoa-51.jpg', b'0', NULL, NULL, '', '', 999, 37, '2017-03-18 01:39:55', NULL, NULL, NULL),
(128, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-chi-An-Nguyen-Huy-Tuong1.jpg', b'1', NULL, NULL, '', '', 999, 38, '2017-03-18 02:37:12', NULL, NULL, NULL),
(129, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-chi-An-Nguyen-Huy-Tuong-2.jpg', b'0', NULL, NULL, '', '', 999, 38, '2017-03-18 02:37:12', NULL, NULL, NULL),
(130, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-chi-An-Nguyen-Huy-Tuong-3.jpg', b'0', NULL, NULL, '', '', 999, 38, '2017-03-18 02:37:12', NULL, NULL, NULL),
(131, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-chi-An-Nguyen-Huy-Tuong-4.jpg', b'0', NULL, NULL, '', '', 999, 38, '2017-03-18 02:37:12', NULL, NULL, NULL),
(132, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-anh-Si-Linh-Nam.jpg', b'1', NULL, NULL, '', '', 999, 39, '2017-03-18 02:51:47', NULL, NULL, NULL),
(133, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-anh-Si-Linh-Nam-2.jpg', b'0', NULL, NULL, '', '', 999, 39, '2017-03-18 02:51:47', NULL, NULL, NULL),
(134, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-anh-Si-Linh-Nam-31.jpg', b'0', NULL, NULL, '', '', 999, 39, '2017-03-18 02:51:47', NULL, NULL, NULL),
(135, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-anh-Si-Linh-Nam-4.jpg', b'0', NULL, NULL, '', '', 999, 39, '2017-03-18 02:51:47', NULL, NULL, NULL),
(136, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-anh-Thanh-Vinhome-My-Dinh.jpg', b'1', NULL, NULL, '', '', 999, 40, '2017-03-18 03:04:53', NULL, NULL, NULL),
(137, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-anh-Thanh-Vinhome-My-Dinh-2.jpg', b'0', NULL, NULL, '', '', 999, 40, '2017-03-18 03:04:53', NULL, NULL, NULL),
(138, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-anh-Thanh-Vinhome-My-Dinh-3.jpg', b'0', NULL, NULL, '', '', 999, 40, '2017-03-18 03:04:53', NULL, NULL, NULL),
(139, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-anh-Thanh-Vinhome-My-Dinh-4.jpg', b'0', NULL, NULL, '', '', 999, 40, '2017-03-18 03:04:53', NULL, NULL, NULL),
(140, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-anh-Thanh-Vinhome-My-Dinh-51.jpg', b'0', NULL, NULL, '', '', 999, 40, '2017-03-18 03:04:53', NULL, NULL, NULL),
(141, 'san-pham/', 'hinh-anh-thiet-ke-chung-cu-anh-hung-ecopark.jpg', b'1', NULL, NULL, '', '', 999, 41, '2017-03-18 03:30:36', NULL, NULL, NULL),
(142, 'san-pham/', 'hinh-anh-thiet-ke-chung-cu-anh-hung-ecopark-2.jpg', b'0', NULL, NULL, '', '', 999, 41, '2017-03-18 03:30:36', NULL, NULL, NULL),
(143, 'san-pham/', 'hinh-anh-thiet-ke-chung-cu-anh-hung-ecopark-3.jpg', b'0', NULL, NULL, '', '', 999, 41, '2017-03-18 03:30:36', NULL, NULL, NULL),
(144, 'san-pham/', 'hinh-anh-thiet-ke-chung-cu-anh-hung-ecopark-42.jpg', b'0', NULL, NULL, '', '', 999, 41, '2017-03-18 03:30:36', NULL, NULL, NULL),
(145, 'san-pham/', 'hinh-anh-thiet-ke-chung-cu-anh-hung-ecopark-5.jpg', b'0', NULL, NULL, '', '', 999, 41, '2017-03-18 03:30:36', NULL, NULL, NULL),
(146, 'san-pham/', 'hinh-anh-thiet-ke-chung-cu-anh-hung-ecopark-6.jpg', b'0', NULL, NULL, '', '', 999, 41, '2017-03-18 03:30:36', NULL, NULL, NULL),
(147, 'san-pham/', 'hinh-anh-thiet-ke-chung-cu-anh-hung-ecopark-7.jpg', b'0', NULL, NULL, '', '', 999, 41, '2017-03-18 03:30:36', NULL, NULL, NULL),
(148, 'san-pham/', 'hinh-anh-thiet-ke-chung-cu-anh-khanh-ha-dong.jpg', b'1', NULL, NULL, '', '', 999, 42, '2017-03-18 03:44:29', NULL, NULL, NULL),
(149, 'san-pham/', 'hinh-anh-thiet-ke-chung-cu-anh-khanh-ha-dong-21.jpg', b'0', NULL, NULL, '', '', 999, 42, '2017-03-18 03:44:29', NULL, NULL, NULL),
(150, 'san-pham/', 'hinh-anh-thiet-ke-chung-cu-anh-khanh-ha-dong-3.jpg', b'0', NULL, NULL, '', '', 999, 42, '2017-03-18 03:44:29', NULL, NULL, NULL),
(151, 'san-pham/', 'hinh-anh-thiet-ke-chung-cu-anh-khanh-ha-dong-4.jpg', b'0', NULL, NULL, '', '', 999, 42, '2017-03-18 03:44:29', NULL, NULL, NULL),
(152, 'san-pham/', 'hinh-anh-thiet-ke-chung-cu-anh-khanh-ha-dong-5.jpg', b'0', NULL, NULL, '', '', 999, 42, '2017-03-18 03:44:29', NULL, NULL, NULL),
(153, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-anh-hai-da-nang.jpg', b'1', NULL, NULL, '', '', 999, 43, '2017-03-18 03:56:00', NULL, NULL, NULL),
(154, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-anh-hai-da-nang-21.jpg', b'0', NULL, NULL, '', '', 999, 43, '2017-03-18 03:56:00', NULL, NULL, NULL),
(155, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-anh-hai-da-nang-3.jpg', b'0', NULL, NULL, '', '', 999, 43, '2017-03-18 03:56:00', NULL, NULL, NULL),
(156, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-anh-hai-da-nang-4.jpg', b'0', NULL, NULL, '', '', 999, 43, '2017-03-18 03:56:00', NULL, NULL, NULL),
(157, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-anh-Hai-Gamuda.jpg', b'1', NULL, NULL, '', '', 999, 44, '2017-03-24 03:58:28', NULL, NULL, NULL),
(158, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-anh-Hai-Gamuda-21.jpg', b'0', NULL, NULL, '', '', 999, 44, '2017-03-24 03:58:28', NULL, NULL, NULL),
(159, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-anh-Hai-Gamuda-3.jpg', b'0', NULL, NULL, '', '', 999, 44, '2017-03-24 03:58:28', NULL, NULL, NULL),
(160, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-chung-cu-anh-Hai-Gamuda-4.jpg', b'0', NULL, NULL, '', '', 999, 44, '2017-03-24 03:58:28', NULL, NULL, NULL),
(161, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-chi-Thuy-715-D2-Giang-Vo.jpg', b'1', NULL, NULL, '', '', 999, 45, '2017-03-24 04:37:14', NULL, NULL, NULL),
(162, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-chi-Thuy-715-D2-Giang-Vo-3.jpg', b'0', NULL, NULL, '', '', 999, 45, '2017-03-24 04:37:14', NULL, NULL, NULL),
(163, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-chi-Thuy-715-D2-Giang-Vo-4.jpg', b'0', NULL, NULL, '', '', 999, 45, '2017-03-24 04:37:14', NULL, NULL, NULL),
(164, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-chi-Thuy-715-D2-Giang-Vo-5.jpg', b'0', NULL, NULL, '', '', 999, 45, '2017-03-24 04:37:14', NULL, NULL, NULL),
(165, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-chi-Thuy-715-D2-Giang-Vo-6.jpg', b'0', NULL, NULL, '', '', 999, 45, '2017-03-24 04:37:14', NULL, NULL, NULL),
(166, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-chi-Thuy-715-D2-Giang-Vo-71.jpg', b'0', NULL, NULL, '', '', 999, 45, '2017-03-24 04:37:14', NULL, NULL, NULL),
(167, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-chi-Thuy-715-D2-Giang-Vo-8.jpg', b'0', NULL, NULL, '', '', 999, 45, '2017-03-24 04:37:14', NULL, NULL, NULL),
(168, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-chung-cu-chi-Thuy-715-D2-Giang-Vo-9.jpg', b'0', NULL, NULL, '', '', 999, 45, '2017-03-24 04:37:14', NULL, NULL, NULL),
(225, 'san-pham/', 'hinh-anh-thiet-ke-khach-san-Sam-Son-41.jpg', b'0', NULL, NULL, '', '', 999, 46, '2017-04-01 04:59:38', NULL, NULL, NULL),
(223, 'san-pham/', 'hinh-anh-thiet-ke-khach-san-Sam-Son-21.jpg', b'0', NULL, NULL, '', '', 999, 46, '2017-04-01 04:59:38', NULL, NULL, NULL),
(224, 'san-pham/', 'hinh-anh-thiet-ke-khach-san-Sam-Son-31.jpg', b'0', NULL, NULL, '', '', 999, 46, '2017-04-01 04:59:38', NULL, NULL, NULL),
(222, 'san-pham/', 'hinh-anh-thiet-ke-khach-san-Sam-Son2.jpg', b'1', NULL, NULL, '', '', 999, 46, '2017-04-01 04:59:38', NULL, NULL, NULL),
(231, 'san-pham/', 'hinh-anh-thiet-ke-nha-hanh-Nhat-4.jpg', b'0', NULL, NULL, '', '', 999, 47, '2017-04-01 05:03:54', NULL, NULL, NULL),
(230, 'san-pham/', 'hinh-anh-thiet-ke-nha-hanh-Nhat-2.jpg', b'0', NULL, NULL, '', '', 999, 47, '2017-04-01 05:03:54', NULL, NULL, NULL),
(229, 'san-pham/', 'hinh-anh-thiet-ke-nha-hanh-Nhat1.jpg', b'1', NULL, NULL, '', '', 999, 47, '2017-04-01 05:03:54', NULL, NULL, NULL),
(236, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-pho-nho-5.jpg', b'0', NULL, NULL, '', '', 999, 48, '2017-04-01 05:07:24', NULL, NULL, NULL),
(234, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-pho-nho-3.jpg', b'0', NULL, NULL, '', '', 999, 48, '2017-04-01 05:07:24', NULL, NULL, NULL),
(235, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-pho-nho-4.jpg', b'0', NULL, NULL, '', '', 999, 48, '2017-04-01 05:07:24', NULL, NULL, NULL),
(233, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-pho-nho-2.jpg', b'0', NULL, NULL, '', '', 999, 48, '2017-04-01 05:07:24', NULL, NULL, NULL),
(232, 'san-pham/', 'hinh-anh-thiet-ke-va-thi-cong-noi-that-nha-pho-nho.jpg', b'1', NULL, NULL, '', '', 999, 48, '2017-04-01 05:07:24', NULL, NULL, NULL),
(228, 'san-pham/', 'hinh-anh-thiet-ke-noi-that-showroom-ao-cuoi-032543-2112161.jpg', b'0', NULL, NULL, '', '', 999, 49, '2017-04-01 05:02:08', NULL, NULL, NULL),
(226, 'san-pham/', 'thiet-ke-noi-that-showroom-ao-cuoi-1-(1).jpg', b'1', NULL, NULL, '', '', 999, 49, '2017-04-01 05:02:08', NULL, NULL, NULL),
(227, 'san-pham/', 'hinh-anh-thiet-ke-noi-that-showroom-ao-cuoi-1.jpg', b'0', NULL, NULL, '', '', 999, 49, '2017-04-01 05:02:08', NULL, NULL, NULL),
(221, 'san-pham/', 'hinh-anh-thiet-ke-biet-thu-Villa-Quang-Binh-700m2-4.jpg', b'0', NULL, NULL, '', '', 999, 50, '2017-04-01 04:54:46', NULL, NULL, NULL),
(219, 'san-pham/', 'hinh-anh-thiet-ke-biet-thu-Villa-Quang-Binh-700m2-21.jpg', b'0', NULL, NULL, '', '', 999, 50, '2017-04-01 04:54:46', NULL, NULL, NULL),
(220, 'san-pham/', 'hinh-anh-thiet-ke-biet-thu-Villa-Quang-Binh-700m2-3.jpg', b'0', NULL, NULL, '', '', 999, 50, '2017-04-01 04:54:46', NULL, NULL, NULL),
(218, 'san-pham/', 'hinh-anh-thiet-ke-biet-thu-Villa-Quang-Binh-700m2.jpg', b'1', NULL, NULL, '', '', 999, 50, '2017-04-01 04:54:46', NULL, NULL, NULL),
(215, 'san-pham/', 'hinh-anh-thiet-ke-biet-thu-Villa-Quang-Binh-1050m2-3.jpg', b'0', NULL, NULL, '', '', 999, 51, '2017-04-01 04:52:58', NULL, NULL, NULL),
(216, 'san-pham/', 'hinh-anh-thiet-ke-biet-thu-Villa-Quang-Binh-1050m2-4.jpg', b'0', NULL, NULL, '', '', 999, 51, '2017-04-01 04:52:58', NULL, NULL, NULL),
(213, 'san-pham/', 'hinh-anh-thiet-ke-biet-thu-Villa-Quang-Binh-1050m2.jpg', b'1', NULL, NULL, '', '', 999, 51, '2017-04-01 04:52:58', NULL, NULL, NULL),
(214, 'san-pham/', 'hinh-anh-thiet-ke-biet-thu-Villa-Quang-Binh-1050m2-21.jpg', b'0', NULL, NULL, '', '', 999, 51, '2017-04-01 04:52:58', NULL, NULL, NULL),
(212, 'san-pham/', 'hinh-anh-thiet-ke-noi-that-nha-vuon-anh-Duc-Tay-Ho-92.jpg', b'0', NULL, NULL, '', '', 999, 52, '2017-04-01 04:48:09', NULL, NULL, NULL),
(211, 'san-pham/', 'hinh-anh-thiet-ke-noi-that-nha-vuon-anh-Duc-Tay-Ho-8.jpg', b'0', NULL, NULL, '', '', 999, 52, '2017-04-01 04:48:09', NULL, NULL, NULL),
(210, 'san-pham/', 'hinh-anh-thiet-ke-noi-that-nha-vuon-anh-Duc-Tay-Ho-7.jpg', b'0', NULL, NULL, '', '', 999, 52, '2017-04-01 04:48:09', NULL, NULL, NULL),
(209, 'san-pham/', 'hinh-anh-thiet-ke-noi-that-nha-vuon-anh-Duc-Tay-Ho-4.jpg', b'0', NULL, NULL, '', '', 999, 52, '2017-04-01 04:48:09', NULL, NULL, NULL),
(208, 'san-pham/', 'hinh-anh-thiet-ke-noi-that-nha-vuon-anh-Duc-Tay-Ho-3.jpg', b'0', NULL, NULL, '', '', 999, 52, '2017-04-01 04:48:09', NULL, NULL, NULL),
(207, 'san-pham/', 'hinh-anh-thiet-ke-noi-that-nha-vuon-anh-Duc-Tay-Ho-2.jpg', b'0', NULL, NULL, '', '', 999, 52, '2017-04-01 04:48:09', NULL, NULL, NULL),
(206, 'san-pham/', 'hinh-anh-thiet-ke-noi-that-nha-vuon-anh-Duc-Tay-Ho.jpg', b'1', NULL, NULL, '', '', 999, 52, '2017-04-01 04:48:09', NULL, NULL, NULL),
(205, 'san-pham/', 'hinh-anh-thiet-ke-noi-that-spa-Luxury-3.jpg', b'0', NULL, NULL, '', '', 999, 53, '2017-04-01 01:25:07', NULL, NULL, NULL),
(204, 'san-pham/', 'hinh-anh-thiet-ke-noi-that-spa-Luxury-2.jpg', b'0', NULL, NULL, '', '', 999, 53, '2017-04-01 01:25:07', NULL, NULL, NULL),
(203, 'san-pham/', 'hinh-anh-thiet-ke-noi-that-spa-Luxury.jpg', b'1', NULL, NULL, '', '', 999, 53, '2017-04-01 01:25:07', NULL, NULL, NULL),
(217, 'san-pham/', 'hinh-anh-thiet-ke-biet-thu-Villa-Quang-Binh-1050m2-5.jpg', b'0', NULL, NULL, '', '', 999, 51, '2017-04-01 04:52:58', NULL, NULL, NULL),
(237, 'san-pham/', 'biet-thu-1-tang-dep3.jpg', b'1', NULL, NULL, 'Nhà 1 tầng mái thái dẹp phong cách hiện đại', 'Nhà 1 tầng mái thái dẹp phong cách hiện đại ', 999, 54, '2017-11-09 09:36:33', NULL, NULL, NULL),
(238, 'san-pham/', 'biet-thu-2-tang-6.jpg', b'1', NULL, NULL, '', '', 999, 55, '2017-11-09 15:02:48', NULL, NULL, NULL),
(239, 'san-pham/', 'phoi-canh-11.jpg', b'1', NULL, NULL, 'Mẫu nhà 3 tầng hiện đại', 'Mẫu nhà 3 tầng hiện đại', 999, 56, '2017-11-09 15:10:46', NULL, NULL, NULL),
(240, 'san-pham/', 'phoi-canh-2.jpg', b'0', NULL, NULL, '', '', 999, 56, '2017-11-09 15:10:46', NULL, NULL, NULL),
(241, 'san-pham/', 'phoi-canh-3.jpg', b'0', NULL, NULL, '', '', 999, 56, '2017-11-09 15:10:46', NULL, NULL, NULL),
(242, 'san-pham/', 'nha-pho-dep-phoi-canh-21.jpg', b'1', NULL, NULL, '', '', 999, 57, '2017-11-09 15:22:31', NULL, NULL, NULL),
(243, 'san-pham/', 'biet-thu-2-tang-dep-nhat.jpg', b'1', NULL, NULL, 'Nhà 2 tầng đẹp phong cách tân cổ điển', 'Nhà 2 tầng đẹp phong cách tân cổ điển', 999, 58, '2017-11-09 15:27:31', NULL, NULL, NULL),
(244, 'san-pham/', 'biet-thu-2-tang-dep1.jpg', b'0', NULL, NULL, 'Nhà 2 tầng đẹp phong cách tân cổ điển', 'Nhà 2 tầng đẹp phong cách tân cổ điển', 999, 58, '2017-11-09 15:27:31', NULL, NULL, NULL),
(245, 'san-pham/', 'phoi-canh-36.jpg', b'1', NULL, NULL, 'Biệt thự cổ điển phong cách Châu Âu', 'Biệt thự cổ điển phong cách Châu Âu', 999, 59, '2017-11-09 15:30:55', NULL, NULL, NULL),
(246, 'san-pham/', 'bet-thu-2-tang-mai-thai-Phoi-canh-21.jpg', b'1', NULL, NULL, 'Thiết kế biệt thự đẹp 2 tầng tân cổ điển Pháp', 'Thiết kế biệt thự đẹp 2 tầng tân cổ điển Pháp', 999, 60, '2017-11-13 03:37:49', NULL, NULL, NULL),
(247, 'san-pham/', 'bet-thu-2-tang-mai-thai-phoi-canh-41.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự đẹp 2 tầng tân cổ điển Pháp', 'Thiết kế biệt thự đẹp 2 tầng tân cổ điển Pháp', 999, 60, '2017-11-13 03:37:49', NULL, NULL, NULL),
(248, 'san-pham/', 'biet-thu-2-tang-mai-thai-phoi-canh-12.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự đẹp 2 tầng tân cổ điển Pháp', 'Thiết kế biệt thự đẹp 2 tầng tân cổ điển Pháp', 999, 60, '2017-11-13 03:37:49', NULL, NULL, NULL),
(249, 'san-pham/', 'nha-nh-don-gian.jpg', b'1', NULL, NULL, '17 mẫu nhà mái thái cấp 4 nhỏ đẹp', '17 mẫu nhà mái thái cấp 4 nhỏ đẹp', 999, 61, '2017-11-14 10:26:04', NULL, NULL, NULL),
(250, 'san-pham/', 'nha-nh-don-gian-321.jpg', b'0', NULL, NULL, '17 mẫu nhà mái thái cấp 4 nhỏ đẹp', '17 mẫu nhà mái thái cấp 4 nhỏ đẹp', 999, 61, '2017-11-14 10:26:04', NULL, NULL, NULL),
(251, 'san-pham/', 'nha-nho-don-gian-6.jpg', b'0', NULL, NULL, '17 mẫu nhà mái thái cấp 4 nhỏ đẹp', '17 mẫu nhà mái thái cấp 4 nhỏ đẹp', 999, 61, '2017-11-14 10:26:04', NULL, NULL, NULL),
(252, 'san-pham/', 'nha-nho-don-gian-5.jpg', b'0', NULL, NULL, '17 mẫu nhà mái thái cấp 4 nhỏ đẹp', '17 mẫu nhà mái thái cấp 4 nhỏ đẹp', 999, 61, '2017-11-14 10:26:04', NULL, NULL, NULL),
(253, 'san-pham/', 'biet-thu-3-tang.jpg', b'1', NULL, NULL, 'Thiết kế nhà đẹp 3 tầng phong cách tân cổ điển', 'Thiết kế nhà đẹp 3 tầng phong cách tân cổ điển', 999, 62, '2017-11-17 01:55:19', NULL, NULL, NULL),
(254, 'san-pham/', 'biet-thu-dep.jpg', b'0', NULL, NULL, 'Thiết kế nhà đẹp 3 tầng phong cách tân cổ điển', 'Thiết kế nhà đẹp 3 tầng phong cách tân cổ điển', 999, 62, '2017-11-17 01:55:19', NULL, NULL, NULL),
(255, 'san-pham/', 'nha-3-tang-dep.jpg', b'0', NULL, NULL, '', '', 999, 62, '2017-11-17 01:55:19', NULL, NULL, NULL),
(256, 'san-pham/', 'biet-thu-sang-trong1.jpg', b'1', NULL, NULL, 'Mẫu biệt thự cao cấp 2 tầng phong cách Châu Âu', 'Mẫu biệt thự cao cấp 2 tầng phong cách Châu Âu', 999, 63, '2017-11-17 03:04:46', NULL, NULL, NULL),
(257, 'san-pham/', 'biet-thu-cao-cap1.jpg', b'0', NULL, NULL, 'Mẫu biệt thự cao cấp 2 tầng phong cách Châu Âu', 'Mẫu biệt thự cao cấp 2 tầng phong cách Châu Âu', 999, 63, '2017-11-17 03:04:46', NULL, NULL, NULL),
(258, 'san-pham/', 'mau-nha-dep3.jpg', b'0', NULL, NULL, 'Mẫu biệt thự cao cấp 2 tầng phong cách Châu Âu', 'Mẫu biệt thự cao cấp 2 tầng phong cách Châu Âu', 999, 63, '2017-11-17 03:04:46', NULL, NULL, NULL),
(259, 'san-pham/', 'ngoi-nha-dep1.jpg', b'0', NULL, NULL, 'Mẫu biệt thự cao cấp 2 tầng phong cách Châu Âu', 'Mẫu biệt thự cao cấp 2 tầng phong cách Châu Âu', 999, 63, '2017-11-17 03:04:46', NULL, NULL, NULL),
(260, 'san-pham/', 'pc1.jpg', b'1', NULL, NULL, 'Mẫu biệt thự cao cấp mặt tiền đẹp phong cách tân cổ điển', 'Mẫu biệt thự cao cấp mặt tiền đẹp phong cách tân cổ điển', 999, 64, '2017-11-18 02:44:55', NULL, NULL, NULL),
(261, 'san-pham/', 'pc2.jpg', b'0', NULL, NULL, 'Mẫu biệt thự cao cấp mặt tiền đẹp phong cách tân cổ điển', 'Mẫu biệt thự cao cấp mặt tiền đẹp phong cách tân cổ điển', 999, 64, '2017-11-18 02:44:55', NULL, NULL, NULL),
(262, 'san-pham/', 'pc4.jpg', b'0', NULL, NULL, 'Mẫu biệt thự cao cấp mặt tiền đẹp phong cách tân cổ điển', 'Mẫu biệt thự cao cấp mặt tiền đẹp phong cách tân cổ điển', 999, 64, '2017-11-18 02:44:55', NULL, NULL, NULL),
(263, 'san-pham/', 'biet-thu-tan-co-dien1.jpg', b'0', NULL, NULL, 'Mẫu biệt thự cao cấp mặt tiền đẹp phong cách tân cổ điển', 'Mẫu biệt thự cao cấp mặt tiền đẹp phong cách tân cổ điển', 999, 64, '2017-11-18 02:44:55', NULL, NULL, NULL),
(265, 'san-pham/', 'biet-thu-2-tang-hien-dai-021.jpg', b'1', NULL, NULL, 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại ', 999, 65, '2017-11-20 08:56:14', NULL, NULL, NULL),
(266, 'san-pham/', 'biet-thu-2-tang-hien-dai-04.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại ', 999, 65, '2017-11-20 08:56:14', NULL, NULL, NULL),
(267, 'san-pham/', 'biet-thu-2-tang-hien-dai-03.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại ', 999, 65, '2017-11-20 08:56:14', NULL, NULL, NULL),
(268, 'san-pham/', 'biet-thu-2-tang-hien-dai-023.jpg', b'1', NULL, NULL, 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 999, 66, '2017-11-21 01:58:01', NULL, NULL, NULL),
(269, 'san-pham/', 'biet-thu-2-tang-hien-dai011.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 999, 66, '2017-11-21 01:58:01', NULL, NULL, NULL),
(270, 'san-pham/', 'biet-thu-2-tang-hien-dai-031.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 999, 66, '2017-11-21 01:58:01', NULL, NULL, NULL),
(271, 'san-pham/', 'biet-thu-2-tang-hien-dai-041.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 999, 66, '2017-11-21 01:58:01', NULL, NULL, NULL),
(272, 'san-pham/', 'biet-thu-2-tang-4.jpg', b'1', NULL, NULL, 'Nhà 2 tầng hiện đại mái thái', 'Nhà 2 tầng hiện đại mái thái', 999, 55, '2017-11-21 02:07:58', NULL, NULL, NULL),
(273, 'san-pham/', 'biet-thu-2-tang-51.jpg', b'0', NULL, NULL, 'Nhà 2 tầng hiện đại mái thái', 'Nhà 2 tầng hiện đại mái thái', 999, 55, '2017-11-21 02:07:58', NULL, NULL, NULL),
(274, 'san-pham/', 'biet-thu-2-tang-13.jpg', b'0', NULL, NULL, 'Nhà 2 tầng hiện đại mái thái', 'Nhà 2 tầng hiện đại mái thái', 999, 55, '2017-11-21 02:07:58', NULL, NULL, NULL),
(275, 'san-pham/', 'biet-thu-2-tang-hien-dai-025.jpg', b'1', NULL, NULL, 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại ', 999, 67, '2017-11-21 06:52:31', NULL, NULL, NULL),
(276, 'san-pham/', 'biet-thu-2-tang-hien-dai012.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại ', 999, 67, '2017-11-21 06:52:31', NULL, NULL, NULL),
(277, 'san-pham/', 'biet-thu-2-tang-hien-dai-032.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại ', 999, 67, '2017-11-21 06:52:31', NULL, NULL, NULL),
(278, 'san-pham/', 'biet-thu-2-tang-hien-dai-042.jpg', b'0', NULL, NULL, '', '', 999, 67, '2017-11-21 06:52:31', NULL, NULL, NULL),
(279, 'san-pham/', 'biet-thu-2-tang-hien-dai-043.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại', 'Mẫu thiết kế nhà mái thái 2 tầng đẹp phong cách hiện đại ', 999, 67, '2017-11-21 06:52:31', NULL, NULL, NULL),
(280, 'san-pham/', 'phoi-canh-12.jpg', b'1', NULL, NULL, 'Thiết kế biệt thự mái thái 2 tầng ở Hà Nội', 'Thiết kế biệt thự mái thái 2 tầng ở Hà Nội', 999, 68, '2017-11-21 08:24:50', NULL, NULL, NULL),
(281, 'san-pham/', 'phoi-canh-21.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự mái thái 2 tầng ở Hà Nội', 'Thiết kế biệt thự mái thái 2 tầng ở Hà Nội', 999, 68, '2017-11-21 08:24:50', NULL, NULL, NULL),
(282, 'san-pham/', 'phoi-canh-31.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự mái thái 2 tầng ở Hà Nội', 'Thiết kế biệt thự mái thái 2 tầng ở Hà Nội', 999, 68, '2017-11-21 08:24:50', NULL, NULL, NULL),
(283, 'san-pham/', 'phoi-canh-41.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự mái thái 2 tầng ở Hà Nội', 'Thiết kế biệt thự mái thái 2 tầng ở Hà Nội', 999, 68, '2017-11-21 08:24:50', NULL, NULL, NULL),
(284, 'san-pham/', 'nha-gac-lung-dep-14.jpg', b'1', NULL, NULL, 'Những mẫu nhà gác lửng đẹp', 'Những mẫu nhà gác lửng đẹp', 999, 69, '2017-11-25 03:01:31', NULL, NULL, NULL),
(285, 'san-pham/', 'nha-gac-lung-dep-2.jpg', b'0', NULL, NULL, 'nhà gác lửng đẹp', 'nhà gác lửng đẹp', 999, 69, '2017-11-25 03:01:31', NULL, NULL, NULL),
(286, 'san-pham/', 'nha-gac-lung-dep-8.jpg', b'0', NULL, NULL, 'nhà gác lửng đẹp', 'nhà gác lửng đẹp', 999, 69, '2017-11-25 03:01:31', NULL, NULL, NULL),
(287, 'san-pham/', 'nha-gac-lung-dep-31.jpg', b'0', NULL, NULL, 'nhà gác lửng đẹp', 'nhà gác lửng đẹp', 999, 69, '2017-11-25 03:01:31', NULL, NULL, NULL),
(288, 'san-pham/', 'nha-gac-lung-dep-16.jpg', b'0', NULL, NULL, 'nhà gác lửng đẹp', 'nhà gác lửng đẹp', 999, 69, '2017-11-25 03:01:31', NULL, NULL, NULL),
(289, 'san-pham/', 'nha-gac-lung-dep-5.jpg', b'1', NULL, NULL, 'nhà gác lửng đẹp', 'nhà gác lửng đẹp', 999, 69, '2017-11-25 03:02:35', NULL, NULL, NULL),
(290, 'san-pham/', 'thiet-ke-noi-that-biet-thu-1.jpg', b'1', NULL, NULL, 'Thiết kế nội thất biệt thự', 'Thiết kế nội thất biệt thự ', 999, 70, '2017-11-25 03:46:03', NULL, NULL, NULL),
(291, 'san-pham/', 'thiet-ke-noi-that-biet-thu-21.jpg', b'0', NULL, NULL, 'thiết kế nội thất phòng khách', 'thiết kế nội thất phòng khách ', 999, 70, '2017-11-25 03:46:03', NULL, NULL, NULL),
(292, 'san-pham/', 'thiet-ke-noi-that-biet-thu-4.jpg', b'0', NULL, NULL, 'thiết kế nội thất phòng khách', 'thiết kế nội thất phòng khách ', 999, 70, '2017-11-25 03:46:03', NULL, NULL, NULL),
(293, 'san-pham/', 'thiet-ke-noi-that-biet-thu-6.jpg', b'0', NULL, NULL, 'thiết kế phòng thờ gia tiên', 'thiết kế phòng thờ gia tiên', 999, 70, '2017-11-25 03:46:03', NULL, NULL, NULL),
(294, 'san-pham/', 'thiet-ke-noi-that-biet-thu-7.jpg', b'0', NULL, NULL, 'thiết kế phòng ăn', 'thiết kế phòng ăn', 999, 70, '2017-11-25 03:46:03', NULL, NULL, NULL),
(295, 'san-pham/', 'thiet-ke-noi-that-biet-thu-9.jpg', b'0', NULL, NULL, 'thiết kế phòng ngủ', 'thiết kế phòng ngủ', 999, 70, '2017-11-25 03:46:03', NULL, NULL, NULL),
(296, 'san-pham/', 'thiet-ke-noi-that-biet-thu-11.jpg', b'0', NULL, NULL, 'thiết kế phòng ngủ', 'thiết kế phòng ngủ', 999, 70, '2017-11-25 03:46:03', NULL, NULL, NULL),
(297, 'san-pham/', 'thiet-ke-noi-that-biet-thu-14.jpg', b'0', NULL, NULL, 'thiết kế phòng ngủ', 'thiết kế phòng ngủ', 999, 70, '2017-11-25 03:46:03', NULL, NULL, NULL),
(298, 'san-pham/', 'thiet-ke-noi-that-biet-thu-10.jpg', b'0', NULL, NULL, 'thiết kế tủ quần áo', 'thiết kế tủ quần áo', 999, 70, '2017-11-25 03:46:03', NULL, NULL, NULL),
(299, 'san-pham/', 'mau-nha-dep-2-tang.jpg', b'1', NULL, NULL, 'Mẫu biệt thự 2 tầng mái ngói đẹp 2017', 'Mẫu nhà 2 tầng mái ngói - BT142', 999, 71, '2017-11-30 02:23:50', NULL, NULL, NULL),
(300, 'san-pham/', 'biet-thu-2-tang.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói', 'Mẫu nhà 2 tầng mái ngói', 999, 71, '2017-11-30 02:23:50', NULL, NULL, NULL),
(301, 'san-pham/', 'biet-thu-dep-2-tang.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói', 'Mẫu nhà 2 tầng mái ngói', 999, 71, '2017-11-30 02:23:50', NULL, NULL, NULL),
(302, 'san-pham/', 'nha-tret-3-phong-ngu-1.jpg', b'1', NULL, NULL, '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', 999, 72, '2017-11-30 10:05:33', NULL, NULL, NULL),
(303, 'san-pham/', 'nha-tret-3-phong-ngu-2.jpg', b'0', NULL, NULL, '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', 999, 72, '2017-11-30 10:05:33', NULL, NULL, NULL),
(304, 'san-pham/', 'nha-tret-3-phong-ngu-4.jpg', b'0', NULL, NULL, '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', 999, 72, '2017-11-30 10:05:33', NULL, NULL, NULL),
(305, 'san-pham/', 'nha-tret-3-phong-ngu-5.jpg', b'0', NULL, NULL, '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', 999, 72, '2017-11-30 10:05:33', NULL, NULL, NULL),
(306, 'san-pham/', 'nha-tret-3-phong-ngu-6.jpg', b'0', NULL, NULL, '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', 999, 72, '2017-11-30 10:05:33', NULL, NULL, NULL),
(307, 'san-pham/', 'nha-tret-3-phong-ngu-7.jpg', b'0', NULL, NULL, '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', 999, 72, '2017-11-30 10:05:33', NULL, NULL, NULL),
(308, 'san-pham/', 'nha-tret-3-phong-ngu-8.jpg', b'0', NULL, NULL, '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', 999, 72, '2017-11-30 10:05:33', NULL, NULL, NULL),
(309, 'san-pham/', 'nha-tret-3-phong-ngu-9.jpg', b'0', NULL, NULL, '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', 999, 72, '2017-11-30 10:05:33', NULL, NULL, NULL),
(310, 'san-pham/', 'nha-tret-3-phong-ngu-10.jpg', b'0', NULL, NULL, '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', '9 mẫu nhà trệt 3 phòng ngủ đẹp nhất 1018', 999, 72, '2017-11-30 10:05:33', NULL, NULL, NULL),
(311, 'san-pham/', 'mau-nha-2-tang-dep-1.jpg', b'1', NULL, NULL, 'Mẫu nhà 2 tầng đẹp có tầng hầm đẹp', 'Mẫu nhà 2 tầng đẹp có tầng hầm đẹp', 999, 73, '2017-12-01 02:32:52', NULL, NULL, NULL),
(504, 'san-pham/', 'mau-nha-2-tang-dep-2-min1.jpg', b'1', NULL, NULL, '', '', 999, 73, '2018-05-18 09:54:53', NULL, NULL, NULL),
(313, 'san-pham/', 'mau-nha-2-tang-dep-3.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng đẹp có tầng hầm đẹp', 'Mẫu nhà 2 tầng đẹp có tầng hầm đẹp', 999, 73, '2017-12-01 02:32:52', NULL, NULL, NULL),
(314, 'san-pham/', 'mau-nha-2-tang-dep-4.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng đẹp có tầng hầm đẹp', 'Mẫu nhà 2 tầng đẹp có tầng hầm đẹp', 999, 73, '2017-12-01 02:32:52', NULL, NULL, NULL),
(315, 'san-pham/', 'mau-nha-2-tang-dep-5.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng đẹp có tầng hầm đẹp', 'Mẫu nhà 2 tầng đẹp có tầng hầm đẹp', 999, 73, '2017-12-01 02:32:52', NULL, NULL, NULL),
(316, 'san-pham/', 'biet-thu-1-tang1.jpg', b'1', NULL, NULL, '', '', 999, 74, '2017-12-04 04:48:09', NULL, NULL, NULL),
(317, 'san-pham/', 'mat-bang-117.jpg', b'0', NULL, NULL, '', '', 999, 74, '2017-12-04 04:48:09', NULL, NULL, NULL),
(318, 'san-pham/', 'nha-vuon-1.jpg', b'1', NULL, NULL, 'Mẫu biệt thự vườn 2 tầng mái thái', 'Mẫu biệt thự vườn 2 tầng mái thái', 999, 75, '2017-12-05 09:04:57', NULL, NULL, NULL),
(319, 'san-pham/', 'phoi-canh-nha-5.jpg', b'0', NULL, NULL, 'Mẫu biệt thự vườn 2 tầng mái thái', 'Mẫu biệt thự vườn 2 tầng mái thái', 999, 75, '2017-12-05 09:04:57', NULL, NULL, NULL),
(320, 'san-pham/', 'phoi-canh-nha-7.jpg', b'0', NULL, NULL, 'Mẫu biệt thự vườn 2 tầng mái thái', 'Mẫu biệt thự vườn 2 tầng mái thái', 999, 75, '2017-12-05 09:04:57', NULL, NULL, NULL),
(321, 'san-pham/', 'phoi-canh-nha-3.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 2 tầng mái thái đẹp', 'Mẫu nhà vườn 2 tầng mái thái đẹp', 999, 75, '2017-12-05 09:04:57', NULL, NULL, NULL),
(322, 'san-pham/', 'phoi-canh-nha-21.jpg', b'0', NULL, NULL, '', '', 999, 75, '2017-12-05 09:04:57', NULL, NULL, NULL),
(323, 'san-pham/', 'phoi-canh-san-tenis-13.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 2 tầng mái thái', 'Mẫu nhà vườn 2 tầng mái thái', 999, 75, '2017-12-05 09:04:57', NULL, NULL, NULL),
(324, 'san-pham/', 'phoi-canh-cong-sau-8.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 2 tầng mái thái', 'Mẫu nhà vườn 2 tầng mái thái', 999, 75, '2017-12-05 09:04:57', NULL, NULL, NULL),
(325, 'san-pham/', 'phoi-canh-be-boi-11.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 2 tầng mái thái', 'Mẫu nhà vườn 2 tầng mái thái', 999, 75, '2017-12-05 09:04:57', NULL, NULL, NULL),
(326, 'san-pham/', 'phoi-canh-an-ngoai-troi-14.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 2 tầng mái thái', 'Mẫu nhà vườn 2 tầng mái thái', 999, 75, '2017-12-05 09:04:57', NULL, NULL, NULL),
(327, 'san-pham/', 'mau-nha-2-tang-dep1.jpg', b'1', NULL, NULL, 'Mẫu nhà 2 tầng đẹp 4 phòng ngủ mặt tiền nhà phố đẹp', 'Mẫu nhà 2 tầng đẹp 4 phòng ngủ mặt tiền nhà phố đẹp', 999, 76, '2017-12-14 02:15:21', NULL, NULL, NULL),
(328, 'san-pham/', 'nha-2-tang-dep.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng đẹp 4 phòng ngủ mặt tiền nhà phố đẹp', 'Mẫu nhà 2 tầng đẹp 4 phòng ngủ mặt tiền nhà phố đẹp', 999, 76, '2017-12-14 02:15:21', NULL, NULL, NULL),
(507, 'san-pham/', 'nha-2-tang-mai-thai-dep-min.jpg', b'1', NULL, NULL, 'Thiết kế nhà 2 tầng 100m2 4 phòng ngủ Hà Đông - Hà Nội', 'Thiết kế nhà 2 tầng 100m2 4 phòng ngủ Hà Đông - Hà Nội', 999, 77, '2018-05-18 10:08:27', NULL, NULL, NULL),
(330, 'san-pham/', 'mau-nha-2-tang.jpg', b'0', NULL, NULL, 'Thiết kế nhà 2 tầng 100m2 4 phòng ngủ Hà Đông - Hà Nội', 'Thiết kế nhà 2 tầng 100m2 4 phòng ngủ Hà Đông - Hà Nội', 999, 77, '2017-12-14 02:35:04', NULL, NULL, NULL),
(331, 'san-pham/', 'mat-tien-nha-2-tang.jpg', b'0', NULL, NULL, 'Thiết kế nhà 2 tầng 100m2 4 phòng ngủ Hà Đông - Hà Nội', 'Thiết kế nhà 2 tầng 100m2 4 phòng ngủ Hà Đông - Hà Nội', 999, 77, '2017-12-14 02:35:04', NULL, NULL, NULL),
(332, 'san-pham/', 'noi-that-phong-khach-hien-dai.jpg', b'1', NULL, NULL, 'Bộ sưu tập những mẫu trang trí nội thất phong khách đẹp mắt', 'Bộ sưu tập những mẫu trang trí nội thất phong khách đẹp mắt', 999, 78, '2017-12-18 04:25:07', NULL, NULL, NULL),
(333, 'san-pham/', 'mau-noi-that-dep.jpg', b'0', NULL, NULL, 'Bộ sưu tập những mẫu trang trí nội thất phong khách đẹp mắt', 'Bộ sưu tập những mẫu trang trí nội thất phong khách đẹp mắt', 999, 78, '2017-12-18 04:25:07', NULL, NULL, NULL),
(334, 'san-pham/', 'Thiet-ke-noi-that-chung-cu-Dai-Kim-phong-khach-NT25.jpg', b'0', NULL, NULL, 'Bộ sưu tập những mẫu trang trí nội thất phong khách đẹp mắt', 'Bộ sưu tập những mẫu trang trí nội thất phong khách đẹp mắt', 999, 78, '2017-12-18 04:25:07', NULL, NULL, NULL),
(335, 'san-pham/', 'noi-that-phong-khach-chung-cu.jpg', b'0', NULL, NULL, 'Bộ sưu tập những mẫu trang trí nội thất phong khách đẹp mắt', 'Bộ sưu tập những mẫu trang trí nội thất phong khách đẹp mắt', 999, 78, '2017-12-18 04:25:07', NULL, NULL, NULL),
(336, 'san-pham/', 'thiet-ke-phong-khach1.jpg', b'0', NULL, NULL, 'Bộ sưu tập những mẫu trang trí nội thất phong khách đẹp mắt', 'Bộ sưu tập những mẫu trang trí nội thất phong khách đẹp mắt', 999, 78, '2017-12-18 04:25:07', NULL, NULL, NULL),
(337, 'san-pham/', 'mau-noi-that-phong-an-dep.jpg', b'1', NULL, NULL, 'Mãu phòng ăn nhà chung cư phong cách hiện đại', 'Mãu phòng ăn nhà chung cư phong cách hiện đại ', 999, 79, '2017-12-21 08:09:58', NULL, NULL, NULL),
(338, 'san-pham/', 'mau-phong-an-chung-cu-nho.jpg', b'0', NULL, NULL, 'Mãu phòng ăn nhà chung cư phong cách hiện đại', 'Mãu phòng ăn nhà chung cư phong cách hiện đại ', 999, 79, '2017-12-21 08:09:58', NULL, NULL, NULL),
(339, 'san-pham/', 'noi-that-phong-an-chung-cu1.jpg', b'0', NULL, NULL, 'Mãu phòng ăn nhà chung cư phong cách hiện đại', 'Mãu phòng ăn nhà chung cư phong cách hiện đại ', 999, 79, '2017-12-21 08:09:58', NULL, NULL, NULL);
INSERT INTO `imageproducts` (`ImageProductsID`, `ImagePreset`, `ImageURL`, `IsMainImage`, `Title`, `Description`, `AltText`, `TitleText`, `Orders`, `ProductsID`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(340, 'san-pham/', 'noi-that-bap-an-nha-chung-cu.jpg', b'0', NULL, NULL, 'Mãu phòng ăn nhà chung cư phong cách hiện đại', 'Mãu phòng ăn nhà chung cư phong cách hiện đại ', 999, 79, '2017-12-21 08:09:58', NULL, NULL, NULL),
(341, 'san-pham/', 'phoi-canh-221.jpg', b'1', NULL, NULL, 'Mẫu biệt thự 3 tầng kiểu Pháp đẹp nhất', 'Mẫu biệt thự 3 tầng kiểu Pháp đẹp nhất', 999, 80, '2017-12-28 08:56:07', NULL, NULL, NULL),
(342, 'san-pham/', 'phoi-canh-32.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng kiểu Pháp đẹp nhất', 'Mẫu biệt thự 3 tầng kiểu Pháp đẹp nhất', 999, 80, '2017-12-28 08:56:07', NULL, NULL, NULL),
(343, 'san-pham/', 'phoi-canh-121.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng kiểu Pháp đẹp nhất', 'Mẫu biệt thự 3 tầng kiểu Pháp đẹp nhất', 999, 80, '2017-12-28 08:56:07', NULL, NULL, NULL),
(344, 'san-pham/', 'phoi-canh-24.jpg', b'1', NULL, NULL, 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 999, 81, '2017-12-28 09:20:28', NULL, NULL, NULL),
(345, 'san-pham/', 'phoi-canh-33.jpg', b'0', NULL, NULL, 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 999, 81, '2017-12-28 09:20:28', NULL, NULL, NULL),
(346, 'san-pham/', '1-1.jpg', b'0', NULL, NULL, 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 999, 81, '2017-12-28 09:20:28', NULL, NULL, NULL),
(347, 'san-pham/', 'nội-thất-1.jpg', b'0', NULL, NULL, 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 999, 81, '2017-12-28 09:20:28', NULL, NULL, NULL),
(348, 'san-pham/', 'nội-thất-2.jpg', b'0', NULL, NULL, 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 999, 81, '2017-12-28 09:20:28', NULL, NULL, NULL),
(349, 'san-pham/', 'nội-thất-3.jpg', b'0', NULL, NULL, 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 999, 81, '2017-12-28 09:20:28', NULL, NULL, NULL),
(350, 'san-pham/', 'nội-thất-4.jpg', b'0', NULL, NULL, 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 999, 81, '2017-12-28 09:20:28', NULL, NULL, NULL),
(351, 'san-pham/', 'nội-thất-5.jpg', b'0', NULL, NULL, 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 999, 81, '2017-12-28 09:20:28', NULL, NULL, NULL),
(352, 'san-pham/', 'nội-thất-6.jpg', b'0', NULL, NULL, 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 999, 81, '2017-12-28 09:20:28', NULL, NULL, NULL),
(353, 'san-pham/', 'nội-thất-7.jpg', b'0', NULL, NULL, 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 'Biệt thự 3 tầng đẹp kiểu Pháp tân cổ điển', 999, 81, '2017-12-28 09:20:28', NULL, NULL, NULL),
(354, 'san-pham/', 'thiet-ke-kien-truc-biet-thu-2-tang-nha-anh-Hoan-Hai-Duong-phoi-canh-1-BT90.jpg', b'1', NULL, NULL, 'Thiết kế nhà 2 mặt tiền vát góc đẹp hiện đại', 'Thiết kế nhà 2 mặt tiền vát góc đẹp hiện đại ', 999, 82, '2017-12-29 04:20:32', NULL, NULL, NULL),
(355, 'san-pham/', 'thiet-ke-kien-truc-biet-thu-2-tang-nha-anh-Hoan-Hai-Duong-phoi-canh-2-BT90.jpg', b'0', NULL, NULL, 'Thiết kế nhà 2 mặt tiền vát góc đẹp hiện đại', 'Thiết kế nhà 2 mặt tiền vát góc đẹp hiện đại ', 999, 82, '2017-12-29 04:20:32', NULL, NULL, NULL),
(356, 'san-pham/', 'thiet-ke-kien-truc-biet-thu-2-tang-nha-anh-Hoan-Hai-Duong-phoi-canh-3-BT90_(1).jpg', b'0', NULL, NULL, 'Thiết kế nhà 2 mặt tiền vát góc đẹp hiện đại', 'Thiết kế nhà 2 mặt tiền vát góc đẹp hiện đại ', 999, 82, '2017-12-29 04:20:32', NULL, NULL, NULL),
(357, 'san-pham/', 'thiet-ke-kien-truc-biet-thu-2-tang-nha-anh-Hoan-Hai-Duong-phoi-canh-3-BT90.jpg', b'0', NULL, NULL, 'Thiết kế nhà 2 mặt tiền vát góc đẹp hiện đại', 'Thiết kế nhà 2 mặt tiền vát góc đẹp hiện đại ', 999, 82, '2017-12-29 04:20:32', NULL, NULL, NULL),
(358, 'san-pham/', 'TT-1.jpg', b'1', NULL, NULL, 'Mẫu biệt thự 3 tầng đẹp nhất 2018 - BT131', 'Mẫu biệt thự 3 tầng đẹp nhất 2018 - BT131', 999, 83, '2018-01-03 09:55:44', NULL, NULL, NULL),
(359, 'san-pham/', 'C1.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng đẹp nhất 2018 - BT131', 'Mẫu biệt thự 3 tầng đẹp nhất 2018 - BT131', 999, 83, '2018-01-03 09:55:44', NULL, NULL, NULL),
(360, 'san-pham/', 'C2.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng đẹp nhất 2018 - BT131', 'Mẫu biệt thự 3 tầng đẹp nhất 2018 - BT131', 999, 83, '2018-01-03 09:55:44', NULL, NULL, NULL),
(361, 'san-pham/', 'C31.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng đẹp nhất 2018 - BT131', 'Mẫu biệt thự 3 tầng đẹp nhất 2018 - BT131', 999, 83, '2018-01-03 09:55:44', NULL, NULL, NULL),
(362, 'san-pham/', 'mau-nha-3-tang-dep-hinh-chu-l1.jpg', b'1', NULL, NULL, 'Mẫu biệt thự 3 tầng đẹp chữ l tân cổ điển Pháp', 'Mẫu biệt thự 3 tầng đẹp chữ l tân cổ điển Pháp', 999, 84, '2018-01-05 08:25:59', NULL, NULL, NULL),
(363, 'san-pham/', 'mau-biet-thu-3-tang-dep-hing-chu-l.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng đẹp chữ l tân cổ điển Pháp', 'Mẫu biệt thự 3 tầng đẹp chữ l tân cổ điển Pháp', 999, 84, '2018-01-05 08:25:59', NULL, NULL, NULL),
(364, 'san-pham/', 'mau-biet-thu-3-tang-tan-co-dien-chu-l.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng đẹp chữ l tân cổ điển Pháp', 'Mẫu biệt thự 3 tầng đẹp chữ l tân cổ điển Pháp', 999, 84, '2018-01-05 08:25:59', NULL, NULL, NULL),
(365, 'san-pham/', 'phoi-canh-mau-biet-thu-hinh-chu-l.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng đẹp chữ l tân cổ điển Pháp', 'Mẫu biệt thự 3 tầng đẹp chữ l tân cổ điển Pháp', 999, 84, '2018-01-05 08:25:59', NULL, NULL, NULL),
(366, 'san-pham/', 'mau-nha-ong-3-tang-tan-co-die1.jpg', b'1', NULL, NULL, 'Mẫu nhà ống tân cổ điển 3 tầng mặt tiền đẹp', 'Mẫu nhà ống tân cổ điển 3 tầng mặt tiền đẹp', 999, 85, '2018-01-05 08:46:44', NULL, NULL, NULL),
(367, 'san-pham/', 'mau-nha-ong-mat-tien-dep.jpg', b'0', NULL, NULL, 'Mẫu nhà ống tân cổ điển 3 tầng mặt tiền đẹp', 'Mẫu nhà ống tân cổ điển 3 tầng mặt tiền đẹp', 999, 85, '2018-01-05 08:46:44', NULL, NULL, NULL),
(368, 'san-pham/', 'mau-nha-ong-mat-tien-dep-nhat.jpg', b'0', NULL, NULL, 'Mẫu nhà ống tân cổ điển 3 tầng mặt tiền đẹp', 'Mẫu nhà ống tân cổ điển 3 tầng mặt tiền đẹp', 999, 85, '2018-01-05 08:46:44', NULL, NULL, NULL),
(369, 'san-pham/', 'mau-biet-thu-3-tang-2-mat-tien1.jpg', b'1', NULL, NULL, 'Mẫu nhà 3 tầng 2 mặt tiền hiện đại - BT126', 'Mẫu nhà 3 tầng 2 mặt tiền hiện đại - BT126', 999, 86, '2018-01-05 10:10:36', NULL, NULL, NULL),
(370, 'san-pham/', 'mau-biet-thu-3-tang-2-mat-tien-dep-kho-tin.jpg', b'0', NULL, NULL, 'Mẫu nhà 3 tầng 2 mặt tiền hiện đại - BT126', 'Mẫu nhà 3 tầng 2 mặt tiền hiện đại - BT126', 999, 86, '2018-01-05 10:10:36', NULL, NULL, NULL),
(371, 'san-pham/', 'Thiet-ke-biet-thu-hoa-binh-phoi-canh-BT751.jpg', b'1', NULL, NULL, 'Mẫu biệt thự 1 tầng kiểu Pháp - BT75', 'Mẫu biệt thự 1 tầng kiểu Pháp - BT75', 999, 87, '2018-01-06 02:30:02', NULL, NULL, NULL),
(372, 'san-pham/', 'Thiet-ke-biet-thu-hoa-binh-phoi-canh-2-BT75.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 1 tầng kiểu Pháp - BT75', 'Mẫu biệt thự 1 tầng kiểu Pháp - BT75', 999, 87, '2018-01-06 02:30:02', NULL, NULL, NULL),
(373, 'san-pham/', 'Thiet-ke-biet-thu-hoa-binh-phoi-canh-1-BT75.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 1 tầng kiểu Pháp - BT75', 'Mẫu biệt thự 1 tầng kiểu Pháp - BT75', 999, 87, '2018-01-06 02:30:02', NULL, NULL, NULL),
(374, 'san-pham/', 'mau-nha-1-tang-5-phong-ngu.jpg', b'1', NULL, NULL, 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 999, 88, '2018-01-09 09:47:50', NULL, NULL, NULL),
(375, 'san-pham/', 'nha-1-tang-5-phong-ngu-dep1.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 999, 88, '2018-01-09 09:47:50', NULL, NULL, NULL),
(376, 'san-pham/', 'mat-tien-mau-nha-1-tang-5-phong-ngu.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 999, 88, '2018-01-09 09:47:50', NULL, NULL, NULL),
(377, 'san-pham/', 'mat-tien-nha-dep.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 999, 88, '2018-01-09 09:47:50', NULL, NULL, NULL),
(378, 'san-pham/', 'mau-nha-1-tang-5-phong-ngu-dep.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 999, 88, '2018-01-09 09:47:50', NULL, NULL, NULL),
(379, 'san-pham/', 'nha-co-ham-5-phong-ngu.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 999, 88, '2018-01-09 09:47:50', NULL, NULL, NULL),
(380, 'san-pham/', 'phoi-canh-nha-1-tang-5-phong-ngu.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 999, 88, '2018-01-09 09:47:50', NULL, NULL, NULL),
(381, 'san-pham/', 'toan-canh-nha-1-tang-5-phong-ngu.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 999, 88, '2018-01-09 09:47:50', NULL, NULL, NULL),
(382, 'san-pham/', 'thiet-ke-nha-1-tang-5-phong-ngu.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 999, 88, '2018-01-09 09:47:50', NULL, NULL, NULL),
(383, 'san-pham/', 'noi-that-phong-khach.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 999, 88, '2018-01-09 09:47:50', NULL, NULL, NULL),
(384, 'san-pham/', 'phong-lam-viec-chinh-3.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 999, 88, '2018-01-09 09:47:50', NULL, NULL, NULL),
(385, 'san-pham/', 'thiet-ke-biet-thu-cali-house-ho-sen-BT80.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 'Mẫu nhà vườn 1 tầng 5 phòng ngủ đẹp nhất 2018', 999, 88, '2018-01-09 09:47:50', NULL, NULL, NULL),
(386, 'san-pham/', 'nha-san-vuon-1-tang-dep.jpg', b'1', NULL, NULL, 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 999, 89, '2018-01-10 08:38:49', NULL, NULL, NULL),
(387, 'san-pham/', 'nha-san-vuon-1-tang1.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 999, 89, '2018-01-10 08:38:49', NULL, NULL, NULL),
(388, 'san-pham/', 'nha-san-vuon-dep.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 999, 89, '2018-01-10 08:38:49', NULL, NULL, NULL),
(389, 'san-pham/', 'nha-san-vuon-nong-thon1.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 999, 89, '2018-01-10 08:38:49', NULL, NULL, NULL),
(390, 'san-pham/', 'noi-that-phong-khach1.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 999, 89, '2018-01-10 08:38:49', NULL, NULL, NULL),
(391, 'san-pham/', 'noi-that-phong-an-dep.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 999, 89, '2018-01-10 08:38:49', NULL, NULL, NULL),
(392, 'san-pham/', 'phong-ngu-cho-be.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 999, 89, '2018-01-10 08:38:49', NULL, NULL, NULL),
(393, 'san-pham/', 'noi-that-phong-ngu.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 'Mẫu nhà vườn 1 tầng 3 phòng ngủ mái thái - BT116', 999, 89, '2018-01-10 08:38:49', NULL, NULL, NULL),
(394, 'san-pham/', 'noi-that-biet-thu1.jpg', b'1', NULL, NULL, 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 999, 90, '2018-01-10 08:45:50', NULL, NULL, NULL),
(395, 'san-pham/', 'noi-that-phong-khach-dep.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 999, 90, '2018-01-10 08:45:50', NULL, NULL, NULL),
(396, 'san-pham/', 'noi-that-phong-khach2.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 999, 90, '2018-01-10 08:45:50', NULL, NULL, NULL),
(397, 'san-pham/', 'nha-san-vuon-1-tang-dep1.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 999, 90, '2018-01-10 08:45:50', NULL, NULL, NULL),
(398, 'san-pham/', 'noi-that-phong-an.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 999, 90, '2018-01-10 08:45:50', NULL, NULL, NULL),
(399, 'san-pham/', 'noi-that-phong-an-dep1.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 999, 90, '2018-01-10 08:45:50', NULL, NULL, NULL),
(400, 'san-pham/', 'phong-tho.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 999, 90, '2018-01-10 08:45:50', NULL, NULL, NULL),
(401, 'san-pham/', 'phong-tho-dep.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 999, 90, '2018-01-10 08:45:50', NULL, NULL, NULL),
(402, 'san-pham/', 'noi-that-phong-ngu1.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 999, 90, '2018-01-10 08:45:50', NULL, NULL, NULL),
(403, 'san-pham/', 'noi-that-phong-ngu-dep.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 999, 90, '2018-01-10 08:45:50', NULL, NULL, NULL),
(404, 'san-pham/', 'phong-ngu-ban-lam-viec.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 999, 90, '2018-01-10 08:45:50', NULL, NULL, NULL),
(405, 'san-pham/', 'phong-ngu-bo-me.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 999, 90, '2018-01-10 08:45:50', NULL, NULL, NULL),
(406, 'san-pham/', 'phong-ngu-cho-be1.jpg', b'0', NULL, NULL, 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 'Mẫu thiết kế nội thất biệt thự vườn 1 tầng 160m2', 999, 90, '2018-01-10 08:45:50', NULL, NULL, NULL),
(407, 'san-pham/', 'mau-nha-biet-thu-2-tang1.png', b'1', NULL, NULL, 'Mẫu thiết kế nhà mái thái 3 tầng mặt phố đẹp - BT129', 'Mẫu thiết kế nhà mái thái 3 tầng mặt phố đẹp - BT129', 999, 91, '2018-01-11 03:22:55', NULL, NULL, NULL),
(408, 'san-pham/', 'bie-thu-nha-2-tang2.png', b'0', NULL, NULL, 'Mẫu thiết kế nhà mái thái 3 tầng mặt phố đẹp - BT129', 'Mẫu thiết kế nhà mái thái 3 tầng mặt phố đẹp - BT129', 999, 91, '2018-01-11 03:22:55', NULL, NULL, NULL),
(409, 'san-pham/', 'mau-biet-thu-2-tang1.png', b'0', NULL, NULL, 'Mẫu thiết kế nhà mái thái 3 tầng mặt phố đẹp - BT129', 'Mẫu thiết kế nhà mái thái 3 tầng mặt phố đẹp - BT129', 999, 91, '2018-01-11 03:22:55', NULL, NULL, NULL),
(410, 'san-pham/', 'mau-biet-thu-2-tang-dep1.png', b'0', NULL, NULL, 'Mẫu thiết kế nhà mái thái 3 tầng mặt phố đẹp - BT129', 'Mẫu thiết kế nhà mái thái 3 tầng mặt phố đẹp - BT129', 999, 91, '2018-01-11 03:22:55', NULL, NULL, NULL),
(411, 'san-pham/', 'mau-nha-3-tang1.png', b'0', NULL, NULL, '', '', 999, 91, '2018-01-11 03:22:55', NULL, NULL, NULL),
(412, 'san-pham/', 'biet-thu-3-tang-kieu-phap-dep1.jpg', b'1', NULL, NULL, 'Mẫu kiến trúc biệt thự lâu đài kiểu Pháp sang trọng sự lựa chọn hàng đầu của các doanh nhân Việt Nam', 'Mẫu kiến trúc biệt thự lâu đài kiểu Pháp sang trọng sự lựa chọn hàng đầu của các doanh nhân Việt Nam', 999, 92, '2018-01-11 07:27:29', NULL, NULL, NULL),
(413, 'san-pham/', 'kien-truc-lau-dai-co-kieu-phap.jpg', b'0', NULL, NULL, 'Mẫu kiến trúc biệt thự lâu đài kiểu Pháp sang trọng sự lựa chọn hàng đầu của các doanh nhân Việt Nam', 'Mẫu kiến trúc biệt thự lâu đài kiểu Pháp sang trọng sự lựa chọn hàng đầu của các doanh nhân Việt Nam', 999, 92, '2018-01-11 07:27:29', NULL, NULL, NULL),
(414, 'san-pham/', 'kien-truc-phap-dep.jpg', b'0', NULL, NULL, 'Mẫu kiến trúc biệt thự lâu đài kiểu Pháp sang trọng sự lựa chọn hàng đầu của các doanh nhân Việt Nam', 'Mẫu kiến trúc biệt thự lâu đài kiểu Pháp sang trọng sự lựa chọn hàng đầu của các doanh nhân Việt Nam', 999, 92, '2018-01-11 07:27:29', NULL, NULL, NULL),
(502, 'san-pham/', 'nha-2-tang-mai-thai-nong-thon-min.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái thái nông thôn kiến trúc hiện đại với sân vườn xanh tươi', 'Mẫu nhà 2 tầng mái thái nông thôn kiến trúc hiện đại với sân vườn xanh tươi', 999, 93, '2018-05-18 09:43:22', NULL, NULL, NULL),
(501, 'san-pham/', 'hai-tang-san-vuon-dep-min.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái thái nông thôn kiến trúc hiện đại với sân vườn xanh tươi', 'Mẫu nhà 2 tầng mái thái nông thôn kiến trúc hiện đại với sân vườn xanh tươi', 999, 93, '2018-05-18 09:43:22', NULL, NULL, NULL),
(500, 'san-pham/', 'mau-nha-2-tang-mai-thai-min_(1).jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái thái nông thôn kiến trúc hiện đại với sân vườn xanh tươi', 'Mẫu nhà 2 tầng mái thái nông thôn kiến trúc hiện đại với sân vườn xanh tươi', 999, 93, '2018-05-18 09:43:22', NULL, NULL, NULL),
(499, 'san-pham/', 'c22-min.jpg', b'1', NULL, NULL, 'Mẫu nhà 2 tầng mái thái nông thôn kiến trúc hiện đại với sân vườn xanh tươi', 'Mẫu nhà 2 tầng mái thái nông thôn kiến trúc hiện đại với sân vườn xanh tươi', 999, 93, '2018-05-18 09:43:22', NULL, NULL, NULL),
(419, 'san-pham/', 'nha-pho-1-tret-1-lau1.jpg', b'1', NULL, NULL, 'Mẫu nhà 1 trệt 1 lầu 3 phòng ngủ 185 m2 mặt tiền nhà phố đẹp', 'Mẫu nhà 1 trệt 1 lầu 3 phòng ngủ 185 m2 mặt tiền nhà phố đẹp', 999, 94, '2018-01-17 07:42:41', NULL, NULL, NULL),
(420, 'san-pham/', 'nha-1-tret-1-lau.jpg', b'0', NULL, NULL, 'Mẫu nhà 1 trệt 1 lầu 3 phòng ngủ 185 m2 mặt tiền nhà phố đẹp', 'Mẫu nhà 1 trệt 1 lầu 3 phòng ngủ 185 m2 mặt tiền nhà phố đẹp', 999, 94, '2018-01-17 07:42:41', NULL, NULL, NULL),
(421, 'san-pham/', 'mau-nha-1-tret-1-lau-hien-dai.jpg', b'0', NULL, NULL, 'Mẫu nhà 1 trệt 1 lầu 3 phòng ngủ 185 m2 mặt tiền nhà phố đẹp', 'Mẫu nhà 1 trệt 1 lầu 3 phòng ngủ 185 m2 mặt tiền nhà phố đẹp', 999, 94, '2018-01-17 07:42:41', NULL, NULL, NULL),
(503, 'san-pham/', 'biet-thu-3-tang-min2.jpg', b'1', NULL, NULL, 'Mẫu thiết kế biệt thự 3 tầng 2 mặt tiền tân cổ điển có phòng gym - BT154', 'Mẫu thiết kế biệt thự 3 tầng 2 mặt tiền tân cổ điển có phòng gym - BT154', 999, 95, '2018-05-18 09:49:43', NULL, NULL, NULL),
(423, 'san-pham/', 'biet-thu-3-tang-dep.jpg', b'0', NULL, NULL, 'Mẫu thiết kế biệt thự 3 tầng 2 mặt tiền tân cổ điển có phòng gym sang trọng - BT154', 'Mẫu thiết kế biệt thự 3 tầng 2 mặt tiền tân cổ điển có phòng gym sang trọng - BT154', 999, 95, '2018-01-17 09:54:01', NULL, NULL, NULL),
(424, 'san-pham/', 'biet-thu-3-tang-dep-nhat.jpg', b'0', NULL, NULL, 'Mẫu thiết kế biệt thự 3 tầng 2 mặt tiền tân cổ điển có phòng gym sang trọng - BT154', 'Mẫu thiết kế biệt thự 3 tầng 2 mặt tiền tân cổ điển có phòng gym sang trọng - BT154', 999, 95, '2018-01-17 09:54:01', NULL, NULL, NULL),
(425, 'san-pham/', 'thiet-ke-biet-thu-3-tang.jpg', b'0', NULL, NULL, 'Mẫu thiết kế biệt thự 3 tầng 2 mặt tiền tân cổ điển có phòng gym sang trọng - BT154', 'Mẫu thiết kế biệt thự 3 tầng 2 mặt tiền tân cổ điển có phòng gym sang trọng - BT154', 999, 95, '2018-01-17 09:54:01', NULL, NULL, NULL),
(426, 'san-pham/', 'mau-biet-thu-3-tang.jpg', b'0', NULL, NULL, 'Mẫu thiết kế biệt thự 3 tầng 2 mặt tiền tân cổ điển có phòng gym sang trọng - BT154', 'Mẫu thiết kế biệt thự 3 tầng 2 mặt tiền tân cổ điển có phòng gym sang trọng - BT154', 999, 95, '2018-01-17 09:54:01', NULL, NULL, NULL),
(427, 'san-pham/', 'biet-thu-2-tang-mai-bang-co-ho-boi1.jpg', b'1', NULL, NULL, 'Mẫu biệt thự vườn 2 tầng mái bằng hiện đại có hồ bơi - BT93', 'Mẫu biệt thự vườn 2 tầng mái bằng hiện đại có hồ bơi - BT93', 999, 96, '2018-01-25 08:03:15', NULL, NULL, NULL),
(428, 'san-pham/', 'biet-thu-2-tang-san-vuon-mai-bang-co-ho-boi.jpg', b'0', NULL, NULL, 'Mẫu biệt thự vườn 2 tầng mái bằng hiện đại có hồ bơi - BT93', 'Mẫu biệt thự vườn 2 tầng mái bằng hiện đại có hồ bơi - BT93', 999, 96, '2018-01-25 08:03:15', NULL, NULL, NULL),
(429, 'san-pham/', 'noi-that-phong-khach3.jpg', b'0', NULL, NULL, 'Mẫu biệt thự vườn 2 tầng mái bằng hiện đại có hồ bơi - BT93', 'Mẫu biệt thự vườn 2 tầng mái bằng hiện đại có hồ bơi - BT93', 999, 96, '2018-01-25 08:03:15', NULL, NULL, NULL),
(430, 'san-pham/', 'noi-that-phong-bep-an.jpg', b'0', NULL, NULL, 'Mẫu biệt thự vườn 2 tầng mái bằng hiện đại có hồ bơi - BT93', 'Mẫu biệt thự vườn 2 tầng mái bằng hiện đại có hồ bơi - BT93', 999, 96, '2018-01-25 08:03:15', NULL, NULL, NULL),
(505, 'san-pham/', 'biet-thu-co-ho-boi-dep1-min1.jpg', b'1', NULL, NULL, 'Mẫu biệt thự có hồ bơi đẹp - BT123', 'Mẫu biệt thự có hồ bơi đẹp - BT123', 999, 97, '2018-05-18 09:59:43', NULL, NULL, NULL),
(432, 'san-pham/', 'biet-thu-co-hoi-boi-dep.jpg', b'0', NULL, NULL, 'Mẫu biệt thự có hồ bơi đẹp - BT123', 'Mẫu biệt thự có hồ bơi đẹp - BT123', 999, 97, '2018-01-25 09:09:26', NULL, NULL, NULL),
(433, 'san-pham/', 'biet-thu-dep-co-ho-boi.jpg', b'0', NULL, NULL, 'Mẫu biệt thự có hồ bơi đẹp - BT123', 'Mẫu biệt thự có hồ bơi đẹp - BT123', 999, 97, '2018-01-25 09:09:26', NULL, NULL, NULL),
(434, 'san-pham/', 'mau-thiet-ke-biet-thu-3-tang-co-ho-boi.jpg', b'0', NULL, NULL, 'Mẫu biệt thự có hồ bơi đẹp - BT123', 'Mẫu biệt thự có hồ bơi đẹp - BT123', 999, 97, '2018-01-25 09:09:26', NULL, NULL, NULL),
(435, 'san-pham/', 'biet-thu-2-tang-mai-thai-nong-thon.jpg', b'1', NULL, NULL, 'Mẫu biệt thự 2 tầng mái thái nông thôn ở Nam Định - BT01', 'Mẫu biệt thự 2 tầng mái thái nông thôn ở Nam Định - BT01', 999, 98, '2018-01-25 09:33:18', NULL, NULL, NULL),
(436, 'san-pham/', 'cong-nang-mat-bang-tang-1-2.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 2 tầng mái thái nông thôn ở Nam Định - BT01', 'Mẫu biệt thự 2 tầng mái thái nông thôn ở Nam Định - BT01', 999, 98, '2018-01-25 09:33:18', NULL, NULL, NULL),
(437, 'san-pham/', 'biet-thu-2-tang-mai-thai-nong-thon-dep1.jpg', b'1', NULL, NULL, 'Mẫu biệt thự nhà vườn mái thái nông thôn - BT11', 'Mẫu biệt thự nhà vườn mái thái nông thôn - BT11', 999, 99, '2018-01-25 09:55:01', NULL, NULL, NULL),
(438, 'san-pham/', 'mat-bang-tang-1.jpg', b'0', NULL, NULL, 'Mẫu biệt thự nhà vườn mái thái nông thôn - BT11', 'Mẫu biệt thự nhà vườn mái thái nông thôn - BT11', 999, 99, '2018-01-25 09:55:01', NULL, NULL, NULL),
(439, 'san-pham/', 'mat-bang-tang-2.jpg', b'0', NULL, NULL, 'Mẫu biệt thự nhà vườn mái thái nông thôn - BT11', 'Mẫu biệt thự nhà vườn mái thái nông thôn - BT11', 999, 99, '2018-01-25 09:55:01', NULL, NULL, NULL),
(440, 'san-pham/', 'biet-thu-pho-2-tang-mai-thai1.jpg', b'1', NULL, NULL, 'Mẫu biệt thự phố 2 tầng mái thái hiện đại - BT122', 'Mẫu biệt thự phố 2 tầng mái thái hiện đại - BT122', 999, 100, '2018-01-26 04:35:05', NULL, NULL, NULL),
(441, 'san-pham/', 'nha-pho-mai-thai-2-tang.jpg', b'0', NULL, NULL, 'Mẫu biệt thự phố 2 tầng mái thái hiện đại - BT122', 'Mẫu biệt thự phố 2 tầng mái thái hiện đại - BT122', 999, 100, '2018-01-26 04:35:05', NULL, NULL, NULL),
(442, 'san-pham/', 'phoi-canh-biet-thu-2-tang-mai-thai.jpg', b'0', NULL, NULL, 'Mẫu biệt thự phố 2 tầng mái thái hiện đại - BT122', 'Mẫu biệt thự phố 2 tầng mái thái hiện đại - BT122', 999, 100, '2018-01-26 04:35:05', NULL, NULL, NULL),
(508, 'san-pham/', 'biet-thu-1-tang-min1.jpg', b'1', NULL, NULL, 'Mẫu biệt thự 1 tầng sân vườn 3 phòng ngủ 185m2 đẹp ở nông thôn - BT156', 'Mẫu biệt thự 1 tầng sân vườn 3 phòng ngủ 185m2 đẹp ở nông thôn - BT156', 999, 101, '2018-05-18 10:15:38', NULL, NULL, NULL),
(444, 'san-pham/', 'biet-thu-1-tang-3-phong-ngu-dep.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 1 tầng sân vườn 3 phòng ngủ 185m2 đẹp ở nông thôn - BT156', 'Mẫu biệt thự 1 tầng sân vườn 3 phòng ngủ 185m2 đẹp ở nông thôn - BT156', 999, 101, '2018-03-05 07:21:38', NULL, NULL, NULL),
(445, 'san-pham/', 'biet-thu-1-tang-nha-vuon-3-phong-ngu.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 1 tầng sân vườn 3 phòng ngủ 185m2 đẹp ở nông thôn - BT156', 'Mẫu biệt thự 1 tầng sân vườn 3 phòng ngủ 185m2 đẹp ở nông thôn - BT156', 999, 101, '2018-03-05 07:21:38', NULL, NULL, NULL),
(446, 'san-pham/', 'biet-thu-1-tang-3-phong-ngu.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 1 tầng sân vườn 3 phòng ngủ 185m2 đẹp ở nông thôn - BT156', 'Mẫu biệt thự 1 tầng sân vườn 3 phòng ngủ 185m2 đẹp ở nông thôn - BT156', 999, 101, '2018-03-05 07:21:38', NULL, NULL, NULL),
(447, 'san-pham/', 'thiet-ke-noi-that-chung-cu-phong-khach1.jpg', b'1', NULL, NULL, 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 999, 108, '2018-03-09 03:18:53', NULL, NULL, NULL),
(448, 'san-pham/', 'thiet-ke-noi-that-phong-khach-chung-cu.jpg', b'0', NULL, NULL, 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 999, 108, '2018-03-09 03:18:53', NULL, NULL, NULL),
(449, 'san-pham/', 'noi-that-phong-bep.jpg', b'0', NULL, NULL, 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 999, 108, '2018-03-09 03:18:53', NULL, NULL, NULL),
(450, 'san-pham/', 'noi-that-phong-bep-an1.jpg', b'0', NULL, NULL, 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 999, 108, '2018-03-09 03:18:53', NULL, NULL, NULL),
(451, 'san-pham/', 'thiet-ke-phong-ngu3.jpg', b'0', NULL, NULL, 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 999, 108, '2018-03-09 03:18:53', NULL, NULL, NULL),
(452, 'san-pham/', 'thiet-ke-phong-ngu2.jpg', b'0', NULL, NULL, 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 999, 108, '2018-03-09 03:18:53', NULL, NULL, NULL),
(453, 'san-pham/', 'thiet-ke-phong-ngu-4.jpg', b'0', NULL, NULL, 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 999, 108, '2018-03-09 03:18:53', NULL, NULL, NULL),
(454, 'san-pham/', 'thiet-ke-phong-ngu-5.jpg', b'0', NULL, NULL, 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 999, 108, '2018-03-09 03:18:53', NULL, NULL, NULL),
(455, 'san-pham/', 'anh-thi-cong-2.jpg', b'0', NULL, NULL, 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 999, 108, '2018-03-09 03:18:53', NULL, NULL, NULL),
(456, 'san-pham/', 'anh-thi-cong-3.jpg', b'0', NULL, NULL, 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 999, 108, '2018-03-09 03:18:53', NULL, NULL, NULL),
(457, 'san-pham/', 'anh-thi-cong-4.jpg', b'0', NULL, NULL, 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 999, 108, '2018-03-09 03:18:53', NULL, NULL, NULL),
(458, 'san-pham/', 'anh-thi-cong-5.jpg', b'0', NULL, NULL, 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 'Thiết kế thi công nội thất nhà chung cư nhỏ 50m2 tại Hà Nội - NT26', 999, 108, '2018-03-09 03:18:53', NULL, NULL, NULL),
(459, 'san-pham/', 'thiet-ke-kien-truc-nha-lo-nha-anh-Hung-Hung-Yen-phoi-canh-1.jpg', b'1', NULL, NULL, 'Mẫu nhà ống 3 tầng 106m2 dưới 1 tỷ tại Hưng Yên - NP13', 'Mẫu nhà ống 3 tầng 106m2 dưới 1 tỷ tại Hưng Yên - NP13', 999, 110, '2018-03-19 10:04:03', NULL, NULL, NULL),
(510, 'san-pham/', 'mau-nha-pho-3-tang-hien-dai-NP11-min1.jpg', b'1', NULL, NULL, 'mẫu nhà ống 3 tầng', 'mẫu nhà ống 3 tầng', 999, 111, '2018-05-18 10:22:54', NULL, NULL, NULL),
(461, 'san-pham/', 'thiet-ke-kien-truc-nha-lo-nha-anh-Canh-Hoai-Duc-Ha-Noi-phoi-canh-2.jpg', b'0', NULL, NULL, 'Mẫu nhà ống 3 tầng 106m2 dưới 1 tỷ tại Hưng Yên - NP13', 'Mẫu nhà ống 3 tầng 106m2 dưới 1 tỷ tại Hưng Yên - NP13', 999, 111, '2018-03-19 10:08:42', NULL, NULL, NULL),
(462, 'san-pham/', 'thiet-ke-kien-truc-nha-lo-nha-anh-Canh-Hoai-Duc-Ha-Noi-phoi-canh-1.jpg', b'0', NULL, NULL, 'Mẫu nhà ống 3 tầng 106m2 dưới 1 tỷ tại Hưng Yên - NP13', 'Mẫu nhà ống 3 tầng 106m2 dưới 1 tỷ tại Hưng Yên - NP13', 999, 111, '2018-03-19 10:08:42', NULL, NULL, NULL),
(463, 'san-pham/', 'thiet-ke-kien-truc-nha-lo-nha-anh-Canh-Hoai-Duc-Ha-Noi-tieu-canh-1.jpg', b'0', NULL, NULL, 'Mẫu nhà ống 3 tầng 106m2 dưới 1 tỷ tại Hưng Yên - NP13', 'Mẫu nhà ống 3 tầng 106m2 dưới 1 tỷ tại Hưng Yên - NP13', 999, 111, '2018-03-19 10:08:42', NULL, NULL, NULL),
(464, 'san-pham/', 'thiet-ke-kien-truc-nha-lo-nha-anh-Canh-Hoai-Duc-Ha-Noi-tieu-canh-3.jpg', b'0', NULL, NULL, 'Mẫu nhà ống 3 tầng 106m2 dưới 1 tỷ tại Hưng Yên - NP13', 'Mẫu nhà ống 3 tầng 106m2 dưới 1 tỷ tại Hưng Yên - NP13', 999, 111, '2018-03-19 10:08:42', NULL, NULL, NULL),
(465, 'san-pham/', 'thiet-ke-kien-truc-nha-lo-nha-anh-Canh-Hoai-Duc-Ha-Noi-mat-cat.jpg', b'0', NULL, NULL, '', '', 999, 111, '2018-03-19 10:08:42', NULL, NULL, NULL),
(512, 'san-pham/', 'biet-thu-2-tang-mai-ngoi-min1.jpg', b'1', NULL, NULL, 'mẫu nhà 2 tầng mái ngói', 'mẫu nhà 2 tầng mái ngói', 999, 114, '2018-05-18 10:28:21', NULL, NULL, NULL),
(513, 'san-pham/', 'nha-2-tang-mai-ngoi-hien-dai3.jpg', b'1', NULL, NULL, 'Nhà 2 tầng mái ngói hiện đại', 'Nhà 2 tầng mái ngói hiện đại', 999, 119, '2018-06-21 06:50:56', NULL, NULL, NULL),
(467, 'san-pham/', 'mau-nha-2-tang-mai-ngoi.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói thái 4 phòng ngủ Việt Trì - Phú Thọ - BT157', 'Mẫu nhà 2 tầng mái ngói thái 4 phòng ngủ Việt Trì - Phú Thọ - BT157', 999, 114, '2018-03-24 02:08:53', NULL, NULL, NULL),
(468, 'san-pham/', 'nha-mai-ngoi-dep-2018.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói thái 4 phòng ngủ Việt Trì - Phú Thọ - BT157', 'Mẫu nhà 2 tầng mái ngói thái 4 phòng ngủ Việt Trì - Phú Thọ - BT157', 999, 114, '2018-03-24 02:08:53', NULL, NULL, NULL),
(469, 'san-pham/', 'nha-2-tang-4-phong-ngu-mai-ngoi.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói thái 4 phòng ngủ Việt Trì - Phú Thọ - BT157', 'Mẫu nhà 2 tầng mái ngói thái 4 phòng ngủ Việt Trì - Phú Thọ - BT157', 999, 114, '2018-03-24 02:08:53', NULL, NULL, NULL),
(470, 'san-pham/', 'mau-nha-mai-ngoi-2018.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói thái 4 phòng ngủ Việt Trì - Phú Thọ - BT157', 'Mẫu nhà 2 tầng mái ngói thái 4 phòng ngủ Việt Trì - Phú Thọ - BT157', 999, 114, '2018-03-24 02:08:53', NULL, NULL, NULL),
(498, 'san-pham/', 'biet-thu-nha-vuon-min.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự vườn 2 tầng mái thái - BT159', 'Thiết kế biệt thự vườn 2 tầng mái thái - BT159', 999, 115, '2018-05-18 09:26:28', NULL, NULL, NULL),
(497, 'san-pham/', 'biet-thu-nha-vuon-dep-min.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự vườn 2 tầng mái thái - BT159', 'Thiết kế biệt thự vườn 2 tầng mái thái - BT159', 999, 115, '2018-05-18 09:26:28', NULL, NULL, NULL),
(496, 'san-pham/', 'biet-thu-nha-vuon-dep-2018_(1)-min.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự vườn 2 tầng mái thái - BT159', 'Thiết kế biệt thự vườn 2 tầng mái thái - BT159', 999, 115, '2018-05-18 09:26:28', NULL, NULL, NULL),
(495, 'san-pham/', 'biet-thu-nha-vuon-2-tang-min1.jpg', b'1', NULL, NULL, 'Thiết kế biệt thự vườn 2 tầng mái thái - BT159', 'Thiết kế biệt thự vườn 2 tầng mái thái - BT159', 999, 115, '2018-05-18 09:26:28', NULL, NULL, NULL),
(509, 'san-pham/', 'nha-san-dep-2-min1.jpg', b'1', NULL, NULL, 'nhà sàn 1 tầng đẹp', 'nhà sàn 1 tầng đẹp', 999, 113, '2018-05-18 10:18:44', NULL, NULL, NULL),
(514, 'san-pham/', 'nha-2-tang-mai-ngoi-hien-dai11.jpg', b'0', NULL, NULL, 'Nhà 2 tầng mái ngói hiện đại', 'Nhà 2 tầng mái ngói hiện đại', 999, 119, '2018-06-21 06:50:56', NULL, NULL, NULL),
(511, 'san-pham/', 'mau-biet-thu-1-tang-hien-dai-BT74-min1.jpg', b'1', NULL, NULL, 'biệt thự 1 tầng hiện đại', 'biệt thự 1 tầng hiện đại ', 999, 112, '2018-05-18 10:25:50', NULL, NULL, NULL),
(477, 'san-pham/', 'mau-biet-thu-1-tang-hien-dai-BT74a.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 1 tầng hiện đại BT74', 'Mẫu biệt thự 1 tầng hiện đại BT74', 999, 112, '2018-04-02 09:47:16', NULL, NULL, NULL),
(478, 'san-pham/', 'mau-nha-pho-hien-dai-Ha-Noi-NP182.jpg', b'1', NULL, NULL, 'Mẫu nhà phố hiện đại Hà Nội - NP18', 'Mẫu nhà phố hiện đại Hà Nội - NP18', 999, 109, '2018-04-02 09:52:37', NULL, NULL, NULL),
(506, 'san-pham/', 'mau-nha-2-tang-mai-ngoi-thai-2018-min.jpg', b'1', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói kiểu thái rất được ưa chuộng trong năm 2018', 'Mẫu nhà 2 tầng mái ngói kiểu thái rất được ưa chuộng trong năm 2018', 999, 116, '2018-05-18 10:04:13', NULL, NULL, NULL),
(480, 'san-pham/', 'mau-nha-2-tang-mai-ngoi-dep.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói thái đẹp 2018 - BT162', 'Mẫu nhà 2 tầng mái ngói thái đẹp 2018 - BT162', 999, 116, '2018-04-11 04:05:37', NULL, NULL, NULL),
(481, 'san-pham/', 'nha-2-tang-mai-ngoi-thai-dep-2018.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói thái đẹp 2018 - BT162', 'Mẫu nhà 2 tầng mái ngói thái đẹp 2018 - BT162', 999, 116, '2018-04-11 04:05:37', NULL, NULL, NULL),
(482, 'san-pham/', 'Phối_cảnh_1.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói thái đẹp 2018 - BT162', 'Mẫu nhà 2 tầng mái ngói thái đẹp 2018 - BT162', 999, 116, '2018-04-11 04:05:37', NULL, NULL, NULL),
(483, 'san-pham/', 'biet-thu-2-tang-mai-ngoi2.jpg', b'1', NULL, NULL, 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ', 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ ', 999, 117, '2018-04-21 06:47:35', NULL, NULL, NULL),
(484, 'san-pham/', 'mau-nha-2-tang1.jpg', b'0', NULL, NULL, 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ', 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ ', 999, 117, '2018-04-21 06:47:35', NULL, NULL, NULL),
(485, 'san-pham/', 'biet-thu-1-tang3.jpg', b'0', NULL, NULL, 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ', 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ ', 999, 117, '2018-04-21 06:47:35', NULL, NULL, NULL),
(486, 'san-pham/', 'nha-mai-thai-2-tang1.jpg', b'0', NULL, NULL, 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ', 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ ', 999, 117, '2018-04-21 06:47:35', NULL, NULL, NULL),
(487, 'san-pham/', 'bet-thu-2-tang-mai-thai-Phoi-canh-23.jpg', b'0', NULL, NULL, 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ', 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ ', 999, 117, '2018-04-21 06:47:35', NULL, NULL, NULL),
(488, 'san-pham/', 'biet-thu-2-tang-hien-dai-027.jpg', b'0', NULL, NULL, 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ', 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ ', 999, 117, '2018-04-21 06:47:35', NULL, NULL, NULL),
(489, 'san-pham/', 'phoi-canh-1_(1).jpg', b'0', NULL, NULL, 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ', 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ ', 999, 117, '2018-04-21 06:47:35', NULL, NULL, NULL),
(490, 'san-pham/', 'biet-thu-3-tang3.jpg', b'0', NULL, NULL, 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ', 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ ', 999, 117, '2018-04-21 06:47:35', NULL, NULL, NULL),
(491, 'san-pham/', 'nha-mai-thai-2018_(1).jpg', b'0', NULL, NULL, 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ', 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ ', 999, 117, '2018-04-21 06:47:35', NULL, NULL, NULL),
(492, 'san-pham/', 'phoi-canh-26.jpg', b'0', NULL, NULL, 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ', 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ ', 999, 117, '2018-04-21 06:47:35', NULL, NULL, NULL),
(493, 'san-pham/', 'c22.jpg', b'0', NULL, NULL, 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ', 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ ', 999, 117, '2018-04-21 06:47:35', NULL, NULL, NULL),
(494, 'san-pham/', 'phoi-canh-14.jpg', b'0', NULL, NULL, 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ', 'KHUYẾN MÃI 30/4-1/5 GIẢM 15% CHI PHÍ THIẾT KẾ ', 999, 117, '2018-04-21 06:47:35', NULL, NULL, NULL),
(515, 'san-pham/', 'nha-2-tang-mai-ngoi-hien-dai21.jpg', b'0', NULL, NULL, 'Nhà 2 tầng mái ngói hiện đại', 'Nhà 2 tầng mái ngói hiện đại', 999, 119, '2018-06-21 06:50:56', NULL, NULL, NULL),
(516, 'san-pham/', 'nha-2-tang-mai-ngoi-hien-dai31.jpg', b'0', NULL, NULL, 'Nhà 2 tầng mái ngói hiện đại', 'Nhà 2 tầng mái ngói hiện đại', 999, 119, '2018-06-21 06:50:56', NULL, NULL, NULL),
(517, 'san-pham/', 'nha-2-tang-mai-ngoi-hien-dai4.jpg', b'0', NULL, NULL, 'Nhà 2 tầng mái ngói hiện đại', 'Nhà 2 tầng mái ngói hiện đại', 999, 119, '2018-06-21 06:50:56', NULL, NULL, NULL),
(518, 'san-pham/', 'mau-nha-2-tang-hinh-vuong-sang-trong-hien-dai1.jpg', b'1', NULL, NULL, 'Mẫu nhà 2 tầng hình vuông sang trọng, hiện đại', 'Mẫu nhà 2 tầng hình vuông sang trọng, hiện đại', 999, 120, '2018-06-21 07:49:52', NULL, NULL, NULL),
(519, 'san-pham/', 'mau-nha-2-tang-hinh-vuong-sang-trong-hien-dai11.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng hình vuông sang trọng, hiện đại', 'Mẫu nhà 2 tầng hình vuông sang trọng, hiện đại', 999, 120, '2018-06-21 07:49:52', NULL, NULL, NULL),
(520, 'san-pham/', 'mau-nha-2-tang-hinh-vuong-sang-trong-hien-dai2.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng hình vuông sang trọng, hiện đại', 'Mẫu nhà 2 tầng hình vuông sang trọng, hiện đại', 999, 120, '2018-06-21 07:49:52', NULL, NULL, NULL),
(521, 'san-pham/', 'mau-nha-2-tang-hinh-vuong-sang-trong-hien-dai3.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng hình vuông sang trọng, hiện đại', 'Mẫu nhà 2 tầng hình vuông sang trọng, hiện đại', 999, 120, '2018-06-21 07:49:52', NULL, NULL, NULL),
(522, 'san-pham/', 'mau-nha-2-tang-hinh-vuong-sang-trong-hien-dai4.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng hình vuông sang trọng, hiện đại', 'Mẫu nhà 2 tầng hình vuông sang trọng, hiện đại', 999, 120, '2018-06-21 07:49:52', NULL, NULL, NULL),
(523, 'san-pham/', 'mau-nha-2-tang-hinh-vuong-sang-trong-hien-dai5.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng hình vuông sang trọng, hiện đại', 'Mẫu nhà 2 tầng hình vuông sang trọng, hiện đại', 999, 120, '2018-06-21 07:49:52', NULL, NULL, NULL),
(524, 'san-pham/', 'mau-nha-2-tang-mai-ngoi-sang-trong1.jpg', b'1', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói sang trọng', 'Mẫu nhà 2 tầng mái ngói sang trọng ', 999, 121, '2018-06-23 07:34:41', NULL, NULL, NULL),
(525, 'san-pham/', 'mau-nha-2-tang-mai-ngoi-sang-trong11.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói sang trọng', 'Mẫu nhà 2 tầng mái ngói sang trọng ', 999, 121, '2018-06-23 07:34:41', NULL, NULL, NULL),
(526, 'san-pham/', 'mau-nha-2-tang-mai-ngoi-sang-trong2.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói sang trọng', 'Mẫu nhà 2 tầng mái ngói sang trọng ', 999, 121, '2018-06-23 07:34:41', NULL, NULL, NULL),
(527, 'san-pham/', 'mau-nha-2-tang-mai-ngoi-sang-trong3.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói sang trọng', 'Mẫu nhà 2 tầng mái ngói sang trọng ', 999, 121, '2018-06-23 07:34:41', NULL, NULL, NULL),
(528, 'san-pham/', 'mau-nha-2-tang-mai-ngoi-sang-trong4.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng mái ngói sang trọng', 'Mẫu nhà 2 tầng mái ngói sang trọng ', 999, 121, '2018-06-23 07:34:41', NULL, NULL, NULL),
(529, 'san-pham/', 'bat-mi-mau-nha-chi-800-trieu-nhung-van-dep-lung-linh1.jpg', b'1', NULL, NULL, 'Bật mí mẫu nhà chỉ 800 triệu nhưng vẫn đẹp lung linh', 'Bật mí mẫu nhà chỉ 800 triệu nhưng vẫn đẹp lung linh', 999, 122, '2018-06-23 08:07:10', NULL, NULL, NULL),
(530, 'san-pham/', 'bat-mi-mau-nha-chi-800-trieu-nhung-van-dep-lung-linh11.jpg', b'0', NULL, NULL, 'Bật mí mẫu nhà chỉ 800 triệu nhưng vẫn đẹp lung linh', 'Bật mí mẫu nhà chỉ 800 triệu nhưng vẫn đẹp lung linh', 999, 122, '2018-06-23 08:07:10', NULL, NULL, NULL),
(531, 'san-pham/', 'bat-mi-mau-nha-chi-800-trieu-nhung-van-dep-lung-linh2.jpg', b'0', NULL, NULL, 'Bật mí mẫu nhà chỉ 800 triệu nhưng vẫn đẹp lung linh', 'Bật mí mẫu nhà chỉ 800 triệu nhưng vẫn đẹp lung linh', 999, 122, '2018-06-23 08:07:10', NULL, NULL, NULL),
(532, 'san-pham/', 'bat-mi-mau-nha-chi-800-trieu-nhung-van-dep-lung-linh3.jpg', b'0', NULL, NULL, 'Bật mí mẫu nhà chỉ 800 triệu nhưng vẫn đẹp lung linh', 'Bật mí mẫu nhà chỉ 800 triệu nhưng vẫn đẹp lung linh', 999, 122, '2018-06-23 08:07:10', NULL, NULL, NULL),
(533, 'san-pham/', 'mau-nha-2-tang-3-phong-ngu-gia-re1.jpg', b'1', NULL, NULL, 'Mẫu nhà 2 tầng 3 phòng ngủ giá rẻ', 'Mẫu nhà 2 tầng 3 phòng ngủ giá rẻ', 999, 123, '2018-06-23 08:51:27', NULL, NULL, NULL),
(534, 'san-pham/', 'mau-nha-2-tang-3-phong-ngu-gia-re11.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng 3 phòng ngủ giá rẻ', 'Mẫu nhà 2 tầng 3 phòng ngủ giá rẻ', 999, 123, '2018-06-23 08:51:27', NULL, NULL, NULL),
(535, 'san-pham/', 'mau-nha-2-tang-3-phong-ngu-gia-re2.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng 3 phòng ngủ giá rẻ', 'Mẫu nhà 2 tầng 3 phòng ngủ giá rẻ', 999, 123, '2018-06-23 08:51:27', NULL, NULL, NULL),
(536, 'san-pham/', 'mau-nha-2-tang-3-phong-ngu-gia-re3.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng 3 phòng ngủ giá rẻ', 'Mẫu nhà 2 tầng 3 phòng ngủ giá rẻ', 999, 123, '2018-06-23 08:51:27', NULL, NULL, NULL),
(537, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-gia-re1.jpg', b'1', NULL, NULL, 'Mẫu nhà 2 tầng 4 phòng ngủ giá rẻ', 'Mẫu nhà 2 tầng 4 phòng ngủ giá rẻ', 999, 124, '2018-06-25 07:17:48', NULL, NULL, NULL),
(538, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-gia-re11.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng 4 phòng ngủ giá rẻ', 'Mẫu nhà 2 tầng 4 phòng ngủ giá rẻ', 999, 124, '2018-06-25 07:17:48', NULL, NULL, NULL),
(539, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-gia-re2.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng 4 phòng ngủ giá rẻ', 'Mẫu nhà 2 tầng 4 phòng ngủ giá rẻ', 999, 124, '2018-06-25 07:17:48', NULL, NULL, NULL),
(540, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-gia-re3.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng 4 phòng ngủ giá rẻ', 'Mẫu nhà 2 tầng 4 phòng ngủ giá rẻ', 999, 124, '2018-06-25 07:17:48', NULL, NULL, NULL),
(541, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-gia-re4.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng 4 phòng ngủ giá rẻ', 'Mẫu nhà 2 tầng 4 phòng ngủ giá rẻ', 999, 124, '2018-06-25 07:17:48', NULL, NULL, NULL),
(542, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-1-phong-tho1.jpg', b'1', NULL, NULL, 'Mẫu nhà 2 tầng 4 phòng ngủ 1 phòng thờ', 'Mẫu nhà 2 tầng 4 phòng ngủ 1 phòng thờ', 999, 125, '2018-06-25 07:47:34', NULL, NULL, NULL),
(543, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-1-phong-tho11.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng 4 phòng ngủ 1 phòng thờ', 'Mẫu nhà 2 tầng 4 phòng ngủ 1 phòng thờ', 999, 125, '2018-06-25 07:47:34', NULL, NULL, NULL),
(544, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-1-phong-tho2.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng 4 phòng ngủ 1 phòng thờ', 'Mẫu nhà 2 tầng 4 phòng ngủ 1 phòng thờ', 999, 125, '2018-06-25 07:47:34', NULL, NULL, NULL),
(545, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-1-phong-tho3.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng 4 phòng ngủ 1 phòng thờ', 'Mẫu nhà 2 tầng 4 phòng ngủ 1 phòng thờ', 999, 125, '2018-06-25 07:47:34', NULL, NULL, NULL),
(546, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-1-phong-tho4.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng 4 phòng ngủ 1 phòng thờ', 'Mẫu nhà 2 tầng 4 phòng ngủ 1 phòng thờ', 999, 125, '2018-06-25 07:47:34', NULL, NULL, NULL),
(547, 'san-pham/', 'mau-thiet-ke-2-tang-4-phong-ngu-gia-re1.jpg', b'1', NULL, NULL, 'Mẫu thiết kế 2 tầng 4 phòng ngủ giá rẻ', 'Mẫu thiết kế 2 tầng 4 phòng ngủ giá rẻ', 999, 126, '2018-06-25 08:42:59', NULL, NULL, NULL),
(548, 'san-pham/', 'mau-thiet-ke-2-tang-4-phong-ngu-gia-re11.jpg', b'0', NULL, NULL, 'Mẫu thiết kế 2 tầng 4 phòng ngủ giá rẻ', 'Mẫu thiết kế 2 tầng 4 phòng ngủ giá rẻ', 999, 126, '2018-06-25 08:42:59', NULL, NULL, NULL),
(549, 'san-pham/', 'mau-thiet-ke-2-tang-4-phong-ngu-gia-re2.jpg', b'0', NULL, NULL, 'Mẫu thiết kế 2 tầng 4 phòng ngủ giá rẻ', 'Mẫu thiết kế 2 tầng 4 phòng ngủ giá rẻ', 999, 126, '2018-06-25 08:42:59', NULL, NULL, NULL),
(550, 'san-pham/', 'mau-thiet-ke-2-tang-4-phong-ngu-gia-re3.jpg', b'0', NULL, NULL, 'Mẫu thiết kế 2 tầng 4 phòng ngủ giá rẻ', 'Mẫu thiết kế 2 tầng 4 phòng ngủ giá rẻ', 999, 126, '2018-06-25 08:42:59', NULL, NULL, NULL),
(551, 'san-pham/', 'mau-thiet-ke-2-tang-4-phong-ngu-gia-re4.jpg', b'0', NULL, NULL, 'Mẫu thiết kế 2 tầng 4 phòng ngủ giá rẻ', 'Mẫu thiết kế 2 tầng 4 phòng ngủ giá rẻ', 999, 126, '2018-06-25 08:42:59', NULL, NULL, NULL),
(552, 'san-pham/', 'mau-thiet-ke-2-tang-4-phong-ngu-gia-re5.jpg', b'0', NULL, NULL, 'Mẫu thiết kế 2 tầng 4 phòng ngủ giá rẻ', 'Mẫu thiết kế 2 tầng 4 phòng ngủ giá rẻ', 999, 126, '2018-06-25 08:42:59', NULL, NULL, NULL),
(553, 'san-pham/', 'mau-nha-2-tang-don-gian-nong-thon-min1.jpg', b'1', NULL, NULL, 'Mẫu nhà 2 tầng đơn giản nông thôn', 'Mẫu nhà 2 tầng đơn giản nông thôn', 999, 127, '2018-06-25 09:10:58', NULL, NULL, NULL),
(554, 'san-pham/', 'mau-nha-2-tang-don-gian-nong-thon1-min.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng đơn giản nông thôn', 'Mẫu nhà 2 tầng đơn giản nông thôn', 999, 127, '2018-06-25 09:10:58', NULL, NULL, NULL),
(555, 'san-pham/', 'mau-nha-2-tang-don-gian-nong-thon2-min.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng đơn giản nông thôn', 'Mẫu nhà 2 tầng đơn giản nông thôn', 999, 127, '2018-06-25 09:10:58', NULL, NULL, NULL),
(556, 'san-pham/', 'mau-nha-2-tang-don-gian-nong-thon3-min.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng đơn giản nông thôn', 'Mẫu nhà 2 tầng đơn giản nông thôn', 999, 127, '2018-06-25 09:10:58', NULL, NULL, NULL),
(557, 'san-pham/', 'mau-nha-2-tang-don-gian-nong-thon4-min.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng đơn giản nông thôn', 'Mẫu nhà 2 tầng đơn giản nông thôn', 999, 127, '2018-06-25 09:10:58', NULL, NULL, NULL),
(558, 'san-pham/', 'mau-nha-2-tang-don-gian-nong-thon5-min.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng đơn giản nông thôn', 'Mẫu nhà 2 tầng đơn giản nông thôn', 999, 127, '2018-06-25 09:10:58', NULL, NULL, NULL),
(559, 'san-pham/', 'ban-ve-nha-2-tang-3-phong-ngu-min1.jpg', b'1', NULL, NULL, 'Bản vẽ nhà 2 tầng 3 phòng ngủ', 'Bản vẽ nhà 2 tầng 3 phòng ngủ', 999, 128, '2018-06-25 15:44:20', NULL, NULL, NULL),
(560, 'san-pham/', 'ban-ve-nha-2-tang-3-phong-ngu1-min.jpg', b'0', NULL, NULL, 'Bản vẽ nhà 2 tầng 3 phòng ngủ', 'Bản vẽ nhà 2 tầng 3 phòng ngủ', 999, 128, '2018-06-25 15:44:20', NULL, NULL, NULL),
(561, 'san-pham/', 'ban-ve-nha-2-tang-3-phong-ngu4-min.jpg', b'0', NULL, NULL, 'Bản vẽ nhà 2 tầng 3 phòng ngủ', 'Bản vẽ nhà 2 tầng 3 phòng ngủ', 999, 128, '2018-06-25 15:44:20', NULL, NULL, NULL),
(562, 'san-pham/', 'ban-ve-nha-2-tang-3-phong-ngu5-min.jpg', b'0', NULL, NULL, 'Bản vẽ nhà 2 tầng 3 phòng ngủ', 'Bản vẽ nhà 2 tầng 3 phòng ngủ', 999, 128, '2018-06-25 15:44:20', NULL, NULL, NULL),
(563, 'san-pham/', 'ban-ve-nha-2-tang-3-phong-ngu6-min.jpg', b'0', NULL, NULL, 'Bản vẽ nhà 2 tầng 3 phòng ngủ', 'Bản vẽ nhà 2 tầng 3 phòng ngủ', 999, 128, '2018-06-25 15:44:20', NULL, NULL, NULL),
(579, 'san-pham/', 'mau-nha-vuon-1-tang-nho-nhan-nhung-dam-bao-day-du-tien-nghi2-min.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng nhỏ nhắn nhưng đảm bảo đầy đủ tiện nghi', 'Mẫu nhà vườn 1 tầng nhỏ nhắn nhưng đảm bảo đầy đủ tiện nghi', 999, 132, '2018-07-03 03:10:29', NULL, NULL, NULL),
(578, 'san-pham/', 'mau-nha-vuon-1-tang-nho-nhan-nhung-dam-bao-day-du-tien-nghi1-min.jpg', b'1', NULL, NULL, 'Mẫu nhà vườn 1 tầng nhỏ nhắn nhưng đảm bảo đầy đủ tiện nghi', 'Mẫu nhà vườn 1 tầng nhỏ nhắn nhưng đảm bảo đầy đủ tiện nghi', 999, 132, '2018-07-03 03:10:29', NULL, NULL, NULL),
(577, 'san-pham/', 'mau-nha-tan-co-dien-2-tang-sang-trong5.jpg', b'0', NULL, NULL, 'Mẫu nhà tân cổ điển 2 tầng sang trọng', 'Mẫu nhà tân cổ điển 2 tầng sang trọng', 999, 131, '2018-07-03 02:11:31', NULL, NULL, NULL),
(576, 'san-pham/', 'mau-nha-tan-co-dien-2-tang-sang-trong4.jpg', b'0', NULL, NULL, 'Mẫu nhà tân cổ điển 2 tầng sang trọng', 'Mẫu nhà tân cổ điển 2 tầng sang trọng', 999, 131, '2018-07-03 02:11:31', NULL, NULL, NULL),
(575, 'san-pham/', 'mau-nha-tan-co-dien-2-tang-sang-trong3.jpg', b'0', NULL, NULL, 'Mẫu nhà tân cổ điển 2 tầng sang trọng', 'Mẫu nhà tân cổ điển 2 tầng sang trọng', 999, 131, '2018-07-03 02:11:31', NULL, NULL, NULL),
(574, 'san-pham/', 'mau-nha-tan-co-dien-2-tang-sang-trong2.jpg', b'0', NULL, NULL, 'Mẫu nhà tân cổ điển 2 tầng sang trọng', 'Mẫu nhà tân cổ điển 2 tầng sang trọng', 999, 131, '2018-07-03 02:11:31', NULL, NULL, NULL),
(572, 'san-pham/', 'mau-nha-tan-co-dien-2-tang-sang-trong1.jpg', b'1', NULL, NULL, 'Mẫu nhà tân cổ điển 2 tầng sang trọng', 'Mẫu nhà tân cổ điển 2 tầng sang trọng', 999, 131, '2018-07-03 02:11:31', NULL, NULL, NULL),
(573, 'san-pham/', 'mau-nha-tan-co-dien-2-tang-sang-trong11.jpg', b'0', NULL, NULL, 'Mẫu nhà tân cổ điển 2 tầng sang trọng', 'Mẫu nhà tân cổ điển 2 tầng sang trọng', 999, 131, '2018-07-03 02:11:31', NULL, NULL, NULL),
(580, 'san-pham/', 'mau-nha-vuon-1-tang-nho-nhan-nhung-dam-bao-day-du-tien-nghi-min1.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng nhỏ nhắn nhưng đảm bảo đầy đủ tiện nghi', 'Mẫu nhà vườn 1 tầng nhỏ nhắn nhưng đảm bảo đầy đủ tiện nghi', 999, 132, '2018-07-03 03:10:29', NULL, NULL, NULL),
(581, 'san-pham/', 'mau-nha-vuon-1-tang-nho-nhan-nhung-dam-bao-day-du-tien-nghi3-min.jpg', b'0', NULL, NULL, 'Mẫu nhà vườn 1 tầng nhỏ nhắn nhưng đảm bảo đầy đủ tiện nghi', 'Mẫu nhà vườn 1 tầng nhỏ nhắn nhưng đảm bảo đầy đủ tiện nghi', 999, 132, '2018-07-03 03:10:29', NULL, NULL, NULL),
(582, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-dep-va-sang-trong1-min.jpg', b'1', NULL, NULL, 'Mẫu nhà 2 tầng 4 phòng ngủ đẹp và sang trọng', 'Mẫu nhà 2 tầng 4 phòng ngủ đẹp và sang trọng', 999, 133, '2018-07-03 03:57:41', NULL, NULL, NULL),
(583, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-dep-va-sang-trong2-min.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng 4 phòng ngủ đẹp và sang trọng', 'Mẫu nhà 2 tầng 4 phòng ngủ đẹp và sang trọng', 999, 133, '2018-07-03 03:57:41', NULL, NULL, NULL),
(584, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-dep-va-sang-trong-min1.jpg', b'0', NULL, NULL, 'Mẫu nhà 2 tầng 4 phòng ngủ đẹp và sang trọng', 'Mẫu nhà 2 tầng 4 phòng ngủ đẹp và sang trọng', 999, 133, '2018-07-03 03:57:41', NULL, NULL, NULL);
INSERT INTO `imageproducts` (`ImageProductsID`, `ImagePreset`, `ImageURL`, `IsMainImage`, `Title`, `Description`, `AltText`, `TitleText`, `Orders`, `ProductsID`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(585, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-dep-va-sang-trong2-min1.jpg', b'1', NULL, NULL, 'Tổng hợp các mẫu thiết kế nhà 2 tầng 4 phòng ngủ đẹp 2018', 'Tổng hợp các mẫu thiết kế nhà 2 tầng 4 phòng ngủ đẹp 2018', 999, 134, '2018-07-03 04:03:08', NULL, NULL, NULL),
(586, 'san-pham/', 'mau-nha-2-tang-4-phong-ngu-dep-va-sang-trong2-min2.jpg', b'0', NULL, NULL, 'Tổng hợp các mẫu thiết kế nhà 2 tầng 4 phòng ngủ đẹp 2018', 'Tổng hợp các mẫu thiết kế nhà 2 tầng 4 phòng ngủ đẹp 2018', 999, 134, '2018-07-03 04:03:08', NULL, NULL, NULL),
(587, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-dep-o-nong-thon1.jpg', b'1', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 999, 135, '2018-07-03 04:10:50', NULL, NULL, NULL),
(588, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-dep-o-nong-thon11.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 999, 135, '2018-07-03 04:10:50', NULL, NULL, NULL),
(589, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-dep-o-nong-thon2.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 999, 135, '2018-07-03 04:10:50', NULL, NULL, NULL),
(590, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-dep-o-nong-thon4.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 999, 135, '2018-07-03 04:10:50', NULL, NULL, NULL),
(591, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-dep-o-nong-thon5-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 999, 135, '2018-07-03 04:10:50', NULL, NULL, NULL),
(592, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-dep-o-nong-thon6-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 999, 135, '2018-07-03 04:10:50', NULL, NULL, NULL),
(593, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-dep-o-nong-thon7-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 999, 135, '2018-07-03 04:10:50', NULL, NULL, NULL),
(594, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-dep-o-nong-thon8-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 999, 135, '2018-07-03 04:10:50', NULL, NULL, NULL),
(595, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-dep-o-nong-thon9-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 999, 135, '2018-07-03 04:10:50', NULL, NULL, NULL),
(596, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-dep-o-nong-thon10-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng đẹp ở nông thôn', 999, 135, '2018-07-03 04:10:50', NULL, NULL, NULL),
(597, 'san-pham/', 'tong-hop-cac-mau-thiet-ke-nha-2-tang-4-phong-ngu-dep-20182.jpg', b'1', NULL, NULL, 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 999, 136, '2018-07-03 04:17:18', NULL, NULL, NULL),
(598, 'san-pham/', 'tong-hop-cac-mau-thiet-ke-nha-2-tang-4-phong-ngu-dep-2018a.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 999, 136, '2018-07-03 04:17:18', NULL, NULL, NULL),
(599, 'san-pham/', 'tong-hop-cac-mau-thiet-ke-nha-2-tang-4-phong-ngu-dep-2018b.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 999, 136, '2018-07-03 04:17:18', NULL, NULL, NULL),
(600, 'san-pham/', 'tong-hop-cac-mau-thiet-ke-nha-2-tang-4-phong-ngu-dep-2018c.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 999, 136, '2018-07-03 04:17:18', NULL, NULL, NULL),
(601, 'san-pham/', 'tong-hop-cac-mau-thiet-ke-nha-2-tang-4-phong-ngu-dep-2018d-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 999, 136, '2018-07-03 04:17:18', NULL, NULL, NULL),
(602, 'san-pham/', 'tong-hop-cac-mau-thiet-ke-nha-2-tang-4-phong-ngu-dep-2018e-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 999, 136, '2018-07-03 04:17:18', NULL, NULL, NULL),
(603, 'san-pham/', 'tong-hop-cac-mau-thiet-ke-nha-2-tang-4-phong-ngu-dep-2018f-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 999, 136, '2018-07-03 04:17:18', NULL, NULL, NULL),
(604, 'san-pham/', 'tong-hop-cac-mau-thiet-ke-nha-2-tang-4-phong-ngu-dep-2018g-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 999, 136, '2018-07-03 04:17:18', NULL, NULL, NULL),
(605, 'san-pham/', 'tong-hop-cac-mau-thiet-ke-nha-2-tang-4-phong-ngu-dep-2018h-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 999, 136, '2018-07-03 04:17:18', NULL, NULL, NULL),
(606, 'san-pham/', 'tong-hop-cac-mau-thiet-ke-nha-2-tang-4-phong-ngu-dep-2018i-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 'Tổng hợp những mẫu thiết kế 2 tầng 4 phòng ngủ đẹp 2018', 999, 136, '2018-07-03 04:17:18', NULL, NULL, NULL),
(607, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-mai-thai-o-nong-thon1-min1.jpg', b'1', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 999, 137, '2018-07-03 04:23:46', NULL, NULL, NULL),
(608, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-mai-thai-o-nong-thon2-min1.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 999, 137, '2018-07-03 04:23:46', NULL, NULL, NULL),
(609, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-mai-thai-o-nong-thon3-min1.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 999, 137, '2018-07-03 04:23:46', NULL, NULL, NULL),
(610, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-mai-thai-o-nong-thon4-min1.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 999, 137, '2018-07-03 04:23:46', NULL, NULL, NULL),
(611, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-mai-thai-o-nong-thon5-min1.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 999, 137, '2018-07-03 04:23:46', NULL, NULL, NULL),
(612, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-mai-thai-o-nong-thon7-min2.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 999, 137, '2018-07-03 04:23:46', NULL, NULL, NULL),
(613, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-mai-thai-o-nong-thon8-min1.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 999, 137, '2018-07-03 04:23:46', NULL, NULL, NULL),
(614, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-mai-thai-o-nong-thon-min3.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 'Tổng hợp những mẫu nhà 2 tầng mái thái ở nông thôn', 999, 137, '2018-07-03 04:23:46', NULL, NULL, NULL),
(615, 'san-pham/', 'tong-hop-nhung-mau-nha-mai-thai-2-tang-dep1.jpg', b'1', NULL, NULL, 'Tổng hợp những mẫu nhà mái thái 2 tầng đẹp', 'Tổng hợp những mẫu nhà mái thái 2 tầng đẹp', 999, 138, '2018-07-03 04:28:20', NULL, NULL, NULL),
(616, 'san-pham/', 'tong-hop-nhung-mau-nha-mai-thai-2-tang-dep1-min1.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà mái thái 2 tầng đẹp', 'Tổng hợp những mẫu nhà mái thái 2 tầng đẹp', 999, 138, '2018-07-03 04:28:20', NULL, NULL, NULL),
(617, 'san-pham/', 'tong-hop-nhung-mau-nha-mai-thai-2-tang-dep2-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà mái thái 2 tầng đẹp', 'Tổng hợp những mẫu nhà mái thái 2 tầng đẹp', 999, 138, '2018-07-03 04:28:20', NULL, NULL, NULL),
(618, 'san-pham/', 'tong-hop-nhung-mau-nha-mai-thai-2-tang-dep3-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà mái thái 2 tầng đẹp', 'Tổng hợp những mẫu nhà mái thái 2 tầng đẹp', 999, 138, '2018-07-03 04:28:20', NULL, NULL, NULL),
(619, 'san-pham/', 'tong-hop-nhung-mau-nha-mai-thai-2-tang-dep4-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà mái thái 2 tầng đẹp', 'Tổng hợp những mẫu nhà mái thái 2 tầng đẹp', 999, 138, '2018-07-03 04:28:20', NULL, NULL, NULL),
(620, 'san-pham/', 'tong-hop-nhung-mau-nha-mai-thai-2-tang-dep5-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà mái thái 2 tầng đẹp', 'Tổng hợp những mẫu nhà mái thái 2 tầng đẹp', 999, 138, '2018-07-03 04:28:20', NULL, NULL, NULL),
(621, 'san-pham/', 'tong-hop-nhung-mau-nha-vuon-1-tang-don-gian-va-tinh-te1-min.jpg', b'1', NULL, NULL, 'Tổng hợp những mẫu nhà vườn 1 tầng đơn giản và tinh tế', 'Tổng hợp những mẫu nhà vườn 1 tầng đơn giản và tinh tế', 999, 139, '2018-07-03 08:39:52', NULL, NULL, NULL),
(622, 'san-pham/', 'tong-hop-nhung-mau-nha-vuon-1-tang-don-gian-va-tinh-te4-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà vườn 1 tầng đơn giản và tinh tế', 'Tổng hợp những mẫu nhà vườn 1 tầng đơn giản và tinh tế', 999, 139, '2018-07-03 08:39:52', NULL, NULL, NULL),
(623, 'san-pham/', 'tong-hop-nhung-mau-nha-vuon-1-tang-don-gian-va-tinh-te5-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà vườn 1 tầng đơn giản và tinh tế', 'Tổng hợp những mẫu nhà vườn 1 tầng đơn giản và tinh tế', 999, 139, '2018-07-03 08:39:52', NULL, NULL, NULL),
(624, 'san-pham/', 'tong-hop-nhung-mau-nha-vuon-1-tang-don-gian-va-tinh-te-min1.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà vườn 1 tầng đơn giản và tinh tế', 'Tổng hợp những mẫu nhà vườn 1 tầng đơn giản và tinh tế', 999, 139, '2018-07-03 08:39:52', NULL, NULL, NULL),
(625, 'san-pham/', 'tong-hop-nhung-mau-nha-vuon-1-tang-don-gian-va-tinh-te2.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà vườn 1 tầng đơn giản và tinh tế', 'Tổng hợp những mẫu nhà vườn 1 tầng đơn giản và tinh tế', 999, 139, '2018-07-03 08:39:52', NULL, NULL, NULL),
(626, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-3-phong-ngu-hot-nhat-2018b-min.jpg', b'1', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 999, 140, '2018-07-03 09:50:35', NULL, NULL, NULL),
(627, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-3-phong-ngu-hot-nhat-2018a-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 999, 140, '2018-07-03 09:50:35', NULL, NULL, NULL),
(628, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-3-phong-ngu-hot-nhat-2018d-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 999, 140, '2018-07-03 09:50:35', NULL, NULL, NULL),
(629, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-3-phong-ngu-hot-nhat-2018c-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 999, 140, '2018-07-03 09:50:35', NULL, NULL, NULL),
(630, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-3-phong-ngu-hot-nhat-2018f-min_(1).jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 999, 140, '2018-07-03 09:50:35', NULL, NULL, NULL),
(631, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-3-phong-ngu-hot-nhat-2018e-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 999, 140, '2018-07-03 09:50:35', NULL, NULL, NULL),
(632, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-3-phong-ngu-hot-nhat-2018f-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 999, 140, '2018-07-03 09:50:35', NULL, NULL, NULL),
(633, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-3-phong-ngu-hot-nhat-2018g-min_(1).jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 'Tổng hợp những mẫu nhà 1 tầng 3 phòng ngủ ', 999, 140, '2018-07-03 09:50:35', NULL, NULL, NULL),
(634, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-mai-thai-dep-nhat-hien-nay1-min.jpg', b'1', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng mái thái đẹp nhất hiện nay', 'Tổng hợp những mẫu nhà 1 tầng mái thái đẹp nhất hiện nay', 999, 141, '2018-07-04 03:02:46', NULL, NULL, NULL),
(635, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-mai-thai-dep-nhat-hien-nay2-min_(1).jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng mái thái đẹp nhất hiện nay', 'Tổng hợp những mẫu nhà 1 tầng mái thái đẹp nhất hiện nay', 999, 141, '2018-07-04 03:02:46', NULL, NULL, NULL),
(636, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-mai-thai-dep-nhat-hien-nay2-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng mái thái đẹp nhất hiện nay', 'Tổng hợp những mẫu nhà 1 tầng mái thái đẹp nhất hiện nay', 999, 141, '2018-07-04 03:02:46', NULL, NULL, NULL),
(637, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-mai-thai-dep-nhat-hien-nay3-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng mái thái đẹp nhất hiện nay', 'Tổng hợp những mẫu nhà 1 tầng mái thái đẹp nhất hiện nay', 999, 141, '2018-07-04 03:02:46', NULL, NULL, NULL),
(638, 'san-pham/', 'tong-hop-nhung-mau-nha-vuon-2-tang-hot-nhat-thoi-gian-qua1-min.jpg', b'1', NULL, NULL, 'Tổng hợp những mẫu nhà vườn 2 tầng hot nhất thời gian qua', 'Tổng hợp những mẫu nhà vườn 2 tầng hot nhất thời gian qua', 999, 142, '2018-07-04 04:02:30', NULL, NULL, NULL),
(639, 'san-pham/', 'tong-hop-nhung-mau-nha-vuon-2-tang-hot-nhat-thoi-gian-qua2-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà vườn 2 tầng hot nhất thời gian qua', 'Tổng hợp những mẫu nhà vườn 2 tầng hot nhất thời gian qua', 999, 142, '2018-07-04 04:02:30', NULL, NULL, NULL),
(640, 'san-pham/', 'tong-hop-nhung-mau-nha-vuon-2-tang-hot-nhat-thoi-gian-qua3-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà vườn 2 tầng hot nhất thời gian qua', 'Tổng hợp những mẫu nhà vườn 2 tầng hot nhất thời gian qua', 999, 142, '2018-07-04 04:02:30', NULL, NULL, NULL),
(641, 'san-pham/', 'tong-hop-nhung-mau-nha-vuon-2-tang-hot-nhat-thoi-gian-qua5-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà vườn 2 tầng hot nhất thời gian qua', 'Tổng hợp những mẫu nhà vườn 2 tầng hot nhất thời gian qua', 999, 142, '2018-07-04 04:02:30', NULL, NULL, NULL),
(642, 'san-pham/', 'tong-hop-nhung-mau-nha-vuon-2-tang-hot-nhat-thoi-gian-qua6-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà vườn 2 tầng hot nhất thời gian qua', 'Tổng hợp những mẫu nhà vườn 2 tầng hot nhất thời gian qua', 999, 142, '2018-07-04 04:02:30', NULL, NULL, NULL),
(643, 'san-pham/', 'tong-hop-nhung-mau-nha-vuon-2-tang-hot-nhat-thoi-gian-qua-min1.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà vườn 2 tầng hot nhất thời gian qua', 'Tổng hợp những mẫu nhà vườn 2 tầng hot nhất thời gian qua', 999, 142, '2018-07-04 04:02:30', NULL, NULL, NULL),
(644, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-hien-dai-min1.jpg', b'1', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng hiện đại', 'Tổng hợp những mẫu nhà 1 tầng hiện đại', 999, 143, '2018-07-04 07:22:52', NULL, NULL, NULL),
(645, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-hien-dai1-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng hiện đại', 'Tổng hợp những mẫu nhà 1 tầng hiện đại', 999, 143, '2018-07-04 07:22:52', NULL, NULL, NULL),
(646, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-hien-dai2-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng hiện đại', 'Tổng hợp những mẫu nhà 1 tầng hiện đại', 999, 143, '2018-07-04 07:22:52', NULL, NULL, NULL),
(647, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-hien-dai3-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng hiện đại', 'Tổng hợp những mẫu nhà 1 tầng hiện đại', 999, 143, '2018-07-04 07:22:52', NULL, NULL, NULL),
(648, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-hien-dai4-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng hiện đại', 'Tổng hợp những mẫu nhà 1 tầng hiện đại', 999, 143, '2018-07-04 07:22:52', NULL, NULL, NULL),
(649, 'san-pham/', 'tong-hop-nhung-mau-nha-1-tang-hien-dai5-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 1 tầng hiện đại', 'Tổng hợp những mẫu nhà 1 tầng hiện đại', 999, 143, '2018-07-04 07:22:52', NULL, NULL, NULL),
(650, 'san-pham/', 'mau-biet-thu-3-tang-3-mat-tien-BT154-min1.jpg', b'1', NULL, NULL, 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 999, 144, '2018-07-04 08:46:07', NULL, NULL, NULL),
(651, 'san-pham/', 'mau-biet-thu-3-tang-3-mat-tien-BT154a-min.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 999, 144, '2018-07-04 08:46:07', NULL, NULL, NULL),
(652, 'san-pham/', 'mau-biet-thu-3-tang-3-mat-tien-BT154b-min.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 999, 144, '2018-07-04 08:46:07', NULL, NULL, NULL),
(653, 'san-pham/', 'mau-biet-thu-3-tang-3-mat-tien-BT154c-min.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 999, 144, '2018-07-04 08:46:07', NULL, NULL, NULL),
(654, 'san-pham/', 'mau-biet-thu-3-tang-3-mat-tien-BT154d-min.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 999, 144, '2018-07-04 08:46:07', NULL, NULL, NULL),
(655, 'san-pham/', 'mau-biet-thu-3-tang-3-mat-tien-BT154e-min.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 999, 144, '2018-07-04 08:46:07', NULL, NULL, NULL),
(656, 'san-pham/', 'mau-biet-thu-3-tang-3-mat-tien-BT154f-min.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 999, 144, '2018-07-04 08:46:07', NULL, NULL, NULL),
(657, 'san-pham/', 'mau-biet-thu-3-tang-3-mat-tien-BT154g-min.jpg', b'0', NULL, NULL, 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 'Mẫu biệt thự 3 tầng 3 mặt tiền BT154', 999, 144, '2018-07-04 08:46:07', NULL, NULL, NULL),
(658, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-don-gian1-min.jpg', b'1', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đơn giản', 'Tổng hợp những mẫu nhà 2 tầng đơn giản', 999, 145, '2018-07-05 07:49:56', NULL, NULL, NULL),
(659, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-don-gian2-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đơn giản', 'Tổng hợp những mẫu nhà 2 tầng đơn giản', 999, 145, '2018-07-05 07:49:56', NULL, NULL, NULL),
(660, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-don-gian3-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đơn giản', 'Tổng hợp những mẫu nhà 2 tầng đơn giản', 999, 145, '2018-07-05 07:49:56', NULL, NULL, NULL),
(661, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-don-gian4-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đơn giản', 'Tổng hợp những mẫu nhà 2 tầng đơn giản', 999, 145, '2018-07-05 07:49:56', NULL, NULL, NULL),
(662, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-don-gian5-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đơn giản', 'Tổng hợp những mẫu nhà 2 tầng đơn giản', 999, 145, '2018-07-05 07:49:56', NULL, NULL, NULL),
(663, 'san-pham/', 'tong-hop-nhung-mau-nha-2-tang-don-gian-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà 2 tầng đơn giản', 'Tổng hợp những mẫu nhà 2 tầng đơn giản', 999, 145, '2018-07-05 07:49:56', NULL, NULL, NULL),
(664, 'san-pham/', 'tong-hop-nhung-mau-biet-thu-2-tang-kieu-phap1-min.jpg', b'1', NULL, NULL, 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 999, 146, '2018-07-05 09:20:53', NULL, NULL, NULL),
(665, 'san-pham/', 'tong-hop-nhung-mau-biet-thu-2-tang-kieu-phap-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 999, 146, '2018-07-05 09:20:53', NULL, NULL, NULL),
(666, 'san-pham/', 'tong-hop-nhung-mau-biet-thu-2-tang-kieu-phap2-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 999, 146, '2018-07-05 09:20:53', NULL, NULL, NULL),
(667, 'san-pham/', 'tong-hop-nhung-mau-biet-thu-2-tang-kieu-phap3-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 999, 146, '2018-07-05 09:20:53', NULL, NULL, NULL),
(668, 'san-pham/', 'tong-hop-nhung-mau-biet-thu-2-tang-kieu-phap4-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 999, 146, '2018-07-05 09:20:53', NULL, NULL, NULL),
(669, 'san-pham/', 'tong-hop-nhung-mau-biet-thu-2-tang-kieu-phap5-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 999, 146, '2018-07-05 09:20:53', NULL, NULL, NULL),
(670, 'san-pham/', 'tong-hop-nhung-mau-biet-thu-2-tang-kieu-phap6-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 999, 146, '2018-07-05 09:20:53', NULL, NULL, NULL),
(671, 'san-pham/', 'tong-hop-nhung-mau-biet-thu-2-tang-kieu-phap7-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 'Tổng hợp những mẫu biệt thự 2 tầng kiểu Pháp', 999, 146, '2018-07-05 09:20:53', NULL, NULL, NULL),
(672, 'san-pham/', 'phoi-canh-26-min.jpg', b'1', NULL, NULL, 'Biệt thự 2 tầng cổ điển phong cách châu âu', 'Biệt thự 2 tầng cổ điển phong cách châu âu', 999, 59, '2018-07-12 09:08:38', NULL, NULL, NULL),
(673, 'san-pham/', 'phoi-canh-15-min.jpg', b'0', NULL, NULL, '', '', 999, 59, '2018-07-12 09:08:38', NULL, NULL, NULL),
(674, 'san-pham/', 'tong-hop-nhung-mau-nha-dep-2-tang-2018-min.jpg', b'1', NULL, NULL, 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 999, 147, '2018-07-12 09:40:02', NULL, NULL, NULL),
(675, 'san-pham/', 'tong-hop-nhung-mau-nha-dep-2-tang-2018a-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 999, 147, '2018-07-12 09:40:02', NULL, NULL, NULL),
(676, 'san-pham/', 'tong-hop-nhung-mau-nha-dep-2-tang-2018b-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 999, 147, '2018-07-12 09:40:02', NULL, NULL, NULL),
(677, 'san-pham/', 'tong-hop-nhung-mau-nha-dep-2-tang-2018c-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 999, 147, '2018-07-12 09:40:02', NULL, NULL, NULL),
(678, 'san-pham/', 'tong-hop-nhung-mau-nha-dep-2-tang-2018d-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 999, 147, '2018-07-12 09:40:02', NULL, NULL, NULL),
(679, 'san-pham/', 'tong-hop-nhung-mau-nha-dep-2-tang-2018e-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 999, 147, '2018-07-12 09:40:02', NULL, NULL, NULL),
(680, 'san-pham/', 'tong-hop-nhung-mau-nha-dep-2-tang-2018f-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 999, 147, '2018-07-12 09:40:02', NULL, NULL, NULL),
(681, 'san-pham/', 'tong-hop-nhung-mau-nha-dep-2-tang-2018g-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 999, 147, '2018-07-12 09:40:02', NULL, NULL, NULL),
(682, 'san-pham/', 'tong-hop-nhung-mau-nha-dep-2-tang-2018h-min.jpg', b'0', NULL, NULL, 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 'Tổng hợp những mẫu nhà đẹp 2 tầng 2018', 999, 147, '2018-07-12 09:40:02', NULL, NULL, NULL),
(688, 'san-pham/', 'biet-thu-3-tang-24.jpg', b'1', NULL, NULL, 'Biệt thự 3 tầng tân cổ điển 185m2 5 phòng ngủ', 'Biệt thự 3 tầng tân cổ điển 185m2 5 phòng ngủ', 999, 148, '2018-10-17 06:50:56', NULL, NULL, NULL),
(684, 'san-pham/', 'biet-thu-3-tang-1.jpg', b'0', NULL, NULL, 'Biệt thự 3 tầng tân cổ điển 185m2 5 phòng ngủ', 'Biệt thự 3 tầng tân cổ điển 185m2 5 phòng ngủ', 999, 148, '2018-08-30 02:31:58', NULL, NULL, NULL),
(685, 'san-pham/', 'biet-thu-3-tang-3.jpg', b'0', NULL, NULL, 'Biệt thự 3 tầng tân cổ điển 185m2 5 phòng ngủ', 'Biệt thự 3 tầng tân cổ điển 185m2 5 phòng ngủ', 999, 148, '2018-08-30 02:31:58', NULL, NULL, NULL),
(686, 'san-pham/', 'biet-thu-3-tang-4.jpg', b'0', NULL, NULL, 'Biệt thự 3 tầng tân cổ điển 185m2 5 phòng ngủ', 'Biệt thự 3 tầng tân cổ điển 185m2 5 phòng ngủ', 999, 148, '2018-08-30 02:31:58', NULL, NULL, NULL),
(687, 'san-pham/', 'biet-thu-3-tang-5.jpg', b'0', NULL, NULL, 'Biệt thự 3 tầng tân cổ điển 185m2 5 phòng ngủ', 'Biệt thự 3 tầng tân cổ điển 185m2 5 phòng ngủ', 999, 148, '2018-08-30 02:31:58', NULL, NULL, NULL),
(689, 'san-pham/', 'mau-nha-2-tang-mai-thai22.jpg', b'1', NULL, NULL, '', '', 999, 147, '2018-10-17 06:54:10', NULL, NULL, NULL),
(690, 'san-pham/', 'biet-thu-pho-3-tang-1-min1.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự phố 3 tầng', 'Thiết kế biệt thự phố 3 tầng', 999, 149, '2018-12-21 04:47:31', NULL, NULL, NULL),
(691, 'san-pham/', 'biet-thu-pho-3-tang-2-min.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự phố 3 tầng', 'Thiết kế biệt thự phố 3 tầng', 999, 149, '2018-12-21 04:47:31', NULL, NULL, NULL),
(692, 'san-pham/', 'biet-thu-pho-3-tang-3-min.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự phố 3 tầng', 'Thiết kế biệt thự phố 3 tầng', 999, 149, '2018-12-21 04:47:31', NULL, NULL, NULL),
(693, 'san-pham/', 'biet-thu-pho-3-tang-4-min.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự phố 3 tầng', 'Thiết kế biệt thự phố 3 tầng', 999, 149, '2018-12-21 04:47:31', NULL, NULL, NULL),
(694, 'san-pham/', 'biet-thu-pho-3-tang-5-min.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự phố 3 tầng', 'Thiết kế biệt thự phố 3 tầng', 999, 149, '2018-12-21 04:47:31', NULL, NULL, NULL),
(703, 'san-pham/', 'nha-chu-l-2-tang-dep-1-min1.jpg', b'1', NULL, NULL, '', 'Thiết kế nhà chữ L 2 tầng 1,2 tỷ ở Hưng Yên - BT194', 999, 150, '2019-04-05 08:19:39', NULL, NULL, NULL),
(696, 'san-pham/', 'biet-thu-pho-3-tang-6-min1.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự phố 3 tầng', 'Thiết kế biệt thự phố 3 tầng', 999, 149, '2018-12-21 04:47:31', NULL, NULL, NULL),
(697, 'san-pham/', 'biet-thu-pho-3-tang-7-min.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự phố 3 tầng', 'Thiết kế biệt thự phố 3 tầng', 999, 149, '2018-12-21 04:47:31', NULL, NULL, NULL),
(698, 'san-pham/', 'biet-thu-pho-3-tang-8-min.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự phố 3 tầng', 'Thiết kế biệt thự phố 3 tầng', 999, 149, '2018-12-21 04:47:31', NULL, NULL, NULL),
(699, 'san-pham/', 'biet-thu-pho-3-tang-9-min.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự phố 3 tầng', 'Thiết kế biệt thự phố 3 tầng', 999, 149, '2018-12-21 04:47:31', NULL, NULL, NULL),
(700, 'san-pham/', 'biet-thu-pho-3-tang-10-min.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự phố 3 tầng', 'Thiết kế biệt thự phố 3 tầng', 999, 149, '2018-12-21 04:47:31', NULL, NULL, NULL),
(701, 'san-pham/', 'biet-thu-pho-3-tang-11-min.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự phố 3 tầng', 'Thiết kế biệt thự phố 3 tầng', 999, 149, '2018-12-21 04:47:31', NULL, NULL, NULL),
(702, 'san-pham/', 'biet-thu-pho-3-tang-12-min.jpg', b'0', NULL, NULL, 'Thiết kế biệt thự phố 3 tầng', 'Thiết kế biệt thự phố 3 tầng', 999, 149, '2018-12-21 04:47:31', NULL, NULL, NULL),
(704, 'san-pham/', 'nha-chu-l-2-tang-dep-2-min.jpg', b'0', NULL, NULL, 'Thiết kế nhà chữ L 2 tầng 1,2 tỷ ở Hưng Yên - BT194', 'Thiết kế nhà chữ L 2 tầng 1,2 tỷ ở Hưng Yên - BT194', 999, 150, '2019-04-05 08:19:39', NULL, NULL, NULL),
(705, 'san-pham/', 'nha-chu-l-2-tang-dep-3-min.jpg', b'0', NULL, NULL, 'Thiết kế nhà chữ L 2 tầng 1,2 tỷ ở Hưng Yên - BT194', 'Thiết kế nhà chữ L 2 tầng 1,2 tỷ ở Hưng Yên - BT194', 999, 150, '2019-04-05 08:19:39', NULL, NULL, NULL),
(706, 'san-pham/', 'nha-chu-l-2-tang-dep-4-min.jpg', b'0', NULL, NULL, 'Thiết kế nhà chữ L 2 tầng 1,2 tỷ ở Hưng Yên - BT194', 'Thiết kế nhà chữ L 2 tầng 1,2 tỷ ở Hưng Yên - BT194', 999, 150, '2019-04-05 08:19:39', NULL, NULL, NULL),
(707, 'san-pham/', 'mat-bang-tang-1-nha-chu-l-min.jpg', b'0', NULL, NULL, 'Thiết kế nhà chữ L 2 tầng 1,2 tỷ ở Hưng Yên - BT194', 'Thiết kế nhà chữ L 2 tầng 1,2 tỷ ở Hưng Yên - BT194', 999, 150, '2019-04-05 08:19:39', NULL, NULL, NULL),
(708, 'san-pham/', 'mat-bang-tang-2-nha-chu-l-min.jpg', b'0', NULL, NULL, 'Thiết kế nhà chữ L 2 tầng 1,2 tỷ ở Hưng Yên - BT194', 'Thiết kế nhà chữ L 2 tầng 1,2 tỷ ở Hưng Yên - BT194', 999, 150, '2019-04-05 08:19:39', NULL, NULL, NULL),
(709, 'san-pham/', 'biet-thu-2-tang-1-min.jpg', b'1', NULL, NULL, 'Tư vấn thiết kế mẫu nhà 2 tầng 1 tum nổi bật với mái mansard – BT192', 'Tư vấn thiết kế mẫu nhà 2 tầng 1 tum nổi bật với mái mansard – BT192', 999, 151, '2019-04-10 09:13:05', NULL, NULL, NULL),
(710, 'san-pham/', 'biet-thu-2-tang-2-min.jpg', b'0', NULL, NULL, 'Tư vấn thiết kế mẫu nhà 2 tầng 1 tum nổi bật với mái mansard – BT192', 'Tư vấn thiết kế mẫu nhà 2 tầng 1 tum nổi bật với mái mansard – BT192', 999, 151, '2019-04-10 09:13:05', NULL, NULL, NULL),
(711, 'san-pham/', 'biet-thu-2-tang-3-min1.jpg', b'0', NULL, NULL, 'Tư vấn thiết kế mẫu nhà 2 tầng 1 tum nổi bật với mái mansard – BT192', 'Tư vấn thiết kế mẫu nhà 2 tầng 1 tum nổi bật với mái mansard – BT192', 999, 151, '2019-04-10 09:13:05', NULL, NULL, NULL),
(712, 'san-pham/', 'biet-thu-2-tang-min.jpg', b'0', NULL, NULL, 'Tư vấn thiết kế mẫu nhà 2 tầng 1 tum nổi bật với mái mansard – BT192', 'Tư vấn thiết kế mẫu nhà 2 tầng 1 tum nổi bật với mái mansard – BT192', 999, 151, '2019-04-10 09:13:05', NULL, NULL, NULL),
(713, 'san-pham/', '15.jpg', b'1', NULL, NULL, '', '', 999, 152, '2019-10-04 08:59:46', NULL, NULL, NULL),
(714, 'san-pham/', 'mat-tien-nha-ngo-duong-kenh-ntt012.jpg', b'0', NULL, NULL, '', '', 999, 154, '2019-10-10 17:50:05', NULL, NULL, NULL),
(715, 'san-pham/', 'phong-ngu-ntt01.jpg', b'1', NULL, NULL, '', '', 999, 154, '2019-10-10 17:54:07', NULL, NULL, NULL),
(716, 'san-pham/', 'HL1.jpg', b'0', NULL, NULL, '', '', 999, 154, '2019-10-10 17:54:07', NULL, NULL, NULL),
(717, 'san-pham/', 's4.jpg', b'0', NULL, NULL, '', '', 999, 154, '2019-10-10 17:54:07', NULL, NULL, NULL),
(718, 'san-pham/', 'ktt01-dong-quy-mat-tien1.jpg', b'1', NULL, NULL, '', '', 999, 155, '2019-10-11 07:46:17', NULL, NULL, NULL),
(719, 'san-pham/', 's41.jpg', b'0', NULL, NULL, '', '', 999, 155, '2019-10-11 07:46:17', NULL, NULL, NULL),
(720, 'san-pham/', 's3.jpg', b'0', NULL, NULL, '', '', 999, 155, '2019-10-11 07:46:17', NULL, NULL, NULL),
(721, 'san-pham/', 's2.jpg', b'0', NULL, NULL, '', '', 999, 155, '2019-10-11 07:46:17', NULL, NULL, NULL),
(722, 'san-pham/', 's21.jpg', b'0', NULL, NULL, '', '', 999, 155, '2019-10-11 07:46:17', NULL, NULL, NULL),
(723, 'san-pham/', '71148152_2354306501486483_8325704445853696000_n.jpg', b'0', NULL, NULL, '', '', 999, 155, '2019-10-11 07:46:17', NULL, NULL, NULL),
(724, 'san-pham/', 'n11.png', b'1', NULL, NULL, '', '', 999, 156, '2019-10-11 16:39:00', NULL, NULL, NULL),
(725, 'san-pham/', 'CT1.jpg', b'0', NULL, NULL, '', '', 999, 156, '2019-10-11 16:39:00', NULL, NULL, NULL),
(726, 'san-pham/', 'HL11.jpg', b'0', NULL, NULL, '', '', 999, 156, '2019-10-11 16:39:00', NULL, NULL, NULL),
(727, 'san-pham/', 's9.jpg', b'0', NULL, NULL, '', '', 999, 156, '2019-10-11 16:39:00', NULL, NULL, NULL),
(728, 'san-pham/', 'n2.jpg', b'0', NULL, NULL, '', '', 999, 156, '2019-10-11 16:39:00', NULL, NULL, NULL),
(729, 'san-pham/', 'NTT011.png', b'1', NULL, NULL, '', '', 999, 157, '2019-10-12 15:58:13', NULL, NULL, NULL),
(730, 'san-pham/', 'CT11.jpg', b'0', NULL, NULL, '', '', 999, 157, '2019-10-12 15:58:13', NULL, NULL, NULL),
(731, 'san-pham/', 's91.jpg', b'0', NULL, NULL, '', '', 999, 157, '2019-10-12 15:58:13', NULL, NULL, NULL),
(732, 'san-pham/', 's6.jpg', b'0', NULL, NULL, '', '', 999, 157, '2019-10-12 15:58:13', NULL, NULL, NULL),
(733, 'san-pham/', 'CT2.jpg', b'0', NULL, NULL, '', '', 999, 158, '2019-10-13 15:23:28', NULL, NULL, NULL),
(734, 'san-pham/', 'MN2.jpg', b'0', NULL, NULL, '', '', 999, 158, '2019-10-13 15:23:28', NULL, NULL, NULL),
(735, 'san-pham/', 's13.jpg', b'0', NULL, NULL, '', '', 999, 158, '2019-10-13 15:23:28', NULL, NULL, NULL),
(736, 'san-pham/', 'NTT021.png', b'1', NULL, NULL, '', '', 999, 158, '2019-10-13 15:23:28', NULL, NULL, NULL),
(737, 'san-pham/', 'KTT021.png', b'1', NULL, NULL, '', '', 999, 159, '2019-10-13 15:41:10', NULL, NULL, NULL),
(738, 'san-pham/', 'D5.jpg', b'0', NULL, NULL, '', '', 999, 159, '2019-10-13 15:41:10', NULL, NULL, NULL),
(739, 'san-pham/', 'G5.jpg', b'0', NULL, NULL, '', '', 999, 159, '2019-10-13 15:41:10', NULL, NULL, NULL),
(740, 'san-pham/', 'VS5.jpg', b'0', NULL, NULL, '', '', 999, 159, '2019-10-13 15:41:10', NULL, NULL, NULL),
(741, 'san-pham/', 'S8.jpg', b'0', NULL, NULL, '', '', 999, 159, '2019-10-13 15:41:10', NULL, NULL, NULL),
(742, 'san-pham/', 'NTT031.png', b'1', NULL, NULL, '', '', 999, 160, '2019-10-13 15:54:52', NULL, NULL, NULL),
(743, 'san-pham/', 'CT5.jpg', b'0', NULL, NULL, '', '', 999, 160, '2019-10-13 15:54:52', NULL, NULL, NULL),
(744, 'san-pham/', '71403108_2356902801226853_2646487813331091456_n.jpg', b'0', NULL, NULL, '', '', 999, 160, '2019-10-13 15:54:52', NULL, NULL, NULL),
(745, 'san-pham/', 'S5.jpg', b'0', NULL, NULL, '', '', 999, 160, '2019-10-13 15:54:52', NULL, NULL, NULL),
(746, 'san-pham/', 'NTT051.png', b'1', NULL, NULL, '', '', 999, 161, '2019-10-14 16:07:37', NULL, NULL, NULL),
(747, 'san-pham/', 'CT21.jpg', b'0', NULL, NULL, '', '', 999, 161, '2019-10-14 16:07:37', NULL, NULL, NULL),
(748, 'san-pham/', 's31.jpg', b'0', NULL, NULL, '', '', 999, 161, '2019-10-14 16:07:37', NULL, NULL, NULL),
(749, 'san-pham/', 'NTT05_(1).png', b'1', NULL, NULL, '', '', 999, 162, '2019-10-14 16:16:41', NULL, NULL, NULL),
(750, 'san-pham/', 'CT12.jpg', b'0', NULL, NULL, '', '', 999, 162, '2019-10-14 16:16:41', NULL, NULL, NULL),
(751, 'san-pham/', 'MN21.jpg', b'0', NULL, NULL, '', '', 999, 162, '2019-10-14 16:16:41', NULL, NULL, NULL),
(752, 'san-pham/', 'S51.jpg', b'0', NULL, NULL, '', '', 999, 162, '2019-10-14 16:16:41', NULL, NULL, NULL),
(753, 'san-pham/', 'NTT081.png', b'1', NULL, NULL, '', '', 999, 163, '2019-10-14 16:41:56', NULL, NULL, NULL),
(754, 'san-pham/', 's14.jpg', b'0', NULL, NULL, '', '', 999, 163, '2019-10-14 16:41:56', NULL, NULL, NULL),
(755, 'san-pham/', 'n21.jpg', b'0', NULL, NULL, '', '', 999, 163, '2019-10-14 16:41:56', NULL, NULL, NULL),
(756, 'san-pham/', 'PT1.jpg', b'0', NULL, NULL, '', '', 999, 163, '2019-10-14 16:41:56', NULL, NULL, NULL),
(757, 'san-pham/', 'NTT071.png', b'1', NULL, NULL, '', '', 999, 164, '2019-10-14 17:07:11', NULL, NULL, NULL),
(758, 'san-pham/', 'CT22.jpg', b'0', NULL, NULL, '', '', 999, 164, '2019-10-14 17:07:11', NULL, NULL, NULL),
(759, 'san-pham/', 'MN1.jpg', b'0', NULL, NULL, '', '', 999, 164, '2019-10-14 17:07:11', NULL, NULL, NULL),
(760, 'san-pham/', 's16.jpg', b'0', NULL, NULL, '', '', 999, 164, '2019-10-14 17:07:11', NULL, NULL, NULL),
(761, 'san-pham/', 'NTT091.png', b'1', NULL, NULL, '', '', 999, 165, '2019-10-14 17:21:24', NULL, NULL, NULL),
(762, 'san-pham/', 'VS4.jpg', b'0', NULL, NULL, '', '', 999, 165, '2019-10-14 17:21:24', NULL, NULL, NULL),
(763, 'san-pham/', 's20.jpg', b'0', NULL, NULL, '', '', 999, 165, '2019-10-14 17:21:24', NULL, NULL, NULL),
(764, 'san-pham/', 's18.jpg', b'0', NULL, NULL, '', '', 999, 165, '2019-10-14 17:21:24', NULL, NULL, NULL),
(765, 'san-pham/', 'NTT09_(1)1.png', b'1', NULL, NULL, '', '', 999, 166, '2019-10-14 17:47:14', NULL, NULL, NULL),
(766, 'san-pham/', 'B1.jpg', b'0', NULL, NULL, '', '', 999, 166, '2019-10-14 17:47:14', NULL, NULL, NULL),
(767, 'san-pham/', 'n4.jpg', b'0', NULL, NULL, '', '', 999, 166, '2019-10-14 17:47:14', NULL, NULL, NULL),
(768, 'san-pham/', 'G1.jpg', b'0', NULL, NULL, '', '', 999, 166, '2019-10-14 17:47:14', NULL, NULL, NULL),
(769, 'san-pham/', 'NTT101.png', b'1', NULL, NULL, '', '', 999, 167, '2019-10-14 18:01:12', NULL, NULL, NULL),
(770, 'san-pham/', 's10.jpg', b'0', NULL, NULL, '', '', 999, 167, '2019-10-14 18:01:12', NULL, NULL, NULL),
(771, 'san-pham/', 'G51.jpg', b'0', NULL, NULL, '', '', 999, 167, '2019-10-14 18:01:12', NULL, NULL, NULL),
(772, 'san-pham/', 's181.jpg', b'0', NULL, NULL, '', '', 999, 167, '2019-10-14 18:01:12', NULL, NULL, NULL),
(773, 'san-pham/', 'DDA011.png', b'1', NULL, NULL, '', '', 999, 168, '2019-10-14 18:09:24', NULL, NULL, NULL),
(774, 'san-pham/', 'DA2.jpg', b'0', NULL, NULL, '', '', 999, 168, '2019-10-14 18:09:24', NULL, NULL, NULL),
(775, 'san-pham/', 'DA8.jpg', b'0', NULL, NULL, '', '', 999, 168, '2019-10-14 18:09:24', NULL, NULL, NULL),
(776, 'san-pham/', 'DLK.jpg', b'0', NULL, NULL, '', '', 999, 168, '2019-10-14 18:09:24', NULL, NULL, NULL),
(786, 'san-pham/', 'cua-hang-vit-51.png', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CỦA HÀNG BÁN VỊT HẢI PHÒNG - A HÀ', 999, 169, '2020-01-12 15:28:59', NULL, NULL, NULL),
(785, 'san-pham/', 'cua-hang-vit-41.png', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CỦA HÀNG BÁN VỊT HẢI PHÒNG - A HÀ', 999, 169, '2020-01-12 15:28:59', NULL, NULL, NULL),
(784, 'san-pham/', 'cua-hang-ban-vit-31.png', b'0', NULL, NULL, '', '', 999, 169, '2020-01-12 15:28:59', NULL, NULL, NULL),
(783, 'san-pham/', 'cua-hang-ban-vit-21.png', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CỦA HÀNG BÁN VỊT HẢI PHÒNG - A HÀ', 999, 169, '2020-01-12 15:28:59', NULL, NULL, NULL),
(782, 'san-pham/', 'thiet-ke-cua-hang-ban-vit1.png', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CỦA HÀNG BÁN VỊT HẢI PHÒNG - A HÀ', 999, 169, '2020-01-12 15:28:59', NULL, NULL, NULL),
(787, 'san-pham/', 'thiet-ke-biet-thu-mot-tang-a-hai-1.png', b'1', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ MỘT TẦNG NHÀ A HẢI ', 999, 170, '2020-01-12 15:50:18', NULL, NULL, NULL),
(788, 'san-pham/', 'thiet-ke-biet-thu-mot-tang-a-hai-2.png', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ MỘT TẦNG NHÀ A HẢI ', 999, 170, '2020-01-12 15:50:18', NULL, NULL, NULL),
(789, 'san-pham/', 'thiet-ke-biet-thu-mot-tang-a-hai3.png', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ MỘT TẦNG NHÀ A HẢI ', 999, 170, '2020-01-12 15:50:18', NULL, NULL, NULL),
(790, 'san-pham/', 'thiet-ke-biet-thu-mot-tang-a-hai-5.png', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ MỘT TẦNG NHÀ A HẢI ', 999, 170, '2020-01-12 15:50:18', NULL, NULL, NULL),
(791, 'san-pham/', '76986932_999995910337612_388751667648004096_o.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ NỘI THẤT CHUNG CƯ IMPERIAL SKY GARDEN A THỌ', 999, 171, '2020-01-13 17:00:05', NULL, NULL, NULL),
(792, 'san-pham/', '78290378_999995893670947_1548933071439396864_o.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NỘI THẤT CHUNG CƯ IMPERIAL SKY GARDEN A THỌ', 999, 171, '2020-01-13 17:00:05', NULL, NULL, NULL),
(793, 'san-pham/', 'thiet-ke-noi-that-tan-co-nha-pho-chi-huong-1.png', b'0', NULL, NULL, '', 'THIẾT KẾ NỘI THẤT NHÀ PHỐ CHI HƯƠNG ', 999, 172, '2020-01-14 03:44:43', NULL, NULL, NULL),
(794, 'san-pham/', 'thiet-ke-noi-that-tan-co-nha-pho-chi-huong-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NỘI THẤT NHÀ PHỐ CHI HƯƠNG ', 999, 172, '2020-01-14 03:44:43', NULL, NULL, NULL),
(795, 'san-pham/', 'thiet-ke-noi-that-tan-co-nha-pho-chi-huong-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NỘI THẤT NHÀ PHỐ CHI HƯƠNG ', 999, 172, '2020-01-14 03:44:43', NULL, NULL, NULL),
(796, 'san-pham/', 'thiet-ke-noi-that-tan-co-nha-pho-chi-huong-4.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ NỘI THẤT NHÀ PHỐ CHI HƯƠNG ', 999, 172, '2020-01-14 03:44:43', NULL, NULL, NULL),
(797, 'san-pham/', 'thiet-ke-noi-that-tan-co-nha-pho-chi-huong-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NỘI THẤT NHÀ PHỐ CHI HƯƠNG ', 999, 172, '2020-01-14 03:44:43', NULL, NULL, NULL),
(798, 'san-pham/', 'thiet-ke-nha-a-minh-nam-dinh-1.png', b'0', NULL, NULL, '', 'THIẾT KẾ NỘI THẤT NHÀ A MINH - NAM ĐỊNH', 999, 173, '2020-01-14 03:55:49', NULL, NULL, NULL),
(799, 'san-pham/', 'thiet-ke-nha-a-minh-nam-dinh-2.png', b'0', NULL, NULL, '', 'THIẾT KẾ NỘI THẤT NHÀ A MINH - NAM ĐỊNH', 999, 173, '2020-01-14 03:55:49', NULL, NULL, NULL),
(800, 'san-pham/', 'thiet-ke-nha-a-minh-nam-dinh-3.png', b'0', NULL, NULL, '', 'THIẾT KẾ NỘI THẤT NHÀ A MINH - NAM ĐỊNH', 999, 173, '2020-01-14 03:55:49', NULL, NULL, NULL),
(801, 'san-pham/', 'thiet-ke-nha-a-minh-nam-dinh-4.png', b'0', NULL, NULL, '', 'THIẾT KẾ NỘI THẤT NHÀ A MINH - NAM ĐỊNH', 999, 173, '2020-01-14 03:55:49', NULL, NULL, NULL),
(802, 'san-pham/', 'thiet-ke-nha-a-minh-nam-dinh-5.png', b'1', NULL, NULL, '', 'THIẾT KẾ NỘI THẤT NHÀ A MINH - NAM ĐỊNH', 999, 173, '2020-01-14 03:55:49', NULL, NULL, NULL),
(803, 'san-pham/', 'thiet-ke-nha-a-minh-nam-dinh-6.png', b'0', NULL, NULL, '', 'THIẾT KẾ NỘI THẤT NHÀ A MINH - NAM ĐỊNH', 999, 173, '2020-01-14 03:55:49', NULL, NULL, NULL),
(804, 'san-pham/', 'thiet-ke-nha-a-minh-nam-dinh-7.png', b'0', NULL, NULL, '', 'THIẾT KẾ NỘI THẤT NHÀ A MINH - NAM ĐỊNH', 999, 173, '2020-01-14 03:55:49', NULL, NULL, NULL),
(805, 'san-pham/', 'thiet-ke-nha-pho-c-toan-mat-tien.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ ĐẸP CHI TOAN ', 999, 174, '2020-01-15 09:23:18', NULL, NULL, NULL),
(806, 'san-pham/', 'thiet-ke-nha-pho-c-toan-phong-bep-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ ĐẸP CHI TOAN ', 999, 174, '2020-01-15 09:23:18', NULL, NULL, NULL),
(807, 'san-pham/', 'thiet-ke-nha-pho-c-toan-phong-bep.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ ĐẸP CHI TOAN ', 999, 174, '2020-01-15 09:23:18', NULL, NULL, NULL),
(808, 'san-pham/', 'thiet-ke-nha-pho-c-toan-phong-khach.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ ĐẸP CHI TOAN ', 999, 174, '2020-01-15 09:23:18', NULL, NULL, NULL),
(809, 'san-pham/', 'thiet-ke-nha-pho-c-toan-phong-ngu.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ ĐẸP CHI TOAN ', 999, 174, '2020-01-15 09:23:18', NULL, NULL, NULL),
(810, 'san-pham/', 'thiet-ke-mat-bang-cong-nang-nha-pho-tang-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ ĐẸP CHI TOAN', 999, 174, '2020-01-15 09:23:18', NULL, NULL, NULL),
(811, 'san-pham/', 'thiet-ke-nha-pho-a-son-mat-tien-2.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ PHỐ ĐẸP ANH SƠN', 999, 175, '2020-01-15 09:27:48', NULL, NULL, NULL),
(812, 'san-pham/', 'thiet-ke-nha-pho-a-son-mat-tien-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ PHỐ ĐẸP ANH SƠN', 999, 175, '2020-01-15 09:27:48', NULL, NULL, NULL),
(813, 'san-pham/', 'thiet-ke-nha-pho-a-son-mat-tien.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ PHỐ ĐẸP ANH SƠN', 999, 175, '2020-01-15 09:27:48', NULL, NULL, NULL),
(814, 'san-pham/', 'thiet-ke-nha-pho-a-son-phong-bep-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ PHỐ ĐẸP ANH SƠN', 999, 175, '2020-01-15 09:27:48', NULL, NULL, NULL),
(815, 'san-pham/', 'thiet-ke-nha-pho-a-son-phong-bep.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ PHỐ ĐẸP ANH SƠN', 999, 175, '2020-01-15 09:27:48', NULL, NULL, NULL),
(816, 'san-pham/', 'thiet-ke-mat-bang-cong-nang-tang-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ PHỐ ĐẸP ANH SƠN', 999, 175, '2020-01-15 09:27:48', NULL, NULL, NULL),
(817, 'san-pham/', 'thiet-ke-nha-pho-a-chinh-mat-tien-1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ PHỐ CHI CHINH ', 999, 176, '2020-01-15 09:33:28', NULL, NULL, NULL),
(818, 'san-pham/', 'thiet-ke-nha-pho-a-chinh-mat-tien-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ PHỐ CHI CHINH ', 999, 176, '2020-01-15 09:33:28', NULL, NULL, NULL),
(819, 'san-pham/', 'thiet-ke-nha-pho-a-chinh-mat-tien-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ PHỐ CHI CHINH ', 999, 176, '2020-01-15 09:33:28', NULL, NULL, NULL),
(820, 'san-pham/', 'thiet-ke-nha-pho-a-chinh-mat-tien.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ PHỐ CHI CHINH ', 999, 176, '2020-01-15 09:33:28', NULL, NULL, NULL),
(821, 'san-pham/', 'mat-bang-cong-nang-nha-pho-tang-1.png', b'0', NULL, NULL, '', 'THIẾT KẾ KIẾN TRÚC NHÀ PHỐ CHI CHINH ', 999, 176, '2020-01-15 09:33:28', NULL, NULL, NULL),
(822, 'san-pham/', 'thiet-ke-biet-thu-a-bang-mat-tien.png', b'1', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A BẰNG ', 999, 177, '2020-01-17 03:34:35', NULL, NULL, NULL),
(823, 'san-pham/', 'thiet-ke-biet-thu-a-bang-phong-khach.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A BẰNG ', 999, 177, '2020-01-17 03:34:35', NULL, NULL, NULL),
(824, 'san-pham/', 'thiet-ke-biet-thu-a-bang-phong-khach-bep.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A BẰNG ', 999, 177, '2020-01-17 03:34:35', NULL, NULL, NULL),
(825, 'san-pham/', '71753658_2516475108641601_8211079405175308288_o.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A BẰNG ', 999, 177, '2020-01-17 03:34:35', NULL, NULL, NULL),
(826, 'san-pham/', 'thiet-ke-biet-thu-a-bang-phong-khach-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A BẰNG ', 999, 177, '2020-01-17 03:34:35', NULL, NULL, NULL),
(827, 'san-pham/', 'thiet-ke-biet-thue.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A BÌNH', 999, 178, '2020-01-17 03:42:35', NULL, NULL, NULL),
(828, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-binh.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A BÌNH', 999, 178, '2020-01-17 03:42:35', NULL, NULL, NULL),
(829, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-binh-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A BÌNH', 999, 178, '2020-01-17 03:42:35', NULL, NULL, NULL),
(830, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-binh-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A BÌNH', 999, 178, '2020-01-17 03:42:35', NULL, NULL, NULL),
(831, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-binh-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A BÌNH', 999, 178, '2020-01-17 03:42:35', NULL, NULL, NULL),
(832, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-duc.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A ĐỨC', 1, 179, '2020-01-17 03:48:52', NULL, NULL, NULL),
(833, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-duc-phong-khach.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A ĐỨC', 999, 179, '2020-01-17 03:48:52', NULL, NULL, NULL),
(834, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-duc-phong-khach-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A ĐỨC', 999, 179, '2020-01-17 03:48:52', NULL, NULL, NULL),
(835, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-duc-phong-bep.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A ĐỨC', 999, 179, '2020-01-17 03:48:52', NULL, NULL, NULL),
(836, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-duc-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A ĐỨC', 2, 179, '2020-01-17 03:48:52', NULL, NULL, NULL),
(837, 'san-pham/', 'thiet-ke-biet-thu-hai-phong-ngu.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A ĐỨC', 999, 179, '2020-01-17 03:48:52', NULL, NULL, NULL),
(838, 'san-pham/', 'thiet-ke-biet-thu-hai-phong-ngu-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG A ĐỨC', 999, 179, '2020-01-17 03:48:52', NULL, NULL, NULL),
(839, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-khang_(1).jpg', b'1', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG NHÀ A KHANG ', 999, 180, '2020-01-17 03:58:19', NULL, NULL, NULL),
(840, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-khang-3_(1).jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG NHÀ A KHANG ', 999, 180, '2020-01-17 03:58:19', NULL, NULL, NULL),
(841, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-khang-2_(1).jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG NHÀ A KHANG ', 999, 180, '2020-01-17 03:58:19', NULL, NULL, NULL),
(842, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-khang-1_(1).jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG NHÀ A KHANG ', 999, 180, '2020-01-17 03:58:19', NULL, NULL, NULL),
(843, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-khang-mat-sau_(1).jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG NHÀ A KHANG ', 999, 180, '2020-01-17 03:58:19', NULL, NULL, NULL),
(844, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-kien.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ HAI TẦNG A KIÊN', 999, 181, '2020-01-17 04:03:22', NULL, NULL, NULL),
(845, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-kien-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ HAI TẦNG A KIÊN', 999, 181, '2020-01-17 04:03:22', NULL, NULL, NULL),
(846, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-kien-11.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ HAI TẦNG A KIÊN', 999, 181, '2020-01-17 04:03:22', NULL, NULL, NULL),
(847, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-binh-31.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ HAI TẦNG A KIÊN', 999, 181, '2020-01-17 04:03:22', NULL, NULL, NULL),
(848, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-binh-51.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ HAI TẦNG A KIÊN', 999, 181, '2020-01-17 04:03:22', NULL, NULL, NULL),
(849, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-ngoc.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ NHÀ A NGỌC ', 999, 182, '2020-01-17 04:11:00', NULL, NULL, NULL),
(850, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-ngoc-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ NHÀ A NGỌC ', 999, 182, '2020-01-17 04:11:00', NULL, NULL, NULL),
(851, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-ngoc-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ NHÀ A NGỌC ', 999, 182, '2020-01-17 04:11:00', NULL, NULL, NULL),
(852, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-phuc.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ HAI TẦNG A PHÚC', 999, 183, '2020-01-17 04:17:05', NULL, NULL, NULL),
(853, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-phuc-1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ HAI TẦNG A PHÚC', 999, 183, '2020-01-17 04:17:05', NULL, NULL, NULL),
(854, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-phuc-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ HAI TẦNG A PHÚC', 999, 183, '2020-01-17 04:17:05', NULL, NULL, NULL),
(855, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-phuc-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ HAI TẦNG A PHÚC', 999, 183, '2020-01-17 04:17:05', NULL, NULL, NULL);
INSERT INTO `imageproducts` (`ImageProductsID`, `ImagePreset`, `ImageURL`, `IsMainImage`, `Title`, `Description`, `AltText`, `TitleText`, `Orders`, `ProductsID`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(856, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-phuc-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ HAI TẦNG A PHÚC', 999, 183, '2020-01-17 04:17:05', NULL, NULL, NULL),
(857, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-chi-ninh.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NINH ', 1, 184, '2020-01-17 14:57:19', NULL, NULL, NULL),
(858, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-chi-ninh-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NINH ', 999, 184, '2020-01-17 14:57:19', NULL, NULL, NULL),
(859, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-chi-ninh-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NINH ', 999, 184, '2020-01-17 14:57:19', NULL, NULL, NULL),
(860, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-chi-ninh-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NINH ', 999, 184, '2020-01-17 14:57:19', NULL, NULL, NULL),
(861, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-chi-ninh-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NINH ', 999, 184, '2020-01-17 14:57:19', NULL, NULL, NULL),
(862, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-chi-ninh-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NINH ', 999, 184, '2020-01-17 14:57:19', NULL, NULL, NULL),
(863, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-chi-ninh-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NINH ', 999, 184, '2020-01-17 14:57:19', NULL, NULL, NULL),
(864, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-chi-ninh-8.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NINH ', 2, 184, '2020-01-17 14:57:19', NULL, NULL, NULL),
(865, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-chi-ninh-7.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NINH ', 3, 184, '2020-01-17 14:57:19', NULL, NULL, NULL),
(866, 'san-pham/', 'thiet-ke-biet-thu-nha-chi-hoa7.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ C MẠC', 999, 185, '2020-01-17 15:05:20', NULL, NULL, NULL),
(867, 'san-pham/', 'thiet-ke-biet-thu-nha-chi-hoa-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ C MẠC', 999, 185, '2020-01-17 15:05:20', NULL, NULL, NULL),
(868, 'san-pham/', 'thiet-ke-biet-thu-nha-chi-hoa-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ C MẠC', 999, 185, '2020-01-17 15:05:20', NULL, NULL, NULL),
(869, 'san-pham/', 'thiet-ke-biet-thu-nha-chi-hoa.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ C MẠC', 999, 185, '2020-01-17 15:05:20', NULL, NULL, NULL),
(870, 'san-pham/', 'thiet-ke-biet-thu-nha-chi-hoa-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ C MẠC', 999, 185, '2020-01-17 15:05:20', NULL, NULL, NULL),
(871, 'san-pham/', 'thiet-ke-biet-thu-nha-chi-hoa-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ C MẠC', 999, 185, '2020-01-17 15:05:20', NULL, NULL, NULL),
(872, 'san-pham/', 'thiet-ke-biet-thu-nha-chi-hoa-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ C MẠC', 999, 185, '2020-01-17 15:05:20', NULL, NULL, NULL),
(873, 'san-pham/', 'thiet-ke-biet-thu-nha-chi-hoa-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ C MẠC', 999, 185, '2020-01-17 15:05:20', NULL, NULL, NULL),
(874, 'san-pham/', 'thiet-ke-nha-pho-c-hoa.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH CHỊ HOÀ', 999, 186, '2020-01-17 15:14:52', NULL, NULL, NULL),
(875, 'san-pham/', 'thiet-ke-nha-pho-c-hoa-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH CHỊ HOÀ', 999, 186, '2020-01-17 15:14:52', NULL, NULL, NULL),
(876, 'san-pham/', 'thiet-ke-nha-pho-c-hoa-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH CHỊ HOÀ', 999, 186, '2020-01-17 15:14:52', NULL, NULL, NULL),
(877, 'san-pham/', 'thiet-ke-nha-pho-c-hoa-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH CHỊ HOÀ', 999, 186, '2020-01-17 15:14:52', NULL, NULL, NULL),
(878, 'san-pham/', 'thiet-ke-nha-pho-c-hoa-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH CHỊ HOÀ', 999, 186, '2020-01-17 15:14:52', NULL, NULL, NULL),
(879, 'san-pham/', 'thiet-ke-nha-pho-c-hoa-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH CHỊ HOÀ', 999, 186, '2020-01-17 15:14:52', NULL, NULL, NULL),
(880, 'san-pham/', 'thiet-ke-nha-pho-c-hoa-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH CHỊ HOÀ', 999, 186, '2020-01-17 15:14:52', NULL, NULL, NULL),
(881, 'san-pham/', 'thiet-ke-nha-pho-c-hoa-7.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH CHỊ HOÀ', 999, 186, '2020-01-17 15:14:52', NULL, NULL, NULL),
(882, 'san-pham/', 'thiet-ke-biet-thu-c-chinh-61.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ BIỆT THƯ NHÀ CHI CHINH - NAM ĐỊNH ', 999, 187, '2020-01-17 15:27:26', NULL, NULL, NULL),
(883, 'san-pham/', 'thiet-ke-biet-thu-c-chinh-41.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THƯ NHÀ CHI CHINH - NAM ĐỊNH ', 999, 187, '2020-01-17 15:27:26', NULL, NULL, NULL),
(884, 'san-pham/', 'thiet-ke-biet-thu-c-chinh1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THƯ NHÀ CHI CHINH - NAM ĐỊNH ', 999, 187, '2020-01-17 15:27:26', NULL, NULL, NULL),
(885, 'san-pham/', 'thiet-ke-biet-thu-c-chinh-42.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THƯ NHÀ CHI CHINH - NAM ĐỊNH ', 999, 187, '2020-01-17 15:27:26', NULL, NULL, NULL),
(886, 'san-pham/', 'thiet-ke-biet-thu-c-chinh-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THƯ NHÀ CHI CHINH - NAM ĐỊNH ', 999, 187, '2020-01-17 15:27:26', NULL, NULL, NULL),
(887, 'san-pham/', 'thiet-ke-biet-thu-c-chinh-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THƯ NHÀ CHI CHINH - NAM ĐỊNH ', 999, 187, '2020-01-17 15:27:26', NULL, NULL, NULL),
(888, 'san-pham/', 'thiet-ke-biet-thu-c-chinh-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THƯ NHÀ CHI CHINH - NAM ĐỊNH ', 999, 187, '2020-01-17 15:27:26', NULL, NULL, NULL),
(889, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-trong-2.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A TRỌNG THÁI BÌNH', 999, 188, '2020-01-17 15:33:13', NULL, NULL, NULL),
(890, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-trong-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A TRỌNG THÁI BÌNH', 999, 188, '2020-01-17 15:33:13', NULL, NULL, NULL),
(891, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-trong.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A TRỌNG THÁI BÌNH', 999, 188, '2020-01-17 15:33:13', NULL, NULL, NULL),
(892, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-tien.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ  A TIẾN', 999, 189, '2020-01-17 15:39:42', NULL, NULL, NULL),
(893, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-tien-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ  A TIẾN', 999, 189, '2020-01-17 15:39:42', NULL, NULL, NULL),
(894, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-tien-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ  A TIẾN', 999, 189, '2020-01-17 15:39:42', NULL, NULL, NULL),
(895, 'san-pham/', 'thiet-ke-nha-pho-a-thanh.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A THÀNH BẮC GIANG ', 999, 190, '2020-01-17 15:45:32', NULL, NULL, NULL),
(896, 'san-pham/', 'thiet-ke-nha-pho-a-thanh-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A THÀNH BẮC GIANG ', 999, 190, '2020-01-17 15:45:32', NULL, NULL, NULL),
(897, 'san-pham/', 'thiet-ke-nha-pho-a-thanh-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A THÀNH BẮC GIANG ', 999, 190, '2020-01-17 15:45:32', NULL, NULL, NULL),
(898, 'san-pham/', 'thiet-ke-nha-pho-a-thanh-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A THÀNH BẮC GIANG ', 999, 190, '2020-01-17 15:45:32', NULL, NULL, NULL),
(899, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-phuc1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A PHÚC NINH BÌNH', 999, 191, '2020-01-17 15:52:29', NULL, NULL, NULL),
(900, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-phuc-11.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A PHÚC NINH BÌNH', 999, 191, '2020-01-17 15:52:29', NULL, NULL, NULL),
(901, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-phuc-21.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A PHÚC NINH BÌNH', 999, 191, '2020-01-17 15:52:29', NULL, NULL, NULL),
(902, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-phuc-31.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A PHÚC NINH BÌNH', 999, 191, '2020-01-17 15:52:29', NULL, NULL, NULL),
(903, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-phuc-41.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A PHÚC NINH BÌNH', 999, 191, '2020-01-17 15:52:29', NULL, NULL, NULL),
(904, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-ngoc1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ THI CÔNG BIỆT THƯ A NGỌC ', 999, 192, '2020-01-17 15:56:31', NULL, NULL, NULL),
(905, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-ngoc-11.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ THI CÔNG BIỆT THƯ A NGỌC ', 999, 192, '2020-01-17 15:56:31', NULL, NULL, NULL),
(906, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-ngoc-21.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ THI CÔNG BIỆT THƯ A NGỌC ', 999, 192, '2020-01-17 15:56:31', NULL, NULL, NULL),
(907, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-kien1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ THI CÔNG BIỆT THỰ ANH KIÊN ', 999, 193, '2020-01-17 16:04:54', NULL, NULL, NULL),
(908, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-kien-12.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ THI CÔNG BIỆT THỰ ANH KIÊN ', 999, 193, '2020-01-17 16:04:54', NULL, NULL, NULL),
(909, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-kien-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ THI CÔNG BIỆT THỰ ANH KIÊN ', 999, 193, '2020-01-17 16:04:54', NULL, NULL, NULL),
(910, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-khang-3_(1)1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A KHANG ', 999, 194, '2020-01-17 16:09:27', NULL, NULL, NULL),
(911, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-khang_(1)1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A KHANG ', 999, 194, '2020-01-17 16:09:27', NULL, NULL, NULL),
(912, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-khang-1_(1)1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A KHANG ', 999, 194, '2020-01-17 16:09:27', NULL, NULL, NULL),
(913, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-khang-2_(1)1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A KHANG ', 999, 194, '2020-01-17 16:09:27', NULL, NULL, NULL),
(914, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-khang-mat-sau_(1)1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ BIỆT THỰ A KHANG ', 999, 194, '2020-01-17 16:09:27', NULL, NULL, NULL),
(915, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-duc1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A ĐỨC', 999, 195, '2020-01-17 16:15:04', NULL, NULL, NULL),
(916, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-duc-11.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A ĐỨC', 999, 195, '2020-01-17 16:15:04', NULL, NULL, NULL),
(917, 'san-pham/', 'thiet-ke-biet-thu-hai-phong-ngu-11.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A ĐỨC', 999, 195, '2020-01-17 16:15:04', NULL, NULL, NULL),
(918, 'san-pham/', 'thiet-ke-biet-thu-hai-phong-ngu1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A ĐỨC', 999, 195, '2020-01-17 16:15:04', NULL, NULL, NULL),
(919, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-duc-phong-bep1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A ĐỨC', 999, 195, '2020-01-17 16:15:04', NULL, NULL, NULL),
(920, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-duc-phong-khach-11.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A ĐỨC', 999, 195, '2020-01-17 16:15:04', NULL, NULL, NULL),
(921, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-duc-phong-khach1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A ĐỨC', 999, 195, '2020-01-17 16:15:04', NULL, NULL, NULL),
(922, 'san-pham/', 'thiet-ke-biet-thue1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ THI CÔNG BIỆT THỰ A BÌNH ', 999, 196, '2020-01-17 16:19:23', NULL, NULL, NULL),
(923, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-binh1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ THI CÔNG BIỆT THỰ A BÌNH ', 999, 196, '2020-01-17 16:19:23', NULL, NULL, NULL),
(924, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-binh-52.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ THI CÔNG BIỆT THỰ A BÌNH ', 999, 196, '2020-01-17 16:19:23', NULL, NULL, NULL),
(925, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-binh-41.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ THI CÔNG BIỆT THỰ A BÌNH ', 999, 196, '2020-01-17 16:19:23', NULL, NULL, NULL),
(926, 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-binh-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ THI CÔNG BIỆT THỰ A BÌNH ', 999, 196, '2020-01-17 16:19:23', NULL, NULL, NULL),
(927, 'san-pham/', 'thiet-ke-biet-thu-a-bang-mat-tien1.png', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A BẰNG', 999, 197, '2020-01-17 16:31:06', NULL, NULL, NULL),
(928, 'san-pham/', 'thiet-ke-biet-thu-a-bang-phong-khach-11.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A BẰNG', 999, 197, '2020-01-17 16:31:06', NULL, NULL, NULL),
(929, 'san-pham/', 'thiet-ke-biet-thu-a-bang-phong-khach-bep-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A BẰNG', 999, 197, '2020-01-17 16:31:06', NULL, NULL, NULL),
(930, 'san-pham/', 'thiet-ke-biet-thu-a-bang-phong-khach-bep1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A BẰNG', 999, 197, '2020-01-17 16:31:06', NULL, NULL, NULL),
(931, 'san-pham/', 'thiet-ke-biet-thu-a-bang-phong-khach1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A BẰNG', 999, 197, '2020-01-17 16:31:06', NULL, NULL, NULL),
(932, 'san-pham/', 'thiet-ke-nha-pho-c-toan-mat-tien1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ THI CÔNG NHÀ PHỐ CHỊ TOAN', 999, 198, '2020-01-17 16:52:37', NULL, NULL, NULL),
(933, 'san-pham/', 'thiet-ke-nha-pho-c-toan-phong-ngu1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ THI CÔNG NHÀ PHỐ CHỊ TOAN', 999, 198, '2020-01-17 16:52:37', NULL, NULL, NULL),
(934, 'san-pham/', 'thiet-ke-nha-pho-c-toan-phong-khach1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ THI CÔNG NHÀ PHỐ CHỊ TOAN', 999, 198, '2020-01-17 16:52:37', NULL, NULL, NULL),
(935, 'san-pham/', 'thiet-ke-nha-pho-c-toan-phong-bep1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ THI CÔNG NHÀ PHỐ CHỊ TOAN', 999, 198, '2020-01-17 16:52:37', NULL, NULL, NULL),
(936, 'san-pham/', 'thiet-ke-nha-pho-c-toan-phong-bep-11.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ THI CÔNG NHÀ PHỐ CHỊ TOAN', 999, 198, '2020-01-17 16:52:37', NULL, NULL, NULL),
(937, 'san-pham/', 'thiet-ke-nha-pho-a-son-mat-tien-11.jpg', b'1', NULL, NULL, '', 'CÔNG TRÌNH THIẾT KẾ NHÀ PHỐ A SƠN', 999, 199, '2020-01-17 16:57:19', NULL, NULL, NULL),
(938, 'san-pham/', 'thiet-ke-nha-pho-a-son-mat-tien-12.jpg', b'0', NULL, NULL, '', 'CÔNG TRÌNH THIẾT KẾ NHÀ PHỐ A SƠN', 999, 199, '2020-01-17 16:57:19', NULL, NULL, NULL),
(939, 'san-pham/', 'thiet-ke-nha-pho-a-son-mat-tien1.jpg', b'0', NULL, NULL, '', 'CÔNG TRÌNH THIẾT KẾ NHÀ PHỐ A SƠN', 999, 199, '2020-01-17 16:57:19', NULL, NULL, NULL),
(940, 'san-pham/', 'thiet-ke-nha-pho-a-son-phong-bep-11.jpg', b'0', NULL, NULL, '', 'CÔNG TRÌNH THIẾT KẾ NHÀ PHỐ A SƠN', 999, 199, '2020-01-17 16:57:19', NULL, NULL, NULL),
(941, 'san-pham/', 'thiet-ke-nha-pho-a-son-phong-bep1.jpg', b'0', NULL, NULL, '', 'CÔNG TRÌNH THIẾT KẾ NHÀ PHỐ A SƠN', 999, 199, '2020-01-17 16:57:19', NULL, NULL, NULL),
(942, 'san-pham/', 'thiet-ke-nha-pho-a-chinh-mat-tien-11.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A CHÍNH ', 999, 200, '2020-01-18 03:20:59', NULL, NULL, NULL),
(943, 'san-pham/', 'thiet-ke-nha-pho-a-chinh-mat-tien1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A CHÍNH ', 999, 200, '2020-01-18 03:20:59', NULL, NULL, NULL),
(944, 'san-pham/', 'thiet-ke-nha-pho-a-chinh-mat-tien-21.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A CHÍNH ', 999, 200, '2020-01-18 03:20:59', NULL, NULL, NULL),
(945, 'san-pham/', 'thiet-ke-nha-pho-a-chinh-mat-tien-31.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A CHÍNH ', 999, 200, '2020-01-18 03:20:59', NULL, NULL, NULL),
(946, 'san-pham/', 'thiet-ke-nha-pho-a-tiep-mat-tien.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TIẾP ', 999, 201, '2020-01-18 03:24:02', NULL, NULL, NULL),
(947, 'san-pham/', 'thiet-ke-nha-pho-a-tiep-phong-ngu.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TIẾP ', 999, 201, '2020-01-18 03:24:02', NULL, NULL, NULL),
(948, 'san-pham/', 'thiet-ke-nha-pho-a-tiep-phong-ngu-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TIẾP ', 999, 201, '2020-01-18 03:24:02', NULL, NULL, NULL),
(949, 'san-pham/', 'thiet-ke-mat-bang-cong-nang-tang-21.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TIẾP ', 999, 201, '2020-01-18 03:24:02', NULL, NULL, NULL),
(950, 'san-pham/', 'mat-bang-nha-ong-2-tang-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TIẾP ', 999, 201, '2020-01-18 03:24:02', NULL, NULL, NULL),
(951, 'san-pham/', 'thiet-ke-nha-pho-a-dong.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ CHỊ PHƯỢNG ', 999, 202, '2020-01-18 03:28:05', NULL, NULL, NULL),
(952, 'san-pham/', 'thiet-ke-nha-pho-a-dong-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ CHỊ PHƯỢNG ', 999, 202, '2020-01-18 03:28:05', NULL, NULL, NULL),
(953, 'san-pham/', 'thiet-ke-nha-pho-a-phuc-mat-tien.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ A PHÚC THÁI BÌNH ', 999, 203, '2020-01-18 03:31:26', NULL, NULL, NULL),
(954, 'san-pham/', 'thiet-ke-nha-pho-a-phuc.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ A PHÚC THÁI BÌNH ', 999, 203, '2020-01-18 03:31:26', NULL, NULL, NULL),
(955, 'san-pham/', 'thiet-ke-nha-pho-a-phuc-phong-ngu.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ A PHÚC THÁI BÌNH ', 999, 203, '2020-01-18 03:31:26', NULL, NULL, NULL),
(956, 'san-pham/', 'thiet-ke-nha-pho-a-duc-mat-tien.png', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A ĐỨC - NAM ĐỊNH', 999, 204, '2020-01-18 03:35:21', NULL, NULL, NULL),
(957, 'san-pham/', 'thiet-ke-nha-pho-a-duc-mat-tien-2.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A ĐỨC - NAM ĐỊNH', 999, 204, '2020-01-18 03:35:21', NULL, NULL, NULL),
(958, 'san-pham/', 'thiet-ke-nha-pho-a-duc-mat-tien-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A ĐỨC - NAM ĐỊNH', 999, 204, '2020-01-18 03:35:21', NULL, NULL, NULL),
(959, 'san-pham/', 'thiet-ke-nha-pho-a-hung.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH A HÙNG', 999, 205, '2020-01-18 03:41:02', NULL, NULL, NULL),
(960, 'san-pham/', 'thiet-ke-nha-pho-a-hung-mat-tien-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH A HÙNG', 999, 205, '2020-01-18 03:41:02', NULL, NULL, NULL),
(961, 'san-pham/', 'thiet-ke-nha-pho-a-hung-mat-tien-2.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH A HÙNG', 999, 205, '2020-01-18 03:41:02', NULL, NULL, NULL),
(962, 'san-pham/', 'thiet-ke-nha-pho-chi-diep-mat-tien.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ CHỊ DIỆP', 999, 206, '2020-01-18 03:45:16', NULL, NULL, NULL),
(963, 'san-pham/', 'thiet-ke-nha-pho-chi-diep-mat-tien-1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ CHỊ DIỆP', 999, 206, '2020-01-18 03:45:16', NULL, NULL, NULL),
(964, 'san-pham/', 'thiet-ke-nha-pho-a-bien-mat-tien.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BIÊN ', 999, 207, '2020-01-18 03:49:01', NULL, NULL, NULL),
(965, 'san-pham/', 'thiet-ke-nha-pho-a-bien-mat-tien-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BIÊN ', 999, 207, '2020-01-18 03:49:01', NULL, NULL, NULL),
(966, 'san-pham/', 'thiet-ke-nha-pho-a-bien-mat-tien-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BIÊN ', 999, 207, '2020-01-18 03:49:01', NULL, NULL, NULL),
(967, 'san-pham/', 'thiet-ke-nha-mat-pho-c-nhung-mat-tien-1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ CHỊ HƯƠNG Ý YÊN', 999, 208, '2020-01-18 03:54:35', NULL, NULL, NULL),
(968, 'san-pham/', 'thiet-ke-nha-mat-pho-c-nhung-mat-tien-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ CHỊ HƯƠNG Ý YÊN', 999, 208, '2020-01-18 03:54:35', NULL, NULL, NULL),
(969, 'san-pham/', 'thiet-ke-nha-mat-pho-c-nhung-mat-tien.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ CHỊ HƯƠNG Ý YÊN', 999, 208, '2020-01-18 03:54:35', NULL, NULL, NULL),
(970, 'san-pham/', 'thiet-ke-nha-mat-pho-c-nhung-phong-khach-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ CHỊ HƯƠNG Ý YÊN', 999, 208, '2020-01-18 03:54:35', NULL, NULL, NULL),
(971, 'san-pham/', 'thiet-ke-nha-mat-pho-c-nhung-phong-khach.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ CHỊ HƯƠNG Ý YÊN', 999, 208, '2020-01-18 03:54:35', NULL, NULL, NULL),
(972, 'san-pham/', 'thiet-ke-nha-mat-pho-c-nhung-phong-ngu-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ CHỊ HƯƠNG Ý YÊN', 999, 208, '2020-01-18 03:54:35', NULL, NULL, NULL),
(973, 'san-pham/', 'thiet-ke-nha-mat-pho-c-nhung-phong-ngu.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ CHỊ HƯƠNG Ý YÊN', 999, 208, '2020-01-18 03:54:35', NULL, NULL, NULL),
(974, 'san-pham/', 'thiet-ke-nha-pho-a-ban-mat-tien.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BAN ', 999, 209, '2020-01-18 04:09:01', NULL, NULL, NULL),
(975, 'san-pham/', 'thiet-ke-nha-pho-a-ban-mat-tien-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BAN ', 999, 209, '2020-01-18 04:09:01', NULL, NULL, NULL),
(976, 'san-pham/', 'thiet-ke-nha-pho-a-ban-mat-tien-1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BAN ', 999, 209, '2020-01-18 04:09:01', NULL, NULL, NULL),
(977, 'san-pham/', 'thiet-ke-nha-pho-a-ban-mat-bang-tang-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BAN ', 999, 209, '2020-01-18 04:09:01', NULL, NULL, NULL),
(978, 'san-pham/', 'thiet-ke-nha-pho-a-ban-mat-bang-tang-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BAN ', 999, 209, '2020-01-18 04:09:01', NULL, NULL, NULL),
(979, 'san-pham/', 'thiet-ke-nha-pho-a-ban-mat-bang-tang-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BAN ', 999, 209, '2020-01-18 04:09:01', NULL, NULL, NULL),
(980, 'san-pham/', 'thiet-ke-nha-pho-a-tinh-mat-tien.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔN TRÌNH NHÀ PHỐ A TỈNH ', 2, 210, '2020-01-18 04:20:37', NULL, NULL, NULL),
(981, 'san-pham/', 'thiet-ke-nha-pho-a-tinh-phong-khach.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH NHÀ PHỐ A TỈNH ', 3, 210, '2020-01-18 04:20:37', NULL, NULL, NULL),
(982, 'san-pham/', 'thiet-ke-nha-pho-a-ban-mat-tien1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH NHÀ PHỐ A TỈNH', 1, 210, '2020-01-18 04:20:37', NULL, NULL, NULL),
(983, 'san-pham/', 'thiet-ke-nha-pho-a-tinh-phong-ngu.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH NHÀ PHỐ A TỈNH', 4, 210, '2020-01-18 04:20:37', NULL, NULL, NULL),
(984, 'san-pham/', 'thiet-ke-nha-pho-a-tinh-phong-tam.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH NHÀ PHỐ A TỈNH', 5, 210, '2020-01-18 04:20:37', NULL, NULL, NULL),
(985, 'san-pham/', 'thiet-ke-nha-pho-a-tinh-mat-cong-nang-tang-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH NHÀ PHỐ A TỈNH', 999, 210, '2020-01-18 04:20:37', NULL, NULL, NULL),
(986, 'san-pham/', 'thiet-ke-nha-pho-a-tinh-mat-cong-nang-tang-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH NHÀ PHỐ A TỈNH', 999, 210, '2020-01-18 04:20:37', NULL, NULL, NULL),
(987, 'san-pham/', 'thiet-ke-nha-pho-a-tinh-mat-cong-nang-tum.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH NHÀ PHỐ A TỈNH', 999, 210, '2020-01-18 04:20:37', NULL, NULL, NULL),
(988, 'san-pham/', 'thiet-ke-nha-pho-a-hoang-phong-mat-tien.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ ĐẸP A HOÀNG ', 999, 211, '2020-01-18 04:38:55', NULL, NULL, NULL),
(989, 'san-pham/', 'thiet-ke-nha-pho-a-hoang-phong-khach.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ ĐẸP A HOÀNG ', 999, 211, '2020-01-18 04:38:55', NULL, NULL, NULL),
(990, 'san-pham/', 'thiet-ke-nha-pho-a-hoang-phong-khach-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ ĐẸP A HOÀNG ', 999, 211, '2020-01-18 04:38:55', NULL, NULL, NULL),
(991, 'san-pham/', 'thiet-ke-nha-pho-a-hoang-phong-khach-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ ĐẸP A HOÀNG ', 999, 211, '2020-01-18 04:38:55', NULL, NULL, NULL),
(992, 'san-pham/', 'thiet-ke-nha-pho-a-hoang-mat-bang-cong-nag-tang-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ NHÀ PHỐ ĐẸP A HOÀNG ', 999, 211, '2020-01-18 04:38:55', NULL, NULL, NULL),
(993, 'san-pham/', 'thiet-ke-nha-pho-a-toan.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TOAN ', 999, 212, '2020-01-18 04:44:50', NULL, NULL, NULL),
(994, 'san-pham/', 'thiet-ke-nha-pho-a-toan-ngo.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TOAN ', 999, 212, '2020-01-18 04:44:50', NULL, NULL, NULL),
(995, 'san-pham/', 'thiet-ke-nha-pho-a-toan-phong-bep-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TOAN ', 999, 212, '2020-01-18 04:44:50', NULL, NULL, NULL),
(996, 'san-pham/', 'thiet-ke-nha-pho-a-toan-phong-khach.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TOAN ', 999, 212, '2020-01-18 04:44:50', NULL, NULL, NULL),
(997, 'san-pham/', 'thiet-ke-nha-pho-a-toan-phong-tam.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TOAN ', 999, 212, '2020-01-18 04:44:50', NULL, NULL, NULL),
(998, 'san-pham/', 'thiet-ke-nha-pho-a-truong-mat-tien-1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ ĐẸP A TRƯỜNG ', 999, 213, '2020-01-18 07:28:34', NULL, NULL, NULL),
(999, 'san-pham/', 'thiet-ke-nha-pho-a-truong-mat-tien.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ ĐẸP A TRƯỜNG ', 999, 213, '2020-01-18 07:28:34', NULL, NULL, NULL),
(1000, 'san-pham/', 'thiet-ke-nha-pho-a-truong-phong-bep-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ ĐẸP A TRƯỜNG ', 999, 213, '2020-01-18 07:28:34', NULL, NULL, NULL),
(1001, 'san-pham/', 'thiet-ke-nha-pho-a-truong-phong-bep.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ ĐẸP A TRƯỜNG ', 999, 213, '2020-01-18 07:28:34', NULL, NULL, NULL),
(1002, 'san-pham/', 'thiet-ke-nha-pho-a-truong-phong-khach-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ ĐẸP A TRƯỜNG ', 999, 213, '2020-01-18 07:28:34', NULL, NULL, NULL),
(1003, 'san-pham/', 'thiet-ke-nha-pho-a-truong-phong-khach-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ ĐẸP A TRƯỜNG ', 999, 213, '2020-01-18 07:28:34', NULL, NULL, NULL),
(1004, 'san-pham/', 'thiet-ke-nha-pho-a-truong-phong-khach.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ ĐẸP A TRƯỜNG ', 999, 213, '2020-01-18 07:28:34', NULL, NULL, NULL),
(1005, 'san-pham/', 'thiet-ke-nha-pho-a-sy-mat-tien-3.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A SỸ', 999, 214, '2020-01-18 07:35:17', NULL, NULL, NULL),
(1006, 'san-pham/', 'thiet-ke-nha-pho-a-sy-mat-tien-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A SỸ', 999, 214, '2020-01-18 07:35:17', NULL, NULL, NULL),
(1007, 'san-pham/', 'thiet-ke-nha-pho-a-sy-mat-tien-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A SỸ', 999, 214, '2020-01-18 07:35:17', NULL, NULL, NULL),
(1008, 'san-pham/', 'thiet-ke-nha-pho-a-sy-mat-bang-tang-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A SỸ', 999, 214, '2020-01-18 07:35:17', NULL, NULL, NULL),
(1009, 'san-pham/', 'thiet-ke-nha-pho-a-sy-mat-bang-tang-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A SỸ', 999, 214, '2020-01-18 07:35:17', NULL, NULL, NULL),
(1010, 'san-pham/', 'thiet-ke-nha-pho-a-sy-mat-bang-tang-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A SỸ', 999, 214, '2020-01-18 07:35:17', NULL, NULL, NULL),
(1011, 'san-pham/', 'thie-ke-nha-pho-mat-tien.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A TÙNG ', 999, 215, '2020-01-18 07:39:23', NULL, NULL, NULL),
(1012, 'san-pham/', 'thie-ke-nha-pho-a-tung.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A TÙNG ', 999, 215, '2020-01-18 07:39:23', NULL, NULL, NULL),
(1013, 'san-pham/', 'thie-ke-nha-pho-mat-bang-tang-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A TÙNG ', 999, 215, '2020-01-18 07:39:23', NULL, NULL, NULL),
(1014, 'san-pham/', 'thie-ke-nha-pho-mat-bang-tang-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A TÙNG ', 999, 215, '2020-01-18 07:39:23', NULL, NULL, NULL),
(1015, 'san-pham/', 'thiet-ke-nha-pho-a-chien-mat-tien.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A CHIẾN', 999, 216, '2020-01-18 07:44:57', NULL, NULL, NULL),
(1016, 'san-pham/', 'thiet-ke-nha-pho-a-chien-mat-tien-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A CHIẾN', 999, 216, '2020-01-18 07:44:57', NULL, NULL, NULL),
(1017, 'san-pham/', 'thiet-ke-nha-pho-a-chien-mat-bang-tang-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A CHIẾN', 999, 216, '2020-01-18 07:44:57', NULL, NULL, NULL),
(1018, 'san-pham/', 'thiet-ke-nha-pho-a-chien-phong-khach.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A CHIẾN', 999, 216, '2020-01-18 07:44:57', NULL, NULL, NULL),
(1019, 'san-pham/', 'thiet-ke-nha-pho-a-chien-phong-ngu.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A CHIẾN', 999, 216, '2020-01-18 07:44:57', NULL, NULL, NULL),
(1020, 'san-pham/', 'thiet-ke-nha-pho-a-thien-mat-tien.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A THIỆN ', 999, 217, '2020-01-18 07:52:56', NULL, NULL, NULL),
(1021, 'san-pham/', 'thiet-ke-nha-pho-a-thien-mat-tien-full.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A THIỆN ', 999, 217, '2020-01-18 07:52:56', NULL, NULL, NULL),
(1022, 'san-pham/', 'thiet-ke-nha-pho-a-thien-phong-ngu.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A THIỆN ', 999, 217, '2020-01-18 07:52:56', NULL, NULL, NULL),
(1023, 'san-pham/', 'thiet-ke-nha-pho-a-thien-mat-bang-tang-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A THIỆN ', 999, 217, '2020-01-18 07:52:56', NULL, NULL, NULL),
(1024, 'san-pham/', 'thiet-ke-nha-pho-a-thien-mat-bang-tang-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A THIỆN ', 999, 217, '2020-01-18 07:52:56', NULL, NULL, NULL),
(1025, 'san-pham/', 'thiet-ke-noi-that-a-bien-phong-khach.png', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A BIÊN', 999, 218, '2020-01-22 15:03:44', NULL, NULL, NULL),
(1026, 'san-pham/', 'thiet-ke-noi-that-a-bien-phong-khach-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A BIÊN', 999, 218, '2020-01-22 15:03:44', NULL, NULL, NULL),
(1027, 'san-pham/', 'thiet-ke-noi-that-a-bien.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A BIÊN', 999, 218, '2020-01-22 15:03:44', NULL, NULL, NULL),
(1028, 'san-pham/', 'thiet-ke-phong-bep-a-bien.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A BIÊN', 999, 218, '2020-01-22 15:03:44', NULL, NULL, NULL),
(1029, 'san-pham/', 'thiet-ke-noi-that-phong-ngu-a-bien.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A BIÊN', 999, 218, '2020-01-22 15:03:44', NULL, NULL, NULL),
(1030, 'san-pham/', 'thiet-ke-noi-that-a-bien-phong-ngu.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A BIÊN', 999, 218, '2020-01-22 15:03:44', NULL, NULL, NULL),
(1031, 'san-pham/', 'thiet-ke-noi-that-a-bien-phong-ngu-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A BIÊN', 999, 218, '2020-01-22 15:03:44', NULL, NULL, NULL),
(1032, 'san-pham/', 'thiet-ke-noi-that-a-bien-phong-ngu-11.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A BIÊN', 999, 218, '2020-01-22 15:03:44', NULL, NULL, NULL),
(1033, 'san-pham/', 'thiet-ke-noi-that-a-bien-phong-ngu-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A BIÊN', 999, 218, '2020-01-22 15:03:44', NULL, NULL, NULL),
(1034, 'san-pham/', 'thiet-ke-noi-that-nha-a-bien-phong-ve-sinh.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A BIÊN', 999, 218, '2020-01-22 15:03:44', NULL, NULL, NULL),
(1035, 'san-pham/', 'thiet-ke-noi-that-tan-co-nha-pho-chi-huong-21.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI HƯƠNG - THÁI BÌNH', 999, 219, '2020-01-22 15:09:25', NULL, NULL, NULL),
(1036, 'san-pham/', 'thiet-ke-noi-that-tan-co-nha-pho-chi-huong-41.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI HƯƠNG - THÁI BÌNH', 999, 219, '2020-01-22 15:09:25', NULL, NULL, NULL),
(1037, 'san-pham/', 'thiet-ke-noi-that-tan-co-nha-pho-chi-huong-51.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI HƯƠNG - THÁI BÌNH', 999, 219, '2020-01-22 15:09:25', NULL, NULL, NULL),
(1038, 'san-pham/', 'thiet-ke-noi-that-tan-co-nha-pho-chi-huong-11.png', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI HƯƠNG - THÁI BÌNH', 999, 219, '2020-01-22 15:09:25', NULL, NULL, NULL),
(1039, 'san-pham/', 'thiet-ke-noi-that-tan-co-nha-pho-chi-huong-31.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI HƯƠNG - THÁI BÌNH', 999, 219, '2020-01-22 15:09:25', NULL, NULL, NULL),
(1040, 'san-pham/', 'thiet-ke-noi-that-a-ha-phong-khach-1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HA', 999, 220, '2020-01-22 15:17:14', NULL, NULL, NULL),
(1041, 'san-pham/', 'thiet-ke-noi-that-a-ha-phong-khach-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HA', 999, 220, '2020-01-22 15:17:14', NULL, NULL, NULL),
(1042, 'san-pham/', 'thiet-ke-noi-that-a-ha-phong-khach-bep-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HA', 999, 220, '2020-01-22 15:17:14', NULL, NULL, NULL),
(1043, 'san-pham/', 'thiet-ke-noi-that-a-ha-phong-khach-bep.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HA', 999, 220, '2020-01-22 15:17:14', NULL, NULL, NULL),
(1044, 'san-pham/', 'thiet-ke-noi-that-a-ha-phong-bep.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HA', 999, 220, '2020-01-22 15:17:14', NULL, NULL, NULL),
(1045, 'san-pham/', 'thiet-ke-noi-that-a-ha-phong-bep-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HA', 999, 220, '2020-01-22 15:17:14', NULL, NULL, NULL),
(1046, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-hai-phong-khach-1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HẢI', 999, 221, '2020-01-22 15:25:14', NULL, NULL, NULL),
(1047, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-hai-phong-khach-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HẢI', 999, 221, '2020-01-22 15:25:14', NULL, NULL, NULL),
(1048, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-hai-phong-bep.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HẢI', 999, 221, '2020-01-22 15:25:14', NULL, NULL, NULL),
(1049, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-hai-phong-khach.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HẢI', 999, 221, '2020-01-22 15:25:14', NULL, NULL, NULL),
(1050, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-hai-phong-ngu-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HẢI', 999, 221, '2020-01-22 15:25:14', NULL, NULL, NULL),
(1051, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-hai-phong-ngu.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HẢI', 999, 221, '2020-01-22 15:25:14', NULL, NULL, NULL),
(1052, 'san-pham/', 'thiet-ke-noi-that-a-khang-phong-khach.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A KHANG ', 999, 222, '2020-01-25 13:30:54', NULL, NULL, NULL),
(1053, 'san-pham/', 'thiet-ke-noi-that-a-khang-phong-khach-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A KHANG ', 999, 222, '2020-01-25 13:30:54', NULL, NULL, NULL),
(1054, 'san-pham/', 'thiet-ke-noi-that-a-khang-phong-khach-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A KHANG ', 999, 222, '2020-01-25 13:30:54', NULL, NULL, NULL),
(1055, 'san-pham/', 'thiet-ke-noi-that-a-khang-phong-ngu.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A KHANG ', 999, 222, '2020-01-25 13:30:54', NULL, NULL, NULL),
(1056, 'san-pham/', 'thiet-ke-noi-that-a-khang-phong-ngu-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A KHANG ', 999, 222, '2020-01-25 13:30:54', NULL, NULL, NULL),
(1057, 'san-pham/', 'thiet-ke-noi-that-a-khang-phong-bep.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A KHANG ', 999, 222, '2020-01-25 13:30:54', NULL, NULL, NULL),
(1058, 'san-pham/', 'thiet-ke-noi-that-a-hao-phong-khach.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HÀO', 999, 223, '2020-01-25 13:41:41', NULL, NULL, NULL),
(1059, 'san-pham/', 'thiet-ke-noi-that-a-hao-phong-khach-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HÀO', 999, 223, '2020-01-25 13:41:41', NULL, NULL, NULL),
(1060, 'san-pham/', 'thiet-ke-noi-that-a-hao-phong-bep.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HÀO', 999, 223, '2020-01-25 13:41:41', NULL, NULL, NULL),
(1061, 'san-pham/', 'thiet-ke-noi-that-a-hao-phong-bep-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HÀO', 999, 223, '2020-01-25 13:41:41', NULL, NULL, NULL),
(1062, 'san-pham/', 'thiet-ke-noi-that-a-hao-cau-thang.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HÀO', 999, 223, '2020-01-25 13:41:41', NULL, NULL, NULL),
(1063, 'san-pham/', 'thiet-ke-noi-that-a-hao-phong-ngu.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HÀO', 999, 223, '2020-01-25 13:41:41', NULL, NULL, NULL),
(1064, 'san-pham/', 'thiet-ke-noi-that-a-hao-phong-ngu-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HÀO', 999, 223, '2020-01-25 13:41:41', NULL, NULL, NULL),
(1065, 'san-pham/', 'thiet-ke-noi-that-a-hao-phong-ve-sinh.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HÀO', 999, 223, '2020-01-25 13:41:41', NULL, NULL, NULL),
(1066, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-phuc-1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A PHÚC', 999, 224, '2020-01-25 13:53:34', NULL, NULL, NULL),
(1067, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-phuc-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A PHÚC', 999, 224, '2020-01-25 13:53:34', NULL, NULL, NULL),
(1068, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-phuc-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A PHÚC', 999, 224, '2020-01-25 13:53:34', NULL, NULL, NULL),
(1069, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-phuc-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A PHÚC', 999, 224, '2020-01-25 13:53:34', NULL, NULL, NULL),
(1070, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-phuc-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A PHÚC', 999, 224, '2020-01-25 13:53:34', NULL, NULL, NULL),
(1071, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-phuc-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A PHÚC', 999, 224, '2020-01-25 13:53:34', NULL, NULL, NULL),
(1072, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-phuc-7.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A PHÚC', 999, 224, '2020-01-25 13:53:34', NULL, NULL, NULL),
(1073, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thang.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THẮNG', 999, 225, '2020-01-25 14:03:00', NULL, NULL, NULL),
(1074, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thang-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THẮNG', 999, 225, '2020-01-25 14:03:00', NULL, NULL, NULL),
(1075, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thang-9.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THẮNG', 999, 225, '2020-01-25 14:03:00', NULL, NULL, NULL),
(1076, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thang-8.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THẮNG', 999, 225, '2020-01-25 14:03:00', NULL, NULL, NULL),
(1077, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thang-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THẮNG', 999, 225, '2020-01-25 14:03:00', NULL, NULL, NULL),
(1078, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thang-7.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THẮNG', 999, 225, '2020-01-25 14:03:00', NULL, NULL, NULL),
(1079, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thang-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THẮNG', 999, 225, '2020-01-25 14:03:00', NULL, NULL, NULL),
(1080, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thang-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THẮNG', 999, 225, '2020-01-25 14:03:00', NULL, NULL, NULL),
(1081, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thang-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THẮNG', 999, 225, '2020-01-25 14:03:00', NULL, NULL, NULL),
(1082, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thang-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THẮNG', 999, 225, '2020-01-25 14:03:00', NULL, NULL, NULL),
(1083, 'san-pham/', 'thiet-ke-noi-that-a-thanh-phong-khach1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THANH ', 1, 226, '2020-02-07 03:53:27', NULL, NULL, NULL),
(1084, 'san-pham/', 'thiet-ke-noi-that-phong-bep1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THANH ', 6, 226, '2020-02-07 03:53:27', NULL, NULL, NULL),
(1085, 'san-pham/', 'thiet-ke-noi-that-a-thanh-§1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THANH ', 2, 226, '2020-02-07 03:53:27', NULL, NULL, NULL),
(1086, 'san-pham/', 'thiet-ke-noi-that-a-thanh-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THANH ', 5, 226, '2020-02-07 03:53:27', NULL, NULL, NULL),
(1087, 'san-pham/', 'thiet-ke-noi-that-a-thanh-21.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THANH ', 3, 226, '2020-02-07 03:53:27', NULL, NULL, NULL),
(1088, 'san-pham/', 'thiet-ke-noi-that-a-thanh-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THANH ', 4, 226, '2020-02-07 03:53:27', NULL, NULL, NULL),
(1089, 'san-pham/', 'thiet-ke-noi-that-a-thanh-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THANH ', 7, 226, '2020-02-07 03:53:27', NULL, NULL, NULL),
(1090, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thien-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A THIỆN ', 6, 227, '2020-02-07 04:02:08', NULL, NULL, NULL),
(1091, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thien-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A THIỆN ', 4, 227, '2020-02-07 04:02:08', NULL, NULL, NULL),
(1092, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thien-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A THIỆN ', 9, 227, '2020-02-07 04:02:08', NULL, NULL, NULL),
(1093, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thien-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A THIỆN ', 8, 227, '2020-02-07 04:02:08', NULL, NULL, NULL),
(1094, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thien-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A THIỆN ', 7, 227, '2020-02-07 04:02:08', NULL, NULL, NULL),
(1095, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thien-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A THIỆN ', 3, 227, '2020-02-07 04:02:08', NULL, NULL, NULL),
(1096, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thien-7.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A THIỆN ', 2, 227, '2020-02-07 04:02:08', NULL, NULL, NULL),
(1097, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thien-8.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A THIỆN ', 5, 227, '2020-02-07 04:02:08', NULL, NULL, NULL),
(1098, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thien-9.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A THIỆN ', 1, 227, '2020-02-07 04:02:08', NULL, NULL, NULL),
(1099, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thien.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A THIỆN ', 10, 227, '2020-02-07 04:02:08', NULL, NULL, NULL),
(1100, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tho-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THỌ ', 7, 228, '2020-02-07 04:30:17', NULL, NULL, NULL),
(1101, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tho-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THỌ ', 3, 228, '2020-02-07 04:30:17', NULL, NULL, NULL),
(1102, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tho-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THỌ ', 5, 228, '2020-02-07 04:30:17', NULL, NULL, NULL),
(1103, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tho-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THỌ ', 4, 228, '2020-02-07 04:30:17', NULL, NULL, NULL),
(1104, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tho-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THỌ ', 1, 228, '2020-02-07 04:30:17', NULL, NULL, NULL),
(1105, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tho-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THỌ ', 6, 228, '2020-02-07 04:30:17', NULL, NULL, NULL),
(1106, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tho-7.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THỌ ', 2, 228, '2020-02-07 04:30:17', NULL, NULL, NULL),
(1107, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tho.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THỌ ', 8, 228, '2020-02-07 04:30:17', NULL, NULL, NULL),
(1108, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tu-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TỰ ', 4, 229, '2020-02-07 04:34:55', NULL, NULL, NULL),
(1109, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tu-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TỰ ', 999, 229, '2020-02-07 04:34:55', NULL, NULL, NULL),
(1110, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tu-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TỰ ', 999, 229, '2020-02-07 04:34:55', NULL, NULL, NULL),
(1111, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tu-4.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TỰ ', 1, 229, '2020-02-07 04:34:55', NULL, NULL, NULL),
(1112, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tu-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TỰ ', 2, 229, '2020-02-07 04:34:55', NULL, NULL, NULL),
(1113, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tu-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TỰ ', 999, 229, '2020-02-07 04:34:55', NULL, NULL, NULL),
(1114, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tu-7.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TỰ ', 3, 229, '2020-02-07 04:34:55', NULL, NULL, NULL),
(1115, 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tu.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TỰ ', 999, 229, '2020-02-07 04:34:55', NULL, NULL, NULL),
(1116, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-tuong-1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TƯƠNG ', 1, 230, '2020-02-07 04:44:18', NULL, NULL, NULL),
(1117, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-tuong-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TƯƠNG ', 2, 230, '2020-02-07 04:44:18', NULL, NULL, NULL),
(1118, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-tuong-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TƯƠNG ', 999, 230, '2020-02-07 04:44:18', NULL, NULL, NULL),
(1119, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-tuong-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TƯƠNG ', 999, 230, '2020-02-07 04:44:18', NULL, NULL, NULL),
(1120, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-tuong-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TƯƠNG ', 3, 230, '2020-02-07 04:44:18', NULL, NULL, NULL),
(1121, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-tuong-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TƯƠNG ', 4, 230, '2020-02-07 04:44:18', NULL, NULL, NULL),
(1122, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-tuong-7.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TƯƠNG ', 999, 230, '2020-02-07 04:44:18', NULL, NULL, NULL),
(1123, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-tuong-8.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TƯƠNG ', 5, 230, '2020-02-07 04:44:18', NULL, NULL, NULL),
(1124, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-tuong.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TƯƠNG ', 6, 230, '2020-02-07 04:44:18', NULL, NULL, NULL),
(1125, 'san-pham/', 'thiet-ke-thi-cong-noi-that-a-vinh-1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A VINH ', 1, 231, '2020-02-07 04:51:21', NULL, NULL, NULL),
(1126, 'san-pham/', 'thiet-ke-thi-cong-noi-that-a-vinh-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A VINH ', 999, 231, '2020-02-07 04:51:21', NULL, NULL, NULL),
(1127, 'san-pham/', 'thiet-ke-thi-cong-noi-that-a-vinh-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A VINH ', 2, 231, '2020-02-07 04:51:21', NULL, NULL, NULL),
(1128, 'san-pham/', 'thiet-ke-thi-cong-noi-that-a-vinh-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A VINH ', 999, 231, '2020-02-07 04:51:21', NULL, NULL, NULL),
(1129, 'san-pham/', 'thiet-ke-thi-cong-noi-that-a-vinh-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A VINH ', 3, 231, '2020-02-07 04:51:21', NULL, NULL, NULL),
(1130, 'san-pham/', 'thiet-ke-thi-cong-noi-that-a-vinh-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A VINH ', 999, 231, '2020-02-07 04:51:21', NULL, NULL, NULL),
(1131, 'san-pham/', 'thiet-ke-thi-cong-noi-that-a-vinh.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A VINH ', 4, 231, '2020-02-07 04:51:21', NULL, NULL, NULL),
(1132, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-dai-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI ĐẠI ', 3, 232, '2020-02-07 05:22:41', NULL, NULL, NULL),
(1133, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-dai-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI ĐẠI ', 2, 232, '2020-02-07 05:22:41', NULL, NULL, NULL),
(1134, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-dai-3.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI ĐẠI ', 1, 232, '2020-02-07 05:22:41', NULL, NULL, NULL),
(1135, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-dai-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI ĐẠI ', 4, 232, '2020-02-07 05:22:41', NULL, NULL, NULL),
(1136, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-dai-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI ĐẠI ', 5, 232, '2020-02-07 05:22:41', NULL, NULL, NULL),
(1137, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-dai.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI ĐẠI ', 6, 232, '2020-02-07 05:22:41', NULL, NULL, NULL),
(1138, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-dai1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI HOA', 6, 233, '2020-02-07 12:30:23', NULL, NULL, NULL),
(1139, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-dai-11.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI HOA', 5, 233, '2020-02-07 12:30:23', NULL, NULL, NULL);
INSERT INTO `imageproducts` (`ImageProductsID`, `ImagePreset`, `ImageURL`, `IsMainImage`, `Title`, `Description`, `AltText`, `TitleText`, `Orders`, `ProductsID`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(1140, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-dai-21.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI HOA', 2, 233, '2020-02-07 12:30:23', NULL, NULL, NULL),
(1141, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-dai-31.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI HOA', 1, 233, '2020-02-07 12:30:23', NULL, NULL, NULL),
(1142, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-dai-41.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI HOA', 3, 233, '2020-02-07 12:30:23', NULL, NULL, NULL),
(1143, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-dai-51.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI HOA', 4, 233, '2020-02-07 12:30:23', NULL, NULL, NULL),
(1144, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lai.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI LAI', 1, 234, '2020-02-07 12:36:01', NULL, NULL, NULL),
(1145, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lai-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI LAI', 6, 234, '2020-02-07 12:36:01', NULL, NULL, NULL),
(1146, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lai-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI LAI', 2, 234, '2020-02-07 12:36:01', NULL, NULL, NULL),
(1147, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lai-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI LAI', 3, 234, '2020-02-07 12:36:01', NULL, NULL, NULL),
(1148, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lai-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI LAI', 5, 234, '2020-02-07 12:36:01', NULL, NULL, NULL),
(1149, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lai-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI LAI', 4, 234, '2020-02-07 12:36:01', NULL, NULL, NULL),
(1150, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lai-7.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI LAI', 8, 234, '2020-02-07 12:36:01', NULL, NULL, NULL),
(1151, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lai-8.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI LAI', 9, 234, '2020-02-07 12:36:01', NULL, NULL, NULL),
(1152, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lai-9.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI LAI', 7, 234, '2020-02-07 12:36:01', NULL, NULL, NULL),
(1153, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lanh.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI LANH', 999, 235, '2020-02-07 12:48:32', NULL, NULL, NULL),
(1154, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lanh-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI LANH', 2, 235, '2020-02-07 12:48:32', NULL, NULL, NULL),
(1155, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lanh-2.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI LANH', 1, 235, '2020-02-07 12:48:32', NULL, NULL, NULL),
(1156, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lanh-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI LANH', 999, 235, '2020-02-07 12:48:32', NULL, NULL, NULL),
(1157, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lanh-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI LANH', 3, 235, '2020-02-07 12:48:32', NULL, NULL, NULL),
(1158, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lanh-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI LANH', 999, 235, '2020-02-07 12:48:32', NULL, NULL, NULL),
(1159, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lanh-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI LANH', 4, 235, '2020-02-07 12:48:32', NULL, NULL, NULL),
(1160, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lanh-8.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI LANH', 5, 235, '2020-02-07 12:48:32', NULL, NULL, NULL),
(1161, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lanh-9.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI LANH', 999, 235, '2020-02-07 12:48:32', NULL, NULL, NULL),
(1162, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-nam_copy.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NAM', 1, 236, '2020-02-07 13:27:14', NULL, NULL, NULL),
(1163, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-nam-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NAM', 999, 236, '2020-02-07 13:27:14', NULL, NULL, NULL),
(1164, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-nam-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NAM', 999, 236, '2020-02-07 13:27:14', NULL, NULL, NULL),
(1165, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-nam-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NAM', 999, 236, '2020-02-07 13:27:14', NULL, NULL, NULL),
(1166, 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-nam-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NAM', 999, 236, '2020-02-07 13:27:14', NULL, NULL, NULL),
(1167, 'san-pham/', 'thiet-ke-thi-cong-nha-chi-ngat.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NGÁT', 999, 237, '2020-02-07 13:34:35', NULL, NULL, NULL),
(1168, 'san-pham/', 'thiet-ke-thi-cong-nha-chi-ngat-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NGÁT', 999, 237, '2020-02-07 13:34:35', NULL, NULL, NULL),
(1169, 'san-pham/', 'thiet-ke-thi-cong-nha-chi-ngat-2.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NGÁT', 1, 237, '2020-02-07 13:34:35', NULL, NULL, NULL),
(1170, 'san-pham/', 'thiet-ke-thi-cong-nha-chi-ngat-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NGÁT', 999, 237, '2020-02-07 13:34:35', NULL, NULL, NULL),
(1171, 'san-pham/', 'thiet-ke-thi-cong-nha-chi-ngat-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NGÁT', 999, 237, '2020-02-07 13:34:35', NULL, NULL, NULL),
(1172, 'san-pham/', 'thiet-ke-thi-cong-nha-chi-ngat-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NGÁT', 999, 237, '2020-02-07 13:34:35', NULL, NULL, NULL),
(1173, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-sinh-1.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI SINH ', 999, 238, '2020-02-07 15:01:51', NULL, NULL, NULL),
(1174, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-sinh.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI SINH ', 999, 238, '2020-02-07 15:01:51', NULL, NULL, NULL),
(1175, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-sinh-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI SINH ', 999, 238, '2020-02-07 15:01:51', NULL, NULL, NULL),
(1176, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-sinh-3.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI SINH ', 999, 238, '2020-02-07 15:01:51', NULL, NULL, NULL),
(1177, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-sinh-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI SINH ', 999, 238, '2020-02-07 15:01:51', NULL, NULL, NULL),
(1178, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-sinh-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI SINH ', 999, 238, '2020-02-07 15:01:51', NULL, NULL, NULL),
(1179, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-sinh-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI SINH ', 999, 238, '2020-02-07 15:01:51', NULL, NULL, NULL),
(1180, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-sinh-7.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI SINH ', 999, 238, '2020-02-07 15:01:51', NULL, NULL, NULL),
(1181, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-sinh-8.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI SINH ', 999, 238, '2020-02-07 15:01:51', NULL, NULL, NULL),
(1182, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-thoan-1.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHỊ THOAN', 999, 239, '2020-02-07 15:11:37', NULL, NULL, NULL),
(1183, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-thoan-2.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHỊ THOAN', 999, 239, '2020-02-07 15:11:37', NULL, NULL, NULL),
(1184, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-thoan-3.jpg', b'1', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHỊ THOAN', 1, 239, '2020-02-07 15:11:37', NULL, NULL, NULL),
(1185, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-thoan-4.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHỊ THOAN', 999, 239, '2020-02-07 15:11:37', NULL, NULL, NULL),
(1186, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-thoan-5.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHỊ THOAN', 999, 239, '2020-02-07 15:11:37', NULL, NULL, NULL),
(1187, 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-thoan-6.jpg', b'0', NULL, NULL, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHỊ THOAN', 999, 239, '2020-02-07 15:11:37', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `linkpartners`
--

CREATE TABLE `linkpartners` (
  `LinkPartnersID` int(10) UNSIGNED NOT NULL,
  `Titlie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageLogo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `WebLink` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Follow` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(40) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `login` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logos`
--

CREATE TABLE `logos` (
  `LogosID` int(10) UNSIGNED NOT NULL,
  `ImagePreset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'logo/',
  `ImageURL` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsMain` bit(1) DEFAULT b'0',
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL,
  `ImageURLFooter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageURLScroll` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `logos`
--

INSERT INTO `logos` (`LogosID`, `ImagePreset`, `ImageURL`, `Title`, `Description`, `IsMain`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `ImageURLFooter`, `ImageURLScroll`) VALUES
(4, 'logo/', 'c791d319-e898-46c8-964f-2ac4ee740a87_200x2002.png', 'GEMIHOME - KHÔNG CHỈ LÀ THIẾT KẾ NHÀ CHÚNG TÔI KHẲNG ĐỊNH \"ĐẲNG CẤP\" CỦA BẠN', 'GEMIHOME - KHÔNG CHỈ LÀ THIẾT KẾ NHÀ CHÚNG TÔI KHẲNG ĐỊNH \"ĐẲNG CẤP\" CỦA BẠN', b'1', '2018-05-08 10:01:40', 1, '2020-01-29 16:03:00', 1, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu`
--

CREATE TABLE `menu` (
  `MenuID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParentID` int(10) UNSIGNED DEFAULT 0,
  `Slug` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsStatic` bit(1) DEFAULT b'0',
  `StaticContent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `StaticContent_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Types` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publish` bit(1) DEFAULT NULL,
  `Orders` double DEFAULT NULL,
  `IsNewTab` bit(1) DEFAULT b'0',
  `IsClick` smallint(5) UNSIGNED DEFAULT 1,
  `ImageURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOTitle` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeyword` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL,
  `Banner` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `BannerStatus` tinyint(4) NOT NULL DEFAULT 0,
  `ImageTitle` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageAlt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsBanner` smallint(6) DEFAULT 0,
  `SEOTitle_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeyword_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescription_en` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu`
--

INSERT INTO `menu` (`MenuID`, `Title`, `Title_en`, `ParentID`, `Slug`, `Url`, `Description`, `IsStatic`, `StaticContent`, `StaticContent_en`, `Types`, `Publish`, `Orders`, `IsNewTab`, `IsClick`, `ImageURL`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `Banner`, `BannerStatus`, `ImageTitle`, `ImageAlt`, `IsBanner`, `SEOTitle_en`, `SEOKeyword_en`, `SEODescription_en`) VALUES
(67, 'Trang chủ', NULL, 0, '0', '', '', b'0', '', NULL, 'External', b'1', 1, b'0', 0, '', 'Công ty thiết kế nội thất Vivadecor đẹp, hiện đại và cao cấp', 'thiết kế nội thất, thiet ke noi that, công ty thiết kế nội thất, thiet ke noi that dep, thiết kế nội thất đẹp, cong ty thiet ke noi that, thiết kế nội thất hiện đại', 'Công ty Vivadecor chuyên cung cấp các dịch vụ thiết kế nội thất đẹp, hiện đại và cao cấp nhất Hà Nội ở tất cả các phân khúc công trình.', '2017-02-26 08:10:25', 1, '2017-03-28 16:59:14', 1, NULL, 0, '', '', 0, NULL, NULL, NULL),
(114, 'LIÊN HỆ', NULL, 0, 'lien-he', 'lien-he', '', b'0', '', NULL, 'News', b'1', 9, b'0', 0, '', '', '', '', '2019-09-29 15:46:30', 1, '2020-02-10 09:00:31', 1, NULL, 0, '', '', 0, NULL, NULL, NULL),
(123, 'ĐĂNG KÝ', NULL, 0, 'register-info', 'register-info', '', b'0', '', NULL, 'Internal', b'1', 999, b'0', 0, '', '', '', '', '2019-12-19 09:26:33', 1, '2020-02-01 11:00:05', 1, NULL, 0, '', '', 0, NULL, NULL, NULL),
(131, 'THIẾT KẾ BIỆT THỰ', NULL, 0, '-', '#', 'Với không gian rộng thoáng bạn có thể thiết kế biệt thự thoả theo ý thích của mình. Phong cách nhà vường luôn là sự lựa trọn hàng đầu của khách hàng', b'0', '', NULL, 'External', b'1', 5, b'0', 0, '', 'THIẾT KẾ BIỆT THỰ ', 'thiết kế biệt thư, thiet ke biet thu', 'Với không gian rộng thoáng bạn có thể thiết kế biệt thự thoả theo ý thích của mình. Phong cách nhà vường luôn là sự lựa trọn hàng đầu của khách hàng', '2020-02-10 09:04:00', 1, '2020-02-10 09:21:32', 1, NULL, 0, '', '', 0, NULL, NULL, NULL),
(129, 'THIẾT KẾ NHÀ PHỐ NHÀ ỐNG', NULL, 0, 'thiet-ke-nha-ong-nha-pho', 'thiet-ke-nha-ong-nha-pho', 'Nhà ống hay nhà phố luôn là kiểu nhà được thiết kế nhiều nhất, hiện nay thiết kế nhà ống nổi lên hai phong cách tân cổ và hiện đại', b'0', '', NULL, 'ProductCategories', b'1', 4, b'0', 0, '', 'THIẾT KẾ NHÀ PHỐ NHÀ ỐNG - GEMIHOME ', 'thiết kế nhà ống nhà phố, thiet ke nha ong nha pho', 'Nhà ống hay nhà phố luôn là kiểu nhà được thiết kế nhiều nhất, hiện nay thiết kế nhà ống nổi lên hai phong cách tân cổ và hiện đại', '2020-02-10 08:56:20', 1, '2020-02-10 09:00:09', 1, NULL, 0, '', '', 0, NULL, NULL, NULL),
(119, 'TIN TỨC', NULL, 0, 'tin-tuc', 'tin-tuc', '', b'0', '', NULL, 'NewsCategories', b'1', 7, b'0', 0, '', '', '', '', '2019-09-29 16:13:55', 1, '2020-02-10 09:00:23', 1, NULL, 0, '', '', 0, NULL, NULL, NULL),
(124, 'THIẾT KẾ NỘI THẤT', NULL, 0, 'thiet-ke-noi-that', 'thiet-ke-noi-that', '', b'0', '', NULL, 'ProductCategories', b'1', 2, b'0', 0, '', '', '', '', '2019-12-31 11:07:37', 1, '2019-12-31 11:08:15', 1, NULL, 0, '', '', 0, NULL, NULL, NULL),
(126, 'THIẾT KẾ NỘI THẤT KHÁC', NULL, 0, 'thiet-ke-khac', 'thiet-ke-khac', '', b'0', '', NULL, 'ProductCategories', b'1', 6, b'0', 0, '', '', '', '', '2019-12-31 11:10:43', 1, '2020-02-10 09:00:21', 1, NULL, 0, '', '', 0, NULL, NULL, NULL),
(128, 'PROFILE CÔNG TY', NULL, 0, 'https-drive-google-com-drive-u-0-my-drive', 'https://drive.google.com/drive/u/0/my-drive', '', b'0', '', NULL, 'External', b'1', 8, b'0', 0, '', '', '', '', '2020-01-12 13:52:29', 1, '2020-02-10 09:00:28', 1, NULL, 0, '', '', 0, NULL, NULL, NULL),
(130, 'THIẾT KẾ BIỆT THỰ HAI TẦNG', NULL, 131, 'thiet-ke-biet-thu-hai-tang', 'thiet-ke-biet-thu-hai-tang', 'Biệt thự hai tầng mái thái đang nổi lên những năm gần đây, với phong cách gần gũi với thiên nhiên và nhiều cây xanh sẽ mang lại cho gia chủ cảm giác thoải mái', b'0', '', NULL, 'ProductCategories', b'1', 999, b'0', 0, '', 'THIẾT KẾ BIỆT THỰ HAI TẦNG', 'thiet ke biet thu hai tang, thiết kế biệt thự hai tầng', 'Biệt thự hai tầng mái thái đang nổi lên những năm gần đây, với phong cách gần gũi với thiên nhiên và nhiều cây xanh sẽ mang lại cho gia chủ cảm giác thoải mái', '2020-02-10 08:58:54', 1, '2020-02-10 09:04:34', 1, NULL, 0, '', '', 0, NULL, NULL, NULL),
(132, 'THIẾT KẾ BIỆT THỰ MỘT TẦNG', NULL, 131, 'thiet-ke-biet-thu-mot-tang', 'thiet-ke-biet-thu-mot-tang', 'Biệt thự 1 tầng là lựa chọn phù hợp cho gia đình có không gian đất rộng muốn thiết kế nhà vườn đẹp kết hợp với không gian ngoài trời. Đáp ứng nhu cầu sinh hoạt nghỉ dưỡng sau mỗi giờ làm việc mệt mỏi ', b'0', '', NULL, 'ProductCategories', b'1', 999, b'0', 0, '', 'THIẾT KẾ BIỆT THỰ MỘT TẦNG', 'THIẾT KẾ BIỆT THỰ MỘT TẦNG, thiet ke biet thu mot tang', 'Biệt thự 1 tầng là lựa chọn phù hợp cho gia đình có không gian đất rộng muốn thiết kế nhà vườn đẹp kết hợp với không gian ngoài trời. Đáp ứng nhu cầu sinh hoạt nghỉ dưỡng sau mỗi giờ làm việc mệt mỏi Gemihome ', '2020-02-10 09:07:01', 1, '2020-02-10 09:07:14', 1, NULL, 0, '', '', 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menuhot`
--

CREATE TABLE `menuhot` (
  `MenuID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParentID` int(10) UNSIGNED DEFAULT 0,
  `Slug` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsStatic` bit(1) DEFAULT b'0',
  `StaticContent` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `StaticContent_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Types` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publish` bit(1) DEFAULT NULL,
  `Orders` double DEFAULT NULL,
  `IsNewTab` bit(1) DEFAULT b'0',
  `IsClick` smallint(5) UNSIGNED DEFAULT 1,
  `SEOTitle` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeyword` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL,
  `Banner` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `BannerStatus` tinyint(4) NOT NULL DEFAULT 0,
  `ImageTitle` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageAlt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsBanner` smallint(6) DEFAULT 0,
  `SEOTitle_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeyword_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescription_en` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menuhot`
--

INSERT INTO `menuhot` (`MenuID`, `Title`, `Title_en`, `ParentID`, `Slug`, `Url`, `Description`, `IsStatic`, `StaticContent`, `StaticContent_en`, `Types`, `Publish`, `Orders`, `IsNewTab`, `IsClick`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `Banner`, `BannerStatus`, `ImageTitle`, `ImageAlt`, `IsBanner`, `SEOTitle_en`, `SEOKeyword_en`, `SEODescription_en`) VALUES
(2, 'Sơ lược công ty', NULL, 0, 'gioi-thieu', 'tin-tuc/gioi-thieu', 'Sơ lược công ty', b'0', '', NULL, 'NewsCategories', b'1', 2, b'0', 1, '', '', '', '2015-05-19 07:23:40', 1, '2015-08-06 11:10:19', 1, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL),
(3, 'Chính sách ưu đãi', NULL, 0, 'chinh-sach', 'tin-tuc/chinh-sach', 'Chính sách ưu đãi khi lắp đặt camera quan sát tại fpt. Chính sách bảo hành camera tận nhà, giao hàng tận nơi và khuyến mãi camera giá rẻ', b'0', '', NULL, 'NewsCategories', b'1', 3, b'0', 1, '', '', '', '2015-05-19 07:24:10', 1, '2015-07-23 10:19:19', 1, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL),
(5, 'Tuyển dụng', NULL, 0, 'tuyen-dung', 'tin-tuc/tuyen-dung', 'Tuyển dụng nhân viên lắp đặt camera quan sát, nhân viên kinh doanh camera an ninh, nhân viên tư vấn lắp camera', b'0', '', NULL, 'NewsCategories', b'1', 5, b'0', 1, '', '', '', '2015-05-19 07:33:49', 1, '2015-07-23 10:08:10', 1, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL),
(6, 'Tin camera', NULL, 0, 'tin-camera', 'tin-tuc/tin-camera', 'tin-camera', b'0', '', NULL, 'NewsCategories', b'1', 6, b'0', 1, '', '', '', '2015-05-19 08:25:25', 1, '2015-08-01 08:34:20', 1, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL),
(7, 'Liên hệ', NULL, 0, 'lien-he', 'lien-he', 'Liên hệ', b'0', '', NULL, 'Internal', b'1', 7, b'0', 1, '', '', '', '2015-05-19 08:25:40', 1, '2015-07-23 10:26:56', 1, NULL, 0, NULL, NULL, 0, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `NewsID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_fr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImagePreset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'tin-tuc/',
  `ImageURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageTitle` text COLLATE utf8_unicode_ci NOT NULL,
  `ImageAlt` text COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description_fr` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body_fr` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsNew` smallint(6) DEFAULT 0,
  `IsHot` smallint(6) DEFAULT 0,
  `IsBanner` smallint(6) DEFAULT 0,
  `Orders` float DEFAULT NULL,
  `Date` datetime DEFAULT NULL,
  `Publish` bit(1) DEFAULT NULL,
  `Slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOTitle` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeyword` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CategoriesNewsID` int(10) UNSIGNED NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(11) DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(11) DEFAULT NULL,
  `IsTrash` bit(1) DEFAULT b'0',
  `LastDateTrash` timestamp NULL DEFAULT NULL,
  `LastDateRestore` timestamp NULL DEFAULT NULL,
  `Is5Hotest` bit(1) DEFAULT NULL,
  `IsTieuDiem` bit(1) DEFAULT NULL,
  `IsHotEvent` bit(1) DEFAULT NULL,
  `IsVideo` bit(1) DEFAULT NULL,
  `VideoURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `View` int(10) UNSIGNED DEFAULT 0,
  `IsDocNhieu` smallint(6) DEFAULT NULL,
  `Hightlight` text COLLATE utf8_unicode_ci NOT NULL,
  `Tags` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`NewsID`, `Title`, `Title_en`, `Title_fr`, `ImagePreset`, `ImageURL`, `ImageTitle`, `ImageAlt`, `Description`, `Description_en`, `Description_fr`, `Body`, `Body_en`, `Body_fr`, `IsNew`, `IsHot`, `IsBanner`, `Orders`, `Date`, `Publish`, `Slug`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `CategoriesNewsID`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `IsTrash`, `LastDateTrash`, `LastDateRestore`, `Is5Hotest`, `IsTieuDiem`, `IsHotEvent`, `IsVideo`, `VideoURL`, `View`, `IsDocNhieu`, `Hightlight`, `Tags`) VALUES
(142, 'GEMIHOME - KHÔNG CHỈ LÀ THIẾT KẾ NHÀ CHÚNG TÔI KHẲNG ĐỊNH ĐẲNG CẤP CỦA BẠN', '', '', 'tin-tuc/', 'Screen_Shot_2020-01-29_at_10.55_.17_PM_2.png', 'GEMIHOME - KHÔNG CHỈ LÀ THIẾT KẾ NHÀ CHÚNG TÔI KHẲNG ĐỊNH ĐẲNG CẤP CỦA BẠN', 'gemihome-khong-chi-la-thiet-ke-chung-toi-khang-dinh-dang-cap-cua-ban', '', '', '', '<p><strong>GEMIHOME&nbsp;&nbsp;</strong>được thành lập năm 2001&nbsp;với mong muốn \"Mang thiết kế đến mọi nhà\" Với 10&nbsp;năm kinh nghiệm trong lĩnh vực thiết kế và 20 năm thi công nội thất chúng tôi tự tin mang đến cho khách hàng những sảng phẩm tốt nhất. Đội ngũ nhân viên 100 người cùng với 8 trụ sở chính tại các thành phố lớn GEMIHOME sẽ phục vụ khách hàng một cách thuận lợi và chuyên nghiệp nhất.&nbsp;Với tiêu chỉ lấy chữ Tâm làm đầu, chữ Tín làm gốc cùng hàng trăm ngàn dự án đã và đang thi công&nbsp;giữu mực tiêu đến năm 2022&nbsp;chúng tôi sẽ là là công ty thiết kế và sản xuất nội thất lớn nhất miền bắc.</p>\n', '', '', 0, 1, 0, 999, '2020-02-01 22:57:22', b'1', 'gemihome-khong-chi-la-thiet-ke-nha-chung-toi-khang-dinh-dang-cap-cua-ban', 'GEMIHOME - KHÔNG CHỈ LÀ THIẾT KẾ NHÀ CHÚNG TÔI KHẲNG ĐỊNH ĐẲNG CẤP CỦA BẠN', 'thiet ke nha dep, thiết kế nhà đẹp', 'GEMIHOME  được thành lập năm 2001 với mong muốn \"Mang thiết kế đến mọi nhà\" Với 10 năm kinh nghiệm trong lĩnh vực thiết kế và 20 năm thi công nội thất chúng tôi tự tin mang đến cho khách hàng những sảng phẩm tốt nhất. Đội ngũ nhân viên 100 người cùng với 8 trụ sở chính tại các thành phố lớn GEMIHOME sẽ phục vụ khách hàng một cách thuận lợi và chuyên nghiệp nhất. Với tiêu chỉ lấy chữ Tâm làm đầu, chữ Tín làm gốc cùng hàng trăm ngàn dự án đã và đang thi công giữu mực tiêu đến năm 2022 chúng tôi sẽ là là công ty thiết kế và sản xuất nội thất lớn nhất miền bắc.', 1, '2017-12-18 03:05:39', 1, '2020-02-01 15:57:22', 1, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', ''),
(371, 'Quy định mới nhất về luật đất đai năm 2019 cho người mua nhà', '', '', 'tin-tuc/', 'lua-dat-dai-2019.jpg', 'Quy định mới nhất về luật đất đai năm 2019 cho người mua nhà', 'quy-dinh-luat-dat-dai-2019', '', '', '', '<p class=\"p1\"><b>THỦ TỤC CẤP GIẤY CHỨNG NHẬN QUYỀN SỬ DỤNG ĐẤT</b></p>\n\n<p class=\"p2\"><i>a) Điều kiện cấp giấy chứng nhận quyền sử dụng đất</i></p>\n\n<p class=\"p2\">Theo quy định tại điều 99 Luật đất đai năm 2013. Nhà nước cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất cho những trường hợp sau đây:</p>\n\n<p class=\"p2\">“a) Người đang sử dụng đất có đủ&nbsp;<span class=\"s1\">điều kiện cấp Giấy chứng nhận quyền sử dụng đất</span>, quyền sở hữu nhà ở và tài sản khác gắn liền với đất theo quy định tại các điều 100, 101 và 102 của Luật đất đai 2013;</p>\n\n<p class=\"p2\">b) Người được Nhà nước giao đất, cho thuê đất từ sau ngày Luật này có hiệu lực thi hành;</p>\n\n<p class=\"p2\">c) Người được chuyển đổi, nhận chuyển nhượng, được thừa kế, nhận tặng cho quyền sử dụng đất, nhận góp vốn bằng quyền sử dụng đất; người nhận quyền sử dụng đất khi xử lý hợp đồng thế chấp bằng quyền sử dụng đất để thu hồi nợ;</p>\n\n<p class=\"p2\">d) Người được sử dụng đất theo kết quả hòa giải thành đối với tranh chấp đất đai; theo bản án hoặc quyết định của Tòa án nhân dân, quyết định thi hành án của cơ quan thi hành án hoặc quyết định giải quyết tranh chấp, khiếu nại, tố cáo về đất đai của cơ quan nhà nước có thẩm quyền đã được thi hành;</p>\n\n<p class=\"p2\">đ) Người trúng đấu giá quyền sử dụng đất;</p>\n\n<p class=\"p2\">e) Người sử dụng đất trong khu công nghiệp, cụm công nghiệp, khu chế xuất, khu công nghệ cao, khu kinh tế;</p>\n\n<p class=\"p2\">g) Người mua nhà ở, tài sản khác gắn liền với đất;</p>\n\n<p class=\"p2\">h) Người được Nhà nước thanh lý, hóa giá nhà ở gắn liền với đất ở; người mua nhà ở thuộc sở hữu nhà nước;</p>\n\n<p class=\"p2\">i) Người sử dụng đất tách thửa, hợp thửa; nhóm người sử dụng đất hoặc các thành viên hộ gia đình, hai vợ chồng, tổ chức sử dụng đất chia tách, hợp nhất quyền sử dụng đất hiện có;</p>\n\n<p class=\"p2\">k) Người sử dụng đất đề nghị cấp đổi hoặc cấp lại Giấy chứng nhận bị mất”.</p>\n\n<p class=\"p2\"><i>b) Giấy tờ đủ điều kiện để được cấp giấy chứng nhận quyền sử dụng đất , quyền sở hữu nhà ở và tài sản khác gắn liền với đất</i></p>\n\n<p class=\"p2\">Theo quy định tại Điều 100 Luật đất đai 2013. Hộ gia đình, cá nhân đang sử dụng đất ổn định mà có một trong các loại giấy tờ sau đây thì được cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất và không phải nộp tiền sử dụng đất:</p>\n\n<p class=\"p2\">“a) Những giấy tờ về quyền được sử dụng đất trước ngày 15 tháng 10 năm 1993 do cơ quan có thẩm quyền cấp trong quá trình thực hiện chính sách đất đai của Nhà nước Việt Nam dân chủ Cộng hòa, Chính phủ Cách mạng lâm thời Cộng hòa miền Nam Việt Nam và Nhà nước Cộng hòa xã hội chủ nghĩa Việt Nam;</p>\n\n<p class=\"p2\">b) Giấy chứng nhận quyền sử dụng đất tạm thời được cơ quan nhà nước có thẩm quyền cấp hoặc có tên trong Sổ đăng ký ruộng đất, Sổ địa chính trước ngày 15 tháng 10 năm 1993;</p>\n\n<p class=\"p2\">c) Giấy tờ hợp pháp về thừa kế, tặng cho quyền sử dụng đất hoặc tài sản gắn liền với đất; giấy tờ giao nhà tình nghĩa, nhà tình thương gắn liền với đất;</p>\n\n<p class=\"p2\">d) Giấy tờ chuyển nhượng quyền sử dụng đất, mua bán nhà ở gắn liền với đất ở trước ngày 15 tháng 10 năm 1993 được Ủy ban nhân dân cấp xã xác nhận là đã sử dụng trước ngày 15 tháng 10 năm 1993;</p>\n\n<p class=\"p2\">đ) Giấy tờ thanh lý, hóa giá nhà ở gắn liền với đất ở; giấy tờ mua nhà ở thuộc sở hữu nhà nước theo quy định của pháp luật;</p>\n\n<p class=\"p2\">e) Giấy tờ về quyền sử dụng đất do cơ quan có thẩm quyền thuộc chế độ cũ cấp cho người sử dụng đất;</p>\n\n<p class=\"p2\">g) Các loại giấy tờ khác được xác lập trước ngày 15 tháng 10 năm 1993 theo quy định của Chính phủ.”</p>\n\n<p class=\"p2\"><i>c) Trình tự</i>&nbsp;<i>cấp giấy chứng nhận quyền sử dụng đất</i></p>\n\n<p class=\"p2\">Hiện nay, thủ tục cấp Sổ đỏ được thực hiện theo&nbsp;<a href=\"https://thuvienphapluat.vn/van-ban/Bat-dong-san/Nghi-dinh-43-2014-ND-CP-huong-dan-thi-hanh-Luat-Dat-dai-230680.aspx\"><span class=\"s1\">Điều 70 của Nghị định 43/2014/NĐ-CP</span></a>&nbsp;và hướng dẫn của Thông tư 24/2014/TT-BTNMT. Theo đó:</p>\n\n<p class=\"p2\">– Chuẩn bị 01 bộ hồ sơ gồm Đơn đăng ký; một trong các loại giấy tờ nêu trên; báo cáo kết quả rà soát hiện trạng sử dụng đất; Chứng từ thực hiện nghĩa vụ tài chính…</p>\n\n<p class=\"p2\">– Nộp hồ sơ tại văn phòng đăng ký đất đai thuộc UBND cấp huyện;</p>\n\n<p class=\"p2\">– Thực hiện các nghĩa vụ tài chính và nộp biên lai thuế cho bộ phận tiếp nhận;</p>\n\n<p class=\"p2\">– Đến nhận Giấy chứng nhận quyền sử dụng đất theo giấy hẹn.</p>\n\n<p class=\"p2\"><i>d) Những trường hợp không được cấp sổ đỏ</i></p>\n\n<p class=\"p2\">Theo Điều 19, Nghị định 43/2014/CP quy định chi tiết thi hành một số điều của Luật Đất Đai vừa được Chính phủ ban hành, theo đó, sẽ có 7 trường hợp không được cấp Giấy chứng nhận quyền sủ dụng đấy, quyền sở hữu nhà ở và tài sản khác gắn liền với đất, gồm:</p>\n\n<p class=\"p2\">1/ Người đang quản lý, sử dụng đất nông nghiệp thuộc quỹ đất công ích của xã, phường, thị trấn.</p>\n\n<p class=\"p2\">2/ Người thuê, thuê lại đất của người sử dụng đất, trừ trường hợp thuê, thuê đất của nhà đầu tư xây dựng, kinh doanh kết cấu hạ tầng trong khu công nghiệp, cụm công nghiệp, khu chế xuất, khu công nghệ cao, khu kinh tế</p>\n\n<p class=\"p2\">3/ Người nhận khoán đất trong các nông trường, lâm trường, doanh nghiệp nông, lâm nghiệp, ban quản lý rừng phòng hộ, ban quả lý rừng đặc dụng.</p>\n\n<p class=\"p2\">4/ Người đang sử dụng đất không đủ điều kiện cấp Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất.</p>\n\n<p class=\"p2\">5/ Người sử sụng đất có đủ điều kiện cấp Giấy chứng nhận&nbsp; quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất nhưng đã có thông báo hoặc quyết định thu hồi đất của cơ quan nhà nước có thẩm quyền.</p>\n\n<p class=\"p2\">6/ Tổ chức, UBND xã được Nhà nước giao đất không thu tiền sử dụng đất để sử dụng và mục đích xây dựng công trình công cộng gồm đường giao thông, công trình dẫn nước, dẫn xăng, dầu, khi, đường dây truyền tải điện, truyền dẫn thông tin, khu vui chơi giải trí ngoài trời; nghĩa trang; nghĩa địa không nhằm mục đích kinh doanh.</p>\n\n<p class=\"p2\">7/ Các tổ chức, cộng đồng dân cư được Nhà nước giao đất để quản lý thuộc các trường hợp quy định tại Điều 8 của Luật Đất đai</p>\n\n<p class=\"p1\"><b>NGHĨA VỤ TÀI CHÍNH PHẢI THỰC HIỆN</b></p>\n\n<p class=\"p2\">Với trường hợp mua bán , chuyển nhượng … thì người bán có trách nhiệm nộp thuế thu nhập cá nhân 2%</p>\n\n<p class=\"p2\">Ngoài ra , người đăng ký cấp giấy chứng nhận quyền sử dụng đất phải nộp lệ phí trước bạ 0,5% và chi phí đo đạc địa chính .</p>\n\n<p class=\"p2\">Theo quy định tại Thông tư 02/2014/TT-BTC về lệ phí địa chính:</p>\n\n<p class=\"p2\">+ Mức thu tối đa không quá 100.000 đồng/giấy đối với cấp mới; tối đa không quá 50.000 đồng/lần cấp đối với cấp lại (kể cả cấp lại giấy chứng nhận do hết chỗ xác nhận), cấp đổi, xác nhận bổ sung vào giấy chứng nhận.</p>\n\n<p class=\"p2\">+ Chứng nhận đăng ký biến động về đất đai: Không quá 28.000 đồng/1 lần.</p>\n\n<p class=\"p2\">+ Trích lục bản đồ địa chính, văn bản, số liệu hồ sơ địa chính: Không quá 15.000 đồng/1 lần.</p>\n\n<p class=\"p2\">+ Miễn lệ phí cấp giấy chứng nhận đối với hộ gia đình, cá nhân ở nông thôn. Trường hợp hộ gia đình, cá nhân tại các quận thuộc thành phố trực thuộc Trung ương và các phường nội thành thuộc thành phố, thị xã trực thuộc tỉnh được cấp giấy chứng nhận ở nông thôn thì không được miễn lệ phí cấp giấy chứng nhận.</p>\n\n<p class=\"p2\">Phí đo đạc, lập bản đồ địa chính: tối đa không quá 1.500 đồng/m2.</p>\n\n<p class=\"p2\">Phí thẩm định cấp quyền sử dụng đất: mức thu cao nhất không quá 7.500.000 đồng/hồ sơ.</p>\n\n<p class=\"p2\">Tiền sử dụng đất: nếu đất thuộc trường hợp giao không đúng thẩm quyền , không có giấy tờ theo điều 101 hoặc có giấy tờ trước năm 1993 theo điều 100 nêu trên</p>\n\n<p class=\"p1\"><b>CÁCH TÍNH TIỀN SỬ DỤNG ĐẤT</b></p>\n\n<p class=\"p2\">Tiền sử dụng đất được khoản 21 Điều 3 Luật Đất đai 2013 định nghĩa là số tiền mà người sử dụng đất phải trả cho Nhà nước khi Nhà nước giao đất có có thu tiền sử dụng đất, cho phép chuyển mục đích sử dụng đất, công nhận quyền sử dụng đất.</p>\n\n<p class=\"p2\">Cách tính tiền sử dụng đất</p>\n\n<p class=\"p2\">Theo Điều 4 Nghị định 45/2014/NĐ-CP được sửa đổi bởi khoản 1 Điều 2 Nghị định 135/2016/NĐ-CP, tiền sử dụng đất áp dụng với hộ gia đình, cá nhân được tính như sau:</p>\n\n<p class=\"p2\">– Trường hợp được giao đất thông qua hình thức đấu giá: Tiền sử dụng đất phải nộp là số tiền trúng đấu giá;</p>\n\n<p class=\"p2\">– Trường hợp được giao đất không qua hình thức đấu giá: Tiền sử dụng đất được tính theo công thức:</p>\n\n<p class=\"p2\"><b>Tiền sử dụng đất phải nộp = Giá đất tính thu tiền sử dụng đất theo mục đích sử dụng đất&nbsp; x&nbsp;&nbsp;Diện tích đất phải nộp tiền sử dụng đất –&nbsp;&nbsp;Tiền sử dụng đất được giảm theo quy định (nếu có) –&nbsp;&nbsp;Tiền bồi thường, giải phóng mặt bằng được trừ vào tiền sử dụng đất (nếu có)</b></p>\n\n<p class=\"p2\">– Chuyển từ đất nông nghiệp được Nhà nước giao không thu tiền sử dụng đất sang đất ở thì tiền sử dụng đất tính bằng bằng mức chênh lệch giữa tiền sử dụng đất tính theo giá đất ở với tiền sử dụng đất tính theo giá đất nông nghiệp;</p>\n\n<p class=\"p2\">– Chuyển từ đất vườn, ao trong cùng thửa đất có nhà ở thuộc khu dân cư sang làm đất ở thì tiền sử dụng đất bằng 50% chênh lệch giữa tiền sử dụng đất tính theo giá đất ở với tiền sử dụng đất tính theo giá đất nông nghiệp…</p>\n\n<p class=\"p2\">Trường hợp được miễn tiền sử dụng đất<br />\nĐiều 110 của Luật Đất đai mới nhất quy định khá cụ thể về các trường hợp được miễn tiền sử dụng đất, trong đó có:</p>\n\n<p class=\"p2\">– Sử dụng đất vào mục đích sản xuất, kinh doanh thuộc lĩnh vực ưu đãi đầu tư hoặc địa bàn ưu đãi đầu tư theo quy định của pháp luật về đầu tư, trừ dự án đầu tư xây dựng nhà ở thương mại;</p>\n\n<p class=\"p2\">– Sử dụng đất để thực hiện chính sách nhà ở, đất ở đối với người có công với cách mạng, hộ gia đình nghèo;</p>\n\n<p class=\"p2\">– Sử dụng đất sản xuất nông nghiệp đối với hộ gia đình, cá nhân là dân tộc thiểu số;</p>\n\n<p class=\"p2\">– Sử dụng đất xây dựng công trình sự nghiệp của các tổ chức sự nghiệp công lập…</p>\n\n<p class=\"p2\">Trên đây là những nội dung quan trọng nhất của Luật Đất đai 2018. Đây cũng là những quy định có liên quan trực tiếp đến hầu hết người sử dụng đất. Hiện tại, LuatVietnam đã cập nhật rất đầy đủ các văn bản hướng dẫn thi hành Luật Đất đai. Quý khách hàng vui lòng đăng ký tài khoản và sử dụng dịch vụ của LuatVietnam để tra cứu thông tin về các văn bản này.</p>\n\n<p class=\"p1\"><b>MỨC ĐỀN BÙ GIẢI PHÓNG MẶT BẰNG THEO QUY ĐỊNH CỦA NHÀ NƯỚC</b></p>\n\n<p class=\"p2\">Theo Điều 75 của Luật Đất đai mới nhất, hộ gia đình, cá nhân được đền bù khi Nhà nước thu hồi đất khi có Giấy chứng nhận quyền sử dụng đất hoặc có đủ điều kiện để được cấp Giấy chứng nhận quyền sử dụng đất.</p>\n\n<p class=\"p2\">Đồng thời, hộ gia đình và cá nhân nêu trên cũng chỉ được đền bù khi Nhà nước thu hồi đất vì mục đích quốc phòng, an ninh; phát triển kinh tế – xã hội vì lợi ích quốc gia, công cộng.</p>\n\n<p class=\"p2\">Việc đền bù được thực hiện bằng việc giao đất có cùng mục đích sử dụng đất với loại đất thu hồi. Nếu không có đất để bồi thường thì sẽ được bồi thường bằng tiền theo giá đất cụ thể của loại đất thu hồi do UBND cấp tỉnh quyết định tại thời điểm quyết định thu hồi.</p>\n\n<p class=\"p2\">Trong thời hạn 30 ngày kể từ ngày quyết định thu hồi đất của cơ quan nhà nước có thẩm quyền có hiệu lực thi hành, cơ quan, tổ chức có trách nhiệm bồi thường phải chi trả tiền đền bù cho người có đất thu hồi.</p>\n', '', '', 0, 0, 0, 999, '2019-10-11 01:10:49', b'1', 'quy-dinh-moi-nhat-ve-luat-dat-dai-nam-2019-cho-nguoi-mua-nha', 'Quy định mới nhất về luật đất đai năm 2019 cho người mua nhà ', 'lua dat dai 2019, luat dat 2019', 'Luật Đất đai 45/2013/QH13 được Quốc hội thông qua ngày 29/11/2013 và chính thức có hiệu lực từ ngày 01/07/2014. Đến nay, đây vẫn là luật gốc được căn cứ để điều chỉnh mọi hoạt động liên quan đến quản lý, sử dụng đất đai. Dưới đây là bài viết tổng hợp về những điểm thay đổi mới nhất trong quy định đất đai, những trường hợp bị thu hồi đất, những khoản phí thuế cần phải thực hiện khi làm các thủ tục liên quan đến nhà đất.', 8, '2019-10-10 18:09:00', 1, '2019-10-11 07:51:20', 1, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', ''),
(372, 'Thủ tục làm Sổ đỏ 2019 mới nhất', '', '', 'tin-tuc/', 'thu-tuc-lam-so-do.jpg', 'Thủ tục làm Sổ đỏ 2019 mới nhất', 'thu-tuc-lam-so-di', '', '', '', '<p class=\"p1\"><b>Hiện nay, thủ tục xin cấp Sổ đỏ là một trong những thủ tục mà người dân khó thực hiện nhất. Dưới đây là hướng dẫn thủ tục làm Sổ đỏ 2019 với các quy định từ điều kiện được cấp Sổ đỏ, hồ sơ, các bước thực hiện thủ tục; các khoản tiền phải nộp.</b></p>\n\n<p class=\"p2\"><b>1. Sổ đỏ là gì?</b></p>\n\n<p class=\"p1\">Theo khoản 16 Điều 3 Luật Đất đai 2013 quy định: Giấy chứng nhận quyền sử đụng đất (QSDĐ), quyền sở hữu nhà ở và tài sản khác gắn liền với đất là chứng thư pháp lý để Nhà nước xác nhận QSDĐ, quyền sở hữu nhà ở, tài sản khác gắn liền với đất hợp pháp của người có QSDĐ, quyền sở hữu nhà ở và quyền sở hữu tài sản khác gắn liền với đất.</p>\n\n<p class=\"p1\">Như vậy, Sổ đỏ là từ mà người dân thường sử dụng để gọi Giấy chứng nhận quyền sử dụng đất, quyền sở hữu nhà ở và tài sản khác gắn liền với đất căn cứ vào màu sắc của giấy chứng nhận.</p>\n\n<p class=\"p1\">Tuy từ Sổ đỏ không có giá trị pháp lý nhưng tác giả vẫn sử dụng nhằm thuận tiện cho việc tiếp cận và dễ hiểu của người dân trong quá trình xin cấp Giấy chứng nhận.<br />\n&nbsp;</p>\n\n<p class=\"p2\"><b>2. Điều kiện được cấp Sổ đỏ<br />\n&nbsp;</b></p>\n\n<p class=\"p1\"><b><i>2.1. Cấp Sổ đỏ khi có giấy tờ về QSDĐ</i></b></p>\n\n<p class=\"p1\">Có giấy tờ về QSDĐ được chia thành cách trường hợp sau:</p>\n\n<p class=\"p1\"><i>Trường hợp 1: Hộ gia đình, có giấy tờ về QSDĐ (Không mang tên người khác)</i></p>\n\n<p class=\"p1\">Theo khoản 1&nbsp;<a href=\"https://luatvietnam.vn/dat-dai/luat-dat-dai-2013-83386-d1.html#demuc83386115\"><span class=\"s1\">Điều 100&nbsp;Luật Đất đai năm 2013</span></a>, hộ gia đình, cá nhân đang sử dụng đất ổn định mà có một trong các loại giấy tờ sau thì được cấp Sổ đỏ và&nbsp;<b>không phải nộp tiền sử dụng đất</b>.</p>\n\n<p class=\"p1\">- Những giấy tờ về quyền được sử dụng đất trước ngày 15/10/1993 do cơ quan có thẩm quyền cấp trong quá trình thực hiện chính sách đất đai của&nbsp;Nhà nước Việt Nam dân chủ Cộng hòa, Chính phủ Cách mạng lâm thời Cộng hòa miền Nam Việt Nam và Nhà nước Cộng hòa xã hội chủ nghĩa Việt Nam;</p>\n\n<p class=\"p1\">- Giấy chứng nhận QSDĐ tạm thời được cơ quan nhà nước có thẩm quyền cấp hoặc có tên trong Sổ đăng ký ruộng đất, Sổ địa chính trước ngày 15/10/1993 (<i>ngày Luật Đất đai 1993 có hiệu lực</i>);</p>\n\n<p class=\"p1\">- Giấy tờ hợp pháp về thừa kế, tặng cho QSDĐ hoặc tài sản gắn liền với đất; giấy tờ giao nhà tình nghĩa, nhà tình thương gắn liền với đất;</p>\n\n<p class=\"p1\">- Giấy tờ chuyển nhượng QSDĐ, mua bán nhà ở gắn liền với đất ở trước ngày 15/10/1993 được UBND cấp xã xác nhận là đã sử dụng trước ngày 15/10/1993;</p>\n\n<p class=\"p1\">- Giấy tờ thanh lý, hóa giá nhà ở gắn liền với đất ở; giấy tờ mua nhà ở thuộc sở hữu nhà nước theo quy định của pháp luật;</p>\n\n<p class=\"p1\">- Giấy tờ về QSDĐ do cơ quan có thẩm quyền thuộc chế độ cũ cấp cho người sử dụng đất như: Bằng khoán điền thổ; Văn tự mua bán nhà ở…</p>\n\n<p class=\"p1\">- Các loại giấy tờ khác được xác lập trước ngày 15/10/1993 như: Sổ mục kê đất, sổ kiến điền lập trước ngày 18/12/1980; Biên bản xét duyệt của Hội đồng đăng ký ruộng đất cấp xã xác định người đang sử dụng đất là hợp pháp…</p>\n\n<p class=\"p3\"><span class=\"s2\">Xem thêm:&nbsp;<a href=\"https://luatvietnam.vn/dat-dai-nha-o/giay-to-ve-quyen-su-dung-dat-de-lam-so-do-567-20228-article.html\"><span class=\"s1\">Giấy tờ về quyền sử dụng đất để làm Sổ đỏ</span></a></span></p>\n\n<p class=\"p1\"><i>Trường hợp 2: Có giấy tờ nhưng giấy tờ nhưng ghi tên người khác</i></p>\n\n<p class=\"p1\">Theo khoản 2 Điều 100 Luật đất đai 2013 hộ gia đình, cá nhân được cấp Sổ đỏ và không phải nộp tiền sử dụng đất nếu:</p>\n\n<p class=\"p1\">+ Đang sử dụng đất có một trong các loại giấy tờ trên mà trên giấy tờ đó ghi tên người khác, kèm theo giấy tờ về việc chuyển QSDĐ có chữ ký của các bên có liên quan (do mua bán, tặng cho mà chưa sang tên…),</p>\n\n<p class=\"p1\">+ Nhưng đến trước ngày 01/7/2014 chưa thực hiện thủ tục chuyển QSDĐ,</p>\n\n<p class=\"p1\">+ Không có tranh chấp thì được cấp Sổ.</p>\n\n<p class=\"p1\"><i>Trường hợp 3: Hộ gia đình, cá nhân được sử dụng đất theo bản án, quyết định của Tòa án, kết quả hòa giải…</i></p>\n\n<p class=\"p1\">-&nbsp;Hộ gia đình, cá nhân được sử dụng đất theo bản án hoặc quyết định của Tòa án nhân dân,</p>\n\n<p class=\"p1\">- Quyết định thi hành án của cơ quan thi hành án,</p>\n\n<p class=\"p1\">- Văn bản công nhận kết quả hòa giải thành,</p>\n\n<p class=\"p1\">- Quyết định giải quyết tranh chấp, khiếu nại, tố cáo về đất đai của cơ quan nhà nước có thẩm quyền đã được thi hành.</p>\n\n<p class=\"p1\">Lưu ý: Khi xin cấp Sổ đỏ nếu chưa thực hiện nghĩa vụ tài chính thì phải nộp tiền.</p>\n\n<p class=\"p1\"><i>Trường hợp 4: Hộ gia đình, cá nhân đang sử dụng đất được Nhà nước giao, cho thuê đất từ ngày 15/10/1993 đến ngày 01/7/2014 mà chưa được cấp Sổ thì được cấp Sổ; trường hợp chưa thực hiện nghĩa vụ tài chính thì phải thực hiện.</i><br />\n<b>&nbsp;</b></p>\n\n<p class=\"p1\"><b><i>2.2. Cấp Sổ đỏ khi không có giấy tờ về QSDĐ</i></b></p>\n\n<p class=\"p1\">Theo Điều 101 Luật Đất đai 2013, hộ gia đình, cá nhân không có giấy tờ về QSDĐ vẫn được cấp Sổ đỏ. Cụ thể:</p>\n\n<p class=\"p1\"><i>Trường hợp 1: Không phải nộp tiền sử dụng đất</i></p>\n\n<p class=\"p1\">Hộ gia đình, cá nhân không có các giấy tờ về QSDĐ được cấp Sổ đỏ và không phải nộp tiền sử dụng đất khi có&nbsp;<b>đủ 03 điều kiện</b>&nbsp;sau:</p>\n\n<p class=\"p1\">- Hộ gia đình, cá nhân đang sử dụng đất trước ngày 01/7/2014;</p>\n\n<p class=\"p1\">- Có hộ khẩu thường trú tại địa phương và trực tiếp sản xuất nông nghiệp, lâm nghiệp, nuôi trồng thủy sản, làm muối tại vùng có điều kiện kinh tế - xã hội khó khăn, vùng có điều kiện kinh tế - xã hội đặc biệt khó khăn;</p>\n\n<p class=\"p1\">- Được UBND cấp xã nơi có đất xác nhận là người đã sử dụng đất ổn định, không có tranh chấp.</p>\n\n<p class=\"p1\">Hộ gia đình, cá nhân thuộc trường hợp này làm đơn xác nhận tình trạng sử dụng đất ổn định và xin xác nhận tại UBND cấp xã. Giấy xác nhận sẽ kèm theo hồ sơ khi xin cấp Sổ đỏ.</p>\n\n<p class=\"p1\"><i>Trường hợp 2: Phải nộp tiền sử dụng đất</i></p>\n\n<p class=\"p1\">Hộ gia đình, cá nhân được cấp Sổ đỏ và phải nộp tiền sử dụng đất khi&nbsp;<b>có đủ 03 điều kiện</b>&nbsp;sau:</p>\n\n<p class=\"p1\">- Đang sử dụng đất không có giấy tờ về QSDĐ nhưng đất đã được sử dụng ổn định từ trước ngày 01/7/2004;</p>\n\n<p class=\"p1\">- Đất đang sử dụng không vi phạm pháp luật về đất đai;</p>\n\n<p class=\"p1\">- Được UBND cấp xã xác nhận là đất không có tranh chấp, phù hợp với quy hoạch.</p>\n\n<p class=\"p1\">Ngoài ra, trường hợp sử dụng đất vi phạm như lấn, chiếm có thể được cấp Sổ đỏ. Để biết rõ về quy định này hãy xem tại:&nbsp;<a href=\"https://luatvietnam.vn/dat-dai-nha-o/cap-so-do-cho-dat-vi-pham-567-19310-article.html\"><span class=\"s1\">Cấp Sổ đỏ cho đất vi phạm.</span></a><br />\n&nbsp;</p>\n\n<p class=\"p2\"><b>3. Hồ sơ xin cấp Giấy chứng nhận lần đầu<br />\n&nbsp;</b></p>\n\n<p class=\"p1\"><b><i>3.1. Hồ sơ xin cấp Sổ đỏ khi có giấy tờ</i></b></p>\n\n<p class=\"p1\">Khi có nhu cầu xin cấp Sổ đỏ, điều đầu tiên là hộ gia đình, cá nhân có yêu cầu cần chuẩn bị 1 bộ hồ sơ, gồm các đơn, giấy tờ sau đây:</p>\n\n<p class=\"p1\">1 - Đơn đăng ký, cấp sổ đỏ theo&nbsp;<a href=\"https://cms.luatvietnam.vn/uploaded/Others/2019/04/05/don-xin-cap-so-do_0504173624.doc\"><span class=\"s1\">Mẫu số 04a/ĐK</span></a>;</p>\n\n<p class=\"p1\">2 - Một trong các loại giấy tờ về QSDĐ quy định tại Điều 100 Luật Đất đai 2013 và Điều 18 Nghị định 43/2014/NĐ-CP (nộp bản sao, xuất trình bản chính để đối chiếu).</p>\n\n<p class=\"p1\">(<b><i>Các giấy tờ này xem tại mục 2.1. Cấp Sổ đỏ khi có giấy tờ về QSDĐ ở trên</i></b>)</p>\n\n<p class=\"p1\">3 - Giấy tờ về tài sản gắn liền với đất như:</p>\n\n<p class=\"p1\">+ Giấy chứng nhận về quyền sở hữu nhà ở, giấy chứng nhận công trình xây dựng không phải là nhà ở,</p>\n\n<p class=\"p1\">+ Chứng nhận quyền sở hữu rừng sản xuất là rừng trồng,</p>\n\n<p class=\"p1\">+ Chứng nhận quyền sở hữu cây lâu năm (nếu có tài sản và có yêu cầu chứng nhận quyền sở hữu).</p>\n\n<p class=\"p1\">Trường hợp đăng ký về quyền sở hữu nhà ở hoặc công trình xây dựng thì phải có sơ đồ nhà ở, công trình xây dựng (trừ trường hợp trong giấy tờ về quyền sở hữu nhà ở, công trình xây dựng đã có sơ đồ phù hợp với hiện trạng nhà ở, công trình đã xây dựng);</p>\n\n<p class=\"p1\">4 - Chứng từ thực hiện nghĩa vụ tài chính (như biên lai nộp thuế, tiền sử dụng đất…); giấy tờ liên quan đến việc miễn, giảm nghĩa vụ tài chính về đất đai, tài sản gắn liền với đất (nếu có);</p>\n\n<p class=\"p1\">5 - Các giấy tờ khác như: Sổ hộ khẩu, chứng minh nhân dân hoặc thẻ căn cước...</p>\n\n<p class=\"p1\"><b><i>Lưu ý:</i></b></p>\n\n<p class=\"p1\">- Đối với người Việt Nam định cư ở nước ngoài thuộc đối tượng và đủ điều kiện được sở hữu nhà ở và sử dụng đất ở Việt Nam thì phải giấy chứng minh theo quy định.</p>\n\n<p class=\"p1\">- Trường hợp người sử dụng đất đã đăng ký đất đai mà nay có nhu cầu được cấp Sổ đỏ thì chỉ phải nộp đơn đề nghị cấp sổ đỏ Mẫu số 04a/ĐK.</p>\n\n<p class=\"p1\"><b><i>3.2. Hồ sơ xin cấp Sổ đỏ khi không có giấy tờ</i></b></p>\n\n<p class=\"p1\">Theo khoản 1 Điều 8 Thông tư 24/2014/TT-BTNMT hộ gia đình, cá nhân cần chuẩn bị 01 bộ hồ sơ như sau:</p>\n\n<p class=\"p1\">- Đơn đăng ký, cấp sổ đỏ theo&nbsp;<a href=\"https://luatvietnam.vn/bieu-mau/huong-dan-viet-don-xin-cap-so-do-571-19313-article.html\"><span class=\"s1\">Mẫu số 04a/ĐK</span></a>;</p>\n\n<p class=\"p1\">- Bản sao chứng từ thực hiện nghĩa vụ tài chính như Biên lai nộp thuế, tiền sử dụng đất…; giấy tờ liên quan đến việc miễn, giảm nghĩa vụ tài chính về đất đai, tài sản gắn liền với đất (nếu có);</p>\n\n<p class=\"p1\">Ngoài ra, khi nộp hồ sơ phải xuất trình chứng minh nhân dân hoặc thẻ căn cước công dân.</p>\n\n<p class=\"p1\">Lưu ý:&nbsp;</p>\n\n<p class=\"p1\">Tuy là đất không có giấy tờ nhưng nếu có nhà ở, công trình xây dựng khác trên đất không giấy tờ mà hộ gia đình, cá nhân có nhu cầu chứng nhận quyền sở hữu với nhà ở, công trình xây dựng đó thì phải nộp thêm giấy tờ về quyền sở hữu (ghi thông tin nhà ở, công trình xây dựng khác vào Sổ đỏ), cụ thể:</p>\n\n<p class=\"p3\"><span class=\"s2\">+&nbsp;<a href=\"https://luatvietnam.vn/dat-dai-nha-o/dieu-kien-cap-so-do-cho-nha-o-567-21610-article.html\"><span class=\"s1\">Bản sao một trong các giấy tờ về quyền sở hữu nhà ở</span></a>;</span></p>\n\n<p class=\"p3\"><span class=\"s2\">+&nbsp;<a href=\"https://luatvietnam.vn/dat-dai-nha-o/dieu-kien-cap-so-do-cho-cong-trinh-xay-dung-khong-phai-la-nha-o-567-21673-article.html\"><span class=\"s1\">Bản sao một trong các giấy tờ về quyền sở hữu công trình xây dựng</span></a>.<br />\n&nbsp;</span></p>\n\n<p class=\"p2\"><b>4. Thủ tục cấp Sổ đỏ lần đầu<br />\n&nbsp;</b></p>\n\n<p class=\"p1\"><b><i>Các bước thực hiện:</i></b></p>\n\n<p class=\"p1\">Theo Điều 70&nbsp;Nghị định 43/2014/NĐ-CP&nbsp;thủ tục cấp Sổ đỏ lần đầu được thực hiện qua các bước sau:</p>\n\n<p class=\"p1\"><i>Bước 1. Nộp hồ sơ</i></p>\n\n<p class=\"p1\">- Hộ gia đình, cá nhân nộp hồ sơ tại Chi nhánh Văn phòng đăng ký đất đai ở huyện, quận, thị xã, thành phố thuộc tỉnh.</p>\n\n<p class=\"p1\">- Hộ gia đình, cá nhân nộp hồ sơ tại UBND cấp xã nếu có nhu cầu.</p>\n\n<p class=\"p1\">Lưu ý: Địa phương nào đã thành lập Bộ phận một cửa thì nộp hồ sơ tại Bộ phận một cửa.</p>\n\n<p class=\"p1\"><i>Bước 2: Tiếp nhận và xử lý</i></p>\n\n<p class=\"p1\">Trường hợp 1: Nếu hồ sơ thiếu</p>\n\n<p class=\"p1\">- Nếu hồ sơ chưa đầy đủ, chưa hợp lệ thì phải thông báo và hướng dẫn người nộp hồ sơ bổ sung (trong thời hạn 03 ngày làm việc).</p>\n\n<p class=\"p1\">Trường hợp 2: Nếu hồ sơ đủ</p>\n\n<p class=\"p1\">- Công chức tiếp nhận hồ sơ có trách nhiệm ghi đầy đủ thông tin vào Sổ tiếp nhận;</p>\n\n<p class=\"p1\">- Viết và đưa Phiếu tiếp nhận hồ sơ cho người nộp;</p>\n\n<p class=\"p1\"><i>Xử lý yêu cầu cấp Sổ cho hộ gia đình, cá nhân:</i></p>\n\n<p class=\"p1\">- Văn phòng đăng ký đất đai sẽ thông báo các khoản tiền phải nộp cho hộ gia đình, cá nhân có yêu cầu cấp Sổ.</p>\n\n<p class=\"p1\">- Hộ gia đình, cá nhân có nghĩa vụ đóng các khoản tiền theo quy định như: Lệ phí cấp giấy chứng nhận, tiền sử dụng đất (nếu có). Khi nộp tiền xong thì giữ hóa đơn, chứng từ để xác nhận việc đã thực hiện nghĩa vụ tài chính.</p>\n\n<p class=\"p1\"><i>Bước 3. Trả kết quả</i></p>\n\n<p class=\"p1\">- Chi nhánh Văn phòng đăng ký đất đai sẽ trao Sổ đỏ cho người được cấp đã nộp chứng từ hoàn thành nghĩa vụ tài chính hoặc gửi Sổ đỏ cho UBND cấp xã để trao hộ gia đình, cá nhân nộp hồ sơ tại cấp xã.</p>\n\n<p class=\"p1\"><b><i>Thời gian giải quyết:</i></b></p>\n\n<p class=\"p1\">Theo khoản 40 Điều 2 Nghị định 01/2017/NĐ-CP thời hạn cấp Sổ đỏ được quy định như sau:</p>\n\n<p class=\"p1\">- Không quá 30 ngày kể từ ngày nhận được hồ sơ hợp lệ; không quá 40 ngày với các xã miền núi, hải đảo, vùng sâu, vùng xa, vùng có điều kiện kinh tế - xã hội khó khăn, vùng có điều kiện kinh tế - xã hội đặc biệt khó khăn.</p>\n\n<p class=\"p1\">- Thời hạn cấp Sổ đỏ không tính các khoảng thời gian sau:</p>\n\n<p class=\"p1\">+ Các ngày nghỉ, ngày lễ theo quy định của pháp luật;</p>\n\n<p class=\"p1\">+ Thời gian tiếp nhận hồ sơ tại xã;</p>\n\n<p class=\"p1\">+ Thời gian thực hiện nghĩa vụ tài chính của người sử dụng đất;</p>\n\n<p class=\"p1\">+ Thời gian xem xét xử lý đối với trường hợp sử dụng đất có vi phạm pháp luật;</p>\n\n<p class=\"p1\">+ Thời gian trưng cầu giám định.<br />\n&nbsp;</p>\n\n<p class=\"p2\"><b>5. Thủ tục sang tên Sổ đỏ<br />\n&nbsp;</b></p>\n\n<p class=\"p1\">Thủ tục sang tên sổ đỏ áp dụng trong các trường hợp chuyển nhượng, tặng cho QSDĐ, nhà ở</p>\n\n<p class=\"p1\"><b><i>Bước 1. Đặt cọc (áp dụng khi sang tên Sổ đỏ trong trường hợp chuyển nhượng)</i></b></p>\n\n<p class=\"p1\">Để quá trình chuyển nhượng thuận lợi, trên thực tế các bên chuyển nhượng thường sẽ lập hợp đồng đặt cọc một khoản tiền trước khi lập hợp đồng chuyển nhượng tại tổ chức công chứng.</p>\n\n<p class=\"p1\">Xem mẫu hợp đồng và hướng dẫn ghi các điều khoản của hợp đông đặt cọc tại:&nbsp;<a href=\"https://luatvietnam.vn/bieu-mau/hop-dong-dat-coc-mua-ban-nha-dat-571-19490-article.html\"><span class=\"s1\">Mẫu Hợp đồng đặt cọc mua bán nhà đất</span></a>.</p>\n\n<p class=\"p1\"><b><i>Bước 2. Lập hợp đồng và công chứng hợp đồng</i></b></p>\n\n<p class=\"p1\">Hợp đồng chuyển nhượng QSDĐ là một trong những hợp đồng bắt buộc phải công chứng. Do đó, các bên chuyển nhượng cần thiết lập hợp đồng chuyển nhượng và đến tổ chức công chứng thực hiện công chứng hợp đồng (hoặc tới tổ chức công chức lập hợp đồng và công chứng hợp đồng chuyển nhượng).</p>\n\n<p class=\"p1\">Theo khoản 1 Điều 40 của&nbsp;<a href=\"https://luatvietnam.vn/hanh-chinh/luat-53-2014-qh13-quoc-hoi-87931-d1.html\"><span class=\"s1\">Luật Công chứng 2014</span></a>, hồ sơ, giấy tờ cần chuẩn bị bao gồm:</p>\n\n<p class=\"p1\">- Phiếu yêu cầu công chứng;</p>\n\n<p class=\"p1\">- Dự thảo hợp đồng, giao dịch (nếu các bên chuẩn trước, nếu không thì yêu cầu công chứng viên soạn hợp đồng chuyển nhượng)</p>\n\n<p class=\"p1\">- Giấy chứng nhận QSDĐ;</p>\n\n<p class=\"p1\">- Giấy tờ tùy thân của hai bên (CMND hoặc hộ chiếu hoặc thẻ căn cước…);</p>\n\n<p class=\"p1\">- Giấy xác nhận tình trạng hôn nhân nếu còn độc thân hoặc Giấy đăng ký kết hôn nếu đã có gia đình của hai bên;</p>\n\n<p class=\"p1\">- Sổ hộ khẩu của hai bên.</p>\n\n<p class=\"p3\"><span class=\"s2\">Xem thêm:&nbsp;<a href=\"https://luatvietnam.vn/tin-phap-luat/phi-cong-chung-mua-ban-nha-dat-230-18166-article.html\"><span class=\"s1\">Phí công chứng hợp đồng mua bán nhà đất 2019</span></a></span></p>\n\n<p class=\"p1\"><b><i>Bước 3. Kê khai và thực hiện nghĩa vụ tài chính</i></b></p>\n\n<p class=\"p1\">Khi kê khai nghĩa vụ tài chính, hai bên cần chuẩn bị một bộ hồ sơ như sau:</p>\n\n<p class=\"p1\">- Tờ khai lệ phí trước bạ,</p>\n\n<p class=\"p1\">- Tờ khai thuế thu nhập cá nhân,</p>\n\n<p class=\"p1\">- Hợp đồng chuyển nhượng đã được công chứng;</p>\n\n<p class=\"p1\">- Giấy chứng nhận quyền sở hữu đất,</p>\n\n<p class=\"p1\">- Bản sao CMND, sổ hộ khẩu của cả hai bên.</p>\n\n<p class=\"p1\">Trong đó, mức thuế thu nhập cá nhân và lệ phí trước bạ phải nộp được quy định như sau:</p>\n\n<p class=\"p1\">- Thuế thu nhập cá nhân phải nộp bằng 2 % giá chuyển chuyển nhượng.</p>\n\n<p class=\"p1\">- Lệ phí trước bạ với nhà đất bằng 0,5 % giá chuyển nhượng.</p>\n\n<p class=\"p1\"><b><i>Bước 4. Nộp hồ sơ sang tên tại Chi nhánh Văn phòng đăng ký đất đai ở huyện, quận, thị xã, thành phố thuộc tỉnh</i></b></p>\n\n<p class=\"p1\">Thành phần hồ sơ bao gồm:</p>\n\n<p class=\"p1\">- Đơn đề nghị theo mẫu;</p>\n\n<p class=\"p1\">- Sổ hộ khẩu, CMND của bên mua;</p>\n\n<p class=\"p1\">- Giấy chứng nhận QSDĐ;</p>\n\n<p class=\"p1\">- Hợp đồng chuyển nhượng đã công chứng...</p>\n\n<p class=\"p1\">Khi nộp hồ sơ, người mua còn phải nộp thêm một số khoản lệ phí khác như: Lệ phí địa chính; Lệ phí thẩm định; Lệ phí cấp Sổ đỏ….</p>\n\n<p class=\"p1\">Thời hạn thực hiện: Không quá 10 ngày làm việc (theo&nbsp;<a href=\"https://luatvietnam.vn/dat-dai/nghi-dinh-01-2017-nd-cp-chinh-phu-111728-d1.html\"><span class=\"s1\">Nghị định 01/2017/NĐ-CP</span></a>)<br />\n<b>&nbsp;</b></p>\n\n<p class=\"p2\"><b>6. Thủ tục làm Sổ đỏ 2019 hết bao nhiêu tiền?<br />\n&nbsp;</b></p>\n\n<p class=\"p1\"><b>- Áp dụng với trường hợp xin cấp giấy chứng nhận lần đầu.</b></p>\n\n<p class=\"p1\">- Người có yêu cầu phải nộp một số khoản tiền nhất định, gồm: Lệ phí trước bạ, lệ phí cấp sổ, tiền sử dụng đất (nếu có).</p>\n\n<p class=\"p1\"><b><i>Lệ phí trước bạ:</i></b></p>\n\n<p class=\"p1\">Theo Điều 5&nbsp;<a href=\"https://luatvietnam.vn/thue/nghi-dinh-140-2016-nd-cp-chinh-phu-109452-d1.html\"><span class=\"s1\">Nghị định 140/2016/NĐ-CP</span></a>&nbsp;lệ phí trước bạ khi làm Sổ đỏ được tính như sau:</p>\n\n<p class=\"p1\">Lệ phí trước bạ phải nộp&nbsp;&nbsp; &nbsp;=&nbsp;&nbsp; &nbsp;(Giá đất tại Bảng giá đất x Diện tích)&nbsp;&nbsp; &nbsp;x&nbsp;&nbsp; &nbsp;0.5%</p>\n\n<p class=\"p1\">+ Giá tính lệ phí trước bạ đối với đất là giá đất tại Bảng giá đất do UBND cấp tỉnh ban hành tại thời điểm kê khai lệ phí trước bạ.</p>\n\n<p class=\"p1\">+ Diện tích đất chịu lệ phí trước bạ là toàn bộ diện tích thửa đất thuộc quyền sử dụng hợp pháp của tổ chức, cá nhân do Chi nhánh Văn phòng đăng ký đất đai xác định và cung cấp cho cơ quan Thuế.</p>\n\n<p class=\"p1\">Ví dụ:</p>\n\n<p class=\"p1\">Ông Nguyễn Minh T, có thửa đất ở 100m2, giá đất ở chỗ có thửa đất của Ông T là 2.000.000đ/m2, khi đi làm Sổ đỏ ông T phải nộp lệ phí trước bạ là:</p>\n\n<p class=\"p1\">Lệ phí trước bạ&nbsp;&nbsp; &nbsp;=&nbsp;&nbsp; &nbsp;200.000.000 đồng&nbsp;&nbsp; &nbsp;x&nbsp;&nbsp; &nbsp;0,5%&nbsp;&nbsp; &nbsp;= 1.000.000 đồng</p>\n\n<p class=\"p1\">Như vậy, số tiền lệ phí trước bạ Ông T phải nộp khi làm Sổ là 01 triệu đồng.</p>\n\n<p class=\"p1\"><b><i>Tiền sử dụng đất:</i></b></p>\n\n<p class=\"p1\">Khi làm sổ đỏ, người có yêu cầu thuộc một số trường hợp sau thì phải nộp tiền sử dụng đất.</p>\n\n<p class=\"p1\"><i>- Trường hợp 1</i>: Hộ gia đình, cá nhân đang sử dụng đất mà không có giấy tờ về QSDĐ.</p>\n\n<p class=\"p1\"><i>- Trường hợp 2</i>: Hộ gia đình, cá nhân đang sử dụng đất được Nhà nước giao đất, cho thuê đất từ ngày 15/10/1993 đến ngày 01/7/2014 khi được cấp Sổ đỏ mà chưa nộp tiền sử dụng đất thì phải thực hiện nộp tiền.</p>\n\n<p class=\"p1\"><i>- Trường hợp 3:</i>&nbsp;Hộ gia đình, cá nhân được sử dụng đất theo bản án, quyết định của Tòa án, kết quả hòa giải…nếu chưa nộp thì phải nộp tiền sử dụng đất.</p>\n\n<p class=\"p1\">Mức tiền sử dụng đất phải nộp khi làm Sổ theo thông báo của cơ quan Thuế.</p>\n\n<p class=\"p1\"><b><i>Lệ phí cấp Sổ đỏ:</i></b></p>\n\n<p class=\"p1\">Theo&nbsp;<a href=\"https://luatvietnam.vn/thue/thong-tu-250-2016-tt-btc-bo-tai-chinh-110667-d1.html\"><span class=\"s1\">Thông tư 250/2016/TT-BTC</span></a>, lệ phí cấp Sổ đỏ thực hiện theo mức thu do HĐND cấp tỉnh quyết định.</p>\n\n<p class=\"p3\"><span class=\"s2\">Xem chi tiết tại:&nbsp;<a href=\"https://luatvietnam.vn/dat-dai-nha-o/toan-bo-chi-phi-lam-so-do-63-tinh-thanh-567-21546-article.html\"><span class=\"s1\">Lệ phí cấp Sổ đỏ của 63 tỉnh thành</span></a></span></p>\n\n<p class=\"p1\">Ngoài các khoản tiền phải nộp trên, khi xin cấp Sổ đỏ, người có yêu cầu phải nộp các khoản phí khác như: Phí đo đạc, phí thẩm định thửa đất…</p>\n\n<p class=\"p1\">Mức thu tùy theo quy định cụ thể của từng tỉnh.<br />\n&nbsp;</p>\n\n<p class=\"p2\"><b>7. Chậm cấp Sổ đỏ, người dân nên làm gì?<br />\n&nbsp;</b></p>\n\n<p class=\"p1\">Theo Điều 204 Luật Đất đai 2013 khi quá thời hạn thì người dân có quyền khiếu nại, khởi kiện quyết định hành chính hoặc hành vi hành chính về quản lý đất đai.</p>\n\n<p class=\"p1\"><b><i>Khiếu nại về việc chậm cấp hoặc từ chối cấp Sổ đỏ dù có đủ điều kiện</i></b></p>\n\n<p class=\"p1\">Khiếu nại bằng 01 trong 02 hình thức:</p>\n\n<p class=\"p1\"><i>Hình thức 1: Khiếu nại bằng đơn</i></p>\n\n<p class=\"p1\">Bước 1. Chuẩn bị đơn khiếu nại</p>\n\n<p class=\"p1\">Theo Điều 8 Luật Khiếu nại 2011 thì người khiếu nại phải chuẩn bị đơn khiếu nại.</p>\n\n<p class=\"p1\">Nội dung đơn khiếu nại:</p>\n\n<p class=\"p1\">+ Phải ghi rõ ngày, tháng, năm khiếu nại;</p>\n\n<p class=\"p1\">+ Tên, địa chỉ của người khiếu nại;</p>\n\n<p class=\"p1\">+ Tên, địa chỉ của cơ quan, tổ chức, cá nhân bị khiếu nại;</p>\n\n<p class=\"p1\">+ Nội dung, lý do khiếu nại, tài liệu liên quan đến nội dung khiếu nại và yêu cầu giải quyết của người khiếu nại.</p>\n\n<p class=\"p1\">+ Đơn khiếu nại phải do người khiếu nại ký tên hoặc điểm chỉ.</p>\n\n<p class=\"p1\">Bước 2. Gửi đến Trưởng phòng Tài nguyên và Môi trường.</p>\n\n<p class=\"p1\"><i>Hình thức 2: Khiếu nại trực tiếp</i></p>\n\n<p class=\"p1\">- Người khiếu nại đến khiếu nại trực tiếp thì người tiếp nhận khiếu nại</p>\n\n<p class=\"p1\">- Người trực tiếp nhận khiếu nại hướng dẫn người khiếu nại viết đơn khiếu nại hoặc người tiếp nhận ghi lại việc khiếu nại bằng văn bản và yêu cầu người khiếu nại ký hoặc điểm chỉ xác nhận vào văn bản, trong đó ghi rõ nội dung như khiếu nại bằng đơn.</p>\n\n<p class=\"p3\"><span class=\"s2\">Xem chi tiết tại:&nbsp;<a href=\"https://luatvietnam.vn/dat-dai-nha-o/thu-tuc-khieu-nai-dat-dai-567-21517-article.html\"><span class=\"s1\">Thủ tục khiếu nại đất đai 2019: Những hướng dẫn chi tiết nhất</span></a></span></p>\n\n<p class=\"p1\"><b><i>Khởi kiện tại Tòa án nhân dân</i></b></p>\n\n<p class=\"p1\">- Đối tượng khởi kiện là quyết định hành chính, hành vi hành chính về chậm cấp, từ chối cấp dù có đủ điều kiện hoặc các hành vi tiêu cực khác khi làm Sổ đỏ.</p>\n\n<p class=\"p1\">- Theo Điều 31&nbsp;<a href=\"https://luatvietnam.vn/hanh-chinh/luat-to-tung-hanh-chinh-2015-101331-d1.html\"><span class=\"s1\">Luật Tố tụng Hành chính 2015</span></a>, hộ gia đình, cá nhân nộp đơn khởi kiện tại Tòa án nhân dân cấp huyện nơi có Chi nhánh Văn phòng đăng ký đất đai.</p>\n\n<p class=\"p1\">Tuy nhiên, trên thực tế 02 quyền này thực hiện không hiệu quả xuất phát từ nguyên nhân: Người dân không biết quyền và cách thức thực hiện; khó thực hiện…</p>\n', '', '', 0, 0, 0, 999, '2019-10-11 15:46:29', b'1', 'thu-tuc-lam-so-do-2019-moi-nhat', 'Thủ tục làm Sổ đỏ 2019 mới nhất ', 'thu tuc lam so do, thủ tục làm sổ đỏ ', 'Hiện nay, thủ tục xin cấp Sổ đỏ là một trong những thủ tục mà người dân khó thực hiện nhất. Dưới đây là hướng dẫn thủ tục làm Sổ đỏ 2019 với các quy định từ điều kiện được cấp Sổ đỏ, hồ sơ, các bước thực hiện thủ tục; các khoản tiền phải nộp.', 8, '2019-10-11 08:09:53', 1, '2019-10-11 08:46:40', 1, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', ''),
(368, 'LIÊN HỆ', '', '', 'tin-tuc/', 'lien-he3.png', '', 'lien-he', '', '', '', '<p>CÔNG TY TNHH THANH NAM LAND&nbsp; VIỆT NAM<br />\nĐịa chỉ: 89 Trần Thánh Tông - P.Thống Nhất - Nam Định&nbsp;<br />\nTư vấn : 096.943.9221<br />\nEmail: nhadatthanhnam2001@gmail.com</p>\n', '', '', 0, 0, 0, 999, '2019-10-13 00:53:19', b'1', 'lien-he', 'LIÊN HỆ', 'LIÊN HỆ', '', 8, '2019-09-29 15:45:59', 1, '2019-10-12 17:53:19', 1, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', ''),
(373, 'Quy trình cho vay mua nhà năm 2019', '', '', 'tin-tuc/', 'mua-nha-qua-ngan-hang.jpg', 'Quy trình cho vay mua nhà năm 2019', 'quy-trinh-mua-nha-qua-ngan-hang', '', '', '', '<p class=\"p1\"><span style=\"font-size:14px;\">Các khoản vay mua nhà thường là các khoản vay trung và dài hạn với thời gian vay từ 10 đến 25 năm. Khách hàng có thể dùng chính căn nhà định mua hoặc dùng một tài sản khác làm tài sản thế chấp. Chúng tôi sẽ phân loại quy trình dựa trên hai loại tài sản đảm bảo trên.</span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\">Mua nhà và thế chấp bằng căn nhà/căn hộ định mua</span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\">Sau khi đã lựa chọn cho mình căn nhà/căn hộ mong muốn, bạn cần đưa thông tin này tới cho nhân viên tín dụng của ngân hàng để tiến hành các thủ tục như sau:</span></p>\n\n<ul class=\"ul1\">\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\">Nhân viên ngân hàng sẽ kiểm tra tính pháp lý đồng thời&nbsp;<a href=\"https://blog.rever.vn/dinh-gia-du-an-nha-o-can-ho-nha-dau-tu-can-biet-gi\"><span class=\"s2\">định giá đối với căn nhà/căn hộ</span></a>&nbsp;mà bạn định mua và thông báo số tiền mà bạn có thể vay khi thế chấp căn nhà/căn hộ này. Số tiền được vay thường dao động trong khoảng 70 – 80% giá trị căn nhà/căn hộ, tùy theo từng ngân hàng và từng thời điểm thị trường.</span></p>\n	</li>\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\">Bạn chuẩn bị hồ sơ cho nhân viên tín dụng theo quy định. Trong đó, quan trọng nhất trong giai đoạn này là hồ sơ cần có&nbsp;<a href=\"https://blog.rever.vn/9-luu-y-khong-the-bo-qua-khi-vay-tien-mua-nha\"><span class=\"s2\">hợp đồng đặt cọc tiền nhà</span></a>&nbsp;cho người bán.</span></p>\n	</li>\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\">Sau khi hồ sơ của bạn đã được kiểm tra và bổ sung đầy đủ, bạn và người bán nhà sẽ cùng đến ngân hàng để ký hợp đồng hợp tác ba bên. Cách thức này được ngân hàng áp dụng để giảm thiểu rủi ro cho khoản vay, bảo đảm số tiền vay được sử dụng đúng mục đích.</span></p>\n	</li>\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\">Trong trường hợp này, ngân hàng sẽ áp dụng hình thức&nbsp;<b>giải ngân phong tỏa</b>, có nghĩa là giải ngân vào tài khoản của người bán nhưng số tiền này sẽ không rút được, hoặc chỉ rút được một phần, cho tới khi căn nhà được sang tên cho người mua. Khi các thủ tục đã hoàn tất, ngân hàng sẽ cất giữ sổ đỏ của căn nhà và gỡ phong tỏa số tiền trong tài khoản đã giải ngân. Lúc này người bán mới có thể sử dụng được số tiền đã nhận.<br />\n	Mua nhà và thế chấp bằng nhà có sẵn hoặc tài sản khác<br />\n	Nếu bạn đã có sẵn một căn nhà và muốn dùng nó để đảm bảo cho khoản vay, hoặc một bên thứ ba sẵn sàng dùng tài sản của họ để đảm bảo cho khoản vay của họ,&nbsp;<a href=\"https://blog.rever.vn/nhung-dieu-ngan-hang-muon-biet-ve-ban-khi-lam-ho-so-vay-von\"><span class=\"s2\">thủ tục vay</span></a>&nbsp;sẽ có một chút khác biệt như sau:</span></p>\n	</li>\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\">Bạn chuẩn bị các loại hồ sơ theo hướng dẫn của nhân viên tín dụng ngân hàng.</span></p>\n	</li>\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\">Nhân viên ngân hàng sẽ thẩm định tình trạng pháp lý, khả năng trả nợ và mục đích vay vốn của bạn. Sau đó, các nhân viên thẩm định sẽ tiến hành định giá căn nhà hoặc tài sản có sẵn mà bạn dùng làm tài sản đảm bảo cho khoản vay.</span></p>\n	</li>\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\">Ngân hàng sẽ dựa vào số tiền bạn đề nghị vay và giá trị tài sản đảm bảo mà ngân hàng đã định giá để đưa ra số tiền mà bạn có thể vay. Thông thường, số tiền cho vay sẽ không vượt quá 80% so với giá trị của tài sản đảm bảo theo định giá của ngân hàng.</span></p>\n	</li>\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\">Sau khi bạn và ngân hàng đã đồng ý ký hợp đồng tín dụng, giấy tờ của tài sản đảm bảo này (sổ đỏ nếu là nhà đất; giấy chứng nhận sở hữu nếu là tài sản khác) sẽ được ngân hàng cất giữ trong suốt&nbsp;<a href=\"https://blog.rever.vn/9-luu-y-khong-the-bo-qua-khi-vay-tien-mua-nha\"><span class=\"s2\">thời gian khoản vay</span></a>.</span></p>\n	</li>\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\">Số tiền vay được giải ngân trực tiếp cho người bán, không phong tỏa.</span></p>\n	</li>\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\">Chuẩn bị hồ sơ và một số lưu ý trước khi vay<br />\n	Hồ sơ giữa vay thế chấp bằng căn nhà định mua và thế chấp bằng nhà có sẵn/tài sản khác sẽ khác nhau tùy theo yêu cầu của mỗi ngân hàng, tuy nhiên, chúng đều có những giấy tờ chính sau:</span></p>\n	</li>\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\"><b>Hồ sơ pháp lý</b>: chứng minh nhân dân, sổ hộ khẩu, đăng ký kết hôn hoặc xác nhận độc thân.</span></p>\n	</li>\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\"><b>Hồ sơ tài chính</b>: hợp đồng lao động, xác nhận thu nhập từ công ty, sao kê tài khoản ngân hàng trong ba tháng gần đây hoặc chứng minh thu nhập từ hoạt động kinh doanh.</span></p>\n	</li>\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\"><b>Chứng minh mục đích sử dụng vốn và tài sản đảm bảo</b>: hợp đồng mua bán nhà/ hợp đồng đặt cọc. Trong trường hợp mua căn hộ dự án thì cần phải có các giấy tờ xác nhận của sàn Bất động sản phân phối dự án đó.</span></p>\n	</li>\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\">Trong trường hợp dùng tài sản của bên thứ ba thì hồ sơ cần có hợp đồng thế chấp của bên thứ ba có công chứng.</span></p>\n	</li>\n	<li class=\"li1\">\n	<p><span style=\"font-size:14px;\">Bất cứ ngân hàng nào cũng đều có&nbsp;<a href=\"https://blog.rever.vn/huong-dan-cach-tinh-lai-suat-vay-ngan-hang-mua-nha-day-du-nhat\"><span class=\"s2\">quy trình cho vay mua nhà</span></a>&nbsp;rõ ràng giúp người vay vốn thực hiện các thủ tục vay vốn một cách nhanh chóng nhất. Nếu bạn đã chọn cho mình được một ngôi nhà ưng ý và có đủ tài chính để trả nợ cho khoản vay hàng tháng, các thủ tục vay tại ngân hàng sẽ rất thuận lợi và dễ dàng.</span></p>\n	</li>\n</ul>\n', '', '', 0, 0, 0, 999, '2019-10-11 16:10:39', b'1', 'quy-trinh-cho-vay-mua-nha-nam-2019', 'Quy trình cho vay mua nhà năm 2019 ', 'quy trinh mua nha qua ngan hang, mua nhà trả góp ', 'Các khoản vay mua nhà thường là các khoản vay trung và dài hạn với thời gian vay từ 10 đến 25 năm. Khách hàng có thể dùng chính căn nhà định mua hoặc dùng một tài sản khác làm tài sản thế chấp. Chúng tôi sẽ phân loại quy trình dựa trên hai loại tài sản đảm bảo trên.\n\nMua nhà và thế chấp bằng căn nhà/căn hộ định mua\n\nSau khi đã lựa chọn cho mình căn nhà/căn hộ mong muốn, bạn cần đưa thông tin này tới cho nhân viên tín dụng của ngân hàng để tiến hành các thủ tục như sau:', 8, '2019-10-11 08:56:19', 1, '2019-10-11 09:10:39', 1, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', '');
INSERT INTO `news` (`NewsID`, `Title`, `Title_en`, `Title_fr`, `ImagePreset`, `ImageURL`, `ImageTitle`, `ImageAlt`, `Description`, `Description_en`, `Description_fr`, `Body`, `Body_en`, `Body_fr`, `IsNew`, `IsHot`, `IsBanner`, `Orders`, `Date`, `Publish`, `Slug`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `CategoriesNewsID`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `IsTrash`, `LastDateTrash`, `LastDateRestore`, `Is5Hotest`, `IsTieuDiem`, `IsHotEvent`, `IsVideo`, `VideoURL`, `View`, `IsDocNhieu`, `Hightlight`, `Tags`) VALUES
(374, '7 yếu tố phong thủy nhất thiết phải ngó qua khi mua nhà', '', '', 'tin-tuc/', '7-yeu-to-phong-thuy-khi-mua-nha_.jpg', '7 yếu tố phong thủy nhất thiết phải ngó qua khi mua nhà', '7-yeu-to-phong-thuy-khi-mua-nha', '', '', '', '<p class=\"p1\"><span style=\"font-size:14px;\"><b>Phong thủy nhà ở có tác động lớn đến cuộc sống, hạnh phúc và thịnh vượng của bạn và gia đình.</b></span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\">Ngoài việc xem xét về giá cả, vị trí, diện tích, điều kiện đường xá, tiện nghi trong và ngoài, một yếu tố quan trọng không thể bỏ qua, đó là phong thủy của ngôi nhà đó tốt hay xấu.</span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\"><b>1. Lịch sử của ngôi nhà</b></span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\">Chọn mua một ngôi nhà mới là lựa chọn tốt nhất. Nếu mua lại, người bán nhà vừa mới được thăng chức, trúng xổ số, và chuyển đến một ngôi nhà mới khang trang hơn là rất may mắn, tốt về phong thủy và tạo ra những năng lượng tích cực.</span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\">Nhà được bán từ một người mới ly hôn, bị tịch thu nhà, hay mắc một loại bệnh nguy hiểm thực sự không tốt. Mua một ngôi nhà như thế, có nghĩa là bạn đã mua những rắc rối vào mình. Có thể, những yếu tố về địa hình hay thế đất đã tạo nên khó khăn cho gia chủ.</span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\"><b>2. Thế đất và hình dáng của khu đất</b></span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\">Ngôi nhà nằm bên cạnh một ngọn đồi là không tốt trong phong thủy, nhưng nếu ngọn đồi, hay tòa nhà cao tầng ở đằng sau ngôi nhà thì lại rất tốt.</span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\">Hình dáng đẹp nhất của khu đất là hình vuông, hình chữ nhật. Đằng sau rộng hơn và cao hơn đằng trước là điều tốt lành. Ngược lại, đằng sau hẹp hơn, thấp hơn, sẽ tạo ra sự mất mát, khó khăn.</span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\"><b>3. Sự bố trí từ phòng ngủ cho tới phòng tắm</b></span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\">Nhìn vào sự bố trí từ phòng ngủ cho tới phòng tắm, chúng ta có thể đánh giá sự tốt, xấu của phong thủy ngôi nhà. Phòng ngủ bên trên gara, bếp, phòng giặt khô, hay không gian trống phía dưới; phòng tắm bên trên phòng ăn hoặc bếp; phòng ngủ chung tường với toa lét là những điều không tốt. Điều này có thể gây ra ốm đau, bệnh tật cho những người sống trong đó.</span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\"><b>4. Phía đối diện ngôi nhà</b></span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\">Ngôi nhà đối diện với mảnh đất mở về phía trước rất tốt, có ý nghĩa mở ra một tương lai tươi sáng. Chúng ta có thể lấy ví dụ như Nhà Trắng ở Washington với bãi cỏ rộng ở mặt trước, hay tòa nhà Biltmore ở Asheville, Cazolina. Ngược lại, nếu căn nhà bị choáng ngợp bởi cây cối cũng không tốt. Nếu có cây lớn trước nhà, hay cây bụi sát nhà, trong phong thủy, nghĩa là, chặn mọi cơ hội tốt đẹp đến với gia chủ. Bạn có thể di dời những cây này tới trồng ở vị trí khác.</span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\"><b>5. Bên trái, bên phải nhà</b></span></p>\n\n<p class=\"p2\">&nbsp;</p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\">Hãy để ý xem có ngôi nhà nào bên cạnh mái nhọn, có một góc nhọn chĩa về nhà bạn không, nếu có thì không nên mua. Nếu ngôi nhà, hoặc mảnh đất bên trái cao hơn thì rất tốt, vì nó đang khai thác năng lượng của con Rồng (Thanh Long Bạch Hổ). Còn may mắn hơn nữa, nếu nhà bên trái nhìn ra hướng Đông.</span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\"><b>6. Hướng tiếp cận và các ngõ cụt</b></span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\">Nếu đường đi đâm thẳng vào nhà, hay đường lái xe thẳng, dài, đâm thẳng vào nhà là điều rất tối kị, nhưng bạn vẫn có thể hóa giải bằng cách trồng cây hoặc treo gương. Tuy nhiên, nếu nhà có hai con đường song song, một phía trước, và một phía sau thì không thể hóa giải được (hai đường thẳng song song tán khí).</span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\"><b>7. Hướng Tây Nam và hướng Tây Bắc</b></span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\">Đây là hai hướng quan trọng của ngôi nhà. Tây Nam là hướng của Trời, Tây Bắc là hướng của Mẹ. Hướng Tây Bắc không bao giờ được phép có ngọn lửa (bếp ga, lò sưởi) bởi dương khí ở những hướng này rất mạnh. Nếu có, hãy chuyển vị trí của chúng bởi điều này cũng rất tối kị, gây ra những khó khăn nghiêm trọng cho người cư ngụ trong nhà.</span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\">Tây Nam là hướng của người phụ nữ, người mẹ trong gia đình. Nếu ở hướng này có một cái kho, hay một phòng tắm, chủ nhà sẽ gặp khó khăn trong hôn nhân, hoặc bất hạnh.</span></p>\n\n<p class=\"p1\"><span style=\"font-size:14px;\">Theo&nbsp;<b><i>Dân Việt</i></b></span></p>\n', '', '', 0, 0, 0, 999, '2019-10-11 16:18:02', b'1', '7-yeu-to-phong-thuy-nhat-thiet-phai-ngo-qua-khi-mua-nha', '7 yếu tố phong thủy nhất thiết phải ngó qua khi mua nhà', 'phong thuy mua nha, phong thuỷ khi mua nhà ', 'Phong thủy nhà ở có tác động lớn đến cuộc sống, hạnh phúc và thịnh vượng của bạn và gia đình.\n\nNgoài việc xem xét về giá cả, vị trí, diện tích, điều kiện đường xá, tiện nghi trong và ngoài, một yếu tố quan trọng không thể bỏ qua, đó là phong thủy của ngôi nhà đó tốt hay xấu.', 8, '2019-10-11 09:17:12', 1, '2019-10-11 09:18:02', 1, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', ''),
(375, '10 điều không thể bỏ qua khi mua nhà ở Việt Nam', '', '', 'tin-tuc/', 'luu-y-khi-mua-nha-quan-3.jpg', '10 điều không thể bỏ qua khi mua nhà ở Việt Nam', 'dieu-luu-y-khi-mua-nha', '', '', '', '<p class=\"p1\"><b>1. Xem xét vấn đề pháp lý&nbsp;</b></p>\n\n<p class=\"p1\">Mua bán nhà hiện nay tồn tại 3 loại giấy tờ: giấy tay, sổ đỏ hay sổ hồng. Mua nhà chỉ có giấy tay giá bao giờ cũng rẻ hơn nhưng độ rủi ro rất cao, nhiều trường hợp mất trắng. Mua nhà sổ đỏ hay sổ hồng dù đắt tiền hơn nhưng bạn có thể yên tâm ngủ ngon. Nhà có đầy đủ giấy tờ được pháp luật công nhận sau này cũng dễ bán hơn.</p>\n\n<p class=\"p1\"><b>2. Nhất thiết phải kiểm tra quy hoạch và không mua nhà ở khu quy hoạch treo</b></p>\n\n<p class=\"p1\">Việc kiểm tra quy hoạch có thể khiến bạn mất thêm thời gian nhưng nhất định phải làm. Bạn cũng đừng ham rẻ mà mua nhà vướng quy hoạch treo, sau này muốn bán không ai dám mua.&nbsp;</p>\n\n<p class=\"p1\">Để thực hiện các quy hoạch đã duyệt, người ta cụ thể hoá bằng các dự án, tiểu dự án. Khi các dự án đã được giao đất mà triển khai chậm tiến độ hoặc không triển khai thì các dự án đó được gọi là \"dự án treo\".&nbsp;</p>\n\n<p class=\"p1\">Nhà đất nằm trong quy hoạch treo không được xây dựng mới, không được sửa chữa và cải tạo, phải giữ nguyên hiện trạng nên người mua nhà rất khổ sở.</p>\n\n<p class=\"p1\"><b>3. Địa chỉ các cơ quan chức năng để bạn hỏi thông tin về đất - nhà</b></p>\n\n<p class=\"p1\">Muốn kiểm tra quy hoạch đất, bạn phải đến Phòng Tài nguyên môi trường ở quận/huyện nơi bất động sản toạ lạc. Để kiểm tra tầng cao, mật độ xây dựng, khoảng lùi, hệ số sử dụng đất, bạn cần đến Phòng Quản lý đô thị ở quận/huyện nơi bất động sản tọa lạc. Bạn nên nhớ, hỏi đúng việc ở đúng chỗ là rất quan trọng.</p>\n\n<p class=\"p1\"><b>4. Lưu ý vấn đề tường khi mua nhà&nbsp;</b></p>\n\n<p class=\"p1\">Khi mua nhà, bạn cần lưu ý \"tường riêng\", \"tường chung\" và \"tường mượn\". Tường riêng là tốt nhất, bạn có thể xây sửa lại nhà dễ dàng. Trường hợp mua nhà tường chung với nhà liền kề, nếu bạn xây lại nhà trước, bạn sẽ mất một khoảng đất rộng bằng 1/2 độ rộng của bức tường chung đó,&nbsp;5 cm dọc theo bức tường.&nbsp;Nếu mua phải nhà tường mượn, khi nhà kế bên xây, bạn cũng phải xây theo vì bức tường mượn đó hoàn toàn không phải của bạn.&nbsp;</p>\n\n<p class=\"p1\"><b>5. Lưu ý vấn đề hàng xóm</b></p>\n\n<p class=\"p1\">Ngoài việc lối sống của hàng xóm có thể ảnh hưởng đến cuộc sống của bạn, thì bạn nên nhớ, nhà khó mua nhất là nhà hàng xóm sát vách. Bán nhà cho hàng xóm sát vách và người thân cũng dễ bị thiệt nhất vì thường bị ép giá. Vì thế duy trì quan hệ tốt với hàng xóm là rất quan trọng.</p>\n\n<p class=\"p1\"><b>6. Tìm nguồn thông tin mua bán nhà từ những người xung quanh</b></p>\n\n<p class=\"p1\">Nguồn thông tin mua bán nhà tốt nhất không phải là trên báo, cũng không phải từ internet, mà từ các mối quan hệ xung quanh mình. Hãy luôn cư xử đúng mực và tử tế với mọi người, may mắn sẽ đến với bạn.</p>\n\n<p class=\"p1\"><b>7. Các quan niệm về nhà đất có thể thay đổi theo thời gian</b></p>\n\n<p class=\"p1\">Nhìn chung mọi người vẫn thích đất nở hậu khi mua nhà, nhà nở hậu sau này bán lại cũng dễ hơn. Tuy nhiên, giờ đây, đất có mặt tiền rộng mới có giá trị nhất. Cùng một khu vực, cùng một diện tích, nhưng đất có mặt tiền rộng và độ sâu ngắn sẽ có giá trị hơn đất có mặt tiền hẹp và độ sâu dài.</p>\n\n<p class=\"p1\"><b>8. So sánh là cách định giá nhà dễ nhất</b></p>\n\n<p class=\"p1\">Bạn chưa biết giá ngôi nhà mình muốn mua. Nếu nhà kế bên cùng diện tích, cùng cấu trúc giá 5 tỷ thì chắc chắn ngôi nhà bạn muốn mua giá sẽ dao động xung quanh 5 tỷ.&nbsp;</p>\n\n<p class=\"p1\"><b>9. Thuê nhà không phải là giải pháp tồi</b></p>\n\n<p class=\"p1\">Nếu bạn làm ở quận 7, mua nhà ở quận 12, bạn đi về một ngày mất 3 giờ đồng hồ. Trong trường hợp này, tốt nhất bạn không nên mua nhà, hãy thuê nhà gần chỗ làm để ở. Tiền dư từ việc không mua nhà, bạn có thể dành cho việc đầu tư, làm ăn, sau vài năm sau, bạn sẽ có đủ tiền mua nhà trung tâm.&nbsp;</p>\n\n<p class=\"p1\"><b>10. Ở thử trước khi mua</b></p>\n\n<p class=\"p1\">Nếu bạn đang muốn mua một căn chung cư cao cấp mà còn phân vân, lưỡng lự, hãy thuê để ở thử 3-6 tháng. Khi ở thuê, thấy thích căn hộ đó, bạn hãy đặt mua cũng chưa muộn. Nếu không thích căn hộ đó, bạn vẫn còn nhiều cơ hội và lựa chọn khác.</p>\n\n<p class=\"p1\">Theo vnexpress.net</p>\n', '', '', 0, 0, 0, 999, '2019-10-13 00:42:20', b'1', '10-dieu-khong-the-bo-qua-khi-mua-nha-o-viet-nam', '10 điều không thể bỏ qua khi mua nhà ở Việt Nam', 'luu y khi mua nha', '1. Xem xét vấn đề pháp lý \n\nMua bán nhà hiện nay tồn tại 3 loại giấy tờ: giấy tay, sổ đỏ hay sổ hồng. Mua nhà chỉ có giấy tay giá bao giờ cũng rẻ hơn nhưng độ rủi ro rất cao, nhiều trường hợp mất trắng. Mua nhà sổ đỏ hay sổ hồng dù đắt tiền hơn nhưng bạn có thể yên tâm ngủ ngon. Nhà có đầy đủ giấy tờ được pháp luật công nhận sau này cũng dễ bán hơn', 8, '2019-10-12 17:42:20', 1, '2019-10-12 17:43:47', 1, b'0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `newstags`
--

CREATE TABLE `newstags` (
  `TagsID` int(11) NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci NOT NULL,
  `Slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Publish` bit(1) NOT NULL,
  `SEOTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SEOKeyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `SEODescription` text COLLATE utf8_unicode_ci NOT NULL,
  `Orders` int(11) NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `newstags`
--

INSERT INTO `newstags` (`TagsID`, `Title`, `Description`, `Slug`, `Publish`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `Orders`, `CreatedDate`) VALUES
(1, 'Tin tức', 'Tin tức', 'tin-tuc', b'1', '', '', '', 1, '2015-04-13 07:32:21'),
(2, 'abc', '', 'abc', b'1', '', '', '', 999, '2015-05-23 08:28:56'),
(4, 'xxx', '', 'xxx', b'1', '', '', '', 999, '2015-07-10 15:00:38'),
(5, 'zzz', '', 'zzz', b'1', '', '', '', 999, '2015-07-10 15:21:30'),
(6, 'bbb', '', 'bbb', b'1', '', '', '', 999, '2015-07-10 15:21:30'),
(7, 'công ty camera', '', 'cong-ty-camera', b'1', '', '', '', 999, '2015-07-13 15:27:00'),
(8, 'chọn camera', '', 'chon-camera', b'1', '', '', '', 999, '2015-07-31 13:55:00'),
(9, 'camera nào tốt', '', 'camera-nao-tot', b'1', '', '', '', 999, '2015-07-31 13:55:00'),
(10, 'cách chọn camera', '', 'cach-chon-camera', b'1', '', '', '', 999, '2015-07-31 13:55:00'),
(11, 'mua camera ở đâu', '', 'mua-camera-o-dau', b'1', '', '', '', 999, '2015-07-31 13:55:00'),
(12, 'hãng camera tốt', '', 'hang-camera-tot', b'1', '', '', '', 999, '2015-07-31 13:55:00'),
(13, 'mua camera rẻ', '', 'mua-camera-re', b'1', '', '', '', 999, '2015-07-31 13:55:00'),
(14, 'hướng dẫn xem camera', '', 'huong-dan-xem-camera', b'1', '', '', '', 999, '2015-07-31 13:57:59'),
(15, 'xem camera qua điện thoại', '', 'xem-camera-qua-dien-thoai', b'1', '', '', '', 999, '2015-07-31 13:57:59'),
(16, 'xem camera qua mạng', '', 'xem-camera-qua-mang', b'1', '', '', '', 999, '2015-07-31 13:57:59'),
(17, 'cài camera qua mạng', '', 'cai-camera-qua-mang', b'1', '', '', '', 999, '2015-07-31 13:57:59'),
(18, 'lắp camera internet', '', 'lap-camera-internet', b'1', '', '', '', 999, '2015-07-31 13:57:59'),
(19, 'xem camera qua máy tính', '', 'xem-camera-qua-may-tinh', b'1', '', '', '', 999, '2015-07-31 14:01:53'),
(20, 'xem camera trên laptop', '', 'xem-camera-tren-laptop', b'1', '', '', '', 999, '2015-07-31 14:01:53'),
(21, 'lắp đặt camera', '', 'lap-dat-camera', b'1', '', '', '', 999, '2015-07-31 14:07:53'),
(22, 'hướng dẫn cách lắp camera', '', 'huong-dan-cach-lap-camera', b'1', '', '', '', 999, '2015-07-31 14:07:53'),
(23, 'tự lắp camera', '', 'tu-lap-camera', b'1', '', '', '', 999, '2015-07-31 14:07:53'),
(24, 'lắp camera nhưn thế nào', '', 'lap-camera-nhun-the-nao', b'1', '', '', '', 999, '2015-07-31 14:07:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `onepages`
--

CREATE TABLE `onepages` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Slug` varchar(355) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Content` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Content_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOTitle` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeyword` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `onepages`
--

INSERT INTO `onepages` (`Id`, `Title`, `Title_en`, `Slug`, `Description`, `Description_en`, `Content`, `Content_en`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(1, 'Thanh toán và vận chuyển', 'Payment and Transfer', NULL, '', '', '<p>Nội dung đang được cập nhật</p>', '<p>The content is updating</p>', 'Thanh toán và vận chuyển', 'Thanh toán và vận chuyển', 'Thanh toán và vận chuyển', '2013-11-29 17:53:23', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderitems`
--

CREATE TABLE `orderitems` (
  `OrderID` int(10) UNSIGNED NOT NULL,
  `ProductsID` int(10) UNSIGNED NOT NULL,
  `Slug` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Quantity` int(10) UNSIGNED DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `Option` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Notes` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderitems`
--

INSERT INTO `orderitems` (`OrderID`, `ProductsID`, `Slug`, `Quantity`, `Price`, `Option`, `Notes`) VALUES
(1, 1, 'banh-sinh-nhat-nho-dau-tay-xanh-1', 12, 200000, NULL, NULL),
(1, 2, 'banh-so-2-2', 10, 120000, NULL, NULL),
(2, 6, 'san-pham-3-6', 1, 200000, NULL, NULL),
(3, 7, 'san-pham-4-7', 1, 200000, NULL, NULL),
(3, 6, 'san-pham-3-6', 1, 200000, NULL, NULL),
(4, 5, 'san-pham-2-5', 1, 200000, NULL, NULL),
(4, 6, 'san-pham-3-6', 1, 200000, NULL, NULL),
(4, 7, 'san-pham-4-7', 1, 200000, NULL, NULL),
(5, 6, 'san-pham-3-6', 1, 200000, NULL, NULL),
(6, 6, 'san-pham-3-6', 1, 200000, NULL, NULL),
(7, 6, 'san-pham-3-6', 1, 200000, NULL, NULL),
(7, 6, 'san-pham-3-6', 1, 300000, NULL, NULL),
(8, 6, 'san-pham-3-6', 15, 200000, 'M', NULL),
(8, 6, 'san-pham-3-6', 12, 300000, 'L', NULL),
(9, 6, 'san-pham-3-6', 15, 200000, 'M', NULL),
(10, 8, '002-cake-2-8', 1, 300000, 'L', NULL),
(10, 8, 'c102-cake-2-8', 1, 160000, 'S', NULL),
(11, 4, 'c100-cake-1-4', 1, 160000, '20 x 30', NULL),
(12, 12, NULL, 1, 1000000, NULL, NULL),
(13, 41, NULL, 1, 2500000, NULL, NULL),
(14, 57, NULL, 7, 950000, NULL, NULL),
(15, 57, NULL, 1, 950000, NULL, NULL),
(16, 57, NULL, 1, 950000, NULL, NULL),
(17, 59, NULL, 1, 750000, NULL, NULL),
(18, 78, NULL, 2, 4400000, NULL, NULL),
(18, 75, NULL, 1, 6300000, NULL, NULL),
(19, 78, NULL, 2, 4400000, NULL, NULL),
(19, 75, NULL, 1, 6300000, NULL, NULL),
(20, 91, NULL, 1, 770000, NULL, NULL),
(20, 70, NULL, 5, 700000, NULL, NULL),
(20, 113, NULL, 4, 1200000, NULL, NULL),
(21, 74, NULL, 1, 7400000, NULL, NULL),
(22, 79, NULL, 1, 5000000, NULL, NULL),
(23, 75, NULL, 1, 6300000, NULL, NULL),
(24, 78, NULL, 1, 4400000, NULL, NULL),
(25, 78, NULL, 1, 4400000, NULL, NULL),
(26, 79, NULL, 3, 5000000, NULL, NULL),
(27, 78, NULL, 2, 4400000, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `OrdersID` int(10) UNSIGNED NOT NULL,
  `IsUser` bit(1) NOT NULL DEFAULT b'0',
  `CustomersID` int(11) NOT NULL,
  `Notes` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `DeliveryDate` date DEFAULT NULL,
  `OrderStatusID` int(10) UNSIGNED NOT NULL DEFAULT 3,
  `PaymentsID` int(10) UNSIGNED DEFAULT 1,
  `UnRead` tinyint(4) DEFAULT 1,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`OrdersID`, `IsUser`, `CustomersID`, `Notes`, `CreatedDate`, `DeliveryDate`, `OrderStatusID`, `PaymentsID`, `UnRead`, `ModifiedDate`, `ModifiedBy`) VALUES
(1, b'0', 1, 'Giao hàng vào sáng Chủ Nhật', '2015-03-31 06:56:59', NULL, 2, 1, 0, '2015-03-31 08:34:18', 1),
(2, b'0', 2, '0', '2015-04-01 09:19:52', NULL, 3, 1, 0, NULL, NULL),
(5, b'0', 5, 'aaa\naaaa', '2015-04-02 01:39:51', NULL, 3, 1, 0, NULL, NULL),
(17, b'0', 17, '', '2015-07-23 10:02:34', NULL, 2, 1, 0, '2017-01-09 15:00:39', 1),
(18, b'0', 18, '', '2015-09-08 08:09:09', NULL, 2, 1, 0, '2017-01-09 15:00:41', 1),
(19, b'0', 19, '', '2015-09-08 08:09:16', NULL, 2, 1, 0, '2017-01-09 15:00:45', 1),
(20, b'0', 20, '', '2015-09-08 08:48:23', NULL, 3, 1, 1, NULL, NULL),
(21, b'0', 21, '', '2016-12-16 16:58:22', NULL, 3, 1, 0, NULL, NULL),
(22, b'1', 22, '', '2017-01-09 14:13:57', NULL, 3, 1, 1, NULL, NULL),
(23, b'1', 23, '', '2017-01-09 14:32:48', NULL, 3, 1, 1, NULL, NULL),
(24, b'1', 24, '', '2017-01-09 14:42:06', NULL, 3, 1, 1, NULL, NULL),
(25, b'1', 25, '', '2017-01-09 14:45:42', NULL, 3, 1, 1, NULL, NULL),
(26, b'1', 26, '', '2017-01-09 14:46:26', NULL, 3, 1, 1, NULL, NULL),
(27, b'1', 27, '', '2017-01-09 14:48:22', NULL, 3, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ordershipping`
--

CREATE TABLE `ordershipping` (
  `OrdersShippingID` int(11) NOT NULL,
  `OrdersID` int(11) NOT NULL,
  `OrdersShippingAddress` text COLLATE utf8_unicode_ci NOT NULL,
  `OrdersShippingCity` text COLLATE utf8_unicode_ci NOT NULL,
  `OrdersShippingAddressType` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orderstatus`
--

CREATE TABLE `orderstatus` (
  `OrderStatusID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orderstatus`
--

INSERT INTO `orderstatus` (`OrderStatusID`, `Title`, `Description`) VALUES
(1, 'Đã giao hàng', NULL),
(2, 'Kết thúc', NULL),
(3, 'Đơn hàng mới', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `partners`
--

CREATE TABLE `partners` (
  `Id` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImagePreset` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'logo/',
  `ImageUrl` varchar(355) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Url` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publish` smallint(5) UNSIGNED DEFAULT NULL,
  `Orders` int(11) NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `partners`
--

INSERT INTO `partners` (`Id`, `Title`, `Title_en`, `ImagePreset`, `ImageUrl`, `Url`, `Publish`, `Orders`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(12, 'ĐỐI TÁC VIỆT HOME', '', 'logo/', 'doi-tac-viet-home.jpg', '#', 1, 3, '2019-10-06 17:10:52', 1, '2019-10-06 17:15:58', 1),
(13, 'ĐỐI TÁC GỐM VIỆT', '', 'logo/', 'doi-tac-gom-viet.jpg', '#', 1, 999, '2019-10-06 17:13:36', 1, NULL, NULL),
(11, 'ĐỐI TÁC CIC 36', '', 'logo/', 'cic36-doi-tac.png', '#', 1, 4, '2019-10-06 17:01:11', 1, '2019-10-06 17:16:03', 1),
(14, 'ĐỐI TÁC SÀI GÒN', '', 'logo/', 'doi-tac-sai-gon.jpg', '#', 1, 2, '2019-10-06 17:14:29', 1, '2019-10-06 17:15:56', 1),
(15, 'ĐỐI TÁC TOTAL', '', 'logo/', 'doi-tac-total.jpg', '#', 1, 1, '2019-10-06 17:15:33', 1, '2019-10-06 17:15:55', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `payments`
--

CREATE TABLE `payments` (
  `PaymentsID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `payments`
--

INSERT INTO `payments` (`PaymentsID`, `Title`, `Description`, `CreatedDate`) VALUES
(1, 'Tiền mặt', NULL, NULL),
(2, 'Chuyển khoản', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissfunc`
--

CREATE TABLE `permissfunc` (
  `PermissFuncID` int(10) UNSIGNED NOT NULL,
  `FuncName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissfunc`
--

INSERT INTO `permissfunc` (`PermissFuncID`, `FuncName`) VALUES
(1, 'Product'),
(2, 'News'),
(3, 'CategoriesNews'),
(4, 'CategoriesProduct');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `RolesID` int(10) UNSIGNED NOT NULL,
  `PermissFuncID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `PermissionNumber` int(10) UNSIGNED DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`RolesID`, `PermissFuncID`, `Title`, `PermissionNumber`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(1, 1, NULL, 15, '2013-05-29 10:41:58', NULL, NULL, NULL),
(1, 2, NULL, 15, '2013-05-29 10:41:58', NULL, NULL, NULL),
(1, 3, NULL, 15, '2013-05-29 10:41:58', NULL, NULL, NULL),
(1, 4, NULL, 15, '2013-05-29 10:41:58', NULL, NULL, NULL),
(2, 1, NULL, 4, '2013-05-29 10:41:58', NULL, NULL, NULL),
(2, 2, NULL, 7, '2013-05-29 10:41:58', NULL, NULL, NULL),
(2, 3, NULL, 7, '2013-05-29 10:41:58', NULL, NULL, NULL),
(2, 4, NULL, 7, '2013-05-29 10:41:58', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `polls`
--

CREATE TABLE `polls` (
  `Id` int(11) NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Finished` tinyint(5) DEFAULT 1,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `ModifiedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `ProductsID` int(10) UNSIGNED NOT NULL,
  `SKU` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_fr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description_fr` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Desc` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Desc_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Desc_fr` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body_fr` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body2` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body2_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body2_fr` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body3` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body3_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body3_fr` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImagePreset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'san-pham/',
  `ImageURL` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageTitle` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageAlt` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `IsNew` tinyint(1) DEFAULT NULL,
  `IsPromotion` tinyint(1) DEFAULT NULL,
  `IsSellers` tinyint(1) DEFAULT NULL,
  `IsHot` tinyint(1) DEFAULT 0,
  `IsStock` tinyint(1) DEFAULT 1,
  `ListPrice` float DEFAULT NULL,
  `SellPrice` float DEFAULT NULL,
  `Warranty` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Orders` float UNSIGNED DEFAULT NULL,
  `Publish` bit(1) DEFAULT NULL,
  `ShowPrice` bit(1) DEFAULT b'1',
  `Slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Tags` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOTitle` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeyword` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `CategoriesProductsID` int(10) UNSIGNED NOT NULL,
  `SubCategoriesProductsID` text COLLATE utf8_unicode_ci NOT NULL,
  `SortingBrandID` int(11) DEFAULT NULL,
  `SortingResID` int(11) DEFAULT NULL,
  `SortingChannelID` int(11) DEFAULT NULL,
  `SortingPriceID` int(11) DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `Hightlight` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`ProductsID`, `SKU`, `Title`, `Title_en`, `Title_fr`, `Description`, `Description_en`, `Description_fr`, `Desc`, `Desc_en`, `Desc_fr`, `Body`, `Body_en`, `Body_fr`, `Body2`, `Body2_en`, `Body2_fr`, `Body3`, `Body3_en`, `Body3_fr`, `ImagePreset`, `ImageURL`, `ImageTitle`, `ImageAlt`, `IsNew`, `IsPromotion`, `IsSellers`, `IsHot`, `IsStock`, `ListPrice`, `SellPrice`, `Warranty`, `Orders`, `Publish`, `ShowPrice`, `Slug`, `Tags`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `CategoriesProductsID`, `SubCategoriesProductsID`, `SortingBrandID`, `SortingResID`, `SortingChannelID`, `SortingPriceID`, `CreatedDate`, `CreatedBy`, `ModifiedBy`, `ModifiedDate`, `Hightlight`) VALUES
(169, '', 'THIẾT KẾ VÀ THI CÔNG CỦA HÀNG BÁN VỊT HẢI PHÒNG - A HÀ', '', '', '<p>Thiết kế quán ăn nhỏ đẹp cần lưu tâm là khu vực ăn uống, quầy thanh toán và bếp. Với quán nhỏ, diện tích để xe có thể tận dụng trước mặt tiền được càng. Với phong cách hiện đại sang trong mang lại cho khách hàng cảm giác hài lòng thoải mái.&nbsp;</p>\n', '', '', '', '', '', '<p>Thiết kế nhà hàng ăn uống - Vịt Đệ Nhất với phong cách kiến trúc hiện đại, với mặt tiền ấn tượng, khoe được không gian bên trong nhà hàng qua những ô cửa kính lớn cách điệu. Không gian thiết kế bao gồm 12 bàn ở khu vực không gian ăn uống, mỗi bàn 8 ghế, với khoảng giao thông tiếu chuẩn. Không gian được thiết kế tiêu âm, tường mộc tạo sự gần gũi, ấm cúng.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết nhà hàng ăn uống - Vịt Đệ Nhất</span></strong></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-cua-hang-ban-vit1.png\" /></p>\n\n<p>Kiến trúc của cửa hàng được thiết kế một kiểu dáng lạ mắt với mái lệnh. Hệ thống cửa của cửa hàng được làm bằng kính cướng lịch giúp cho quán ăn sang trọng. Tên cửa hàng được đặt ở ngay mặt đường lớn, dòng chữ trắng nổi bật trên nền gỗ nâu nhạt giúp cho khách hàng có thể dễ dàng tìm kiếm nhà hàng. Điểm nhấn ở không gian nội thất là nền xanh lá tươi sáng đối lập mặt tiền của cửa hàng dễ gây chú ý tới khách hàng.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất bên trong nhà hàng</span></strong></p>\n\n<p><strong><span style=\"font-size:20px;\"><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//cua-hang-ban-vit-21.png\" /></span></strong></p>\n\n<p>Bên trong nhà hàng thiết kế với 12 bàn ăn sang trọng, mỗi bàn có 8 chỗ ngồi, phù hợp với một đại gia đình. Toàn bộ tường được ốp gạch men đan xen ốp lam gỗ bóng giúp không gian tươi sáng. Trần nhà dùng gạch bóng đen sang trọng cũng họa tiết gỗ được thiết kế gấp khúc kết hợp hệ thống đèn LED và đèn chùm càng dây ấn tượng cho khách hàng. Hệ thống điều hòa và hút mùi giúp không gian sạch sẽ, không để lại mùi thức ăn.&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/cua-hang-vit-41.png\" />Sau khi hoàn thiện công trình, đi vào khai trương, nhà hàng đã nhận được sự quan tâm và yêu thích khá nhiều của giới trẻ hiện nay. Nếu như bạn yêu thích mẫu thiết kế nhà hàng này của chúng tôi, hoặc bạn muốn có những không gian nhà hàng đột phá hơn nữa, hãy liên hệ để được kiến trúc sư của GEMIHOME&nbsp;tư vấn chi tiết và cụ thể hơn nhé.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-cua-hang-ban-vit-thumline1.png', 'THIẾT KẾ VÀ THI CÔNG CỦA HÀNG BÁN VỊT HẢI PHÒNG - A HÀ', 'thiet-ke-va-thi-cong-noi-that-cua-hang-ban-vit-a-ha', 0, 0, 0, 0, 0, 0, 200, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-cua-hang-ban-vit-hai-phong-a-ha', '', 'THIẾT KẾ VÀ THI CÔNG CỦA HÀNG BÁN VỊT HẢI PHÒNG - A HÀ ', 'thiet ke quan an, thiết kế quán ăn', 'Thiết kế quán ăn nhỏ đẹp cần lưu tâm là khu vực ăn uống, quầy thanh toán và bếp. Với quán nhỏ, diện tích để xe có thể tận dụng trước mặt tiền được càng. Với phong cách hiện đại sang trong mang lại cho khách hàng cảm giác hài lòng thoải mái. ', 85, '', 15, 15, 17, 23, '2020-01-12 15:22:45', 1, 1, '2020-02-14 06:29:10', ''),
(184, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NINH', '', '', '<p>Sở hữu mảnh đất 300m<sup>2</sup>&nbsp;chị Ninh yêu cầu GEMIHOME thiết kế một căn biệt thự hai tầng hiện đại mái thái gần gũi với thiên nhiên nhất để chị&nbsp;về nghỉ dưỡng sau ngày làm việc mệt mỏi, chính vì thế không gian xanh và sự hiện đại thoáng nhiều ánh sáng tông màu trắng là sự lựa chọn để GEMIHOME thiết kế nên căn biệt thự hai tầng này</p>\n', '', '', '', '', '', '<p>Mô hình biệt thự mái thái được giới thiệu qua bản vẽ biệt thự 2 tầng sau đây chắc chắn sẽ làm rung động trái tim độc giả của GEMIHOME. Bằng tài năng cũng như tâm huyết của&nbsp; mình, đội ngũ của chúng tôi đã đem đến cho gia chủ không chỉ là công trình nhà ở thông thường, mà hơn thế nữa, đó còn là tác phẩm nghệ thuật của nền kiến trúc hiện đại, xứng đáng trở thành một trong những mẫu nhà biệt thự mái thái 2 tầng đẹp cho nhiều chủ đầu tư tham khảo.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết biệt thự 2 tầng mái thái</span></strong></p>\n\n<p><strong><span style=\"font-size:20px;\"><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-biet-thu-hai-tang-chi-ninh.jpg\" /></span></strong></p>\n\n<p>Hình khối kiến trúc biệt thự mái thái 2 tầng 250m2 khá đồ sộ và hiện đại. Mặt tiền với những đường nét tinh tế, khéo léo xua tan sự đơn điệu của bức tường vôi cứng nhắc mang lại hiệu ứng thẩm mỹ cao, tinh tế cho mẫu nhà đẹp.</p>\n\n<p>Dàn mái ngói đen xám kết hợp hệ thống mái che ban công cách điệu, mới lạ đã làm điểm nhấn, độc đáo, nổi bật thu hút mọi góc nhìn của ngôi biệt thự mang phong cách hiện đại. Cũng tại đó, tường vây được thiết kế vững chắc, tránh nhàm chán bằng cách ốp đá cao cấp tô điểm thêm cho kiến trúc hiện đại tạo ra một bố cục sinh động, hấp dẫn đem lại một không gian sống thoải mái, hoàn hảo cho gia chủ.. Với thời tiết khí hậu nắng nóng ở Bắc Giang&nbsp;việc sử dụng mái Thái đảm bảo độ thoáng và khả năng thoát nước nhanh, mát mẻ về mùa hẹ và ấm áp về mùa đông.</p>\n\n<p>Vật kiệu kính được sử&nbsp;dụng để thiết kế ban công&nbsp;hành lang kết hợp tràng trí thêm tiểu cảnh cây xanh thoáng đãng, lãng mạn. Cùng với đó, hệ thống cửa sổ và cửa tầng của biệt thử đẹp cũng được lắp đặt vật liệu kính cường lực tạo ra không ggian mở rộng rãi, tráng lệ và đầy sức hút.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-chi-ninh-7.jpg\" /></p>\n\n<p>Cùng với kiến trúc ngoại thất ấn tượng và độc đáo, mẫu biệt thự hiện đại 2 tầng còn khiến chủ đầu tư hài lòng với phương án thiết kế mặt bằng công năng khoa học với nhiều không gian sinh hoạt khác nhau. Không chỉ đẹp về kiến trúc ngoại thất mà công năng sử dụng cũng phải hợp lý thì mới có thể để lại dấu ấn riêng cho gia chủ. Cấu trúc tầng 1 bao gồm: gara ô tô, phòng khách, phòng bếp + ăn, 1 phòng ngủ và 1 WC chung. Cách bố trí rành mạch, linh hoạt đã mag đến cho gia đình không gian sinh hoạt ấm cúng, khoa học, hợp lý.&nbsp;Tầng 2 lại được dành để bố trí toàn bộ cho sinh hoạt nghỉ ngơi của các thành viên trong gia đình.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất bên trong căn nhà</span></strong></p>\n\n<p>Nội thất trong ngôi nhà được thiết kế thep phong cách hiện đại, đẳng cấp, sang trọng.</p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p><strong><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-chi-ninh-6.jpg\" /></span></strong></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-chi-ninh-2.jpg\" /></p>\n\n<p>Nội thất trong phòng khách thiết kế theo tone màu trắng- vàng đầy sang trọng quý phái. Phòng khách gôm bộ sofa chữ L dài, êm ái được bọc nỉ trắng lịch lãm. Bàn trà nhỏ có kệ đựng một vài cuốn sách, một chiếc rèm buông rủ, một bức tranh và chậu hoa phong thủy&nbsp;đã đem đến không gian lãng mạn, đơn giản nhưng tinh tế. Cầu thàng được ốp gạch men đã, lan can làm bằng kính bọc gỗ và trang trí tiểu canh giúp không gian nhỏ bé thoáng mát, rộng rãi hơn.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-chi-ninh-4.jpg\" /></p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng bếp</span></strong></p>\n\n<p>Bàn ăn được bố trí mang đến sự tiện lợi, phòng ăn và phòng bếp được liên thông với nhau tạo được không gian được liên kết chặt chẽ với nhau. Bàn ăn được thiết kế với 8 chỗ ngồi sang trọng Mặt bàn được sử dụng kính màu trắng được trở nên dễ dàng cho việc dọn dẹp được sạch sẽ. Ghế được sử dụng tấm đệm êm ái cho gia đình được trở thoải mái, quây quần bên những bữa ăn ngon.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-chi-ninh-3.jpg\" /></p>\n\n<p>Tủ bếp trên và tủ bếp dưới được trở nên khơi nới diện tích sử dụng được mang đến những nét hiện đại. Tủ bếp gỗ&nbsp;luôn mang lại cho không gian bếp vẻ đẹp hiện đại và cao cấp.&nbsp;Nội thất phòng bếp được liên kết gắn liền với không gian phòng ăn. Không gian tạo được sự ngăn cách cần thiết cho các không gian chức năng. Bàn ăn dược đặt ngay cạnh cửa sổ đảm bảo thông thoáng, thoải mái cho gia chủ</p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Phòng ngủ được thiết ké với phong cách hiện đại. Phòng ngủ Master rộng rãi với màu sáng tưới sáng, các kệ trang trí được bố trí hợp lý, hệ thống cửa kính giúp căn phòng thoáng đãng hơn.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-chi-ninh-5.jpg\" />Phòng ngủ con được thiết kế theo tone màu trầm ấm với kệ TV và bàn học ngay cạnh cửa sổ. Phóng ngủ được đặt phía ban công nên không khí trong lành, dễ chịu.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-biet-thu-hai-tang-chi-ninh-1.jpg\" /></p>\n\n<p>Trên đây là mẫu thiết kế nhà biệt thự 2 tầng&nbsp;đơn giản, không gian thoáng đãng nhưng không kém phần hiện đại. Quý khách có nhu cầu thiết kế - thi công nhàt đẹp, đừng ngần ngại nói ra ý muốn, Gemi Home sẽ giúp quý vị kiến tạo, xây dưng ước mơ đó.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-biet-thu-hai-tang-chi-ninh-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NINH', 'thiet-ke-biet-thu-hai-tang-chi-ninh-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-chi-ninh', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NINH ', 'thiet ke noi that, thiết kế nội thất', 'Sở hữu mảnh đất 3000m2 chị Ninh yêu cầu Gemihome thiết kế một căn biệt thự hai tầng hiện đại mái thái gần gũi với thiên nhiên nhất để chi về nghỉ dưỡng sau ngày làm việc mệt mỏi, chính vì thế không gian xanh và sự hiện đại thoáng nhiều ánh sáng tông màu trắng là sự lựa chọn để GEMIHOME thiết kế nên căn biệt thự hai tầng này', 81, '', 10, 16, 18, 22, '2020-01-17 14:57:19', 1, 1, '2020-02-14 06:31:39', ''),
(185, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ CHỊ MẠC', '', '', '<p>Sở hữu một căn góc lô đẹp nhất tại khu đô thị Thống Nhất chị Mạc&nbsp;yêu cầu thiết kế cho chị một căn biệt thự hiện đại xanh nhất có thể. Gemihome đã thiết kế nên một căn biệt thự hai tầng đầy ấn tượng với hệ thống hình khối mang lại cảm giác ngôi nhà nhiều ánh sáng. Nội thất màu xám sang trọng làm tôn nên toàn nội ngôi nhà</p>\n', '', '', '', '', '', '<p>Sau nhiều lần tìm hiểu các mẫu thiết kế biệt thự, chị Mạc&nbsp;vẫn chưa thể chọn cho gia đình mình được mẫu thiết kế ưng ý. Với quan niệm ngôi nhà là nơi giữ lửa và nghỉ ngơi cho cuộc sống gia đình hạnh phúc, do đó, hai vợ chồng rất quan trọng không gian thiết kế cùng với mặt bằng công năng. Không có ý định sẽ thi công công trình cao tầng, anh chị quyết định sẽ thi công mẫu nhà biệt thự 3 tầng, với công năng đủ phục vụ cuộc sống hàng ngày của các thành viên.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết mẫu nhà biệt thự 3 tầng hiện đại</span></strong></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-nha-chi-hoa7.jpg\" /></p>\n\n<p>Ấn tượng đầu tiên khi nhìn vào căn nhà là sắc xanh nổi bật và kiểu kiến trúc lạ mát với nhiều chi tiết ấn tượng. Tường ràn xung quanh căn nhà không phải là tường bê tông kín mít, hay không phải thanh lam. Tường rào được chị Mạc yêu cầu là tường bê tông thấp có&nbsp;khe hở ngẫu nhiên để tạo điểm nhấn cho không gian. toàn bộ tường ốp bằng gạch men&nbsp; vân đá màu xanh.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-nha-chi-hoa-5.jpg\" /></p>\n\n<p>Hệ thống cách đón gió được thết kế đồng đều, sáng táo. Không gian sau nhà được dùng làm khu vực để xe, không gian để xe được lát đã sang trọng. Xung quanh khuôn viên nhà cũng như ban công được trồng nhiều cây xanh giúp điều hòa không&nbsp;khó và tạo không gian thoán mát</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-nha-chi-hoa-4.jpg\" /><strong><span style=\"font-size:20px;\">Thiết kế nội thất bên trong biệt thự&nbsp;2 tầng</span></strong></p>\n\n<p>Là người trẻ trung cá tính, chị Mạc yêu cầu kiến trúc sư thiết kế nội thất theo phong cách hiện đại, trẻ trung và tinh tế</p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-nha-chi-hoa.jpg\" /></p>\n\n<p>Tone màu trắng và xám là tone màu chủ đạo của phòng khách nói riêng&nbsp;và cả căn nhà nói chung. Đèn trần hình bông tuyết làm gian phòng ấn tượng. Điểm trên nền sáng là vật dụng trang trí màu đen giúp không&nbsp;gian hòa hòa, cân đối.&nbsp;</p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng bếp</span></strong></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-nha-chi-hoa-6.jpg\" /><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-nha-chi-hoa-1.jpg\" /></p>\n\n<p>Phòng bếp và bàn ăn được bố trí cùng một không gian với phòng khách. Bàn ăn thiết kế 8 ghế ngồi êm ái với mặt bàn bằng đá đen cùng với đèn chùm thiết lế tinh tế tỉ mỉ làm gian phòng sang trọng, đẳng cấp. Tủ bếp được thiết kế nhỏ gọn tiện lơi, tiết kiệm không gian cho căn bếp</p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-nha-chi-hoa-3.jpg\" /><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-nha-chi-hoa-2.jpg\" /></p>\n\n<p>Phòng ngủ được thiết kế với tone màu trầm ấm sang trọng quý phái. Hầu hết các phòng ngủ đều được thiết kế cửa rộng&nbsp;để đón nắng. Tủ quần áo được bố trí sát trần để tiết kiệm không gian.</p>\n\n<p>Mẫu biệt thự 2 tầng hiện đại đang là xu thế hiện nay với kết cấu ấn tượng, đẹp mắt thu hút mọi ánh nhìn.&nbsp;GEMIHOME là nơi quy tụ các kiến trúc sư giàu tâm huyết, chuyên nghiệp và sáng tạo cho ra đời các sản phẩm thật sự khác biệt và độc đáo! Bạn đã sẵn sàng cùng GEMIHOME biến những điều bạn đang ấp ủ thành một tác phẩm thật sự nổi bật, sáng tạo với chi phí hợp lý nhất chưa? Hãy bắt đầu liên hệ ngay với chúng tôi để bạn được tư vấn hoàn toàn miễn phí và dịch vụ chuyên nghiệp nhất!!!</p>\n\n<p>&nbsp;</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 69px; top: 5440px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-biet-thu-nha-chi-hoa-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ CHỊ MẠC', 'thiet-ke-biet-thu-nha-chi-hoa-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-biet-thu-chi-mac', '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ CHỊ MẠC', 'thiet ke noi that, thiết kế nội thất', 'Sở hữu một căn góc lô đẹp nhất tại khu đô thị Thống Nhất chi yêu thiết kế cho chi một căn biệt thự hiện đại xanh nhất có thể. Gemihome đã thiết kế nên một căn biệt thự hai tầng đầy ấn tượng với hệ thống hình khối mang lại cảm giác ngôi nhà nhiều ánh sáng. Nội thất màu xám sang trọng làm tôn nên toàn nội ngôi nhà', 81, '', 10, 16, 18, 23, '2020-01-17 15:05:20', 1, 1, '2020-02-14 06:33:05', ''),
(186, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH NHÀ PHỐ CHỊ HOÀ', '', '', '<p>Mẫu nhà ống 3 tầng đẹp phong cách hiện đại với đường nét khỏe khoắn, sang trọng và thanh lịch mang đến không gian sống lý tưởng. Ngoại thất ấn tượng, mới lạ đã tạo lên đẳng cấp cho gia chủ</p>\n', '', '', '', '', '', '<p>Với diện tích mặt tiền 4,2m, nên công trình nhà chị Hòa&nbsp;rất phù hợp với kiểu kiến trúc nhà ống tận dụng chiều cao để mở rộng không gian và đảm bảo cuộc sống sinh hoạt của cả gia đình. Đây cũng là kiểu kiến trúc phổ biến tại các đô thị đông dân như hiện nay, vừa đảm bảo thẩm mỹ đẹp vừa tiết kiệm được diện tích, tối ưu được công năng sử dụng.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết nhà ống 3 tầng hiện đại</span></strong></p>\n\n<p>Kiến trúc sư bố trí cổng bao gồm tạo sự riêng tư và bảo vệ ngôi nhà, cùng hệ thống cửa kính lớn giúp các căn phòng lấy ánh sáng tự nhiên ngoài trời. Ngoài ra, kiến trúc sư còn bố trí thêm các đèn ngoài ban công giúp toàn bộ công trình lung linh hơn vào buổi tối.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-c-hoa-1.jpg\" /><br />\nThiết kế nhà ống chị Hòa lạ mắt và ấn tượng. Mọi chi tiết thiết kế theo chiều dọc tạo độ sâu, cao cho căn nhà. Cổng được làm bằng nhôm đen với thanh lam dọc tạo khoảng thoáng cho ngôi nhà. Tầng 2 và tầng 3, chúng tôi sử dụng thanh lam be tông dọc khiến ánh sáng lọt vào mọi ngõ hẹp trong nôi nhà. Ban công tầng 2 và 3 được thiết kế vương ra khoảng 0,7m để đón gió và sánh sáng. Hệ thống cửa được làm bằng kính, khung nhôm vừa thoáng mát, sạch sẽ lại có độ bền cao. Trên tầng thượng được chị Hòa dùng để làm sân vườn giúp điều hòa không khí. Một điểm ấn tượng nữa của nhà ống 3 tầng hiện đại là viền ôm căn nhà được ốp gỗ đen có vân tạo không gian sang trọng, độc đáo, lạ mắt.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-c-hoa.jpg\" /></p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất bên trong nhà ống 3 tầng</span></strong></p>\n\n<p>Để tương xứng với ngoại thất nên chị Hòa quyết định thiết kế nội thất bên trong theo phong cách hiện đại</p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-c-hoa-7.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-c-hoa-5.jpg\" /></p>\n\n<p>Phòng khách được thiết kế theo tone màu trắng - xám, tường và sàn được ốp gạch men to vân đá. Bộ sofa xám êm ái là nơi cả gia đình chị Hòa quây quần thư giãn. Trần thạch cao cùng đèn trần độc đáo càng tôn thêm nét đẹp hiện đại cho căn phòng. Một chậu cây trang trí được lựa chọn theo tuổi mang đến tài lộc cho cả gia đình. Phong bếp và bàn ăn được thiết kế trong cùng một không gian với phòng khách với tone màu xám và trắng. Nổi bật nhất ở không gian bếp chính là đèn chùm được bố trí khoa học, tinh tế.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-c-hoa-6.jpg\" /></p>\n\n<p><span style=\"font-size:16px;\"><strong>Thiết kế nội thất phòng ngủ</strong></span></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-c-hoa-3.jpg\" /></p>\n\n<p>Nếu phòng khách và phòng bếp được thiết kế theo tone màu tươi sáng thì phòng ngủ được thiết kế với tone màu trầm ấm, thích hợp không gian nghỉ ngơi. Tủ quần áo được trang trí sang trọng nằm gọn trong không gian hẹp của căn phòng.</p>\n\n<p>Trong tổng thể , thiết kế của ngôi nhà thuộc về chị Hòa mang lại ấn tượng về sự sang trọng bên cạnh cảm giác thoải mái thu được. Bạn có muốn xây dựng một ngôi nhà với thiết kế căn biệt thự như này không? Nếu vậy, hãy đặt ngay một lịch trình tư vấn thiết kế với chúng tôi, GEMIHOME. Cùng với GEMIHOME tạo ra một ngôi nhà mơ ước sẽ nâng cấp chất lượng cuộc sống của gia đình bạn.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 138px; top: 5612px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-c-hoa-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH CHỊ HOÀ', 'thiet-ke-nha-pho-c-hoa-thumline', 0, 0, 0, 0, 0, 0, 60, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-cong-trinh-nha-pho-chi-hoa', '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH CHỊ HOÀ', '', '', 84, '', 10, 16, 18, 21, '2020-01-17 15:14:52', 1, 1, '2020-02-14 04:21:28', ''),
(187, '', 'THIẾT KẾ BIỆT THƯ NHÀ CHI CHINH - NAM ĐỊNH', '', '', '<p>Những ngôi biệt thự được thiết kế hiện đại sang trọng nhưng không kém phần tinh tế. Không gian mở được thiết kế gần gũi với thiên nhiên sẽ mang lại cảm giác cho người chủ sở hữu một lối sống thoải mái nhất</p>\n', '', '', '', '', '', '<p>Mẫu thiết kế biệt thự hiện đại&nbsp;2 tầng lầu phong cách thiết kế sang trọng, đẹp hoành tráng diện tích chiều rộng 17m và chiều dài 13m đây được đánh giá là mẫu thiết kế biệt thự đẹp thời thượng thiết kế theo xu hướng mới nhất năm 2020, với nhiều chi tiết có điểm nhấn như phần mái và những trụ cột mặc dù kiểu cách này thiết kế đi thiết kế lại hoài nhưng vẫn khiến cho người ngắm cũng như chủ nhân ngôi nhà là chị Chinh lại cảm thấy thích và tự hào.</p>\n\n<p><span style=\"font-size:20px;\"><strong>Chi tiết biệt thự 2 tầng</strong></span></p>\n\n<p>Với ngôi nhà này màu xanh dương và màu ghi sám trắng làm chủ đạo,&nbsp;bởi lẽ gia chủ là người mệnh Thủy hợp với màu xanh da trời, màu xám, trắng ánh kim.&nbsp;Phương án lựa chọn ở đây là mẫu nhà mái thái. Cửa&nbsp;sổ mái được bố trí để thoát hơi khí om nóng.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-c-chinh-61.jpg\" /></p>\n\n<p>Về cơ bản vật liệu được đưa vào thiết kế sử dụng trong căn biệt thự 2 tầng này chủ&nbsp;yếu kết hợp 3 loại là kính, gỗ, đá. Khuôn nhôm cửa kính luôn là giải pháp lựa chọn hàng đầu trong thiết kế. Những mảng tường ốp đá kết hợp trần gỗ và ô kính cửa sổ. Tạo nên vẻ vừa hoài cổ vừa bóng sáng. Gỗ đá thô mộc kết hợp cửa tráng lớp kính trong suốt kết nối không gian trong và ngoài lại gần nhau hơn.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-c-chinh-3.jpg\" /></p>\n\n<p>Cửa kính được bố trí nhiều nơi trong căn nhà để căn nhà lấy được tối đa lượng ánh sáng, không chỉ giúp tiết kiệm điện năng còn tốt cho sức khỏe của gia đình. Hầm để xe được thiết kế liền kề với căn nhà tạo sự tiện lợi.&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-c-chinh1.jpg\" /></p>\n\n<p>Phía sau nhà được bố trí hồ bơi nhỏ giúp gia đình thư giãn vào ngày cuối tuần mệt mỏi.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-c-chinh-41.jpg\" /></p>\n\n<p>Trong thiết kế nhà biệt thự hai tầng thì sân vườn là một phần không thể thiếu. Cảnh quan sân vườn luôn góp phần tôn vinh ngôi nhà. trong bố trí biệt thự sân vườn. Với thiết kế như trên thì quả thực căn nhà của chị Chinh như resort, khu sinh thái thoáng mát, trong lành.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất trong căn biệt thự 2 tầng</span></strong></p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p><strong><span style=\"font-size:16px;\"><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-c-chinh-2.jpg\" /></span></strong></p>\n\n<p>Phòng khách được đặt gần hồ bơi, trong không gian rộng lớn với ánh sáng chủ đạo lấy từ cửa chính. Không gian gồm màu trung tính tươi mới. Trần thạch cao cùng hệ thống đèn âm trần cơi nới thêm không gian của phòng khách. Bức tranh sinh động và đồ vật trang trí khách làm cho căn phòng thêm ấn tượng, trẻ trung, hiện đại nhưng không kém phần đơn giản.</p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng bếp</span></strong></p>\n\n<p>Phòng bếp sử dụng tone màu sáng, nhẹ nhàng, thanh lịch. Không gian bếp nầu gọn gàng, sạch sẽ, tiện nghi, Tủ bếp được dùng bằng vật liệu cao cấp màu trắng bóng dễ dang lau chùi mang đến không gian sạch sẽ. Bàn ăn được thiết kế theoo phong cách châu Âu, 2 mặt giáp cửa, tận dụng tối đa nguồn sáng.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-c-chinh-1.jpg\" /></p>\n\n<p>GEMIHOME là nơi quy tụ các kiến trúc sư giàu tâm huyết, chuyên nghiệp và sáng tạo cho ra đời các sản phẩm thật sự khác biệt và độc đáo! Bạn đã sẵn sàng cùng GEMIHOME biến những điều bạn đang ấp ủ thành một tác phẩm thật sự nổi bật, sáng tạo với chi phí hợp lý nhất chưa? Hãy bắt đầu liên hệ ngay với chúng tôi để bạn được tư vấn hoàn toàn miễn phí và dịch vụ chuyên nghiệp nhất!!!</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-biet-thu-c-chinh-thumline1.jpg', 'THIẾT KẾ BIỆT THƯ NHÀ CHI CHINH - NAM ĐỊNH', 'thiet-ke-biet-thu-c-chinh-thumline1', 0, 0, 0, 0, 0, 0, 160, '', 999, b'1', b'1', 'thiet-ke-biet-thu-nha-chi-chinh-nam-dinh', '', 'THIẾT KẾ BIỆT THƯ NHÀ CHI CHINH - NAM ĐỊNH ', 'thiết kế biệt thư , thiet ke biet thu', 'Những ngôi biệt thự được thiết kế hiện đại sang trọng nhưng không kém phần tinh tế. Không gian mở được thiết kế gần gũi với thiên nhiên sẽ mang lại cảm giác cho người chủ sở hữu một lối sống thoải mái nhất', 81, '', 14, 16, 18, 23, '2020-01-17 15:27:26', 1, 1, '2020-02-14 06:34:53', ''),
(188, '', 'THIẾT KẾ BIỆT THỰ A TRỌNG THÁI BÌNH', '', '', '<p>Mỗi căn biệt thự có một điểm nhấn nhá riêng nhưng với căn biệt thư của anh Trọng thì điều đó lại nổi hơn bao giờ hết. Thiết kế 2&nbsp;mặt tiền góc lô với điểm nhấn nhá hình mái và cảnh của đã tạo lên đẳng cấp của gia chủ&nbsp;</p>\n', '', '', '', '', '', '<p>Phong cách hiện đại&nbsp;được anh Trọng&nbsp;chọn làm thiết kế nhà ở Thái Bình. Thiết kế nhà 259m<sup>2</sup>&nbsp;đứng trên một khu đất 18x13mcó vẻ ngoài hiện đại, phù hợp với thiết kế của các tòa nhà ở một đất nước nhiệt đới. Đặc điểm của kiến ​​trúc hiện đại có thể được nhìn thấy từ thiết kế trông cứng cáp với sự hiện diện của các yếu tố của một đường thẳng rõ ràng và đối xứng. Ngoài ra, thiết kế tòa nhà trông có rất nhiều&nbsp;khe hở lớn. Thiết kế trông sạch sẽ với việc sử dụng các vật liệu công nghiệp như kính và thép ở bên ngoài tòa nhà khẳng định phong cách hiện đại được sử dụng.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết căn biệt thự 2 tầng sang trọng</span></strong></p>\n\n<p><strong><span style=\"font-size:20px;\"><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-trong-2.jpg\" /></span></strong></p>\n\n<p>Thiết kế nhà của anh Trọng&nbsp;nằm ở vùng đất rộng&nbsp;nên có 2 đầu tòa nhà nên trông hấp dẫn hơn. Nhìn từ bên ngoài, thiết kế nhà của anh&nbsp;sử dụng mô hình mái kim tự tháp bằng vật liệu bê tông. Các bức tường bên ngoài đã được hoàn thiện bằng đá trang trí Jogja, đá đền, hoàn thiện sơn và thêm một vỉ nướng gỗ làm điểm nhấn. Ngoài ra còn có các lỗ mở lớn ở dạng cửa sổ và ban công với lan can sắt.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-trong-1.jpg\" /></p>\n\n<p>Ngoại thất ở sảnh nhà có không gian trống được chúng tôi thiết kế làm không gian để xe. Không gian xung quanh căn nhà được trồng nhiều cây xanh giúp điều hòa không khí và tạo không gian sống xanh, trong lanh, mát mẻ cho căn nhà.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết nội thất biệt thự 2 tầng</span></strong></p>\n\n<p>Đi vào bên trong ngôi nhà ở tầng trệt có một phòng gia đình, phòng ăn và nhà bếp sạch sẽ nằm trong một phòng không có lớp cách nhiệt nên có vẻ rộng rãi. Phòng khách đuộc trang hoàng&nbsp;bởi màu trắng và sự hiện diện của các yếu tố màu xanh lá cây dưới dạng thực vật như một đặc trưng của phong cách nhiệt đới hiện đại. Trên đỉnh bàn ăn và phòng gia đình có một chiếc đèn chùm với thiết kế độc đáo và hiện đại. Không chỉ vậy, ở phía trên cùng của phòng gia đình còn có một khoảng trống nối giữa tầng trệt với tầng trên cùng. Đối với các vật liệu được sử dụng trên trần nhà, tường và sàn của các phòng liên tiếp,&nbsp;sử dụng thạch cao, sơn hoàn thiện màu trắng và gạch granitemàu trắng. Trên tường cũng cho tác phẩm nghệ thuật dưới dạng tranh và ảnh.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-trong.jpg\" /></p>\n\n<p>Ấn tượng hiện đại nhiệt đới được cảm nhận từ sự đơn giản và vẻ ngoài sạch sẽ của thiết kế phòng. Trong căn phòng này có các cửa mở dưới dạng cửa sổ kính và cửa kính trượt và cửa kính gấp như lối vào sân thượng và khu vườn, ánh sáng tối ưu và thông gió tự nhiên vào nhà để ngoài việc tiết kiệm điện sử dụng, nó còn giúp ngôi nhà tiện nghi và thoáng mát hơn. Cửa mở lớn được&nbsp;kiến ​​trúc sư cố gắng xóa bỏ ranh giới giữa không gian bên ngoài và không gian bên trong&nbsp;dường như được kết nối với môi trường xung quanh.</p>\n\n<p>Trong tổng thể , thiết kế của ngôi nhà thuộc về anh Trọng ở Thái Bình&nbsp;có một cảm giác hiện đại và giao diện của mạnh mẽ tạo thành một yếu tố dòng đối xứng. Bên cạnh đó, thiết kế nhà với phong cách nhiệt đới hiện đại chắc chắn mang lại ấn tượng về sự sang trọng bên cạnh cảm giác thoải mái thu được. Bạn có muốn xây dựng một ngôi nhà với thiết kế căn biệt thự như này&nbsp;không? Nếu vậy, hãy đặt ngay một lịch trình tư vấn thiết kế với chúng tôi, GEMIHOME. Cùng với GEMIHOME tạo ra một ngôi nhà mơ ước sẽ nâng cấp chất lượng cuộc sống của gia đình bạn.</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 302px; top: 3743px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-trong-thumline.jpg', 'THIẾT KẾ BIỆT THỰ A TRỌNG THÁI BÌNH', 'thiet-ke-biet-thu-hai-tang-a-trong-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-biet-thu-a-trong-thai-binh', '', 'THIẾT KẾ BIỆT THỰ A TRỌNG THÁI BÌNH', 'thiết kế biệt thự hai tầng, thiet ke biet thu hai tang', 'Mỗi căn biệt thự có một điểm nhấn nhá riêng nhưng với căn biệt thư của anh Trọng thì điều đó lại nổi hơn bao giờ hết. Thiết kế 2 mặt tiền góc lô với điểm nhấn nhá hình mái và cảnh của đã tạo lên đẳng cấp của gia chủ ', 81, '', 13, 16, 18, 23, '2020-01-17 15:33:13', 1, 1, '2020-02-14 02:38:55', ''),
(189, '', 'THIẾT KẾ BIỆT THỰ  A TIẾN', '', '', '<p>Thiết kế biệt thư ba tầng luôn là môt điểu khó khăn, luôn phải đảm báo cái riêng của gia chủ nhưng phải hài hoà với thiết kế chuẩn mực. Với công trình của a Tiến cũng thế, căn biệt thự hai tâng của anh đã làm nổi bật lên tính cách của anh</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 104px; top: 34px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '<p>Đến với GEMIHOME anh Tiến bày tỏ nhu cầu muốn thiết kế căn biệt thự 3&nbsp;tầng với mặt tiền rộng 12m với thiết kế hiện đại và không gian sống gần gũi với thiên nhiên, có gara để xe ngay trong nhà. Dựa vào yêu cầu cũng như sở thích của anh, chúng tôi quyết định xây biệt thự 2 tầng và một tum theo phong cách châu Âu hiện đại.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết biệt thự 3&nbsp;tầng có hầm để xe</span></strong></p>\n\n<p>Căn nhà nằm ngay trên con đường sầm uất nên chúng tôi đã&nbsp;lùi vào 1m so với đường để tạo khoảng không cho căn nhà. Căn biệt thự dử dụng tone màu phổ biến trắng- xám điểm xuyết vài chi tiết nâu.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-biet-thu-hai-tang-a-tien-2.jpg\" /></p>\n\n<p>Căn nhà được thiết kế vuông vắn, đường nét mạnh mẽ dứt khoát, đơn giản. Điểm nhấn của căn nhà là ngói lệch 2 bên độc đáo, mới lạ.&nbsp;Loại nhà mái lệch mới xuất hiện và chỉ phổ biến trong thời gian gần đây. Về mặt kết cấu, mái lệch sẽ giống với việc đổ mái bằng. Tuy nhiên, với độ chênh lệch và dốc hai bên mái khác nhau sẽ mang đến hiệu ứng lệch tầng lạ mắt cho người xem. Với các mặt cắt không cân xứng nhưng nhà mái lệch lại mang đầy nét gợi mở về môi trường sống đầy tự nhiên, điều này sẽ tạo nên một không gian kiến trúc đầy phong cách cho gia chủ.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-biet-thu-hai-tang-a-tien-1.jpg\" /></p>\n\n<p>Cổng vào được thiết kế thấp, có thanh lam&nbsp;dọc tạo khoảng trống cho căn nhà. Ban công ở tầng 2 và tầng 3 được thiết kế đan xen độc đáo. Tòan bộ hệ thống lan can được làm bằng kính cường lực, khung gỗ vừa nhỏ gọn, sạch sẽ, thông thoáng mà độ bàn cơ học lâu. Ở các ban công được trang trí chậu cây cảnh để điều hòa không khí và làm không gian thoáng mát.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-biet-thu-hai-tang-a-tien.jpg\" /></p>\n\n<p>Toàn bộ hệ thống cửa là cửa thiết kế lớn làm bằng kính làm ngôi nhà luôn sáng sủa, thông thoáng. Bên cạnh đó, hệ thống rèm cửa ở các cửa không chỉ giúp điều hòa lượng ánh sáng mà còn giúp căn nhà sang trọng, tinh tế. Hầm để xe thiết kế với độ cao 1,8m chiều rộng 2m rộng rãi thông thoáng được bố trí ngay cổng.&nbsp;</p>\n\n<p>Mẫu thiết kế biệt thự 3 tầng hiện nay vô cùng phổ biến, chỉ cần một cái nhấp chuột thôi thì vô vàn mẫu thiết kế biệt thự đẹp, mẫu thiết kế biệt thự sang trọng, mẫu biệt thự mang phong cách hiện đại, biệt thự đẹp mang phong cách cổ điển. Hãy liên hệ với GEMIHOME đẻ có lựa chọn tốt nhất nhe.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-tien-thumeline.jpg', 'THIẾT KẾ BIỆT THỰ  A TIẾN', 'thiet-ke-biet-thu-hai-tang-a-tien-thumeline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-biet-thu-a-tien', '', 'THIẾT KẾ BIỆT THỰ  A TIẾN', 'thiết kế biệt thự hai tầng, thiet ke biet thu hai tang', 'Thiết kế biệt thư hai tầng luôn là môt điểu khó khăn, luôn phải đảm báo cái riêng của gia chủ nhưng phải hài hoà với thiết kế chuẩn mực. Với công trình của a Tiến cũng thế, căn biệt thự hai tâng của anh đã làm nổi bật lên tính cách của anh', 81, '', 13, 16, 18, 22, '2020-01-17 15:39:42', 1, 1, '2020-02-14 06:39:41', ''),
(190, '', 'THIẾT KẾ BIỆT THỰ A THÀNH BẮC GIANG', '', '', '<p>Hiện nay thiết kế thi kiến trúc biệt thự hai tầng đang là một xu hướng mới. Với đội ngũ nhiều năm kinh nghiệm GEMIHOME chúng sẽ thiết kế cho bạn một biệt thự hiện đại sang trong nhưng đầy tinh tế.</p>\n', '', '', '', '', '', '<p>Nằm trên mảnh đất rộng, yên tĩnh, anh Thành ở Bắc Giang quyết định thiết kế một căn biệt thự 2 tầng sang trọng đẹp mặt, thể hiện được vị thế, đẳng cấp của mình. Hãy cùng chúng tôi ngắm nhìn toàn cảnh ngoại thất của gia đình anh Thành nhé.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết biệt thự 3 tầng hiện đại</span></strong></p>\n\n<p>Biệt thự 3 tầng hiện đại được thiết kế tập trung vào các mảng khối với đường nét dứt khoát và khỏe khoắn. Các khối thò thụt tạo sự chuyển động nhịp nhàng mang tới sự độc đáo cho căn nhà. Tường bao 3 bên được xây cao, sơn màu trắng. Tường bao trước nhà có sự kết hợp của gỗ nâu nổi bật. Phía trước nhà tạo sự đồ sộ, thiết kế cầu kì với ác tấm lam che thoáng có thể mở ra đóng vào, viền bao bằng sắt tạo đường nét vuông vắn.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-thanh-3.jpg\" /></p>\n\n<p>Mặt bên với thiết kế mở tạo sự liên kết chặt chẽ giữa không gian nội thất bên trong và ngoại thất phía ngoài. Nhờ tâm kính rộng nằm tại giữa khu vực cầu thang, kéo dài từ tầng 1 tới tầng 3. Thêm vào đó là các hệ cửa sổ bằng kính được bố trí khoa học nên đã đảm bảo được ánh sáng cho không gian sống bên trong.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-thanh-2.jpg\" /></p>\n\n<p>Mặt bên này có thiết kế kín đáo hơn, chỉ được bố trí hệ cửa sổ kính, nhưng điểm nhấn nằm ở mảng ốp màu đỏ bao quanh cửa sổ. Tầng 2 có phần đua ra so với tầng 1 ở cả 3 mặt tiền nhằm nới rộng diện tích công năng, đảm bảo kết cấu công trình.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-thanh-1.jpg\" /></p>\n\n<p>Phía trên tầng 3 được bố trí mộ khoảng sân thượng có mái che chắc chắn. Lan can làm bằng kính cường lực, không chỉ đảm bảo an toàn mà còn tạo độ thoáng cho phần mặt tiền. Và cũng tại nơi đây, kiến trúc sư&nbsp;đã bố trí rất nhiều các chậu cây xanh và hoa cỏ, tạo một tiểu cảnh nhỏ để tạo sự sinh động, điều hòa không khí,&nbsp;mang tới một không gian nghỉ ngơi thư gian vô cùng tuyệt vời. Hai bên nhà đều có lối đi nhỏ để dẫn về không gian sống phía sau nhà. Đồng thời đây còn là nơi hút gió và lấy sáng chiếu qua hệ cửa sổ.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-thanh.jpg\" /></p>\n\n<p>Tổng quan, đây là mẫu biệt thự hiện đại, ngoại thất được thiết kế đẹp mắt, kết hợp hài hòa của 2 màu trắng nâu đã đem mang lại vẻ sang trọng, đẳng cấp cho căn nhà</p>\n\n<p>GEMIHOME là nơi quy tụ các KTS giàu tâm huyết, chuyên nghiệp và sáng tạo cho ra đời các sản phẩm thật sự khác biệt và độc đáo! Bạn đã sẵn sàng cùng GEMIHOME biến những điều bạn đang ấp ủ thành một tác phẩm thật sự nổi bật, sáng tạo với chi phí hợp lý nhất chưa? Hãy bắt đầu liên hệ ngay với chúng tôi để bạn được tư vấn hoàn toàn miễn phí và dịch vụ chuyên nghiệp nhất!!!</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-thanh-thumline.jpg', 'THIẾT KẾ BIỆT THỰ A THÀNH BẮC GIANG', 'thiet-ke-nha-pho-a-thanh-thumline', 0, 0, 0, 0, 0, 0, 200, '', 999, b'1', b'1', 'thiet-ke-biet-thu-a-thanh-bac-giang', '', 'THIẾT KẾ BIỆT THỰ A THÀNH BẮC GIANG ', 'thiết kế biệt thự hai tầng, thiet ke biet thu hai tang', 'Hiện nay thiết kế thi kiến trúc biệt thự hai tầng đang là một xu hướng mới. Với đội ngũ nhiều năm kinh nghiệm GEMIHOME chúng sẽ thiết kế cho bạn một biệt thự hiện đại sang trong nhưng đầy tinh tế.', 81, '', 13, 16, 18, 23, '2020-01-17 15:45:32', 1, 1, '2020-02-14 01:40:49', ''),
(191, '', 'THIẾT KẾ BIỆT THỰ A PHÚC NINH BÌNH', '', '', '<p>Một góc lô đất 2 mặt tiền anh Phúc yêu cầu phải thiết kế một biệt thự&nbsp; nổi nhất khu anh đang ở nhưng thật hiện đại và tiện nghi. Không gian mở&nbsp; hai mặt tiền Gemihome đã thiết kế một phong cách mới lại tạo một biệt thự đẳng cấp</p>\n', '', '', '', '', '', '<p>Vợ chồng anh Phúc tìm đến GEMIHOME để được tư vấn thiết kế căn nhà cho 3 thế hệ đầy đủ, tiện nghi, tận dụng hết công năng. Yêu cầu của anh đặt ra cho kiến trúc sư là: kết cấu bền vững, ngoại thất đẹp mắt, màu sắc hài hòa, công năng khoa học. Ngoài ra những công năng cơ bản anh muốn kiến trúc sư lưu ý đó là: phòng khách thiết kế phải rộng, do gia đình thường xuyên có số lượng khách đến chơi nhà khá đông. Sau khi khảo sát mặt bằng thực tế, chúng tôi quyết định thiết kế cho anh mẫu biệt thự mini 3 tầng đẹp.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết mẫu biệt thự mini 3 tầng đẹp.</span></strong></p>\n\n<p>Vị trí ô đất nằm ở hai mặt tiền, vị trí đẹp và trung tâm nên cực kỳ thuận tiện cho việc thiết kế tạo không gian thoáng đãng.&nbsp;Mẫu biệt thự đẹp thiết kế hai mặt tiền phải chú trọng đến sự đồng bộ về mặt thẩm mĩ chung cho cả không gian, không chỉ chú trọng đến sự liên kế về hình khối, hài hòa về màu sơn, các chi tiết trang trí còn phải tạo được sự lôi cuốn. Diện tích ô đất không có vuông, tuy nhiên với cách xử lý khối và bố cục thông minh của kiến trúc sư, những khuyết điểm đều được hạn chế tối đa.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-phuc-31.jpg\" /></p>\n\n<p>Khoảng tường giữa hai mặt tiền được thi công bằng gạch thông gió, sơn trắng, ôm trọn vẹn đường biên ranh giới, hệ thống cửa cổng chính thiết kế bằng sắt phun sơn tĩnh điện nên khoảng không gian mặt tiền trông khá ấn tượng và có sức cuốn hút mạnh mẽ. Hình khối công trình được xử lý đơn giản, tập trung vào những khối phẳng cùng với việc thiết kế bố cục không cân xứng mang đến những nét đẹp cứng chắc, nhẹ nhàng và lôi cuốn mạnh mẽ. Toàn bộ mặt tiền chính được xử lý kết hợp với khoảng tường thông gió trắng, ban công kính cường lực màu nâu vân gỗ và hệ thống lam gỗ ốp với cửa nhôm Xingfa màu nâu đen, không gian trông thoáng hơn, rộng hơn và tràn ngập sức sống.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-phuc-11.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-phuc-21.jpg\" /></p>\n\n<p>Khoảng tường giữa hai mặt tiền được thi công bằng gạch thông gió, sơn trắng, ôm trọn vẹn đường biên ranh giới, hệ thống cửa cổng chính thiết kế bằng sắt phun sơn tĩnh điện nên khoảng không gian mặt tiền trông khá ấn tượng và có sức cuốn hút mạnh mẽ. Hình khối công trình được xử lý đơn giản, tập trung vào những khối phẳng cùng với việc thiết kế bố cục không cân xứng mang đến những nét đẹp cứng chắc, nhẹ nhàng và lôi cuốn mạnh mẽ. Toàn bộ mặt tiền chính được xử lý kết hợp với khoảng tường thông gió trắng, ban công kính cường lực màu nâu vân gỗ và hệ thống lam gỗ ốp với cửa nhôm Xingfa màu nâu đen, không gian trông thoáng hơn, rộng hơn và tràn ngập sức sống.</p>\n\n<p>GEMIHOME là nơi quy tụ các kiến trúc sư giàu tâm huyết, chuyên nghiệp và sáng tạo cho ra đời các sản phẩm thật sự khác biệt và độc đáo! Bạn đã sẵn sàng cùng GEMIHOME biến những điều bạn đang ấp ủ thành một tác phẩm thật sự nổi bật, sáng tạo với chi phí hợp lý nhất chưa? Hãy bắt đầu liên hệ ngay với chúng tôi để bạn được tư vấn hoàn toàn miễn phí và dịch vụ chuyên nghiệp nhất!!!</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-phuc-thumline1.jpg', 'THIẾT KẾ BIỆT THỰ A PHÚC NINH BÌNH', 'thiet-ke-biet-thu-hai-tang-a-phuc-thumline1', 0, 0, 0, 0, 0, 0, 250, '', 999, b'1', b'1', 'thiet-ke-biet-thu-a-phuc-ninh-binh', '', 'THIẾT KẾ BIỆT THỰ A PHÚC NINH BÌNH', 'thiết kế biệt thự hai tầng, thiet ke biet thu hai tang', 'Một góc lô đất 2 mặt tiền anh Phúc yêu cầu phải thiết kế một biệt thự  nổi nhất khu anh đang ở nhưng thật hiện đại và tiện nghi. Không gian mở  hai mặt tiền Gemihome đã thiết kế một phong cách mới lại tạo một biệt thự đẳng cấp', 81, '', 13, 16, 18, 23, '2020-01-17 15:52:29', 1, 1, '2020-02-14 06:45:49', ''),
(192, '', 'THIẾT KẾ THI CÔNG BIỆT THƯ A NGỌC', '', '', '<p>Mẫu biệt thự hiện đại&nbsp;ngày càng được khách hàng ưa thích. Với bề ngoài sang trọng đi kèm cùng nội thất tinh tế tạo nên một kiến trúc tuyệt vời</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 83px; top: 34px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '<p>Nằm giữa khu đô thị rộng lớn, với kiến trúc biệt thự 4 tầng hiện đại, toàn biệt thự của anh Ngọc là niềm tự hòa của gia đình và trở thành niềm mơ ước của biết bao người. Hãy cùng GEMIHOME ngắm nhìn toàn cảnh bản thiết kế ngôi biệt thự 4 tầng hiện đại này nhé.</p>\n\n<p><span style=\"font-size:20px;\"><strong>Chi tiết mẫu biệt thự 4 tầng hiện đại</strong></span></p>\n\n<p>Không cầu kỳ về họa tiết ngôi nhà được lược bớt hoa văn, phào chỉ rườm rà mà thay vào đó là hệ trụ cột vuông là điểm nhấn cho ngôi nhà. Những hình khối vuống vắn của ngôi nhà được các kiến trúc sư thiết kế tạo sự khỏe khoắn, trẻ trung cho ngoại thất của ngôi nhà. Những nét kiến trúc hiện đại cùng các vật liệu hiện đại được sử dụng khiến ngôi nhà hài hòa và phù hợp với cuộc sống hiện nay.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-ngoc1.jpg\" /></p>\n\n<p>Mặt tiền biệt thự đẹp được thiết kế vô cùng thu hút trước mọi ánh nhìn của người dân đi ngang qua đây, hiên nhà được thiết kế với những hình khối tạo sự năng động, khỏe khoắn, chúng ẩn khéo nhẹ nhàng, tinh tế khi lựa chọn gam màu trắng hòa cùng gam màu tường chủ đạo.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-ngoc-11.jpg\" /></p>\n\n<p>Ngôi nhà sử dụng toàn bộ hệ thống cửa kính để mở rộng tối đa không gian. Hệ thống tiền sảnh, ban công được tô điểm tinh xảo, góp phần tạo sự mềm mại, hài&nbsp;hòa cho toàn bộ biệt thự. Lan can được làm bằng nhôm đen với họa tiết công phu tỉ&nbsp;mỉ, nổi bật trên tone màu sơn tường, Chậu cây xanh làm cho không gian căn nhà trong lành, mát mẻ.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-ngoc-21.jpg\" /></p>\n\n<p>Cổng vào là 2 cổng sắt lớn với mái thái xanh làm căn nhà vừa pha chút hiện đại, vừa mang hơi hướng Tân cổ điển. Bên cạnh đó là những chi tiết trang trí bên ngoài như&nbsp; mảng tường họa tiết vàng làm biệt thự càng uy lực.</p>\n\n<p>GEMIHOME là nơi quy tụ các kiến trúc sư giàu tâm huyết, chuyên nghiệp và sáng tạo cho ra đời các sản phẩm thật sự khác biệt và độc đáo! Bạn đã sẵn sàng cùng GEMIHOME biến những điều bạn đang ấp ủ thành một tác phẩm thật sự nổi bật, sáng tạo với chi phí hợp lý nhất chưa? Hãy bắt đầu liên hệ ngay với chúng tôi để bạn được tư vấn hoàn toàn miễn phí và dịch vụ chuyên nghiệp nhất!!!</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-ngoc-thumline1.jpg', 'THIẾT KẾ THI CÔNG BIỆT THƯ A NGỌC', 'thiet-ke-biet-thu-hai-tang-a-ngoc-thumline1', 0, 0, 0, 0, 0, 0, 200, '', 999, b'1', b'1', 'thiet-ke-thi-cong-biet-thu-a-ngoc', '', 'THIẾT KẾ THI CÔNG BIỆT THƯ A NGỌC ', 'thiết kế biệt thự hai tầng, thiet ke biet thu hai tang', 'Mẫu biệt thự mini ngày càng được khách hàng ưa thích. Với bề ngoài sang trọng đi kèm cùng nội thất tinh tế tạo nên một kiến trúc tuyệt vời', 81, '', 10, 17, 18, 23, '2020-01-17 15:56:31', 1, 1, '2020-02-14 10:10:56', '');
INSERT INTO `products` (`ProductsID`, `SKU`, `Title`, `Title_en`, `Title_fr`, `Description`, `Description_en`, `Description_fr`, `Desc`, `Desc_en`, `Desc_fr`, `Body`, `Body_en`, `Body_fr`, `Body2`, `Body2_en`, `Body2_fr`, `Body3`, `Body3_en`, `Body3_fr`, `ImagePreset`, `ImageURL`, `ImageTitle`, `ImageAlt`, `IsNew`, `IsPromotion`, `IsSellers`, `IsHot`, `IsStock`, `ListPrice`, `SellPrice`, `Warranty`, `Orders`, `Publish`, `ShowPrice`, `Slug`, `Tags`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `CategoriesProductsID`, `SubCategoriesProductsID`, `SortingBrandID`, `SortingResID`, `SortingChannelID`, `SortingPriceID`, `CreatedDate`, `CreatedBy`, `ModifiedBy`, `ModifiedDate`, `Hightlight`) VALUES
(193, '', 'THIẾT KẾ THI CÔNG BIỆT THỰ ANH KIÊN', '', '', '<p>Mẫu biệt thự hai tầng DCL được A Kiên đầu tư với kinh phí 2 tỷ đồng xây dựng.&nbsp; Diện tích xây dựng là 200m<sup>2</sup>&nbsp;sàn. Đã được GEMIHOME thiết kế và thi công trong vòng 8 tháng.</p>\n', '', '', '', '', '', '<p>Ngôi biệt thự 2 tầng 200m<sup>2</sup> lộng lẫy nổi bật giữa thành phố của gia đình anh Kiên&nbsp;được vào top các kiến trúc nhà hiện đại tuyệt đẹp được lấy làm mẫu cho xu hướng xây dựng ở nông thôn. Một kiến trúc không chỉ tinh tế, có tính thẩm mỹ cao mà còn bày tỏ được những quan điểm Á Đông chính thống rất tốt. Cùng chúng tôi khám phá vẻ đẹp thẩm mỹ kiến trúc và sự khoa học trong cách bố trí công năng của căn biệt thự hiện đại.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết biệt thự 2 tầng 200m<sup>2</sup></span></strong></p>\n\n<p>Hình ảnh đầu tiên phối cảnh cho chúng ta thấy toàn bộ khuôn viên&nbsp; của ngôi nhà như một tòa lâu đài lộng lẫy. Góc nhìn này cho phép chúng ta thấy được toàn bộ khuôn viên của ngôi nhà để đánh giá về kiến trúc chung của nó một cách chính xác theo tính tổng thể. Cửa chính của ngôi nhà đẹp được sử dụng chất liệu gỗ tự nhiên màu cánh gián khá độc đáo với hoa văn cổ điển pha chút hiện đại, gần gũi với thiên nhiên không gây cảm giác nóng bức, ngột ngạt cho ngôi nhà. Bù lại, hệ thống cửa sổ của toàn bộ ngôi nhà này được thiết kế bằng kính cường lực mang lại những lợi ích lớn cho căn nhà. Nó vừa có tác dụng chắn gió lại vừa giúp lọc tiếng ồn và bụi bẩn của phố xá tạo nên một môi trường sống trong lành cho các thành viên trọng gia đình, đáp ứng được yêu cầu của một căn nhà phố hiện đại.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-kien-2.jpg\" />Ngoài ra, hệ thống cây xanh được trồng ở ban công và khoảng sân trước nhà và bên hông trồng nhiều cây xanh quanh nhà cũng có khả năng tạo bóng mát và lọc không khí, giúp môi trường sống bớt đi sự ô nhiễm của tiếng ồn, bụi bặm của phố xá. Màu sắc và các tầng mái của ngôi nhà được thiết kế rất hài hòa ở tầng mái trên và mái ban công. Màu xanh được sử dụng làm chủ đạo vừa là xu hướng màu nổi trội của kiến trúc nhà mái thái trong những năm gần đây vừa hợp với mệnh của gia chủ nên rất được lòng anh mạnh.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-kien1.jpg\" /></p>\n\n<p>Để tạo không gian thoánh mát cho cả không&nbsp;gian nhà, chúng tây xây dựng hệ thống rào chắn bằng gỗ lam dọc với tone màu sáng . cổng được thiết kế thoáng mát, mái thái cùng màu với mái nhà làm không gian mát mẻ. Cột cổng được gạch men vân đá sang trọng.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-kien-12.jpg\" /></p>\n\n<p>Nếu bạn đang có nhu cầu xây dựng một ngôi nhà mới có thể tham khảo mẫu biệt thự 2 tầng này. Màu sắc của ngôi nhà hay các thiết kế bên trong đều có thể cải tiến, cách tân tùy vào mong muốn và sở thích của gia chủ. Chúng tôi sẽ nhận tư vấn, thiết kế&nbsp;theo sở nguyện của khách hàng và với phong cách làm việc chuyên nghiệp sẽ mang đến sự hài lòng nhất cho khách hàng. Chúc các bạn sẽ tìm được niềm vui nơi ngôi nhà mới của mình cũng như niềm vui của chúng tôi là được nhìn thấy nụ cười mãn nguyện của gia đình bạn!</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 645px; top: 2524px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-kien-thumline1.jpg', 'THIẾT KẾ THI CÔNG BIỆT THỰ ANH KIÊN', 'thiet-ke-biet-thu-hai-tang-a-kien-thumline1', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-thi-cong-biet-thu-anh-kien', '', 'THIẾT KẾ THI CÔNG BIỆT THỰ ANH KIÊN ', 'thiết kế biệt thự hai tầng, thiet ke biet thu hai tang', 'Mẫu biệt thự hai tầng DCL được A Kiên đầu tư với kinh phí 2 tỷ đồng xây dựng.  Diện tích xây dựng là 200m/ sàn. Đã được GEMIHOME thiết kế và thi công trong vòng 8 tháng.', 81, '', 10, 16, 18, 23, '2020-01-17 16:04:54', 1, 1, '2020-02-14 00:27:48', ''),
(194, '', 'THIẾT KẾ BIỆT THỰ A KHANG', '', '', '<p>Mẫu biệt thư 2 tầng chiếm trọn tình cảm của khách hàng. Chi phí xây dựng vừa phải nhưng lại mang thể hiện đầy đủ phong cách của chủ nhà.&nbsp; Mái thái kết hợp không gian xanh là mô hình xây dựng phù hợp lý tưởng với những mảnh đất rộng</p>\n', '', '', '', '', '', '<p>Không khí ngày càng nóng và biến đổi thất thường làm cho những mẫu thiết kế biệt thự sinh thái, mẫu thiết kế biệt thự xanh đang là xu hướng được rất rất nhiều chủ đầu tư lựa chọn. Nếu như sinh thái, xanh được quan tâm thì hiện tại những thiết kế biệt thự theo phong thủy cũng đang được lên ngôi. Anh Khang nắm bắt được xu thế nên quyết định thiết ké ngôi biệt thự 2 tầng như khu sinh thái xanh, trong lành.</p>\n\n<p><strong><span style=\"font-size:20px;\">&nbsp;Chi tiết căn biệt thự 2 tầng</span></strong></p>\n\n<p>Mẫu thiết kế biệt thự đẹp được thiết kế theo phong cách hiện đại, những đường nét thẳng kiến trúc chủ đạo của ngôi nhà. Lấy ý tưởng từ những ngôi nhà Nhật Bản giúp ngôi nhà thoáng nhìn tưởng như một căn biệt thự Nhật Bản lạc vào giữa vùng trời Việt Nam. Nhờ lấy ý tưởng là kiến trúc biệt thự 1 tầng Nhật Bản chính vì vậy lối đưa ban công tầng 2 của mẫu biệt thự hết sức đặc biệt. Chính điểm này đã làm nên điểm nhấn và độc đáo cho căn nhà.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-khang-2_(1)1.jpg\" /></p>\n\n<p>Đặc sách trong ngôi nhà là cách các kiến trúc sư lồng ghép sắc đỏ ấm áp vào từng chi tiết.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-khang_(1)1.jpg\" /></p>\n\n<p>Để tạo không gian thông thoáng cho că nhà, chùng tôi loại bỏ phương án xây tường rào bằng bức tường cao bí bách mà thay vào đó là rào chắn thanh làm dọc tạo khoảng trống và cổng sơn màu đỏ sang trọng có khoảng trống</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-khang-3_(1)1.jpg\" /></p>\n\n<p>Ngôi nhà được đặt giữa hệ sinh thái xanh nhiều cây hóa giúp không gian trong lành thoáng mát, loại bỏ bụi bẩn của phố thị. Đây quả là nơi đáng sống cho người yêu không gian xanh, yêu không khí trong lành.</p>\n\n<p>Mẫu thiết kế biệt thự phố 2 tầng hiện nay vô cùng phổ biến, chỉ cần một cái nhấp chuột thôi thì vô vàn mẫu thiết kế biệt thự đẹp, mẫu thiết kế biệt thự sang trọng, mẫu biệt thự mang phong cách hiện đại, biệt thự đẹp mang phong cách cổ điển. Hãy liên hệ với GEMIHOME đẻ có lựa chọn tốt nhất nhe.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-khang-thumline_(1)1.jpg', 'THIẾT KẾ BIỆT THỰ A KHANG', 'thiet-ke-biet-thu-hai-tang-a-khang-thumline_(1)1', 0, 0, 0, 0, 0, 0, 200, '', 999, b'1', b'1', 'thiet-ke-biet-thu-a-khang', '', 'THIẾT KẾ BIỆT THỰ A KHANG ', 'thiết kế biệt thự hai tầng, thiet ke biet thu hai tang', 'Mẫu biệt thư 2 tầng chiếm trọn tình cảm của khách hàng. Chi phí xây dựng vừa phải nhưng lại mang thể hiện đầy đủ phong cách của chủ nhà.  Mái thái kết hợp không gian xanh là mô hình xây dựng phù hợp lý tưởng với những mảnh đất rộng', 81, '', 10, 16, 18, 23, '2020-01-17 16:09:27', 1, 1, '2020-02-14 06:44:58', ''),
(195, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A ĐỨC', '', '', '<p>Với mặt tiền rộng 5m nằm trong khu đô thị tốt nhất của thành phố. A Đức yêu cầu về gara và sự đơn giản chúng tôi đã thiết kế căn nhà lô phố&nbsp; ấn tượng. Mức đầu tư chỉ 1,2 tỷ anh Đức đã xây một căn nhà như mong muốn</p>\n', '', '', '', '', '', '<p>Tọa lạc tại trung tâm thị trấn phát huyện Đông Anh, căn nhà được thiết kế đơn giản, thoáng mát&nbsp; và thân thiện với môi trường. Bao gồm 1 tầng hầm và 2 tầng nổi, tầng hầm là gara&nbsp;để xe cà nhà kho, tầng 1 là không gian phòng khách nhà bếp,&nbsp;tầng 2 là không gian 2 phòng ngủ&nbsp;và sân vườn trên mái</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết thiết kế nhà phố 2 tầng có tầng hầm và sân vườn trên mái</span></strong></p>\n\n<p>Tone màu chủ đạo của căn nhà là trắng và nâu đơn&nbsp;giản, sang trọng. Khu ban công được thiết kế lùi hằn ra so với móng nhà để đón gió và nắng. Ngoài bam công các tầng thì sân thượng được vợ chồng anh Đức trồng cây xanh giúp&nbsp;điều hòa không khí trong căn nhà. tầng cửa tầng hầm thiết kế rộng rãi 3x2m đúng theo lối nhà mang phong cách hiện đại</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-biet-thu-hai-tang-a-duc1.jpg\" /><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-duc-11.jpg\" /></p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất bên trong ngôi nhà</span></strong></p>\n\n<p>Ngôi nhà phố 2 tầng hiện đại được chúng tôi bố trí phòng như sau</p>\n\n<p>Tầng 1 được&nbsp;bố trí phóng khách và phòng ăn nhà bếp</p>\n\n<p>Tầng 2 gồm 2 phòng ngủ hiện đại tiện nghi</p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Phòng khách được bố trí ở ngay lối vào, lấy ánh sáng từ cửa sổ lớn hướng ra ban công. Nội thất được thiết kế theo phong cách hiện đại với 2 tone màu chính là trắng và xám. Không gian rộng rãi nên gia chủ đặt bộ sofa 2 ghế dài thiện nghi êm ái để gia đình nghỉ ngơi, quây quần.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-duc-phong-khach1.jpg\" /></p>\n\n<p>Bàn trà được thiết kế độc đáo mới lạ với mặt trắng bóng càng làm sáng hơn không gian căn phòng. Hệ thống rèm cửa ở cửa ban công dang trọng không chỉ giúp điều chỉnh lượng sáng mà còn làm căn phòng thêm đẳng cấp. Khu vực bàn ăn và nhà bếp được đặt ngay cùng không gian với phòng khách</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-duc-phong-khach-11.jpg\" /></p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng ăn, nhà bếp</span></strong></p>\n\n<p>Phòng bếp cũng được thiết kế ngay cạng cửa kính lớn để đón tối đa nguồn sáng tự nhiên, Bên ngoài ban công nhà bếp còn được trang trí cây xanh giúp lưu thông khí, không bị ám mùi thức ăn. Bàn ăn được thiết kế 10 chỗ ngồi hiện đại với tone trắng sang trọng. Hệ thống đèn trần độc đao tạo cảm giác mới lạ, ấn tượng cho gian phòng.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-duc-phong-bep1.jpg\" /></p>\n\n<p>Ngoài ra, tầng 1 còn bố trí&nbsp; phòng ngủ nhỏ và 1 nhà vệ sinh chung cho cả gia đình.</p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Phòng ngủ Master được thiết kế ngay ngoài ban công thoáng mát. Hai tone màu chonhs là nâu - trắng làm căn phòng sang trọng, mát mẻ</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-phong-ngu-11.jpg\" />&nbsp;Phòng ngủ con được thiết kế đơn giản với 2 màu trắng - xanh xám. Hệ thống cửa làm bằng kính làm không gian thoáng mát, sáng sủa</p>\n\n<p>Mẫu thiết kế nhà phố 2 tầng có hầm để xe hiện đại và khoa học, bố trí công năng khoa học, cùng với phối cảnh mặt tiền đẹp, chủ đầu tư hoàn toàn đồng ý. Nếu như gia đình bạn yêu thích mẫu thiết kế này, có thể liên hệ trực tiếp với GEMIHOME để được tư vấn chi tiết và cụ thể hơn.</p>\n\n<p>&nbsp;</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-biet-thu-hai-tang-a-duc-thumeline2.jpg', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A ĐỨC', 'thiet-ke-biet-thu-hai-tang-a-duc-thumeline2', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-biet-thu-a-duc', '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A ĐỨC', 'thiết kế biệt thự hai tầng, thiet ke biet thu hai tang', 'Với mặt tiền rộng 9m nằm trong khu đô thị tốt nhất của thành phố. A Đức yêu cầu về gara và sự đơn giản chúng tôi đã thiết kế căn nhà lô phố  ấn tượng. Mức đầu tư chỉ 1,2 tỷ anh Đức đã xây một căn nhà như mong muốn', 84, '', 10, 16, 0, 23, '2020-01-17 16:15:04', 1, 1, '2020-02-14 06:44:31', ''),
(196, '', 'THIẾT KẾ THI CÔNG BIỆT THỰ A BÌNH', '', '', '<p>Sáng nhất có thể là câu nói anh Bình nói với đội ngũ thiết kế của GEMIHOME. Phong cách hiện đại chất liệu kính chủ đạo bên ngoài đã làm hài lòng yêu cầu của anh Bình.</p>\n', '', '', '', '', '', '<p>Căn biệt thự 3 tầng sở hữu phong cách hiện đại, với phối cảnh kiến trúc ấn tượng, cùng với công năng khoa học, được kiến trúc sư phát triển ý tưởng thiết kế hoàn thiện theo gợi ý của anh Bình&nbsp;tại Hải&nbsp;Dương. Nhờ có nền đất khá cứng chắc, kết hợp với không bị nhiều công trình bao quanh nên kiến trúc sư của GEMIHOME&nbsp;tư vấn cho gia chủ sử dụng hệ móng băng để tiết kiệm thời gian thi công và chi phí.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết biệt thự 3 tầng hiện đại</span></strong></p>\n\n<p>Nhìn bên ngoài thiết kế biệt thự sở hữu mặt tiền hài hòa và có điểm nhấn thông qua phần đá ốp mặt tiền giả gỗ ở tầng 2, tạo nên sự ấm cúng và sang trọng. Trong khi đó phần tầng 1 kiến trúc sư&nbsp;chọn ốp bằng đá granit màu tối để dễ làm sạch và tạo sự bền bỉ cho công trình. Thiết kế tầng 3 đón nhận được nhiều ánh sáng và gió thoáng, nhờ sử dụng nhiều vách ngăn kính ở tường và lan can.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thue1.jpg\" /></p>\n\n<p>Chọn phong cách hiện đại có nghĩa là căn nhà đã sở hữu sự linh hoạt trong việc xử lý, các mảng khối không cần phải đối xứng, nhưng vẫn đảm bảo được vẻ đẹp thẫm mỹ và độ bền theo thời gian. Khối hộp được đổ đua rộng nhô ra phía mặt tiền, giúp biệt thự 200m<sup>2</sup>&nbsp;4 phòng ngủ có thêm những điểm nhấn mạnh mẽ và rõ nét hơn, thể hiện cá tính độc đáo của chủ sở hữu cũng như người thiết kế. Tầng 1 còn có hệ cửa cuốn dẫn lối vào gara để xe bên trong nhà. Không gian bao quát, hiện đại kết hợp với những mảng cây xanh ở mặt tiền, trên ban công và sân thượng được xem là liệu pháp thông minh không chỉ co sức hút về phong thuỷ mà nó còn giúp con người đến gần với thiên nhiên hơn. Kiến trúc biệt thự 3 tầng mái bằng bao trọn những đường nét nhấp nhô của phần tường và móng bên dưới để tăng sự bề thế và vững chãi cho công trình.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-binh1.jpg\" /></p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết không gian bên trong biệt thự 200m2 4 phòng ngủ hiện đại</span></strong></p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng trệt</span></strong>&nbsp;gồm: Sân trước, phòng khách, gara để xe, phòng ăn, nhà bếp, nhà vệ sinh, sân sau. Trên tổng diện tích xây dựng 200m2 anh Bình&nbsp;yêu cầu kiến trúc sư&nbsp;bố trí cho anh thêm một gara để xe với sức chứa 1 ô tô và 4 xe máy để gia đình chị có nơi lưu trữ phương tiện đi lại mà không cần phải gửi bên ngoài. Phòng khách đặt ngay bên cạnh gara để xe nhưng tách biệt hoàn toàn để tránh mùi khói và xăng xe bay vào nhà. Cạnh phòng khách là phòng ăn và bếp nấu có lối thông ra khoảng sân sau nhà, đảm bảo các yếu tố về phong thủy cũng như ánh sáng và sinh khí. Một nhà vệ sinh dùng chung cho cả tầng trệt bố trí gọn gàng cạnh cầu thang.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-binh-41.jpg\" /></p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 2</span></strong> gồm: Phòng ngủ dành cho ông bà, phòng ngủ của vợ chồng anh Bình, phòng thay đồ và nhà vệ sinh. Từ cầu thang đi lên chúng ta sẽ bắt gặp một phòng ngủ lớn có nhà vệ sinh và phòng thay đồ khép kín dành cho vợ chồng gia chủ. Bên trái là phòng ngủ ông bà có ban công dẫn ra lô gia để ông bà luôn cảm thấy yên bình và ấm áp trong biệt thự 4 phòng ngủ</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-hai-tang-a-binh-2.jpg\" /></p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 3</span></strong> gồm: 2 phòng ngủ, phòng thờ, phòng làm việc, nhà vệ sinh và sân thượng. Một phòng thờ đặt cạnh cầu thang và hướng ra khu sân thượng để tạo sự thông thoáng và yên tĩnh cho khu vực tâm linh trong biệt thự 200m2 4 phòng ngủ. 2 phòng ngủ đặt đối xứng nhau và có cửa thông trực tiếp với nhau tạo sự gắn kết giữa các thành viên trong gia đình anh Bình. Phòng làm việc đặt cạnh sân thượng ngăn với sân bằng cửa trượt kính để lấy ánh sáng cho căn phòng.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-biet-thu-hai-tang-a-binh-52.jpg\" /></p>\n\n<p>Trên đây là mẫu thiết kế nhà biệt thự 3 tầng đơn giản, không gian thoáng đãng nhưng không kém phần hiện đại. Quý khách có nhu cầu thiết kế - thi công nhàt đẹp, đừng ngần ngại nói ra ý muốn, Gemi Home sẽ giúp quý vị kiến tạo, xây dưng ước mơ đó.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-biet-thue-thumline1.jpg', 'THIẾT KẾ THI CÔNG BIỆT THỰ A BÌNH', 'thiet-ke-biet-thue-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-thi-cong-biet-thu-a-binh', '', 'THIẾT KẾ THI CÔNG BIỆT THỰ A BÌNH ', 'thiết kế biệt thự hai tầng, thiet ke biet thu hai tang', 'Sáng nhất có thể là câu nói anh Bình nói với đội ngũ thiết kế của GEMIHOME. Phong cách hiện đại chất liệu kính chủ đạo bên ngoài đã làm hài lòng yêu cầu của anh Bình.', 81, '', 14, 16, 18, 23, '2020-01-17 16:19:23', 1, 1, '2020-02-14 07:00:28', ''),
(197, '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A BẰNG', '', '', '<p>Mong muốn vừa sang trong vừa tinh tế nhưng phải hiện đại anh Bằng đã lựa chọn phong cách thiết kế hiện đại mái thái cho ngôi nhà của mình. Với tông màu trắng và ánh đèn váng mái xám đã làm nổi bât lên ngôi nhà một cách ấn tượng</p>\n', '', '', '', '', '', '<p>Ý tưởng thiết kế nhà 2 tầng 4 phòng ngủ 1 phòng thờ diện tích 100m2 được đánh giá cao bởi vẻ đẹp ngoại thất tinh tế và trọn vẹn vô cùng. Gia đình anh Bằng&nbsp;ở Hà Nam&nbsp;sở hữu một không gian ngoại thất, mặt tiền hiện đại và mới mẻ. Kiến trúc và ưu thế của 1 mặt tiền kiến trúc khiến cho ngôi nhà trở nên tinh tế và khác biệt vô cùng.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết biệt thự 4 tầng hiện đại</span></strong></p>\n\n<p>Hệ thống mái thái được xem là loại hình kiến trúc lý tưởng cho biệt thự mang phong cách hiện đại. Những cung vòm cân đối, những đường nét mềm mại, phù điêu tạo nét đẹp thanh thoát, khác biệt. Các hệ thống cửa chính và cửa sổ được sử dụng đồng gam màu vàng nổi bật, ngoài giúp đón gió và lấy ánh sáng tự nhiên còn đảm bảo yếu tố phong thủy về màu sắc cho gia chủ.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-a-bang-mat-tien1.png\" /></p>\n\n<p>Nổi bật trên nền trắng - gam màu chủ đạo của căn nhà là gam nâu của gỗ tươi sáng. Mái đua rộng ra so với tường theo tỉ lệ thích hợp vừa tăng thảm mỹ cho công trình vừa đem đến các lợi ích trong sinh hoạt. Sảnh chính, sảnh phụ được bố trí trụ cột vuông vững chắc nâng đõ toàn bộ mẫu biệt thự đẹp&nbsp;cùng các đường nét phào chỉ đặt tại các điểm đầu mút quan trọng. Khoảng đất trống bên ngoài được kiến trúc sư tạo ra khoảng sân vườn, hồ nước mang đến sự mát mẻ, thẩm mỹ cho biệt thự. Toàn bộ các chi tiết kết hợp ăn ý mang đến tổng thể ngôi nhà sự uy nghi, sang trọng, tinh tế mà xa hoa. Căn biệt thự 2 tầng được kiến trúc sư thiết kế bao gồm: 4 phòng ngủ, 1 phòng thờ, 1 phòng khách, 1 phòng bếp và 4 nhà vệ sinh rộng rãi tiện lợi.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất biệt thự 2 tầng</span></strong></p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-a-bang-phong-khach-11.jpg\" /></p>\n\n<p>Thiết kế cửa sổ lớn đón ánh sáng tự nhiên vào phòng khách và làm cho không gian sống trở nên sáng sủa và thoải mái. Nhiều thiết bị chiếu sáng khác nhau tạo ra một thiết kế ánh sáng hấp dẫn cho phép thay đổi cường độ chiếu sáng và thay đổi tâm trạng trong phòng khách. Đèn trần, đèn bàn hoặc đèn sàn là sự kết hợp lý tưởng để tạo sự thoải mái về thị giác trong phòng khách sang trọng, đẹp lung linh. Ngôi nhà tạo ra những cảm giác khác nhau tùy thuộc vào độ sáng. Ban ngày các bức chân dung tạo ra ánh sáng và bóng râm kích thích và vào ban đêm ánh sáng làm cho bầu không khí ấm cúng.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-a-bang-phong-khach1.jpg\" />Bộ Sofa xanh nổi bật trên tone trắng của cả căn phòng. Thảm và bàn với thiết kế độc đáo, mới lạ làm căn phòng càng nổi bật, ấn tượng.</p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng bếp</span></strong></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-a-bang-phong-khach-bep-1.jpg\" /></p>\n\n<p>Khu nhà ăn và bàn ăn được thiết kế ngay sau phòng khách, chan hòa ánh sáng, thoáng mát. Ngoài nội thất đẹp sang trọng thì trên sàn nhà cũng sử dụng những họa tiết hình học bắt mắt. Bên cạnh đó là cửa sổ giúp cho quá trình trao đổi không khí được tốt nhất hạn chế sự ám mùi trong khu vực nấu nướng cũng như các phòng khác.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-biet-thu-a-bang-phong-khach-bep1.jpg\" /></p>\n\n<p>Phòng ăn, một địa điểm vô cùng lý tưởng để thưởng thức những món ăn ngon khi được đặt để gần kề với thiên nhiên hướng cửa ra bên ngoài tươi mát.</p>\n\n<p>Điều mà chủ đầu tư căn nhà thích nhất ở căn biệt thự là không gian sống \"sáng\", ánh nắng chan hòa với thiết kế cửa kính ở khắp nơi trong căn nhà. Điều này không chỉ giúp căn nhà sạch sẽ, thoáng mát mà còn giúp tâm trạng gia chủ luôn hứng khởi, yêu đời.</p>\n\n<p>GEMIHOME là nơi quy tụ các kiến trúc sư giàu tâm huyết, chuyên nghiệp và sáng tạo cho ra đời các sản phẩm thật sự khác biệt và độc đáo! Bạn đã sẵn sàng cùng GEMIHOME biến những điều bạn đang ấp ủ thành một tác phẩm thật sự nổi bật, sáng tạo với chi phí hợp lý nhất chưa? Hãy bắt đầu liên hệ ngay với chúng tôi để bạn được tư vấn hoàn toàn miễn phí và dịch vụ chuyên nghiệp nhất!!!</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 59px; top: 6px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-biet-thu-a-bang-mat-tien-thumline1.png', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A BẰNG', 'thiet-ke-biet-thu-a-bang-mat-tien-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-biet-thu-a-bang', '', 'THIẾT KẾ VÀ THI CÔNG BIỆT THỰ A BẰNG', 'thiết kế biệt thự hai tầng, thiet ke biet thu hai tang', 'Mong muốn vừa sang trong vừa tinh tế nhưng phải hiện đại anh Bằng đã lựa chọn phong cách thiết kế hiện đại mái thái cho ngôi nhà của mình. Với tông màu trắng và ánh đèn váng mái xám đã làm nổi bât lên ngôi nhà một cách ấn tượng', 81, '', 13, 16, 18, 23, '2020-01-17 16:31:06', 1, 1, '2020-02-13 17:26:26', ''),
(198, '', 'THIẾT KẾ THI CÔNG NHÀ PHỐ CHỊ TOAN', '', '', '<p>Thiết kế nhà ống 2 tầng có thể được coi là hướng đi mới dành cho các cặp vợ chồng trẻ hoặc những gia chủ đang sở hữu ô đất có diện tích nhỏ. Những gia đình Việt ngày nay thường chủ yếu có khoảng 3-4 thành viên cùng sinh sống, rất phù hợp với các công trình nhà ở dạng nhà ống 2 tầng. Sự nổi bật của thiết kế nhà ống 2 tầng hiện nay vẫn tiếp nối sự sang trọng, hiện đại của nhà ống 1 tầng, đầy đủ tiện nghi cùng giá cả hợp lý.</p>\n', '', '', '', '', '', '<p>Trên diện tích đất rộng 8x12m, tôi xin chia sẽ đến quý vị mẫu thiết kế nhà phố 2&nbsp;tầng đẹp cảu gia đình chị Toan. Thiết kế đơn giản không quá cầu kì, tiết kiệm được chi phí xây dựng với việc sự dụng mái tốn. Không gian sinh hoạt thoáng rộng được đảm bảo, bố trí 2 phòng ngủ phục vụ cho gia đình có từ 3 – 4 thành viên. Dưới đây là những hình ảnh phối cảnh và thiết kế nội thất&nbsp;nhà phố đẹp, mời quý vị tham khảo.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết nhà phố 2 tầng</span></strong></p>\n\n<p>Phong cách hiện đại trang nhã, lịch sự, không cầu kì về hình thức, ngôi nhà có thiên hướng tập trung làm nổi bật sự giản dị nhưng vô cùng tao nhã, lịch sự. Tận dụng tối đa khoảng không gian ở phía mặt tiền các tầng lắp đặt cửa kính để khai thác tối đa nguồn sáng tự nhiên, giúp tiết kiệm chi phí cho gia đình. Tone màu chủ đạo của cả căn là là màu trắng và nâu hài hòa, lịch lãm.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-c-toan-mat-tien1.jpg\" /></p>\n\n<p>Ban công được trồng nhiều cây cảnh kết hợp lan can bằng kình làm không gian sang trọng, thoáng mát, rộng rãi</p>\n\n<p>Trước nhà&nbsp;có khoảng sân rộng được dùng làm sân chơi và khu vực để xe. Cổng được lát bằng gạch men vân đá đen cuốn đầy cuốn hút</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất nhà phố 2 tầng hiện đại</span></strong></p>\n\n<p>Nội thất trong ngôi nhà chị Toan đều hướng đến phong cách hiện đại với vẻ đẹp tinh tế, thanh lịch, sang trọng.</p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Tone màu chủ đạo của phòng khách là màu trắng và xám. Căn phòng lấy ánh sáng chủ đạo từ cửa ra vào. Tất cả chi tiết trang trí trong nhà từ đèn trần đến trang trí treo tường đều được thiết kế làm nổi bật vẻ sang trọng của căn phòng. Mọi chi tiết dù nhỏ nhất đều được bố trí hợp lý gọn gàng.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-c-toan-phong-khach1.jpg\" /></p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng bếp</span></strong></p>\n\n<p>Quý vị sẽ phải choáng ngợp với không gian nội thất sang trọng với tone maù trắng từ tủ bếp, bàn bếp đến sàn nhà&nbsp;và tường nhà. Màu trắng làm căn phòng có diện tích khiêm tốn được thông thoáng hơn. Mặc dù được thiết kế bằng tone trắng nhưng dễ vệ sinh và lau chùi, vì vậy căn bếp lúc nào sạch sẽ và gọn gàng.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-c-toan-phong-bep1.jpg\" />Khu vực bàn ăn được chị Toan&nbsp;bố trí tách biệt với phòng bếp. Bàn ăn với 6 chỗ ngồi sang trọng, mặt bàn là đá vân sáng, lại được đạt gần cửa càng làm không gian thoáng đãng.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-c-toan-phong-bep-11.jpg\" /></p>\n\n<p>GEMIHOME là nơi quy tụ các kiến trúc sư&nbsp;giàu tâm huyết, chuyên nghiệp và sáng tạo cho ra đời các sản phẩm thật sự khác biệt và độc đáo! Bạn đã sẵn sàng cùng GEMIHOME biến những điều bạn đang ấp ủ thành một tác phẩm thật sự nổi bật, sáng tạo với chi phí hợp lý nhất chưa? Hãy bắt đầu liên hệ ngay với chúng tôi để bạn được tư vấn hoàn toàn miễn phí và dịch vụ chuyên nghiệp nhất!!!</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 189px; top: 4209px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-c-toan-thumline1.jpg', 'THIẾT KẾ THI CÔNG NHÀ PHỐ CHỊ TOAN', 'thiet-ke-nha-pho-c-toan-thumline1', 0, 0, 0, 0, 0, 0, 70, '', 999, b'1', b'1', 'thiet-ke-thi-cong-nha-pho-chi-toan', '', 'THIẾT KẾ THI CÔNG NHÀ PHỐ CHỊ TOAN', '', '', 84, '', 14, 16, 18, 21, '2020-01-17 16:52:37', 1, 1, '2020-02-14 06:43:01', ''),
(199, '', 'CÔNG TRÌNH THIẾT KẾ NHÀ PHỐ A SƠN', '', '', '<p>Phong cách thiết kế nhà ống 3 tầng, 1 tum đang rất phổ biến và được nhiều người yêu thích bởi dáng vẻ trẻ trung, hiện đại, không gian thoáng đãng với giếng trời được bố trí hợp lý, những gam màu tươi trẻ giúp không gian sống của gia đình thêm hài hòa và sang trọng.</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 266px; top: -12px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '<p>Anh Sơn&nbsp;ở Bắc Giang&nbsp;sở hữu lô đất 90m2, kích thước 5x18m. Anh muốn xây nhà trên lô đất này. Vì thế, anh đã yêu cầu GEMIHOME thiết kế và thi công mẫu nhà phố 4 tầng 5m x 18m theo phong cách hiện đại, gồm tầng trệt, 2 lầu và tầng tum. Ngoài ra, anh còn yêu cầu thiết kế nhà phù hợp với phong thủy, phù hợp với mệnh Kim. Mẫu nhà phố cần đảm bảo công năng sử dụng cho 6&nbsp;người gồm ông bà, vợ chồng và 2 con.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết nhà ống 3 tầng, 1 tum</span></strong></p>\n\n<p>Bằng sự sáng tạo và những kinh nghiệm có được của đội ngũ kiến trúc sư, chúng tôi đã tạo nên mẫu thiết kế nhà phố 3 tầng 1 tum đẹp, sang trọng với phong cách hiện đại trẻ trung trong gam màu trắng lịch lãm, cuốn hút. Kiến trúc mặt tiền được tạo nên từ những hình khối chắc khỏe, sử dụng kính làm lan can để tạo sự đơn giản và tiết kiệm diện tích.&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-son-mat-tien-12.jpg\" /></p>\n\n<p>Mỗi tầng đều có một chiếc ban công nhỏ nhắn vươn ra khỏi nhà, tô điểm những chậu cây xanh muốt giúp lưu thông không khí trong nhà đồng thời tạo cho ngôi nhà thêm nhiều màu sắc hơn.&nbsp;</p>\n\n<p>Do gia đình anh Sơn đông thành viên nên chúng tôi thiết kế 5 phòng ngủ ở 3 tầng 1,2, và 3; 1 phòng khách; 1 phòng bếp, nhà ăn; 4 phòng vệ sinh. Tầng tum dành riêng cho phòng thờ cúng và sân phơi</p>\n\n<p>Thiết kế nội thất nhà ống 3 tầng 1 tum hiện đại</p>\n\n<p>Nội thất trong nhà được anh Sơn yêu cầu thiết kế theo phong cách hiện đại với 2 tone màu chính là trắng và nâu hợp với tuổi của anh.</p>\n\n<p><span style=\"font-size:16px;\"><strong>Thiết kế nội thất phòng khách</strong></span></p>\n\n<p>Phòng khách được thiết kế hết sức đơn giản nhưng tinh tế, thanh lịch. Bộ Sofa phù hợp với không gian, bàn trà hình chữ nhật nhỏ nhắn. Chúng tôi tiết kiệm không gian chật hẹp ở không gian rộng 5m. TV, tủ kệ trang trí được thiết kế dưới gâm cầu thang giúp tiết kiệm&nbsp;không gian. Anh Sơn lựa chọn sử dụng đèn LED âm trần giúp ánh sáng lan tỏa khắp không gian. Chiếc quạt trần với thiết kế độc đáo mới lạ làm không gian thêm nổi&nbsp;bật</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-nha-pho-a-son-mat-tien1.jpg\" /></p>\n\n<p><strong><span style=\"font-size:16px;\">Thiết kế nội thất phòng ăn - nhà bếp</span></strong></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-nha-pho-a-son-phong-bep-11.jpg\" /></p>\n\n<p>Cũng giống nội thất phòng khách, gam màu chủ yếu phòng là nâu và trắng. Tủ bếp thiết kế sát tường tích hợp nhiều công năng, bao gọn tủ lạnh và lò vi sóng. Bên cạnh đó, tủ đựng rượu được thiết kế liền kề với tủ bếp làm không gian bếp thêm sang trọng, đẳng cấp. Trang trí tiểu cảnh làm không gian bếp xanh hơn, tươi mới hơn. Bàn găn được thiết kế ngay cửa, hứng trọn ánh sáng tự nhiên với 6 chỗ ngồi gọn gàng, êm ái.</p>\n\n<p>GEMIHOME là nơi quy tụ các KTS giàu tâm huyết, chuyên nghiệp và sáng tạo cho ra đời các sản phẩm thật sự khác biệt và độc đáo! Bạn đã sẵn sàng cùng GEMIHOME biến những điều bạn đang ấp ủ thành một tác phẩm thật sự nổi bật, sáng tạo với chi phí hợp lý nhất chưa? Hãy bắt đầu liên hệ ngay với chúng tôi để bạn được tư vấn hoàn toàn miễn phí và dịch vụ chuyên nghiệp nhất!!!</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: -12px; top: 1337px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-son-mat-tien-thumline1.jpg', 'CÔNG TRÌNH THIẾT KẾ NHÀ PHỐ A SƠN', 'thiet-ke-nha-pho-a-son-mat-tien-thumline1', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'cong-trinh-thiet-ke-nha-pho-a-son', '', 'CÔNG TRÌNH THIẾT KẾ NHÀ PHỐ A SƠN', '', '', 84, '', 10, 16, 18, 21, '2020-01-17 16:57:19', 1, 1, '2020-02-14 06:41:52', ''),
(200, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A CHÍNH', '', '', '<p>Có lợi thế khu đất rộng, anh Chính quyết định xây nhà phố với diện tích 150m<sup>2</sup>, ngôi nhà xây dựng theo phong cách hiện đại, sang trọng, thanh lịch đầy ấn tượng. Khu vườn cây làm căn nhà tươi mát quanh năm</p>\n\n<p>&nbsp;</p>\n', '', '', '', '', '', '<p>Ngôi&nbsp;3 tầng tọa lạc trên khu đất rộng 250m<sup>2</sup>&nbsp;ngoại thành Hà Nội. Diện tích xây dựng là 150m<sup>2</sup>, còn lại sẽ được sử dụng để thiết kế sân vườn, tạo cảnh quan đẹp cho không gian sống thoáng đãng, gần gũi với thiên nhiên.</p>\n\n<p><strong><span style=\"font-size:20px;\">Phối cảnh nhà phố hiện đại 3 tầng mái xếp lớp</span></strong></p>\n\n<p>Ngôi nhà&nbsp;được bảo vệ bởi một lớp tường rào cao và vô cùng kiên cố. Thay vì xây kín cổng cao tường thì các kiến trúc sư&nbsp;chỉ sử dụng các trụ cột để chống đỡ các bức tường rào bằng sắt và gỗ màu nâu đen nổi bật. Chân tường còn được trồng thêm rất nhiều loại cây và hoa với màu sắc rất rực rỡ.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-nha-pho-a-chinh-mat-tien-31.jpg\" /></p>\n\n<p>Ngôi nhà thêm lung linh vào buổi tối nhờ hệ thống đèn LED được bố trí hợp lí. Các bức tường kín mít gây bí bách giờ đây đã được lược bớt và thay vào đó là các bức tường kính cường lực trong suốt.&nbsp; Điều này sẽ đảm bảo được ánh sáng tự nhiên cho không gian sống phía trong. Đồng thời tạo sự gắn kết giữa nội ngoại thất của mẫu biệt thự đẹp hiện đại.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-nha-pho-a-chinh-mat-tien-21.jpg\" /></p>\n\n<p>Từ phối cảnh góc, ta thấy mẫu biệt thự hiện đại sang trọng, lịch lãm với màu trắng chủ đạo làm nổi bật các chi tiết ngoại thất. Mái bằng xếp lớp tạo nét độc đáo cho phần kiến trúc, lớp dưới mái được ốp nhựa chống nóng màu trắng hài hòa với tổng thể cong trình. Viền màu đen tạo sự góc cạnh và phân lớp rõ ràng.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-chinh-mat-tien-11.jpg\" /></p>\n\n<p>Có lợi thế khi diện tích đất rộng chủ nhà đã lên ý tưởng thiết kế sân vườn rộng kết hợp trông nhiều cây xanh, cây ăn quả và con đường đầy hoa hồng. Được thiết kế như một không gian xanh bao chùm quang khắp ngôi nhà mang lại sự mát mẻ giữa cái nóng của Hà Nôi và bầu không khí trong lành dễ chịu,sân vườn được trồng cây cỏ và thiết kế những đường đi nhỏ trong sân. Khi hoa nở mùi hương thơm nhẹ nhàng được bay lan tỏa theo làn gió đưa tạo cảm&nbsp;giác đẽ chịu và thanh bình đến lạ thường.&nbsp;</p>\n\n<p>Thiết kế nhà phố này là một trong những bản thiết kế cao cấp mà GEMIHOME đã thực hiện. Còn hàng trăm mẫu thiết kế nhà đẹp khác, quý khách có thể tham khảo ngay tại website của chúng tôi.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-chinh-mat-tien-thumline1.jpg', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A CHÍNH', 'thiet-ke-nha-pho-a-chinh-mat-tien-thumline1', 0, 0, 0, 0, 0, 0, 200, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-nha-pho-a-chinh', '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A CHÍNH ', '', '', 84, '', 14, 16, 18, 23, '2020-01-18 03:20:59', 1, 1, '2020-02-13 12:00:34', ''),
(201, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TIẾP', '', '', '<p>Nhà 3 tầng hiện đại hiện là một trong những tìm kiếm được nhiều khách hàng gửi đến cho công ty chúng tôi với mong muốn kiến trúc sư sẽ giúp chủ đầu tư lên phương án thiết kế và thi công khoa học, tối ưu công năng nhất cho công trình.</p>\n', '', '', '', '', '', '<p>Sau nhiều lần tìm hiểu các mẫu thiết kế nhà ống, anh Tiếp&nbsp;vẫn chưa thể chọn cho gia đình mình được mẫu thiết kế ưng ý. Với quan niệm ngôi nhà là nơi giữ lửa và nghỉ ngơi cho cuộc sống gia đình hạnh phúc, do đó, hai vợ chồng rất quan trọng không gian thiết kế cùng với mặt bằng công năng. Không có ý định sẽ thi công công trình cao tầng, anh chị quyết định sẽ thi công mẫu nhà 3 tầng hiến đại, với công năng đủ phục vụ cuộc sống hàng ngày của các thành viên.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết mẫu nhà phố&nbsp;3 tầng hiện đại</span></strong></p>\n\n<p>Do mặt tiền khá rộng cho nên cửa cổng chính của công trình chúng tôi không thiết kế hết, để đảm bảo kích thước theo lỗ ban chuẩn phong thuỷ cho chủ đầu tư công trình. Thiết kế dành 3m để làm hàng rào chắn và tường trang trí làm điểm nhấn cũng như hệ trụ cột chịu lực chung cho phần tường của công trình. Hình khối mẫu thiết kế nhà khá đơn giản, thiết kế khối ban công rộng tạo sự thông thoáng và rộng rãi hơn rất nhiều. Thiết kế những khối vuông cùng với thiết kế khối bê tông có độ đua rộng tạo nên những hiệu ứng không gian và hiệu ứng thẩm mỹ cao</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-tiep-mat-tien.jpg\" /></p>\n\n<p>Từ thiết kế tầng 1 cho đến tầng 3, hệ thống cửa kính&nbsp;tạo không gian rộng theo chiều cao và có sự thu hút khá lớn cho giác quan thị giác. Đánh giá phối cảnh mặt tiền của công trình thì không có gì để chê bởi thiết kế quá hoàn hảo, đảm bảo ánh sáng và sự thông thoáng tự nhiên trong không gian cùng với đó là thiết kế tính toán chi tiết các góc cạnh nhỏ không chỉ tạo hiệu ứng không gian mà còn đảm bảo chuẩn những yếu tố phong thuỷ cho mẫu nhà khoa học, giúp chủ đầu tư có cuộc sống yên bình và gặp nhiều may mắn khi sử dụng.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế không gian bên trong nhà phố 3 tầng</span></strong></p>\n\n<p>Với mẫu nhà phố 3 tầng, kiến trúc sư kkiến tạo linh hoạt để đảm bảo công năng của ngôi nhà với 1 phòng khách, 3 phòng ngủ, 2 nhà vệ sinh, 1 phòng thờ</p>\n\n<p>Mặt bằng tầng 1 bố trí phòng khách với bộ Sofa, để tiết kiệm không gian gia chủ tận dụng gầm cầu thang làm nhà vệ sinh. Tiếp đến là không gian của phòng bếp. Sau cùng là phòng ngủ của vợ chồng anh Tiếp.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//mat-bang-nha-ong-2-tang-6.jpg\" /></p>\n\n<p>Mặt bằng tầng 2 gồm 2 phòng ngủ với đầy đủ trang thiết bị, 1 phòng tắm chung.</p>\n\n<p>Mặt bằng tầng 3 được bố trí phòng thờ và sân phơi. Ngoài ra, ban công trên tầng 3 còn đặt bộ bàn trà để gia đình có thể thư giãn, nghỉ ngơi.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất của căn nhà</span></strong></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-tiep-phong-ngu-1.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-tiep-phong-ngu.jpg\" /></p>\n\n<p>Nội thất của căn nhà được thiết kế theo phong cách hiện đại. Toàn bộ&nbsp;đồ dùng được làm bằng gỗ nâu phù hợp với mệnh Mộc của gia chủ. Nhìn chung, gam màu chính của cả căn nhà&nbsp;là màu nâu và trắng tạo không gian ấm áp, sang trọng.</p>\n\n<p>GEMIHOME là nơi quy tụ các kiến trúc sư&nbsp;giàu tâm huyết, chuyên nghiệp và sáng tạo cho ra đời các sản phẩm thật sự khác biệt và độc đáo! Bạn đã sẵn sàng cùng GEMIHOME biến những điều bạn đang ấp ủ thành một tác phẩm thật sự nổi bật, sáng tạo với chi phí hợp lý nhất chưa? Hãy bắt đầu liên hệ ngay với chúng tôi để bạn được tư vấn hoàn toàn miễn phí và dịch vụ chuyên nghiệp nhất!!!</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: -14px; top: 3177px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-tiep-mat-tien-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TIẾP', 'thiet-ke-nha-pho-a-tiep-mat-tien-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-nha-pho-a-tiep', '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TIẾP ', '', '', 84, '', 14, 16, 18, 21, '2020-01-18 03:24:02', 1, 1, '2020-02-13 13:35:26', ''),
(202, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A ĐÔNG', '', '', '<p>Góp phần tô điểm thêm sự đa dạng trong thiết kế kiến trúc nét riêng cho từng ngôi nhà là thiết kế mặt tiền đẹp, đơn giản nhưng đầy sang trọng.b Ngôi nhà Do GEMIHOME thiết kế thể hiện sở thích, ý tưởng, phong cách và sang trọng hợp thời.</p>\n', '', '', '', '', '', '<p>Sở hữu khu đất hình chữ nhật mặt tiền 5m đắc địa hướng chính Tây Nam anh Đông&nbsp;tìm đến công ty xây dựng chúng tôi và chia sẻ nhu cầu xây nhà ống 3 tầng phong cách hiện đại có 3 phòng ngủ cho vợ chồng và 2 con với kinh phí tiết kiệm nhất. Kiến trức sư của GEMIHOME đã tư vấn và thiết kế cho anh căn nhà phố 1 trệt 2 lầu sân thượng hiện đại, thoáng mát.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết ngôi nhà 3 tầng hiện đại</span></strong></p>\n\n<p>Ấn tượng đầu tiên khi nhìn vào mẫu thiết kế nhà phố 3 tầng này phải nói đến là sự kết hợp khéo léo các khối hình học vuông vức tạo nên sự cuốn hút cho căn nhà. Mẫu biệt thự mang đậm phong cách hiện đại với kiểu dáng và chất liệu hiện đại. Mẫu thiết kế này là sự kết hợp giữa công năng sử dụng với không gian sống xanh, hòa quyện với thiên nhiên, rất có lợi cho sinh hoạt của mọi người trong gia đình. Tại ban công các tầng chúng tôi đều thiết kế các loại cây xanh giúp tăng tính thẩm mỹ cho toàn bộ kiến trúc mẫu nhà phố 3 tầng 4m. Hệ thống cửa chính và cửa sổ đều được làm bằng kính cường lực khung nhôm. Đây là điểm đặc trưng của phong cách hiện đại, kính còn giúp ánh sáng tự nhiên đi vào không gian nội thất, gia chủ hoàn toàn điều chỉnh được ánh sáng theo mong muốn của bản thân.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-dong.jpg\" /></p>\n\n<p>Tầng 1 được ốp đá vàng đem lại sự vững chắc, tầng 2 và tầng 3 được ốp gạch thẻ thanh lịch, mang lại vẻ đẹp đương đại cho toàn bộ công trình ngoại thất. Dưới tầng 1 chúng tôi còn bố trí thiết kế cổng vào hiện đại với chất liệu gỗ khung sắt kiên cố, Gam màu trắng nhã nhặn kết hợp hoàn hảo với màu nâu của các loại vật liệu khiến không gian trở nên rộng rãi và hiện đại, đây cũng là màu sắc được ưa chuộng hiện nay và hứa hẹn được yêu thích ở nhiều năm tiếp theo.</p>\n\n<p>Anh Đông rất mong muốn chúng tôi thiết kế sao cho ánh sáng và gió được đưa vào giúp ngôi nhà phố 3 tầng của anh thông thoáng hơn. Kiến trúc GEMIHOME&nbsp;quyết định đưa giếng trời vào mẫu nhà này. Thứ nhất có thể thông gió, thứ 2 có thể lấy ánh sáng tự nhiên khắp cả nhà. Với thiết kế này thì ngôi nhà của anh Thành sẽ có không gian sống luôn thông thoáng, tạo cảm giác thư thái, thoải mái cho mọi thành viên trong gia đình. Mẫu nhà phố 3 tầng mặt tiền 4m này đã đáp ứng đúng mong muốn và nhu cầu của gia chủ.</p>\n\n<p>Khi nhận được bản vẽ chúng tôi gửi thì anh Đông&nbsp;đã ưng ý ngay mà không cần chỉnh sửa thêm nhiều. Nếu quý khách hàng muốn thiết kế hay thi công nhà trọn gói thì đừng quên liên lạc ngay với GEMIHOME để được tư vấn hỗ trợ nhanh chóng.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-dong-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ CHỊ PHƯỢNG', 'thiet-ke-nha-pho-a-dong-thumline', 0, 0, 0, 0, 0, 0, 70, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-nha-pho-a-dong', '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ CHỊ PHƯỢNG ', '', '', 84, '', 10, 16, 18, 21, '2020-01-18 03:28:05', 1, 1, '2020-02-13 09:37:45', ''),
(203, '', 'THIẾT KẾ NHÀ PHỐ A PHÚC THÁI BÌNH', '', '', '<p>Mặt tiền ngôi nhà ống 5 tầng không sử dụng các chi tiết trang trí cầu kỳ, chỉ đơn giản là các đường chỉ chạy dọc hay ngang ở ban công, mi cửa, là một màu trắng tinh khôi xuyên suốt ngoại thất mang đến một hình thái nhẹ nhàng, thanh thoát nhưng lại vô cùng ấn tượng và tinh tế đến từng góc cạnh.</p>\n', '', '', '', '', '', '<p>Đây là phương án thiết kế nhà ống tại Thái Bình&nbsp;được Gemi Home bàn giao cho gia đình anh Phúc&nbsp;trong tháng 12 này. Mặc dù chỉ sở hữu mặt tiền gần 4m tuy nhiên thiết kế độc đáo của mặt tiền và không gian nội thất đã khiến ngôi nhà sở hữu nhiều điểm cộng, ngay lập tức khuất phục mọi ánh nhìn bất kỳ. Mời bạn cùng đến với nội dung bài viết để tìm hiểu sâu hơn về mẫu nhà ống hiện đại 5&nbsp;tầng này.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết nhà phố 5 tầng hiện đại</span></strong></p>\n\n<p>Ngôi nhà phố vị trí mặt tiền kết hợp ở và kinh doanh cao đến 5 tầng sáng và thoáng với vật liệu kính, đặc biệt tầng 2 hoàn toàn là vách kính phía trước. Ngoài những chậu cây nho nhỏ thì một cây xanh khá lớn được trồng ở tầng 4 xuyên suốt đến tầng 5 phía trước mảng tường được ốp gỗ là điểm nhấn khá ấn tượng của công trình kiến trúc.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-phuc-mat-tien.jpg\" /></p>\n\n<p>Sắc nâu của gỗ bổ sung nét sang trọng cho mặt tiền nhà ống bên cạnh những mảng cây xanh, tất cả tạo nên nét mộc cho công trình. Các kiến trúc sư sử dụng lan can kính giúp cho căn nhà thoáng mát, sang trọng.</p>\n\n<p>Tầng 1 sử dụng cửa kính thủy lực kết hợp cửa cuốn. Tại tầng 1 được sử dụng để kinh doanh vật liệu xây dựng. Tại tầng 2 toàn bộ mặt tiền được thiết kế gồm cửa sổ và vách kính, tại tầng này sẽ không có ban công. Mặt tiền tầng 3 và tầng 4 của ngôi nhà có thiết kế khác nhau về cả hình dạng cửa và kích thước ban công. Các tầng có thiết kế khác nhau khiến ngôi nhà trông không quá đơn điệu.&nbsp;Tầng thượng có mái che dạng nan làm sáng không gian cây xanh phía dưới mang nguồn sinh khí tốt lành cho không gian sống.</p>\n\n<p><strong><span style=\"font-size:20px;\">Không gian nội thất nhà phố 5 tầng</span></strong></p>\n\n<p>Vợ chồng anh Phúc chú trọng nhiều vào nội thất phòng ngủ. Phòng ngủ thiết kế sang trọng tiện nghi với với gam màu chính là trắng và đen. Khu vực bồn tắm được thiết kế ngay trong không gian phòng ngủ, đặt cạnh cửa sổ lớn càng khiến không gian sang trọng, đẳng cấp.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-nha-pho-a-phuc-phong-ngu.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-phuc.jpg\" /></p>\n\n<p>Khi nhận được thiết kế chúng tôi gửi thì anh Thiện đã ưng ý ngay mà không cần chỉnh sửa thêm nhiều. Nếu quý khách hàng muốn thiết kế hay thi công nhà trọn gói thì đừng quên liên lạc ngay với Gemi Home để được tư vấn hỗ trợ nhanh chóng.</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: -6px; top: 1327px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-phuc-thumline.jpg', 'THIẾT KẾ NHÀ PHỐ A PHÚC THÁI BÌNH', 'thiet-ke-nha-pho-a-phuc-thumline', 0, 0, 0, 0, 0, 0, 64, '', 999, b'1', b'1', 'thiet-ke-nha-pho-a-phuc-thai-binh', '', 'THIẾT KẾ NHÀ PHỐ A PHÚC THÁI BÌNH ', '', '', 84, '', 10, 16, 18, 21, '2020-01-18 03:31:26', 1, 1, '2020-02-13 09:20:34', '');
INSERT INTO `products` (`ProductsID`, `SKU`, `Title`, `Title_en`, `Title_fr`, `Description`, `Description_en`, `Description_fr`, `Desc`, `Desc_en`, `Desc_fr`, `Body`, `Body_en`, `Body_fr`, `Body2`, `Body2_en`, `Body2_fr`, `Body3`, `Body3_en`, `Body3_fr`, `ImagePreset`, `ImageURL`, `ImageTitle`, `ImageAlt`, `IsNew`, `IsPromotion`, `IsSellers`, `IsHot`, `IsStock`, `ListPrice`, `SellPrice`, `Warranty`, `Orders`, `Publish`, `ShowPrice`, `Slug`, `Tags`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `CategoriesProductsID`, `SubCategoriesProductsID`, `SortingBrandID`, `SortingResID`, `SortingChannelID`, `SortingPriceID`, `CreatedDate`, `CreatedBy`, `ModifiedBy`, `ModifiedDate`, `Hightlight`) VALUES
(204, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A ĐỨC - NAM ĐỊNH', '', '', '<p>Mẫu nhà 4 tầng là xu hướng được ưa chuộng trong kiến trúc Việt Nam, đặc biệt tại trung tâm thành phố với diện tích chật hẹp. Hầu hết mẫu nhà đều được GEMIHOME thiết lế hiện đại, sang trọng phù hợp với thị hiếu người tiêu dùng.</p>\n', '', '', '', '', '', '<p>Một ngôi nhà đẹp là sự kết hợp của nhiều yếu tố, từ bên ngoài đến bên trong, từ ngoại thất đến không gian nội thất. Mỗi công trình là một tác phẩm là một sự sáng tạo của người kiến trúc sư cùng gia chủ, sự hài lòng của gia chủ chính là thành công của cả đội ngũ kiến trúc sư GEMIHOME. Dưới đây là mẫu nhà phố đẹp thuộc quyền sở hữu của gia đình anh Đức tại Nam Định mà chúng tôi mới hoàn thiện</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết thiết kế nhà phố 4 tầng tại Nam Định</span></strong></p>\n\n<p>Mẫu thiết kế này gây ấn tượng bởi khối kiến trúc cao tầng, thực sự vượt khỏi khuôn khổ của một căn nhà phố thông thường. Chăm sóc tốt cho mặt tiền với việc sử dụng gam màu trắng và nâu làm chủ đạo, tầng trệt ốp đá sang trọng, tầng 2 và 3 có ban công ra rộng bằng ở tầng trệt tạo thêm khoảng rộng cho gia chủ có thể dùng phơi đồ hoặc đặt bàn ra ngồi hóng mát.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-duc-mat-tien-2.jpg\" /></p>\n\n<p>Thiết kế kiến trúc cho thấy tính chỉnh chu, vuông vức, các ô cửa hướng ra phía trước trình bày hợp lý, diện tích mỗi khung cửa vừa đủ, rộng rãi để đảm bảo đón ánh sáng và gió tự nhiên. Ở mỗi tầng đều có thiết kế ban công hướng ra phía trước có lan can kính cường lực bảo vệ giúp mang tới sự cởi mở cho không gian bên trong, đồng thời nâng cao vẻ đẹp hiện đại cho tổng thể.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-duc-mat-tien-1.jpg\" /></p>\n\n<p>Tại ban công các tầng, chúng tôi đều thiết kế các loại cây xanh giúp tăng tính thẩm mỹ cho toàn bộ kiến trúc. Tầng 1 được ốp gạch đá vân sáng, tầng 2 và tầng 3 được ốp gạch thẻ thanh lịch, mang vẻ đẹp đương đại cho thoàn bộ công trình ngoại thất. Gam màu trắng nhã nhặn kết hợp hoàn hảo với màu nâu các của gỗ khiến không gian trở nên rộng rãi và hiện đại.</p>\n\n<p>Khi nhận được thiết kế chúng tôi gửi thì anh Đức&nbsp;đã ưng ý ngay mà không cần chỉnh sửa thêm nhiều. Nếu bạn đang tìm kiếm một đơn vị giúp bạn tư vấn, thiết kế nhà hãy liên hệ với GEMIHOME. Là đơn vị với nhiều năm kinh nghiệm trong lĩnh vực thiết kế nhà phố, chúng tôi tự tin mang tới cho bạn những sản phẩm kiến trúc hoàn mỹ nhất. Hãy để chúng tôi giúp bạn hoàn thiện ngôi nhà mơ ước của mình</p>\n\n<p>&nbsp;</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-duc-mat-tien-thumeline.jpeg', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A ĐỨC - NAM ĐỊNH', 'thiet-ke-nha-pho-a-duc-mat-tien-thumeline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-nha-pho-a-duc-nam-dinh', '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A ĐỨC - NAM ĐỊNH', '', '', 84, '', 10, 16, 18, 21, '2020-01-18 03:35:21', 1, 1, '2020-02-14 10:00:07', ''),
(205, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH A HÙNG', '', '', '<p>Sở hữu nền đất rộng 80m<sup>2&nbsp;</sup>, anh Hùng yêu cầu&nbsp;thiết kế một căn nhà thoáng mát, hiện đại. GEMIHOME đã thiết kế nhà ống phù hợp với nền đất,&nbsp;đầy ấn tượng với hệ thống hình khối đem đến cho ngôi nhà nhiều ánh sáng.</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 575px; top: 38px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '<p><strong><span style=\"font-size:20px;\">Chiêm ngưỡng phối cảnh thiết kế nhà ống 3 tầng 5m x 16m đẹp hiện đại </span></strong></p>\n\n<p>Phối cảnh thiết kế nhà ống&nbsp;mặt tiền 5m là sự kết hợp tuyệt vời giữa các vật liệu đơn giản như gạch ốp tường, sắt sơn tĩnh điện và hệ thống cửa kính cường lực. Chỉ với những vật liệu đơn giản có giá thành rẻ nhưng dưới bàn tay nhào lặn của kiến trúc sư đã tạo nên một ngôi nhà hiện đại ưa nhìn. Anh Hùng&nbsp;đã hoàn toàn hài lòng trước phương án thiết kế của kiến trúc sư. Là người thoáng tính, anh muốn ngôi nhà càng đơn giản càng tốt. Đồng thời có sự kết nối với không gian, tạo sự thông thoáng cho nhà.&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-hung-mat-tien-2.jpg\" /></p>\n\n<p>Chúng tôi sử dụng các ô cửa sổ vuông vắn, bố trí các cánh cửa làm từ kính làm chủ đạo với khả năng cách nhiệt và chống ồn cao, mang lại cho không gian ngôi nhà ánh sáng tự nhiên nhất.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-hung-mat-tien-1.jpg\" /></p>\n\n<p><strong><span style=\"font-size:20px;\">Không gian bên trong căn nhà</span></strong></p>\n\n<p>Không gian sinh hoạt của các thành viên trong gia đình được tính toán kỹ lưỡng sao cho thiết kế đảm bảo khoa học, tối ưu tiện ích cũng như công năng sử dụng, mang lại sự tiện lợi và dễ chịu cho mọi người. Do gia đinh anh Hùng có 4 người: 2 vợ chồng anh và 2 con nên chúng tôi đưa ra mẫu thết kế như sau:&nbsp;</p>\n\n<p>Tầng 1: Phòng khách, phòng bếp + bàn ăn, 01 phòng vệ sinh chung và khu tiểu cảnh nhỏ</p>\n\n<p>Tầng 2: 02 phòng ngủ rộng, 01 phòng vệ sinh chung, ban công rộng rãi mang tới cảm giác thoáng đãng, thư thái cho mọi người.</p>\n\n<p>Tầng 3: 01 phòng ngủ, phòng giặt, phòng thờ và sân thượng.</p>\n\n<p>Khi nhận được thiết kế chúng tôi gửi thì anh Thiện đã ưng ý ngay mà không cần chỉnh sửa thêm nhiều.&nbsp;Nếu bạn đang tìm kiếm một đơn vị giúp bạn tư vấn, thiết kế&nbsp;hãy liên hệ với GEMIHOME. Là đơn vị với nhiều năm kinh nghiệm trong lĩnh vực thiết kế nhà phố, chúng tôi tự tin mang tới cho bạn những sản phẩm kiến trúc hoàn mỹ nhất. Hãy để chúng tôi giúp bạn hoàn thiện ngôi nhà mơ ước của mình.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-hung-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH A HÙNG', 'thiet-ke-nha-pho-a-hung-thumline', 0, 0, 0, 0, 0, 0, 200, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-cong-trinh-a-hung', '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH A HÙNG', '', '', 84, '', 10, 16, 18, 21, '2020-01-18 03:41:02', 1, 1, '2020-02-13 13:32:12', ''),
(206, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ CHỊ DIỆP', '', '', '<p>Thiết kế nhà phố cổ điển đã đem đến một nét đẹp quyến rũ trong mắt người xem đồng thời vừa tô thêm nét duyên dáng cho thành phố đông đúc. Nó mang đến cho bạn một cái nhìn gợi cảm, tinh tế, thanh lịch cho không gian nó hiện lên.</p>\n', '', '', '', '', '', '<p><strong><span style=\"font-size:20px;\">Chi tiết mẫu nhà ống 3 tầng 1 tum</span></strong></p>\n\n<p>Kết cấu nhà phố gồm 3 tầng với tầng lửng 3, 1 tầng tum đã thu hút được ánh nhìn của người xem bởi sự lạ mắt của lối kiến trúc Tân cổ điển. Sau khi đã lựa chọn xong kiểu dáng cho ngôi nhà, vợ chồng chị Diệp đã quyết định thiết kế thi công theo phong cách Tân cổ điển. Kiểu thiết kế này mang lại cho gia chủ những hiệu ứng đầy sáng tạo, mới mẻ và hình thức, khối nhà uy nguy, kiều diễm tạo dấu ấn riêng cho công trình.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-chi-diep-mat-tien-1.jpg\" /></p>\n\n<p>Đường nét ở vách tường và các trụ cột được phào chỉ sắc xảo, uốn lượn tuyệt hảo đậm chất cổ điển. Ở tầng 1, các kiến trúc sư ốp gạch men giả đá khiến ngôi nhà sang trọng đẳng cấp. Hệ thống lan can được là bằng kính, với thết ké họa tiết hoa cùng với khung gỗ tôn vẻ thoáng mát, sang trọng của căn nhà. Bên cạnh đó, chị Diệp sử dụng vật liệu kính làm tất cả cửa trong nhà giúp đón nắng và gió tự nhiên cho căn nhà.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-chi-diep-mat-tien.jpg\" /></p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế không gian bên trong căn nhà</span></strong></p>\n\n<p>Căn nhà là sở hữu của một gia đình 5 người gồm bà nội, hai vợ chồng gia chủ và hai đứa con. Yêu cầu thiết kế đầu tiên là tiết giảm chi phí nhưng vẫn đảm bảo về chất lượng, thiết kế đơn giản, tầng 1 là không gian chung, tầng 2 và tầng 3 là không gian phòng ngủ, phần tum sẽ có một phòng nhỏ làm phòng thờ, còn lại làm sân thượng và sân phơi.</p>\n\n<p>Với yêu cầu thiết kế mà gia chủ đưa ra kết hợp với các yêu cầu phong thủy nhà ở, các kiến trúc sư đã đưa ra giải pháp bố trí mặt bằng với 3 tầng 1 tum bao gồm 4 phòng ngủ, 1 phòng khách, nhà bếp và ở mỗi tầng đều có nhà vệ sinh tiện dụng. Gia đình có 5 người nên nhu cầu sử dụng xe khá lớn nên kiến trúc sư đã kiến nghị chừa ra 2,5m ở tầng 1 làm khu vực để xe cho cả gia đình.</p>\n\n<p>Khi nhận được thiết kế chúng tôi gửi thì chị Diệp&nbsp;đã ưng ý ngay mà không cần chỉnh sửa thêm nhiều. Nếu bạn đang tìm kiếm một đơn vị giúp bạn tư vấn, thiết kế hãy liên hệ với GEMIHOME. Là đơn vị với nhiều năm kinh nghiệm trong lĩnh vực thiết kế nhà phố, chúng tôi tự tin mang tới cho bạn những sản phẩm kiến trúc hoàn mỹ nhất. Hãy để chúng tôi giúp bạn hoàn thiện ngôi nhà mơ ước của mình.</p>\n\n<p>&nbsp;</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 316px; top: 2398.13px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-chi-diep-mat-tien-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NHÀ CHỊ DIỆP', 'thiet-ke-nha-pho-chi-diep-mat-tien-thumline', 0, 0, 0, 0, 0, 0, 200, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-nha-chi-diep', '', 'THIẾT KẾ VÀ THI CÔNG NHÀ CHỊ DIỆP', '', '', 84, '', 13, 17, 18, 22, '2020-01-18 03:45:16', 1, 1, '2020-02-14 09:42:50', ''),
(207, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BIÊN', '', '', '<p>Những mẫu thiết kế nhà mặt phố thường mang phong cách hiện đại, sang trọng dạng phẳng, dạng ống thường rất đơn giản. Cách làm nổi bật cách mẫu nhà này chính là phần thiết kế các chi tiết, cách phối màu để làm nổi bật căn nhà.</p>\n', '', '', '', '', '', '<p>Nếu chủ đầu tư nào đang có dự định cho việc xây dựng mẫu nhà phố&nbsp;hiện đại và đi theo dòng hướng hiện đại thì mẫu nhà này ắt hẳn sẽ là một mẫu nhà đáng để mọi người tham khảo. Anh Biên cũng là một trong số những người thích phong cách hiện đại này, phá bỏ mọi chi tiết rắc rối của phong cách cổ điển và không áp dụng theo phong cách bán cổ điển mà tiến hẳn đến phong cách hiện đại</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết mẫu nhà ống&nbsp;2 tầng lửng 1 tầng tum</span></strong></p>\n\n<p><strong><span style=\"font-size:20px;\"><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-bien-mat-tien.jpg\" /></span></strong></p>\n\n<p>Chi tiết làm nổi bật lên mẫu thiết kế nhà đẹp của gia đình anh Biên bằng hình hộp khối của ban công, được thiết kế với sự phối màu sơn, gạch màu nâu giả vân gỗ, cùng hệ thống cửa kính thoáng đãng, gần gũi với thiên nhiên giúp căn nhà đón ánh sáng, gió tự nhiên nhiều nhất</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-bien-mat-tien-1.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>Căn nhà là sự kết hợp hài hòa của 2 màu trắng và nâu. Lan can ban công được làm bằng kính cường lực kết hợp với gỗ làm cho ngôi nhà toát lên vẻ đẹp sang trọng, hiện đại, thông thoáng, dễ dàng lau chùi vệ sinh và độ bề cơ học lâu hơn.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế không gian bên trong căn nhà</span></strong></p>\n\n<p>Do nhà anh Biên có kinh doanh về thiết bị điện lạnh nên chúng tôi đưa ra bản thảo thiết kế như sau:</p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 1</span></strong>: Dùng để kinh doanh, biến không gian phòng khách như siêu thị điện máy mini</p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 2</span></strong>: Là nơi gia đình sinh hoạt: 1 Phòng khách, 1 phòng thờ, 2 phòng ngủ, 2WC,1 ban công. Tất cả nội thất đều được thiết kế theo phong cách hiện đại</p>\n\n<p><strong><span style=\"font-size:16px;\">Tầng lửng 2</span></strong>: 2 Phòng ngủ. 1 vệ sinh, sân phơi</p>\n\n<p><strong><span style=\"font-size:16px;\">Tầng tum</span></strong>: 1 sân thượng để cả gia đình nghỉ ngơi, hóng mát và một phòng kho.</p>\n\n<p>Khi nhận được thiết kế chúng tôi gửi thì anh Thiện đã ưng ý ngay mà không cần chỉnh sửa thêm nhiều. Nếu quý khách hàng muốn thiết kế hay thi công nhà trọn gói thì đừng quên liên lạc ngay với GEMIHOME để được tư vấn hỗ trợ nhanh chóng.</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 393px; top: 2521px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-bien-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BIÊN', 'thiet-ke-nha-pho-a-bien-thumline', 0, 0, 0, 0, 0, 0, 200, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-nha-a-bien', '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BIÊN ', '', '', 84, '', 13, 16, 0, 21, '2020-01-18 03:49:01', 1, 1, '2020-02-13 13:30:40', ''),
(208, '', 'THIẾT KẾ NHÀ PHỐ CHỊ HƯƠNG Ý YÊN', '', '', '<p>Với những gia đình chỉ sở hữu những lô đất với diện tích mặt tiền khoảng 4-5m&nbsp;thường sẽ phải lựa chọn kiểu thiết kế nhà mặt phố. Nhưng hiện nay cùng với sự sáng tạo không ngừng của các kiến trúc sư thì các mẫu thiết kế nhà mặt phố cũng cực kỳ sáng tạo, độc đáo và đẹp mắt.</p>\n', '', '', '', '', '', '<p>Bạn đang có nhu cầu xây dựng một ngôi nhà cho gia đình mình, thế nhưng việc tìm được một mẫu kiến trúc là điều không dễ dàng. Hãy cùng GEMIHOME trải nghiệm ngôi nhà phố 3 tầng 100m<sup>2</sup>&nbsp;tại nhà chị Hương ở Ý Yên nhé. Với không gian kiến trúc hiện đại, mẫu thiết kế này đang được giới chuyên môn đánh giá cao.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết mẫu thiết kế nhà phố 3 tầng hiện đại</span></strong></p>\n\n<p>Mẫu thiết kế nhà của chị Hương được kết hợp với hệ thống cửa được lợp bằng, cột được sử dụng sơn giả đá khá hiện đại, hệ thống cửa là những thanh sắt màu đen đơn giản nhưng lại mang màu sắc hiện đại càng tôn nên màu sắc của ngôi nhà.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-mat-pho-c-nhung-mat-tien.jpg\" /></p>\n\n<p>Ngôi nhà thiết kế mang phong cách hiện đại, sự kết hợp giữa&nbsp;màu sơn trắng cùng hệ thống cửa kính thoáng, gần gũi với thiên nhiên, giúp căn nhà nhận nhiều ánh sáng tự nhiên nhất. Điểm&nbsp; nhấn của căn nhà&nbsp;là hệ thống gạch ốp ban công, gạch ốp trần màu vân gỗ, xi măng giúp trang nhã hơn và nổi bật hơn. Toàn bộ hệ thống đèn ở ban công là đèn LED âm trần.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-mat-pho-c-nhung-mat-tien-2.jpg\" /></p>\n\n<p>Xung quanh căn nhà và ban công được trồng nhiều cây xanh giúp hút bụi và làm không gian sống trong lành hơn</p>\n\n<p><strong><span style=\"font-size:20px;\">Không gian nội thất bên nhà phố 3 tầng</span></strong></p>\n\n<p>Là người vừa yêu thích phong các tân cổ điển, vừa thích lối trang trí hiện đại&nbsp;nên chị Hương quyết định thiết kế toàn bộ nội thất bên trong căn nhà đan xen theo 2 phong cách đó.</p>\n\n<p><strong><span style=\"font-size:16px;\">Không gian nội thất phòng khách&nbsp;</span></strong></p>\n\n<p>Màu sắc nội thất hài hòa, cùng gam màu của sơn tường là màu trung tính – trắng và vàng làm căn phòng toát lên vẻ sang trọng quý phái.&nbsp;Chiếc bàn được thiết kế đơn giản mà tinh tế cùng chiếc ghế bọc đệm mút êm ái sẽ giúp các thành viên cảm thấy thoải mái, dễ chịu hơn khi sử dụng. Họa tiết hoa văn trên sàn nhà, tường, trần nhà được thiết kế tỉ mỉ tạo không gian sang trọng, quý phái cho căn nhà.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-mat-pho-c-nhung-phong-khach-1.jpg\" />&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-mat-pho-c-nhung-phong-khach.jpg\" /></p>\n\n<p>Cầu thang được thiết kế bằng kính sang trọng, ngắn cách phòng khách và phòng ăn, nhà bếp</p>\n\n<p><strong><span style=\"font-size:16px;\">Không gian nội thất phòng ngủ</span></strong></p>\n\n<p>Phòng ngủ được thiết kế theo phong cách hiện đại với tone màu chính là trắng-nâu, nhiều chi tiết trang trí mới lạ, độc đáo.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-mat-pho-c-nhung-phong-ngu-1.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-mat-pho-c-nhung-phong-ngu.jpg\" /></p>\n\n<p>Mẫu thiết kế nhà phố&nbsp;hiện đại và khoa học, bố trí công năng khoa học, cùng với phối cảnh mặt tiền đẹp, chủ đầu tư hoàn toàn đồng ý. Nếu như gia đình bạn yêu thích mẫu thiết kế này, có thể liên hệ trực tiếp với GEMIHOME để được tư vấn chi tiết và cụ thể hơn.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 505px; top: 6579px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-mat-pho-c-nhung-thumlinejpg.jpeg', 'THIẾT KẾ NHÀ PHỐ CHỊ HƯƠNG Ý YÊN', 'thiet-ke-nha-mat-pho-c-nhung-thumlinejpg', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-nha-pho-chi-huong-y-yen', '', 'THIẾT KẾ NHÀ PHỐ CHỊ HƯƠNG Ý YÊN', '', '', 84, '', 10, 17, 18, 21, '2020-01-18 03:54:35', 1, 1, '2020-02-13 13:28:34', ''),
(209, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BAN', '', '', '<p>Xu hướng thiết kế nhà ở kết hợp kinh doanh ngày càng phát triển, đặc biệt những ngôi nhà mặt tiền, nằm trên con đường sầm uất,.. Với đội ngũ nhiều năm kinh nghiệm, GEMIHOME sẽ thiết kế cho bạn một căn nhà hiện đại vừa kinh doanh nhưng vẫn đảm bảo không gian sống riêng tư</p>\n', '', '', '', '', '', '<p>Gia đình anh Ban hiện đang sinh sống tại thành phố Ninh Bình, tỉnh Ninh Bình, gia đình có 4 thành viên, có diện tích ô đất trống 4m×15,5m. Dự định năm 2020 gia đình sẽ khởi công công trình nhà 3 tầng theo phong cách hiện đại, với công năng: 1 phòng khám tư, 3 phòng ngủ, 1 phòng thờ, cùng với không gian sinh hoạt chung là phòng bếp và phòng khách</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết mẫu nhà phố 3 tầng hiện đại</span></strong></p>\n\n<p>Không gian mặt tiền nhà ống 3 tầng được thiết kế theo phong các hiện đại với nhiều cây xanh trang trí ngoài ban công. Lấy gỗ làm điểm nhấ trong thiết kế mặt tiền, ngôi nhà trở nên sang trọng khi kết hợp giữa gỗ và cửa kính toàn bộ ngôi nhà.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-ban-mat-tien-1.jpg\" /></p>\n\n<p>Công trình được nhìn từ phía trên xuống với đường nét rõ ràng, mạch lạc, hài hòa và đan xen ăn khớp và kết hợp với các chất liệu nhưu kính, nhôm, gỗ làm cho công trình thực sự ấn tượng và nổi bật trong khu phố hiện đại phù hợp với thời đại</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-ban-mat-tien-2.jpg\" /></p>\n\n<p><strong><span style=\"font-size:20px;\">Bố trí không gian bên trong ngôi nhà ống 3 tầng</span></strong></p>\n\n<p><strong><span style=\"font-size:20px;\">Mặt sàn tầng 1</span></strong></p>\n\n<p>Ở tầng 1, chúng tôi bố trí không gian để anh Ban mở phòng khám tư nhân với dãy ghế chờ phóa bên trái từ cửa vào và bán làm việc ở bên phải. Bên trong gồm 2 giường bệnh với tiểu cảnh trang trí. Tiếp đến lối vào là không gian phòng khách lý tưởng nơi đón khách và quây quần của cả gia đình. Phòng khách được bố trí sofa, TV, hệ thống âm thanh. Để tiết kiệm diện thích, chúng tôi tận dụng gầm cầu thang để bố trí nhà vệ sinh nhỏ Nối liền với phòng khách là không gian bếp và nhà ăn giản dị nhưng trang thiết bị đầy đủ và điện đại</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-ban-mat-bang-tang-1.jpg\" /></p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 2</span></strong> gồm 2 phòng ngủ, 2 phòng vệ sinh và phòng học danh cho các con nhà gia chủ. Tầng được được thiết kế giếng trời để tạo không gian quang đãng, sáng sủa cho căn nhà.</p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 3</span></strong> bao gồm 1 phòng ngủ, 1 nhà vệ sinh,1 phòng thờ và một sân phơi thoáng mát, rộng rãi</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-ban-mat-bang-tang-2.jpg\" /></p>\n\n<p>GEMIHOME là nơi quy tụ các KTS giàu tâm huyết, chuyên nghiệp và sáng tạo cho ra đời các sản phẩm thật sự khác biệt và độc đáo! Bạn đã sẵn sàng cùng GEMIHOME biến những điều bạn đang ấp ủ thành một tác phẩm thật sự nổi bật, sáng tạo với chi phí hợp lý nhất chưa? Hãy bắt đầu liên hệ ngay với chúng tôi để bạn được tư vấn hoàn toàn miễn phí và dịch vụ chuyên nghiệp nhất!!!</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 67px; top: 3911px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-ban-mat-tien-thumeline.jpg', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BAN', 'thiet-ke-nha-pho-a-ban-mat-tien-thumeline', 0, 0, 0, 0, 0, 0, 70, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-nha-a-ban', '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A BAN ', '', '', 84, '', 10, 16, 18, 21, '2020-01-18 04:09:01', 1, 1, '2020-02-13 13:25:39', ''),
(210, '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH NHÀ PHỐ A TỈNH', '', '', '<p>Phong cách thiết kế nhà ống 3 tầng hiện đại có giếng trời hiện nay đang rất phổ biến và được nhiều người yêu thích bởi dáng vẻ trẻ trung, hiện đại, không gian thoáng đãng với giếng trời được bố trí hợp lý, những gam màu tươi trẻ giúp không gian sống của gia đình thêm hài hòa và sang trọng.</p>\n', '', '', '', '', '', '<p>Đến với Gemi Home, anh Tỉnh yêu cầu về căn nhà đảm bỏa được các yếu tố:&nbsp;công năng sử dụng được bố trí hợp lý, phải đảm bảo được ánh sáng và không khí trong nhà, thiết kế không cầu kỳ nhưng phải đảm bảo tính sang trọng và thể hiện phong cách riêng của gia chủ. Đội ngũ kiến trúc sư của chúng tôi quyết định thiết kế nhà 3 tầng 1 tum hiện đại trên nền đất hơn 60m<sup>2</sup>. Cùng Gemi Home ngắm nhìn toàn bộ thiết kế nhà phố của gia đình anh Tỉnh nhé!</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết mẫu thiết kế nhà phố hiện đại 3 tầng 1 tum</span></strong></p>\n\n<p>Mẫu thiết kế nhà phố 3 tầng 1 tum được thiết kế với 2 tone màu xám và trắng mang phong cách hiện đại, sang trọng. Không gian phóa trước mặt tiền được thông thoáng, giúp ngôi nhà đón được nhiều gió và ánh sáng. Căn nhà sử dụng chất liệu kiến trúc hiện đại, đoa là hệ thống cửa kính phía mặt tiền. Cửa kính giúp ngôi nhà trở nên thông thoáng và cảm giác rộng hơn. Hơn nữa, nó còn giúp ngôi nhà lấy được ánh sáng và gió tự nhiên. Không gian cây xanh tự nhiên trước nhà tuy đơn giản nhưng lại khiến cho mặt tiền trở nên sinh động và đẹp mắt hơn.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-tinh-mat-tien.jpg\" /></p>\n\n<p>Nhà ống 3 tầng hiện đại có giếng trời được thiết kế hài hòa về bố cục hình khối, các khối kiến trúc và màu sắc được sử dụng một cách linh hoạt tạo nên dáng vẻ trẻ trung, năng động và khỏe khoắn cho căn nhà.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế không gian mặt bằng nhà ống 3 tầng 1 tum</span></strong></p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 1</span></strong> bao gồm gara oto rộng, thoải mái, có thiết kế chậu hoa. Tiếp đến là phòng tiếp khách rộng rãi. Đi vào vào trong là phòng ăn, nhà bếp và WC chung</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-tinh-mat-cong-nang-tang-1.jpg\" /></p>\n\n<p>Không gian được thiết kế với nhiều chậu hoa, cây cảnh tạo không gian xanh cho cả căn phòng.</p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 2</span></strong> bao gồm phòng sinh hoạt chung của cả gia đinh và phòng ngủ Master đầy đủ tiện nghi, 1 phòng tắm. Phòng ngủ có khu ban công sau khiến căn phòng hứng trọn ánh sáng tự nhiên. Hệ thống giếng trời giúp không gian sâu rộng, quang đãng, thoáng mát.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-tinh-mat-cong-nang-tang-2.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-tinh-phong-ngu.jpg\" /><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-tinh-phong-tam.jpg\" /></p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 3</span></strong> thiết kế gồm 2 phòng ngủ đối diện nhau và 1 Wc chung. Thiết kế nội thất sử dung tone màu nâu và trắng làm chủ đạo để trạo không gian yên bình, ấm áp.</p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng tum</span></strong> gồm sân thượng để cả nhà nghỉ ngơi, hóng gio với nhiều cây cảnh được trồng xung quanh. Khu phòng thờ được thiết kế bên trong ngay ban công sau vừa thoáng mát vừa yên tĩnh.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-tinh-mat-cong-nang-tum.jpg\" /></p>\n\n<p>Gemi Home là nơi quy tụ các KTS giàu tâm huyết, chuyên nghiệp và sáng tạo cho ra đời các sản phẩm thật sự khác biệt và độc đáo! Bạn đã sẵn sàng cùng Gemi Home biến những điều bạn đang ấp ủ thành một tác phẩm thật sự nổi bật, sáng tạo với chi phí hợp lý nhất chưa? Hãy bắt đầu liên hệ ngay với chúng tôi để bạn được tư vấn hoàn toàn miễn phí và dịch vụ chuyên nghiệp nhất!!!</p>\n\n<p>&nbsp;</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: -1px; top: 6195px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-tinh-mat-tien-thumeline.jpg', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH NHÀ PHỐ A TỈNH', 'thiet-ke-nha-pho-a-tinh-mat-tien-thumeline', 0, 0, 0, 0, 0, 0, 65, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-cong-trinh-nha-pho-a-tinh', '', 'THIẾT KẾ VÀ THI CÔNG CÔNG TRÌNH NHÀ PHỐ A TỈNH', '', '', 84, '', 14, 16, 18, 21, '2020-01-18 04:20:37', 1, 1, '2020-02-13 13:24:11', ''),
(211, '', 'THIẾT KẾ NHÀ PHỐ ĐẸP A HOÀNG', '', '', '<p>Mẫu thiết kế nhà phố đẹp theo phong cách hiện đại của anh Hoàng là một trong những công trình kiến trúc đặc sắc và độc đáo. Không quá tốn kém về chi phí, nhưng bạn vẫn có thể sở hữu một ngôi nhà đẹp trong tầm tay.</p>\n', '', '', '', '', '', '<p>Đây là phương án thiết kế nhà ống tại Hải Phòng được Gemi Home bàn giao cho gia đình anh Hoàng&nbsp;trong tháng 10 này. Mặc dù chỉ sở hữu mặt tiền gần 4,5m tuy nhiên thiết kế độc đáo của mặt tiền và không gian nội thất đã khiến ngôi nhà sở hữu nhiều điểm cộng, ngay lập tức khuất phục mọi ánh nhìn bất kỳ. Mời bạn cùng đến với nội dung bài viết để tìm hiểu sâu hơn về mẫu nhà ống hiện đại 3 tầng 4,3x18m tại Hải Phòng này.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết mẫu nhà ống&nbsp;3 tầng hiện đại&nbsp;</span></strong></p>\n\n<p>Mẫu nhà phố 3 tầng hiện đại được tiếp giáp ngay với đường giao thông chính khu phố, vì vậy kiến trúc sư&nbsp;đã bố trí khoảng sân lùi vào 2m để làm khoảng nghỉ và tận dụng làm nơi để xe, ngày sau đó là phòng khách nhẹ nhàng và tinh tế đúng theo tinh thần của công trình.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-hoang-phong-mat-tien.jpg\" /></p>\n\n<p>Mặt tiền mẫu nhà phố 3 tầng hiện đại được trang trí bởi những màu sắc hài hòa, trung tính là màu nâu sữa và màu trắng. Hai màu sắc hòa quyện đem đến sự gần gũi; công với cách trang trí mặt tiền mẫu nhà phố 3 tầng hiện đại bằng những tuyến chạy làm cho công trình thêm phần vui nhộn, không nhàm chán. Sự bố trí hài hòa của cây xanh vào trong mặt tiền nhà cũng được chú trọng rất nhiều. Điều này giúp cho mẫu nhà phố 3 tầng hiện đại có thêm nhiều màu xanh và tạo nhiều thiện cảm cho những du khách đi qua chiêm ngưỡng căn nhà.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế mặt bằng không gian nhà ống 3 tầng</span></strong></p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng trệt</span></strong>: được&nbsp;thiết kế bao gồm gara, 1 phòng khách, phòng phòng ăn nhà bếp, 1 WC chung và một phòng ngủ</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-hoang-mat-bang-cong-nag-tang-1.jpg\" /></p>\n\n<p>Phòng khách mẫu nhà phố 3 tầng hiện đại cũng được trang trí đơn giản, không cầu kì với màu nâu và trắng làm chủ đạo.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-hoang-phong-khach-1.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-hoang-phong-khach.jpg\" /></p>\n\n<p>Phòng ăn nhà bếp mẫu nhà phố 3 tầng hiện đại được sử dụng tone màu sáng hơn giúp cho không gian thêm phần rộng rãi và sạch sẽ. Không gian thoáng rộng làm cho tâm trí luôn muốn được tạo ra những bữa cơm đầm ấm bên gia đình.</p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 2: </span></strong><span style=\"font-size:16px;\">được bố trí</span>&nbsp;2 phòng ngủ đối diện nhau và 1 WC chung</p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 3:</span></strong><span style=\"font-size:16px;\"> gồm</span>&nbsp;1&nbsp;phòng ngủ, 1 phòng thờ, 1 WC chung và sân thượng.</p>\n\n<p>Phòng ngủ mẫu nhà phố 3 tầng hiện đại được bố trí những chậu cây xanh giúp các thành viên trong gia đình luôn cảm thấy thư thái trong căn phòng của mình. Ngoài ra, kts bố trí thêm khoảng sân vườn trên tầng tum để gia đình có không gian quây quần thư giãn trong không gian tự nhiên ở chính căn nhà của mình.</p>\n\n<p>GEMIHOME&nbsp;là nơi quy tụ các KTS giàu tâm huyết, chuyên nghiệp và sáng tạo cho ra đời các sản phẩm thật sự khác biệt và độc đáo! Bạn đã sẵn sàng cùng Gemi Home biến những điều bạn đang ấp ủ thành một tác phẩm thật sự nổi bật, sáng tạo với chi phí hợp lý nhất chưa? Hãy bắt đầu liên hệ ngay với chúng tôi để bạn được tư vấn hoàn toàn miễn phí và dịch vụ chuyên nghiệp nhất!!!</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: -3px; top: 3127px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-hoang-phong-mat-tien_(1).jpg', 'THIẾT KẾ NHÀ PHỐ ĐẸP A HOÀNG', 'thiet-ke-nha-pho-a-hoang-phong-mat-tien_(1)', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-nha-pho-dep-a-hoang', '', 'THIẾT KẾ NHÀ PHỐ ĐẸP A HOÀNG ', '', '', 84, '', 10, 16, 18, 21, '2020-01-18 04:38:55', 1, 1, '2020-02-13 13:20:54', ''),
(212, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TOAN', '', '', '<p>Với nhu cầu có được 1 căn nhà phố đẹp, có sân thượng thoáng mát, anh Toan ở thành phố Thái Nguyên đã tin tưởng và tìm đến GEMIHOME để thực hiện ước mơ của mình. Các kiến trúc sư của chúng tôi đã lên ý tưởng và thiết kế mẫu biệt thự nhà phố cao tầng, hiện đại này.</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 892px; top: 34px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '<p>Căn nhà là niềm tự hào và niềm vui của cuộc sống của bạn và là nơi tôn nghiêm để bạn nghỉ ngơi và thư giãn khi bạn mệt mỏi với thế giới bên ngoài. Do đó, anh Toan đã quyết định rằng họ cần phải thiết ngôi nhà của họ trở nên phong cách và đẳng cấp. Cùng GEMIHOME ngắm nhìn mẫu thiết kế căn nhà phố 3 tầng hiện đại này nhé!</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết mẫu nhà ống 3 tầng</span></strong></p>\n\n<p>Mẫu nhà phố 3 tầng hiện đại kết hợp sân thượng đẹp này thuộc sở hữu của chủ nhà Toan ở Thành phố Thái Nguyên&nbsp;mang phong cách hiện đại với cách tạo hình thiết kế đơn giản, kiến trúc sư của GEMIHOME&nbsp;bố trí cửa kính lớn không chỉ giúp mặt tiện hiện đại mà còn giúp lấy ánh sáng cho không gian nội thất bên trong. Lan can là điểm nhấn mang đến sự nổi bật cho mặt tiền ngôi nhà.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-toan.jpg\" /></p>\n\n<p>Gam màu chủ đạo được các kiến trúc sư sử dụng sắc trắng, gam màu khá phổ biến cho những căn nhà phố đẹp hiện nay bởi nó thể hiện vẻ đẹp nhẹ nhàng, trang nhã và thanh lịch.</p>\n\n<p><strong><span style=\"font-size:20px;\">Nội thất nhà ống 3 tầng hiện đại có sân thượng </span></strong></p>\n\n<p>Nhà phố ngày nay thường rất hay để trống 1 khoảng sân phía trước để có bãi để xe trong nhà và không gian dành cho vườn nhà.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-toan-ngo.jpg\" /></p>\n\n<p>Phòng khách được thiết kế với tông màu chủ đạo trắng – xám đầy sang trọng, tính tế. Chúng tôi ngăn cách phòng ăn và phòng khách quan bằng bậc thang mới mẻ, sáng tạo.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-toan-phong-khach.jpg\" /></p>\n\n<p>Nối dài phía sau là khu vực bếp và nhà ăn. Với đầy đủ quầy bar, bếp ăn, khu vực bếp này là quá đủ cho sinh hoạt hàng ngày, kể cả tiệc tùng. Màu gạch ốp lát nổi bật hơn các vật dụng bếp</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-toan-phong-bep-1.jpg\" /></p>\n\n<p>Phòng vệ sinh ở các phòng ngủ được ốp gạch men màu trắng sát trần nhà. Tất cả các vật dụng trong phòng vệ sinh đều có chung một tông trắng.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-toan-phong-tam.jpg\" /></p>\n\n<p>Khi nhận được thiết kế&nbsp;chúng tôi gửi thì anh Thiện&nbsp;đã ưng ý ngay mà không cần chỉnh sửa thêm nhiều. Nếu quý khách hàng muốn thiết kế hay thi công nhà trọn gói thì đừng quên liên lạc ngay với GEMIHOME để được tư vấn hỗ trợ nhanh chóng.</p>\n\n<p>&nbsp;</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 392px; top: 4977px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-toan-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TOAN', 'thiet-ke-nha-pho-a-toan-thumline', 0, 0, 0, 0, 0, 0, 200, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-nha-pho-a-toan', '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A TOAN ', '', '', 84, '', 13, 16, 18, 21, '2020-01-18 04:44:50', 1, 1, '2020-02-13 13:14:54', ''),
(213, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ ĐẸP A TRƯỜNG', '', '', '<p>Mong muốn vừa sang trong vừa tinh tế nhưng phải hiện đại anh Trường&nbsp;đã lựa chọn phong cách thiết kế hiện đại cho ngôi nhà phố của mình. Tông màu trắng lịch lãm&nbsp;đã làm ngôi nhà nổi bật&nbsp;một cách ấn tượng.</p>\n', '', '', '', '', '', '<p>Nhà phố 3 tầng 5m được thiết kế theo phong cách hiện đại. Diện tích đất xây dựng là 100m2, với các công năng chính: phòng khách, phòng bếp ăn, 4 phòng ngủ, 1 phòng thờ. Các KTS đã tối ưu hóa công năng, hướng tới thuận tiện trong đời sống sinh hoạt của các thành viên. Không những vậy, kiến trúc mặt tiền cũng được chú trọng, đơn giản mà độc đáo.</p>\n\n<p><strong><span style=\"font-size:20px;\">Phối cảnh&nbsp;nhà phố 3 tầng mặt tiền 5m hiện đại</span></strong></p>\n\n<p><strong><span style=\"font-size:20px;\"><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-truong-mat-tien-1.jpg\" /></span></strong></p>\n\n<p>Phối cảnh nhà phố 3 tầng mặt tiền 5m hiện đại Phong cách hiện đại là sự lựa chọn sáng suốt với nhưng gia chủ yêu thích sự đơn giản, nhẹ nhàng mà không gian thoáng mát. Mẫu nhà phố 3 tầng mặt tiền 5m sau cũng vậy. Sàn nhà được nâng cao hơn so với mặt đường nên các kiến trúc sư&nbsp;phải thiết kế dốc để ô tô tiến vào gara. Toàn bộ mặt tiền là hệ cửa cuốn đảm bảo an ninh cho không gian bên trong mẫu nhà phố đẹp. Mái hiên được bố trí đua rộng, đèn ốp trần để lấy sáng vào buổi tối. Đồng thời, tận dụng làm ban công ở tầng 2, toàn bộ lan can được làm bằng kính cường lực, không chỉ an toàn lại giúp phần mặt tiền nhà phố 3 tầng hiện đại thêm thoáng rộng. Mặt dưới của mái ban công tại tầng 2 và 3 được ốp gỗ, viền nhôm bảo vệ nên không lo bị nước mưa thấm vào gây mục.&nbsp;</p>\n\n<p><strong><span style=\"font-size:20px;\"><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-truong-mat-tien.jpg\" /></span></strong></p>\n\n<p>Ban công lại được đặt rất nhiều cây xanh nên không gian càng trở nên thoáng mát, gần gũi. Màu trắng chủ đạo thể hiện sự tinh tế kết hợp với chiều cao 3 tầng càng giúp mẫu nhà phố 3 tầng mặt tiền 5m trở nên lịch lãm hơn. Bạn thấy đó, phần mặt tiền có kết cầu khá đơn giản nhưng nó đã đáp ứng đúng và đủ yêu cầu của gia chủ về một mẫu nhà phố đẹp, không gian thoáng mát.</p>\n\n<p><strong><span style=\"font-size:20px;\">Công năng nhà phố 3 tầng mặt tiền 5m</span></strong></p>\n\n<p><strong><span style=\"font-size:16px;\">Tầng 1</span></strong>: Đầu tiên là gara để ô tô và xe máy, tiếp đến là không gian phòng khách rộng rãi, thiết kế sang trọng và tiện nghi. Ở giữa là cầu thang, lối đi xuống bếp và tiểu cảnh nhỏ để không gian thêm sinh đọng hơn. Cuối cùng là phòng bếp ăn, nhà wc chung và lối ra sân sau.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-truong-phong-khach-3.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-truong-phong-khach-1.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-truong-phong-bep.jpg\" /></p>\n\n<p><strong><span style=\"font-size:16px;\">Tầng 2 và 3</span></strong> của mẫu nhà đẹp có chung một kết cấu công năng. Mỗi tầng có 2 phòng ngủ khép kín nằm trước và sau nhà, tầng 3 là phòng thờ. Để không khí được lưu thông và đảm bảo ánh sáng cho các tầng thì KTS đã thiết kế giếng trời và khoảng thông&nbsp; tầng ở giữa nhà.</p>\n\n<p>Mẫu thiết kế nhà phố hiện đại và khoa học, bố trí công năng khoa học, cùng với phối cảnh mặt tiền đẹp, chủ đầu tư hoàn toàn đồng ý. Nếu như gia đình bạn yêu thích mẫu thiết kế này, có thể liên hệ trực tiếp với GEMIHOME để được tư vấn chi tiết và cụ thể hơn.</p>\n\n<p>&nbsp;</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: -1px; top: 5930px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-truong-mat-tien-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ ĐẸP A TRƯỜNG', 'thiet-ke-nha-pho-a-truong-mat-tien-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-nha-pho-dep-a-truong', '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ ĐẸP A TRƯỜNG ', '', '', 84, '', 10, 16, 18, 21, '2020-01-18 07:28:34', 1, 1, '2020-02-13 13:33:39', ''),
(214, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A SỸ', '', '', '<p>Mẫu nhà phố&nbsp;đang là mẫu đang rất được ưa chuộng, đây là mẫu nhà trẻ trung, hiện đại, có kết cấu dường như hoàn hảo, không gian thoải mái, thích hợp với mọi mong muốn hiện nay của mọi người.</p>\n', '', '', '', '', '', '<p>Sau nhiều lần tìm hiểu các mẫu thiết kế nhà, anh Sỹ&nbsp;đã tìm đến GEMIHOME chúng tôi nhờ kiến trúc sư tư vấn mẫu nhà phố 4 tầng&nbsp;để làm mẫu thi công cho cả gia đình. Diện tích thiết kế sàn dự định là 60m<sup>2</sup>.</p>\n\n<p>Dự định công năng sinh hoạt cho gia đình sẽ thiết kế 2 phòng ngủ,&nbsp;1 phòng thờ trên tầng 4&nbsp;thiết kế hướng ban công và phải phù hợp với những tiêu chuẩn phong thủy để đảm bảo không gian tâm linh tốt nhất cho nhà phố hiện đại.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết mẫu nhà ống 4 tầng hiện đại</span></strong></p>\n\n<p>Các thiết kế nhà phố hiện nay thường theo kiểu ống vì phần bề ngang bị hạn chế. Vì vậy, các không gian phía trong thường bị bí và thiếu ánh sáng tự nhiên. Để khắc phục nhược điểm này, chúng tôi thiết kế các cửa kính lớn để lấy được nhiều ánh sáng từ bên ngoài, đồng thời sử dụng rèm cửa để điều chỉnh lượng sáng và tăng tính thẩm mỹ cho ngôi nhà</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-sy-mat-tien-2.jpg\" /></p>\n\n<p>Mẫu nhà phố toát lên dáng vẻ hiện đại, lối thiết kế phóng khoáng mang đến cho công trình nhiều điểm nhấn ấn tượng. Các đường nét thiết kế từ lan can, hệ thống cửa đều mang một nét đẹp riêng biệt.</p>\n\n<p><strong><span style=\"font-size:20px;\">Mặt bằng không gian bên trong nhà ống 4 tầng</span></strong></p>\n\n<p>Nếu như thiết kế ngoại thất mang dáng vẻ hiện đại thì trong thiết kế nội thất các kiến trúc sư lại tạo ra một không gian sống ấm áp, thoải mái và tiện nghi.</p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 1</span></strong>: Không gian tại tầng trệt được thiết kế một cách hợp lý với nhiều công năng khác nhau. Ngay cửa vào là không gian được thiết kể vừa vặn là khu vực&nbsp;để xe. Tiếp đến là không gian để chủ nhà tiếp khách hàng. Tiếp đến là nhà kho đựng hàng hóa. Và cuối cùng là khu vực nhà vệ sinh</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-sy-mat-bang-tang-1.jpg\" /></p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 2 và 3:</span></strong> là không gian sinh hoạt của nhà anh Sỹ. Tầng 2 bao gồm phòng khách và phòng ăn và phòng vệ sinh. Phòng khách hướng ra ban công thoáng mát</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-sy-mat-bang-tang-2.jpg\" /></p>\n\n<p>Tầng 3 gồm 2 phòng ngủ, một phòng ngủ master dành cho vợ chồng anh Sỹ và phòng ngủ con. Cả 2 phòng ngủ đều được thiết kế đầy đủ nội thất. Hai phòng tắm được thiết kế trong 2 phòng</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-sy-mat-bang-tang-3.jpg\" /></p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 4</span></strong>: khu vực tầng 4&nbsp; chúng tôi bố trí phòng thờ ở phía trong vừa cao ráo vừa yên tĩnh, hợp phong thủy của người Việt. Khu vực sân chơi kết hợp sân phơi&nbsp;vừa rộng rãi, thoáng mát</p>\n\n<p>Mẫu thiết kế nhà&nbsp;phố&nbsp;hiện đại và khoa học, bố trí công năng khoa học, cùng với phối cảnh mặt tiền đẹp, chủ đầu tư hoàn toàn đồng ý. Nếu như gia đình bạn yêu thích mẫu thiết kế này, có thể liên hệ trực tiếp với chúng tôi để được tư vấn chi tiết và cụ thể hơn.</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: -6px; top: 2868px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-sy-mat-tien-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A SỸ', 'thiet-ke-nha-pho-a-sy-mat-tien-thumline', 0, 0, 0, 0, 0, 0, 70, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-nha-pho-a-sy', '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A SỸ', '', '', 84, '', 10, 16, 18, 21, '2020-01-18 07:35:17', 1, 1, '2020-02-13 13:13:06', ''),
(215, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A TÙNG', '', '', '<p>Mẫu nhà ống&nbsp;đang là mẫu đang rất được ưa chuộng, đây là mẫu nhà trẻ trung, hiện đại, có kết cấu dường như hoàn hảo, không gian thoải mái, thích hợp với mọi mong muốn hiện nay của mọi người.</p>\n', '', '', '', '', '', '<p>Thiết kế nội thất nhà ống này là dành cho gia đình anh Tùng, thành phố Hải Phòng. Ngôi nhà được thiết kế công năng khoa học và ngoại thất mãn nhãn trên diện tích sàn 4mx20m. Ngoài 3 phòng ngủ với 4 phòng vệ sinh được phân bổ tiện nghi, những không gian khác của ngôi nhà cũng cho thấy tư duy linh hoạt trong cách sắp xếp công năng công trình. Cách sắp xếp này phù hợp với nhu cầu của nhiều gia đình.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết mẫu nhà ống hiện đại</span></strong></p>\n\n<p>Xuất hiện trên con phố tấp nập với dáng vẻ đơn giản nhưng vô cùng duyên dáng, ngôi nhà ống&nbsp;4 tầng kiểu hiện đại được hình thành từ những khối hình học tưởng chừng cứng nhắc nhưng lại mang nét đẹp lạ. Việc các kiến trúc sư sử dụng ô cửa kính lớn cùng với rèm buông nhẹ tạo nên điểm nhấn sáng giá cho mặt tiền nhà ống hiện đại.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thie-ke-nha-pho-mat-tien.jpg\" /></p>\n\n<p>Ngoài ra, từ phối cảnh bạn còn có thể thấy ban công thiết kế đón nắng, đón gió cho không gian nội thất ngôi nhà, làm nổi bật sắc hoa rực rỡ kiêu hãnh bên ban công. Cách xử lý kiến trúc linh hoạt tạo nên thần thái sang trọng và phóng khoáng cho nhà ống&nbsp;4 tầng kiểu hiện đại có gara ô tô trong nhà.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thie-ke-nha-pho-a-tung.jpg\" /></p>\n\n<p>Một trong những điểm nổi bật trong thiết kế của mẫu thiết kế nhà phố 4 tầng hiện đại 4m x 20m này chính là cách sử dụng gam màu tinh tế. Cụ thể, đó là sự kết hợp giữa gam màu trắng và đen, cùng các cửa sổ bằng kính lớn phía mặt tiền đã tạo cho ngôi nhà phố một tổng thể hài hòa, đẹp mắt.</p>\n\n<p><strong><span style=\"font-size:20px;\">Bố trí không gian bên trong&nbsp;nhà ống 4 tầng</span></strong></p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 1</span></strong>: Bao gồm 4 khu được phân chia rõ ràng. Gara được bố trí&nbsp;ngay đầu phòng, tiếp đến là phòng khách với bộ bàn ghế sofa sang trọng được đặt đới diện cầu thang. Nhà vệ sinh được thiết kế trong cùng không gian với phòng bếp và bàn ăn. Sau cùng là sân chơi và&nbsp;không gian xanh.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thie-ke-nha-pho-mat-bang-tang-2.jpg\" /></p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 2 và tầng 3</span></strong> được thiết kế gần như nhau. Tầng 2 bao gồm 2 phòng ngủ được đặt đối diện nhau, đầy đủ nội thất và phòng tắm. Ở hành lang tầng 2 cố thông tầng tạo cảm giác sâu rộng, thoáng đãng, sáng sủa cho căn nhà.&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thie-ke-nha-pho-mat-bang-tang-1.jpg\" /></p>\n\n<p>Tầng 3 được thiết kế với 1 phòng ngủ, 1 phòng thờ. Phòng ngủ được thiết kế đầy đủ nội thất tiện nghi. Phòng thờ thiế kế ngay ban công tạo cảm giác thoáng mát cho gian tầng.</p>\n\n<p><strong><span style=\"font-size:16px;\">Mặt bằng tầng 4</span></strong> được bố trí làm sân phơi và sân chơi cho gia chủ. Sân thượng nằm phía ngoài được bố trí tiểu cảnh xung quanh là nơi gia chủ có thể thư thái ngắm cảnh đường phố về đêm hay đón bình minh buổi sáng. Phía cuối là sân phơi cho gia đình.</p>\n\n<p>Mẫu thiết kế nhà phố&nbsp;hiện đại và khoa học, bố trí công năng khoa học, cùng với phối cảnh mặt tiền đẹp, chủ đầu tư hoàn toàn đồng ý. Nếu như gia đình bạn yêu thích mẫu thiết kế này, có thể liên hệ trực tiếp với GEMIHOME để được tư vấn chi tiết và cụ thể hơn.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 429px; top: 3116px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thie-ke-nha-pho-a-tung-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NHÀ A TÙNG', 'thie-ke-nha-pho-a-tung-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-nha-a-tung', '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A TÙNG ', '', '', 84, '', 10, 16, 18, 21, '2020-01-18 07:39:23', 1, 1, '2020-02-13 13:09:59', '');
INSERT INTO `products` (`ProductsID`, `SKU`, `Title`, `Title_en`, `Title_fr`, `Description`, `Description_en`, `Description_fr`, `Desc`, `Desc_en`, `Desc_fr`, `Body`, `Body_en`, `Body_fr`, `Body2`, `Body2_en`, `Body2_fr`, `Body3`, `Body3_en`, `Body3_fr`, `ImagePreset`, `ImageURL`, `ImageTitle`, `ImageAlt`, `IsNew`, `IsPromotion`, `IsSellers`, `IsHot`, `IsStock`, `ListPrice`, `SellPrice`, `Warranty`, `Orders`, `Publish`, `ShowPrice`, `Slug`, `Tags`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `CategoriesProductsID`, `SubCategoriesProductsID`, `SortingBrandID`, `SortingResID`, `SortingChannelID`, `SortingPriceID`, `CreatedDate`, `CreatedBy`, `ModifiedBy`, `ModifiedDate`, `Hightlight`) VALUES
(216, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A CHIẾN', '', '', '<p>Sự đa dạng trong thiết kế cũng như kiến trúc tổng thể của nhà 2 tầng mái thái đã mang lại cho các gia chủ sự lựa chọn phù hợp với nhu cầu sinh hoạt của gia đình. Đáp ứng được sự đòi hỏi cao về chất lượng của cuộc sống hiện nay và có một tổng thể ngoại thất vô cùng nổi bật, cuốn hút.</p>\n', '', '', '', '', '', '<p>Sau nhiều lần tìm hiểu các mẫu thiết kế nhà, anh Chiến&nbsp;đã tìm đến GEMIHOME chúng tôi nhờ kiến trúc sư tư vấn mẫu nhà 2 tầng mái thái&nbsp;để làm mẫu thi công cho cả gia đình. Diện tích thiết kế sàn dự định là 90m2, thiết kế có sân vườn và ban công đua rộng ở các tầng.</p>\n\n<p>Dự định công năng sinh hoạt cho gia đình sẽ thiết kế 2 phòng ngủ,&nbsp;1 phòng thờ trên tầng 2, thiết kế hướng ban công và phải phù hợp với những tiêu chuẩn phong thủy để đảm bảo không gian tâm linh tốt nhất cho nhà 2 tầng nông thôn hiện đại.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết mẫu nhà 2 tầng mái thái&nbsp;</span></strong></p>\n\n<p>Từ xa mẫu thiết kế nhà hoàn toàn bổi bật, từ hình khối vững chãi với những nét thanh thoát, màu sắc ngoại thất hài hòa, bố cục họa tiết sắc nét và tinh xảo, mang đến một không gian kiến trúc khá hoàn hảo. Mẫu nhà cao cửa rộng theo quan niệm của cha ông xưa, được ứng dụng rõ rệt và thể hiện sắc nét qua phối cảnh không gian của công trình. Phần chân móng được thiết kế cao hơn so với mặt sân. Việc sử dụng đá tự nhiên để ốp bậc tam cấp và hiên chính, màu nâu sáng&nbsp;không chỉ tạo nên một mặt tiền thoáng đãng, nó còn giúp cân bằng tổng thể hình khối chung. Kiến trúc chữ L của mẫu nhà 2 tầng mái thái tạo sự thông thoáng, hệ thống trụ cột chịu lực khối vuông trước mặt tiền chính và mặt tiền phụ, chạy thẳng từ thân móng tầng 1 đến mặt tiền ban công trên tầng 2, giúp đảm bảo kết cấu tải trọng, khoảng không phía trước sẽ trông nhẹ nhàng và thanh thoát hơn rất nhiều.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-chien-mat-tien.jpg\" /></p>\n\n<p><strong><span style=\"font-size:20px;\">Mặt bằng công năng sử dụng của mẫu nhà mái thái&nbsp;2 tầng hiện đại</span></strong></p>\n\n<p>Tầng 1 thiết kế với các công năng sử dụng chủ đạo như sau: Gara để oto, xa máy, phòng khách bố trí ngay cạnh cửa chính, đúng vị trí phong thủy. Cầu thang thông tầng thiết kế giáp ngay phòng khách, vừa ngăn cách với không gian sử dụng bên trong vừa có thể tạo điểm nhấn cho không gian nội thất.&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-chien-mat-bang-tang-1.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-chien-phong-khach.jpg\" /></p>\n\n<p>Đối diện sảnh thang, kiến trúc sư bố trí phòng ăn, phòng bếp thiết kế phía trong, liên kết tạo không gian khá thoáng.</p>\n\n<p>Tầng 2&nbsp;bố trí 2 phòng ngủ - một phòng ngủ Master và một phòng ngủ con, phòng thờ hướng ban công phụ phía mặt tiền, khoảng ban công này sẽ đón nhận ánh sáng và phân bổ vào trong. Hai nhà vệ sinh thiết kế ngay cạnh phòng ngủ</p>\n\n<p>Mẫu thiết kế nhà&nbsp;tầng mái thái hiện đại và khoa học, bố trí công năng khoa học, cùng với phối cảnh mặt tiền đẹp, chủ đầu tư hoàn toàn đồng ý. Nếu như gia đình bạn yêu thích mẫu thiết kế này, có thể liên hệ trực tiếp với chúng tôi để được tư vấn chi tiết và cụ thể hơn.</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 190px; top: 2390px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-chien-mat-tien-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NHÀ A CHIẾN', 'thiet-ke-nha-pho-a-chien-mat-tien-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-nha-a-chien', '', 'THIẾT KẾ VÀ THI CÔNG NHÀ A CHIẾN', '', '', 84, '', 10, 17, 18, 21, '2020-01-18 07:44:57', 1, 1, '2020-02-13 12:08:39', ''),
(217, '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A THIỆN', '', '', '<p>Với mặt tiền rộng 4m nằm trong ở ngoại thành Hà Nội, anh Thịện yêu cầu về nhà phố 4 tầng thoáng mát, tiện nghi, hiện đại. Các kiến trúc sư của Gemi Home đã thiết kế công trình đẹp mắt, phá vỡ kiến trúc cao tầng&nbsp;khuôn sáo trước đây.</p>\n', '', '', '', '', '', '<p>Do gia đình nhà anh Thiện khá đông thành viên mà muốn mỗi không gian sinh hoạt phải thoải mả, rộng rãi nên đã quyết định xây 4 tầng. Chúng tôi xin đưa ra một số thông tin để quý vị tham khảo về mẫu thiết kế này.</p>\n\n<p><strong><span style=\"font-size:20px;\">Chi tiết mẫu nhà ống&nbsp;4 tầng mặt tiền 4m</span></strong></p>\n\n<p>Ấn tượng đầu tiên khi nhìn vào mẫu thiết kế nhà ống&nbsp;4 tầng này phải nói đến là sự kết hợp khéo léo các khối hình học vuông vức tạo nên sự cuốn hút cho căn nhà. Mẫu biệt thự mang đậm phong cách hiện đại với kiểu dáng và chất liệu hiện đại. Mẫu thiết kế này là sự kết hợp giữa công năng sử dụng với không gian sống xanh, hòa quyện với thiên nhiên, rất có lợi cho sinh hoạt của mọi người trong gia đình.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-thien-mat-tien.jpg\" /></p>\n\n<p>Tại ban công các tầng chúng tôi đều thiết kế các chậu hoa&nbsp;giúp tăng tính thẩm mỹ cho toàn bộ kiến trúc mẫu nhà phố 4 tầng 4m. Hệ thống cửa chính và cửa sổ đều được làm bằng kính cường lực khung nhôm. Đây là điểm đặc trưng của phong cách hiện đại, kính còn giúp ánh sáng tự nhiên đi vào không gian nội thất, gia chủ hoàn toàn điều chỉnh được ánh sáng theo mong muốn của bản thân. Gam màu trắng nhã nhặn kết hợp hoàn hảo với màu nâu của các loại vật liệu khiến không gian trở nên rộng rãi và hiện đại, đây cũng là màu sắc được ưa chuộng hiện nay và hứa hẹn được yêu thích ở nhiều năm tiếp theo. Ạnh Thiện&nbsp;rất mong muốn chúng tôi thiết kế sao cho ánh sáng và gió được đưa vào giúp ngôi nhà phố 4 tầng của anh thông thoáng hơn. Kiến trúc nhà đẹp quyết định đưa giếng trời vào mẫu nhà này. Thứ nhất có thể thông gió, thứ hai&nbsp;có thể lấy ánh sáng tự nhiên khắp cả nhà. Với thiết kế này thì ngôi nhà của anh sẽ có không gian sống luôn thông thoáng, tạo cảm giác thư thái, thoải mái cho mọi thành viên trong gia đình.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất nhà ống 4 tầng</span></strong></p>\n\n<p>Tầng 1 được bố trí gara,&nbsp;khu vực để xe và một phòng bếp.</p>\n\n<p>Tầng 2: Bao gồm 1 phòng khách với bộ Sofa trắng&nbsp;và một phòng ngủ Master. Nhà vệ sinh nằm trong phòng ngủ</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-thien-mat-bang-tang-2.jpg\" /></p>\n\n<p>Tầng 3: Bao gồm 2 phòng ngủ đầy đủ nội thất và nhà tắm.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-nha-pho-a-thien-mat-bang-tang-3.jpg\" /></p>\n\n<p>Tầng 4: Được gia chủ dùng làm phòng thờ và được tận dụng&nbsp;làm nơi phục vụ các hoạt động sinh hoạt chung của gia đình</p>\n\n<p>Sàn của&nbsp;phòng khách sẽ sử gạch men trắng để tạo cảm giác mát mẻ, thoáng mát. Trong các phòng ngủ, chúng tôi sử dụng sàn gỗ tạo cảm giác ấm áp, tĩnh lặng. Bên cạnh đó, bậc thàng và hành lang sử dụng gạch màu đen để căn nhà sang trọng, đẳng cấp.</p>\n\n<p>Khi nhận được thiết kế&nbsp;chúng tôi gửi thì anh Thiện&nbsp;đã ưng ý ngay mà không cần chỉnh sửa thêm nhiều. Nếu quý khách hàng muốn thiết kế hay thi công nhà trọn gói thì đừng quên liên lạc ngay với GEMIHOME để được tư vấn hỗ trợ nhanh chóng.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 314px; top: 3660px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-nha-pho-a-thien-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A THIỆN', 'thiet-ke-nha-pho-a-thien-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-nha-pho-a-thien', '', 'THIẾT KẾ VÀ THI CÔNG NHÀ PHỐ A THIỆN ', '', '', 84, '', 10, 16, 18, 21, '2020-01-18 07:52:56', 1, 1, '2020-02-13 12:07:04', ''),
(218, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A BIÊN', '', '', '<p>Dựa theo sở thích của chủ nhà, kiến trúc sư sử dụng tông màu sáng nhẹ làm chủ đạo mang lại một không gian kiến trúc nhẹ nhàng mà gần gũi và thân thiện. Tông màu trung tính&nbsp;cũng là một trong những yếu tố đặc biệt gây ấn tượng khi kết hợp hài hòa với ánh sáng tự nhiên để mang đến một không gian sống tràn đầy năng lượng và sức sống.ng tự nhiên để mang đến một không gian sống tràn đầy năng lượng và sức sống.</p>\n', '', '', '', '', '', '<p>Thiết kế nội thất nhà phố theo phong cách hiện đại sử dụng một cách đơn giản và cô đọng nhất những hình khối cơ bản. Các chất liệu được kết hợp với nhau một cách giản lược, tạo ra một không gian sống thoáng đãng và tiện ích.</p>\n\n<p><span style=\"font-size:20px;\"><b>Thiết kế nội thất phòng khách</b></span></p>\n\n<p>Phòng khách hiện đại lấy ánh sáng tự nhiên từ cửa chính&nbsp;làm chủ đạo. Việc sử dụng ánh sáng tự nhiên vào thiết kế nội thất giúp không gian trở nên sáng, mở, tạo độ cơi nới cho không gian và mang lại hứng khởi cho gia chủ. Không gian thoáng với thiết kế sofa vững chãi mang lại hiệu ứng cảm xúc tích cực cho gia chủ và các thành viên trong gia đình, mang đến không gian sinh hoạt chung gần gũi và thư giãn.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-noi-that-a-bien-phong-khach.png\" /></p>\n\n<p>Họa tiết được đặt trên bức tường vân đá càng làm cho không gian trở nên ấn tượng</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-noi-that-a-bien-phong-khach-1.jpg\" /></p>\n\n<p>Kệ TV là ngăn kéo vừa tiện lợi, vừa giúp tiết kiệm không gian. Vách ngăn phòng khách với cầu thang và phòng bếp là gỗ thiết kế dọc tạo điểm nhấn cho căn nhà. Sàn nhà được thiết kế bằng gạch lát màu sáng giúp cho căn nhà thoáng mát, sạch sẽ.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng bếp</span></strong></p>\n\n<p>Bếp và bàn ăn được thiết kế trong cùng một không gian, tủ bếp được làm bằng gỗ, cánh tủ làm bằng vật liệu trắng bóng dễ dàng lau chùi. Tủ bếp được lắp đặt cả lò vi sóng, máy rửa bát giúp thiết kiệm không gian chật hẹp trong căn bếp</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-noi-that-a-bien.jpg\" /></p>\n\n<p>Bàn ăn được đặt ngay cạnh cửa sổ, có 6 chỗ ngồi ngỏ gọn.&nbsp;Mặt bàn được sử dụng kính màu trắng được trở nên dễ dàng cho việc dọn dẹp được sạch sẽ. Ghế được sử dụng tấm đệm êm ái cho gia đình được trở thoải mái, quây quần bên những bữa ăn ngon.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-phong-bep-a-bien.jpg\" /></p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Phòng ngủ cũng được thiết kê với tông màu sáng sang trọng, giường êm ái được bọc bằng nỉ cao cấp. Tủ quần áo đuộc đặt ở cuối phòng, đối diện giừong ngủ, được thiết kế áp trần giúp tiết kiệm không gian.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-noi-that-a-bien-phong-ngu-1.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-noi-that-phong-ngu-a-bien.jpg\" /></p>\n\n<p>Bàn làm việc và bàn trang điểm đặt đặt đối diện nhau ngay cửa ban công.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-noi-that-a-bien-phong-ngu-2.jpg\" /></p>\n\n<p>Bồn cầu toilet là chất liệu sứ cao cấp, đá lát tường, sàn nhà tắm là loại đá vân xám sang trọng, , vòi sen tắm, vòi chậu inox&nbsp; đẳng cấp, tủ đựng khăn tắm nhỏ gọn, tiện lợi.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-noi-that-a-bien-phong-ngu-2.jpg\" />&nbsp;</p>\n\n<p>Trên đây là mẫu thiết kế danh cho người yêu thích sự đơn giản, nhưng vô cùng tinh tế hiện đại. Quý khách có nhu cầu thiết kế – thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn Gemi Home sẽ giúp quý vị kiến tạo, xây dựng ước mơ đó.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-noi-that-a-bien-phong-khach-thumline.png', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A BIÊN', 'thiet-ke-noi-that-a-bien-phong-khach-thumline', 0, 0, 0, 0, 0, 0, 60, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-nha-a-bien', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A BIÊN', '', '', 76, '', 10, 16, 18, 21, '2020-01-22 15:03:44', 1, 1, '2020-02-12 10:08:07', ''),
(219, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI HƯƠNG', '', '', '<p>Thiết kế nội thất&nbsp;phong cách cổ điển luôn là sự lựa chọn hàng đầu của những đại gia ưa chuộng vẻ đẹp cổ kính và xa hoa.&nbsp;Tổng thể thiếu kế nội thất biệt thự hiện đại tân cổ điển nhà chị Hương&nbsp;mang đến cho gia chủ cảm giác vô cùng thoải mái, tiện nghi, và đầy ấn tượng được thực hiện bởi đội ngũ kiến trúc sư giàu kinh nghiệm của Gemi Home.</p>\n', '', '', '', '', '', '<p>Không quá cầu kỳ, rườm rà và xa hoa tạo cái nhìn mềm mại, gợi cảm, thiết kế nội thất Tân cổ điển đang chiếm được cảm tình từ đại đa số khách hàng đến với Gemi Home, từ những người trẻ tuổi, cá tính, phong cách đến cả những người cao tuổi thích sự bền đẹp, vững chãi. Hãy cùng Gemi Home ngắm nhìn mẫu nội thất sang trọng nhà chị Hương nhé!</p>\n\n<p><strong>Thiết kế nội thất phòng khách</strong></p>\n\n<p>Căn nhà chị Hương tọa lạc trên mảnh đất rộng khoảng 90m<sup>2</sup>&nbsp;ở Thái Bình. Khi bước vào nhà, quý khách bị choáng ngợp bởi nội thất phòng khách sang trọng.&nbsp;Khi thiết kế nội thất theo phong cách tân cổ điển các kiến trúc sư thường chú ý đến tỷ lệ vàng khi ngăn chia các ô, mảng.&nbsp;Những chi tiết trang trí đặc trưng của phong cách tân cổ điển được nhấn nhá tại vị trí nhỏ như chân bàn, chân ghế. Màu sắc nội thất hài hòa, cùng gam màu của sơn tường là màu trung tính – trắng và vàng làm căn phòng toát lên vẻ sang trọng quý phái.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-noi-that-tan-co-nha-pho-chi-huong-21.jpg\" /></p>\n\n<p>Chiếc bàn được thiết kế đơn giản mà tinh tế cùng chiếc ghế bọc đệm mút êm ái sẽ giúp các thành viên cảm thấy thoải mái, dễ chịu hơn khi sử dụng. Họa tiết hoa văn trên sàn nhà, tường, trần nhà được thiết kế tỉ mỉ tạo không gian sang trọng, quý phái cho căn nhà</p>\n\n<p>Ngoài ra, phòng khách được đặt thêm một chiếc đàn Piano tạo vẻ quý tộc, vương giả cho căn nhà</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-noi-that-tan-co-nha-pho-chi-huong-41.jpg\" /></p>\n\n<p><strong>Thiết kế nội thất phòng ngủ</strong></p>\n\n<p>Phòng ngủ trong căn nhà được chị Hương&nbsp;quan tâm hàng đầu. Chị muốn căn phòng tĩnh lặng, êm ái, thoáng mát.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-noi-that-tan-co-nha-pho-chi-huong-51.jpg\" /></p>\n\n<p>Căn phòng luôn ngập tràn ánh sang, từng chi tiết trên tường, sành nhà , trần nhà đều được kiến trúc sư tỉ mỉ để mắt đến. Tông màu chủ đạo của cả căn phòng là màu trắng - vàng đầy tinh tế và sang trọng</p>\n\n<p>Phòng ngủ con được thiết kế với tông màu trắng- xám. Tường vân đá cùng màu sơn làm cho căn phòng sáng hơn. Kiến trúc sư đã sử dụng đèn âm trần giúp căn phòng cơi nới hơn</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-noi-that-tan-co-nha-pho-chi-huong-11.png\" /></p>\n\n<p>Trên đây là căn hộ tại Thái Bình&nbsp;được thiết kế nội thất&nbsp;bởi Kiến trúc sư Gemi Home đã mang đến cho gia chủ một không gian sống đẳng cấp. Bạn đang cần thiết kế nội thất riêng cho căn hộ của mình hãy liên hệ ngay đến chúng tôi để được tư vấn trực tiếp.</p>\n\n<p>&nbsp;</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-noi-that-tan-co-nha-pho-chi-huong-timline1.png', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI HƯƠNG - THÁI BÌNH', 'thiet-ke-noi-that-tan-co-nha-pho-chi-huong-timline1', 0, 0, 0, 0, 0, 0, 80, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-nha-chi-huong', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI HƯƠNG ', '', '', 76, '', 13, 17, 18, 22, '2020-01-22 15:09:25', 1, 1, '2020-02-12 09:27:13', ''),
(220, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HA', '', '', '<p>Lựa chọn thiết kế nội thất phong cách Tân cổ điển mang đến sự sang trọng, đẳng cấp, thể hiện được vị thế của chủ nhà. Anh Hà - doanh nhân đã yêu cầu đội ngũ kiến trúc sư của Gemi Home thiết kế phòng khách và phòng bếp theo phong cách Tân cổ điển</p>\n', '', '', '', '', '', '<p>Phong cách Tân cổ điển được lòng của các vị đại gia là bởi nó là biểu tượng đỉnh cao của sang trọng, đẳng cấp. Đó cũng là điểm đặc biệt để phân biệt phong cách Châu Âu này với tân cổ điển và hiện đại. Thăm quan mẫu nội thất dưới đây, quý vị sẽ cảm nhận được vẻ vương giả quý tộc mà Gemi Home đã thiết kế cho căn nhà của anh Hà</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế phòng khách</span></strong></p>\n\n<p>Phòng khách là bộ mặt của cả căn nhà vì vậy anh Hà đã đưa ra tiêu chí vừa đơn giản nhưng phải sang trọng, tiện nghi. Căn phòng hứng trọn ánh sáng mặt trời, gam màu chủ đạo của căn phòng là màu nâu và màu beige mang đến vẻ đẹp ám áp đồng thời đây cũng là màu sắc thể hiện quyền lực</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-noi-that-a-ha-phong-khach-1.jpg\" /></p>\n\n<p>Phòng khách được thiết kế với bộ ghế sofa lớn theo phong cách châu Âu tạo nên một không gian nội thất mang đậm chất vương giả. Trần thạch cao với chi tiết kì công kết hợp với bộ đèn trần tăng nét đẳng cấp cho căn nhà.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng bếp</span></strong></p>\n\n<p>Không gian bếp được thiết kê rộng rãi với 2 màu nâu – trắng làm cho gian bếp hài hòa, màu nâu tạo không gian ấm áp, màu trắng làm cho căn bếp sạch sẽ, thoáng mát. Điều chủ nhà thích thú nhất ở căn bếp là tủ đựng rượu. Điểm nhấn của tủ là những thiết kế dạng hình thoi đan xen, tuy đơn giản nhưng đẹp mắt, toát lên sự hiện đại, sang trọng.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-noi-that-a-ha-phong-khach-bep.jpg\" /></p>\n\n<p>Bàn ăn được đặt ngay trong gian bếp, với 12 chỗ ngồi trang trọng, lịch sự. Bàn ăn vừa mang nét hiện đại, vừa mang nét cổ điển, cùng với đèn chùm lãng mạn&nbsp;làm gian phòng như bữa tiệc hoàng gia.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-noi-that-a-ha-phong-bep-3.jpg\" /></p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-noi-that-a-ha-phong-khach-bep-1.jpg\" /></p>\n\n<p>Đây là một trong những mẫu thiết kế nội thất cao cấp của Gemi Home được đánh giá cao về chuyên môn, chất lượng, tính thẩm mĩ và công năng sử dụng. Quý khách có nhu cầu thiết kế – thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn chúng tôi sẽ giúp quý vị kiến tạo, xây dựng ước mơ đó.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-noi-that-a-ha-phong-khach.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HA', 'thiet-ke-noi-that-a-ha-phong-khach', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-a-ha', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HA', '', '', 76, '', 10, 17, 16, 21, '2020-01-22 15:17:14', 1, 1, '2020-02-12 10:23:01', ''),
(221, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HẢI', '', '', '<p>Sở hữu căn hộ gần&nbsp;90m<sup>2&nbsp;</sup>tại chung cư Ngoại giao đoàn, anh Hải muốn thiết kế nội thất vừa nét truyền thống nhưng&nbsp;cũng tinh tế, đẳng cấp. Trước yêu cầu đó, Gemi Home đã thiết kế toàn bộ nội thất bằng gỗ theo phong cách Á Đông.</p>\n\n<p><sup>&nbsp;</sup></p>\n', '', '', '', '', '', '<p>Đem lại sự sang trọng và đẳng cấp cho căn nhà của mình là mơ ước của rất nhiều người và một trong những giải pháp hiện thực hóa ước mơ đó chính là sử dụng đồ nội thất gỗ. nếu bạn là người truyền thống, yêu thích sự đơn giản thì bạn sẽ không thể rời mắt khỏi bộ nội thất của nhà anh Hải tại trong căn hộ 90m<sup>2</sup>&nbsp;.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Phòng khách là nơi thể hiện đẳng cấp và khiếu thẩm mỹ của gia chủ. Vì vậy, đồ nội thất gỗ trong phòng khách thường được thiết kế tinh xảo, cầu kì hơn những phòng khác. Gia chủ là người ưa thích phong cách Á Đông, đồ gỗ theo phong cách&nbsp; nầy thường có sự xuất hiện của những chi tiết non nước cây cỏ theo mùa, long lân quy phượng… với màu trầm, nhã. Chất liệu sử dụng nội thất bằng gỗ tự nhiên truyền thống như gỗ gụ, gỗ lim, gỗ hương… Theo phong cách này, không gian phòng khách sẽ được khoác lên vẻ cổ điển, truyền thống và thâm trầm, rất phù hợp với gia chủ là người đứng tuổi và có vị trí nhất định trong gia đình xã hội.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-va-thi-cong-noi-that-a-hai-phong-khach-1.jpg\" /></p>\n\n<p>Tủ trang trí được thiết kế với tủ đựng rượu càng khiến cho không gian sang trọng, vừa tối ưu khoảng không gian nhỏ hẹp.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất nhà bếp</span></strong></p>\n\n<p>Bếp ăn là nơi sum họp của cả gia đình sau một ngày làm việc và học tập bận rộn. Để phòng bếp thêm ấm cúng thì nội thất bằng gỗ luôn là lựa chọn hàng đầu. Màu sắc trầm ấm của gỗ luôn làm nên vẻ sang trọng cho mọi căn phòng, chưa kể thiết bị gỗ rất phù hợp với gian bếp bởi đây là chất liệu dễ lau chùi, bền và có độ ổn định cao khi gặp nước. các thiết bị điện đã được chúng tôi tối ưu giúp căn bếp gọn gàng, rộng rãi.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-va-thi-cong-noi-that-a-hai-phong-bep.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-va-thi-cong-noi-that-a-hai-phong-khach.jpg\" /></p>\n\n<p>Bàn ăn và tường sơn được lựa chọn là màu trắng, dễ lau chùi&nbsp; giúp cho phòng bếp thoáng mát, sạch sẽ hơn</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Thiết kế nội thất cho phòng ngủ chưa bao giờ kém ấn tượng với đồ gỗ nội thất. Từ giường ngủ, kệ đầu giường, kệ ti vi, cửa sổ, cửa phòng… đều phù hợp với chất liệu gỗ. Căn phòng được thiết kế với 2 màu chủ đạo là nâu – trắng tạo sự đầm ấm, bình yên cho căn phòng.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-va-thi-cong-noi-that-a-hai-phong-ngu-2.jpg\" /><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-va-thi-cong-noi-that-a-hai-phong-ngu-thumline.jpg\" /></p>\n\n<p>Bàn làm việc cũng được đặt ngay trong phòng ngủ, hứng trọn ánh sáng tự nhiên giúp gia chủ tập trung, hứng khởi với công việc.</p>\n\n<p>Trên đây là mẫu thiết kế mang chất truyền thống của người Việt Nam, nhẹ nhàng bình dị nhưng sang trọng đẳng cấp. Quý khách có nhu cầu thiết kế – thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn Gemi Home sẽ giúp quý vị kiến tạo, xây dựng ước mơ đó.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-hai-phong-ngu-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HẢI', 'thiet-ke-va-thi-cong-noi-that-a-hai-phong-ngu-thumline', 0, 0, 0, 0, 0, 0, 65, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-a-hai', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HẢI', '', '', 76, '', 15, 15, 18, 21, '2020-01-22 15:25:14', 1, 1, '2020-02-12 10:24:10', ''),
(222, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A KHANG', '', '', '<p>Sở hữu căn chung cư với diện tích khiêm tốn, cũng như bao người khác, anh Khang băn khoăn về cách bố trí nội thất sao cho gọn gàng nhưng phải tiện nghi.&nbsp;Hiểu được băn khoăn đó, đội ngũ kiến trúc sư của Gemi Home đã thiết kế nội thất nhà anh theo phong cách hiện đại nhưng thoáng mát.</p>\n', '', '', '', '', '', '<p>Tại các thành phố đất chật người đông, những căn hộ nhỏ xinh có diện tích khiêm tốn đang là sự lựa chọn của nhiều gia đình trẻ. Chính vì vậy, thiết kế nội thất chung cư diện tích nhỏ sao cho hợp lý mà vẫn đảm bảo được công năng sử dụng là vấn đề mà nhiều người quan tâm hiện nay. Gemi Home đã nhận thiết kế chung cư nhà anh Khang với diện tích hơn 60m2.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng khách </span></strong></p>\n\n<p>Tone màu mà anh Khang sử dụng trong cả căn nhà chủ yếu là màu vàng kem – trắng tạo không gian cho căn nhà. Phòng khách đặt ngay cạnh khu vực ban công giúp căn nhà luôn ngập tràn ánh sáng.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-noi-that-a-khang-phong-khach-3.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p>Do căn phòng có diện tích nhỏ nên một chiếc sofa nỉ màu vàng kem giúp cả nhà quây quần sau ngày làm việc mệt mỏi</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng bếp </span></strong></p>\n\n<p>Bên thiết kế của Gemi Home không sử dụng vách ngắn giữa phòng khách và phòng ăn để tiết kiệm không gian và giups&nbsp;cho căn nhà không bị tù túng. Tủ bếp được thiết kế nhỏ gọn, tiện lợi phù hợp không gian chật hẹp. bàn ăn được đặt ngay cạnh đó, cùng với khu để cây cảnh tạo không gian sống xanh, trong lành, mát mẻ.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-noi-that-a-khang-phong-bep.jpg\" /></p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-noi-that-a-khang-phong-khach-2.jpg\" /></p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ </span></strong></p>\n\n<p>Phòng ngủ được thiết kế đầy đủ tiện nghi, có cửa sổ để đón nắng, tràn đầy sức sống.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-noi-that-a-khang-thumline.jpg\" />Là người yêu thiên nhiên, vợ anh Khanh tự tay trồng và chăm sóc cây, hoa trong chính phòng ngủ để tạo không gian thoải mái, thư giãn.</p>\n\n<p>Đây là một trong những mẫu thiết kế nội thất cao cấp của Gemi Home được đánh giá cao về chuyên môn, chất lượng, tính thẩm mĩ và công năng sử dụng. Quý khách có nhu cầu thiết kế – thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn chúng tôi sẽ giúp quý vị kiến tạo, xây dựng ước mơ đó.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-noi-that-a-khang-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A KHANG', 'thiet-ke-noi-that-a-khang-thumline', 0, 0, 0, 0, 0, 0, 100, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-a-khang', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A KHANG ', '', '', 76, '', 13, 16, 16, 21, '2020-01-25 13:30:54', 1, 1, '2020-02-12 10:25:01', ''),
(223, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HÀO', '', '', '<p>Là người yêu thích không gian sống thoải mái, thoáng mát, anh Hào đã chọn cho mình căn nhà phố hiện đại, tiện nghi. Toàn bộ nội thất trong căn nhà làm bằng vật liệu cao cấp tôn lên vẻ đẳng cấp, sang trọng của căn nhà.</p>\n\n<p>&nbsp;</p>\n', '', '', '', '', '', '<p>Thiết kế nội thất nhà anh Hào đã khoác lên cho căn nhà một bộ cánh lộng lẫy và nổi bật. Các kiến trúc sư đã sử dụng&nbsp;tone màu trung tính mang lại cho không gian nội thất sự rộng rãi và thông thoáng nhất. Căn hộ mang đậm dấu ấn cá nhân của những con người trẻ hiện đại và ghi dấu hơi thở của cuộc sống.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Đây không chỉ là không gian tiếp khách mà còn là không gian sinh hoạt chung của gia đình. Thiết kế nội thất là sự kết hợp hoàn hảo giữa ánh sáng và màu sắc mang tới cho khách hàng một không gian tinh tế, đẹp mắt.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-noi-that-a-hao-phong-khach-1.jpg\" /></p>\n\n<p>Anh Hào muốn sử dụng toàn bộ hệ thống cửa kính trong phòng khách để tận dụng tối đa nguồn ánh sáng tự nhiên. Ánh sáng không chỉ mang lại sức khỏe tốt cho con người mà còn giúp nâng tầm giá trị vẻ đẹp của nội thất. Cầu thang được xây dựng ngay cạnh phòng khách với thiết kế có phần cổ điển giúp cho không gian sang trọng.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng bếp </span></strong></p>\n\n<p>Vách ngăn giữa phòng bếp và nhà ăn là kệ trang trí kết hợp với tủ đựng rượu, vừa tiết kiệm không gian vừa tiện lợi. Phòng bếp và phòng ăn chung một không gian. Nội thất bếp vẫn giữ tone màu nâu của đồ nội thất đã được lựa chọn kĩ càng. Sử dụng đèn thả trần thủy tinh giúp cho không gian không những sáng mà còn tăng tính thẩm mỹ cho không gian sinh hoạt chung của gia đình.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-noi-that-a-hao-phong-bep.jpg\" /></p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-noi-that-a-hao-phong-bep-1.jpg\" /></p>\n\n<p>Thiết kế nội thất phòng ăn hiện đại, sang trọng. Hệ tủ trang trí kết hợp vách ốp gương, tạo cảm giác cơi nới không gian. Hệ tủ trang trí có sử dụng đèn hắt ánh sáng vàng, ngăn chia tủ hợp lý.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ </span></strong></p>\n\n<p>Thiết kế nội thất phòng đơn giản, hiện đại nhưng đầy tinh tế. Thiết kế nội thất tiết chế sử dụng các vách ốp cầu kì, thay vào đó sử dụng vật liệu trang trí nhẹ nhàng giấy dán tường và treo tranh tiết kiệm chi phí và vẫn đảm bảo yếu tố thẩm mỹ. Kệ ti vi treo tường giản đơn kết hợp tủ trang trí độc đáo lại tiết kiệm không gian.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng tắm</span></strong></p>\n\n<p>Bồn cầu toilet là chất liệu sứ cao cấp, đá lát tường, sàn nhà tắm là loại đá vân xám sang trọng,&nbsp; vòi sen tắm, vòi chậu inox&nbsp; đẳng cấp, tủ đựng khăn tắm nhỏ gọn, tiện lợi.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-noi-that-a-hao-phong-ve-sinh.jpg\" style=\"width: 1292px; height: 862px;\" /></p>\n\n<p>&nbsp;Đây là một trong những mẫu thiết kế nội thất cao cấp của Gemi Home được đánh giá cao về chuyên môn, chất lượng, tính thẩm mĩ và công năng sử dụng. Quý khách có nhu cầu thiết kế – thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn chúng tôi sẽ giúp quý vị kiến tạo, xây dựng ước mơ đó.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-noi-that-a-hao-phong-khach-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HÀO', 'thiet-ke-noi-that-a-hao-phong-khach-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-a-hao', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A HÀO', '', '', 76, '', 15, 16, 18, 22, '2020-01-25 13:41:41', 1, 1, '2020-02-12 10:26:05', ''),
(224, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A PHÚC', '', '', '<p>Với diện tích nhà vừa phải khách hàng là người trẻ tuổi thành đạt nên gia chủ đã chọn phong cách thiết kế hiện đại. Tông màu trắng&nbsp;đã mang lại cảm giác ngôi nhà sang trọng, đẳng cấp.</p>\n\n<p>&nbsp;</p>\n', '', '', '', '', '', '<p>Khu đô thị chung cư Vinaconex 3 gần các khu vực trọng điểm cùng với đó là những hệ thống tiện ích. Anh Phúc – chủ sở hữu căn nhà tại tòa CT1 muốn thiết kế nội thất hiện đại, tiện nghi. Dựa theo kết cấu mặt bằng căn hộ cũng như sở thích của gia đình anh, đội ngũ KTS Gemi Home đã tạo nên bản vẽ thiết kế cho căn hộ. Cùng tham khảo hình ảnh của mẫu thiết kế nội thất chung cư Vinacomex 3 Trung Văn này nhé!</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Với diện tích không quá lớn đồ nội thất được chọn có kích thước vừa phải với mẫu mã đơn giản, hiện đại. Không gian phòng khách được thiết kế liên thông với khu vực bếp của căn hộ. Vừa góp phần mở rộng diện tích vừa tạo nên sự thuận tiện linh hoạt cho mọi hoạt động của các thành viên. Tại khu vực này, các KTS không hề sử dụng vách ngăn nhưng ta vẫn thấy được sự phân tách từng không gian. Mảng tường cùng tone màu sắc tạo nên sự liên kết. Cùng với đó là hệ thống đèn chiếu sáng độc đáo kết hợp đèn trần, đèn thả cùng với đèn đứng ở cạnh sofa. Nhiều dáng đèn là thế nhưng không tạo sự rối mắt. Ngược lại ta lại thấy được sự hài hòa, cân đối.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-a-phuc-1.jpg\" /></p>\n\n<p>Bộ ghế sofa phòng khách đơn giản mang màu sắc nhẹ nhàng, ấn tượng kết hợp cùng bàn trà&nbsp;tam giác nhỏ. Sự lựa chọn này cân đối với tổng thể không gian phòng khách.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng bếp</span></strong>&nbsp;</p>\n\n<p>Phòng khách liên thông với bếp ăn, việc làm này tạo nên sự kết nối, liền mạch trong không gian. Khu bếp nấu được thiết kế với tông màu trắng chủ đạo. Một màu sắc được sử dụng nhiều tại mẫu thiết kế nội thất chung cư Vinaconex 3 của gia đình anh Phúc.&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-a-phuc-5.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-a-phuc-4.jpg\" /></p>\n\n<p>Mọi trang thiết bị hiện đại được bố trí gọn gàng khoa học, giúp việc chế biến, nấu nướng trở nên thuận tiện, dễ dàng hơn.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Sự đơn giản, hiện đại được thể hiện qua đồ dùng nội thất và cách bố trí đồ dùng. Đồ nội thất tại đây nhỏ gọn những vẫn đáp ứng nhu cầu nghỉ ngơi của người sử dụng.&nbsp; Hệ thống cửa kính lớn lấy được nguồn ánh sáng tự nhiên mang tới sự thoải mái cho gia chủ.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-a-phuc-7.jpg\" /></p>\n\n<p>Trên đây là mẫu thiết kế danh cho người yêu thích sự đơn giản, nhưng vô cùng tinh tế hiện đại.&nbsp;Quý khách có nhu cầu thiết kế – thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn Gemi Home sẽ giúp quý vị kiến tạo, xây dựng ước mơ đó.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-phuc-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A PHÚC', 'thiet-ke-va-thi-cong-noi-that-a-phuc-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-a-phuc', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A PHÚC', '', '', 76, '', 10, 15, 18, 21, '2020-01-25 13:53:34', 1, 1, '2020-02-12 10:27:23', ''),
(225, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THẮNG', '', '', '<p>Với diện tích nhà vừa phải khách hàng là người trẻ tuổi thành đạt nên gia chủ đã chọn phong cách thiết kế hiện đại. Tông màu xám và da bò đã mang lại cảm giác ngôi nhà ấm cúng nhưng không kém phần sang trọng&nbsp;</p>\n', '', '', '', '', '', '<p>Gia đình anh Thắng&nbsp;sở&nbsp;hữu căn hộ chung cư có diện tích hơn 70m<sup>2</sup>&nbsp;tại chung cư Green Stars, quận Bắc Từ Liêm, Hà Nội. Gia đình anh mong muốn sở hữu không gian nội thất tiện nghi,ấm cúng song không kém phần sang trọng. Với những yêu cầu mà gia đình anh Thắng&nbsp;đặt ra kết hợp với diện tích thực tế của phòng khách Kiến trúc sư của Gemi Home Việt Nam&nbsp;đưa ra phương án thiết kế nội thất phòng khách chung cư đẹp cho căn hộ của gia đình anh Thắng.&nbsp;</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Phòng khách được đặt&nbsp;ngay cạnh ban công, giúp không gian chở nên thoáng đãng và sáng sủa. Toàn bộ vật dụng như sofa, bàn&nbsp;được thiết kế với gam màu trắng - da bò. Thêm vào đó, sàn gỗ cũng được gia chủ lựa chọn là gam màu sáng&nbsp;để tăng thêm ánh sáng cho không gian. Căn phòng tuy không quá rộng nhưng với cách thiết kế đồ nội thất đơn giản. Những chậu cây khá nhỏ nhưng vẫn đủ mang đến nét đẹp tự nhiên cùng sắc độ tươi tắn đến cho không gian.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-va-thi-cong-noi-that-a-thang-thumline.jpg\" /></p>\n\n<p>Kệ trang&nbsp;được sử dụng chất liệu gỗ tự nhiên với 5 tầng&nbsp;khiến không gian vừa độc đáo và vô cùng tinh tế, dùng để cho gia chủ trang trí những vật dụng cần thiết cho gia chủ.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-va-thi-cong-noi-that-a-thang-1.jpg\" /><strong><span style=\"font-size: 20px;\">Thiết kế nội thất phòng ăn</span></strong></p>\n\n<p>Phòng bếp&nbsp;được đặt ngay cạnh không gian chính nối liền phòng khách, tạo sự thuận tiện giúp gia chủ cho việc nấu nướng và sinh hoạt hàng ngày.&nbsp;Toàn bộ thiết kế phòng bếp với tông màu da bò&nbsp;toát lên vẻ ấm cúng. Cách lựa chọn màu sắc này tạo không khí đầm ấm, gắn kết cho gia chủ</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-va-thi-cong-noi-that-a-thang-8.jpg\" /></p>\n\n<p>Thiết kế đèn treo kết hợp với gương giúp phòng ăn tươi sáng và rộng rãi hơn trong một không gian hẹp. Bên cạnh đó, tủ bếp sử dụng gam màu tương ứng với không gian phòng ăn tạo nên vừa tạo nên sự hòa đồng thời giúp cho căn phòng mang hơi hướng cổ điển sang trọng.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ </span></strong></p>\n\n<p>Không gian phòng ngủ Master – phòng ngủ chính trong căn hộ cũng được thiết kế với tone màu trung tính. Những tone màu này có khả năng mang tới cảm giác thoải mái, thư giãn nên rất lý tưởng dành để trang trí không gian nội thất phòng ngủ hiện đại.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-va-thi-cong-noi-that-a-thang-5.jpg\" /></p>\n\n<p>Góc làm việc được tận dụng ngay trong chính phòng ngủ với ánh sáng tự nhiên vừa yên tĩnh vừa tạo cảm hứng cho gia chủ.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-va-thi-cong-noi-that-a-thang-4.jpg\" /></p>\n\n<p>Phòng ngủ con&nbsp;được thiết kế bởi sự pha trộn có chút yên tĩnh, có chút cá tính thông qua màu sắc và nội thất bên trong.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-va-thi-cong-noi-that-a-thang-7.jpg\" /></p>\n\n<p>Gỗ là nguyên liệu được lát nền ở khắp không gian nhà cũng như phòng ngủ tạo sự mát mẻ yên tĩnh vào mùa hè, và ấm áp khi đông đến. Những bức tranh trên nền tường xám không ngừng giúp căn phòng trở nên nổi bật, đáng yêu hơn hẳn.&nbsp;</p>\n\n<p>Công trình nằm trong dự án thiết kế nội thất cao cấp điển hình nhất mà Gemi Home Việt Nam&nbsp;thực hiện được khách hàng và đồng nghiệp đánh giá cao về chuyên môn, chất lượng, tính thẩm mĩ và công năng sử dụng. Quý khách có nhu cầu thiết kế – thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn chúng tôi sẽ giúp quý vị kiến tạo, xây dựng ước mơ đó.</p>\n\n<p>&nbsp;</p>\n\n<div id=\"gtx-trans\" style=\"position: absolute; left: 801px; top: 1601.35px;\">\n<div class=\"gtx-trans-icon\">&nbsp;</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thang-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THẮNG', 'thiet-ke-va-thi-cong-noi-that-a-thang-thumline', 0, 0, 0, 0, 0, 0, 80, '', 998, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-a-thang', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THẮNG', 'thiet ke noi that, thiết kế nội thất', 'Với diện tích nhà vừa phải khách hàng là người trẻ tuổi thành đạt nên gia chủ đã chọn phong cách thiết kế hiện đại. Tông màu xám và da bò đã mang lại cảm giác ngôi nhà ấm cúng nhưng không kém phần sang trọng ', 76, '', 15, 16, 18, 22, '2020-01-25 14:03:00', 1, 1, '2020-02-14 09:02:51', ''),
(226, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THANH', '', '', '<p>Phong cách Á Đông là sự kết hợp của gam màu nhã nhặn với món nội thất nổi bật đã tạo nên thiết kế nội thất ngôi nhà anh Thanh sang trọng. Họa tiết được thiết kế cầu kì, tỉ mỉ tạo ra sản phẩm hoàn hảo.</p>\n\n<p>&nbsp;</p>\n', '', '', '', '', '', '<p>Thiết kế nội thất mang phong cách Á Đông là một khái niệm còn khá mới mẻ đối với nhiều người bởi những đặc trưng rất riêng mà chỉ những tín đồ của nền văn hóa phương Đông mới có thể cảm nhận và yêu thích được. Là người yêu thích và hay tìm hiểu về nền văn hóa phương Đông, anh Thanh có yêu cầu thiết kế toàn bộ nội thất trong nhà 100 m2 theo phong cách á Đông. Hãy cùng Gemi Home ngắm nhìn nội thất sang trọng, tinh tế cả nhà anh Thanh nhé!</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng khách </span></strong></p>\n\n<p>Gam màu chủ đạo trong những ngôi nhà mang phong cách Á Đông sẽ là màu nhẹ, nhạt, nhã nhặn, sau đó mới điểm xuyết những chi tiết hoặc những món đồ nội thất với tông màu nổi bật như đỏ, nâu hay đen… khéo léo pha trộn thật hài hòa để mang đến nét đẹp độc đáo, ấn tượng cho không gian. Đồ nội thất được sử dụng trong phong cách Á Đông thường có kiểu dáng đơn giản, mộc mạc, phổ biến tuy nhiên lại rất tinh tế. Mục đích chủ yếu là hướng đến công năng sử dụng và mang đến cho chủ nhà một cuộc sống tiện nghi và thoải mái.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-noi-that-a-thanh-21.jpg\" /></p>\n\n<p>Từ những góc cạnh của đồ vật được trạm trổ tinh xảo, hoa văn bắt mắt, hay những đường nét mềm mại mà cũng có thể chỉ là màu của nước sơn được sử dụng. Tất cả đã tạo nên một không gian được ví như 1 bức tranh với tính nghệ thuật cao.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng bếp </span></strong></p>\n\n<p>Khu vực phòng bếp được thiết kế hiện đại với một bức vách nhỏ ngăn cách không gian. Phía bên trong là không gian nấu nướng rộng rãi kết hợp cùng một bàn ăn sang trọng. Thiết kế bếp theo hình chữ L đầy đủ tiện nghi. Bếp nấu và chậu rửa chỉ cách nhau một khoảng vừa đủ để người nấu nướng chỉ cần xoay người. Bàn ăn được khéo léo tích hợp trong căn phòng với 8 chỗ ngồi sang trọng. Bộ bàn ghế được làm từ khung kim loại và gỗ công nghiệp trên bề mặt nhưng đủ để toát lên vẻ đẹp ấn tượng.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-noi-that-a-thanh-3.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-noi-that-a-thanh-1.jpg\" /></p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Phòng&nbsp;ngủ hứng trọn ánh sáng tự nhiên nhờ hệ thống của kinh lớn tạo không gian thoáng đãng. Tủ quần áo được thiết kế âm tường giúp tiết kiệm không gian.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-noi-that-a-thanh-4.jpg\" /></p>\n\n<p>Bức tranh treo tường làm nổi bật không gian phòng ngủ, tính nghệ thuật làm dịu đi những đường nét dứt khoát và mạnh mẽ của phong cách thiết kế nội thất hiện đại này.</p>\n\n<p>Trên đây là mẫu thiết kế mang chất truyền thống của người Á Đông, hài hòa, nhã nhặn, giản dị, đẳng cấp. Quý khách có nhu cầu thiết kế – thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn Gemi Home sẽ giúp quý vị kiến tạo, xây dựng ước mơ đó.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-noi-that-nha-a-thanh-thumline1.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THANH', 'thiet-ke-noi-that-nha-a-thanh-thumline1', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-a-thanh', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THANH ', '', '', 76, '', 15, 15, 18, 22, '2020-02-07 03:53:27', 1, 1, '2020-02-12 10:27:59', ''),
(227, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A THIỆN', '', '', '<p>Gia chủ mệnh Kim hợp với màu kim loại nên Gemi Home đã toàn bộ thiết kế căn nhà theo tông màu chủ đạo là trắng - vàng. Căn nhà được thiết kế theo phong cách hiện đại đầy tinh tế và sang trọng.</p>\n', '', '', '', '', '', '<p>Với các thiết kế nội thất nhà phố, chúng ta cần phải đặc biệt chú ý đến diện tích sử dụng, từ đó dễ dàng lựa chọn phong cách thiết kế nội thất phù hợp mang lại cảm giác hài hòa, thoải mái cho gia chủ. Đối với các căn nhà có diện tích rộng rãi, nhiều mặt thoáng, phong cách thiết kế sử dụng nhiều đường cong mềm mại hay cầu kỳ một chút có thể là lựa chọn khá phù hợp mang đến cho gia chủ cảm giác thoải mái, an nhiên.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Kiến trúc sư lựa chọn phong cách thiết kế hiện đại, sử dụng hầu hết là các đường nét và hình khối đơn giản, không cầu kỳ hay phô trương về màu sắc hay sử dụng các đường cong làm chủ đạo. Kiến trúc sư mang đến cho gia chủ một không gian sống ấn tượng mang phong cách trẻ trung, hiện đại. Về việc sử dụng màu sắc, nền tảng của phong cách hiện đại chắc chắn là những gam màu trung tính như trắng, be, nâu, đen… Phối màu theo tone màu này cho phép nhấn mạnh vào các hình khối và đường nét của những đồ đạc được kết hợp.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-a-thien-7.jpg\" /></p>\n\n<p>Thiết kế nội thất phòng khách hiện đại đơn giản, nhẹ nhàng mang đến cho gia chủ cảm giác dễ chịu và thu hút. Bộ sofa được lựa chọn cho tone màu nâu đen, thiết kế đơn giản, không cầu kỳ trong kiểu dáng nhưng gợi mở một không gian thiết kế hiện đại, trẻ trung. Thiết kế rộng rãi, đơn giản mang đến cảm giác an toàn, vững chắc cho thiết kế.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-a-thien-5.jpg\" /></p>\n\n<p>Điểm nhấn của không gian này chính là ánh sáng, ánh sáng bao trùm toàn bộ gian phòng nhờ hệ thống cửa kính lớn. Các thiết kế tủ kệ cũng đặc biệt không cầu kỳ, sử dụng các thanh ngang cố định, đơn giản, vừa tiết kiệm diện tích lại đảm bảo tính công năng cho thiết kế.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng bếp </span></strong></p>\n\n<p>Tiếp theo là thiết kế nội thất không gian bếp và phòng ăn hiện đại. Điểm đặc biệt nổi bật ở thiết kế này là sự kết hợp khéo léo giữa ánh sáng và màu sắc. Ánh sáng tự nhiên và nhân tạo được kết hợp hài hòa, cân bằng mang đến vẻ đẹp ấm áp và gần gũi cho không gian.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-a-thien-1.jpg\" /></p>\n\n<p>Thiết kế bộ tủ bếp gọn gàng, không quá nhấn mạnh đến các chi tiết trang trí cầu kỳ mà thay vào đó là sự tiện nghi, cách sắp xếp khéo léo vừa đảm bảo tính công năng lại không làm mất quá nhiều diện tích. Bên cạnh đó, thiết kế này có độ bóng thích hợp góp phần tạo độ phản chiếu vừa phải cho không gian. Đèn chùm thiết kế kiểu dáng ấn tượng, bóng tròn kích cỡ khác nhau khá thu hút, đóng vai trò tạo sự ấn tượng cho không gian bếp.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế phòng ngủ </span></strong></p>\n\n<p>Thiết kế nội thất phòng ngủ hiện đại sử dụng tone màu trung tính&nbsp;làm chủ đạo, với sắc nâu sàn gỗ ấm áp, kiến trúc sư dễ dàng mang đến cho gia chủ một không gian sống dễ chịu, giúp gợi mở không gian sinh hoạt an nhiên, gần gũi. Ánh sáng tự nhiên vấn được bố trí hợp lý nhằm mang lại hứng khởi cho gia chủ.</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-va-thi-cong-noi-that-a-thien-3.jpg\" /><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-a-thien-4.jpg\" /></p>\n\n<div class=\"du-an-node-detail items\" helvetica=\"\" neue=\"\" style=\"box-sizing: border-box; float: left; width: 876px; margin-right: 5px; color: rgb(51, 51, 51); font-family: \">\n<div class=\"noi-dung\" style=\"box-sizing: border-box; padding: 5px;\">\n<p style=\"box-sizing: border-box; margin: 0px 0px 10px;\">Trên đây là mẫu thiết kế danh cho người yêu thích sự đơn giản, nhưng vô cùng tinh tế hiện đại.&nbsp;Quý khách có nhu cầu thiết kế – thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn Gemi Home sẽ giúp quý vị kiến tạo, xây dựng ước mơ đó.</p>\n\n<div>&nbsp;</div>\n</div>\n</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-thien-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A THIỆN', 'thiet-ke-va-thi-cong-noi-that-a-thien-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-nha-a-thien', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ A THIỆN ', '', '', 76, '', 13, 16, 18, 22, '2020-02-07 04:02:08', 1, 1, '2020-02-12 10:29:19', '');
INSERT INTO `products` (`ProductsID`, `SKU`, `Title`, `Title_en`, `Title_fr`, `Description`, `Description_en`, `Description_fr`, `Desc`, `Desc_en`, `Desc_fr`, `Body`, `Body_en`, `Body_fr`, `Body2`, `Body2_en`, `Body2_fr`, `Body3`, `Body3_en`, `Body3_fr`, `ImagePreset`, `ImageURL`, `ImageTitle`, `ImageAlt`, `IsNew`, `IsPromotion`, `IsSellers`, `IsHot`, `IsStock`, `ListPrice`, `SellPrice`, `Warranty`, `Orders`, `Publish`, `ShowPrice`, `Slug`, `Tags`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `CategoriesProductsID`, `SubCategoriesProductsID`, `SortingBrandID`, `SortingResID`, `SortingChannelID`, `SortingPriceID`, `CreatedDate`, `CreatedBy`, `ModifiedBy`, `ModifiedDate`, `Hightlight`) VALUES
(228, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THỌ', '', '', '<p>Là người vừa yêu thích phong cách&nbsp;hiện đại, vừa thích phong cách tân&nbsp;cổ&nbsp;điển sang trọng. Anh Thọ mong muốn căn hộ của minh có nét sang trọng của tân cổ điển vừa có sự tối giản, tinh tế của hiện đại. Gemi Home đã vạch ra phương án thiết kế kết hợp giữa tân cổ điển và hiện đại</p>\n', '', '', '', '', '', '<p>Sở hữu một căn hộ chung cư đẹp và đầy đủ tiện nghi luôn là điều mà mọi gia đình mong muốn. Vậy làm sao để&nbsp;thiết kế nhà chung cư 80m2&nbsp;vừa độc đáo, mới lạ lại tiện nghi cho gia chủ khi mà diện tích không mấy rộng rãi? Hãy cùng Gemi Home khám phá những bí quyết cũng như các mẫu&nbsp;thiết kế nhà chung cư 80m2&nbsp;với không gian sống được bố trí một cách thông minh, khéo léo trong căn hộ của anh Thọ&nbsp;trông sẽ như thế nào nhé!</p>\n\n<p><span style=\"font-size: 20px;\"><b>Thiết kế nội thất phòng khách</b></span></p>\n\n<p>Không gian phòng khách chung cư sang trọng và lịch lãm với bộ sofa cao cấp mang đậm màu sắc tân cổ điển. Thiết kế phòng khách liền bếp mang lại sự tiện lợi tối đa cho gia chủ.&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-nha-a-tho-5.jpg\" /></p>\n\n<p>Thiết kế có ban công giúp gia chủ tận dụng tối đa nguồn ánh áng tự nhiên, tiết kiệm điện năng, hưởng thụ không gian thoáng đãng với gió trời</p>\n\n<p><span style=\"font-size: 20px;\"><b>Thiết kế nội thất phòng bếp</b></span></p>\n\n<p>Căn bếp của thiết kế nội thất chung cư tân cổ điển này có diện tích không quá rộng rãi nhưng vẫn thật thoải mái bởi phong cách bài trí nội thất tinh tế và khoa học. Mọi đồ dùng nấu nướng vô cùng tiện nghi, hỗ trợ tối đa các bà nội trợ chuẩn bị những bữa ăn thật ngon cho gia đình.&nbsp;Màu trắng vốn là gam màu rất được chuộng trong thiết kế nội thất phòng bếp, bởi lẽ, màu trắng làm toát lên sự sạch sẽ và tươm tất của gian bếp, khiến người nội trợ có nhiều cảm hứng hơn trong công việc nấu nướng của mình.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-nha-a-tho-3.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-nha-a-tho-2.jpg\" /></p>\n\n<p>Phòng ăn mở ra nhiều yếu tố mới lạ từ thiết kế nội thất đến các chi tiết trang trí, bộ bàn ghê vô cùng hiện đại và tinh tế, màu sắc tinh khôi bắt mắt, thể hiện sự sang trọng hiện đại.</p>\n\n<p>Tủ bếp thiết kế thẳng, tạo mặt phẳng, không hề gò bó tạo khung, thiết kế này cũng được khéo léo ngăn cách với thiết kế bàn ăn bằng một kệ bếp nhỏ gọn giúp định hình rõ không gian, tạo sự rõ ràng trong thiết kế. Bộ bàn ăn được kiến trúc sư lựa chọn có diện tích vừa phải.</p>\n\n<p><span style=\"font-size:20px;\"><strong>Thiết kế nội thất phòng ngủ</strong></span></p>\n\n<p>Là không gian nghỉ ngơi của mỗi thành viên trong gia đình, phòng ngủ cần đảm bảo được yếu tố thoải mái và yên tĩnh. Ngoài ra, để thể hiện rõ phong cách, cá tính riêng của chủ nhân căn phòng, chúng ta sẽ thiết kế màu sắc, lựa chọn những sản phẩm nội thất phù hợp, mang tính thẩm mỹ cao.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-nha-a-tho.jpg\" /></p>\n\n<p helvetica=\"\" neue=\"\" style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: \">Trên đây là mẫu thiết kế danh cho người yêu thích sự đơn giản, nhưng vô cùng tinh tế hiện đại.&nbsp;Quý khách có nhu cầu thiết kế – thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn Gemi Home sẽ giúp quý vị kiến tạo, xây dựng ước mơ đó.</p>\n\n<div helvetica=\"\" neue=\"\" style=\"box-sizing: border-box; color: rgb(51, 51, 51); font-family: \">&nbsp;</div>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tho-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THỌ', 'thiet-ke-thi-cong-noi-that-nha-a-tho-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-a-tho', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A THỌ ', '', '', 76, '', 14, 17, 18, 22, '2020-02-07 04:30:17', 1, 1, '2020-02-12 10:29:56', ''),
(229, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TỰ', '', '', '<p>Anh Tự mong muốn nội thất trong căn nhà đơn giản nhưng tiện nghi, đặc biệt không rườm rà, phức tạp. Nắm bắt được mong muốn đó, Gemi Home thiết kế nội thất cho căn nhà của anh theo phong cách hiện đại.</p>\n', '', '', '', '', '', '<p>Thiết kế nội thất căn hộ vợ chồng anh Tự mang phong cách hiện đại, đơn giản mà sang trọng chính là điểm nhấn của căn hộ 2 phòng ngủ&nbsp;này. Cái đẹp không chỉ nằm ở sự nổi bật mà còn ở sự hài hòa bởi phong cách thiết kế. Bằng sự tinh tế, các kiến trúc sư đã vô cùng khéo léo khi thiết kế nội thất đẹp trong khắp các gian phòng giúp không gian căn nhà trở nên hiện đại và thoáng mát hơn.</p>\n\n<p><span style=\"font-size:20px;\"><strong>Thiết kế nội thất phòng khách </strong></span></p>\n\n<p>Thiết kế nội thất phòng khách hiện đại gợi mở không gian sống giản đơn, trẻ trung. Các tone màu được kiến trúc sư&nbsp;lựa chọn chủ yếu là các tone màu ấm áp như xám, nâu vàng từ gỗ. Tất cả những lựa chọn màu sắc này đều mang đến cảm giác dễ chịu cho gia chủ. Bộ sofa được lựa chọn có thiết kế đơn giản, độ rộng vừa phải, tone màu trắng xám mang đến cảm giác thoải mái và an toàn, không hề có ý tạo điểm nhấn về mặt thẩm mỹ mà hơn cả là gợi cảm giác hài hòa và cân bằng.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-nha-a-tu-2.jpg\" /></p>\n\n<p>Phòng khách và phòng ăn được bố trí trên cùng một không gian, một mặt sàn, với mục đích tạo cảm giác thông thoáng và không bí bách. Thiết kế Sofa đặt đối diện với kệ tivi, chiếc bàn chữ nhật với thiết kế ấn tượng thẳng góc với đèn chùm hiện đại tạo nên trục điểm nhấn đối xứng vòng tròn xoay quanh trụ chính đó.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-nha-a-tu-4.jpg\" /></p>\n\n<p><strong>Thiết kế nội thất phòng bếp</strong></p>\n\n<p>Căn bếp là trái tim của căn hộ, là nơi thống trị của bà nội trợ, và là nơi gắn kết các thành viên trong gia đình. Thiết kế căn bếp nhỏ xinh phù hợp với diện tích của căn hộ nhưng vẫn đảm bảo đầy đủ công năng hiện đại.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-nha-a-tu-7.jpg\" /></p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-nha-a-tu-5.jpg\" /></p>\n\n<p>Bàn ăn được đặt cùng không gian với phòng khách, thiết kế nhỏ gọn với 6 chỗ ngồi&nbsp;</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng&nbsp;ngủ Master</span></strong></p>\n\n<p>Thiết kế nội thất phòng ngủ master với gam màu trắng- nâu sáng mang lại cảm giác yên bình, thư thái. Phòng ngủ giúp gia chủ có được một giấc ngủ ngon, tái tạo sức lao động để bắt đầu một ngày làm việc mới.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-nha-a-tu-6.jpg\" />Một chiếc gương tròn giúp không gian của phòng ngủ như được mở rộng, tươi sáng</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng con</span></strong></p>\n\n<p>Phòng ngủ con được thiết kế cùng tone màu của cả căn hộ, bức tranh treo tường khiến căn phòng sinh động, cá tính hơn</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-nha-a-tu-3.jpg\" /></p>\n\n<p helvetica=\"\" neue=\"\" style=\"box-sizing: border-box; margin: 0px 0px 10px; color: rgb(51, 51, 51); font-family: \">Trên đây là mẫu thiết kế danh cho người yêu thích sự đơn giản, nhưng vô cùng tinh tế hiện đại.&nbsp;Quý khách có nhu cầu thiết kế – thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn Gemi Home sẽ giúp quý vị kiến tạo, xây dựng ước mơ đó.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-thi-cong-noi-that-nha-a-tu-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TỰ', 'thiet-ke-thi-cong-noi-that-nha-a-tu-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-a-tu', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TỰ ', '', '', 76, '', 10, 16, 18, 22, '2020-02-07 04:34:55', 1, 1, '2020-02-14 09:15:42', ''),
(230, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TƯƠNG', '', '', '<p>Anh Tương&nbsp;mong muốn nội thất trong căn nhà đơn giản nhưng tiện nghi, đặc biệt không rườm rà, phức tạp. Nắm bắt được mong muốn đó, Gemi Home thiết kế nội thất cho căn nhà của anh theo phong cách hiện đại</p>\n', '', '', '', '', '', '<p align=\"left\"><br />\nThiết kế nội thất nhà phố toát lên vẻ đẹp sang trọng, đẳng cấp, không gian nội thất cân bằng, hài hòa. Nội thất nhà phố lựa chọn phong cách hiện đại với sự tỉ mỉ chủ đáo, không gian nội thất đảm bảo tính thẩm mỹ và tính công năng của sản phẩm.</p>\n\n<p align=\"left\"><strong>Thiết kế nội thất phòng khách</strong></p>\n\n<p align=\"left\">Nội thất được sử dụng với chất liệu cao cấp,&nbsp;mang đến cho căn nhà được mềm mại, tinh tế. Đường nét của phòng được trở nên ấn tượng, độc đáo và thu hút hơn trong cách chọn lựa bố trí một cách hợp lý và khoa học. Phòng khách được thiết kế với bộ ghế được bọc nỉ&nbsp;êm ái, bàn trà hình chữ nhật.&nbsp;Tấm thảm cùng tông với màu ghế&nbsp;giúp cho không gian bộ bàn ghế tiếp khách được trở nên nổi bật.</p>\n\n<p align=\"left\"><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-a-tuong-1.jpg\" /></p>\n\n<p align=\"left\">Kệ tivi được sử dụng với chất liệu làm bằng đá, bức tường ốp đá vân trắng, tivi treo tường. Trần thạch cao phòng khách được thiết kế&nbsp;với đèn trần trang trí trung tâm độc đáo,mới lạ&nbsp;tạo điểm nhấn và mang lại vẻ đẹp lung linh cho không gian.</p>\n\n<p align=\"left\"><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-a-tuong-5.jpg\" /></p>\n\n<p align=\"left\">Bức tường phía ghế sofa được trở nên tạo điểm nhấn cho toàn bộ nội thất hiện đại. Những chậu cây được làm vật trang trí vô cùng cuốn hút và trở nên nổi bật một cách nhẹ nhàng, uyển chuyển. Không gian tiểu cảnh được bố trí đối diện cầu thang&nbsp;thêm phần nhằm tạo được không khí trong lành bên trong nhà lô phố đội cấn được tràn ngập không khí trong lành.</p>\n\n<p align=\"left\"><strong>Thiết kế phòng ăn và phòng bếp</strong></p>\n\n<p align=\"left\">Bàn ăn được bố trí mang đến sự tiện lợi, phòng ăn và phòng bếp được liên thông với nhau tạo được không gian được liên kết chặt chẽ với nhau. Bàn ăn được thiết kế với 6 chỗ ngồi sang trọng&nbsp;Mặt bàn được sử dụng kính màu trắng&nbsp;được trở nên dễ dàng cho việc dọn dẹp được sạch sẽ. Ghế được sử dụng tấm đệm êm ái cho gia đình được trở thoải mái, quây quần bên những bữa ăn ngon.</p>\n\n<p align=\"left\"><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-a-tuong-8.jpg\" /></p>\n\n<p align=\"left\">Tủ bếp trên và tủ bếp dưới được trở nên khơi nới diện tích sử dụng được mang đến những nét hiện đại.&nbsp;Tủ bếp trắng luôn mang lại cho không gian bếp vẻ đẹp hiện đại và cao cấp. Không gian nội thất phòng ăn nhà bếp cũng phá cách hơn nhờ vào bộ bàn ăn tông màu trắng kết hợp với những chiếc ghế vân gỗ hiện đại.</p>\n\n<p align=\"left\"><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-a-tuong.jpg\" /></p>\n\n<p align=\"left\">Nội thất phòng bếp được liên kết gắn liền với không gian phòng ăn. Không gian tạo được sự ngăn cách cần thiết cho các không gian chức năng. Bàn ăn dược đặt ngay cạnh cửa sổ đảm bảo thông thoáng, thoải mái cho gia chủ</p>\n\n<p align=\"left\"><strong>Thiết kế nội thất phòng ngủ</strong></p>\n\n<p align=\"left\">Phòng ngủ Master được thiết kế theo&nbsp;phong cách hiện đại mang đến cho gia chủ một không gian nội thất sang trọng, tiện ích và thoải mái. Phong cách thiết kế và màu sắc được thống nhất với nội thất không gian phòng ngủ. Giường ngủ có thành giường bọc nỉ cao cấp</p>\n\n<p align=\"left\"><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-a-tuong-3.jpg\" /></p>\n\n<p align=\"left\">Phòng ngủ con được thiết kế với tông màu tươi sáng với tông màu xanh trắng. Bức tranh dán tường càng làm căn phòng ngộ nghĩnh, dễ thương.</p>\n\n<p align=\"left\"><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham//thiet-ke-va-thi-cong-noi-that-a-tuong-4.jpg\" /></p>\n\n<p align=\"left\">Trên đây là mẫu thiết kế nội thất cho gia đình thích sự đơn giản, không gian thoáng đãng nhưng không kém phần hiện đại. Quý khách có nhu cầu thiết kế - thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn, Gemi Home sẽ giúp quý vị kiến tạo, xây dưng ước mơ đó.</p>\n\n<p align=\"left\">﻿</p>\n\n<p>&nbsp;</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-a-tuong-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TƯƠNG', 'thiet-ke-va-thi-cong-noi-that-a-tuong-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-a-tuong', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A TƯƠNG ', '', '', 76, '', 10, 16, 0, 21, '2020-02-07 04:44:18', 1, 1, '2020-02-12 11:12:59', ''),
(231, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A VINH', '', '', '<p>Thiết kế nội thất căn hộ vợ chồng anh Vinh&nbsp;mang phong cách hiện đại, đơn giản mà sang trọng chính là điểm nhấn của căn hộ 2 tầng&nbsp;này. Cái đẹp không chỉ nằm ở sự nổi bật mà còn ở sự hài hòa bởi phong cách thiết kế. Bằng sự tinh tế, các kiến trúc sư đã vô cùng khéo léo khi thiết kế nội thất đẹp trong khắp các gian phòng giúp không gian căn nhà trở nên hiện đại và thoáng mát hơn.</p>\n', '', '', '', '', '', '<p>Thiết kế nội thất nhà phố toát lên vẻ đẹp sang trọng, đẳng cấp, không gian nội thất cân bằng, hài hòa. Nội thất nhà phố lựa chọn phong cách hiện đại với sự tỉ mỉ chủ đáo, không gian nội thất đảm bảo tính thẩm mỹ và tính công năng của sản phẩm.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Nội thất được sử dụng với chất liệu cao cấp, bằng gỗ&nbsp;màu nâu của gỗ mang đến cho căn nhà được mềm mại, tinh tế. Đường nét của phòng được trở nên ấn tượng, độc đáo và thu hút hơn trong cách chọn lựa bố trí một cách hợp lý và khoa học. Phòng khách được thiết kế với bộ ghế được bọc da êm ái, bàn trà hình chữ nhật.&nbsp;Tấm thảm được đặt phái dưới giúp cho không gian bộ bàn ghế tiếp khách được trở nên nổi bật.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-a-vinh-thumline.jpg\" /></p>\n\n<p>Kệ tivi được sử dụng với chất liệu làm bằng đá, bức tường ốp đá vân trắng, tivi treo tường. Trần thạch cao phòng khách được thiết kế giật cấp với quạt&nbsp;trần trang trí trung tâm tạo điểm nhấn và mang lại vẻ đẹp lung linh cho không gian.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-a-vinh-1.jpg\" /></p>\n\n<p>Bức tường phía ghế sofa được trở nên tạo điểm nhấn cho toàn bộ nội thất hiện đại. Những chậu cây được làm vật trang trí vô cùng cuốn hút và trở nên nổi bật một cách nhẹ nhàng, uyển chuyển. Không gian tiểu cảnh được bố trí đối diện cầu thang&nbsp;thêm phần nhằm tạo được không khí trong lành bên trong nhà lô phố đội cấn được tràn ngập không khí trong lành.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế phòng ăn và phòng bếp</span></strong></p>\n\n<p>Bàn ăn được bố trí mang đến sự tiện lợi, phòng ăn và phòng bếp được liên thông với nhau tạo được không gian được liên kết chặt chẽ với nhau.Bàn ăn được thiết kế với 6 chỗ ngồi sang trọng&nbsp;Mặt bàn được sử dụng kính màu trắng&nbsp;được trở nên dễ dàng cho việc dọn dẹp được sạch sẽ. Ghế được sử dụng tấm đệm êm ái cho gia đình được trở thoải mái, quây quần bên những bữa ăn ngon.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-a-vinh-4.jpg\" /></p>\n\n<p>Tủ bếp trên và tủ bếp dưới được trở nên khơi nới diện tích sử dụng được mang đến những nét hiện đại.&nbsp;Tủ bếp trắng luôn mang lại cho không gian bếp vẻ đẹp hiện đại và cao cấp. Không gian nội thất phòng ăn nhà bếp cũng phá cách hơn nhờ vào bộ bàn ăn tông màu trắng kết hợp với những chiếc ghế vân gỗ hiện đại.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-a-vinh-2.jpg\" /></p>\n\n<p>Nội thất phòng bếp được liên kết gắn liền với không gian phòng ăn. Không gian tạo được sự ngăn cách cần thiết cho các không gian chức năng. Bàn ăn dược đặt ngay cạnh cửa sổ đảm bảo thông thoáng, thoải mái cho gia chủ</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Thiết kế nội thất phòng ngủ theo phong cách hiện đại mang đến cho gia chủ một không gian nội thất sang trọng, tiện ích và thoải mái. Phong cách thiết kế và màu sắc được thống nhất với nội thất không gian phòng ngủ. Giường ngủ có thành giường bọc nỉ cao cấp,có ngăn kéo tích hợp tiện lợii. Những bức tranh được sử dụng treo tường làm cho căn phòng được trở nên đầy tính nghệ thuật, đam mê hơn rất nhiều.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-a-vinh-6.jpg\" /></p>\n\n<p>Tủ quần áo được sử dụng thiết kế cao sát trần, mang đến không gian được bố trí hợp lý và khoa học.Cửa tủ được làm bẳng kính, cùng với chiếc gương nhỏ tạo không gian cho căn phòng nhỏ hẹp</p>\n\n<p>Trên đây là mẫu thiết kế nội thất cho gia đình thích sự đơn giản, không gian thoáng đãng nhưng không kém phần hiện đại. Quý khách có nhu cầu thiết kế - thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn, Gemi Home sẽ giúp quý vị kiến tạo, xây dựng ước&nbsp;mơ đó.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-thi-cong-noi-that-a-vinh-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A VINH', 'thiet-ke-thi-cong-noi-that-a-vinh-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-a-vinh', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT A VINH ', '', '', 76, '', 15, 16, 18, 21, '2020-02-07 04:51:21', 1, 1, '2020-02-12 10:21:44', ''),
(232, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI ĐẠI', '', '', '<p>Sở hữu một căn nhà phố, bạn có thể chủ động xây dựng hay tu sửa theo ý muốn mà không bị lệ thuộc bất cứ quy định, thủ tục hay kết cấu nào sẵn có. Căn nhà vì thế mà sẽ dễ dàng khoát lên mình phong cách cá tính mà bạn muốn. Căn nhà phố ở Đan Phượng&nbsp;được Gemi Home&nbsp;thiết kế thi công nội thất là một trong những dự án tiêu biểu trong năm của công ty được sử dụng tông màu trầm tươi mới, sang trọng.</p>\n', '', '', '', '', '', '<p>Không cần quá màu mè, không cần trang trí quá cầu kỳ hay sử dụng quá nhiều đồ nội thất, nhưng thiết kế nội thất nhà lô phố tại Đan Phượng&nbsp;của chị Đại&nbsp;vẫn mang một vẻ đẹp sang trọng và đẳng cấp khiến ai nhìn thấy cũng phải trầm trồ, choáng ngợp. Vậy chi tiết mẫu thiết kế này của Gemi Home có điều gì đặc biệt? Mời quý bạn đọc cùng theo dõi phân tích dưới đây để thấy có cái nhìn cụ thể nhất!</p>\n\n<p><strong><span style=\"font-size: 20px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Không gian phòng khách được thiết kế với phong cách nhỏ nhắn nhưng mang phong cách trẻ trung, đơn giản nhưng đồ vật được sắp xếp vô cùng tinh tế, hài hòa khiến cho không gian trở lên ấm cúng.&nbsp; Bộ sofa đơn giản mà tinh tế, chiếc tivi được treo chắc chắn trên tường sau đó được trang trí bởi bức ốp tường giả đá không những tạo điểm nhấn cho không gian mà còn giúp căn phòng trở lên bừng sáng với ánh sáng tự nhiên từ ban công sau tấm cửa kính lớn.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-chi-dai-31.jpg\" /></p>\n\n<p>Việc sử dụng ánh sáng tự nhiên vào thiết kế nội thất giúp không gian trở nên sáng, mở, tạo độ cơi nới cho không gian và mang lại hứng khởi cho gia chủ.</p>\n\n<p><strong><span style=\"font-size: 20px;\">Thiết kế nội thất phòng bếp</span></strong></p>\n\n<p>Đối với thiết kế nội thất phòng bếp được phân chia và sắp xếp khu nấu nướng và bàn ăn liền kề, mang phong cách hiện đại và thu hút.&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-chi-dai-51.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-chi-dai-11.jpg\" /></p>\n\n<p>Không gian bếp được thiết kế đơn giản, không đi sâu vào các chi tiết rườm rà, hay các hoa văn tinh xảo mà thay vào đó là các thiết kế sử dụng các khối hình đơn giản, dễ chịu vừa đảm bảo tiết kiệm diện tích, tiện nghi lại dễ dàng trong quá trình dọn vệ sinh, linh hoạt khi muốn thay đổi.&nbsp;</p>\n\n<p><strong><span style=\"font-size: 20px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Thiết kế nội thất không gian phòng ngủ khéo léo sử dụng các tone màu đa dạng hơn để mang đến sự thay đổi mới lạ và cảm giác gần gũi cho không gian riêng tư. Tone trắng kết hợp nâu nhạt được sử dụng khá nhiều giúp thiết kế trở nên sống động và thu hút hơn hẳn.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-chi-dai1.jpg\" /></p>\n\n<p>Không gian phòng ngủ với khung cửa sổ nhỏ đem ánh sáng tự nhiên vào căn phòng. Các kệ tủ, hay ngăn kéo được tận dùng ở các ngách nhỏ của phòng giúp không gian trở nên vô cùng tiện nghi, sáng tạo, góp phần tiết kiệm diện tích sử dụng.</p>\n\n<p>Thiết kế nội thất nhà lô phố tại Đan Phượng&nbsp;của chị Đại&nbsp;được bày trí khá đơn giản nhưng đổi lại vật liệu sử dụng đều thuộc hàng cao cấp, cách sắp đặt tinh tế và khoa học giúp mang đến vẻ đẹp hiện đại, vừa sang trọng lại vừa đẳng cấp cho không gian. Hi vọng, sau khi tham khảo mẫu thiết kế này của&nbsp; bạn sẽ tìm được cho mình một vài ý tưởng thú vị!</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-dai-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI ĐẠI', 'thiet-ke-thi-cong-noi-that-chi-dai-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-nha-chi-dai', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI ĐẠI ', '', '', 76, '', 15, 16, 18, 21, '2020-02-07 05:22:41', 1, 1, '2020-02-12 10:20:30', ''),
(233, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI HOA', '', '', '<p>Thiết kế nội thất nhà phố theo phong cách hiện đại sử dụng một cách đơn giản và cô đọng nhất những hình khối cơ bản. Các chất liệu được kết hợp với nhau một cách giản lược, tạo ra một không gian sống thoáng đãng và tiện ích.</p>\n', '', '', '', '', '', '<p>Không cần quá màu mè, không cần trang trí quá cầu kỳ hay sử dụng quá nhiều đồ nội thất, nhưng thiết kế nội thất nhà lô phố tại Cầu Diễn của chị Hoa vẫn mang một vẻ đẹp sang trọng và đẳng cấp khiến ai nhìn thấy cũng phải trầm trồ, choáng ngợp. Vậy chi tiết mẫu thiết kế này của Gemi Home có điều gì đặc biệt? Mời quý bạn đọc cùng theo dõi phân tích dưới đây để thấy có cái nhìn cụ thể nhất!</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Không gian phòng khách được thiết kế với phong cách nhỏ nhắn nhưng mang phong cách trẻ trung, đơn giản nhưng đồ vật được sắp xếp vô cùng tinh tế, hài hòa khiến cho không gian trở lên ấm cúng.&nbsp; Bộ sofa đơn giản mà tinh tế, chiếc tivi được treo chắc chắn trên tường sau đó được trang trí bởi bức ốp tường giả đá không những tạo điểm nhấn cho không gian mà còn giúp căn phòng trở lên bừng sáng với ánh sáng tự nhiên từ ban công sau tấm cửa kính lớn.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-chi-dai-31.jpg\" /></p>\n\n<p>Việc sử dụng ánh sáng tự nhiên vào thiết kế nội thất giúp không gian trở nên sáng, mở, tạo độ cơi nới cho không gian và mang lại hứng khởi cho gia chủ.<strong><span style=\"font-size:20px;\"> </span></strong></p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng bếp</span></strong></p>\n\n<p>Đối với thiết kế nội thất phòng bếp được phân chia và sắp xếp khu nấu nướng và bàn ăn liền kề, mang phong cách hiện đại và thu hút.&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-chi-dai-51.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-chi-dai-11.jpg\" /></p>\n\n<p>Không gian bếp được thiết kế đơn giản, không đi sâu vào các chi tiết rườm rà, hay các hoa văn tinh xảo mà thay vào đó là các thiết kế sử dụng các khối hình đơn giản, dễ chịu vừa đảm bảo tiết kiệm diện tích, tiện nghi lại dễ dàng trong quá trình dọn vệ sinh, linh hoạt khi muốn thay đổi.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Thiết kế nội thất không gian phòng ngủ khéo léo sử dụng các tone màu đa dạng hơn để mang đến sự thay đổi mới lạ và cảm giác gần gũi cho không gian riêng tư. Tone trắng kết hợp nâu nhạt được sử dụng khá nhiều giúp thiết kế trở nên sống động và thu hút hơn hẳn.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-chi-dai1.jpg\" /></p>\n\n<p>Không gian phòng ngủ với khung cửa sổ nhỏ đem ánh sáng tự nhiên vào căn phòng. Các kệ tủ, hay ngăn kéo được tận dùng ở các ngách nhỏ của phòng giúp không gian trở nên vô cùng tiện nghi, sáng tạo, góp phần tiết kiệm diện tích sử dụng.</p>\n\n<p>Thiết kế nội thất nhà lô phố tại Cầu Diễn của chị Đại&nbsp;được bày trí khá đơn giản nhưng đổi lại vật liệu sử dụng đều thuộc hàng cao cấp, cách sắp đặt tinh tế và khoa học giúp mang đến vẻ đẹp hiện đại, vừa sang trọng lại vừa đẳng cấp cho không gian. Hi vọng, sau khi tham khảo mẫu thiết kế này của&nbsp; bạn sẽ tìm được cho mình một vài ý tưởng thú vị!</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-hoa-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI HOA', 'thiet-ke-va-thi-cong-noi-that-chi-hoa-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-chi-hoa', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI HOA', '', '', 76, '', 15, 16, 18, 21, '2020-02-07 12:30:23', 1, 1, '2020-02-14 09:09:05', ''),
(234, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI LAI', '', '', '<p>Không thích ồn ào, chật chội nơi phố thị, chị Lai tìm thấy yên bình ở căn nhà phố ở ngoại thành Hà Nội. Toàn bộ nội thất được sử dụng theo phong cách hiện đại giúp không&nbsp;gian sống của chị không những bình yên, thoáng mát mà còn đẳng cấp, sang trọng.</p>\n', '', '', '', '', '', '<p>Thật may mắn khi chúng ta có một chốn về vô cùng xinh đẹp sau một ngày dài bận rộn, mệt nhoài với khối công việc chồng chất. Ngay sau đây, Gemi Home xin gửi đến quý khách mẫu thiết kế nội thất nhà phố của gia đình Lai được trang trí không khác gì những căn biệt thự cao cấp.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Phòng khách hiện đại lấy ánh sáng tự nhiên từ cửa sổ&nbsp;làm chủ đạo. Việc sử dụng ánh sáng tự nhiên vào thiết kế nội thất giúp không gian trở nên sáng, mở, tạo độ cơi nới cho không gian và mang lại hứng khởi cho gia chủ. Bộ sofa mà kiến trúc sư sử dụng là bộ sofa nâu bò da bóng có kích thước vừa phải, không gian thoáng với thiết kế sofa vững chãi mang lại hiệu ứng cảm xúc tích cực cho gia chủ và các thành viên trong gia đình, mang đến không gian sinh hoạt chung gần gũi và thư giãn.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-chi-lai.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-chi-lai-2.jpg\" /></p>\n\n<p>Không gian xanh bao trùm toàn bộ gian phòng</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-chi-lai-4.jpg\" /></p>\n\n<p>Bộ sofa cùng bàn thấp tăng không gian cho căn phòng</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-chi-lai-6.jpg\" /></p>\n\n<p>Đặc biệt ở thiết kế nội thất không gian này, kiến trúc sư đã khéo léo biến đổi các bức tường thô cứng thành không gian sống động với các bức tranh đầy màu sắc. Xung quanh phòng khách được đặt trồng nhiều cây xanh, tạo không gian xanh, tươi mát cho cả căn nhà. Gia chủ sử dụng cửa kính để ngăn cách phòng khác với khu vực cầu thang</p>\n\n<p><span style=\"font-size: 20px;\"><b>Thiết kế nội thất phòng bếp</b></span></p>\n\n<p>Không gian bếp được thiết kế đơn giản, không đi sâu vào các chi tiết rườm rà, hay các hoa văn tinh xảo mà thay vào đó là các thiết kế sử dụng các khối hình đơn giản, dễ chịu vừa đảm bảo tiết kiệm diện tích, tiện nghi lại dễ dàng trong quá trình dọn vệ sinh, linh hoạt khi muốn thay đổi. tạo điểm nhấn cho không gian phòng bếp.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-chi-lai-5.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-chi-lai-1.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-chi-lai-9.jpg\" /></p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-chi-lai-7.jpg\" /></p>\n\n<p>Chúng mang đến cho không gian phòng bếp thật ấn tượng và hết sức độc đáo. Đó cũng là cảm hứng giúp các thành viên trong gia đình có tinh thần vui vẻ bên nhau hơn.&nbsp;Các kệ tủ, hay ngăn kéo được tận dùng ở các ngách nhỏ của phòng giúp không gian trở nên vô cùng tiện nghi, sáng tạo, góp phần tiết kiệm diện tích sử dụng.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Thiết kế nội thất không gian phòng ngủ khéo léo sử dụng các tone màu đa dạng hơn để mang đến sự thay đổi mới lạ và cảm giác gần gũi cho không gian riêng tư.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-chi-lai-8.jpg\" /></p>\n\n<p>Tone trắng kết hợp nâu nhạt được sử dụng khá nhiều giúp thiết kế trở nên sống động và thu hút hơn hẳn. Không gian phòng ngủ với khung cửa sổ nhỏ đem ánh sáng tự nhiên vào căn phòng.&nbsp; Kệ trang trí&nbsp;nhỏ gọn, áp sát tường tạo không gian cho căn phòng nhỏ.</p>\n\n<p>Trên đây là mẫu thiết kế danh cho người yêu thích không gian xanh,&nbsp;sự đơn giản, nhưng vô cùng tinh tế hiện đại. Quý khách có nhu cầu thiết kế – thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn Gemi Home sẽ giúp quý vị kiến tạo, xây dựng ước mơ đó.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lai-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI LAI', 'thiet-ke-va-thi-cong-noi-that-chi-lai-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-chi-lai', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI LAI', '', '', 76, '', 14, 16, 18, 22, '2020-02-07 12:36:01', 1, 1, '2020-02-12 10:19:22', ''),
(235, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI LANH', '', '', '<p>Là người hiện đại, chị Lanh muốn thiết kế nội thất că nhộ tinh tế, đẳng cấp, tiện nghi, thanh lịch,&nbsp;hài hòa giữa các không gian. Màu sắc sử dụng một cách trung lập, hình khối không&nbsp;cầu kỳ nhiều chi tiết.</p>\n\n<p>&nbsp;</p>\n', '', '', '', '', '', '<p>Thiết kế nhà ở mang phong cách hiện đại là một trong những xu hướng thiết kế nhà đẹp nổi bật năm nay. Thiết kế nội thất nhà ở đảm bảo đầy đủ công năng sử dụng nhưng vẫn đảm bảo tính thẩm mỹ được nhiều gia chủ quan tâm. Cùng Gemi Home ghé thăm nhà chị Lanh&nbsp;để ngắm nhìn nội thất mang xu hướng đơn giản nhưng không kém phần hiện đại và tinh tế đang được ưa chuộng.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Không gian phòng khách được thiết kế với phong cách nhỏ nhắn nhưng mang phong cách trẻ trung, đơn giản nhưng đồ vật được sắp xếp vô cùng tinh tế, hài hòa khiến cho không gian trở lên ấm cúng.&nbsp;</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-chi-lanh-2.jpg\" /></p>\n\n<p>Bộ sofa đơn giản mà tinh tế, chiếc tivi được treo chắc chắn trên tường sau đó được trang trí bởi bức ốp tường giả đá không những tạo điểm nhấn cho không gian mà còn giúp căn phòng trở lên bừng sáng với ánh sáng tự nhiên từ ban công sau tấm cửa kính lớn.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-chi-lanh-1.jpg\" /></p>\n\n<p>Việc sử dụng ánh sáng tự nhiên vào thiết kế nội thất giúp không gian trở nên sáng, mở, tạo độ cơi nới cho không gian và mang lại hứng khởi cho gia chủ.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng bếp</span></strong></p>\n\n<p>Đối với thiết kế nội thất phòng bếp được phân chia và sắp xếp khu nấu nướng và bàn ăn liền kề, mang phong cách hiện đại và thu hút. Tone màu trắng xanh từ sơn tường đơn sắc và đá tự nhiên khá đồng bộ với thiết kế màu nền giúp không gian trở nên đồng nhất, góp phần lớn định hình phong cách hiện đại và sự thống nhất trong không gian.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-chi-lanh-3.jpg\" /></p>\n\n<p>Không gian bếp được thiết kế đơn giản, không đi sâu vào các chi tiết rườm rà, hay các hoa văn tinh xảo mà thay vào đó là các thiết kế sử dụng các khối hình đơn giản, dễ chịu vừa đảm bảo tiết kiệm diện tích, tiện nghi lại dễ dàng trong quá trình dọn vệ sinh, linh hoạt khi muốn thay đổi.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Thiết kế nội thất không gian phòng ngủ khéo léo sử dụng các tone màu đa dạng hơn để mang đến sự thay đổi mới lạ và cảm giác gần gũi cho không gian riêng tư.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-va-thi-cong-noi-that-chi-lanh.jpg\" /></p>\n\n<p>Tone màu trầm&nbsp;được sử dụng khá nhiều giúp thiết kế trở nên sống động và thu hút hơn hẳn. Không gian phòng ngủ với khung cửa sổ nhỏ đem ánh sáng tự nhiên vào căn phòng. Các kệ tủ, hay ngăn kéo được tận dùng ở các ngách nhỏ của phòng giúp không gian trở nên vô cùng tiện nghi, sáng tạo, góp phần tiết kiệm diện tích sử dụng.</p>\n\n<p>Đây là một trong những mẫu thiết kế nội thất cao cấp của Gemi Home được đánh giá cao về chuyên môn, chất lượng, tính thẩm mĩ và công năng sử dụng. Quý khách có nhu cầu thiết kế – thi công nội thất đẹp, đừng ngần ngại nói ra ý muốn chúng tôi sẽ giúp quý vị kiến tạo, xây dựng ước mơ đó.</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-lanh-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI LANH', 'thiet-ke-va-thi-cong-noi-that-chi-lanh-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-nha-chi-lanh', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHI LANH', '', '', 76, '', 14, 16, 18, 21, '2020-02-07 12:48:32', 1, 1, '2020-02-12 10:18:25', ''),
(236, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NAM', '', '', '<p>Phong cách tân cổ điển là sự kết hợp của trắng sữa và vàng đã tạo lên thiết kế nội thất ngôi nhà chị&nbsp;Nam đẳng cấp. Hoạ tiết cầu kỳ sang trọng bên ngoài kết hợp với bên trong ngôi nhà đã tạo ra một sản phẩm hoàn hảo.&nbsp;</p>\n', '', '', '', '', '', '<p>Thiết kế nội thất tân cổ điển là phong cách được khá nhiều gia chủ lựa chọn trong thời gian gần đây. Vẻ đẹp của kiến trúc tân cổ điển toát ra sự hài hòa đến kinh ngạc của các món đồ nội thát và các đường nét trên trần, tường. Trước yêu cầu thiết kế gian phòng khách và phòng ngủ theo phong các tân cổ điển của nhà chị Nam, kiến trúc sư của Gemi Home đã đưa ra thiết kế như sau.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Phòng khách được thiết kế không quá cầu kì, tôn lên hiệu quả sử dụng của những món đồ nội thất. Những chi tiết trang trí đặc trưng của phong cách tân cổ điển được nhấn nhá tại vị trí nhỏ như chân bàn, chân ghế. Màu sắc nội thất hài hòa, cùng gam màu của sơn tường là màu trung tính – trắng và vàng làm căn phòng toát lên vẻ sang trọng quý phái.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-va-thi-cong-noi-that-chi-nam.jpg\" /></p>\n\n<p>Chiếc bàn được thiết kế đơn giản mà tinh tế cùng chiếc ghế bọc đệm mút êm ái sẽ giúp các thành viên cảm thấy thoải mái, dễ chịu hơn khi sử dụng. Họa tiết hoa văn trên sàn nhà, tường, trần nhà được thiết kế tỉ mỉ tạo không gian sang trọng, quý phái cho căn nhà.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Phòng ngủ trong căn nhà được chị Nam quan tâm hàng đầu. Chị muốn căn phòng tĩnh lặng, êm ái, thoáng mát.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-va-thi-cong-noi-that-chi-nam-3.jpg\" /></p>\n\n<p>Do căn phòng không có nhiều ánh sáng tự nhiên nên đội thiết kế đã sơn tường và sử dụng toàn bộ nội thất màu trắng. Sàn gỗ góp phần làm căn phòng tươi tắn, mát mẻ vào mùa hè, ấm áp vào mùa đông.</p>\n\n<p>Trên đây là căn hộ tại Goldmark City được thiết kế bởi Kiến trúc sư Gemi Home đã mang đến cho gia chủ một không gian sống đẳng cấp. Bạn đang cần thiết kế nội thất riêng cho căn hộ của mình hãy liên hệ ngay đến chúng tôi để được tư vấn trực tiếp.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-va-thi-cong-noi-that-chi-nam-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NAM', 'thiet-ke-va-thi-cong-noi-that-chi-nam-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-chi-nam', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NAM', 'thiet ke noi that, thiết kế nội thất', 'Phong cách tân cổ điển là sự kết hợp của trắng sữa và vàng đã tạo lên thiết kế nội thất ngôi nhà Chi Nam đẳng cấp. Hoạ tiết cầu kỳ sang trọng bên ngoài kết hợp với bên trong ngôi nhà đã tạo ra một sản phẩm hoàn hảo. ', 76, '', 10, 17, 18, 22, '2020-02-07 13:27:14', 1, 1, '2020-02-12 10:17:03', ''),
(237, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NGÁT', '', '', '<p>Gia chủ mệnh mộc hợp với màu gỗ, nên GEMIHOME đã thiết kế toàn bộ ngôi nhà theo tông màu chủ đạo là gỗ. Sự sang trọng của ánh đèn vàng đã tạo nên một không gian hoàn hảo.&nbsp;</p>\n', '', '', '', '', '', '<p>Người thuộc mệnh Mộc sẽ hợp với mẫu thiết kế nội thất như thế nào? Nếu bạn đang phân vân chưa biết cách thiết kế nội thất hợp với bản mệnh thì hãy cùng Gemi Home ghé thăm nhà chị Ngát với diện tích hơn 70 m2 tại chung cư An Bình City&nbsp;. Dưới đây là mẫu thiết kế nội thất chung cư cho người mệnh Mộc, đừng nên bỏ lỡ nhé!</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Đa phần nội thất phù hợp với mệnh Mộc là những đồ vật có chất liệu từ gỗ (màu nâu) nên không gian ngôi nhà của người mệnh Mộc không chỉ toát lên được sự sang trọng, hiện đại mà nó còn phù hợp với khí hậu nhiệt đới gió mùa ở nước ta.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-thi-cong-nha-chi-ngat-2.jpg\" /></p>\n\n<p>Bên cạnh đó, các vật dụng có màu sắc như: Đỏ, tím, vàng… cũng làm cho không gian ngôi nhà của bạn trở nên sinh động và đẹp mắt hơn. Trần nhà nên lựa chọn những màu sáng và nhẹ nhàng, còn màu sàn thì đậm, điều này sẽ giúp mang lại nhiều may mắn, tiền tài đến cho gia chủ.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ăn </span></strong></p>\n\n<p>Người mệnh Mộc nên sử dụng các đồ dùng nội thất được làm từ chất liệu gỗ, tre. Về hình dáng của các đồ nội thất, vật trang trí trong phòng bếp, nên sử dụng những hình dáng phù hợp với gia chủ như: dáng dài, đồ vật có các họa tiết sọc đứng…để đem lại nhiều điều may mắn cho gia chủ mệnh Mộc.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-thi-cong-nha-chi-ngat-3.jpg\" /></p>\n\n<p>Không gian nhà ăn được trang trí bằng gỗ sẫm màu tạo không khí ấm áp, đầm cũng cho cả gia đình.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Cũng giống như phòng ăn và phòng khách, gian phòng nghỉ ngơi nhà chị Ngát cũng được thiết kế bằng gỗ có họa tiết sọc dài đem lại may mắn yên tĩnh cho gia chủ.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-thi-cong-nha-chi-ngat-5.jpg\" /></p>\n\n<p>Màu sắc chủ đạo vẫn là trắng – nâu tạo nên không gian thoáng mát, nhẹ nhàng, ấm áp.</p>\n\n<p>Phòng ngủ thứ 2 ngập tràn ánh sáng tự nhiên, với tone màu chủ đạo là màu trắng tạo sự tinh tế, nhẹ nhàng.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-thi-cong-nha-chi-ngat-thumline.jpg\" /></p>\n\n<p>Trên đây là mẫu thiết kế nội thất nhà ở dành cho gia chủ thuộc mệnh Mộc. Quý vị đang có nhu cầu về thiết kế nội thất chung cư hãy liên hệ ngay với Gemi Home Việt Nam để được tư vấn chi tiết. Có hàng trăm mẫu thiết kế nội thất đẹp hiện đại khách đang chờ đón quý khách, xin mới nhấp chuột tại website công ty chúng tôi.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-thi-cong-nha-chi-ngat-thumline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NGÁT', 'thiet-ke-thi-cong-nha-chi-ngat-thumline', 0, 0, 0, 0, 0, 0, 0, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-chi-ngat', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI NGÁT', 'thiet ke noi that, thiết kế nội thất', 'Gia chủ mệnh mộc hợp với màu gỗ, nên GEMIHOME đã thiết kế toàn bộ ngôi nhà theo tông màu chủ đạo là gỗ. Sự sang trọng của ánh đèn vàng đã tạo nên một không gian hoàn hảo. ', 76, '', 15, 16, 18, 22, '2020-02-07 13:34:35', 1, 1, '2020-02-12 10:16:04', ''),
(238, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI SINH', '', '', '<p>Với yêu cầu thiết kế cả nhà phòng khách phòng bếp và phòng ngủ theo phong cách hiện đại, Chị Sinh yêu cầu thiết kế đơn giản nhưng lại tinh tế và ấm áp. Nắm bắt được điều đó thiết kế GEMIHOME đã thiết kế cả nhà với tông màu gỗ chất liệu da xám kết hợp với đường khối đã tạo nên căn nhà hoàn mỹ</p>\n', '', '', '', '', '', '<p>Thiết kế nhà ở&nbsp;mang phong cách hiện đại là một trong những xu hướng thiết kế nhà đẹp nổi bật năm nay. Thiết kế nội thất nhà ở đảm bảo đầy đủ công năng sử dụng nhưng vẫn đảm bảo tính thẩm mỹ được nhiều gia chủ quan tâm.</p>\n\n<p>Cùng Gemihome ghé thăm nhà chị Sinh để ngắm nhìn nội thất mang xu hướng đơn giản nhưng không kém phần hiện đại và tinh tế đang được ưa chuộng</p>\n\n<p>&nbsp;</p>\n\n<p><span style=\"font-size:20px;\"><strong>Thiết kế nội thất phòng khách</strong></span></p>\n\n<p>Xu hướng thiết kế phòng khách đẹp, đơn giản hiện đại được nhiều gia chủ ưa chuộng. Gam màu chủ đạo trong phòng khách nhà chị Sinh là màu nhã nhặn tươi tắn, điểm nhấn của cả gian phòng là bộ bàn ghế với tone vàng ánh kim tạo sự sang trọng quý phái cho gia chủ</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-thi-cong-noi-that-chi-sinh-4.jpg\" /></p>\n\n<p>Ngoài ra khi thiết kế nội thất phòng khách hiện đại, thì yếu tố thiết kế trần nhà cũng được chú trọng, gia chủ có thể lựa chọn thiết kế trần phòng khách thạch cao tạo cảm giác và sự rộng rãi cho không gian phòng khách.</p>\n\n<p>Gia chủ đã muốn thiết kế gian thờ ngay cạnh phòng khách, vì vậy kiến trúc sư của Gemihome ngăn cách với không gian sinh hoạt bằng vách ngăn gỗ trang trí. Tường ốp gỗ ở không gian thờ cúng giúp mang tới vẻ đẹp trang nghiêm, lại tránh được việc ám khói lên tường nhà.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất nhà bếp</span></strong></p>\n\n<p>Phòng bếp có diện tích nhỏ, vì thế khi thiết kế đồ nội thất như tủ bếp, bồn rửa…. cần phải đảm bảo đơn giản, kích thước phù hợp.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-thi-cong-noi-that-chi-sinh-1.jpg\" /></p>\n\n<p>Một phòng bếp liên thông với phòng khách và khu ban công là giải pháp mang đến 1 không gian rộng rãi, sạch sẽ.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-thi-cong-noi-that-chi-sinh-2.jpg\" /></p>\n\n<p>Tất cả nội thất sử dụng trong gian phòng chủ yếu là gam màu trắng tạo sự tinh tế, trang trọng.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Thiết kế nội thất &nbsp;hiện đại với gam màu trung tính là chủ đạo. Sử dụng những gam màu như: trắng, màu be, màu ghi xám giúp mang tới vẻ đẹp sang trọng, tinh tế và nhã nhặn cho không gian. Đồng thời cách phối màu này cũng giúp cho không gian sống trở nên rộng rãi và thoải mái hơn.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-thi-cong-noi-that-chi-sinh-6.jpg\" /></p>\n\n<p>Không gian phòng ngủ dành cho bé cũng được chị Sinh chú trọng. Vẫn là gam màu trung tính nhưng kết hợp với tranh treo tường hay kệ nhỏ tạo nên sự cá tính, năng động.</p>\n\n<p><img alt=\"\" src=\"/resources/uploads/images/thiet-ke-thi-cong-noi-that-chi-sinh-3.jpg\" style=\"width: 1200px; height: 800px;\" /></p>\n\n<p>Tổng quan căn hộ của chị Sinh, từ sàn nhà đến bộ bàn ghế,.. đều được thiết kế bằng gỗ tạo nên sự sang trọng và đẳng cấp mà bất cứ đồ nội thất nào cũng không thể đáp ứng</p>\n\n<p>Quý vị đang có nhu cầu về thiết kế nội thất chung cư hãy liên hệ ngay với Gemi Home Việt Nam để được tư vấn chi tiết.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-sinh-thumeline.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI SINH', 'thiet-ke-thi-cong-noi-that-chi-sinh-thumeline', 0, 0, 0, 0, 0, 0, 120, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-chi-sinh', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT CHI SINH ', 'thiet ke noi that, thiết kế nội thất', 'Với yêu cầu thiết kế cả nhà phòng khách phòng bếp và phòng ngủ theo phong cách hiện đại, Chị Sinh yêu cầu thiết kế đơn giản nhưng lại tinh tế và ấm áp. Nắm bắt được điều đó thiết kế GEMIHOME đã thiết kế cả nhà với tông màu gỗ chất liệu da xám kết hợp với đường khối đã tạo nên căn nhà hoàn mỹ', 76, '', 15, 16, 18, 22, '2020-02-07 15:01:51', 1, 1, '2020-02-12 10:14:38', '');
INSERT INTO `products` (`ProductsID`, `SKU`, `Title`, `Title_en`, `Title_fr`, `Description`, `Description_en`, `Description_fr`, `Desc`, `Desc_en`, `Desc_fr`, `Body`, `Body_en`, `Body_fr`, `Body2`, `Body2_en`, `Body2_fr`, `Body3`, `Body3_en`, `Body3_fr`, `ImagePreset`, `ImageURL`, `ImageTitle`, `ImageAlt`, `IsNew`, `IsPromotion`, `IsSellers`, `IsHot`, `IsStock`, `ListPrice`, `SellPrice`, `Warranty`, `Orders`, `Publish`, `ShowPrice`, `Slug`, `Tags`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `CategoriesProductsID`, `SubCategoriesProductsID`, `SortingBrandID`, `SortingResID`, `SortingChannelID`, `SortingPriceID`, `CreatedDate`, `CreatedBy`, `ModifiedBy`, `ModifiedDate`, `Hightlight`) VALUES
(239, '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHỊ THOAN', '', '', '<p>Là con người thoải mái nhưng không kém phần tinh tế Chị Thoan đã chọn một phong cách nội thất nhà phố hiện đại. Với tông màu gỗ ấm cúng cùng màu xám kết hợp với đèn trùm đã mang lại cho toàn bộ thiết kế phòng khách một cách mới lạ</p>\n', '', '', '', '', '', '<p>Với cách thiết kế bài trí thông minh cho những mẫu nhà phố nhỏ, có diện tích khiêm tốn đã phần nào toát lên được vẻ đẹp thẩm mỹ cũng như không gian nội thất đẹp, rộng, thoáng, hiện đại cho ngôi nhà phố này. Tổ ấm của gia đình chị Thoan được thiết kế theo phong cách hiện đại với nội thất xinh, cực kỳ ấn tượng làm mê hoặc nhiều chủ đầu tư khi đến tham quan mẫu nội thất nhà phố hiện đại này.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng khách</span></strong></p>\n\n<p>Không gian phòng khách được bố trí theo phong cách hiện&nbsp;đại, tối giản&nbsp;các chi tiết trang trí không cần thiết và tập trung thể hiện được trung tâm phòng khách là bộ sofa xám mềm mại gợi không khí thân mật nhưng vẫn sang trọng cho không gian nhỏ này.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-chi-thoan-3.jpg\" /><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-chi-thoan-2.jpg\" /></p>\n\n<p>Chiếc tivi được treo chắc chắn trên tường sau đó được trang trí bởi bức ốp tường giả đá không những tạo điểm nhấn cho không gian mà còn giúp căn phòng trở lên bừng sáng với ánh sáng tự nhiên từ ban công sau tấm cửa kính lớn.</p>\n\n<p><strong><span style=\"font-size:20px;\">Thiết kế nội thất phòng ngủ</span></strong></p>\n\n<p>Phòng ngủ Master thiết kế không gian nhẹ nhàng, lãng mạn và trầm ấm. Không gian phòng ngủ đẹp, êm&nbsp;được bố trí đơn giản nhằm phát huy tối đa công năng chính của phòng là ngủ. Bàn làm việc đặt ngay cạnh chửa sổ, hứng trọn ánh sáng tự&nbsp;nhiên.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-chi-thoan-6.jpg\" /></p>\n\n<p>Tủ quần áo được gia chủ tách riêng với phòng ngủ giúp cơi nới không gian cho gian phòng.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-chi-thoan-5.jpg\" /></p>\n\n<p>Phòng ngủ con được thiết kế với 2 gam màu chính là nâu đạm của gỗ và trắng của sơn tường tạo cảm giác ấm áp, hài hòa.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-chi-thoan-1.jpg\" /></p>\n\n<p>Một bức tranh cùng một vài điểm trang trí nhỏ trong căn phòng càng tôn thêm vẻ trẻ trung, cá tính.</p>\n\n<p>Không gian phòng tắm sạch sẽ, tiện nghi là cái chung để thiết kế nên. Phân chia khu vực khô, nước rất rõ ràng, lấy sự tiện lợi của kính làm vách ngăn giữa 2 không gian.</p>\n\n<p><img alt=\"\" src=\"https://gemihome.com/resources/uploads/images/automatic/san-pham/thiet-ke-thi-cong-noi-that-chi-thoan-4.jpg\" /></p>\n\n<p>Bên ngoài bao gồm bệ xí, lavabo rửa tay; mặt trong là nhà tắm đứng.</p>\n\n<p>Trên đây là mẫu thiết kế nhà lô đẹp mà Gemi Home đã thực hiện. Còn hàng trăm mẫu nhà đẹp có nộ thất cực sang khác đang chờ đón quý khách, hãy nhấp chuột vào website để xem tiếp.</p>\n', '', '', '', '', '', '', '', '', 'san-pham/', 'thiet-ke-thi-cong-noi-that-chi-thoan.jpg', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHỊ THOAN', 'thiet-ke-thi-cong-noi-that-chi-thoan', 0, 0, 0, 0, 0, 0, 120, '', 999, b'1', b'1', 'thiet-ke-va-thi-cong-noi-that-nha-chi-thoan', '', 'THIẾT KẾ VÀ THI CÔNG NỘI THẤT NHÀ CHỊ THOAN', 'thiet ke noi that, thiết kế nội thất', 'Là con người thoải mái nhưng không kém phần tinh tế Chị Thoan đã chọn một phong cách nội thất nhà phố hiện đại. Với tông màu gỗ ấm cúng cùng màu xám kết hợp với đèn trùm đã mang lại cho toàn bộ thiết kế phòng khách một cách mới lạ', 76, '', 15, 16, 18, 22, '2020-02-07 15:11:37', 1, 1, '2020-02-12 10:12:33', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productsrating`
--

CREATE TABLE `productsrating` (
  `ProductsRatingID` int(10) UNSIGNED NOT NULL,
  `ProductsID` int(10) UNSIGNED DEFAULT NULL,
  `Marks` smallint(5) UNSIGNED DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Comments` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `UnRead` bit(1) DEFAULT b'1',
  `CreatedDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productsrating`
--

INSERT INTO `productsrating` (`ProductsRatingID`, `ProductsID`, `Marks`, `Email`, `FullName`, `Title`, `Comments`, `UnRead`, `CreatedDate`) VALUES
(1, 1, 5, '', '', '', '', b'1', '2013-03-30 05:08:27'),
(2, 0, 0, '0', 'dangvanduc0@gmail.com', NULL, '0', b'1', '2017-01-05 13:38:39');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productsreferences`
--

CREATE TABLE `productsreferences` (
  `ProductsReferencesID` int(10) UNSIGNED NOT NULL,
  `ProductID` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `productstags`
--

CREATE TABLE `productstags` (
  `TagsID` int(11) NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Description` text COLLATE utf8_unicode_ci NOT NULL,
  `Slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `Publish` bit(1) NOT NULL,
  `SEOTitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `SEOKeyword` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `SEODescription` text COLLATE utf8_unicode_ci NOT NULL,
  `Orders` int(11) NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `productstags`
--

INSERT INTO `productstags` (`TagsID`, `Title`, `Description`, `Slug`, `Publish`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `Orders`, `CreatedDate`) VALUES
(1, 'Helios Tower', '', 'helios-tower', b'1', '', '', '', 999, '2017-02-20 08:28:58');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitments`
--

CREATE TABLE `recruitments` (
  `RecruitmentsID` int(10) UNSIGNED NOT NULL,
  `Description` varchar(2000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `recruitments`
--

INSERT INTO `recruitments` (`RecruitmentsID`, `Description`, `CreatedBy`, `CreatedDate`, `ModifiedBy`, `ModifiedDate`) VALUES
(1, '<p><strong>Oriflame Tp. Hồ Ch&iacute; Minh</strong><br />\r\n&nbsp; &nbsp; 1) Ms. Đỗ Ngọc Th&uacute;y<br />\r\n&nbsp; &nbsp; 0909502656<br />\r\n&nbsp; &nbsp; thuy.do@ngocthuyshop.com<br />\r\n&nbsp; &nbsp; MyPhamOriflame.vn<br />\r\n&nbsp; &nbsp; NgocThuyShop.com<br />\r\n&nbsp; &nbsp; NgocThuyGroup.com<br />\r\n&nbsp; &nbsp; 2) Mr. Nguyễn Trọng T&acirc;n<br />\r\n&nbsp; &nbsp; 0906 693 725<br />\r\n&nbsp; &nbsp; thegioioriflame@gmail.com<br />\r\n&nbsp; &nbsp; www.TheGioiOriflame.com<br />\r\n&nbsp; &nbsp; &nbsp;Oriflame H&agrave; Nội<br />\r\n&nbsp; &nbsp; Ms. Chu Thị Lan Anh (một th&agrave;nh &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; vi&ecirc;n rất năng động của Ngọc &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; Th&uacute;y Group tại H&agrave; Nội)<br />\r\n&nbsp; &nbsp; 01683 484 212<br />\r\n&nbsp; &nbsp; Nick Yahoo!: shoporiflame<br />\r\n&nbsp; &nbsp; www.OriflameHaNoi.com<br />\r\n&nbsp;<strong>Oriflame Hải Ph&ograve;ng</strong><br />\r\n&nbsp; &nbsp; Ms. L&ecirc; Thị Mai (đ/c: Số 19 ng&otilde; &nbsp; &nbsp;&nbsp;<br />\r\n&nbsp; &nbsp; phụ 1/240 T&ocirc; Hiệu, Trại Cau, L&ecirc; Ch&acirc;n, Hải Ph&ograve;ng)<br />\r\n&nbsp; &nbsp; 0904 156 099<br />\r\n&nbsp; &nbsp; www.OriflameMienBac.com</p>\r\n', NULL, '2013-04-01 08:48:03', 1, '2013-04-01 09:43:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `RolesID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`RolesID`, `Title`, `Description`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(1, 'admin', NULL, '2013-05-29 10:37:45', NULL, NULL, NULL),
(2, 'mod', NULL, '2013-05-29 10:37:53', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sections`
--

CREATE TABLE `sections` (
  `id` int(11) NOT NULL,
  `Title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Orders` tinyint(4) DEFAULT NULL,
  `Publish` bit(1) NOT NULL DEFAULT b'1',
  `CreatedDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sections`
--

INSERT INTO `sections` (`id`, `Title`, `Link`, `Orders`, `Publish`, `CreatedDate`) VALUES
(7, 'THIẾT KẾ NHÀ ĐẸP', 'https://gemihome.com/thiet-ke-kien-truc-nha-dep.html', 1, b'1', '2020-02-01 15:45:21'),
(8, 'THIẾT KẾ NỘI THẤT', 'https://gemihome.com/thiet-ke-noi-that.html', 2, b'1', '2020-02-01 15:45:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sections_products_pivot`
--

CREATE TABLE `sections_products_pivot` (
  `id` int(11) NOT NULL,
  `section_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sections_products_pivot`
--

INSERT INTO `sections_products_pivot` (`id`, `section_id`, `product_id`, `CreatedDate`) VALUES
(1, 1, 167, '2019-12-19 04:44:59'),
(2, 2, 167, '2019-12-19 04:44:59'),
(3, 1, 168, '2019-12-19 04:45:06'),
(4, 2, 166, '2019-12-19 04:45:13'),
(5, 3, 173, '2020-01-14 03:55:49'),
(8, 3, 171, '2020-01-14 03:57:59'),
(9, 4, 174, '2020-01-15 09:23:18'),
(10, 4, 175, '2020-01-15 09:27:48'),
(11, 4, 176, '2020-01-15 09:33:28'),
(12, 4, 177, '2020-01-17 03:34:35'),
(13, 4, 178, '2020-01-17 03:42:35'),
(14, 4, 179, '2020-01-17 03:48:52'),
(15, 4, 180, '2020-01-17 03:58:19'),
(16, 4, 181, '2020-01-17 04:03:22'),
(17, 4, 182, '2020-01-17 04:11:00'),
(18, 4, 183, '2020-01-17 04:17:05'),
(19, 4, 170, '2020-01-17 04:18:16'),
(187, 8, 219, '2020-02-12 09:27:13'),
(188, 8, 218, '2020-02-12 10:08:07'),
(190, 8, 239, '2020-02-12 10:12:33'),
(191, 8, 238, '2020-02-12 10:14:38'),
(192, 8, 237, '2020-02-12 10:16:04'),
(193, 8, 236, '2020-02-12 10:17:03'),
(194, 8, 235, '2020-02-12 10:18:25'),
(195, 8, 234, '2020-02-12 10:19:22'),
(197, 8, 232, '2020-02-12 10:20:30'),
(198, 8, 231, '2020-02-12 10:21:44'),
(199, 8, 220, '2020-02-12 10:23:01'),
(200, 8, 221, '2020-02-12 10:24:10'),
(201, 8, 222, '2020-02-12 10:25:01'),
(202, 8, 223, '2020-02-12 10:26:05'),
(203, 8, 224, '2020-02-12 10:27:23'),
(204, 8, 226, '2020-02-12 10:27:59'),
(205, 8, 227, '2020-02-12 10:29:19'),
(206, 8, 228, '2020-02-12 10:29:56'),
(208, 8, 230, '2020-02-12 11:12:59'),
(237, 7, 203, '2020-02-13 09:20:34'),
(238, 7, 202, '2020-02-13 09:37:46'),
(241, 7, 200, '2020-02-13 12:00:34'),
(244, 7, 217, '2020-02-13 12:07:04'),
(245, 7, 216, '2020-02-13 12:08:39'),
(246, 7, 215, '2020-02-13 13:09:59'),
(247, 7, 214, '2020-02-13 13:13:06'),
(248, 7, 212, '2020-02-13 13:14:54'),
(249, 7, 211, '2020-02-13 13:20:54'),
(250, 7, 210, '2020-02-13 13:24:11'),
(251, 7, 209, '2020-02-13 13:25:39'),
(252, 7, 208, '2020-02-13 13:28:34'),
(253, 7, 207, '2020-02-13 13:30:40'),
(255, 7, 205, '2020-02-13 13:32:12'),
(257, 7, 213, '2020-02-13 13:33:39'),
(258, 7, 201, '2020-02-13 13:35:26'),
(261, 7, 197, '2020-02-13 17:26:26'),
(264, 7, 193, '2020-02-14 00:27:48'),
(267, 7, 190, '2020-02-14 01:40:49'),
(269, 7, 188, '2020-02-14 02:38:55'),
(273, 7, 186, '2020-02-14 04:21:28'),
(276, 7, 169, '2020-02-14 06:29:10'),
(277, 7, 184, '2020-02-14 06:31:39'),
(278, 7, 185, '2020-02-14 06:33:05'),
(279, 7, 187, '2020-02-14 06:34:53'),
(280, 7, 189, '2020-02-14 06:39:41'),
(281, 7, 199, '2020-02-14 06:41:52'),
(282, 7, 198, '2020-02-14 06:43:01'),
(283, 7, 195, '2020-02-14 06:44:31'),
(284, 7, 194, '2020-02-14 06:44:58'),
(285, 7, 191, '2020-02-14 06:45:49'),
(286, 8, 225, '2020-02-14 09:02:51'),
(287, 8, 233, '2020-02-14 09:09:05'),
(288, 8, 229, '2020-02-14 09:15:42'),
(293, 7, 206, '2020-02-14 09:42:50'),
(295, 7, 204, '2020-02-14 10:00:07'),
(298, 7, 192, '2020-02-14 10:10:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seodefault`
--

CREATE TABLE `seodefault` (
  `SeoDefaultID` int(10) UNSIGNED NOT NULL,
  `SEOTitle` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeyword` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescription` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOTitleSearch` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeywordSearch` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescriptionSearch` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Copyright` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Slogan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CompanyName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Linkedin` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Google` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `seodefault`
--

INSERT INTO `seodefault` (`SeoDefaultID`, `SEOTitle`, `SEOKeyword`, `SEODescription`, `SEOTitleSearch`, `SEOKeywordSearch`, `SEODescriptionSearch`, `Copyright`, `Slogan`, `CompanyName`, `Facebook`, `Instagram`, `Linkedin`, `Google`) VALUES
(1, 'Gemihome - Không chỉ là thiết kế nhà chúng tôi thiết kế đẳng cấp của bạn', 'Thiết kế nhà phố, thiết kế biệt thự một tầng, thiết kế nhà ống', 'Gemihome với mong muốn mang thiết kế đến mọi nhà với giá cả hợp lý nhất. Đội ngũ làm việc chuyên nghiệp và kiến trúc sư tay nghề cao chắc chắn chúng tôi sẽ làm khách hàng hài lòng. Chúng tôi chuyên thiết kế nhà ống, nhà mặt phố, lô góc và biệt thự một tầng....', '[keyword] - trang tìm kiếm', '[keyword] - từ khóa trang tìm kiếm', '[keyword]- mô tả trang tìm kiếm', 'Content Copyright © 2017 by Gemisoft Việt Nam', 'Thiết Kế cho mọi nhà ', 'Công ty thiết kế nội thất và kiến trúc Gemihome ', 'https://www.facebook.com/nhadatthanhnam2001', 'https://www.facebook.com/902studio/', 'https://www.facebook.com/902studio/', 'https://www.facebook.com/902studio/');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `seolink`
--

CREATE TABLE `seolink` (
  `SeoLinkID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Link` varchar(255) NOT NULL,
  `Publish` bit(1) DEFAULT b'1',
  `CreatedDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `seolink`
--

INSERT INTO `seolink` (`SeoLinkID`, `Title`, `Link`, `Publish`, `CreatedDate`) VALUES
(6, 'công trình thực tế', 'cham-soc-co-ban', b'1', '2016-10-08 08:17:19'),
(12, 'Nội thất Royal City', 'cham-soc-co-ban', b'1', '2016-10-08 08:17:19'),
(13, 'Nội thất Royal City', 'cham-soc-co-ban', b'1', '2016-10-08 08:17:34'),
(15, 'Nội thất Royal City', 'cham-soc-co-ban', b'1', '2016-10-08 08:17:34'),
(16, 'Nội thất Royal City', 'cham-soc-co-ban', b'1', '2016-10-08 08:17:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sortingbrand`
--

CREATE TABLE `sortingbrand` (
  `SortingBrandID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_fr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParentID` int(10) UNSIGNED DEFAULT NULL,
  `Slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publish` bit(1) DEFAULT b'1',
  `IsTop` bit(1) DEFAULT NULL,
  `ImagePreset` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'danh-muc-hang-san-xuat/',
  `ImagesURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImagesTitle` text COLLATE utf8_unicode_ci NOT NULL,
  `ImagesAlt` text COLLATE utf8_unicode_ci NOT NULL,
  `Orders` smallint(5) UNSIGNED NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL,
  `SEOTitle` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeyword` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescription` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sortingbrand`
--

INSERT INTO `sortingbrand` (`SortingBrandID`, `Title`, `Title_en`, `Title_fr`, `Description`, `Body`, `ParentID`, `Slug`, `Publish`, `IsTop`, `ImagePreset`, `ImagesURL`, `ImagesTitle`, `ImagesAlt`, `Orders`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `SEOTitle`, `SEOKeyword`, `SEODescription`) VALUES
(15, 'Gỗ', 'Unknowns', 'Unknowns', '', '', 0, 'go', b'1', b'0', 'danh-muc-hang-san-xuat/', '', '', '', 999, '2020-01-12 15:23:01', 1, NULL, NULL, '', '', ''),
(10, 'Trắng', 'Unknowns', 'Unknowns', '', '', 0, 'trang', b'1', b'0', 'danh-muc-hang-san-xuat/', '', '', '', 999, '2019-12-31 15:08:25', 1, NULL, NULL, 'Trắng ', '', ''),
(13, 'Vàng', 'Unknowns', 'Unknowns', '', '', 0, 'vang', b'1', b'0', 'danh-muc-hang-san-xuat/', '', '', '', 999, '2019-12-31 15:10:51', 1, NULL, NULL, 'Vàng ', '', ''),
(12, 'Xanh', 'Unknowns', 'Unknowns', '', '', 0, 'xanh', b'1', b'0', 'danh-muc-hang-san-xuat/', '', '', '', 999, '2019-12-31 15:09:21', 1, NULL, NULL, 'Xanh ', '', ''),
(14, 'Xám', 'Unknowns', 'Unknowns', '', '', 0, 'xam', b'1', b'0', 'danh-muc-hang-san-xuat/', '', '', '', 999, '2019-12-31 15:44:49', 1, NULL, NULL, 'Xám ', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sortingchannel`
--

CREATE TABLE `sortingchannel` (
  `SortingChannelID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_fr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParentID` int(10) UNSIGNED DEFAULT NULL,
  `Slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publish` bit(1) DEFAULT b'1',
  `IsTop` bit(1) DEFAULT NULL,
  `ImagePreset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'danh-muc-so-kenh/',
  `ImagesURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImagesTitle` text COLLATE utf8_unicode_ci NOT NULL,
  `ImagesAlt` text COLLATE utf8_unicode_ci NOT NULL,
  `Orders` smallint(5) UNSIGNED NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL,
  `SEOTitle` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeyword` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescription` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sortingchannel`
--

INSERT INTO `sortingchannel` (`SortingChannelID`, `Title`, `Title_en`, `Title_fr`, `Description`, `Body`, `ParentID`, `Slug`, `Publish`, `IsTop`, `ImagePreset`, `ImagesURL`, `ImagesTitle`, `ImagesAlt`, `Orders`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `SEOTitle`, `SEOKeyword`, `SEODescription`) VALUES
(17, 'Phòng bếp', 'Unknowns', 'Unknowns', '', '', 0, 'phong-bep', b'1', b'0', 'danh-muc-so-kenh/', '', '', '', 999, '2019-12-29 04:35:11', 1, NULL, NULL, 'Thiết kế phòng bếp - Gemihome ', 'thiet ke phong bep, thiết kế phòng bếp ', 'Nhà là bếp bếp là tổ ấp. Mỗi bữa cơm là nơi sum họp gia đình. Với thiết kết đầy đủ tiện nghi thoải mái. Chắc chắn Gemi home sẽ làm bạn hài lòng '),
(18, 'Cả nhà', 'Unknowns', 'Unknowns', '', '', 0, 'ca-nha', b'1', b'0', 'danh-muc-so-kenh/', '', '', '', 999, '2020-01-17 03:49:12', 1, '2020-01-17 03:49:29', 1, 'Cả nhà ', '', ''),
(16, 'Phòng khách', 'Unknowns', 'Unknowns', '', '', 0, 'phong-khach', b'1', b'0', 'danh-muc-so-kenh/', '', '', '', 999, '2019-12-29 04:33:50', 1, NULL, NULL, 'Thiết kế phòng khách - Gemi home ', 'thiet ke phong khach, thiết kế phòng khách ', 'Là nơi tụ họp gia đình sau một ngày làm viêc, Phòng khách là nơi quây quần cả nhà xem phim nói truyện, nên phòng khách được trú trọng hơn bao giờ hết trong ngôi nhà '),
(15, 'Phòng ngủ', 'Unknowns', 'Unknowns', '', '', 0, 'phong-ngu', b'1', b'0', 'danh-muc-so-kenh/', '', '', '', 999, '2019-12-29 03:37:53', 1, '2019-12-29 04:32:36', 1, 'Thiết kế phòng ngủ - Gemihome ', 'thiet ke phong ngu, thiết kế phong ngủ ', 'Thiết kế phòng ngủ là điều vô cùng quan trong với một gia đình. Phòng ngủ là nơi ngả lưng sau một ngày làm việc. Giấc ngủ sau một ngày làm việc là vô cùng quan trọng, đem lại sự thoải mái');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sortingprice`
--

CREATE TABLE `sortingprice` (
  `SortingPriceID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_fr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParentID` int(10) UNSIGNED DEFAULT NULL,
  `Slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publish` bit(1) DEFAULT b'1',
  `IsTop` bit(1) DEFAULT NULL,
  `ImagePreset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'danh-muc-so-kenh/',
  `ImagesURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImagesTitle` text COLLATE utf8_unicode_ci NOT NULL,
  `ImagesAlt` text COLLATE utf8_unicode_ci NOT NULL,
  `Orders` smallint(5) UNSIGNED NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL,
  `SEOTitle` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeyword` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescription` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sortingprice`
--

INSERT INTO `sortingprice` (`SortingPriceID`, `Title`, `Title_en`, `Title_fr`, `Description`, `Body`, `ParentID`, `Slug`, `Publish`, `IsTop`, `ImagePreset`, `ImagesURL`, `ImagesTitle`, `ImagesAlt`, `Orders`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `SEOTitle`, `SEOKeyword`, `SEODescription`) VALUES
(21, '50 - 80M2', 'Unknowns', 'Unknowns', '', '', 0, '50-80m2', b'1', b'0', 'danh-muc-so-kenh/', 'danh-muc-do-phan-giai/', '', '', 999, '2019-12-29 13:56:21', 1, NULL, NULL, 'Thiết kế với diện tích 50 - 80M2 -Gemihome ', 'thiet ke dien tich 50 - 80M, thiết kế với diện tích 50 - 80M2 ', 'Là một khoảng diên tích rộng rãi khách hàng có thế lựa chọn những kiểu thiết kế như tẩn cổ điển hay để xe trong nhà. Diên tích 80M2 bạn có thể hoàn toàn bày trí theo ý mình muốn '),
(20, '20 - 50M2', 'Unknowns', 'Unknowns', '', '', 0, '20-50m2', b'1', b'0', 'danh-muc-so-kenh/', 'danh-muc-do-phan-giai/', '', '', 999, '2019-12-29 13:50:48', 1, NULL, NULL, 'Thiết kế với diện tích 20 - 50M2 -Gemihome ', 'thiet ke dien tich 20- 50m, thiết kế diện tích 20-50m ', 'Trong khoảng diện tích 20-50m là diện tích không gian lý tưởng cho 1 gia đình với diện tích này Gemihome sẽ thiết kế cho bạn căn phòng hay nhà đầy dủ công năng và nội thất đẹp '),
(19, 'Dưới 20M2', 'Unknowns', 'Unknowns', '', '', 0, 'duoi-20m2', b'1', b'0', 'danh-muc-so-kenh/', 'danh-muc-do-phan-giai/', '', '', 999, '2019-12-29 13:36:56', 1, '2019-12-29 13:52:05', 1, 'Thiết kế với diện tích dưới 20m2 - Gemihome ', 'thiet ke dien tich duoi 20m, thiết kế với diện tích dưới 20m ', 'Thiết kế diện tích dưới 20m là một diện tích vừa phải với phòng ngủ nhưng lại bé với phòng khách thế nên thiết kế như nào để cho không gian cảm giác rộng mà người dùng thấy thoải mái là điều khó khăn '),
(22, '80 -120M2', 'Unknowns', 'Unknowns', '', '', 0, '80-120m2', b'1', b'0', 'danh-muc-so-kenh/', 'danh-muc-do-phan-giai/', '', '', 999, '2019-12-29 14:02:15', 1, '2019-12-29 14:04:17', 1, 'Thiết kế với diện tích 80 - 120m2 - Gemihome ', 'thiet ke dien tich 80 -120m, Thiết kế diên tích 80 -120', 'Thường là những mảnh đất có mặt tiền 5m hoặc là lô góc khách hàng có thể thoải mái lựa chọn kiểu thiết kế, tân cổ hay hiện đại. Không gian rộng rãi mang lại sự thoáng đãng....'),
(23, 'Trên 120M2', 'Unknowns', 'Unknowns', '', '', 0, 'tren-120m2', b'1', b'0', 'danh-muc-so-kenh/', 'danh-muc-do-phan-giai/', '', '', 999, '2019-12-29 14:17:35', 1, NULL, NULL, 'Thiết kế diện tích trên 120M2 - GEMIHOME ', 'thiet ke dien tich 120m2, thiết kế diện tích 120m2 ', 'Vơi diện tích 120M2 trở nên thì thường là các kiểu thiết kế biệt thự. Những mẫu biệt thự một tầng và hai tầng Gemihome thiết kế sẽ làm khách hàng hài lòng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sortingres`
--

CREATE TABLE `sortingres` (
  `SortingResID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_fr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Body` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ParentID` int(10) UNSIGNED DEFAULT NULL,
  `Slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publish` bit(1) DEFAULT b'1',
  `IsTop` bit(1) DEFAULT NULL,
  `ImagePreset` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'danh-muc-do-phan-giai/',
  `ImagesURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImagesTitle` text COLLATE utf8_unicode_ci NOT NULL,
  `ImagesAlt` text COLLATE utf8_unicode_ci NOT NULL,
  `Orders` smallint(5) UNSIGNED NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL,
  `SEOTitle` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEOKeyword` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `SEODescription` text COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sortingres`
--

INSERT INTO `sortingres` (`SortingResID`, `Title`, `Title_en`, `Title_fr`, `Description`, `Body`, `ParentID`, `Slug`, `Publish`, `IsTop`, `ImagePreset`, `ImagesURL`, `ImagesTitle`, `ImagesAlt`, `Orders`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`, `SEOTitle`, `SEOKeyword`, `SEODescription`) VALUES
(15, 'Á Đông', 'Unknowns', 'Unknowns', '', '', 0, 'a-dong', b'1', b'0', 'danh-muc-do-phan-giai/', 'danh-muc-do-phan-giai/', '', '', 999, '2019-12-29 07:39:41', 1, '2019-12-29 07:45:10', 1, 'Thiết kế phong cách Á Đông - Gemihome ', 'thiet ke phong cách Á Đông, thiet ke phong cach a dong ', 'Thiết kế á đông phù hợp với phong cách của người việt nam. mang hởi hướng nét đẹp truyền thống cảm giác gần giũ, phong cách này phù hợp phối hợp chất liệu gỗ tự nhiên'),
(16, 'Hiện Đại', 'Unknowns', 'Unknowns', '', '', 0, 'hien-dai', b'1', b'0', 'danh-muc-do-phan-giai/', 'danh-muc-do-phan-giai/', '', '', 999, '2019-12-29 07:44:59', 1, NULL, NULL, 'Thiết kế phong cách Hiện Đại - GemiHome ', 'thiet ke phong cach hien dai, thiết kế phong cách hiện đại ', 'Phong cách hiện đại phù hợp với những người có tính cách trẻ trung. Ngôi nhà phong cách hiện đại mang hơi hướng nhịp thở của cuộc sống thành thị nhưng không kém phần tinh tế'),
(17, 'Tân Cổ Điển', 'Unknowns', 'Unknowns', '', '', 0, 'tan-co-dien', b'1', b'0', 'danh-muc-do-phan-giai/', 'danh-muc-do-phan-giai/', '', '', 999, '2019-12-29 07:48:26', 1, NULL, NULL, 'Thiết kế phong cách Tân Cổ Điển - Gemihome ', 'thiet ke phong cach tan co dien, thiết kế phong cách tân cổ điển ', 'Phong cách tân cổ điển được phát triển thời kỳ phục hưng. Mang hơi hướng của sự sáng trọng quý phái nhưng lại không kép phần hiện đại. Phong cách tân cổ điển được xây với hoạ tiết cầu kỳ phào chỉ làm cho ngôi nhà của bạn ấn tượng thể hiện được đẳng cấp ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `speakers`
--

CREATE TABLE `speakers` (
  `Id` int(10) UNSIGNED NOT NULL,
  `FullName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullName_en` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Slug` varchar(355) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Position` varchar(355) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Position_en` varchar(355) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImgUrl` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImgInformation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImgInformation_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publish` bit(1) DEFAULT NULL,
  `Orders` double UNSIGNED DEFAULT 999,
  `tabs_nhansu` int(10) UNSIGNED DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statistics`
--

CREATE TABLE `statistics` (
  `StatisticsID` int(10) UNSIGNED NOT NULL,
  `Source` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publish` bit(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `subscribe`
--

CREATE TABLE `subscribe` (
  `SubscribeID` int(11) NOT NULL,
  `Email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `gender` tinyint(1) DEFAULT 1,
  `phone` varchar(255) CHARACTER SET latin1 DEFAULT NULL,
  `message` text CHARACTER SET latin1 DEFAULT NULL,
  `ProductsID` int(11) DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supportonline`
--

CREATE TABLE `supportonline` (
  `SupportOnlineID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Title_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullName_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Skype` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Orders` smallint(5) UNSIGNED DEFAULT NULL,
  `Publish` bit(1) DEFAULT NULL,
  `Yahoo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `CreatedBy` int(10) UNSIGNED DEFAULT NULL,
  `ModifiedDate` timestamp NULL DEFAULT NULL,
  `ModifiedBy` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supportonline`
--

INSERT INTO `supportonline` (`SupportOnlineID`, `Title`, `FullName`, `Title_en`, `FullName_en`, `Phone`, `Email`, `Skype`, `Orders`, `Publish`, `Yahoo`, `CreatedDate`, `CreatedBy`, `ModifiedDate`, `ModifiedBy`) VALUES
(1, 'Tư vấn bán hàng', 'Mr: Hưng', NULL, NULL, '01649 558 566', 'xuancamera@gmail.com', 'kd_fptcamera', 1, b'1', 'kd_fptcamera', '2015-04-02 07:16:58', 1, '2015-08-01 07:56:43', 1),
(2, 'tu van ban hang 2', 'Nguyen Van A', NULL, NULL, '0914 580 021', 'aaaa@gmail.com', 'sfsdfd', 2, b'0', 'dfssdfsdf', '2015-06-16 11:18:53', 1, '2015-08-01 07:05:01', 1),
(3, 'tu van ban hang 3', 'Ha sdsad', NULL, NULL, '092343243', 'sdasdas@fe.com', 'sdf', 999, b'0', 'sdfsdf', '2015-06-16 11:19:22', 1, '2015-08-01 07:05:02', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tabs_nhansu`
--

CREATE TABLE `tabs_nhansu` (
  `Id` int(11) NOT NULL,
  `tabs_nhansu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullName_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Position_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Description_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImageURL` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImgInformation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ImgInformation_en` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Orders` int(11) DEFAULT 999,
  `Publish` tinyint(5) DEFAULT 1,
  `Slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `testimonials`
--

CREATE TABLE `testimonials` (
  `TestimonialsID` int(10) UNSIGNED NOT NULL,
  `AvatarURL` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `FullName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Publish` bit(1) DEFAULT NULL,
  `TestimonialContent` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `TestimonialContent_en` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NULL DEFAULT current_timestamp(),
  `Orders` smallint(6) DEFAULT 999
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `FirstName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `LastName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT 1,
  `banned` tinyint(1) NOT NULL DEFAULT 0,
  `ban_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_password_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_password_requested` datetime DEFAULT NULL,
  `new_email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `new_email_key` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `FirstName`, `LastName`, `email`, `phone`, `address`, `activated`, `banned`, `ban_reason`, `new_password_key`, `new_password_requested`, `new_email`, `new_email_key`, `last_ip`, `last_login`, `created`, `modified`) VALUES
(1, 'dangvanduc90', 'e10adc3949ba59abbe56e057f20f883e', 'dang', 'duc', 'dangvanduc0@gmail.com', '091.234.0789', 'dinh cong, hoang mai, ha noi', 1, 0, NULL, NULL, NULL, NULL, NULL, '', '0000-00-00 00:00:00', '2017-01-09 19:14:39', '2017-01-09 12:43:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_autologin`
--

CREATE TABLE `user_autologin` (
  `key_id` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `user_agent` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_ip` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_profiles`
--

CREATE TABLE `user_profiles` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `country` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `utility`
--

CREATE TABLE `utility` (
  `UtilityID` int(10) UNSIGNED NOT NULL,
  `Title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Target` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `Follow` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `webinfor`
--

CREATE TABLE `webinfor` (
  `WebInfoID` int(10) UNSIGNED NOT NULL,
  `Footer` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Footer_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `EmailForm` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactText` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `ContactText_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Gioithieu` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `Gioithieu_en` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `LinkVideoGioithieu` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `LinkDetailGioiThieu` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BannerFaq` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BannerPeople` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BannerCertificate` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `BanneCustomerRating` varchar(1000) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `webinfor`
--

INSERT INTO `webinfor` (`WebInfoID`, `Footer`, `Footer_en`, `EmailForm`, `ContactText`, `ContactText_en`, `Gioithieu`, `Gioithieu_en`, `LinkVideoGioithieu`, `LinkDetailGioiThieu`, `BannerFaq`, `BannerPeople`, `BannerCertificate`, `BanneCustomerRating`) VALUES
(1, '<h3>Pham Gia&rsquo;s Travel Company JSC</h3>\r\n\r\n<h3>Address: 19 Nguyễn Tr&atilde;i - Thanh Xu&acirc;n- H&agrave; Nội</h3>\r\n\r\n<h3>MST: 0302 49 55 74. Mobile: 3920.5095 - Fax: 3920.5377</h3>\r\n\r\n<h3>Giấy ph&eacute;p kinh doanh số: 0302495574-005 ng&agrave;y 31/03/2014 do Sở Kế hoạch v&agrave; Đầu tư Tp. HN cấp.</h3>\r\n', '', 'contact@travelchannel.com', '<h3>Pham Gia&rsquo;s Travel Company JSC</h3>\r\n\r\n<h3>Address: 19 Nguyễn Tr&atilde;i - Thanh Xu&acirc;n- H&agrave; Nội</h3>\r\n\r\n<h3>MST: 0302 49 55 74. Mobile: 3920.5095 - Fax: 3920.5377</h3>\r\n\r\n<h3>Giấy ph&eacute;p kinh doanh số: 0302495574-005 ng&agrave;y 31/03/2014 do Sở Kế hoạch v&agrave; Đầu tư Tp. HN cấp.</h3>\r\n', '', 'Xuất phát từ ý tưởng của PGS. Tiến sỹ, Nhà giáo ưu tú TRỊNH ĐÌNH ĐẠT, nguyên Chủ nhiệm Bộ môn Di truyền, Phó chủ nhiệm Khoa Sinh học Trường ĐH Khoa học Tự nhiên - ĐH Quốc gia Hà Nội về việc thiết lập lên một phòng thí nghiệm tiêu chuẩn phân tích di truyền gen di truyền', 'Starting from the idea of Assoc.Ph.D.,a distinguished teachercrest TRỊNH ĐÌNH ĐẠT, former Chairman of the Department of Genetics,Biology Department,Vice Chairman', '<iframe width=\"308\" height=\"173\" src=\"http://www.youtube.com/embed/kWk9khY59mI?rel=0&autohide=1&wmode=transparent\" frameborder=\"0\" allowfullscreen></iframe>', 'http://phantichadn.com.vn/vi/t/gioi-thieu-ve-gentis-m14', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xetnghiem`
--

CREATE TABLE `xetnghiem` (
  `Id` int(11) NOT NULL,
  `ma_xet_nghiem` int(11) DEFAULT NULL,
  `ho_ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `anh_xet_nghiem` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dia_chi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_dien_thoai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `CreatedDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `ModifiedDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `CreatedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ModifiedBy` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`UsersID`);

--
-- Chỉ mục cho bảng `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`AdsID`);

--
-- Chỉ mục cho bảng `adsgroups`
--
ALTER TABLE `adsgroups`
  ADD PRIMARY KEY (`AdsGroupsID`);

--
-- Chỉ mục cho bảng `answers_poll`
--
ALTER TABLE `answers_poll`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`BannerID`);

--
-- Chỉ mục cho bảng `block`
--
ALTER TABLE `block`
  ADD PRIMARY KEY (`HotlineID`);

--
-- Chỉ mục cho bảng `call_us`
--
ALTER TABLE `call_us`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `categoriesnews`
--
ALTER TABLE `categoriesnews`
  ADD PRIMARY KEY (`CategoriesNewsID`),
  ADD KEY `Id_cate_index` (`CategoriesNewsID`),
  ADD KEY `Title_cate_index` (`Title`),
  ADD KEY `Title_en_cate_index` (`Title_en`),
  ADD KEY `Slug_cate_index` (`Slug`),
  ADD KEY `CreatedDate_cate_index` (`CreatedDate`),
  ADD KEY `ParentID_cate_index` (`ParentID`);

--
-- Chỉ mục cho bảng `categoriesproducts`
--
ALTER TABLE `categoriesproducts`
  ADD PRIMARY KEY (`CategoriesProductsID`),
  ADD KEY `Fk_ParentID_Category_product_idx` (`ParentID`);

--
-- Chỉ mục cho bảng `chungchi`
--
ALTER TABLE `chungchi`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`CommentsID`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CustomersID`);

--
-- Chỉ mục cho bảng `dich_vu`
--
ALTER TABLE `dich_vu`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_faqs_index` (`Id`),
  ADD KEY `Order_faqs_index` (`Orders`),
  ADD KEY `CreateDate_faqs_idnex` (`CreatedDate`);

--
-- Chỉ mục cho bảng `favicons`
--
ALTER TABLE `favicons`
  ADD PRIMARY KEY (`FaviconsID`);

--
-- Chỉ mục cho bảng `footer`
--
ALTER TABLE `footer`
  ADD PRIMARY KEY (`FooterID`);

--
-- Chỉ mục cho bảng `hotline`
--
ALTER TABLE `hotline`
  ADD PRIMARY KEY (`HotlineID`);

--
-- Chỉ mục cho bảng `imageproducts`
--
ALTER TABLE `imageproducts`
  ADD PRIMARY KEY (`ImageProductsID`);

--
-- Chỉ mục cho bảng `linkpartners`
--
ALTER TABLE `linkpartners`
  ADD PRIMARY KEY (`LinkPartnersID`);

--
-- Chỉ mục cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`LogosID`);

--
-- Chỉ mục cho bảng `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`MenuID`),
  ADD KEY `Id_menu_index` (`MenuID`),
  ADD KEY `Title_menu_index` (`Title`),
  ADD KEY `Title_en_menu_index` (`Title_en`),
  ADD KEY `ParentId_menu_index` (`ParentID`),
  ADD KEY `Slug_menu_index` (`Slug`),
  ADD KEY `Url_menu_index` (`Url`(255)),
  ADD KEY `CreatedDate` (`CreatedDate`);

--
-- Chỉ mục cho bảng `menuhot`
--
ALTER TABLE `menuhot`
  ADD PRIMARY KEY (`MenuID`),
  ADD KEY `Id_menu_index` (`MenuID`),
  ADD KEY `Title_menu_index` (`Title`),
  ADD KEY `Title_en_menu_index` (`Title_en`),
  ADD KEY `ParentId_menu_index` (`ParentID`),
  ADD KEY `Slug_menu_index` (`Slug`),
  ADD KEY `Url_menu_index` (`Url`(255)),
  ADD KEY `CreatedDate` (`CreatedDate`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`NewsID`),
  ADD KEY `Id_index` (`NewsID`),
  ADD KEY `Title_index` (`Title`),
  ADD KEY `Title_en_index` (`Title_en`),
  ADD KEY `Cate_index` (`CategoriesNewsID`),
  ADD KEY `CreatedDate_index` (`CreatedDate`),
  ADD KEY `5hostest_index` (`Is5Hotest`);

--
-- Chỉ mục cho bảng `newstags`
--
ALTER TABLE `newstags`
  ADD PRIMARY KEY (`TagsID`);

--
-- Chỉ mục cho bảng `onepages`
--
ALTER TABLE `onepages`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OrdersID`);

--
-- Chỉ mục cho bảng `ordershipping`
--
ALTER TABLE `ordershipping`
  ADD PRIMARY KEY (`OrdersShippingID`);

--
-- Chỉ mục cho bảng `orderstatus`
--
ALTER TABLE `orderstatus`
  ADD PRIMARY KEY (`OrderStatusID`);

--
-- Chỉ mục cho bảng `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `Id_index` (`Id`),
  ADD KEY `Title_index` (`Title`),
  ADD KEY `Title_en_index` (`Title_en`),
  ADD KEY `CreatedDate_index` (`CreatedDate`);

--
-- Chỉ mục cho bảng `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`PaymentsID`);

--
-- Chỉ mục cho bảng `permissfunc`
--
ALTER TABLE `permissfunc`
  ADD PRIMARY KEY (`PermissFuncID`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`RolesID`,`PermissFuncID`);

--
-- Chỉ mục cho bảng `polls`
--
ALTER TABLE `polls`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ProductsID`);

--
-- Chỉ mục cho bảng `productsrating`
--
ALTER TABLE `productsrating`
  ADD PRIMARY KEY (`ProductsRatingID`);

--
-- Chỉ mục cho bảng `productsreferences`
--
ALTER TABLE `productsreferences`
  ADD PRIMARY KEY (`ProductsReferencesID`,`ProductID`);

--
-- Chỉ mục cho bảng `productstags`
--
ALTER TABLE `productstags`
  ADD PRIMARY KEY (`TagsID`);

--
-- Chỉ mục cho bảng `recruitments`
--
ALTER TABLE `recruitments`
  ADD PRIMARY KEY (`RecruitmentsID`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`RolesID`);

--
-- Chỉ mục cho bảng `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sections_products_pivot`
--
ALTER TABLE `sections_products_pivot`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `seodefault`
--
ALTER TABLE `seodefault`
  ADD PRIMARY KEY (`SeoDefaultID`);

--
-- Chỉ mục cho bảng `seolink`
--
ALTER TABLE `seolink`
  ADD PRIMARY KEY (`SeoLinkID`);

--
-- Chỉ mục cho bảng `sortingbrand`
--
ALTER TABLE `sortingbrand`
  ADD PRIMARY KEY (`SortingBrandID`),
  ADD KEY `Fk_ParentID_Category_product_idx` (`ParentID`);

--
-- Chỉ mục cho bảng `sortingchannel`
--
ALTER TABLE `sortingchannel`
  ADD PRIMARY KEY (`SortingChannelID`),
  ADD KEY `Fk_ParentID_Category_product_idx` (`ParentID`);

--
-- Chỉ mục cho bảng `sortingprice`
--
ALTER TABLE `sortingprice`
  ADD PRIMARY KEY (`SortingPriceID`),
  ADD KEY `Fk_ParentID_Category_product_idx` (`ParentID`);

--
-- Chỉ mục cho bảng `sortingres`
--
ALTER TABLE `sortingres`
  ADD PRIMARY KEY (`SortingResID`),
  ADD KEY `Fk_ParentID_Category_product_idx` (`ParentID`);

--
-- Chỉ mục cho bảng `speakers`
--
ALTER TABLE `speakers`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `statistics`
--
ALTER TABLE `statistics`
  ADD PRIMARY KEY (`StatisticsID`);

--
-- Chỉ mục cho bảng `subscribe`
--
ALTER TABLE `subscribe`
  ADD PRIMARY KEY (`SubscribeID`);

--
-- Chỉ mục cho bảng `supportonline`
--
ALTER TABLE `supportonline`
  ADD PRIMARY KEY (`SupportOnlineID`);

--
-- Chỉ mục cho bảng `tabs_nhansu`
--
ALTER TABLE `tabs_nhansu`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`TestimonialsID`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `user_autologin`
--
ALTER TABLE `user_autologin`
  ADD PRIMARY KEY (`key_id`,`user_id`);

--
-- Chỉ mục cho bảng `user_profiles`
--
ALTER TABLE `user_profiles`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `utility`
--
ALTER TABLE `utility`
  ADD PRIMARY KEY (`UtilityID`);

--
-- Chỉ mục cho bảng `webinfor`
--
ALTER TABLE `webinfor`
  ADD PRIMARY KEY (`WebInfoID`);

--
-- Chỉ mục cho bảng `xetnghiem`
--
ALTER TABLE `xetnghiem`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `UsersID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `ads`
--
ALTER TABLE `ads`
  MODIFY `AdsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `adsgroups`
--
ALTER TABLE `adsgroups`
  MODIFY `AdsGroupsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `answers_poll`
--
ALTER TABLE `answers_poll`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `banner`
--
ALTER TABLE `banner`
  MODIFY `BannerID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `block`
--
ALTER TABLE `block`
  MODIFY `HotlineID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `call_us`
--
ALTER TABLE `call_us`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categoriesnews`
--
ALTER TABLE `categoriesnews`
  MODIFY `CategoriesNewsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `categoriesproducts`
--
ALTER TABLE `categoriesproducts`
  MODIFY `CategoriesProductsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT cho bảng `chungchi`
--
ALTER TABLE `chungchi`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `CommentsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `customers`
--
ALTER TABLE `customers`
  MODIFY `CustomersID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `dich_vu`
--
ALTER TABLE `dich_vu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `faqs`
--
ALTER TABLE `faqs`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `favicons`
--
ALTER TABLE `favicons`
  MODIFY `FaviconsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `footer`
--
ALTER TABLE `footer`
  MODIFY `FooterID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `hotline`
--
ALTER TABLE `hotline`
  MODIFY `HotlineID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `imageproducts`
--
ALTER TABLE `imageproducts`
  MODIFY `ImageProductsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1188;

--
-- AUTO_INCREMENT cho bảng `linkpartners`
--
ALTER TABLE `linkpartners`
  MODIFY `LinkPartnersID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `logos`
--
ALTER TABLE `logos`
  MODIFY `LogosID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `menu`
--
ALTER TABLE `menu`
  MODIFY `MenuID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT cho bảng `menuhot`
--
ALTER TABLE `menuhot`
  MODIFY `MenuID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `NewsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=376;

--
-- AUTO_INCREMENT cho bảng `newstags`
--
ALTER TABLE `newstags`
  MODIFY `TagsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT cho bảng `onepages`
--
ALTER TABLE `onepages`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `OrdersID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `ordershipping`
--
ALTER TABLE `ordershipping`
  MODIFY `OrdersShippingID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orderstatus`
--
ALTER TABLE `orderstatus`
  MODIFY `OrderStatusID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `partners`
--
ALTER TABLE `partners`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `payments`
--
ALTER TABLE `payments`
  MODIFY `PaymentsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `permissfunc`
--
ALTER TABLE `permissfunc`
  MODIFY `PermissFuncID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `polls`
--
ALTER TABLE `polls`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `ProductsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT cho bảng `productsrating`
--
ALTER TABLE `productsrating`
  MODIFY `ProductsRatingID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `productstags`
--
ALTER TABLE `productstags`
  MODIFY `TagsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `RolesID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `sections_products_pivot`
--
ALTER TABLE `sections_products_pivot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=299;

--
-- AUTO_INCREMENT cho bảng `seodefault`
--
ALTER TABLE `seodefault`
  MODIFY `SeoDefaultID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `seolink`
--
ALTER TABLE `seolink`
  MODIFY `SeoLinkID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `sortingbrand`
--
ALTER TABLE `sortingbrand`
  MODIFY `SortingBrandID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `sortingchannel`
--
ALTER TABLE `sortingchannel`
  MODIFY `SortingChannelID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `sortingprice`
--
ALTER TABLE `sortingprice`
  MODIFY `SortingPriceID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `sortingres`
--
ALTER TABLE `sortingres`
  MODIFY `SortingResID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `speakers`
--
ALTER TABLE `speakers`
  MODIFY `Id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `statistics`
--
ALTER TABLE `statistics`
  MODIFY `StatisticsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `subscribe`
--
ALTER TABLE `subscribe`
  MODIFY `SubscribeID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT cho bảng `supportonline`
--
ALTER TABLE `supportonline`
  MODIFY `SupportOnlineID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tabs_nhansu`
--
ALTER TABLE `tabs_nhansu`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `TestimonialsID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user_profiles`
--
ALTER TABLE `user_profiles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `utility`
--
ALTER TABLE `utility`
  MODIFY `UtilityID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `webinfor`
--
ALTER TABLE `webinfor`
  MODIFY `WebInfoID` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `xetnghiem`
--
ALTER TABLE `xetnghiem`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
