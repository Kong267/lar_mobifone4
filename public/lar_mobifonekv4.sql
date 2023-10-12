-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1:3307
-- Thời gian đã tạo: Th10 11, 2023 lúc 05:04 AM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `lar_mobifonekv4`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `info_companies`
--

CREATE TABLE `info_companies` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_logo` varchar(191) DEFAULT NULL,
  `favicon` varchar(191) DEFAULT NULL,
  `address` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `map` text NOT NULL,
  `facebook` text DEFAULT NULL,
  `tiktok` text DEFAULT NULL,
  `zalo` text DEFAULT NULL,
  `youtube` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_logo_path` varchar(191) DEFAULT NULL,
  `image_favicon_path` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `info_companies`
--

INSERT INTO `info_companies` (`id`, `image_logo`, `favicon`, `address`, `email`, `phone`, `map`, `facebook`, `tiktok`, `zalo`, `youtube`, `created_at`, `updated_at`, `image_logo_path`, `image_favicon_path`) VALUES
(3, '2 xanh đỏ .png', 'English logo XĐ 2.png', 'Tòa nhà MobiFone - Khu Đồng Mạ - P. Tiên Cát - TP Việt Trì - T. Phú Thọ', 'mobifonekv4@mobifone.vn', '0899838838', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59471.43160630164!2d105.3398740486328!3d21.31242!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3134f3b59d1746f7%3A0xcb2964dd35567dab!2zQ8O0bmcgdHkgZOG7i2NoIHbhu6UgTW9iaUZvbmUga2h1IHbhu7FjIDQ!5e0!3m2!1svi!2s!4v1690379681652!5m2!1svi!2s\" width=\"600\" height=\"450\" style=\"border:0;\" allowfullscreen=\"\" loading=\"lazy\" referrerpolicy=\"no-referrer-when-downgrade\"></iframe>', 'https://www.facebook.com/mobifonekv4.vn', 'https://www.tiktok.com/@mobifonekv4', 'https://zalo.me/626767492003379900?gidzl=pAGh9RQ-XN3Clo8gkwECSyAwBosZy8XqZRju8FEXt7sFjoWZyQtRUeYxVNJnh8qksxLvTJbFBvPiihk9Vm', 'https://www.youtube.com/channel/UCOsP75SL3f-EM7z4eylRbJQ', '2023-07-26 08:25:37', '2023-07-26 09:59:09', '/storage/logo/1/26072023_031649_2hQluK4cDl.png', '/storage/logo/1/26072023_031649_AsLj6o9gIu.png');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug_name` varchar(191) NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug_name`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, 'Trang Chủ', 'trang-chu', 0, '2023-07-14 02:14:09', '2023-07-14 02:14:09'),
(2, 'Về MobiFone KV4', 've-mobifone-kv4', 0, '2023-07-14 02:14:32', '2023-07-14 02:14:32'),
(3, 'Giới thiệu công ty', 'gioi-thieu-cong-ty', 2, '2023-07-14 02:43:31', '2023-07-14 02:43:31'),
(4, 'Hoạt động sxkd', 'hoat-dong-sxkd', 2, '2023-07-14 02:44:04', '2023-07-14 02:44:04'),
(5, 'Thi đua khen thưởng', 'thi-dua-khen-thuong', 2, '2023-07-14 02:46:05', '2023-07-14 02:46:05'),
(6, 'Sáng kiến', 'sang-kien', 2, '2023-07-14 02:46:20', '2023-07-14 02:46:20'),
(7, 'An sinh xã hội', 'an-sinh-xa-hoi', 2, '2023-07-14 02:46:32', '2023-07-14 02:46:32'),
(8, 'Tuyển dụng', 'tuyen-dung', 2, '2023-07-14 02:46:48', '2023-07-14 02:46:48'),
(9, 'Sản phẩm - Dịch vụ', 'san-pham-dich-vu', 0, '2023-07-14 02:47:02', '2023-07-14 02:47:02'),
(10, 'Tin tức', 'tin-tuc', 0, '2023-07-14 02:47:15', '2023-07-14 02:47:15'),
(11, 'Liên hệ', 'lien-he', 0, '2023-07-14 02:47:22', '2023-07-14 02:47:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_07_13_101859_create_news_categories_table', 1),
(6, '2023_07_14_080733_create_menuses_table', 2),
(7, '2023_07_14_085436_create_menus_table', 3),
(8, '2023_07_17_031025_create_news_table', 4),
(9, '2023_07_17_034704_create_tags_table', 4),
(10, '2023_07_17_034756_create_news_tags_table', 4),
(11, '2023_07_17_092959_add_column_tags_to_news_table', 5),
(12, '2023_07_26_072524_create_info_companies_table', 5),
(13, '2023_07_26_081200_add_colume_image__logo_path_to_table_info_companies', 6),
(14, '2023_07_26_081228_add_colume_image_favicon_path_to_table_info_companies', 6),
(15, '2023_07_27_015136_create_recruitments_table', 7),
(16, '2023_07_27_080805_create_product_categories_table', 8),
(17, '2023_07_27_090302_create_products_table', 9);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text NOT NULL,
  `short_content` text NOT NULL,
  `content` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `image_name` varchar(191) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_path` varchar(255) DEFAULT NULL,
  `show_app` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `tags` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`id`, `title`, `short_content`, `content`, `date`, `image_name`, `category_id`, `created_at`, `updated_at`, `image_path`, `show_app`, `status`, `user_id`, `slug`, `tags`) VALUES
(1, 'PHÁT ĐỘNG THI ĐUA VÀ ĐĂNG KÝ SÁNG KIẾN 06 THÁNG ĐẦU NĂM 2023', '<p><span style=\"font-size:14px\"><em>Nhằm khuyến kh&iacute;ch hoạt động s&aacute;ng tạo, đổi mới, ứng dụng KH&amp;CN v&agrave; kịp thời ph&aacute;t hiện s&aacute;ng kiến hay để &aacute;p dụng, triển khai nh&acirc;n rộng phục vụ hoạt động sản xuất kinh doanh,&nbsp;Chủ tịch Hội đồng Khoa học v&agrave; C&ocirc;ng nghệ cơ sở C&ocirc;ng ty Dịch vụ MobiFone Khu vực 4 ph&aacute;t động v&agrave; y&ecirc;u cầu L&atilde;nh đạo c&aacute;c đơn vị v&agrave; c&aacute;c CB-CNV t&iacute;ch cực tham gia phong tr&agrave;o s&aacute;ng kiến 06 th&aacute;ng đầu năm 2023, cụ thể như sau:</em></span></p>', '<p><strong>1. Thủ tục đăng k&yacute; s&aacute;ng kiến</strong></p>\r\n\r\n<p>-&nbsp;C&aacute;n bộ chủ tr&igrave; ho&agrave;n thiện thuyết minh s&aacute;ng kiến, lấy chữ k&yacute; x&aacute;c nhận của c&aacute;c th&agrave;nh vi&ecirc;n tham gia v&agrave; gửi hồ sơ k&egrave;m theo slide thuyết minh về Hội đồng KH&amp;CN cơ sở C&ocirc;ng ty.</p>\r\n\r\n<p>-&nbsp;Thời hạn gửi đăng k&yacute;:&nbsp;<strong>Trước ng&agrave;y 25/06/2023.</strong></p>\r\n\r\n<p><strong>2. Thời gian tổ chức x&eacute;t duyệt s&aacute;ng kiến:</strong></p>\r\n\r\n<p>-&nbsp;Từ ng&agrave;y 25/06/2023 đến ng&agrave;y 30/06/2023 (theo lịch Hội đồng KH&amp;CN Tổng c&ocirc;ng ty&nbsp;sắp xếp).</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/storage/photos/1/news/64b7e8b9696ca.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p><strong>3. Định hướng nội dung của s&aacute;ng kiến:</strong></p>\r\n\r\n<p>- S&aacute;ng kiến trong ứng dụng c&ocirc;ng nghệ nền tảng, c&ocirc;ng nghệ mới: AI/ML; IoT; Big data;&nbsp;Blockchain; Điện to&aacute;n đ&aacute;m m&acirc;y; C&ocirc;ng nghệ bản sao số (Digital twin); C&ocirc;ng nghệ&nbsp;AR/VR; Cybersecurity; C&ocirc;ng nghệ mạng thế hệ sau (4G, 5G);</p>\r\n\r\n<p>- S&aacute;ng kiến trong ph&aacute;t triển kinh doanh c&aacute;c sản phẩm, dịch vụ giải ph&aacute;p KH&amp;CN hội tụ&nbsp;c&aacute;c lĩnh vực: Hạ tầng số, Giải ph&aacute;p số/Nền tảng số v&agrave; nội dung số, cụ thể:</p>\r\n\r\n<p>+ Họp trực tuyến; Dạy học trực tuyến; H&oacute;a đơn điện tử; Dữ liệu số n&ocirc;ng nghiệp; Truy&nbsp;xuất nguồn gốc n&ocirc;ng sản; Hồ sơ sức khỏe điện tử; Ph&aacute;t thanh số (trực tuyến); Truyền&nbsp;h&igrave;nh số (trực tuyến); Bảo t&agrave;ng số; Quản trị v&agrave; kinh doanh du lịch.</p>\r\n\r\n<p>+ Ph&aacute;t triển kinh doanh c&aacute;c sản phẩm, dịch vụ nội dung số thuộc c&aacute;c lĩnh vực: Cloud&nbsp;services, Digital education, Digital health, Digital security, Smart home, Smart parking,Youth brand.</p>\r\n\r\n<p>- V&agrave; một số lĩnh vực kh&aacute;c: C&aacute;c hoạt động quản trị, quản l&yacute; hợp t&aacute;c nghi&ecirc;n cứu ph&aacute;t&nbsp;triển v&agrave; đổi mới s&aacute;ng tạo; Chuyển đổi số; Quản trị doanh nghiệp, m&ocirc; h&igrave;nh tổ chức, k&ecirc;nh&nbsp;ph&acirc;n phối; Đ&agrave;o tạo; Ph&aacute;t triển nguồn nh&acirc;n lực chất lượng cao, ...&nbsp;</p>\r\n\r\n<ul>\r\n	<li><em>Chi tiết xem tại c&ocirc;ng văn số: 555/MOBIFONE4-KH&amp;CN&nbsp;ng&agrave;y 09/06/2023.</em></li>\r\n</ul>\r\n\r\n<p>&nbsp;</p>', '2023-10-10 02:43:48', 'banner-home-03-1.png', 4, '2023-07-19 13:45:18', '2023-07-19 13:45:18', '/storage/news/1/19072023_081845_wQvFeyUuAy.png', 1, 1, 1, NULL, '1'),
(2, 'PHÁT ĐỘNG PHONG TRÀO THI ĐUA 06 THÁNG CUỐI NĂM 2023 “30 NĂM MOBIFONE – VỮNG TIN, CHUYỂN MÌNH VÀO KHÔNG GIAN MỚI”', '<p><span style=\"font-size:14px\"><em>Trong 06 th&aacute;ng đầu năm 2023, C&ocirc;ng ty Dịch vụ MobiFone Khu vực 4 đ&atilde; trải qua nhiều kh&oacute; khăn, th&aacute;ch thức trong hoạt động sản xuất kinh doanh. Với tinh thần đo&agrave;n kết, sự nỗ lực của CBCNV to&agrave;n C&ocirc;ng ty, chủ động, linh hoạt, th&iacute;ch ứng triển khai nhiều giải ph&aacute;p đồng bộ, c&aacute;c phong tr&agrave;o thi đua thiết thực mang lại hiệu quả, g&oacute;p phần thực hiện tốt c&aacute;c nhiệm vụ được giao.</em></span></p>', '<p>Tr&ecirc;n tinh thần đ&oacute;, nhằm tiếp tục ph&aacute;t huy hơn nữa những th&agrave;nh t&iacute;ch C&ocirc;ng ty đ&atilde; đạt được, quyết t&acirc;m ho&agrave;n th&agrave;nh c&aacute;c nhiệm vụ, kế hoạch sản xuất kinh doanh được giao năm 2023. Ban L&atilde;nh đạo C&ocirc;ng ty v&agrave; Ban chấp h&agrave;nh C&ocirc;ng đo&agrave;n C&ocirc;ng ty 4 ph&aacute;t động chương tr&igrave;nh thi đua 06 th&aacute;ng cuối năm 2023 với chủ đề&nbsp;<strong><em>&ldquo;30 năm MobiFone &ndash; Vững tin, chuyển m&igrave;nh v&agrave;o kh&ocirc;ng gian mới&rdquo;</em></strong>&nbsp;tới tất cả c&aacute;c đơn vị trực thuộc, với c&aacute;c nhiệm vụ trọng t&acirc;m như sau:</p>\r\n\r\n<p>1.&nbsp;<strong>Thời gian ph&aacute;t động thi đua</strong>: Từ 01/07/2023 đến 24h00 ng&agrave;y 31/12/2023.</p>\r\n\r\n<p><strong>2. Nhiệm vụ trọng t&acirc;m:</strong></p>\r\n\r\n<p>- Tiếp tục triển khai thực hiện Chỉ thị số 34/CT-TW ng&agrave;y 07/4/2014 của Bộ Ch&iacute;nh trị về tiếp tục đổi mới c&ocirc;ng t&aacute;c thi đua khen thưởng; Chỉ thị số 19/CT-TTg ng&agrave;y 16/7/2021 của Thủ tướng Ch&iacute;nh phủ về việc ph&aacute;t động thi đua thực hiện nhiệm vụ ph&aacute;t triển kinh tế x&atilde; hội năm v&agrave; Kế hoạch 5 năm (2021-2025); Chỉ thị số 03/CT-UBQLV ng&agrave;y 26/12/2023 của Ủy ban Quản l&yacute; vốn Nh&agrave; nước tại doanh nghiệp về việc ph&aacute;t động thi đua năm 2023 v&agrave; c&aacute;c Nghị quyết, văn bản của Đảng v&agrave; Nh&agrave; nước, Ch&iacute;nh phủ về c&ocirc;ng t&aacute;c thi đua khen thưởng.</p>\r\n\r\n<p>- Nỗ lực, s&aacute;ng tạo, t&igrave;m kiếm giải ph&aacute;p trong việc triển khai thực hiện v&agrave; ho&agrave;n th&agrave;nh tốt c&aacute;c chỉ ti&ecirc;u kế hoạch sản xuất kinh doanh năm 2023 được Tổng c&ocirc;ng ty giao.</p>\r\n\r\n<p>- Tiếp tục đẩy mạnh việc ho&agrave;n thiện v&agrave; triển khai c&aacute;c đề &aacute;n ph&aacute;t triển kh&ocirc;ng gian mới, th&ocirc;ng qua c&aacute;c giải ph&aacute;p cụ thể nhằm tăng doanh số v&agrave; lợi nhuận; Quyết t&acirc;m, nỗ lực triển khai c&aacute;c giải ph&aacute;p tăng trưởng doanh thu data, ph&aacute;t triển kinh doanh v&agrave; mở rộng tập kh&aacute;ch h&agrave;ng trong lĩnh vực kh&ocirc;ng gian mới tr&ecirc;n c&aacute;c lĩnh vực: Thương hiệu giới trẻ, MVNO, tr&ograve; chơi số, nội dung số, gi&aacute;o dục số, y tế số, thanh to&aacute;n số, Cloud, IoT,&hellip;</p>\r\n\r\n<p>- Tăng cường r&agrave; so&aacute;t, điều chỉnh ch&iacute;nh s&aacute;ch kinh doanh dịch vụ theo định hướng điều chỉnh gi&aacute; cước data di động, kinh doanh c&aacute;c dự &aacute;n C&ocirc;ng nghệ th&ocirc;ng tin ph&ugrave; hợp với nhu cầu thị trường; N&acirc;ng cao trải nghiệm kh&aacute;ch h&agrave;ng tr&ecirc;n tất cả c&aacute;c k&ecirc;nh, đặc biệt l&agrave; c&aacute;c k&ecirc;nh số.</p>\r\n\r\n<p>- Tập trung đẩy mạnh c&ocirc;ng t&aacute;c chuyển đổi số nhằm tối đa nguồn lực triển khai thực hiện chiến lược kinh doanh của Tổng c&ocirc;ng ty; thực hiện ph&aacute;t triển sản phẩm theo định hướng chiến lược Make in MobiFone, tự chủ to&agrave;n bộ c&ocirc;ng nghệ v&agrave; sản phẩm ph&aacute;t triển.</p>\r\n\r\n<p>- Huy động mọi nguồn lực th&uacute;c đẩy sản xuất, kinh doanh, nỗ lực v&agrave; quyết t&acirc;m phấn đấu mức tăng trưởng cao nhất, tạo sức bật cho sản xuất kinh doanh của từng đơn vị v&agrave; to&agrave;n C&ocirc;ng ty.</p>\r\n\r\n<p>- Thực hiện tốt quy chế d&acirc;n chủ cơ sở, ph&aacute;t huy quyền l&agrave;m chủ của người lao động, phấn đấu CBCNV c&oacute; thu nhập ổn định, đời sống vật chất v&agrave; tinh thần ng&agrave;y c&agrave;ng n&acirc;ng cao, ph&aacute;t huy truyền thống, gi&aacute; trị văn h&oacute;a của MobiFone.</p>\r\n\r\n<p><strong>3. Chỉ ti&ecirc;u, kế hoạch thi đua:</strong>&nbsp;theo kế hoạch sản xuất kinh doanh của C&ocirc;ng ty giao cho c&aacute;c đơn vị năm 2023.</p>\r\n\r\n<p><strong>4. Khen thưởng:</strong>&nbsp;Sau khi kết th&uacute;c phong tr&agrave;o thi đua, căn cứ v&agrave;o kết quả th&agrave;nh t&iacute;ch đạt được trong việc thực hiện c&aacute;c chỉ ti&ecirc;u, kế hoạch của đơn vị, Hội đồng thi đua khen thưởng C&ocirc;ng ty sẽ xem x&eacute;t ph&ecirc; duyệt khen thưởng cho c&aacute;c tập thể, c&aacute; nh&acirc;n ho&agrave;n th&agrave;nh xuất sắc c&aacute;c nhiệm vụ được giao trong 06 th&aacute;ng cuối năm v&agrave; cả năm 2023.</p>\r\n\r\n<p>Với tinh thần &ldquo;<strong><em>Đo&agrave;n kết &ndash; S&aacute;ng tạo &ndash; Chuy&ecirc;n nghiệp &ndash; Hiệu quả</em></strong>&rdquo;, L&atilde;nh đạo C&ocirc;ng ty 4 k&ecirc;u gọi to&agrave;n thể CBCNV&nbsp;h&atilde;y quyết t&acirc;m, đồng sức đồng l&ograve;ng vượt qua những kh&oacute; khăn th&aacute;ch thức để ho&agrave;n th&agrave;nh nhiệm vụ kế hoạch SXKD năm 2023, đưa C&ocirc;ng ty 4 về đ&iacute;ch thắng lợi.</p>\r\n\r\n<p>&nbsp;</p>', '2023-10-10 02:43:48', 'banner-home-04-1.png', 1, '2023-07-19 13:51:33', '2023-07-19 13:51:33', '/storage/news/1/19072023_083351_k0b0Ej98Mf.png', 1, 1, 1, NULL, '2'),
(3, 'CÔNG TY DỊCH VỤ MOBIFONE KHU VỰC 4 TỔ CHỨC HỘI NGHỊ ĐẠI BIỂU NGƯỜI LAO ĐỘNG NĂM 2023', '<p><em><strong>Hội nghị Đại biểu Người lao động 2023 được tổ chức tại Hội trường tầng 4 &ndash; t&ograve;a nh&agrave; văn ph&ograve;ng C&ocirc;ng ty 4 s&aacute;ng ng&agrave;y 14/06 vừa qua. Hội nghị nhằm đ&aacute;nh gi&aacute; t&igrave;nh h&igrave;nh c&aacute;c hoạt động của c&ocirc;ng ty trong 6 th&aacute;ng đầu năm, phương hướng triển khai 6 th&aacute;ng cuối năm, đồng thời trao đổi th&ocirc;ng tin v&agrave; thực hiện quyền d&acirc;n chủ của người lao động với người sử dụng lao động.&nbsp;</strong></em></p>', '<p>Tham dự Hội nghị c&oacute; đồng ch&iacute; (đ/c) Thiều Ngọc Thịnh &ndash; B&iacute; thư Đảng ủy, Gi&aacute;m đốc C&ocirc;ng ty; đ/c L&ecirc; Tuấn Anh - Chủ tịch C&ocirc;ng đo&agrave;n, Ph&oacute; Gi&aacute;m đốc C&ocirc;ng ty; c&aacute;c đ/c l&agrave; Ủy vi&ecirc;n BCH C&ocirc;ng đo&agrave;n, B&iacute; thư Đo&agrave;n thanh ni&ecirc;n C&ocirc;ng ty, L&atilde;nh đạo MobiFone c&aacute;c tỉnh th&agrave;nh, L&atilde;nh đạo c&aacute;c ph&ograve;ng chức năng c&ugrave;ng hơn 30 đại biểu ưu t&uacute; đại diện ti&ecirc;u biểu cho 180 CBCNV, NLĐ tr&ecirc;n to&agrave;n C&ocirc;ng ty.&nbsp;</p>\r\n\r\n<p>Tại Hội nghị, &ocirc;ng Thiều Ngọc Thịnh &ndash; B&iacute; thư Đảng ủy, Gi&aacute;m đốc C&ocirc;ng ty đ&atilde; tr&igrave;nh b&agrave;y b&aacute;o c&aacute;o t&oacute;m tắt việc thực hiện c&aacute;c chỉ ti&ecirc;u nhiệm vụ SXKD được giao trong năm 2023 v&agrave; t&igrave;nh h&igrave;nh SXKD 06 th&aacute;ng đầu năm 2023.</p>\r\n\r\n<p><img alt=\"\" src=\"http://localhost:8000/storage/photos/1/news/64b7e8b9696ca.jpg\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>Theo b&aacute;o c&aacute;o, mặc d&ugrave; phải đối mặt với nhiều kh&oacute; khăn v&agrave; th&aacute;ch thức, song dưới sự l&atilde;nh đạo, chỉ đạo s&aacute;t sao của Đảng bộ, BCH C&ocirc;ng đo&agrave;n c&ugrave;ng tinh thần đo&agrave;n kết của to&agrave;n thể CBCNV, C&ocirc;ng ty 4 đ&atilde; kh&ocirc;ng ngừng nỗ lực phấn đấu ho&agrave;n th&agrave;nh c&aacute;c kế hoạch c&ocirc;ng t&aacute;c, nhiệm vụ được giao. Đặc biệt, C&ocirc;ng ty cũng đ&atilde; c&oacute; những đổi mới bước đầu trong hoạt động sản xuất kinh doanh, g&oacute;p phần v&agrave;o việc hiện thực h&oacute;a mục ti&ecirc;u chuyển đổi số to&agrave;n diện của MobiFone với phương ch&acirc;m &ldquo;giữ vững viễn th&ocirc;ng, tấn c&ocirc;ng kh&ocirc;ng gian mới&rdquo;.&nbsp;</p>\r\n\r\n<p>Cũng tại Hội nghị, c&aacute;c đại biểu đ&atilde; được lắng nghe b&aacute;o c&aacute;o c&ocirc;ng t&aacute;c C&ocirc;ng đo&agrave;n 6 th&aacute;ng đầu năm, phương hướng triển khai 6 th&aacute;ng cuối năm v&agrave; t&igrave;nh h&igrave;nh thực hiện hợp đồng lao động, thỏa ước lao động tập thể, nội quy lao động, quy chế v&agrave; cam kết, thỏa thuận kh&aacute;c tại nơi l&agrave;m việc; b&aacute;o c&aacute;o kết quả v&agrave; kế hoạch hoạt động của Ban Thanh tra nh&acirc;n d&acirc;n trong nhiệm kỳ 2021-2023.</p>\r\n\r\n<p>Trong hội nghị, quyền d&acirc;n chủ trực tiếp của người lao động đ&atilde; được ph&aacute;t huy th&ocirc;ng qua h&igrave;nh thức trao đổi, thảo luận nhằm ho&agrave;n thiện ch&iacute;nh s&aacute;ch d&agrave;nh cho người lao động v&agrave; n&acirc;ng cao chất lượng sản xuất kinh doanh. B&ecirc;n cạnh đ&oacute;, c&aacute;c c&acirc;u hỏi, g&oacute;p &yacute; của CBCNV đ&atilde; được giải đ&aacute;p v&agrave; l&agrave;m r&otilde; tại hội nghị.</p>\r\n\r\n<p><img alt=\"\" src=\"http://mobifonekv4.vn/public/uploads/photo-88.webp\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>Theo b&aacute;o c&aacute;o, mặc d&ugrave; phải đối mặt với nhiều kh&oacute; khăn v&agrave; th&aacute;ch thức, song dưới sự l&atilde;nh đạo, chỉ đạo s&aacute;t sao của Đảng bộ, BCH C&ocirc;ng đo&agrave;n c&ugrave;ng tinh thần đo&agrave;n kết của to&agrave;n thể CBCNV, C&ocirc;ng ty 4 đ&atilde; kh&ocirc;ng ngừng nỗ lực phấn đấu ho&agrave;n th&agrave;nh c&aacute;c kế hoạch c&ocirc;ng t&aacute;c, nhiệm vụ được giao. Đặc biệt, C&ocirc;ng ty cũng đ&atilde; c&oacute; những đổi mới bước đầu trong hoạt động sản xuất kinh doanh, g&oacute;p phần v&agrave;o việc hiện thực h&oacute;a mục ti&ecirc;u chuyển đổi số to&agrave;n diện của MobiFone với phương ch&acirc;m &ldquo;giữ vững viễn th&ocirc;ng, tấn c&ocirc;ng kh&ocirc;ng gian mới&rdquo;.&nbsp;</p>\r\n\r\n<p>Cũng tại Hội nghị, c&aacute;c đại biểu đ&atilde; được lắng nghe b&aacute;o c&aacute;o c&ocirc;ng t&aacute;c C&ocirc;ng đo&agrave;n 6 th&aacute;ng đầu năm, phương hướng triển khai 6 th&aacute;ng cuối năm v&agrave; t&igrave;nh h&igrave;nh thực hiện hợp đồng lao động, thỏa ước lao động tập thể, nội quy lao động, quy chế v&agrave; cam kết, thỏa thuận kh&aacute;c tại nơi l&agrave;m việc; b&aacute;o c&aacute;o kết quả v&agrave; kế hoạch hoạt động của Ban Thanh tra nh&acirc;n d&acirc;n trong nhiệm kỳ 2021-2023.</p>\r\n\r\n<p>Trong hội nghị, quyền d&acirc;n chủ trực tiếp của người lao động đ&atilde; được ph&aacute;t huy th&ocirc;ng qua h&igrave;nh thức trao đổi, thảo luận nhằm ho&agrave;n thiện ch&iacute;nh s&aacute;ch d&agrave;nh cho người lao động v&agrave; n&acirc;ng cao chất lượng sản xuất kinh doanh. B&ecirc;n cạnh đ&oacute;, c&aacute;c c&acirc;u hỏi, g&oacute;p &yacute; của CBCNV đ&atilde; được giải đ&aacute;p v&agrave; l&agrave;m r&otilde; tại hội nghị.</p>\r\n\r\n<p><img alt=\"\" src=\"http://mobifonekv4.vn/public/uploads/photo-90.webp\" style=\"height:400px; width:600px\" /></p>\r\n\r\n<p>Sau hơn 3 giờ l&agrave;m việc khẩn trương, nghi&ecirc;m t&uacute;c v&agrave; tr&aacute;ch nhiệm, hội nghị đ&atilde; kết th&uacute;c th&agrave;nh c&ocirc;ng tốt đẹp trong sự h&acirc;n hoan v&agrave; tin tưởng của người lao động. Với sự nhất tr&iacute; cao c&ugrave;ng tinh thần đo&agrave;n kết, C&ocirc;ng ty 4 quyết t&acirc;m phấn đấu thực hiện thắng lợi c&aacute;c nhiệm vụ, kế hoạch sản xuất kinh doanh đ&atilde; đề ra v&agrave; đảm bảo chăm lo đời sống vật chất, tinh thần, c&aacute;c quyền v&agrave; nghĩa vụ của người lao động trong c&ocirc;ng ty.&nbsp;</p>', '2023-10-10 02:43:48', 'banner-home-03-1.png', 2, '2023-07-19 15:23:51', '2023-07-26 07:13:18', '/storage/news/1/19072023_115018_nWbGwXVMU2.png', 1, 1, 1, 'cong-ty-dich-vu-mobifone-khu-vuc-4-to-chuc-hoi-nghi-dai-bieu-nguoi-lao-dong-nam-2023-260720231690355598.html', '16'),
(7, '5 trang bị \'không có thì thiếu, có thì thừa\' trên ô tô', '<p><strong>C&oacute; những trang bị, t&iacute;nh năng tr&ecirc;n &ocirc; t&ocirc; m&agrave; mới nghe qua kh&aacute;ch h&agrave;ng rất th&iacute;ch th&uacute;, sẵn s&agrave;ng chi th&ecirc;m bộn tiền để &quot;nhồi&quot; l&ecirc;n xe. Thế nhưng thực tế sử dụng lại chẳng mấy khi động đến.</strong></p>\r\n\r\n<p><em>Dưới đ&acirc;y l&agrave; 5 trang bị, t&ugrave;y chọn tr&ecirc;n xe m&agrave; kh&ocirc;ng c&oacute; th&igrave; thiếu, c&ograve;n c&oacute; th&igrave; lại thừa với số đ&ocirc;ng người d&ugrave;ng &ocirc; t&ocirc; Việt Nam:</em></p>', '<p><strong>1. Cửa sổ trời</strong></p>\r\n\r\n<p><a href=\"https://vietnamnet.vn/cua-so-troi-tag6355086207908162641.html\">Cửa sổ trời</a>&nbsp;thường được c&aacute;c nh&agrave; sản xuất &quot;nhồi&quot; l&ecirc;n c&aacute;c mẫu xe đắt tiền hoặc phi&ecirc;n bản cao cấp để ph&acirc;n biệt với bản ti&ecirc;u chuẩn. Thế nhưng, v&agrave;o m&ugrave;a nắng n&oacute;ng như m&ugrave;a h&egrave; ở Việt Nam, cửa sổ trời, nhất l&agrave; loại to&agrave;n cảnh panorama c&oacute; thể g&acirc;y nhiều phiền phức, bất tiện nhiều hơn l&agrave; sự ưu việt, đẳng cấp m&agrave; n&oacute; mang lại.&nbsp;</p>\r\n\r\n<p><img src=\"https://static-images.vnncdn.net/files/publish/2023/7/26/cua-so-troi-6.jpg\" style=\"height:317px; width:600px\" /></p>\r\n\r\n<p><em>Nhiều chủ xe khổ sở &quot;gia cố&quot; trang bị đắt tiền n&agrave;y v&agrave;o m&ugrave;a h&egrave; cho khoang h&agrave;nh kh&aacute;ch đỡ n&oacute;ng.</em></p>\r\n\r\n<p>Tr&ecirc;n thực tế, nhiều chủ xe phải đi d&aacute;n phim chống n&oacute;ng hoặc gia cố cho trang bị đắt tiền n&agrave;y bằng c&aacute;c tấm c&aacute;ch nhiệt, thậm ch&iacute;...b&igrave;a carton v&agrave;o m&ugrave;a h&egrave;. Ngo&agrave;i ra, với kh&iacute; hậu khắc nghiệt c&ugrave;ng h&agrave;m lượng bụi mịn trong kh&ocirc;ng kh&iacute; lớn như ở Việt Nam th&igrave; việc mở cửa sổ trời để &quot;h&iacute;t thở kh&ocirc;ng kh&iacute; trong l&agrave;nh&quot; l&agrave; rất hy hữu.</p>\r\n\r\n<p><strong>2. Sưởi v&ocirc;-lăng, sấy ghế</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; hai t&iacute;nh năng thời thượng thường thấy tr&ecirc;n xe nhập khẩu c&oacute; nguồn gốc từ &quot;v&ugrave;ng lạnh&quot; như Bắc Mỹ, Ch&acirc;u &Acirc;u hay H&agrave;n Quốc. Khi k&iacute;ch hoạt, v&ocirc;-lăng v&agrave; ghế sẽ được sưởi ấm, gi&uacute;p &quot;ph&aacute; băng&quot; v&agrave; xua tan hơi lạnh trong xe, giữ ấm cho người l&aacute;i cũng như h&agrave;nh kh&aacute;ch.</p>\r\n\r\n<p><img src=\"https://static-images.vnncdn.net/files/publish/2023/7/26/suoi-ghe-1-7.jpeg\" style=\"height:443px; width:600px\" /></p>\r\n\r\n<p><em>T&iacute;nh năng sưởi ghế, sấy v&ocirc;-lăng thường thấy ở những xe c&oacute; nguồn gốc &Acirc;u, Mỹ hoặc c&aacute;c d&ograve;ng xe ngập trang bị của H&agrave;n Quốc.</em></p>\r\n\r\n<p>Tuy nhi&ecirc;n với đất nước nhiệt đới n&oacute;ng ẩm quanh năm như Việt Nam th&igrave; sưởi v&ocirc;-lăng v&agrave; sấy ghế gần như thừa th&atilde;i v&agrave; &iacute;t sử dụng. Thậm ch&iacute; v&agrave;o m&ugrave;a đ&ocirc;ng ở miền Bắc, khi nhiệt độ c&oacute; thể xuống dưới 10 độ C th&igrave; trong xe cũng kh&ocirc;ng qu&aacute; lạnh, chỉ cần điều h&ograve;a hai chiều l&agrave; qu&aacute; đủ cho người d&ugrave;ng.</p>\r\n\r\n<p><strong>3. Tự động bật/tắt động cơ (Auto Start/Stop)</strong></p>\r\n\r\n<p>Auto Start/Stop thường xuất hiện tr&ecirc;n xe đời mới hạng sang như BMW, Audi hay Mercedes-Benz, thậm ch&iacute; được trang bị tr&ecirc;n c&aacute;c mẫu xe của Mazda với t&ecirc;n gọi i-Stop. Hệ thống n&agrave;y gi&uacute;p tiết kiệm nhi&ecirc;n liệu v&agrave; giảm thải lượng kh&iacute; xả bằng c&aacute;ch ngắt động cơ khi xe dừng lại ho&agrave;n to&agrave;n v&agrave; tự khởi động lại khi t&agrave;i xế bỏ ch&acirc;n ra khỏi b&agrave;n đạp phanh.</p>\r\n\r\n<p><img src=\"https://static-images.vnncdn.net/files/publish/2023/7/26/auto-start-stop-8.jpeg\" style=\"height:371px; width:600px\" /></p>\r\n\r\n<p><em>D&ugrave; l&agrave; t&iacute;nh năng ưu việt nhưng Auto Start/Stop được &iacute;t người Việt Nam sử dụng.</em></p>\r\n\r\n<p>Thế nhưng, phần đ&ocirc;ng người d&ugrave;ng Việt Nam kh&ocirc;ng sử dụng t&iacute;nh năng n&agrave;y v&igrave; &quot;x&oacute;t&quot; xe, khi động cơ li&ecirc;n tục bật/tắt, nhất l&agrave; khi di chuyển trong th&agrave;nh phố với nhiều đ&egrave;n đỏ, tắc đường,... Nhiều người cho rằng, việc bật/tắt động cơ li&ecirc;n tục như vậy ảnh hưởng đến hệ thống khởi động cũng như tuổi thọ của ắc quy, trong khi đ&oacute; lượng nhi&ecirc;n liệu tiết kiệm được lại chả đ&aacute;ng l&agrave; bao.</p>\r\n\r\n<p><strong>4. Đỗ xe tự động</strong></p>\r\n\r\n<p>Đ&acirc;y l&agrave; t&iacute;nh năng được quảng c&aacute;o l&agrave; th&ocirc;ng minh, bước tiến mới trong sử dụng &ocirc; t&ocirc; cho cư d&acirc;n đ&ocirc; thị. Một trong những mẫu xe b&igrave;nh d&acirc;n l&agrave; Ford Focus đ&atilde; sớm đưa c&ocirc;ng nghệ tự gh&eacute;p xe song song v&agrave; l&ugrave;i chuồng v&agrave;o năm 2015. V&agrave; tất nhi&ecirc;n, t&iacute;nh năng n&agrave;y chỉ c&oacute; ở phi&ecirc;n bản Titanium full options với gi&aacute; đắt hơn bản Trend tới 100 triệu.</p>\r\n\r\n<p><img src=\"https://static-images.vnncdn.net/files/publish/2023/7/26/he-thong-ho-tro-do-xe-tudong-tuv-9.jpeg\" style=\"height:338px; width:600px\" /></p>\r\n\r\n<p><em>C&aacute;c cảm biến sẽ tự động t&igrave;m những vị tr&iacute; c&oacute; khả năng đỗ được xe.</em></p>\r\n\r\n<p>Tuy nhi&ecirc;n, thực tế th&igrave; nhiều kh&aacute;ch h&agrave;ng chỉ d&ugrave;ng t&iacute;nh năng n&agrave;y khi mới l&aacute;i xe, c&ograve;n khi đ&atilde; quen rồi th&igrave; hầu hết sẽ tự t&igrave;m kiếm nơi&nbsp;<a href=\"https://vietnamnet.vn/do-xe-tag15328666612340182926.html\">đỗ xe&nbsp;</a>v&agrave; tự thao t&aacute;c &quot;cho nhanh&quot;. Bởi d&ugrave; l&agrave; tự động nhưng người l&aacute;i vẫn phải l&agrave;m c&aacute;c động t&aacute;c như v&agrave;o số, phanh,...</p>\r\n\r\n<p><strong>5. Hệ thống kiểm so&aacute;t h&agrave;nh tr&igrave;nh th&iacute;ch ứng (ACC)</strong></p>\r\n\r\n<p>Adaptive Cruise Control (ACC) l&agrave; hệ thống kiểm so&aacute;t h&agrave;nh tr&igrave;nh ti&ecirc;n tiến, gi&uacute;p duy tr&igrave; tốc độ l&aacute;i xe dựa tr&ecirc;n tốc độ lưu th&ocirc;ng của xe ph&iacute;a trước hay n&oacute;i n&ocirc;m na l&agrave; gi&uacute;p &quot;b&aacute;m đu&ocirc;i&quot; một c&aacute;ch dễ d&agrave;ng, nh&agrave;n nh&atilde; hơn cho người l&aacute;i. ACC thường xuất hiện tr&ecirc;n những d&ograve;ng &ocirc; t&ocirc; c&oacute; gi&aacute; tr&ecirc;n dưới 1 tỷ đồng với những lời quảng c&aacute;o về t&iacute;nh tiện lợi, độ đẳng cấp v&agrave; an to&agrave;n.</p>\r\n\r\n<p><img src=\"https://static-images.vnncdn.net/files/publish/2023/7/26/acc-tren-cr-v-1-10.jpeg\" /></p>\r\n\r\n<p><em>ACC gi&uacute;p xe ph&iacute;a sau duy tr&igrave; khoảng c&aacute;ch v&agrave; tốc độ giống như xe đi ph&iacute;a trước.&nbsp;</em></p>\r\n\r\n<p>Tuy nhi&ecirc;n, với t&igrave;nh h&igrave;nh giao th&ocirc;ng phức tạp v&agrave; th&oacute;i quen l&aacute;i xe &quot;điền v&agrave;o chỗ trống&quot; kh&aacute; tuỳ tiện như ở Việt Nam th&igrave; t&agrave;i xế d&ugrave; sử dụng ACC cũng kh&ocirc;ng thể ho&agrave;n to&agrave;n y&ecirc;n t&acirc;m &quot;ph&oacute; mặc&quot; sự an to&agrave;n của m&igrave;nh cho chiếc xe được.&nbsp;</p>\r\n\r\n<p>ACC chỉ thực sự ph&ugrave; hợp khi di chuyển tr&ecirc;n cao tốc hoặc l&aacute;i xe đường trường theo đo&agrave;n. Nhiều người sử dụng c&aacute;c d&ograve;ng xe c&oacute; t&iacute;ch hợp ACC cho biết, thực tế l&agrave; họ rất &iacute;t khi sử dụng đến t&iacute;nh năng n&agrave;y.&nbsp;</p>\r\n\r\n<p><strong>Ho&agrave;ng Hiệp&nbsp;<em>(tổng hợp)</em></strong></p>', '2023-10-10 02:43:48', 'banner-home-03-12.png', 3, '2023-07-25 14:31:19', '2023-07-26 07:07:32', '/storage/news/1/26072023_023207_gkUjnlT9EM.png', 1, 1, 1, '5-trang-bi-khong-co-thi-thieu-co-thi-thua-tren-o-to-260720231690355252.html', '17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_categories`
--

CREATE TABLE `news_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug_name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `slug_name`, `created_at`, `updated_at`) VALUES
(1, 'Tin sản phẩm - dịch vụ', 'tin-san-pham-dich-vu', '2023-07-13 05:14:42', '2023-07-13 05:14:42'),
(2, 'Hoạt động SXKD', 'hoat-dong-sxkd', '2023-07-13 05:15:03', '2023-07-13 05:15:03'),
(3, 'Thi đua khen thưởng', 'thi-dua-khen-thuong', '2023-07-13 05:15:14', '2023-07-13 05:15:14'),
(4, 'Sáng kiến', 'sang-kien', '2023-07-13 05:15:22', '2023-07-13 05:15:22'),
(5, 'An sinh xã hội', 'an-sinh-xa-hoi', '2023-07-13 05:15:29', '2023-07-13 05:15:29'),
(6, 'Viễn thông', 'vien-thong', '2023-07-27 01:36:07', '2023-07-27 01:36:07');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news_tags`
--

CREATE TABLE `news_tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `news_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news_tags`
--

INSERT INTO `news_tags` (`id`, `news_id`, `tag_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-07-19 13:45:18', '2023-07-19 13:45:18'),
(2, 1, 2, '2023-07-19 13:45:18', '2023-07-19 13:45:18'),
(3, 2, 1, '2023-07-19 13:51:33', '2023-07-19 13:51:33'),
(4, 2, 3, '2023-07-19 13:51:33', '2023-07-19 13:51:33'),
(15, 7, 0, '2023-07-26 07:07:32', '2023-07-26 07:07:32'),
(17, 3, 16, '2023-07-26 07:13:18', '2023-07-26 07:13:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) NOT NULL,
  `token` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `image_name` varchar(191) NOT NULL,
  `image_path` varchar(191) NOT NULL,
  `product_categories` int(11) NOT NULL,
  `contents` text NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `image_name`, `image_path`, `product_categories`, `contents`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Gói cước KC90', 'photo-93.webp', '/storage/products/1/27072023_010421_gJm6hfPXP8.webp', 1, '<p><strong>Th&ocirc;ng tin g&oacute;i cước:</strong></p>\r\n\r\n<p>-&nbsp;1GB/ng&agrave;y</p>\r\n\r\n<p>-&nbsp;Miễn ph&iacute; c&aacute;c cuộc gọi nội mạng dưới 10 ph&uacute;t (Tối đa 1.000 ph&uacute;t thoại nội mạng/th&aacute;ng)</p>\r\n\r\n<p>-&nbsp;Miễn ph&iacute; 30 ph&uacute;t thoại ngoại mạng</p>\r\n\r\n<p><strong>Gi&aacute; g&oacute;i cước</strong>: 9<strong>0k/th&aacute;ng</strong></p>\r\n\r\n<p>&gt;&gt;&gt; Đăng k&yacute; g&oacute;i cước<strong>&nbsp;<a href=\"https://www.facebook.com/mobifonekv4.vn\" target=\"_blank\">tại đ&acirc;y</a></strong></p>', 'goi-cuoc-kc90-270720231690464064.html', '2023-07-27 06:21:04', '2023-07-27 06:21:04'),
(2, 'Gói cước THAGA100', 'photo-92.jpg', '/storage/products/1/27072023_014524_NKC6l3vMeU.jpg', 1, '<p><strong>Th&ocirc;ng tin g&oacute;i cước:</strong></p>\r\n\r\n<p>- Miễn ph&iacute; 150GB data tốc độ cao/ th&aacute;ng ưu đ&atilde;i được sử dụng trong khu vực 4 của MobiFone</p>\r\n\r\n<p>- Miễn ph&iacute; 2GB data tốc độ cao/ th&aacute;ng</p>\r\n\r\n<p>- Nghe gọi cực rẻ: 100đ/ph&uacute;t gọi nội mạng, 590đ/ph&uacute;t gọi ngoại mạng</p>\r\n\r\n<p>- Nghe được tiền: mỗi ph&uacute;t nghe ngoại mạng tặng ngay 590đ/ph&uacute;t</p>\r\n\r\n<p>- Miễn ph&iacute; t&agrave;i khoản ClipTV tha hồ trải nghiệm hơn 5000 bộ phim</p>\r\n\r\n<p><strong>Gi&aacute; g&oacute;i cước</strong>:&nbsp;<strong>50k/th&aacute;ng</strong></p>\r\n\r\n<p>&gt;&gt;&gt; Đăng k&yacute; g&oacute;i cước<strong>&nbsp;<a href=\"https://www.facebook.com/mobifonekv4.vn\" target=\"_blank\">tại đ&acirc;y</a></strong></p>', 'goi-cuoc-thaga100-270720231690464285.html', '2023-07-27 06:24:46', '2023-07-27 06:24:46'),
(3, 'MOBIFONE CLOUD', 'photo-92.jpg', '/storage/products/1/27072023_012525_dAf546CY8w.jpg', 2, '<p>Ứng dụng tr&ecirc;n nền tảng điện to&aacute;n đ&aacute;m m&acirc;y cung cấp giải ph&aacute;p lưu trữ v&agrave; truy cập dữ liệu ở bất k&igrave; đ&acirc;u từ c&aacute;c thiết bị điện thoại th&ocirc;ng minh, m&aacute;y t&iacute;nh bảng hoặc laptop, PC.</p>\r\n\r\n<p><strong>Đối tượng sử dụng</strong></p>\r\n\r\n<p>Ng&agrave;y nay dịch vụ m&aacute;y chủ ảo được sử dụng rất rộng r&atilde;i trong c&aacute;c doanh nghiệp bởi khả năng tiết kiệm chi ph&iacute;, bảo mật tuyệt đối v&agrave; mở rộng một c&aacute;ch dễ d&agrave;ng, đối tượng sử dụng dịch vụ l&agrave; c&aacute;c c&ocirc;ng ty, tổ chức c&oacute; nhu cầu như:</p>\r\n\r\n<p>- Thu&ecirc; m&aacute;y chủ c&agrave;i đặt cung cấp phần mềm SaaS tới c&aacute;c kh&aacute;ch h&agrave;ng kh&aacute;c</p>\r\n\r\n<p>- Thu&ecirc; m&aacute;y chủ game (game server)</p>\r\n\r\n<p>- Thu&ecirc; m&aacute;y chủ hệ thống email doanh nghiệp, hệ thống phần mềm nội bộ doanh nghiệp</p>\r\n\r\n<p>- C&aacute;c doanh nghiệp cần tạo m&ocirc;i trường ảo để nghi&ecirc;n cứu</p>\r\n\r\n<p>- Đơn vị c&oacute; nhu cầu hosting website đa dịch vụ</p>\r\n\r\n<p>- Lưu trữ dữ liệu: t&agrave;i liệu, h&igrave;nh ảnh, video&hellip;</p>\r\n\r\n<p><strong>Ưu điểm của dịch vụ m&aacute;y chủ ảo</strong></p>\r\n\r\n<p>- Hệ thống m&aacute;y chủ với cấu h&igrave;nh, dung lượng cao, băng th&ocirc;ng ổn định tốc độ cao</p>\r\n\r\n<p>- Giảm thời gian triển khai, cung cấp sản phẩm, dịch vụ ra thị trường</p>\r\n\r\n<p>- Giảm chi ph&iacute; vận h&agrave;nh, bảo tr&igrave;</p>\r\n\r\n<p><strong>T&iacute;nh năng của dịch vụ tạo m&aacute;y chủ ảo</strong></p>\r\n\r\n<p>- Đ&aacute;p ứng mọi y&ecirc;u cầu cấu h&igrave;nh m&aacute;y chủ theo nhu cầu kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>- Cung cấp giao diện quản l&yacute; linh hoạt gi&uacute;p tăng giảm cấu h&igrave;nh theo nhu cầu kh&aacute;ch h&agrave;ng</p>\r\n\r\n<p>- Giao diện theo d&otilde;i t&igrave;nh trạng hoạt động của m&aacute;y chủ ảo dễ sử dụng, trực quan</p>\r\n\r\n<p>- Hệ thống thiết kế đảm bảo mức dự ph&ograve;ng cao</p>\r\n\r\n<p>- Cung cấp m&aacute;y chủ ảo cho c&aacute;c c&aacute; nh&acirc;n tổ chức doanh nghiệp c&oacute; nhu cầu triển khai hệ thống kinh doanh, nội bộ của tổ chức doanh nghiệp đ&oacute;</p>', 'mobifone-cloud-270720231690464325.html', '2023-07-27 06:25:25', '2023-07-27 06:25:25'),
(4, 'mTracker', '378293038_641523184739782_5141981212287622191_n.jpg', '/storage/products//10102023_030305_nMmVmlLeqx.jpg', 3, '# Ứng dụng trên nền tảng điện toán đám mây cung cấp giải pháp lưu trữ và truy cập dữ liệu ở bất kì đâu từ các thiết bị điện thoại thông minh, máy tính bảng hoặc laptop, PC.\r\n\r\n**Đối tượng sử dụng**\r\n\r\nNgày nay dịch vụ máy chủ ảo được sử dụng rất rộng rãi trong các doanh nghiệp bởi khả năng tiết kiệm chi phí, bảo mật tuyệt đối và mở rộng một cách dễ dàng, đối tượng sử dụng dịch vụ là các công ty, tổ chức có nhu cầu như:\r\n\r\n\\- Thuê máy chủ cài đặt cung cấp phần mềm SaaS tới các khách hàng khác\r\n\r\n\\- Thuê máy chủ game (game server)\r\n\r\n\\- Thuê máy chủ hệ thống email doanh nghiệp, hệ thống phần mềm nội bộ doanh nghiệp\r\n\r\n\\- Các doanh nghiệp cần tạo môi trường ảo để nghiên cứu\r\n\r\n\\- Đơn vị có nhu cầu hosting website đa dịch vụ\r\n\r\n\\- Lưu trữ dữ liệu: tài liệu, hình ảnh, video…\r\n\r\n**Ưu điểm của dịch vụ máy chủ ảo**\r\n\r\n\\- Hệ thống máy chủ với cấu hình, dung lượng cao, băng thông ổn định tốc độ cao\r\n\r\n\\- Giảm thời gian triển khai, cung cấp sản phẩm, dịch vụ ra thị trường\r\n\r\n\\- Giảm chi phí vận hành, bảo trì\r\n\r\n**Tính năng của dịch vụ tạo máy chủ ảo**\r\n\r\n\\- Đáp ứng mọi yêu cầu cấu hình máy chủ theo nhu cầu khách hàng\r\n\r\n\\- Cung cấp giao diện quản lý linh hoạt giúp tăng giảm cấu hình theo nhu cầu khách hàng\r\n\r\n\\- Giao diện theo dõi tình trạng hoạt động của máy chủ ảo dễ sử dụng, trực quan\r\n\r\n\\- Hệ thống thiết kế đảm bảo mức dự phòng cao\r\n\r\n\\- Cung cấp máy chủ ảo cho các cá nhân tổ chức doanh nghiệp có nhu cầu triển khai hệ thống kinh doanh, nội bộ của tổ chức doanh nghiệp đó', 'mtracker-101020231696907103.html', '2023-07-27 06:26:17', '2023-10-09 20:05:03'),
(5, 'MOBIFONE MONEY', 'photo-92.jpg', '/storage/products/1/27072023_011328_VJJkLEAamV.jpg', 3, '<p>MobiFone Money l&agrave; Hệ sinh th&aacute;i T&agrave;i ch&iacute;nh số của MobiFone, cung cấp cho kh&aacute;ch h&agrave;ng c&aacute;c dịch vụ t&agrave;i ch&iacute;nh tr&ecirc;n nền tảng số một c&aacute;ch dễ d&agrave;ng, nhanh ch&oacute;ng v&agrave; an to&agrave;n. Kh&aacute;ch h&agrave;ng c&oacute; thể sử dụng tr&ecirc;n nhiều thiết bị ở mọi l&uacute;c, mọi nơi m&agrave; chưa cần t&agrave;i khoản ng&acirc;n h&agrave;ng hay kết nối Internet.</p>\r\n\r\n<p><strong>Đối tượng sử dụng</strong></p>\r\n\r\n<p>- V&iacute; điện tử MobiFone Money: Kh&aacute;ch h&agrave;ng c&oacute; thu&ecirc; bao di động tại bất cứ nh&agrave; mạng n&agrave;o.</p>\r\n\r\n<p>- Tiền di động MobiFone Money: Kh&aacute;ch h&agrave;ng l&agrave; thu&ecirc; bao MobiFone.</p>\r\n\r\n<p>- Mỗi kh&aacute;ch h&agrave;ng chỉ được mở 01 t&agrave;i khoản MobiFone Money.</p>\r\n\r\n<p><strong>C&aacute;c t&iacute;nh năng ch&iacute;nh của dịch vụ</strong></p>\r\n\r\n<p>- Chuyển/nhận tiền</p>\r\n\r\n<p>- Nạp tiền điện thoại</p>\r\n\r\n<p>- Thanh to&aacute;n điện thoại trả sau</p>\r\n\r\n<p>- Thanh to&aacute;n h&oacute;a đơn điện, nước, truyền h&igrave;nh, Internet v&agrave; c&aacute;c t&iacute;nh năng tiện &iacute;ch kh&aacute;c</p>\r\n\r\n<p><strong>Một số ưu điểm MobiFone Money mang lại cho kh&aacute;ch h&agrave;ng:&nbsp;</strong></p>\r\n\r\n<p>- An to&agrave;n, bảo mật</p>\r\n\r\n<p>- Thao t&aacute;c dễ d&agrave;ng</p>\r\n\r\n<p>- Giao dịch miễn ph&iacute;</p>\r\n\r\n<p>- Chuyển, nhận tiền linh hoạt</p>\r\n\r\n<p>- Thanh to&aacute;n nhiều dịch vụ</p>\r\n\r\n<p>- Ưu đ&atilde;i cực hấp dẫn</p>\r\n\r\n<p>Website:&nbsp;<a href=\"https://mobifonemoney.vn/\">https://mobifonemoney.vn</a></p>\r\n\r\n<p>Ứng dụng:&nbsp;<strong>MobiFone Money</strong></p>\r\n\r\n<p>Li&ecirc;n hệ: 9090</p>', 'mobifone-money-270720231690464493.html', '2023-07-27 06:28:13', '2023-07-27 06:28:13'),
(6, 'MobiON', 'photo-92.jpg', '/storage/products/1/27072023_014528_MuZz8nY90M.jpg', 2, '# Dịch vụ cung cấp video phong phú, đa dạng ở mọi lĩnh vực. Bạn có thể trải nghiệm những nội dung hấp dẫn nhất nhất hiện nay và không bị chèn quảng cáo.\r\n\r\n**Đối tượng sử dụng:**\r\n\r\n\\- Khách hàng là thuê bao MobiFone có nhu cầu xem video ở mọi lứa tuổi.\r\n\r\n\\- Để truy cập website và ứng dụng của dịch vụ, khách hàng sử dụng PC hoặc điện thoại có kết nối internet (3G/4G/5G/WIFI), hỗ trợ tính năng xem video trực tuyến.\r\n\r\n**Tính năng:**\r\n\r\n\\- Xem không giới hạn và không chèn quảng cáo các nội dung đặc sắc chuyên sâu Gameshow, Phim truyện, Âm nhạc, Thể thao điện tử - eSport, Thiếu nhi, Du lịch, Ẩm thực, giải trí,…\r\n\r\n\\- Tham gia các chương trình tương tác, vòng quay may mắn, mini game có thưởng trên dịch vụ.\r\n\r\n\\- Ưu đãi dịch vụ viễn thông (data, thoại) theo gói cước.\r\n\r\n\\- Miễn phí cước 3G/4G/5G khi truy cập dịch vụ đối với thuê bao đăng ký dịch vụ.\r\n\r\n**Cách sử dụng**\r\n\r\nBước 1: Tải ứng dụng có tên “mobiOn” trên Appstore hoặc CH Play\r\n\r\nBước 2: Mở ứng dụng đã được cài đặt thành công trên điện thoại\r\n\r\nBước 3: Đăng nhập và sử dụng dịch vụ\r\n\r\n**Quy định**\r\n\r\nGói cước sẽ được tự động gia hạn khi hết chu kỳ.\r\n\r\nTrường hợp trừ cước không thành công, hệ thống sẽ thực hiện trừ cước lại trong 30 ngày tiếp theo. Nếu trừ cước không thành công trong 30 ngày liên tiếp hệ thống sẽ tự động hủy dịch vụ.\r\n\r\nWebsite: http://mobion.vn\r\n\r\nỨng dụng: MobiOn\r\n\r\nLiên hệ: 9090 (200đ/phút)', 'mobion-101020231696907222.html', '2023-07-27 06:28:45', '2023-10-09 20:07:02'),
(7, 'Vietlott SMS', 'portfolio-35.webp', '/storage/products//10102023_033806_FlZHbvHW8v.webp', 3, '<p style=\"text-align:justify;\">Vietlott SMS là dịch vụ cho phép thuê bao MobiFone đăng ký tài khoản tham gia dự thưởng với Vietlott qua ứng dụng Vietlott SMS. Khách hàng thực hiện lựa chọn bộ số tham gia dự thưởng và hình thành bản tin SMS đặt vé thông qua hỗ trợ từ ứng dụng, đặt và nhận vé thông qua hình thức SMS và nhận các thông báo giao dịch người chơi, hỗ trợ giải quyết các thắc mắc khiếu nại qua tổng đài CSKH riêng của dịch vụ.</p><p style=\"text-align:justify;\"><strong>Đối tượng:</strong></p><p style=\"text-align:justify;\">Đáp ứng đầy đủ các điều kiện quy định sau:</p><p style=\"text-align:justify;\">- Là công dân Việt Nam ở trong nước hoặc người Việt Nam định cư ở nước ngoài nhập cảnh hợp pháp vào Việt Nam hoặc người nước ngoài nhập cảnh hợp pháp vào Việt Nam;</p><p style=\"text-align:justify;\">- Là người từ đủ 18 tuổi trở lên;</p><p style=\"text-align:justify;\">- Là người có năng lực hành vi dân sự đầy đủ theo quy định của pháp luật Việt Nam, trừ trường hợp điều ước quốc tế mà Việt Nam là thành viên có quy định khác;</p><p style=\"text-align:justify;\">- Thuê bao đang hoạt động trên mạng MobiFone.</p><p style=\"text-align:justify;\"><strong>Các tính năng chính:</strong></p><p style=\"text-align:justify;\">-&nbsp;Lợi ích: Cung cấp tới khách hàng dịch vụ mua vé số Vietlott qua điện thoại thuận tiện, bảo mật, nhanh chóng, dễ dàng.</p><p style=\"text-align:justify;\">- Tính năng liên quan đến tài khoản dự thưởng:</p><p style=\"text-align:justify;\">+ Nhận thông bảo kết quả đăng ký tài khoản dự thưởng</p><p style=\"text-align:justify;\">+ Nhận thông bảo thay đổi tài khoản dự thưởng</p><p style=\"text-align:justify;\">+ Nhận thông bảo cập nhật tài khoản dự thưởng</p><p style=\"text-align:justify;\">+ Nhận thông báo cấp lại mật khẩu</p><p style=\"text-align:justify;\">- Tính năng mua vé tham gia dự thưởng</p><p style=\"text-align:justify;\">- Tính năng nhận thông báo trúng thưởng</p><p style=\"text-align:justify;\">Website:&nbsp;<a href=\"https://www.vietlott-sms.vn/\">https://www.vietlott-sms.vn/</a></p><p style=\"text-align:justify;\">Ứng dụng:&nbsp;<strong>Vietllot SMS</strong></p><p style=\"text-align:justify;\">Liên hệ: 9090</p>', 'vietlott-sms-101020231696910683.html', '2023-10-09 20:06:38', '2023-10-09 21:04:43');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `slug` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_categories`
--

INSERT INTO `product_categories` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Viễn thông', 'vien-thong', '2023-07-27 01:41:35', '2023-07-27 01:41:35'),
(2, 'Giải pháp số - Nền tảng số', 'giai-phap-so-nen-tang-so', '2023-07-27 01:42:34', '2023-07-27 01:42:34'),
(3, 'Nội dung số', 'noi-dung-so', '2023-07-27 01:42:53', '2023-07-27 01:42:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `recruitments`
--

CREATE TABLE `recruitments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) NOT NULL,
  `image_name` varchar(191) NOT NULL,
  `image_path` varchar(191) NOT NULL,
  `contents` text NOT NULL,
  `number_of_applicants` int(11) NOT NULL,
  `application_deadline` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `recruitments`
--

INSERT INTO `recruitments` (`id`, `title`, `image_name`, `image_path`, `contents`, `number_of_applicants`, `application_deadline`, `status`, `created_at`, `updated_at`) VALUES
(1, '[Hà Nội] Lập trình Back-end', 'logo2.png', '/storage/recruiment/1/27072023_042106_lgPnhgL2aR.png', '<h4><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>M&ocirc; tả c&ocirc;ng việc:</strong></span></span></h4>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Thiết kế v&agrave; x&acirc;y dựng c&aacute;c hệ thống bằng ng&ocirc;n ngữ Java với framework Spring, SpringBoot sử dụng JPA Hibernate</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Tham gia ph&acirc;n t&iacute;ch, thiết kế c&aacute;c t&iacute;nh năng mới</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Tham gia v&agrave;o qu&aacute; tr&igrave;nh ph&aacute;t triển &yacute; tưởng, ứng dụng mới cho web application</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Hỗ trợ, sửa lỗi, tối ưu hệ thống sau triển khai</span></span></li>\r\n</ul>\r\n\r\n<h4><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Y&ecirc;u cầu:</strong></span></span></h4>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ Th&ocirc;ng tin, To&aacute;n Tin hoặc tương đương.</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Dưới 35 tuổi</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&oacute; kiến thức hoặc c&oacute; kinh nghiệm lập tr&igrave;nh backend, dự &aacute;n với&nbsp; Java như Spring, SpringBoot tối thiểu 1 năm kinh nghiệm</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&oacute; kinh nghiệm v&agrave; th&agrave;nh thạo l&agrave;m việc với CSDL như: Postgresql, Oracle</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Sử dụng th&agrave;nh thạo c&ocirc;ng cụ Intelij IDEA, VS Code.</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Nắm vững c&aacute;ch d&ugrave;ng Git.</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Nắm vững cơ sở dữ liệu (SQL, NoSQL), OOP, REST, nắm vững thiết kế hệ thống web application.</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&oacute; kinh nghiệm triển khai hệ thống tr&ecirc;n nền Linux/Centos, Docker l&agrave; một lợi thế</span></span></li>\r\n</ul>\r\n\r\n<h4><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Quyền lợi được hưởng:</strong></span></span></h4>\r\n\r\n<ul>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Thu nhập từ 200 &ndash; 350 triệu/năm</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">L&agrave;m việc trong m&ocirc;i trường chuy&ecirc;n nghiệp, ổn định</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Chăm s&oacute;c sức khỏe bởi g&oacute;i Bảo hiểm với quyền lợi l&ecirc;n tới $8000</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">C&aacute;c chế độ bồi dưỡng, phụ cấp ăn trưa, thu&ecirc; bao nội bộ</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Trải nghiệm c&aacute;c hoạt động teambuilding, văn h&oacute;a, du lịch, du xu&acirc;n, nghỉ m&aacute;t h&egrave; trong v&agrave; ngo&agrave;i nước đa dạng&hellip;</span></span></li>\r\n	<li><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Thường xuy&ecirc;n tham dự c&aacute;c kh&oacute;a đ&agrave;o tạo phong ph&uacute; nhằm gi&uacute;p CBCNV kh&ocirc;ng ngừng ph&aacute;t triển bản th&acirc;n, n&acirc;ng cao c&aacute;c kỹ năng cũng như chuy&ecirc;n m&ocirc;n nghề nghiệp</span></span></li>\r\n</ul>\r\n\r\n<h4><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><strong>Th&ocirc;ng tin li&ecirc;n hệ:</strong></span></span></h4>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\">Email:&nbsp;<a href=\"mailto:tuyendung.it@mobifone.vn\"><strong>tuyendung.it@mobifone.vn</strong></a><br />\r\nFanpage:<strong><a href=\"https://www.facebook.com/tuyendungcnttmobifone\">Trung t&acirc;m CNTT MobiFone | Facbook</a></strong></span></span></p>\r\n\r\n<p><span style=\"font-size:16px\"><span style=\"font-family:Times New Roman,Times,serif\"><em>Địa chỉ: Tầng 9-10, t&ograve;a nh&agrave; Th&aacute;i Nam, đường Dương Đ&igrave;nh Nghệ, phường Y&ecirc;n H&ograve;a, quận Cầu Giấy, H&agrave; Nội</em></span></span></p>', 10, '2023-12-30 17:00:00', 1, '2023-07-26 21:06:22', '2023-07-26 21:06:22'),
(2, '[Đà Nẵng] Lập trình fullstack', 'English logo trang do 1A.png', '/storage/recruiment/1/27072023_044607_yYApruiGGE.png', '<h4><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\"><strong>M&ocirc; tả c&ocirc;ng việc</strong></span></span></h4>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">X&acirc;y dựng c&aacute;c giải ph&aacute;p về kiến tr&uacute;c (architecture) v&agrave; nền tảng (platform) cho c&aacute;c hệ thống phần mềm ở cả Front End v&agrave; Back End</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">X&acirc;y dựng c&aacute;c chức năng theo t&agrave;i liệu giải ph&aacute;p chi tiết, c&aacute;c API, ứng dụng web, thư viện d&ugrave;ng chung c&oacute; khả năng chịu lỗi tốt, t&iacute;nh bảo mật cao, dễ d&agrave;ng mở rộng v&agrave; t&iacute;ch hợp với c&aacute;c hệ thống kh&aacute;c</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Viết v&agrave; thực hiện unit test</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Tối ưu c&aacute;c hệ thống nhằm đ&aacute;p ứng khả năng xử l&yacute; lượng giao dịch lớn v&agrave; khả năng phục vụ lượng lớn người d&ugrave;ng đồng thời</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Nghi&ecirc;n cứu, &aacute;p dụng c&aacute;c c&ocirc;ng nghệ mới nhằm tối ưu hệ thống</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">X&acirc;y dựng c&aacute;c t&agrave;i liệu m&ocirc; tả dịch vụ/hệ thống, t&agrave;i liệu c&agrave;i đặt/cấu h&igrave;nh, t&agrave;i liệu vận h&agrave;nh, t&agrave;i liệu kiểm tra hệ thống h&agrave;ng ng&agrave;y li&ecirc;n quan đến lĩnh vực được giao nhiệm vụ</span></span></li>\r\n</ul>\r\n\r\n<h4><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\"><strong>Y&ecirc;u cầu</strong></span></span></h4>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ Th&ocirc;ng tin, To&aacute;n Tin hoặc tương đương.</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Dưới 35 tuổi</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Th&agrave;nh thạo một trong c&aacute;c ng&ocirc;n ngữ lập tr&igrave;nh: Python, Javascript</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">C&oacute; kinh nghiệm sử dụng NodeJS, ReactJS, ReactNative</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">C&oacute; kinh nghiệm l&agrave;m việc với c&aacute;c hệ quản trị cơ sở dữ liệu SQL, NoSQL</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">C&oacute; kinh nghiệm sử dụng Git</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Kiến thức về lập tr&igrave;nh v&agrave; thiết kế hướng đối tượng (OOP)</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Kiến thức về cấu tr&uacute;c dữ liệu &amp; giải thuật, design patterns</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Kiến thức về quy tr&igrave;nh ph&aacute;t triển phần mềm</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Tư duy tốt, c&oacute; khả năng nghi&ecirc;n cứu, đ&aacute;nh gi&aacute; v&agrave; cập nhật c&ocirc;ng nghệ mới</span></span></li>\r\n</ul>\r\n\r\n<h4><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\"><strong>Quyền lợi</strong></span></span></h4>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Thu nhập từ 200 &ndash; 350 triệu/năm</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">L&agrave;m việc trong m&ocirc;i trường chuy&ecirc;n nghiệp, ổn định</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Chăm s&oacute;c sức khỏe bởi g&oacute;i Bảo hiểm với quyền lợi l&ecirc;n tới $8000</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">C&aacute;c chế độ bồi dưỡng, phụ cấp ăn trưa, thu&ecirc; bao nội bộ</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Trải nghiệm c&aacute;c hoạt động teambuilding, văn h&oacute;a, du lịch, du xu&acirc;n, nghỉ m&aacute;t h&egrave; trong v&agrave; ngo&agrave;i nước đa dạng&hellip;</span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Thường xuy&ecirc;n tham dự c&aacute;c kh&oacute;a đ&agrave;o tạo phong ph&uacute; nhằm gi&uacute;p CBCNV kh&ocirc;ng ngừng ph&aacute;t triển bản th&acirc;n, n&acirc;ng cao c&aacute;c kỹ năng cũng như chuy&ecirc;n m&ocirc;n nghề nghiệp</span></span></li>\r\n</ul>\r\n\r\n<h4><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\"><strong>Th&ocirc;ng tin li&ecirc;n hệ</strong></span></span></h4>\r\n\r\n<ul>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Email:&nbsp;<a href=\"mailto:tuyendung.it@mobifone.vn\"><strong>tuyendung.it@mobifone.vn</strong></a></span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Fanpage:<a href=\"https://www.facebook.com/tuyendungcnttmobifone\"><strong>Tuyển dụng Trung t&acirc;m CNTT MobiFone | Facebook</strong></a></span></span></li>\r\n	<li><span style=\"font-family:Times New Roman,Times,serif\"><span style=\"font-size:16px\">Địa chỉ văn ph&ograve;ng Đ&agrave; Nẵng: Tầng 8, t&ograve;a nh&agrave; Mobifone, số 586 Nguyễn Hữu Thọ, phường Khu&ecirc; Trung, quận Cẩm Lệ, th&agrave;nh phố Đ&agrave; nẵng</span></span></li>\r\n</ul>', 9, '2023-07-27 04:15:08', 0, '2023-07-26 21:07:46', '2023-07-26 21:07:46'),
(3, '[Đà Nẵng] Chuyên viên phân tích nghiệp vụ', 'English logo 1A (2).png', '/storage/recruiment/1/27072023_040335_nO3pa2GwHZ.png', '<h4>M&ocirc; tả c&ocirc;ng việc</h4>\r\n\r\n<ul>\r\n	<li>Tiến h&agrave;nh khảo s&aacute;t, thu thập y&ecirc;u cầu v&agrave; c&aacute;c hạng mục c&ocirc;ng việc từ kh&aacute;ch h&agrave;ng, đ&aacute;nh gi&aacute; t&iacute;nh khả thi v&agrave; t&aacute;c động c&oacute; li&ecirc;n quan</li>\r\n	<li>Ph&acirc;n t&iacute;ch y&ecirc;u cầu, m&ocirc; h&igrave;nh h&oacute;a quy tr&igrave;nh kinh doanh, x&acirc;y dựng t&agrave;i liệu kinh doanh (Ph&acirc;n t&iacute;ch y&ecirc;u cầu, đặc điểm kỹ thuật, thiết kế prototye (Mockup) cho sản phẩm</li>\r\n	<li>L&ecirc;n &yacute; tưởng thiết kế bằng storyboards, sơ đồ quy tr&igrave;nh v&agrave; sitemaps</li>\r\n	<li>Thiết kế giao diện người sử dụng, như menu, tab v&agrave; widget</li>\r\n	<li>X&acirc;y dựng hệ thống t&agrave;i liệu cho sản phẩm, bao gồm: t&agrave;i liệu giải ph&aacute;p, t&agrave;i liệu HDSD, t&agrave;i liệu thiết kế như SRS, FSD, URD, HLD, LLD&hellip;</li>\r\n	<li>X&acirc;y dựng t&agrave;i liệu thiết kế tổng thể, thiết kế chi tiết, thiết kế CSDL</li>\r\n	<li>Quản l&yacute; c&aacute;c y&ecirc;u cầu thay đổi về sản phẩm</li>\r\n	<li>R&agrave; so&aacute;t, đ&aacute;nh gi&aacute; sản phẩm trước khi b&agrave;n giao cho kh&aacute;ch h&agrave;ng</li>\r\n</ul>\r\n\r\n<h4>Y&ecirc;u cầu</h4>\r\n\r\n<ul>\r\n	<li>Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ Th&ocirc;ng tin, To&aacute;n Tin hoặc tương&nbsp;đương.</li>\r\n	<li>Dưới 35 tuổi</li>\r\n	<li>C&oacute; kiến thức về CNTT: Cấu tr&uacute;c phần mềm, ph&acirc;n t&iacute;ch v&agrave; thiết kế hệ thống, cơ sở dữ liệu</li>\r\n	<li>Thuần thục c&aacute;c kỹ năng: Lập kế hoạch, định vị chiến lược, đ&agrave;m ph&aacute;n, thuyết tr&igrave;nh, thuyết phục kh&aacute;ch h&agrave;ng, giao tiếp v&agrave; l&agrave;m việc nh&oacute;m</li>\r\n	<li>C&oacute; tư duy ph&acirc;n t&iacute;ch hệ thống, tư duy logic, kỹ năng lập luận v&agrave; phản biện</li>\r\n	<li>Chủ động, c&oacute; tr&aacute;ch nhiệm, chịu được &aacute;p lực c&ocirc;ng việc cao</li>\r\n	<li>Ứng dụng th&agrave;nh thạo c&aacute;c techniques như: Market Analysis; Brainstorming; Backlog Management; Use Cases and Scenarios; User Stories; Business Rules Analysis;</li>\r\n	<li>Sử dụng th&agrave;nh thạo c&aacute;c c&ocirc;ng cụ như: Figma, Microsoft office: Visio, Word, Excel, Powerpoint&hellip;, Enterprise Architecture, Visual Paradigm</li>\r\n	<li>Kiến thức về quy tr&igrave;nh ph&aacute;t triển phần mềm</li>\r\n	<li>C&oacute; kiến thức về nền tảng ERP l&agrave; một lợi thế</li>\r\n	<li>Tư duy tốt, c&oacute; khả năng nghi&ecirc;n cứu, đ&aacute;nh gi&aacute; v&agrave; cập nhật c&ocirc;ng nghệ mới</li>\r\n</ul>\r\n\r\n<h4>Quyền lợi</h4>\r\n\r\n<ul>\r\n	<li>Thu nhập từ 200 &ndash; 350 triệu/năm</li>\r\n	<li>L&agrave;m việc trong m&ocirc;i trường chuy&ecirc;n nghiệp, ổn định</li>\r\n	<li>Chăm s&oacute;c sức khỏe bởi g&oacute;i Bảo hiểm với quyền lợi l&ecirc;n tới $8000</li>\r\n	<li>C&aacute;c chế độ bồi dưỡng, phụ cấp ăn trưa, thu&ecirc; bao nội bộ</li>\r\n	<li>Trải nghiệm c&aacute;c hoạt động teambuilding, văn h&oacute;a, du lịch, du xu&acirc;n, nghỉ m&aacute;t h&egrave; trong v&agrave; ngo&agrave;i nước đa dạng&hellip;</li>\r\n	<li>Thường xuy&ecirc;n tham dự c&aacute;c kh&oacute;a đ&agrave;o tạo phong ph&uacute; nhằm gi&uacute;p CBCNV kh&ocirc;ng ngừng ph&aacute;t triển bản th&acirc;n, n&acirc;ng cao c&aacute;c kỹ năng cũng như chuy&ecirc;n m&ocirc;n nghề nghiệp</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng tin li&ecirc;n hệ</h2>\r\n\r\n<ul>\r\n	<li>Email:&nbsp;<a href=\"mailto:tuyendung.it@mobifone.vn\"><strong>tuyendung.it@mobifone.vn</strong></a></li>\r\n	<li>Fanpage:<a href=\"https://www.facebook.com/tuyendungcnttmobifone\"><strong>Tuyển dụng Trung t&acirc;m CNTT MobiFone | Facebook</strong></a></li>\r\n	<li>Địa chỉ văn ph&ograve;ng Đ&agrave; Nẵng: Tầng 8, t&ograve;a nh&agrave; Mobifone, số 586 Nguyễn Hữu Thọ, phường Khu&ecirc; Trung, quận Cẩm Lệ, th&agrave;nh phố Đ&agrave; nẵng</li>\r\n</ul>', 5, '2023-07-28 17:00:00', 1, '2023-07-26 21:35:03', '2023-07-26 21:35:03'),
(4, '[Hà Nội] Lập trình viên Mobile', 'English logo trang do 1A.png', '/storage/recruiment/1/27072023_062910_Hv6ZkUlPph.png', '<h4>M&ocirc; tả c&ocirc;ng việc</h4>\r\n\r\n<ul>\r\n	<li>Tiến h&agrave;nh khảo s&aacute;t, thu thập y&ecirc;u cầu v&agrave; c&aacute;c hạng mục c&ocirc;ng việc từ kh&aacute;ch h&agrave;ng, đ&aacute;nh gi&aacute; t&iacute;nh khả thi v&agrave; t&aacute;c động c&oacute; li&ecirc;n quan</li>\r\n	<li>Ph&acirc;n t&iacute;ch y&ecirc;u cầu, m&ocirc; h&igrave;nh h&oacute;a quy tr&igrave;nh kinh doanh, x&acirc;y dựng t&agrave;i liệu kinh doanh (Ph&acirc;n t&iacute;ch y&ecirc;u cầu, đặc điểm kỹ thuật, thiết kế prototye (Mockup) cho sản phẩm</li>\r\n	<li>L&ecirc;n &yacute; tưởng thiết kế bằng storyboards, sơ đồ quy tr&igrave;nh v&agrave; sitemaps</li>\r\n	<li>Thiết kế giao diện người sử dụng, như menu, tab v&agrave; widget</li>\r\n	<li>X&acirc;y dựng hệ thống t&agrave;i liệu cho sản phẩm, bao gồm: t&agrave;i liệu giải ph&aacute;p, t&agrave;i liệu HDSD, t&agrave;i liệu thiết kế như SRS, FSD, URD, HLD, LLD&hellip;</li>\r\n	<li>X&acirc;y dựng t&agrave;i liệu thiết kế tổng thể, thiết kế chi tiết, thiết kế CSDL</li>\r\n	<li>Quản l&yacute; c&aacute;c y&ecirc;u cầu thay đổi về sản phẩm</li>\r\n	<li>R&agrave; so&aacute;t, đ&aacute;nh gi&aacute; sản phẩm trước khi b&agrave;n giao cho kh&aacute;ch h&agrave;ng</li>\r\n</ul>\r\n\r\n<h4>Y&ecirc;u cầu</h4>\r\n\r\n<ul>\r\n	<li>Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ Th&ocirc;ng tin, To&aacute;n Tin hoặc tương&nbsp;đương.</li>\r\n	<li>Dưới 35 tuổi</li>\r\n	<li>C&oacute; kiến thức về CNTT: Cấu tr&uacute;c phần mềm, ph&acirc;n t&iacute;ch v&agrave; thiết kế hệ thống, cơ sở dữ liệu</li>\r\n	<li>Thuần thục c&aacute;c kỹ năng: Lập kế hoạch, định vị chiến lược, đ&agrave;m ph&aacute;n, thuyết tr&igrave;nh, thuyết phục kh&aacute;ch h&agrave;ng, giao tiếp v&agrave; l&agrave;m việc nh&oacute;m</li>\r\n	<li>C&oacute; tư duy ph&acirc;n t&iacute;ch hệ thống, tư duy logic, kỹ năng lập luận v&agrave; phản biện</li>\r\n	<li>Chủ động, c&oacute; tr&aacute;ch nhiệm, chịu được &aacute;p lực c&ocirc;ng việc cao</li>\r\n	<li>Ứng dụng th&agrave;nh thạo c&aacute;c techniques như: Market Analysis; Brainstorming; Backlog Management; Use Cases and Scenarios; User Stories; Business Rules Analysis;</li>\r\n	<li>Sử dụng th&agrave;nh thạo c&aacute;c c&ocirc;ng cụ như: Figma, Microsoft office: Visio, Word, Excel, Powerpoint&hellip;, Enterprise Architecture, Visual Paradigm</li>\r\n	<li>Kiến thức về quy tr&igrave;nh ph&aacute;t triển phần mềm</li>\r\n	<li>C&oacute; kiến thức về nền tảng ERP l&agrave; một lợi thế</li>\r\n	<li>Tư duy tốt, c&oacute; khả năng nghi&ecirc;n cứu, đ&aacute;nh gi&aacute; v&agrave; cập nhật c&ocirc;ng nghệ mới</li>\r\n</ul>\r\n\r\n<h4>Quyền lợi</h4>\r\n\r\n<ul>\r\n	<li>Thu nhập từ 200 &ndash; 350 triệu/năm</li>\r\n	<li>L&agrave;m việc trong m&ocirc;i trường chuy&ecirc;n nghiệp, ổn định</li>\r\n	<li>Chăm s&oacute;c sức khỏe bởi g&oacute;i Bảo hiểm với quyền lợi l&ecirc;n tới $8000</li>\r\n	<li>C&aacute;c chế độ bồi dưỡng, phụ cấp ăn trưa, thu&ecirc; bao nội bộ</li>\r\n	<li>Trải nghiệm c&aacute;c hoạt động teambuilding, văn h&oacute;a, du lịch, du xu&acirc;n, nghỉ m&aacute;t h&egrave; trong v&agrave; ngo&agrave;i nước đa dạng&hellip;</li>\r\n	<li>Thường xuy&ecirc;n tham dự c&aacute;c kh&oacute;a đ&agrave;o tạo phong ph&uacute; nhằm gi&uacute;p CBCNV kh&ocirc;ng ngừng ph&aacute;t triển bản th&acirc;n, n&acirc;ng cao c&aacute;c kỹ năng cũng như chuy&ecirc;n m&ocirc;n nghề nghiệp</li>\r\n</ul>\r\n\r\n<h2>Th&ocirc;ng tin li&ecirc;n hệ</h2>\r\n\r\n<ul>\r\n	<li>Email:&nbsp;<a href=\"mailto:tuyendung.it@mobifone.vn\"><strong>tuyendung.it@mobifone.vn</strong></a></li>\r\n	<li>Fanpage:<a href=\"https://www.facebook.com/tuyendungcnttmobifone\"><strong>Tuyển dụng Trung t&acirc;m CNTT MobiFone | Facebook</strong></a></li>\r\n	<li>Địa chỉ văn ph&ograve;ng Đ&agrave; Nẵng: Tầng 8, t&ograve;a nh&agrave; Mobifone, số 586 Nguyễn Hữu Thọ, phường Khu&ecirc; Trung, quận Cẩm Lệ, th&agrave;nh phố Đ&agrave; nẵng</li>\r\n</ul>', 5, '2023-07-26 17:00:00', 1, '2023-07-26 23:10:30', '2023-10-09 21:28:34'),
(5, 'Chuyên viên Phát triển Giải pháp du lịch thông minh', 'logo tiếng anh XĐ 1B (1).png', '/storage/recruiment/1/27072023_063811_tTA6v8a5Fd.png', '<h4>M&ocirc; tả c&ocirc;ng việc:</h4>\r\n\r\n<ul>\r\n	<li>T&igrave;m hiểu, nghi&ecirc;n cứu thị trường, ph&acirc;n t&iacute;ch nhu cầu sử dụng của kh&aacute;ch h&agrave;ng trong lĩnh vực Du lịch th&ocirc;ng minh.</li>\r\n	<li>L&agrave;m việc với c&aacute;c đối t&aacute;c trong v&agrave; ngo&agrave;i nước để đ&aacute;nh gi&aacute;, lựa chọn sản phẩm/dịch vụ t&iacute;ch hợp với hệ sinh th&aacute;i du lịch th&ocirc;ng minh của Mobifone.</li>\r\n	<li>Đề xuất ho&agrave;n thiện, tối ưu c&aacute;c t&iacute;nh năng trong hệ sinh th&aacute;i du lịch th&ocirc;ng minh, đề xuất phương &aacute;n kinh doanh (ph&aacute;t triển nội dung, ch&iacute;nh s&aacute;ch gi&aacute;, ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng, k&ecirc;nh b&aacute;n h&agrave;ng&hellip;).</li>\r\n	<li>Triển khai hỗ trợ c&aacute;c C&ocirc;ng ty Mobifone khu vực &nbsp;kinh doanh sản phẩm du lịch th&ocirc;ng minh tới c&aacute;c kh&aacute;ch h&agrave;ng khối ch&iacute;nh phủ, kh&aacute;ch h&agrave;ng doanh nghiệp, kh&aacute;ch h&agrave;ng c&aacute; nh&acirc;n.</li>\r\n	<li>Tổ chức ph&aacute;t triển, mở rộng hệ thống đại l&yacute; để b&aacute;n sản phẩm/dịch vụ.</li>\r\n	<li>Thực hiện c&aacute;c c&ocirc;ng việc ph&aacute;t sinh kh&aacute;c được giao.</li>\r\n</ul>\r\n\r\n<h4>Y&ecirc;u cầu c&ocirc;ng việc:</h4>\r\n\r\n<ul>\r\n	<li>Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ Th&ocirc;ng tin, To&aacute;n Tin hoặc chuy&ecirc;n ng&agrave;nh kh&aacute;c li&ecirc;n quan vị tr&iacute; tuyển dụng.</li>\r\n	<li>Dưới 35 tuổi</li>\r\n	<li>C&oacute; hiểu biết hoặc kinh nghiệm trong lĩnh vực văn h&oacute;a, du lịch</li>\r\n	<li>C&oacute; kỹ năng giao tiếp, phối hợp l&agrave;m việc nh&oacute;m, quản l&yacute; thời gian.</li>\r\n	<li>C&oacute; khả năng nhanh nhạy tiếp nhận c&aacute;c y&ecirc;u cầu của kh&aacute;ch h&agrave;ng v&agrave; đề xuất hướng giải quyết.</li>\r\n	<li>Kỹ năng tổng hợp, ph&acirc;n t&iacute;ch, x&acirc;y dựng b&aacute;o c&aacute;o.</li>\r\n	<li>C&oacute; tr&aacute;ch nhiệm cao với c&ocirc;ng việc.</li>\r\n	<li>Lu&ocirc;n c&oacute; tinh thần học hỏi, nghi&ecirc;n cứu nhằm n&acirc;ng cao kiến thức.</li>\r\n</ul>\r\n\r\n<h4>Quyền lợi được hưởng:</h4>\r\n\r\n<ul>\r\n	<li>Thu nhập từ 200 &ndash; 350 triệu/năm</li>\r\n	<li>Thời gian l&agrave;m việc từ thứ 2 đến thứ 6 (nghỉ thứ 7, Chủ nhật)</li>\r\n	<li>Quyền lợi về Bảo hiểm x&atilde; hội/thất nghiệp v&agrave; c&aacute;c ph&uacute;c lợi hấp dẫn kh&aacute;c, g&oacute;i bảo hiểm y tế quyền lợi đến $8000</li>\r\n	<li>C&aacute;c chế độ bồi dưỡng, phụ cấp ăn trưa, thu&ecirc; bao nội bộ</li>\r\n	<li>Được đ&agrave;o tạo ph&aacute;t triển bản th&acirc;n, n&acirc;ng cao c&aacute;c kỹ năng v&agrave; chuy&ecirc;n m&ocirc;n nghề nghiệp</li>\r\n	<li>L&agrave;m việc tại m&ocirc;i trường chuy&ecirc;n nghiệp, năng động, trẻ trung v&agrave; trải nghiệm c&aacute;c hoạt động văn h&oacute;a doanh nghiệp đặc sắc</li>\r\n</ul>\r\n\r\n<h4>Th&ocirc;ng tin li&ecirc;n hệ:</h4>\r\n\r\n<ul>\r\n	<li>Hotline tuyển dụng:&nbsp;<strong>089.615.5566</strong></li>\r\n	<li>Email:&nbsp;<a href=\"mailto:tuyendung.it@mobifone.vn\"><strong>tuyendung.it@mobifone.vn</strong></a></li>\r\n	<li>Fanpage:<a href=\"https://www.facebook.com/mobifoneITCenter\"><strong>Trung t&acirc;m CNTT MobiFone | Facebook</strong></a></li>\r\n	<li>Địa chỉ: Tầng 9-10 t&ograve;a nh&agrave; Th&aacute;i Nam, đường Dương Đ&igrave;nh Nghệ, phường Y&ecirc;n H&ograve;a, quận Cầu Giấy, H&agrave; Nội</li>\r\n</ul>', 6, '2023-07-29 17:00:00', 1, '2023-07-26 23:11:38', '2023-07-26 23:11:38'),
(6, 'Nhân viên Tổng hợp số liệu', '1B trắng đỏ.png', '/storage/recruiment/1/27072023_061817_m0GY8wFF4I.png', '<h4>M&ocirc; tả c&ocirc;ng việc:</h4>\r\n\r\n<ul>\r\n	<li>T&igrave;m hiểu, nghi&ecirc;n cứu thị trường, ph&acirc;n t&iacute;ch nhu cầu sử dụng của kh&aacute;ch h&agrave;ng trong lĩnh vực Du lịch th&ocirc;ng minh.</li>\r\n	<li>L&agrave;m việc với c&aacute;c đối t&aacute;c trong v&agrave; ngo&agrave;i nước để đ&aacute;nh gi&aacute;, lựa chọn sản phẩm/dịch vụ t&iacute;ch hợp với hệ sinh th&aacute;i du lịch th&ocirc;ng minh của Mobifone.</li>\r\n	<li>Đề xuất ho&agrave;n thiện, tối ưu c&aacute;c t&iacute;nh năng trong hệ sinh th&aacute;i du lịch th&ocirc;ng minh, đề xuất phương &aacute;n kinh doanh (ph&aacute;t triển nội dung, ch&iacute;nh s&aacute;ch gi&aacute;, ch&iacute;nh s&aacute;ch b&aacute;n h&agrave;ng, k&ecirc;nh b&aacute;n h&agrave;ng&hellip;).</li>\r\n	<li>Triển khai hỗ trợ c&aacute;c C&ocirc;ng ty Mobifone khu vực &nbsp;kinh doanh sản phẩm du lịch th&ocirc;ng minh tới c&aacute;c kh&aacute;ch h&agrave;ng khối ch&iacute;nh phủ, kh&aacute;ch h&agrave;ng doanh nghiệp, kh&aacute;ch h&agrave;ng c&aacute; nh&acirc;n.</li>\r\n	<li>Tổ chức ph&aacute;t triển, mở rộng hệ thống đại l&yacute; để b&aacute;n sản phẩm/dịch vụ.</li>\r\n	<li>Thực hiện c&aacute;c c&ocirc;ng việc ph&aacute;t sinh kh&aacute;c được giao.</li>\r\n</ul>\r\n\r\n<h4>Y&ecirc;u cầu c&ocirc;ng việc:</h4>\r\n\r\n<ul>\r\n	<li>Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ Th&ocirc;ng tin, To&aacute;n Tin hoặc chuy&ecirc;n ng&agrave;nh kh&aacute;c li&ecirc;n quan vị tr&iacute; tuyển dụng.</li>\r\n	<li>Dưới 35 tuổi</li>\r\n	<li>C&oacute; hiểu biết hoặc kinh nghiệm trong lĩnh vực văn h&oacute;a, du lịch</li>\r\n	<li>C&oacute; kỹ năng giao tiếp, phối hợp l&agrave;m việc nh&oacute;m, quản l&yacute; thời gian.</li>\r\n	<li>C&oacute; khả năng nhanh nhạy tiếp nhận c&aacute;c y&ecirc;u cầu của kh&aacute;ch h&agrave;ng v&agrave; đề xuất hướng giải quyết.</li>\r\n	<li>Kỹ năng tổng hợp, ph&acirc;n t&iacute;ch, x&acirc;y dựng b&aacute;o c&aacute;o.</li>\r\n	<li>C&oacute; tr&aacute;ch nhiệm cao với c&ocirc;ng việc.</li>\r\n	<li>Lu&ocirc;n c&oacute; tinh thần học hỏi, nghi&ecirc;n cứu nhằm n&acirc;ng cao kiến thức.</li>\r\n</ul>\r\n\r\n<h4>Quyền lợi được hưởng:</h4>\r\n\r\n<ul>\r\n	<li>Thu nhập từ 200 &ndash; 350 triệu/năm</li>\r\n	<li>Thời gian l&agrave;m việc từ thứ 2 đến thứ 6 (nghỉ thứ 7, Chủ nhật)</li>\r\n	<li>Quyền lợi về Bảo hiểm x&atilde; hội/thất nghiệp v&agrave; c&aacute;c ph&uacute;c lợi hấp dẫn kh&aacute;c, g&oacute;i bảo hiểm y tế quyền lợi đến $8000</li>\r\n	<li>C&aacute;c chế độ bồi dưỡng, phụ cấp ăn trưa, thu&ecirc; bao nội bộ</li>\r\n	<li>Được đ&agrave;o tạo ph&aacute;t triển bản th&acirc;n, n&acirc;ng cao c&aacute;c kỹ năng v&agrave; chuy&ecirc;n m&ocirc;n nghề nghiệp</li>\r\n	<li>L&agrave;m việc tại m&ocirc;i trường chuy&ecirc;n nghiệp, năng động, trẻ trung v&agrave; trải nghiệm c&aacute;c hoạt động văn h&oacute;a doanh nghiệp đặc sắc</li>\r\n</ul>\r\n\r\n<h4>Th&ocirc;ng tin li&ecirc;n hệ:</h4>\r\n\r\n<ul>\r\n	<li>Hotline tuyển dụng:&nbsp;<strong>089.615.5566</strong></li>\r\n	<li>Email:&nbsp;<a href=\"mailto:tuyendung.it@mobifone.vn\"><strong>tuyendung.it@mobifone.vn</strong></a></li>\r\n	<li>Fanpage:<a href=\"https://www.facebook.com/mobifoneITCenter\"><strong>Trung t&acirc;m CNTT MobiFone | Facebook</strong></a></li>\r\n	<li>Địa chỉ: Tầng 9-10 t&ograve;a nh&agrave; Th&aacute;i Nam, đường Dương Đ&igrave;nh Nghệ, phường Y&ecirc;n H&ograve;a, quận Cầu Giấy, H&agrave; Nội</li>\r\n</ul>', 1, '2023-08-30 17:00:00', 1, '2023-07-26 23:17:18', '2023-07-26 23:17:18'),
(7, '[Hà Nội] Kiểm thử (Tester)', 'photo-93.webp', '/storage/recruiment/1/27072023_071858_SErUy2GHqN.webp', '<h4>M&ocirc; tả c&ocirc;ng việc</h4>\r\n\r\n<ul>\r\n	<li>Thực hiện x&acirc;y dựng testcase từ t&agrave;i liệu nghiệp vụ v&agrave; c&aacute;c t&agrave;i liệu li&ecirc;n quan tới phần mềm</li>\r\n	<li>Chuẩn bị kịch bản kiểm thử, dữ liệu kiểm thử</li>\r\n	<li>Thực hiện test chức năng (functional test), test t&iacute;ch hợp hệ thống (system test/integration test), test chấp nhận người d&ugrave;ng (UAT)</li>\r\n	<li>Phối hợp với đội ph&aacute;t triển để hỗ trợ sửa lỗi lập tr&igrave;nh v&agrave; kiểm thử lại sau sửa lỗi</li>\r\n	<li>Ho&agrave;n th&agrave;nh c&aacute;c t&agrave;i liệu về kiểm thử (kết quả test), t&agrave;i liệu hướng dẫn sử dụng, t&agrave;i liệu quản l&yacute; cấu h&igrave;nh (nếu c&oacute;)</li>\r\n	<li>Thực hiện c&ocirc;ng việc kiểm thử v&agrave; quản l&yacute; chất lượng phần mềm theo quy tr&igrave;nh Agile</li>\r\n	<li>Phối hợp với Quản trị dự &aacute;n để đảm bảo chất lượng phần mềm</li>\r\n	<li>B&aacute;o c&aacute;o về chất lượng sản phẩm với Quản trị dự &aacute;n v&agrave; L&atilde;nh đạo ph&ograve;ng chức năng</li>\r\n</ul>\r\n\r\n<h4>Y&ecirc;u cầu</h4>\r\n\r\n<ul>\r\n	<li>Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ Th&ocirc;ng tin, To&aacute;n Tin hoặc tương đương.</li>\r\n	<li>Dưới 35 tuổi</li>\r\n	<li>Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm l&agrave;m việc ở vị tr&iacute; tương đương.</li>\r\n	<li>C&oacute; kiến thức về thiết kế, kiểm thử phần mềm v&agrave; th&agrave;nh thạo c&aacute;c phương ph&aacute;p thử nghiệm</li>\r\n	<li>Th&agrave;nh thạo c&aacute;c kỹ thuật kiểm thử phần mềm cũng như đ&aacute;nh gi&aacute; khả năng tương th&iacute;ch với c&aacute;c chương tr&igrave;nh phần mềm kh&aacute;c nhau</li>\r\n	<li>C&oacute; kinh nghiệm kiểm thử Non-function</li>\r\n	<li>Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm l&agrave;m việc với quy tr&igrave;nh aglie/scrum, c&oacute; kinh nghiệm sử dụng c&aacute;c tool quản l&yacute; bug/ DB, c&oacute; kiến thức về SQL</li>\r\n	<li>Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm Automation test</li>\r\n	<li>Giao tiếp tốt v&agrave; kỹ năng tư duy phản biện</li>\r\n	<li>C&oacute; khả năng l&agrave;m việc nh&oacute;m tốt; Khả năng l&agrave;m việc độc lập v&agrave; cẩn thận, tỉ mỉ</li>\r\n	<li>Khả năng tự quản l&yacute; v&agrave; quản l&yacute; thời gian tốt, kỹ năng giải quyết vấn đề tốt.</li>\r\n</ul>\r\n\r\n<h4>Quyền lợi</h4>\r\n\r\n<ul>\r\n	<li>Thu nhập từ 200 &ndash; 350 triệu/năm</li>\r\n	<li>L&agrave;m việc trong m&ocirc;i trường chuy&ecirc;n nghiệp, ổn định</li>\r\n	<li>Chăm s&oacute;c sức khỏe bởi g&oacute;i Bảo hiểm với quyền lợi l&ecirc;n tới $8000</li>\r\n	<li>C&aacute;c chế độ bồi dưỡng, phụ cấp ăn trưa, thu&ecirc; bao nội bộ</li>\r\n	<li>Trải nghiệm c&aacute;c hoạt động teambuilding, văn h&oacute;a, du lịch, du xu&acirc;n, nghỉ m&aacute;t h&egrave; trong v&agrave; ngo&agrave;i nước đa dạng&hellip;</li>\r\n	<li>Thường xuy&ecirc;n tham dự c&aacute;c kh&oacute;a đ&agrave;o tạo phong ph&uacute; nhằm gi&uacute;p CBCNV kh&ocirc;ng ngừng ph&aacute;t triển bản th&acirc;n, n&acirc;ng cao c&aacute;c kỹ năng cũng như chuy&ecirc;n m&ocirc;n nghề nghiệp</li>\r\n</ul>\r\n\r\n<h4>Th&ocirc;ng tin li&ecirc;n hệ</h4>\r\n\r\n<ul>\r\n	<li>Email:&nbsp;<a href=\"mailto:tuyendung.it@mobifone.vn\"><strong>tuyendung.it@mobifone.vn</strong></a></li>\r\n	<li>Fanpage:<a href=\"https://www.facebook.com/tuyendungcnttmobifone\"><strong>Trung t&acirc;m CNTT MobiFone | Facebook</strong></a></li>\r\n	<li>Văn ph&ograve;ng H&agrave; Nội: Tầng 9-10 t&ograve;a nh&agrave; Th&aacute;i Nam, đường Dương Đ&igrave;nh Nghệ, phường Y&ecirc;n H&ograve;a, quận Cầu Giấy, H&agrave; Nội</li>\r\n</ul>', 6, '2023-07-26 17:00:00', 0, '2023-07-26 23:17:57', '2023-10-09 21:28:26'),
(8, '[HCM] Phân tích nghiệp vụ (BA)', 'English logo trang do 1A.png', '/storage/recruiment/1/27072023_064921_m9sm4aYYzJ.png', '<h4>M&ocirc; tả c&ocirc;ng việc</h4>\r\n\r\n<ul>\r\n	<li>Thực hiện x&acirc;y dựng testcase từ t&agrave;i liệu nghiệp vụ v&agrave; c&aacute;c t&agrave;i liệu li&ecirc;n quan tới phần mềm</li>\r\n	<li>Chuẩn bị kịch bản kiểm thử, dữ liệu kiểm thử</li>\r\n	<li>Thực hiện test chức năng (functional test), test t&iacute;ch hợp hệ thống (system test/integration test), test chấp nhận người d&ugrave;ng (UAT)</li>\r\n	<li>Phối hợp với đội ph&aacute;t triển để hỗ trợ sửa lỗi lập tr&igrave;nh v&agrave; kiểm thử lại sau sửa lỗi</li>\r\n	<li>Ho&agrave;n th&agrave;nh c&aacute;c t&agrave;i liệu về kiểm thử (kết quả test), t&agrave;i liệu hướng dẫn sử dụng, t&agrave;i liệu quản l&yacute; cấu h&igrave;nh (nếu c&oacute;)</li>\r\n	<li>Thực hiện c&ocirc;ng việc kiểm thử v&agrave; quản l&yacute; chất lượng phần mềm theo quy tr&igrave;nh Agile</li>\r\n	<li>Phối hợp với Quản trị dự &aacute;n để đảm bảo chất lượng phần mềm</li>\r\n	<li>B&aacute;o c&aacute;o về chất lượng sản phẩm với Quản trị dự &aacute;n v&agrave; L&atilde;nh đạo ph&ograve;ng chức năng</li>\r\n</ul>\r\n\r\n<h4>Y&ecirc;u cầu</h4>\r\n\r\n<ul>\r\n	<li>Tốt nghiệp đại học chuy&ecirc;n ng&agrave;nh C&ocirc;ng nghệ Th&ocirc;ng tin, To&aacute;n Tin hoặc tương đương.</li>\r\n	<li>Dưới 35 tuổi</li>\r\n	<li>Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm l&agrave;m việc ở vị tr&iacute; tương đương.</li>\r\n	<li>C&oacute; kiến thức về thiết kế, kiểm thử phần mềm v&agrave; th&agrave;nh thạo c&aacute;c phương ph&aacute;p thử nghiệm</li>\r\n	<li>Th&agrave;nh thạo c&aacute;c kỹ thuật kiểm thử phần mềm cũng như đ&aacute;nh gi&aacute; khả năng tương th&iacute;ch với c&aacute;c chương tr&igrave;nh phần mềm kh&aacute;c nhau</li>\r\n	<li>C&oacute; kinh nghiệm kiểm thử Non-function</li>\r\n	<li>Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm l&agrave;m việc với quy tr&igrave;nh aglie/scrum, c&oacute; kinh nghiệm sử dụng c&aacute;c tool quản l&yacute; bug/ DB, c&oacute; kiến thức về SQL</li>\r\n	<li>Ưu ti&ecirc;n ứng vi&ecirc;n c&oacute; kinh nghiệm Automation test</li>\r\n	<li>Giao tiếp tốt v&agrave; kỹ năng tư duy phản biện</li>\r\n	<li>C&oacute; khả năng l&agrave;m việc nh&oacute;m tốt; Khả năng l&agrave;m việc độc lập v&agrave; cẩn thận, tỉ mỉ</li>\r\n	<li>Khả năng tự quản l&yacute; v&agrave; quản l&yacute; thời gian tốt, kỹ năng giải quyết vấn đề tốt.</li>\r\n</ul>\r\n\r\n<h4>Quyền lợi</h4>\r\n\r\n<ul>\r\n	<li>Thu nhập từ 200 &ndash; 350 triệu/năm</li>\r\n	<li>L&agrave;m việc trong m&ocirc;i trường chuy&ecirc;n nghiệp, ổn định</li>\r\n	<li>Chăm s&oacute;c sức khỏe bởi g&oacute;i Bảo hiểm với quyền lợi l&ecirc;n tới $8000</li>\r\n	<li>C&aacute;c chế độ bồi dưỡng, phụ cấp ăn trưa, thu&ecirc; bao nội bộ</li>\r\n	<li>Trải nghiệm c&aacute;c hoạt động teambuilding, văn h&oacute;a, du lịch, du xu&acirc;n, nghỉ m&aacute;t h&egrave; trong v&agrave; ngo&agrave;i nước đa dạng&hellip;</li>\r\n	<li>Thường xuy&ecirc;n tham dự c&aacute;c kh&oacute;a đ&agrave;o tạo phong ph&uacute; nhằm gi&uacute;p CBCNV kh&ocirc;ng ngừng ph&aacute;t triển bản th&acirc;n, n&acirc;ng cao c&aacute;c kỹ năng cũng như chuy&ecirc;n m&ocirc;n nghề nghiệp</li>\r\n</ul>\r\n\r\n<h4>Th&ocirc;ng tin li&ecirc;n hệ</h4>\r\n\r\n<ul>\r\n	<li>Email:&nbsp;<a href=\"mailto:tuyendung.it@mobifone.vn\"><strong>tuyendung.it@mobifone.vn</strong></a></li>\r\n	<li>Fanpage:<a href=\"https://www.facebook.com/tuyendungcnttmobifone\"><strong>Trung t&acirc;m CNTT MobiFone | Facebook</strong></a></li>\r\n	<li>Văn ph&ograve;ng H&agrave; Nội: Tầng 9-10 t&ograve;a nh&agrave; Th&aacute;i Nam, đường Dương Đ&igrave;nh Nghệ, phường Y&ecirc;n H&ograve;a, quận Cầu Giấy, H&agrave; Nội</li>\r\n</ul>', 10, '2023-09-29 17:00:00', 1, '2023-07-26 23:21:49', '2023-07-26 23:21:49');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'thi đua', '2023-07-19 13:45:18', '2023-07-19 13:45:18'),
(2, 'sáng kiến', '2023-07-19 13:45:18', '2023-07-19 13:45:18'),
(3, 'phong trào', '2023-07-19 13:51:33', '2023-07-19 13:51:33'),
(4, 'công đoàn', '2023-07-19 15:23:51', '2023-07-19 15:23:51'),
(5, 'chính sách', '2023-07-19 15:23:51', '2023-07-19 15:23:51'),
(16, 'hội nghị', '2023-07-19 16:18:07', '2023-07-19 16:18:07'),
(17, 'ghfjghf', '2023-07-25 14:31:19', '2023-07-25 14:31:19');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pass_decode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `pass_decode`) VALUES
(1, 'anhduc', 'anhduc89@gmail.com', NULL, '$2y$10$.fq7KHPKEgWDEAT60aHkoeemSc0YCDGcp.NkJg8bJl9pLvReG5ztq', NULL, NULL, NULL, 'anhduc89');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `info_companies`
--
ALTER TABLE `info_companies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `news_tags`
--
ALTER TABLE `news_tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `recruitments`
--
ALTER TABLE `recruitments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `info_companies`
--
ALTER TABLE `info_companies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `news_tags`
--
ALTER TABLE `news_tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `recruitments`
--
ALTER TABLE `recruitments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT cho bảng `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
