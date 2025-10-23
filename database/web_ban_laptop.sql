-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 31, 2023 lúc 04:28 PM
-- Phiên bản máy phục vụ: 10.4.27-MariaDB
-- Phiên bản PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_ban_laptop`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) NOT NULL,
  `phone` varchar(191) NOT NULL,
  `log_login` text DEFAULT NULL,
  `class` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `avatar` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `phone`, `log_login`, `class`, `address`, `level`, `status`, `avatar`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', '$2y$10$7VLRCZIgkY4I3Vfg7edih.MEBBc..kbS3SM4B8l6mxJLOst5bcpK.', '0343754517', NULL, 'CDTH18', 'TP Hồ Chí Minh', 1, 1, '2023-05-31__avatar5.png', NULL, '2020-04-16 17:15:17'),
(6, 'Nhân Viên', 'nhanvien@gmail.com', '$2y$10$2Btw2.RpZgDGwgw0yeTSdeyy.md58ZxQD.k.XNhUjFT3zRoD76YVu', '012345678', NULL, NULL, NULL, 2, 1, NULL, '2020-06-06 05:48:35', '2020-06-06 05:50:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `a_name` varchar(191) NOT NULL,
  `a_slug` varchar(191) NOT NULL,
  `a_hot` tinyint(4) NOT NULL DEFAULT 0,
  `a_active` tinyint(4) NOT NULL DEFAULT 1,
  `a_menu_id` int(11) NOT NULL DEFAULT 0,
  `a_view` int(11) NOT NULL DEFAULT 0,
  `a_description` mediumtext DEFAULT NULL,
  `a_avatar` varchar(191) DEFAULT NULL,
  `a_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `a_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `a_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `articles`
--

INSERT INTO `articles` (`id`, `a_name`, `a_slug`, `a_hot`, `a_active`, `a_menu_id`, `a_view`, `a_description`, `a_avatar`, `a_content`, `created_at`, `a_position_2`, `a_position_1`, `updated_at`) VALUES
(1, 'Phần mềm Nitro Sense là gì? Cách tối ưu hóa hiệu suất chơi game trên laptop Acer Nitro', 'phan-mem-nitro-sense-la-gi-cach-toi-uu-hoa-hieu-suat-choi-game-tren-laptop-acer-nitro', 1, 1, 1, 0, NULL, '2023-05-31__phan-mem-nitro-sense-300x300.jpg', '<h2>1. Nitro Sense l&agrave; g&igrave;? Hướng dẫn c&aacute;ch tải phần mềm Nitro Sense cho laptop gaming Nitro</h2>\r\n\r\n<p>Acer Nitro Sense l&agrave; một phần mềm được h&atilde;ng m&aacute;y t&iacute;nh Acer t&iacute;ch hợp độc quyền tr&ecirc;n c&aacute;c d&ograve;ng laptop Nitro của h&atilde;ng. Với phần mềm Nitro Sense th&igrave; người d&ugrave;ng sẽ dễ d&agrave;ng theo d&otilde;i được c&aacute;c th&ocirc;ng số vận h&agrave;nh của thiết bị như hiệu năng hoạt động của CPU/GPU, nhiệt độ m&aacute;y t&iacute;nh cũng như mức ti&ecirc;u thụ năng lượng của laptop Nitro.&nbsp;</p>\r\n\r\n<p><img alt=\"test game laptop acer nitro 17 an17 51 50b9\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/05/test-game-laptop-acer-nitro-17-an17-51-50b9-768x512.jpg\" title=\"Phần mềm Nitro Sense là gì? Cách tối ưu hóa hiệu suất chơi game trên laptop Acer Nitro 2\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, h&atilde;nh Acer cũng cho ph&eacute;p người d&ugrave;ng can thiệp s&acirc;u v&agrave;o hệ thống vận h&agrave;nh của thiết bị th&ocirc;ng qua phần mềm Nitro Sense như hỗ trợ người d&ugrave;ng điều khiển tốc độ quạt tản nhiệt. Qua đ&oacute; m&agrave; bạn c&oacute; thể lu&ocirc;n duy tr&igrave; được sự ổn định cũng như trải nghiệm mượt m&agrave;, thoải m&aacute;i tr&ecirc;n những chiếc laptop gaming Nitro.&nbsp;</p>\r\n\r\n<p>Acer Nitro Sense được Acer t&iacute;ch hợp sẵn tr&ecirc;n hệ thống, v&igrave; vậy m&agrave; khi mua những chiếc laptop gaming Nitro th&igrave; phần mềm n&agrave;y sẽ c&oacute; sẵn tr&ecirc;n thiết bị của bạn. Trong một số trường hợp người d&ugrave;ng muốn tải c&aacute;c Driver mới hoặc update phần mềm Acer Nitro Sense ở c&aacute;c phi&ecirc;n bản mới nhất th&igrave; bạn c&oacute; thể l&ecirc;n trang web ch&iacute;nh thức của Acer để tải c&aacute;c bản cập nhật n&agrave;y.&nbsp;</p>\r\n\r\n<p>Phong Vũ sẽ để link của phần mềm Nitro Sense tại đ&acirc;y để anh em c&oacute; thể kiểm tra xem phi&ecirc;n bản Nitro Sense c&oacute; phải l&agrave; phi&ecirc;n bản mới nhất hay kh&ocirc;ng nh&eacute;:&nbsp;<a href=\"https://www.acer.com/us-en/support/drivers-and-manuals\" rel=\"noreferrer noopener nofollow\" target=\"_blank\">nitro sense download</a></p>\r\n\r\n<h2>2. C&aacute;ch mở phần mềm Nitro Sense</h2>\r\n\r\n<p>Với những chiếc laptop Nitro Gaming cao cấp đến từ nh&agrave; Acer th&igrave; h&atilde;ng đều đ&atilde; t&iacute;ch hợp c&aacute;c ph&iacute;m bấm để bạn mở phần mềm Nitro Sense nhanh chỉ với một lần ấn. Chẳng hạn như tr&ecirc;n chiếc Acer Nitro 16 Phoenix mới nhất th&igrave; bạn c&oacute; thể mở phần mềm Nitro Sense bằng c&aacute;ch nhấn v&agrave;o n&uacute;t logo Nitro kế b&ecirc;n n&uacute;t Numlock tr&ecirc;n b&agrave;n ph&iacute;m số.&nbsp;</p>\r\n\r\n<p><img alt=\"acer-nitro-sense-la-gi \" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/05/acer-nitro-sense-la-gi-1.jpg\" style=\"height:584px; width:800px\" title=\"Phần mềm Nitro Sense là gì? Cách tối ưu hóa hiệu suất chơi game trên laptop Acer Nitro 3\" /></p>\r\n\r\n<p>L&uacute;c n&agrave;y th&igrave; hệ thống sẽ khởi động phần mềm Nitro Sense ngay lập tức v&agrave; hiển thị c&aacute;c th&ocirc;ng số của m&aacute;y t&iacute;nh tr&ecirc;n m&agrave;n h&igrave;nh ch&iacute;nh. Bạn c&oacute; thể theo d&otilde;i v&agrave; thực hiện c&aacute;c thao t&aacute;c điều chỉnh quạt tản nhiệt si&ecirc;u nhanh m&agrave; kh&ocirc;ng cần phải thực hiện qu&aacute; nhiều thao t&aacute;c phức tạp.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i c&aacute;ch tr&ecirc;n th&igrave; người d&ugrave;ng cũng c&oacute; thể mở phần mềm Nitro Sense thủ c&ocirc;ng bằng c&aacute;ch mở thanh Search tr&ecirc;n Windows v&agrave; g&otilde; t&ecirc;n phần mềm Nitro Sense, sau đ&oacute; chọn v&agrave;o kết quả đầu ti&ecirc;n.&nbsp;</p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"444\" src=\"https://www.youtube.com/embed/PF3NsF5-SlA?feature=oembed\" title=\"NitroSense Utility App - Overview\" width=\"790\"></iframe></p>\r\n\r\n<h2>3. C&aacute;ch sử dụng Nitro Sense v&agrave; c&aacute;c t&iacute;nh năng của phần mềm Nitro Sense</h2>\r\n\r\n<h3>3.1 T&iacute;nh năng Fan Control (Điều khiển quạt tản nhiệt)</h3>\r\n\r\n<p>Những d&ograve;ng laptop Acer Nitro 5 hay Acer Nitro 16 Phoenix, Acer Nitro 17 mới nhất đều được h&atilde;ng trang bị hệ thống quạt tản nhiệt tốt h&agrave;ng đầu trong ph&acirc;n kh&uacute;c. Kh&ocirc;ng chỉ sở hữu những c&ocirc;ng nghệ hiện đại nhất, hệ thống quạt tản nhiệt n&agrave;y c&ograve;n được đ&aacute;nh gi&aacute; cao bởi thiết kế đậm chất kh&iacute; động học gi&uacute;p tăng cường khả năng l&agrave;m m&aacute;t đến cực độ m&agrave; kh&ocirc;ng ảnh hưởng qu&aacute; nhiều đến trải nghiệm người d&ugrave;ng.&nbsp;</p>\r\n\r\n<p><a href=\"https://phongvu.vn/acer-nitro-5-an515-58-52sp-nh-qfhsv-001--s220101409?sku=220101409&amp;utm_source=social&amp;utm_medium=technews&amp;utm_campaign=gaming-t5-23\"><img alt=\"Laptop ACER Nitro 5\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/02/Laptop-ACER-Nitro-5.jpg\" style=\"height:800px; width:800px\" title=\"Phần mềm Nitro Sense là gì? Cách tối ưu hóa hiệu suất chơi game trên laptop Acer Nitro 4\" /></a></p>\r\n\r\n<p><strong><strong>Laptop ACER Nitro 5 AN515-58-52SP</strong></strong></p>\r\n\r\n<p><strong><strong>25.990.000₫</strong></strong>&nbsp;<s><s>29.490.000₫</s></s></p>\r\n\r\n<ul>\r\n	<li>CPU: Intel Core i5-12500H</li>\r\n	<li>M&agrave;n h&igrave;nh: 15.6&Prime; IPS (1920 x 1080),144Hz</li>\r\n	<li>RAM: 1 x 8GB DDR4 3200MHz</li>\r\n	<li>Đồ họa: RTX 3050 4GB GDDR6 / Intel Iris Xe Graphics</li>\r\n	<li>Lưu trữ: 512GB SSD M.2 NVMe /</li>\r\n	<li>Hệ điều h&agrave;nh: Windows 11 Home</li>\r\n	<li>Pin: 4 cell 57 Wh</li>\r\n	<li>Khối lượng: 2.5kg</li>\r\n</ul>\r\n\r\n<p><a href=\"https://phongvu.vn/acer-nitro-5-an515-58-52sp-nh-qfhsv-001--s220101409?sku=220101409&amp;utm_source=social&amp;utm_medium=technews&amp;utm_campaign=gaming-t5-23\" rel=\"noreferrer noopener\" target=\"_blank\">MUA NGAY</a></p>\r\n\r\n<p>Khi mở phần mềm Nitro Sense th&igrave; bạn c&oacute; thể dễ d&agrave;ng theo d&otilde;i t&igrave;nh trạng quạt gi&oacute; th&ocirc;ng qua 2 biểu tượng quạt tản nhiệt tr&ecirc;n ứng dụng, theo đ&oacute; quạt b&ecirc;n tr&aacute;i sẽ l&agrave; quạt tản nhiệt cho hệ thống CPU c&ograve;n b&ecirc;n phải l&agrave; GPU. Acer cho ph&eacute;p bạn c&oacute; thể t&ugrave;y chỉnh 3 chế độ của hệ thống quạt tản nhiệt t&ugrave;y theo nhu cầu sử dụng bao gồm:</p>\r\n\r\n<ul>\r\n	<li>Chế độ Auto: Hệ thống quạt được hệ thống tự điều chỉnh ph&ugrave; hợp với mức nhiệt độ hiện c&oacute; tr&ecirc;n thiết bị.&nbsp;</li>\r\n	<li>Chế độ Max: Khi mở chế độ n&agrave;y th&igrave; hệ thống quạt tản nhiệt sẽ được k&iacute;ch hoạt tối đa vận tốc v&agrave; c&ocirc;ng suất của quạt. Tuy nhi&ecirc;n th&igrave; Phong Vũ chỉ khuyến kh&iacute;ch anh em chỉ n&ecirc;n sử dụng chế độ n&agrave;y khi đang chơi game nặng hoặc render c&aacute;c project phức tạp v&igrave; ở chế độ n&agrave;y th&igrave; hệ thống quạt k&eacute;p tạo ra tiếng ồn kh&aacute; lớn c&oacute; thể g&acirc;y ảnh hưởng đến những người b&ecirc;n cạnh.&nbsp;</li>\r\n	<li>Chế độ Custom: Ở chế độ n&agrave;y, người d&ugrave;ng c&oacute; thể t&ugrave;y chỉnh tốc độ quạt theo &yacute; muốn. Bạn cũng c&oacute; thể c&acirc;n đối độ ồn của quạt v&agrave; hiệu suất tản nhiệt của laptop bằng c&aacute;ch thiết lập chế độ Custom của Fan Control ngay tại phần mềm Nitro Sense nh&eacute;.</li>\r\n</ul>\r\n\r\n<p><img alt=\"phan-mem-acer-nitro-sense-la-gi\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/05/phan-mem-acer-nitro-sense-la-gi.jpg\" style=\"height:433px; width:800px\" title=\"Phần mềm Nitro Sense là gì? Cách tối ưu hóa hiệu suất chơi game trên laptop Acer Nitro 5\" /></p>\r\n\r\n<h3>3.2 Keyboard Lighting</h3>\r\n\r\n<p>Với những chiếc laptop gaming Nitro thế hệ mới th&igrave; h&atilde;ng đều đ&atilde; trang bị cho những chiếc m&aacute;y n&agrave;y chiếc b&agrave;n ph&iacute;m được t&iacute;ch hợp LED RGB 4 v&ugrave;ng độc lập.&nbsp;</p>\r\n\r\n<p>Trang bị n&agrave;y sẽ mang đến cho anh em nguồn cảm hứng chơi game bất tận v&agrave; độc đ&aacute;o nhờ v&agrave;o những dải sắc m&agrave;u ấn tượng nhất. Để t&ugrave;y chỉnh m&agrave;u sắc cho chiếc b&agrave;n ph&iacute;m tr&ecirc;n những chiếc Nitro 5 Tiger hay Nitro 16 Phoenix th&igrave; bạn c&oacute; thể mở phần mềm Nitro Sense v&agrave; truy cập v&agrave;o mục Keyboard Lighting để c&oacute; thể c&agrave;i đặt c&aacute;c chế độ LED RGB tr&ecirc;n b&agrave;n ph&iacute;m nh&eacute;.&nbsp;</p>\r\n\r\n<p><img alt=\"nitro-sense-la-gi \" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/05/nitro-sense-la-gi-1.png\" style=\"height:409px; width:800px\" title=\"Phần mềm Nitro Sense là gì? Cách tối ưu hóa hiệu suất chơi game trên laptop Acer Nitro 6\" /></p>\r\n\r\n<h3>3.3 Theo d&otilde;i nhiệt độ th&ocirc;ng qua tr&igrave;nh Monitoring</h3>\r\n\r\n<p>Kh&ocirc;ng cần phải tải phần mềm b&ecirc;n thứ 3 phức tạp v&agrave; tiềm ẩn c&aacute;c nguy cơ về virus x&acirc;m nhập v&agrave;o m&aacute;y, với phần mềm Nitro Sense được t&iacute;ch hợp sẵn tr&ecirc;n hệ thống của laptop Nitro th&igrave; bạn ho&agrave;n to&agrave;n c&oacute; thể theo d&otilde;i c&aacute;c th&ocirc;ng số nhiệt độ cũng như hiệu suất hoạt động của CPU v&agrave; GPU th&ocirc;ng qua biểu đồ của phần mềm một c&aacute;ch trực quan.</p>\r\n\r\n<p>C&aacute;c th&ocirc;ng số n&agrave;y sẽ hiển thị trực tiếp tr&ecirc;n giao diện của phần mềm Nitro Sense khi bạn mở n&oacute; l&ecirc;n n&ecirc;n bạn ho&agrave;n to&agrave;n kh&ocirc;ng cần phải thao t&aacute;c g&igrave; th&ecirc;m cả.&nbsp;</p>\r\n\r\n<h3>3.4 Power Plan &ndash; Điều chỉnh hiệu suất hoạt động</h3>\r\n\r\n<p>Acer cho ph&eacute;p người d&ugrave;ng can thiệp s&acirc;u v&agrave;o việc quản l&yacute; c&ocirc;ng suất hoạt động của những chiếc laptop gaming Nitro th&ocirc;ng qua phần mềm Nitro Sense. Với 2 chế độ AC (sử dụng trực tiếp nguồn năng lượng từ sạc) v&agrave; Battery Mode (sử dụng nguồn điện từ pin laptop) th&igrave; hệ thống đều cho bạn t&ugrave;y chỉnh 4 chế độ năng lượng bao gồm:</p>\r\n\r\n<ul>\r\n	<li><strong>Power Saver</strong>: Tiết kiệm năng lượng</li>\r\n	<li><strong>Balance</strong>: Chế độ c&acirc;n bằng</li>\r\n	<li><strong>Balance [Acer Optimized]</strong>: C&acirc;n bằng (Được tối ưu h&oacute;a bởi Acer)</li>\r\n	<li><strong>High-Performance:</strong>&nbsp;Hiệu suất cao</li>\r\n</ul>\r\n\r\n<h3>3.5 Acer TrueHarmony</h3>\r\n\r\n<p>Giống như tr&ecirc;n những chiếc laptop cao cấp nhất, Acer cũng mang đến t&iacute;nh năng t&ugrave;y chỉnh hệ thống &acirc;m thanh cho những chiếc laptop Nitro th&ocirc;ng qua c&ocirc;ng cụ Acer TrueHarmony được t&iacute;ch hợp sẵn trong phần mềm Nitro Sense.&nbsp;</p>\r\n\r\n<p><img alt=\"phan-mem-acer-nitro-sense\" src=\"https://phongvu.vn/cong-nghe/wp-content/uploads/2023/05/phan-mem-acer-nitro-sense.jpg\" style=\"height:533px; width:800px\" title=\"Phần mềm Nitro Sense là gì? Cách tối ưu hóa hiệu suất chơi game trên laptop Acer Nitro 7\" /></p>\r\n\r\n<p>Đặc biệt, trong số 6 chế độ m&agrave; phần mềm hỗ trợ th&igrave; c&oacute; đến 3 t&iacute;nh năng quan trọng để hỗ trợ cho trải nghiệm &acirc;m thanh của game thủ gồm: Gaming General, Gaming FPS, Gaming Sport. Ngo&agrave;i ra, với những nhu cầu sử dụng đơn thuần hằng ng&agrave;y, giải tr&iacute; đỉnh cao th&igrave; Acer TrueHarmony cũng hỗ trợ bạn thiết lập &acirc;m thanh chuẩn cho c&aacute;c mục đ&iacute;ch như Music, Movies, Voice.</p>\r\n\r\n<h2>4. Top những chiếc laptop gaming Nitro được t&iacute;ch hợp phần mềm Nitro Sense đ&aacute;ng mua nhất 2023</h2>\r\n\r\n<p>C&oacute; thể thấy phần mềm Nitro Sense mang lại kh&aacute; nhiều t&iacute;nh năng hữu &iacute;ch m&agrave; nhiều game thủ phải mơ ước, từ việc thiết lập hệ thống quạt tản nhiệt đến đ&egrave;n LED RGB cho b&agrave;n ph&iacute;m th&igrave; phần mềm n&agrave;y đều ho&agrave;n th&agrave;nh tốt nhiệm vụ.</p>\r\n\r\n<p>Nếu so s&aacute;nh với nhiều đối thủ gaming tr&ecirc;n thị trường th&igrave; d&ograve;ng Acer Nitro lu&ocirc;n mang đến những trải nghiệm kh&aacute;c biệt v&agrave; độc đ&aacute;o.</p>\r\n\r\n<p>Chẳng hạn như chiếc Acer Nitro 16 Phoenix được trang bị CPU AMD Ryzen 5 7535HS v&agrave; card đồ họa RTX 4050 v&ocirc; c&ugrave;ng mạnh mẽ, đi k&egrave;m với đ&oacute; l&agrave; c&ocirc;ng nghệ quạt tản nhiệt kim loại lỏng hiện đại h&agrave;ng đầu thế giới gi&uacute;p mang đến hiệu suất ấn tượng. Đặc biệt d&ograve;ng m&aacute;y n&agrave;y c&ograve;n đang được ph&acirc;n phối độc quyền tại hệ thống Phong Vũ với mức gi&aacute; cực tốt m&agrave; c&ograve;n tặng k&egrave;m&nbsp;<strong>bộ qu&agrave; tặng l&ecirc;n đến 7 triệu đồng</strong>!&nbsp;</p>', '2023-05-31 08:46:14', 1, 1, '2023-05-31 14:14:25'),
(2, 'Cách chỉnh tốc độ chuột trên MacBook giúp bạn tăng trải nghiệm khi sử dụng', 'cach-chinh-toc-do-chuot-tren-macbook-giup-ban-tang-trai-nghiem-khi-su-dung', 1, 1, 1, 0, NULL, '2023-05-31__cach-chinh-toc-do-chuot-tren-macbook-180523-144821-800-resize.jpg', '<h2>Một trong những yếu tố quan trọng để c&oacute; trải nghiệm sử dụng&nbsp;<a href=\"https://www.thegioididong.com/laptop-apple-macbook\" target=\"_blank\" title=\"Macbook\" type=\"Macbook\">MacBook</a>&nbsp;thoải m&aacute;i v&agrave; hiệu quả ch&iacute;nh l&agrave; điều chỉnh tốc độ chuột ph&ugrave; hợp. N&oacute; sẽ gi&uacute;p bạn di chuyển con trỏ một c&aacute;ch dễ d&agrave;ng v&agrave; ch&iacute;nh x&aacute;c tr&ecirc;n m&agrave;n h&igrave;nh, từ đ&oacute; tăng hiệu suất l&agrave;m việc. Ngo&agrave;i ra, tốc độ chuột ph&ugrave; hợp cũng gi&uacute;p giảm mệt mỏi v&agrave; căng thẳng trong qu&aacute; tr&igrave;nh sử dụng. Nếu bạn muốn biết&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cach-chinh-toc-do-chuot-tren-macbook-1530445\" target=\"_blank\" title=\"Cách chỉnh tốc độ chuột trên MacBook\" type=\"Cách chỉnh tốc độ chuột trên MacBook\">c&aacute;ch chỉnh tốc độ chuột tr&ecirc;n MacBook</a>&nbsp;th&igrave; h&atilde;y theo d&otilde;i b&agrave;i viết hướng dẫn dưới đ&acirc;y v&agrave; c&ugrave;ng m&igrave;nh thực hiện nh&eacute;!</h2>\r\n\r\n<h3><strong>C&aacute;ch chỉnh tốc độ chuột tr&ecirc;n MacBook</strong></h3>\r\n\r\n<p><strong>Bước 1:&nbsp;</strong>Đầu ti&ecirc;n, bạn h&atilde;y&nbsp;<strong>bấm v&agrave;o biểu tượng Apple</strong>&nbsp;ở g&oacute;c tr&aacute;i m&agrave;n h&igrave;nh<strong>&nbsp;&gt;</strong>&nbsp;sau đ&oacute; bấm&nbsp;<strong>chọn System Setting</strong>&nbsp;để c&oacute; thể mở c&agrave;i đặt hệ thống.</p>\r\n\r\n<p><img alt=\"Cách chỉnh tốc độ chuột trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2023/05/18/1530445/system-setting-180523-144831-800-resize.jpg\" title=\"Cách chỉnh tốc độ chuột trên MacBook\" /></p>\r\n\r\n<p><strong>Bước 2:&nbsp;</strong>L&uacute;c n&agrave;y, ở phần c&agrave;i đặt hệ thống&nbsp;<strong>&gt;&nbsp;</strong>bạn h&atilde;y bấm<strong>&nbsp;chọn Mouse&nbsp;&gt;&nbsp;</strong>sau đ&oacute; bạn c&oacute; thể&nbsp;<strong>điều chỉnh tốc độ chuột ở thanh trượt</strong>.</p>\r\n\r\n<p><img alt=\"Cách chỉnh tốc độ chuột trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2023/05/18/1530445/setting-mouse-180523-144829-800-resize.jpg\" title=\"Cách chỉnh tốc độ chuột trên MacBook\" /></p>\r\n\r\n<p><strong>Bước 3:&nbsp;</strong>Tương tự đối với Trackpad, bạn h&atilde;y&nbsp;<strong>bấm chọn Trackpad&nbsp;&gt;&nbsp;</strong>sau đ&oacute;&nbsp;<strong>điều chỉnh tốc độ Trackpad ở thanh trượt b&ecirc;n dướ</strong>i.</p>\r\n\r\n<p><img alt=\"Cách chỉnh tốc độ chuột trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2023/05/18/1530445/settingtrackpad-180523-144826-800-resize.jpg\" title=\"Cách chỉnh tốc độ chuột trên MacBook\" /></p>\r\n\r\n<p><strong>Bước 4:&nbsp;</strong>Ngo&agrave;i ra bạn c&ograve;n c&oacute; thể điều chỉnh tốc độ chuột bằng Terminal, trước hết bạn h&atilde;y&nbsp;<strong>mở Terminal l&ecirc;n&nbsp;&gt;</strong>&nbsp;sau đ&oacute; bạn h&atilde;y&nbsp;<strong>sử dụng c&aacute;c c&acirc;u lệnh b&ecirc;n dưới đ&acirc;y</strong>:</p>\r\n\r\n<p><strong>defaults read -g com.apple.mouse.scaling</strong></p>\r\n\r\n<p>C&acirc;u lệnh n&agrave;y d&ugrave;ng để kiểm tra tốc độ chuột hiện tại.</p>\r\n\r\n<p><strong>defaults write -g com.apple.mouse.scaling 5.0</strong></p>\r\n\r\n<p>C&ograve;n c&acirc;u lệnh n&agrave;y d&ugrave;ng để điều chỉnh tốc độ chuột l&agrave; 5.</p>\r\n\r\n<p><img alt=\"Cách chỉnh tốc độ chuột trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2023/05/18/1530445/terminal-mouse-speed-180523-144834-800-resize.jpg\" title=\"Cách chỉnh tốc độ chuột trên MacBook\" /></p>\r\n\r\n<p><strong>Bước 5:&nbsp;</strong>Sau khi thực hiện xong c&acirc;u lệnh ở tr&ecirc;n&nbsp;<strong>&gt;&nbsp;</strong>sau đ&oacute; bạn h&atilde;y bấm&nbsp;<strong>chọn v&agrave;o biểu tượng Apple&nbsp;&gt;</strong>&nbsp;tiếp theo bấm&nbsp;<strong>chọn Restart&nbsp;</strong>để &aacute;p dụng c&aacute;c thay đổi đ&atilde; được lưu.</p>\r\n\r\n<p><img alt=\"Cách chỉnh tốc độ chuột trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2023/05/18/1530445/restart-180523-144823-800-resize.jpg\" title=\"Cách chỉnh tốc độ chuột trên MacBook\" /></p>\r\n\r\n<p>Vậy l&agrave; xong c&aacute;c bước để c&oacute; thể điều chỉnh tốc độ chuột tr&ecirc;n MacBook, ch&uacute;c c&aacute;c bạn thực hiện th&agrave;nh c&ocirc;ng. Nếu thấy b&agrave;i viết hữu &iacute;ch cho m&igrave;nh xin một like v&agrave; một share nh&eacute;. Rất cảm ơn c&aacute;c bạn đ&atilde; xem b&agrave;i viết.</p>\r\n\r\n<p>MacBook l&agrave; một d&ograve;ng laptop rất ph&ugrave; hợp cho c&ocirc;ng việc đồ họa - s&aacute;ng tạo. Nếu bạn quan t&acirc;m đến c&aacute;c sản phẩm n&agrave;y, h&atilde;y ấn ngay v&agrave;o n&uacute;t cam b&ecirc;n dưới để c&oacute; thể tham khảo c&aacute;c ưu đ&atilde;i khi mua nh&eacute;.</p>', '2023-05-31 08:51:19', 1, 1, '2023-05-31 08:52:52'),
(3, 'Cách đổi âm thanh thông báo trên MacBook bằng một bài nhạc yêu thích, bạn thử chưa', 'cach-doi-am-thanh-thong-bao-tren-macbook-bang-mot-bai-nhac-yeu-thich-ban-thu-chua', 1, 1, 1, 0, NULL, '2023-05-31__cach-doi-am-thanh-thong-bao-tren-macbook-180523-153710-800-resize.jpg', '<h2><a href=\"https://www.thegioididong.com/laptop-apple-macbook\" target=\"_blank\" title=\"Macbook\" type=\"Macbook\">MacBook</a>&nbsp;cung cấp nhiều t&ugrave;y chọn &acirc;m thanh mặc định để th&ocirc;ng b&aacute;o cho bạn về c&aacute;c tin nhắn hay cuộc gọi đến. Tuy nhi&ecirc;n, bạn c&oacute; thể muốn t&ugrave;y chỉnh &acirc;m thanh th&ocirc;ng b&aacute;o bằng một b&agrave;i nhạc y&ecirc;u th&iacute;ch để tạo cảm gi&aacute;c ri&ecirc;ng v&agrave; tạo kh&ocirc;ng gian l&agrave;m việc c&aacute; nh&acirc;n tr&ecirc;n MacBook của m&igrave;nh.&nbsp;Nếu bạn muốn biết&nbsp;<a href=\"https://www.thegioididong.com/tin-tuc/cach-doi-am-thanh-thong-bao-tren-macbook-1530454\" target=\"_blank\" title=\"Cách đổi âm thanh thông báo trên MacBook\" type=\"Cách đổi âm thanh thông báo trên MacBook\">c&aacute;ch đổi &acirc;m thanh th&ocirc;ng b&aacute;o tr&ecirc;n MacBook</a>&nbsp;th&igrave; h&atilde;y theo d&otilde;i b&agrave;i viết hướng dẫn dưới đ&acirc;y v&agrave; c&ugrave;ng m&igrave;nh thực hiện nh&eacute;!</h2>\r\n\r\n<h3><strong>C&aacute;ch đổi &acirc;m thanh th&ocirc;ng b&aacute;o tr&ecirc;n MacBook</strong></h3>\r\n\r\n<p><strong>Bước 1:&nbsp;</strong>Đầu ti&ecirc;n để c&oacute; thể chỉnh định dạng &acirc;m thanh ph&ugrave; hợp, bạn h&atilde;y&nbsp;<strong>đổi đu&ocirc;i file &acirc;m thanh bạn muốn c&agrave;i đặt l&agrave;m &acirc;m b&aacute;o</strong>&nbsp;th&agrave;nh đu&ocirc;i&nbsp;<strong>.aiff</strong>&nbsp;nh&eacute;.</p>\r\n\r\n<p><img alt=\"Cách đổi âm thanh thông báo trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2023/05/18/1530454/rename-sound-180523-153650-800-resize.jpg\" title=\"Cách đổi âm thanh thông báo trên MacBook\" /></p>\r\n\r\n<p><strong>Bước 2:&nbsp;</strong>Tiếp theo, bạn h&atilde;y bấm&nbsp;<strong>chọn Finder&nbsp;&gt;&nbsp;</strong>sau đ&oacute;&nbsp;<strong>chọn Go&nbsp;&gt;</strong>&nbsp;tiếp theo&nbsp;<strong>chọn Go to Folder</strong>&nbsp;để c&oacute; thể di chuyển nhanh đến thư mục.</p>\r\n\r\n<p><img alt=\"Cách đổi âm thanh thông báo trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2023/05/18/1530454/go-to-folder-180523-153643-800-resize.jpg\" title=\"Cách đổi âm thanh thông báo trên MacBook\" /></p>\r\n\r\n<p><strong>Bước 3:&nbsp;</strong>Ở phần đường dẫn thư mục, bạn h&atilde;y g&otilde; ch&iacute;nh x&aacute;c hoặc&nbsp;<strong>d&aacute;n đường dẫn ở b&ecirc;n dưới đ&acirc;y&nbsp;&gt;</strong>&nbsp;sau đ&oacute;&nbsp;<strong>bấm Return&nbsp;</strong>để c&oacute; thể đi đến thư mục.</p>\r\n\r\n<p><strong>~/Library/Sounds/</strong></p>\r\n\r\n<p><img alt=\"Cách đổi âm thanh thông báo trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2023/05/18/1530454/path-folder-180523-153647-800-resize.jpg\" title=\"Cách đổi âm thanh thông báo trên MacBook\" /></p>\r\n\r\n<p><strong>Bước 4:&nbsp;</strong>B&acirc;y giờ, bạn h&atilde;y&nbsp;<strong>di chuyển tệp &acirc;m thanh</strong>&nbsp;m&agrave; bạn muốn c&agrave;i l&agrave;m &acirc;m th&ocirc;ng b&aacute;o&nbsp;<strong>sang thư mục Sounds&nbsp;</strong>l&agrave; thư mục ch&uacute;ng ta vừa di chuyển đến.</p>\r\n\r\n<p><img alt=\"Cách đổi âm thanh thông báo trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2023/05/18/1530454/move-to-folder-sound-180523-153645-800-resize.jpg\" title=\"Cách đổi âm thanh thông báo trên MacBook\" /></p>\r\n\r\n<p><strong>Bước 5:&nbsp;</strong>L&uacute;c n&agrave;y, bạn h&atilde;y bấm&nbsp;<strong>chọn biểu tượng Apple&nbsp;&gt;</strong>&nbsp;kế tiếp bấm&nbsp;<strong>chọn System Settings&nbsp;</strong>để mở c&agrave;i đặt hệ thống.</p>\r\n\r\n<p><img alt=\"Cách đổi âm thanh thông báo trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2023/05/18/1530454/system-setting-180523-153655-800-resize.jpg\" title=\"Cách đổi âm thanh thông báo trên MacBook\" /></p>\r\n\r\n<p><strong>Bước 6:&nbsp;</strong>Ở phần c&agrave;i đặt hệ thống, bạn h&atilde;y bấm&nbsp;<strong>chọn phần Sound&nbsp;&gt;</strong>&nbsp;tiếp theo&nbsp;<strong>ở phần Alert sound, bạn c&oacute; thể t&igrave;m thấy file &acirc;m thanh bạn vừa th&ecirc;m v&agrave;o</strong>.</p>\r\n\r\n<p><img alt=\"Cách đổi âm thanh thông báo trên MacBook\" src=\"https://cdn.tgdd.vn/Files/2023/05/18/1530454/setting-sound-180523-153653-800-resize.jpg\" title=\"Cách đổi âm thanh thông báo trên MacBook\" /></p>\r\n\r\n<p>Vậy l&agrave; xong c&aacute;c bước để c&oacute; thể đổi &acirc;m thanh th&ocirc;ng b&aacute;o tr&ecirc;n MacBook bằng một b&agrave;i nhạc y&ecirc;u th&iacute;ch, ch&uacute;c c&aacute;c bạn thực hiện th&agrave;nh c&ocirc;ng. Nếu thấy b&agrave;i viết hữu &iacute;ch cho m&igrave;nh xin một like v&agrave; một share nh&eacute;. Rất cảm ơn c&aacute;c bạn đ&atilde; xem b&agrave;i viết.</p>\r\n\r\n<p>MacBook l&agrave; một d&ograve;ng laptop rất ph&ugrave; hợp cho c&ocirc;ng việc đồ họa - s&aacute;ng tạo. Nếu bạn quan t&acirc;m đến c&aacute;c sản phẩm n&agrave;y, h&atilde;y ấn ngay v&agrave;o n&uacute;t cam b&ecirc;n dưới để c&oacute; thể tham khảo c&aacute;c ưu đ&atilde;i khi mua nh&eacute;.</p>', '2023-05-31 08:52:31', 1, 1, '2023-05-31 08:52:53'),
(4, 'Top 5 Loại Máy Tính, Laptop Học Công Nghệ Thông Tin Tốt Nhất Hiện Nay', 'top-5-loai-may-tinh-laptop-hoc-cong-nghe-thong-tin-tot-nhat-hien-nay', 1, 1, 1, 0, NULL, '2023-05-31__1405-top-may-tinh-hoc-cong-nghe-thong-tin-1.jpg', '<p>Đối với sinh vi&ecirc;n c&ocirc;ng nghệ th&ocirc;ng tin, m&aacute;y t&iacute;nh l&agrave; thiết bị quan trọng nhất cần chuẩn bị. Đ&acirc;y l&agrave; c&ocirc;ng cụ học tập kh&ocirc;ng thể thiếu để lĩnh hội tr&iacute; thức của ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin. Vậy c&aacute;ch chọn&nbsp;<strong><a href=\"https://hoanghapc.vn/top-may-tinh-hoc-cong-nghe-thong-tin\">m&aacute;y t&iacute;nh học c&ocirc;ng nghệ th&ocirc;ng tin</a></strong>&nbsp;như thế n&agrave;o? H&atilde;y c&ugrave;ng ch&uacute;ng t&ocirc;i kh&aacute;m ph&aacute; c&aacute;ch lựa chọn v&agrave; top 5 m&aacute;y t&iacute;nh đ&aacute;ng đầu tư nhất cho sinh vi&ecirc;n IT được bật m&iacute; dưới đ&acirc;y.</p>\r\n\r\n<h2>1. Ti&ecirc;u ch&iacute; để chọn m&aacute;y t&iacute;nh, laptop học c&ocirc;ng nghệ th&ocirc;ng tin</h2>\r\n\r\n<p>Sinh vi&ecirc;n học ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin sẽ phải thực h&agrave;nh rất nhiều tr&ecirc;n m&aacute;y t&iacute;nh. Những t&aacute;c vụ thực hiện tr&ecirc;n m&aacute;y kh&ocirc;ng đơn giản v&agrave; nhẹ nh&agrave;ng như những ng&agrave;nh kh&aacute;c. Do đ&oacute;, việc lựa chọn m&aacute;y t&iacute;nh học c&ocirc;ng nghệ th&ocirc;ng tin phải c&acirc;n nhắc dựa tr&ecirc;n rất nhiều ti&ecirc;u ch&iacute;. Trong đ&oacute;, nổi bật nhất l&agrave; những ti&ecirc;u ch&iacute; sau:</p>\r\n\r\n<h3>1.1. CPU</h3>\r\n\r\n<p><em><img alt=\"Top 5 loại máy tính học công nghệ thông tin tốt nhất hiện nay\" src=\"https://hoanghapc.vn/media/news/1405_top-may-tinh-hoc-cong-nghe-thong-tin-1.jpg\" style=\"height:371px; width:660px\" /></em></p>\r\n\r\n<p><em>CPU - Ti&ecirc;u ch&iacute; đầu ti&ecirc;n cần quan t&acirc;m khi chọn m&aacute;y t&iacute;nh học IT</em></p>\r\n\r\n<p>Đối với sinh vi&ecirc;n ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin khi mua m&aacute;y t&iacute;nh,&nbsp;<strong><a href=\"https://hoanghapc.vn/cpu-bo-vi-xu-ly\">Chip m&aacute;y t&iacute;nh</a></strong>&nbsp;l&agrave; ti&ecirc;u ch&iacute; đầu ti&ecirc;n cần quan t&acirc;m. Do tần suất sử dụng cao, t&aacute;c vụ nặng, sinh vi&ecirc;n IT n&ecirc;n chọn CPU từ Core i5 trở l&ecirc;n. Với bộ vi xử l&yacute; n&agrave;y, sinh vi&ecirc;n c&oacute; thể thực hiện mọi t&aacute;c vụ như thiết kế web, lập tr&igrave;nh&hellip; tr&ecirc;n m&aacute;y một c&aacute;ch dễ d&agrave;ng.</p>\r\n\r\n<p>Nếu c&oacute; tiềm lực t&agrave;i ch&iacute;nh, lời khuy&ecirc;n d&agrave;nh cho c&aacute;c sinh vi&ecirc;n IT l&agrave; lựa chọn thế hệ Core i mới nhất. Bởi những bộ vi xử l&yacute; thế hệ mới như Core i7, Core i8, Core i9 sẽ c&oacute; hiệu năng mạnh mẽ.</p>\r\n\r\n<h3>1.2. Thời lượng pin</h3>\r\n\r\n<p>B&ecirc;n cạnh CPU, thời lượng pin cũng l&agrave; ti&ecirc;u ch&iacute; cần lưu t&acirc;m khi chọn mua m&aacute;y t&iacute;nh học c&ocirc;ng nghệ th&ocirc;ng tin. Bởi đối với sinh vi&ecirc;n IT, chiếc m&aacute;y t&iacute;nh gần như kh&ocirc;ng thể t&aacute;ch rời trong qu&aacute; tr&igrave;nh học tập. Do đ&oacute;, nếu thời lượng pin k&eacute;m sẽ g&acirc;y ra nhiều bất tiện khi lu&ocirc;n phải mang theo sạc v&agrave; t&igrave;m ổ cắm.</p>\r\n\r\n<p><img alt=\"Top 5 loại máy tính học công nghệ thông tin tốt nhất hiện nay\" src=\"https://hoanghapc.vn/media/news/1405_top-may-tinh-hoc-cong-nghe-thong-tin-9.jpg\" style=\"height:406px; width:650px\" /></p>\r\n\r\n<p><em>Thời lượng</em></p>\r\n\r\n<p>Thời lượng pin m&aacute;y t&iacute;nh l&yacute; tưởng nhất d&agrave;nh cho sinh vi&ecirc;n n&ecirc;n đảm bảo &iacute;t nhất c&oacute; thể sử dụng trong 4 tiếng. Thời lượng n&agrave;y sẽ mang đến nhiều tiện lợi cho người d&ugrave;ng khi m&aacute;y t&iacute;nh ở qu&aacute;n cafe hay lớp học.</p>\r\n\r\n<h3>1.3. Sử dụng ổ cứng SSD</h3>\r\n\r\n<p><em><img alt=\"Top 5 loại máy tính học công nghệ thông tin tốt nhất hiện nay\" src=\"https://hoanghapc.vn/media/news/1405_top-may-tinh-hoc-cong-nghe-thong-tin-2.jpg\" style=\"height:407px; width:659px\" /></em></p>\r\n\r\n<p><em>M&aacute;y t&iacute;nh học c&ocirc;ng nghệ th&ocirc;ng tin n&ecirc;n trang bị ổ cứng SSD</em></p>\r\n\r\n<p>Với những bạn sinh vi&ecirc;n ng&agrave;nh c&ocirc;ng nghệ th&ocirc;ng tin, m&aacute;y t&iacute;nh nhất định n&ecirc;n chọn loại trang bị&nbsp;<strong><a href=\"https://hoanghapc.vn/o-cung-the-ran-ssd\">ổ cứng SSD laptop</a></strong>&nbsp;v&agrave; tối thiểu ở mức 256GB. Bởi với những t&aacute;c vụ như lập tr&igrave;nh, thiết kế, chơi game&hellip;, ổ cứng SSD mới đảm bảo m&aacute;y c&oacute; hiệu năng hoạt động mượt m&agrave;.</p>\r\n\r\n<h3>1.4. Bộ nhớ RAM</h3>\r\n\r\n<p><em><img alt=\"Top 5 loại máy tính học công nghệ thông tin tốt nhất hiện nay\" src=\"https://hoanghapc.vn/media/news/1405_top-may-tinh-hoc-cong-nghe-thong-tin-3.jpg\" style=\"height:384px; width:658px\" /></em></p>\r\n\r\n<p><em>Bộ nhớ RAM m&aacute;y t&iacute;nh d&agrave;nh cho sinh vi&ecirc;n IT &iacute;t nhất phải 8GB</em></p>\r\n\r\n<p>M&aacute;y t&iacute;nh để học c&ocirc;ng nghệ th&ocirc;ng tin &iacute;t nhất phải sử dụng bộ nhớ RAM 8GB. Bởi trong qu&aacute; tr&igrave;nh học, sinh vi&ecirc;n IT phải c&agrave;i đặt, sử dụng rất nhiều chương tr&igrave;nh ảo. Nếu&nbsp;<strong><a href=\"https://hoanghapc.vn/ram-bo-nho-trong\">Ram PC</a></strong>&nbsp;kh&ocirc;ng đủ lớn sẽ khiến m&aacute;y bị giật, lag. Do đ&oacute;, việc đầu tư RAM dung lượng lớn l&agrave; cần thiết. Mức tối thiểu l&agrave; 8GB. Nếu bạn cần đến c&aacute;c phần mềm đồ họa th&igrave; n&ecirc;n trang bị RAM 16GB.</p>\r\n\r\n<h3>1.5. Điều kiện t&agrave;i ch&iacute;nh</h3>\r\n\r\n<p>M&aacute;y t&iacute;nh thỏa m&atilde;n c&aacute;c điều kiện tr&ecirc;n c&oacute; nhiều ph&acirc;n kh&uacute;c với v&ocirc; v&agrave;n những mức gi&aacute;. Do đ&oacute;, yếu tố mang t&iacute;nh quyết định để lựa chọn loại m&aacute;y t&iacute;nh học c&ocirc;ng nghệ th&ocirc;ng tin n&agrave;o ch&iacute;nh l&agrave; điều kiện t&agrave;i ch&iacute;nh. T&ugrave;y v&agrave;o tiềm lực t&agrave;i ch&iacute;nh, bạn c&oacute; thể lựa chọn d&ograve;ng m&aacute;y ph&ugrave; hợp.</p>\r\n\r\n<p>Nếu t&agrave;i ch&iacute;nh mạnh, bạn n&ecirc;n đầu tư c&aacute;c d&ograve;ng m&aacute;y thuộc ph&acirc;n kh&uacute;c cao cấp. Những d&ograve;ng m&aacute;y ở ph&acirc;n kh&uacute;c n&agrave;y sẽ c&oacute; hiệu năng hoạt động tốt nhất, xử l&yacute; c&aacute;c hạng mục c&ocirc;ng nghệ nặng một c&aacute;ch nhẹ nh&agrave;ng. Nếu t&agrave;i ch&iacute;nh khi&ecirc;m tốn, bạn n&ecirc;n chọn m&aacute;y t&iacute;nh đảm bảo đủ c&aacute;c chức năng cơ bản cho việc học c&ocirc;ng nghệ th&ocirc;ng tin. Khi cần, bạn c&oacute; thể n&acirc;ng cấp m&aacute;y sau.</p>\r\n\r\n<blockquote>\r\n<p><strong>Xem th&ecirc;m: VGA | Card M&agrave;n H&igrave;nh |&nbsp;<a href=\"https://hoanghapc.vn/vga-card-man-hinh\">Card đồ họa rời</a>&nbsp;gi&aacute; Khuyến M&atilde;i l&ecirc;n tới 3 Triệu</strong></p>\r\n</blockquote>\r\n\r\n<h2>2. Top 5 m&aacute;y t&iacute;nh, laptop học c&ocirc;ng nghệ th&ocirc;ng tin tốt nhất n&ecirc;n đầu tư</h2>\r\n\r\n<p>Tr&ecirc;n thị trường hiện nay c&oacute; rất nhiều d&ograve;ng m&aacute;y t&iacute;nh d&agrave;nh cho sinh vi&ecirc;n học c&ocirc;ng nghệ th&ocirc;ng tin. Tuy nhi&ecirc;n, nổi bật nhất c&oacute; thể kể đến top 5 m&aacute;y t&iacute;nh dưới đ&acirc;y.</p>\r\n\r\n<h3>2.1. Dell Inspiron 5406 i5 1135G7</h3>\r\n\r\n<p><em><img alt=\"Top 5 loại máy tính học công nghệ thông tin tốt nhất hiện nay\" src=\"https://hoanghapc.vn/media/news/1405_top-may-tinh-hoc-cong-nghe-thong-tin-4.jpg\" style=\"height:387px; width:659px\" /></em></p>\r\n\r\n<p><em>M&aacute;y t&iacute;nh Dell Inspiron 5406 i5 1135G7</em></p>\r\n\r\n<p>Nếu bạn băn khoăn kh&ocirc;ng biết chọn m&aacute;y t&iacute;nh học c&ocirc;ng nghệ th&ocirc;ng tin loại n&agrave;o tốt th&igrave; Dell Inspiron 5406 i5 1135G7 l&agrave; một gợi &yacute;. Đ&acirc;y l&agrave; d&ograve;ng m&aacute;y t&iacute;nh được rất nhiều sinh vi&ecirc;n IT y&ecirc;u th&iacute;ch lựa chọn. D&ograve;ng m&aacute;y t&iacute;nh n&agrave;y sở hữu bộ vi xử l&yacute; Intel Core i5 Tiger Lake 1135G7 c&oacute; hiệu năng hoạt động mạnh mẽ. Hơn nữa, m&aacute;y c&ograve;n được trang bị th&ecirc;m card đồ họa rời NVIDIA GeForce MX330 2 GB. Với sự trang bị n&agrave;y, d&ugrave; lập tr&igrave;nh, thiết kế đồ họa hay chơi game, Dell Inspiron 5406 i5 1135G7 đều thỏa m&atilde;n tốt.</p>\r\n\r\n<p>Kh&ocirc;ng chỉ ghi điểm về hiệu năng, Dell Inspiron 5406 i5 1135G7 chinh phục được người d&ugrave;ng bởi khả năng lưu trữ. Với RAM 8GB, ổ cứng SSD 512GB, m&aacute;y t&iacute;nh n&agrave;y sở hữu kh&ocirc;ng gian lưu trữ đủ sức chứa cho mọi phần mềm phục vụ cho việc học IT. Đồng thời, tốc độ xử l&yacute; của m&aacute;y cũng đảm bảo nhanh, kh&ocirc;ng giật, lag.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh của Dell Inspiron 5406 i5 1135G7 cũng l&agrave; điểm cộng. Với k&iacute;ch thước 14 inch, độ ph&acirc;n giải full HD 1920x1080 gi&uacute;p mang đến trải nghiệm tuyệt vời nhất cho người d&ugrave;ng. D&ugrave; học tập, l&agrave;m việc hay chơi game, xem phim đều m&atilde;n nh&atilde;n với h&igrave;nh ảnh sắc n&eacute;t, &acirc;m thanh sống động. Gi&aacute; của Dell Inspiron 5406 i5 1135G7 dao động từ 19-22 triệu đồng. Đ&acirc;y l&agrave; mức gi&aacute; ho&agrave;n to&agrave;n đ&aacute;ng để đầu tư với một chiếc m&aacute;y t&iacute;nh học c&ocirc;ng nghệ th&ocirc;ng tin cấu h&igrave;nh cao, hiệu năng mạnh mẽ.</p>\r\n\r\n<h3>2.2. Laptop Lenovo Legion 5 15IMH05 i7 (82AU0051VN)</h3>\r\n\r\n<p><em><img alt=\"Top 5 loại máy tính học công nghệ thông tin tốt nhất hiện nay\" src=\"https://hoanghapc.vn/media/news/1405_top-may-tinh-hoc-cong-nghe-thong-tin-5.jpg\" style=\"height:371px; width:660px\" /></em></p>\r\n\r\n<p><em>Lenovo Legion 5 15IMH05 i7 (82AU0051VN) - Lựa chọn ho&agrave;n hảo cho sinh vi&ecirc;n IT</em></p>\r\n\r\n<p>Trong top m&aacute;y t&iacute;nh học c&ocirc;ng nghệ th&ocirc;ng tin đ&aacute;ng mua nhất, Lenovo Legion 5 15IMH05 i7 (82AU0051VN) l&agrave; lựa chọn kh&ocirc;ng thể bỏ qua. Chiếc m&aacute;y t&iacute;nh n&agrave;y sẽ khiến sinh vi&ecirc;n IT m&ecirc; đắm bởi sở hữu sức mạnh vượt trội. Lenovo Legion 5 15H05 trang bị chip Core i7 thế hệ thứ 10 c&ugrave;ng với bộ nhớ RAM 8GB. Hơn nữa, m&aacute;y c&ograve;n được bổ sung th&ecirc;m card đồ họa rời GTX 1650 4GB. Điều n&agrave;y gi&uacute;p người d&ugrave;ng c&oacute; thể viết code hay chơi game cấu h&igrave;nh cao mượt nhất.</p>\r\n\r\n<p>Ngo&agrave;i sự mượt m&agrave; về hiệu năng, Lenovo Legion 5 15IMH05 i7 cũng ghi điểm với kh&ocirc;ng gian lưu trữ cực khủng. Chiếc laptop n&agrave;y c&oacute; sự kết hợp cả ổ cứng SSD 256GB v&agrave; HDD 1TB SATA 3. Với ổ cứng n&agrave;y, người d&ugrave;ng c&oacute; thể thoải m&aacute;i lưu trữ c&aacute;c chương tr&igrave;nh m&agrave; kh&ocirc;ng lo m&aacute;y đơ, lag. Đồng thời, qu&aacute; tr&igrave;nh xử l&yacute; c&aacute;c t&aacute;c vụ cũng nhanh v&agrave; mượt hơn.</p>\r\n\r\n<p>Về m&agrave;n h&igrave;nh, Lenovo Legion 5 15IMH05 i7 trang bị m&agrave;n h&igrave;nh 15.6 inch full HD, tần số qu&eacute;t 120HZ. Với c&aacute;c th&ocirc;ng số n&agrave;y, laptop mang đến h&igrave;nh ảnh sắc n&eacute;t, khung h&igrave;nh chuyển đổi mượt m&agrave;. Với đặc điểm n&agrave;y, laptop mang đến trải nghiệm tuyệt vời khi chơi game hay xem phim.</p>\r\n\r\n<p>Về b&agrave;n ph&iacute;m, Lenovo Legion 5 15IMH05 i7 c&oacute; trang bị đ&egrave;n nền RGB. Sự bổ sung n&agrave;y gi&uacute;p chiếc laptop th&ecirc;m nổi bật v&agrave; tạo cảm gi&aacute;c chill hơn khi viết code hay chơi game về ban đ&ecirc;m.</p>\r\n\r\n<p>Về cổng kết nối, Lenovo Legion 5 15IMH05 i7 được trang bị nhiều cổng gồm USB 3.1, USB Type C, HDMI. Sự đa dạng n&agrave;y gi&uacute;p laptop dễ d&agrave;ng kết nối với c&aacute;c thiết bị ngoại vi.</p>\r\n\r\n<p>Với rất nhiều ưu điểm, gi&aacute; của Lenovo Legion 5 15IMH05 i7 tương đối cao. Gi&aacute; trung b&igrave;nh để sở hữu một chiếc Lenovo Legion 5 15IMH05 i7 dao động từ 25 -27 triệu.</p>\r\n\r\n<h3>2.3. Asus ZenBook 14 UX425EA-KI439T</h3>\r\n\r\n<p><em><img alt=\"Top 5 loại máy tính học công nghệ thông tin tốt nhất hiện nay\" src=\"https://hoanghapc.vn/media/news/1405_top-may-tinh-hoc-cong-nghe-thong-tin-6.jpg\" style=\"height:439px; width:659px\" /></em></p>\r\n\r\n<p><em>Asus ZenBook 14 UX425EA-KI439T</em></p>\r\n\r\n<p>Nếu bạn y&ecirc;u th&iacute;ch những chiếc m&aacute;y mỏng nhẹ nhưng hiệu năng mạnh mẽ th&igrave; Asus ZenBook 14 UX425EA-KI439T l&agrave; chiếc m&aacute;y t&iacute;nh đ&aacute;ng để đầu tư. Đ&acirc;y l&agrave; mẫu laptop vừa đẹp về ngoại h&igrave;nh vừa mạnh mẽ về hiệu năng. Chiếc laptop si&ecirc;u mỏng n&agrave;y chỉ c&oacute; trọng lượng khoảng 1.17kg. Với trọng lượng nhẹ, người d&ugrave;ng c&oacute; thể dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh đi học, đi l&agrave;m đều tiện lợi.</p>\r\n\r\n<p>Về hiệu năng, Asus ZenBook 14 UX425EA-KI439T được trang bị CPU Core i7 thuộc thế hệ thứ 11, tốc độ 2.80GHZ. Đ&acirc;y l&agrave; bộ vi xử l&yacute; hiện đại nhất gi&uacute;p mang đến hiệu năng vượt trội cho chiếc laptop tưởng như nhỏ b&eacute;. Th&ecirc;m nữa, laptop c&ograve;n được trang bị GPU đồ họa Intel Iris Xe Graphics. Nhờ đ&oacute;, c&aacute;c t&aacute;c vụ đồ họa sẽ được xử l&yacute; gọn g&agrave;ng.</p>\r\n\r\n<p>Về bộ nhớ, Asus ZenBook 14 UX425EA-KI439T trang bị RAM LPDDR4X 16GB, tốc độ 4266GHZ. Ổ cứng của laptop l&agrave; PCIe 512GB. Sự trang bị n&agrave;y gi&uacute;p Asus ZenBook 14 UX425EA-KI439T xử l&yacute; c&aacute;c t&aacute;c vụ một c&aacute;ch ho&agrave;n hảo.</p>\r\n\r\n<p>Thời lượng pin cũng l&agrave; điểm cộng của Asus ZenBook 14 UX425EA-KI439T. Laptop được trang bị Pin 4-cell, 67WHrs. Loại pin n&agrave;y c&oacute; thời gian lưu trữ pin khủng gi&uacute;p bạn mang m&aacute;y đi học hay l&agrave;m b&agrave;i tại qu&aacute;n cafe m&agrave; kh&ocirc;ng cần mang theo sạc.</p>\r\n\r\n<p>Gi&aacute; của m&aacute;y t&iacute;nh học c&ocirc;ng nghệ th&ocirc;ng tin Asus ZenBook 14 UX425EA-KI439T dao động từ 28-30 triệu. Với khối lượng học tập tr&ecirc;n m&aacute;y t&iacute;nh cao th&igrave; sinh vi&ecirc;n ng&agrave;nh IT ho&agrave;n to&agrave;n n&ecirc;n đầu tư.</p>\r\n\r\n<blockquote>\r\n<p><strong>Xem th&ecirc;m:&nbsp;<a href=\"https://hoanghapc.vn/man-hinh-may-tinh\">Mua m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh</a>&nbsp;LCD, PC, m&agrave;n h&igrave;nh m&aacute;y t&iacute;nh 24, 27, 32 inch. Tần số qu&eacute;t từ 120Hz, 144Hz ch&iacute;nh h&atilde;ng, gi&aacute; rẻ, trả g&oacute;p. Giao nhanh 1 giờ, bảo h&agrave;nh đến 3 năm</strong></p>\r\n</blockquote>\r\n\r\n<h3>2.4. Laptop MSI Prestige 14 A11SCX 282VN</h3>\r\n\r\n<p><em><img alt=\"Top 5 loại máy tính học công nghệ thông tin tốt nhất hiện nay\" src=\"https://hoanghapc.vn/media/news/1405_top-may-tinh-hoc-cong-nghe-thong-tin-7.jpg\" style=\"height:494px; width:659px\" /></em></p>\r\n\r\n<p><em>M&aacute;y t&iacute;nh MSI Prestige 14 A11SCX 282VN</em></p>\r\n\r\n<p>Một trong những chiếc m&aacute;y t&iacute;nh m&agrave; sinh vi&ecirc;n IT rất y&ecirc;u th&iacute;ch l&agrave; MSI Prestige 14 A11SCX 282VN.Đ&acirc;y l&agrave; chiếc m&aacute;y t&iacute;nh sở hữu thiết kế thời thượng với th&acirc;n m&aacute;y l&agrave;m ho&agrave;n to&agrave;n từ nh&ocirc;m cao cấp. Với chất liệu nh&ocirc;m, m&aacute;y mang d&aacute;ng vẻ cứng c&aacute;p rất ph&ugrave; hợp với phong c&aacute;ch của sinh vi&ecirc;n IT.</p>\r\n\r\n<p>MSI Prestige 14 A11SCX 282VN sở hữu rất nhiều điểm cộng. Đầu ti&ecirc;n phải kể đến b&agrave;n ph&iacute;m. MSI Prestige 14 A11SCX 282VN thiết kế c&aacute;c ph&iacute;m bấm lớn, khoảng c&aacute;ch rộng n&ecirc;n thuận tiện cho người d&ugrave;ng khi lập tr&igrave;nh, viết code hay chơi game. Ngo&agrave;i ra, b&agrave;n ph&iacute;m c&ograve;n trang bị đ&egrave;n led gi&uacute;p sinh vi&ecirc;n IT dễ d&agrave;ng l&agrave;m việc về ban đ&ecirc;m.</p>\r\n\r\n<p>M&agrave;n h&igrave;nh cũng l&agrave; ưu điểm của MSI Prestige 14 A11SCX 282VN. M&agrave;n h&igrave;nh thiết kế si&ecirc;u mỏng, k&iacute;ch thước 14 inch, độ ph&acirc;n giải fullHD. Với m&agrave;n h&igrave;nh n&agrave;y c&aacute;c h&igrave;nh ảnh hiển thị một c&aacute;ch si&ecirc;u sắc n&eacute;t v&agrave; sống động.</p>\r\n\r\n<p>Điểm cộng lớn nhất của MSI Prestige 14 A11SCX 282VN chắc chắn phải n&oacute;i đến l&agrave; hiệu năng. Laptop trang bị CPU Intel Core i7-1185G7 thế hệ thứ 11 mới nhất, tốc độ 4.8Hz. Bộ nhớ RAM 8GB LPDDR4, ổ cứng SSD 512GB NVMe PCIe. Điều n&agrave;y gi&uacute;p chiếc laptop MSI Prestige 14 A11SCX 282VN thực hiện đa t&aacute;c vụ một c&aacute;ch mượt m&agrave;, khả năng lưu trữ vượt trội.</p>\r\n\r\n<h3>2.5. Laptop Acer Gaming Aspire 7 A715-41G-R150 NH.Q8SSV.004</h3>\r\n\r\n<p><em><img alt=\"Top 5 loại máy tính học công nghệ thông tin tốt nhất hiện nay\" src=\"https://hoanghapc.vn/media/news/1405_top-may-tinh-hoc-cong-nghe-thong-tin-8.jpg\" style=\"height:440px; width:660px\" /></em></p>\r\n\r\n<p><em>Acer Gaming Aspire 7 A715-41G-R150 NH.Q8SSV.004</em></p>\r\n\r\n<p>Với những sinh vi&ecirc;n IT vừa đam m&ecirc; lập tr&igrave;nh vừa y&ecirc;u th&iacute;ch game th&igrave; Acer Gaming Aspire 7 A715-41G-R150 NH.Q8SSV.004 l&agrave; lựa chọn kh&ocirc;ng thể ho&agrave;n hảo hơn. Đ&acirc;y l&agrave; chiếc laptop sở hữu thiết kế tối giản nhưng lại mang trong m&igrave;nh cấu h&igrave;nh mạnh mẽ. Chiếc laptop gaming n&agrave;y chỉ c&oacute; trọng lượng 2.1kg mỏng, nhẹ hơn rất nhiều so với c&aacute;c d&ograve;ng laptop gaming kh&aacute;c. Điều n&agrave;y mang đến thuận tiện cho c&aacute;c sinh vi&ecirc;n IT khi dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh để học tập hay giải tr&iacute;.</p>\r\n\r\n<p>Acer Gaming Aspire 7 A715-41G-R150 NH.Q8SSV.004 thiết kế m&agrave;n h&igrave;nh 15.6 inch. M&agrave;n h&igrave;nh c&oacute; độ ph&acirc;n giải full HD v&agrave; trang bị tấm nền IPS tạo g&oacute;c nh&igrave;n l&ecirc;n tới 178 độ. điều n&agrave;y gi&uacute;p h&igrave;nh ảnh ch&acirc;n thực v&agrave; sống động nhất.</p>\r\n\r\n<p>Về hiệu năng, Acer Gaming Aspire 7 A715-41G-R150 chinh phục được mọi người d&ugrave;ng kh&oacute; t&iacute;nh. Bởi hiệu năng v&ocirc; c&ugrave;ng mạnh mẽ nhờ trang bị CPU AMD Ryzen&trade; 7-3750H xung nhịp l&ecirc;n tới 4.00Ghz, RAM 8GB DDR4 v&agrave; ổ cứng SSD 512GB PCIe NVMe. B&ecirc;n cạnh đ&oacute;, Acer Gaming Aspire 7 A715-41G-R150 cũng bổ sung card đồ họa rời 4GB NVIDIA&reg; GeForce&reg; GTX 1650Ti. Với sự trang bị n&agrave;y, mọi t&aacute;c vụ đều được laptop thực hiện nhanh ch&oacute;ng.</p>', '2023-05-31 08:57:42', 1, 1, '2023-05-31 08:57:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `atb_name` varchar(191) NOT NULL,
  `atb_slug` varchar(191) NOT NULL,
  `atb_type` tinyint(4) NOT NULL DEFAULT 0,
  `atb_category_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `atb_name`, `atb_slug`, `atb_type`, `atb_category_id`, `created_at`, `updated_at`) VALUES
(1, '6 Tháng', '6-thang', 3, 1, '2023-05-31 01:55:00', NULL),
(2, '12 Tháng', '12-thang', 3, 1, '2023-05-31 01:55:10', NULL),
(3, '24 Tháng', '24-thang', 3, 1, '2023-05-31 01:55:16', '2023-05-31 02:06:05'),
(4, '36 Tháng', '36-thang', 3, 1, '2023-05-31 02:06:18', NULL),
(10, 'Dell', 'dell', 2, 1, '2023-05-31 02:12:21', NULL),
(11, 'ASUS', 'asus', 2, 1, '2023-05-31 02:12:26', NULL),
(12, 'LENOVO', 'lenovo', 2, 1, '2023-05-31 02:12:36', NULL),
(13, 'ACER', 'acer', 2, 1, '2023-05-31 02:12:44', NULL),
(14, 'MACBOOK', 'macbook', 2, 1, '2023-05-31 02:12:54', NULL),
(15, 'Lap HP', 'lap-hp', 2, 1, '2023-05-31 02:13:51', NULL),
(16, 'MSI', 'msi', 2, 1, '2023-05-31 08:41:34', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_name` varchar(191) NOT NULL,
  `c_slug` varchar(191) NOT NULL,
  `c_avatar` varchar(191) DEFAULT NULL,
  `c_banner` varchar(191) DEFAULT NULL,
  `c_description` varchar(191) DEFAULT NULL,
  `c_parent_id` int(11) NOT NULL DEFAULT 0,
  `c_hot` tinyint(4) NOT NULL DEFAULT 0,
  `c_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `c_name`, `c_slug`, `c_avatar`, `c_banner`, `c_description`, `c_parent_id`, `c_hot`, `c_status`, `created_at`, `updated_at`) VALUES
(1, 'Laptop Dell', 'laptop-dell', NULL, NULL, NULL, 0, 1, 1, '2023-05-31 01:53:05', '2023-05-31 14:12:15'),
(2, 'Laptop HP', 'laptop-hp', NULL, NULL, NULL, 0, 1, 1, '2023-05-31 01:53:14', '2023-05-31 14:12:16'),
(3, 'Laptop Lenovo', 'laptop-lenovo', NULL, NULL, NULL, 0, 1, 1, '2023-05-31 01:53:27', '2023-05-31 14:12:17'),
(4, 'Laptop ASUS', 'laptop-asus', NULL, NULL, NULL, 0, 1, 1, '2023-05-31 01:53:37', '2023-05-31 14:12:19'),
(5, 'Laptop THINKPAD', 'laptop-thinkpad', NULL, NULL, NULL, 0, 0, 1, '2023-05-31 01:53:54', NULL),
(6, 'MACBOOK', 'macbook', NULL, NULL, NULL, 0, 0, 1, '2023-05-31 01:54:13', NULL),
(7, 'LAPTOP GAMING', 'laptop-gaming', NULL, NULL, NULL, 0, 0, 1, '2023-05-31 02:05:54', NULL),
(8, 'Laptop ACER', 'laptop-acer', NULL, NULL, NULL, 0, 0, 1, '2023-05-31 08:30:41', NULL),
(9, 'LapTop MSI', 'laptop-msi', NULL, NULL, NULL, 0, 0, 1, '2023-05-31 08:41:25', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cmt_name` varchar(191) DEFAULT NULL,
  `cmt_email` varchar(191) DEFAULT NULL,
  `cmt_content` text DEFAULT NULL,
  `cmt_parent_id` int(11) NOT NULL DEFAULT 0,
  `cmt_product_id` int(11) NOT NULL DEFAULT 0,
  `cmt_admin_id` int(11) NOT NULL DEFAULT 0,
  `cmt_user_id` int(11) NOT NULL DEFAULT 0,
  `cmt_like` int(11) NOT NULL DEFAULT 0,
  `cmt_disk_like` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `c_title` varchar(191) DEFAULT NULL,
  `c_phone` char(11) DEFAULT NULL,
  `c_email` varchar(191) DEFAULT NULL,
  `c_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `discount_code`
--

CREATE TABLE `discount_code` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `d_code` varchar(191) NOT NULL,
  `d_number_code` int(11) NOT NULL DEFAULT 0,
  `d_date_start` datetime DEFAULT NULL,
  `d_date_end` datetime DEFAULT NULL,
  `d_percentage` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `discount_code`
--

INSERT INTO `discount_code` (`id`, `d_code`, `d_number_code`, `d_date_start`, `d_date_end`, `d_percentage`, `created_at`, `updated_at`) VALUES
(1, 'abc', 5, '2023-06-01 20:58:00', '2023-06-05 20:58:00', 10, '2023-05-31 13:59:01', '2023-05-31 13:59:01'),
(2, 'stjsggss', 10, '2023-06-01 21:13:00', '2023-06-30 21:14:00', 8, '2023-05-31 14:14:11', '2023-05-31 14:14:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `e_name` varchar(191) DEFAULT NULL,
  `e_banner` varchar(191) DEFAULT NULL,
  `e_link` varchar(191) DEFAULT NULL,
  `e_position_1` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_2` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_3` tinyint(4) NOT NULL DEFAULT 0,
  `e_position_4` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `events`
--

INSERT INTO `events` (`id`, `e_name`, `e_banner`, `e_link`, `e_position_1`, `e_position_2`, `e_position_3`, `e_position_4`, `created_at`, `updated_at`) VALUES
(1, 'Event 1', '2023-05-31__laptop-nhap-khau-khoavang-1-1661916521.webp', 'http', 1, 0, 0, 0, '2023-05-31 09:03:48', '2023-05-31 09:03:48'),
(2, 'Event 2', '2023-05-31__techzones-nen-mua-laptop-gaming-hay-workstation-huong-dan-cach-phan-biet.jpg', 'http', 0, 1, 0, 0, '2023-05-31 01:46:27', NULL),
(3, 'Event 3', '2023-05-31__1501-79chngtrnhthucimi-600x400.jpg', 'http', 0, 0, 1, 0, '2023-05-31 01:48:23', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `exports`
--

CREATE TABLE `exports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `w_order_id` int(11) NOT NULL,
  `w_price` int(11) NOT NULL DEFAULT 0,
  `w_qty` int(11) NOT NULL DEFAULT 0,
  `w_time_exports` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `keywords`
--

CREATE TABLE `keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `k_name` varchar(191) NOT NULL,
  `k_slug` varchar(191) NOT NULL,
  `k_description` varchar(191) DEFAULT NULL,
  `k_hot` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `mn_name` varchar(191) NOT NULL,
  `mn_slug` varchar(191) NOT NULL,
  `mn_avatar` varchar(191) DEFAULT NULL,
  `mn_banner` varchar(191) DEFAULT NULL,
  `mn_description` varchar(191) DEFAULT NULL,
  `mn_hot` tinyint(4) NOT NULL DEFAULT 0,
  `mn_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `mn_name`, `mn_slug`, `mn_avatar`, `mn_banner`, `mn_description`, `mn_hot`, `mn_status`, `created_at`, `updated_at`) VALUES
(1, 'Tin Công Nghệ', 'tin-cong-nghe', NULL, NULL, NULL, 0, 1, '2023-05-31 08:44:48', NULL),
(2, 'Tin Khuyến Mãi', 'tin-khuyen-mai', NULL, NULL, NULL, 0, 1, '2023-05-31 08:44:56', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `od_transaction_id` int(11) NOT NULL DEFAULT 0,
  `od_product_id` int(11) NOT NULL DEFAULT 0,
  `od_sale` int(11) NOT NULL DEFAULT 0,
  `od_qty` tinyint(4) NOT NULL DEFAULT 0,
  `od_price` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `od_transaction_id`, `od_product_id`, `od_sale`, `od_qty`, `od_price`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 11, 1, 16910000, '2023-05-31 06:32:06', NULL),
(2, 1, 5, 7, 1, 48825000, '2023-05-31 06:32:06', NULL),
(3, 1, 3, 14, 1, 21156000, '2023-05-31 06:32:06', NULL),
(4, 2, 13, 0, 1, 24800000, '2023-05-31 14:08:35', NULL),
(5, 3, 3, 14, 1, 21156000, '2023-05-31 14:09:54', NULL);

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
-- Cấu trúc bảng cho bảng `pay_histories`
--

CREATE TABLE `pay_histories` (
  `id` int(10) UNSIGNED NOT NULL,
  `ph_code` varchar(191) NOT NULL,
  `ph_user_id` int(10) UNSIGNED NOT NULL,
  `ph_credit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_debit` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_balance` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `ph_meta_detail` text DEFAULT NULL,
  `ph_status` tinyint(4) NOT NULL DEFAULT 0,
  `ph_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `ph_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pay_histories`
--

INSERT INTO `pay_histories` (`id`, `ph_code`, `ph_user_id`, `ph_credit`, `ph_debit`, `ph_balance`, `ph_meta_detail`, `ph_status`, `ph_month`, `ph_year`, `created_at`, `updated_at`) VALUES
(1, 'PAYOUT1', 1, 0, 86891000, 0, NULL, 1, 5, 2023, '2023-05-31 06:32:06', NULL),
(2, 'PAYOUT2', 2, 0, 21156000, 0, NULL, 1, 5, 2023, '2023-05-31 14:09:54', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_ins`
--

CREATE TABLE `pay_ins` (
  `id` int(10) UNSIGNED NOT NULL,
  `pi_user_id` int(10) UNSIGNED NOT NULL,
  `pi_admin_id` int(10) UNSIGNED NOT NULL,
  `pi_provider` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_fee` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_amount` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `pi_meta_detail` text DEFAULT NULL,
  `pi_status` tinyint(4) NOT NULL DEFAULT 0,
  `pi_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `pi_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pay_outs`
--

CREATE TABLE `pay_outs` (
  `id` int(10) UNSIGNED NOT NULL,
  `po_user_id` int(10) UNSIGNED NOT NULL,
  `po_transaction_id` int(10) UNSIGNED NOT NULL,
  `po_money` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `po_meta_detail` text NOT NULL,
  `po_status` tinyint(4) NOT NULL DEFAULT 0,
  `po_month` tinyint(3) UNSIGNED DEFAULT NULL,
  `po_year` smallint(5) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pay_outs`
--

INSERT INTO `pay_outs` (`id`, `po_user_id`, `po_transaction_id`, `po_money`, `po_meta_detail`, `po_status`, `po_month`, `po_year`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 86891000, '', 1, 5, 2023, '2023-05-31 06:32:06', NULL),
(2, 2, 3, 21156000, '', 1, 5, 2023, '2023-05-31 14:09:54', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pro_name` varchar(191) DEFAULT NULL,
  `pro_slug` varchar(191) NOT NULL,
  `pro_price` int(11) NOT NULL DEFAULT 0,
  `pro_price_entry` int(11) NOT NULL DEFAULT 0 COMMENT 'giá nhập',
  `pro_category_id` int(11) NOT NULL DEFAULT 0,
  `pro_supplier_id` int(11) NOT NULL DEFAULT 0,
  `pro_admin_id` int(11) NOT NULL DEFAULT 0,
  `pro_sale` tinyint(4) NOT NULL DEFAULT 0,
  `pro_file` varchar(255) NOT NULL,
  `pro_avatar` varchar(191) DEFAULT NULL,
  `pro_view` int(11) NOT NULL DEFAULT 0,
  `pro_hot` tinyint(4) NOT NULL DEFAULT 0,
  `pro_active` tinyint(4) NOT NULL DEFAULT 1,
  `pro_pay` int(11) NOT NULL DEFAULT 0,
  `pro_description` mediumtext DEFAULT NULL,
  `pro_content` text DEFAULT NULL,
  `pro_review_total` int(11) NOT NULL DEFAULT 0,
  `pro_review_star` int(11) NOT NULL DEFAULT 0,
  `pro_age_review` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `pro_number` int(11) NOT NULL DEFAULT 0,
  `pro_resistant` varchar(191) DEFAULT NULL,
  `pro_energy` varchar(191) DEFAULT NULL,
  `pro_country` tinyint(4) NOT NULL DEFAULT 0,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pro_link` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `pro_link`) VALUES
(1, 'Laptop Acer Nitro 5 Tiger Gaming AN515-58-52SP i5 12500H/8GB/512GB SSD/GeForce RTX 3050 4GB/Win11', 'laptop-acer-nitro-5-tiger-gaming-an515-58-52sp-i5-12500h8gb512gb-ssdgeforce-rtx-3050-4gbwin11', 23500000, 0, 7, 1, 0, 0, '', '2023-05-31__638140612136202106-acer-nitro-gaming-an515-58-dd.webp', 2, 0, 1, 0, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '<p>Cấu h&igrave;nh Laptop Acer Aspire 3 A315 58 54XF i5 1135G7/8GB/512GB/Win11 (NX.AM0SV.007)</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>CPU:</p>\r\n\r\n	<p>i51135G72.4GHz</p>\r\n	</li>\r\n	<li>\r\n	<p>RAM:</p>\r\n\r\n	<p>8 GBDDR4 (Onboard 4 GB + 1 khe 4 GB)Từ 2400 MHz (H&atilde;ng c&ocirc;ng bố)</p>\r\n	</li>\r\n	<li>\r\n	<p>Ổ cứng:</p>\r\n\r\n	<p>512 GB SSD NVMe PCIe (C&oacute; thể th&aacute;o ra, lắp thanh kh&aacute;c tối đa 1 TB)Hỗ trợ khe cắm HDD SATA (n&acirc;ng cấp tối đa 2 TB)</p>\r\n	</li>\r\n	<li>\r\n	<p>M&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>15.6&quot;Full HD (1920 x 1080)</p>\r\n	</li>\r\n	<li>\r\n	<p>Card m&agrave;n h&igrave;nh:</p>\r\n\r\n	<p>Card t&iacute;ch hợpIntel Iris Xe</p>\r\n	</li>\r\n	<li>\r\n	<p>Cổng kết nối:</p>\r\n\r\n	<p>HDMILAN (RJ45)Jack tai nghe 3.5 mm1 x USB 2.02 x USB 3.2</p>\r\n	</li>\r\n	<li>\r\n	<p>Hệ điều h&agrave;nh:</p>\r\n\r\n	<p>Windows 11 Home SL</p>\r\n	</li>\r\n	<li>\r\n	<p>Thiết kế:</p>\r\n\r\n	<p>Vỏ nhựa</p>\r\n	</li>\r\n	<li>\r\n	<p>K&iacute;ch thước, khối lượng:</p>\r\n\r\n	<p>D&agrave;i 363.4 mm - Rộng 238.4 mm - D&agrave;y 19.9 mm - Nặng 1.7 kg</p>\r\n	</li>\r\n	<li>\r\n	<p>Thời điểm ra mắt:</p>\r\n\r\n	<p>2021</p>\r\n	</li>\r\n</ul>', 0, 0, 0, '2023-05-31 02:51:35', 20, NULL, NULL, 0, '2023-05-31 02:54:06', NULL),
(2, 'Laptop ACER Aspire 5 A514-55-5954 (NX.K5BSV.001) (i5-1235U/RAM 8GB/512GB SSD/ Windows 11)', 'laptop-acer-aspire-5-a514-55-5954-nxk5bsv001-i5-1235uram-8gb512gb-ssd-windows-11', 19000000, 0, 1, 1, 0, 11, '', '2023-05-31__unnamed.webp', 2, 1, 1, 1, '<p>Thương hiệu</p>\r\n\r\n<p>ACER</p>\r\n\r\n<p>Bảo h&agrave;nh</p>\r\n\r\n<p>12 th&aacute;ng</p>\r\n\r\n<p>Th&ocirc;ng tin chung</p>\r\n\r\n<p>Series laptop</p>\r\n\r\n<p>Aspire 5</p>\r\n\r\n<p>Part-number</p>\r\n\r\n<p>NX.K5BSV.001</p>\r\n\r\n<p>M&agrave;u sắc</p>\r\n\r\n<p>Xám</p>\r\n\r\n<p>Cấu h&igrave;nh chi tiết</p>\r\n\r\n<p>Th&ecirc;́ h&ecirc;̣ CPU</p>\r\n\r\n<p>Core i5 , Intel Core thế hệ thứ 12</p>\r\n\r\n<p>CPU</p>\r\n\r\n<p>Intel Core i5-1235U ( 1.3 GHz - 4.4GHz / 12MB / 10 nh&acirc;n, 12 luồng )</p>\r\n\r\n<p>Chip đ&ocirc;̀ họa</p>\r\n\r\n<p>Onboard Intel Iris Xe Graphics</p>\r\n\r\n<p>RAM</p>\r\n\r\n<p>8GB (4GB + 4GB Onboard) DDR4 2666MHz ( 1 Khe cắm / Hỗ trợ tối đa 20GB )</p>\r\n\r\n<p>Màn hình</p>\r\n\r\n<p>14&quot; ( 1920 x 1080 ) Full HD IPS HD webcam</p>\r\n\r\n<p>Lưu trữ</p>\r\n\r\n<p>512GB SSD M.2 NVMe /</p>\r\n\r\n<p>S&ocirc;́ c&ocirc;̉ng lưu trữ t&ocirc;́i đa</p>\r\n\r\n<p>1 x M.2 NVMe</p>\r\n\r\n<p>Kiểu khe M.2 hỗ trợ</p>\r\n\r\n<p>M.2 NVMe</p>\r\n\r\n<p>C&ocirc;̉ng xu&acirc;́t hình</p>\r\n\r\n<p>1 x HDMI</p>\r\n\r\n<p>Cổng kết nối</p>\r\n\r\n<p>, 3 x USB 3.2 , 1 x Thunderbolt 4 , Audio combo , LAN 1 Gb/s</p>\r\n\r\n<p>K&ecirc;́t n&ocirc;́i kh&ocirc;ng d&acirc;y</p>\r\n\r\n<p>WiFi 802.11ax (Wifi 6) , Bluetooth</p>\r\n\r\n<p>Bàn phím</p>\r\n\r\n<p>thường , LED</p>\r\n\r\n<p>H&ecirc;̣ đi&ecirc;̀u hành</p>\r\n\r\n<p>Windows 11 Home Windows 11</p>\r\n\r\n<p>Kích thước</p>\r\n\r\n<p>32.81 x 22.12 x 1.79 cm</p>\r\n\r\n<p>Pin</p>\r\n\r\n<p>3 cell 50 Wh , Pin liền</p>\r\n\r\n<p>Kh&ocirc;́i lượng</p>\r\n\r\n<p>1.4 kg</p>\r\n\r\n<p>Th&ocirc;ng tin kh&aacute;c</p>\r\n\r\n<p>Bảo mật</p>\r\n\r\n<p>V&acirc;n tay</p>\r\n\r\n<p>Th&ocirc;ng tin k&iacute;ch thước</p>', '<h2><a href=\"https://phongvu.vn/c/laptop\">Laptop</a>&nbsp;Acer Aspire 5 A514-55-5954 NX.K5BSV.001 l&agrave; một trong những lựa chọn h&agrave;ng đầu d&agrave;nh cho sinh vi&ecirc;n cũng như nh&acirc;n vi&ecirc;n văn ph&ograve;ng. Với thiết kế tối giản nhưng vẫn v&ocirc; c&ugrave;ng tinh tế c&ugrave;ng với hiệu năng mạnh mẽ nhờ CPU Intel Core i5 sẽ l&agrave; trợ thủ đắc lực cho bạn trong c&ocirc;ng việc, học tập cũng như giải tr&iacute;.</h2>\r\n\r\n<p><img alt=\"Laptop Acer Aspire 5 A514-55-5954 NX.K5BSV.001\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_8043cdb4-2501-4650-8337-81790591203f.png\" /></p>\r\n\r\n<h3>Thiết kế tối giản v&agrave; chất lượng hiển thị ổn định&nbsp;</h3>\r\n\r\n<p>Laptop Acer Aspire 5 c&oacute; phần vỏ được l&agrave;m từ chất liệu nhựa cao cấp v&agrave; được phủ l&ecirc;n một lớp sơn kim loại x&aacute;m mang lại sự hiện đại v&agrave; tinh tế. Ngo&agrave;i ra, với k&iacute;ch thước&nbsp;<strong>32.81 x 22.12 x 1.79cm&nbsp;</strong>v&agrave; khối lượng vỏn vẹn&nbsp;<strong>1.4kg</strong>&nbsp;dễ d&agrave;ng cho việc bỏ v&agrave;o balo hay di chuyển hằng ng&agrave;y. B&ecirc;n cạnh đ&oacute;, b&agrave;n ph&iacute;m c&ograve;n được thiết kế với hệ thống&nbsp;<strong>đ&egrave;n LED</strong>&nbsp;gi&uacute;p sử dụng dễ d&agrave;ng, ch&iacute;nh x&aacute;c hơn trong b&oacute;ng tối cũng như tăng t&iacute;nh thẩm mỹ.</p>\r\n\r\n<p><img alt=\"Laptop Acer Aspire 5 A514-55-5954 NX.K5BSV.001 | Chất liệu cao cấp\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_a3707f9f-ec0a-4063-83a5-1a31cea45703.png\" /></p>\r\n\r\n<p>Laptop được trang bị m&agrave;n h&igrave;nh&nbsp;<strong>14 inch</strong>&nbsp;với độ ph&acirc;n giải&nbsp;<strong>Full HD (1920 x 1080pixels)&nbsp;</strong>mang lại cho bạn những trải nghiệm h&igrave;nh ảnh r&otilde; n&eacute;t v&agrave; sống động. Ngo&agrave;i ra c&ograve;n được hỗ trợ tấm nền&nbsp;<strong>IPS&nbsp;</strong>gi&uacute;p c&acirc;n bằng c&aacute;c th&ocirc;ng số về m&agrave;u sắc hay &aacute;nh s&aacute;ng gi&uacute;p h&igrave;nh ảnh h&agrave;i h&ograve;a v&agrave; đẹp mắt hơn.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Acer Aspire 5 A514-55-5954 NX.K5BSV.001 | Màn hình sắc nét\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_e774a942-41c5-4d39-8bd3-783eaaea8751.png\" /></p>\r\n\r\n<h3>Hiệu năng mạnh mẽ với Intel Core i5 v&agrave; chip đồ họa Intel Iris Xe Graphics</h3>\r\n\r\n<p>Acer Aspire 5 sử dụng bộ vi xử l&yacute;&nbsp;<strong>Intel Core i5 thế hệ 12</strong>&nbsp;với&nbsp;<strong>10 nh&acirc;n&nbsp;</strong>v&agrave;&nbsp;<strong>12 luồng</strong>&nbsp;mang lại hiệu năng tương đối ổn định. Bạn c&oacute; thể dễ d&agrave;ng xử l&yacute; c&aacute;c t&aacute;c vụ văn ph&ograve;ng hay giải tr&iacute; cơ bản như lướt web, xem video, đọc b&aacute;o,... m&agrave; kh&ocirc;ng lo giật, lag hay đơ m&aacute;y.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Acer Aspire 5 A514-55-5954 NX.K5BSV.001 | Hiệu năng, chip đồ họa\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_ce27f6af-8714-44d8-b573-db1e57e279d4.png\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute; c&ograve;n được trang bị chip đồ họa&nbsp;<strong>Intel Iris Xe Graphics</strong>&nbsp;gi&uacute;p n&acirc;ng cao chất lượng h&igrave;nh ảnh. Chip đồ họa n&agrave;y mang lại cho bạn những trải nghiệm h&igrave;nh ảnh ổn định, h&agrave;i h&ograve;a cũng như thao t&aacute;c mượt m&agrave;. Ngo&agrave;i ra c&ograve;n hỗ trợ chơi game với fps ổn định v&agrave; đồ họa đẹp mắt.&nbsp;</p>\r\n\r\n<h3>Đa nhiệm mượt m&agrave; với RAM 8GB v&agrave; kh&ocirc;ng gian lưu trữ 512GB&nbsp;</h3>\r\n\r\n<p>Laptop được trang bị RAM với dung lượng&nbsp;<strong>8GB</strong>&nbsp;đạt chuẩn&nbsp;<strong>DDR4&nbsp;</strong>hỗ trợ thao t&aacute;c đa nhiệm một c&aacute;ch &ecirc;m &aacute;i v&agrave; phản hồi nhanh ch&oacute;ng. Bạn c&oacute; thể sử dụng c&ugrave;ng l&uacute;c nhiều phần mềm, thực hiện đồng thời nhiều thao t&aacute;c kh&aacute;c nhau với tốc độ xử l&yacute; nhanh ch&oacute;ng. Laptop cũng được trang bị&nbsp;<strong>1 khe cắm&nbsp;</strong>cho ph&eacute;p bạn n&acirc;ng cấp dung lượng&nbsp;<strong>RAM</strong>&nbsp;l&ecirc;n tối đa&nbsp;<strong>20GB</strong>.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Acer Aspire 5 A514-55-5954 NX.K5BSV.001 | Bộ nhớ lưu trữ\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_9ad853e9-0e41-4d34-861f-588417cee692.png\" /></p>\r\n\r\n<p>M&aacute;y t&iacute;nh x&aacute;ch tay Acer Aspire 5 được trang bị kh&ocirc;ng gian lưu trữ với dung lượng l&ecirc;n đến<strong>&nbsp;512GB SSD M.2 NVMe</strong>. Bạn c&oacute; thể lưu trữ một lượng lớn dữ liệu cần thiết ngay tr&ecirc;n bộ nhớ của m&aacute;y t&iacute;nh m&agrave; kh&ocirc;ng cần th&ecirc;m USB hay thẻ nhớ. Việc lưu trực tiếp tr&ecirc;n m&aacute;y sẽ gi&uacute;p bạn dễ sắp xếp, quản l&yacute; cũng như t&igrave;m kiếm dữ liệu khi cần.&nbsp;</p>\r\n\r\n<h3>Hỗ trợ c&agrave;i đặt Windows 11 v&agrave; vi&ecirc;n pin 3 cell 50 Wh</h3>\r\n\r\n<p>Khi mua laptop&nbsp;<a href=\"https://phongvu.vn/c/acer-aspire-5\">Acer Aspire 5</a>&nbsp;bạn sẽ được hỗ trợ c&agrave;i đặt hệ điều h&agrave;nh&nbsp;<strong>Windows 11 Home</strong>. Với phi&ecirc;n bản hệ điều h&agrave;nh n&agrave;y bạn c&oacute; thể t&ugrave;y chỉnh giao diện sao cho ph&ugrave; hợp. B&ecirc;n cạnh đ&oacute; cũng c&oacute; một số cải tiến về độ nhạy khi cảm ứng, tốc độ phản hồi thao t&aacute;c hay cửa h&agrave;ng ứng dụng Windows,...&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Acer Aspire 5 A514-55-5954 NX.K5BSV.001 | Pin, win 11\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_6aeea109-e240-4ffa-8d07-4d4213ac9950.png\" /></p>\r\n\r\n<p>Laptop được trang bị vi&ecirc;n pin<strong>&nbsp;3 cell 50 Wh&nbsp;</strong>cho ph&eacute;p bạn sử dụng li&ecirc;n tục trong nhiều giờ liền chỉ với một lần sạc. Vậy n&ecirc;n khi bạn cần mang m&aacute;y t&iacute;nh ra ngo&agrave;i th&igrave; chỉ cần sạc đầy trước đ&oacute; v&agrave; kh&ocirc;ng cần mang theo d&acirc;y sạc.&nbsp;</p>\r\n\r\n<h3>Đa dạng cổng kết nối v&agrave; kết nối kh&ocirc;ng d&acirc;y thuận tiện</h3>\r\n\r\n<p>M&aacute;y t&iacute;nh&nbsp;<a href=\"https://phongvu.vn/c/acer-aspire\">Acer Aspire</a>&nbsp;5 được trang bị đầy đủ c&aacute;c cổng kết nối th&ocirc;ng dụng hiện nay. Trước ti&ecirc;n l&agrave; 1 cổng<strong>&nbsp;HDMI&nbsp;</strong>hỗ trợ xuất dữ liệu h&igrave;nh ảnh sang thiết bị kh&aacute;c với độ ph&acirc;n giải cao. B&ecirc;n cạnh đ&oacute; c&ograve;n c&oacute;&nbsp;<strong>3 x USB 3.2, 1 x Thunderbolt 4, 1 x LAN 1 Gb/s&nbsp;</strong>gi&uacute;p kết nối với c&aacute;c thiết bị ngoại vi cũng như truyền dữ liệu thuận tiện.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Acer Aspire 5 A514-55-5954 NX.K5BSV.001 | Cổng kết nối\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_5c96abfe-f1e4-4f28-b107-0883ecc8f533.png\" /></p>\r\n\r\n<p>Acer Aspire c&ograve;n được trang bị kết nối&nbsp;<strong>Bluetooth</strong>&nbsp;tiện lợi gi&uacute;p bạn dễ d&agrave;ng kết nối với c&aacute;c thiết bị như loa, tai nghe, b&agrave;n ph&iacute;m rời,... hoặc truyền tải dữ liệu. B&ecirc;n cạnh đ&oacute; c&ograve;n được hỗ trợ kết nối&nbsp;<strong>Wifi 802.11ax (Wifi 6)</strong>&nbsp;gi&uacute;p tối ưu tốc độ kết nối Internet.&nbsp;</p>\r\n\r\n<h3>Mua ngay Laptop Acer Aspire 5 A514-55-5954 NX.K5BSV.001 tại Phong Vũ | Hỗ trợ bảo h&agrave;nh 12 th&aacute;ng</h3>\r\n\r\n<p>Laptop Acer Aspire 5 A514-55-5954 NX.K5BSV.001 với hiệu năng ổn định c&ugrave;ng khả năng đa nhiệm tuyệt vời sẽ l&agrave; gợi &yacute; h&agrave;ng đầu cho học sinh, sinh vi&ecirc;n cũng như nh&acirc;n vi&ecirc;n văn ph&ograve;ng. Sản phẩm hiện c&oacute; mặt tại&nbsp;<a href=\"http://phongvu.vn/\"><strong>showroom Phong Vũ</strong></a>&nbsp;tr&ecirc;n to&agrave;n quốc. H&atilde;y đến Phong Vũ mua h&agrave;ng ngay h&ocirc;m nay để được hưởng ch&iacute;nh s&aacute;ch&nbsp;<strong>trả g&oacute;p 0%&nbsp;</strong>c&ugrave;ng nhiều ưu đ&atilde;i giảm gi&aacute; v&agrave; qu&agrave; tặng hấp dẫn bạn nh&eacute;!</p>', 0, 0, 0, '2023-05-31 03:28:31', 19, NULL, NULL, 0, '2023-05-31 06:30:07', NULL),
(3, 'Dell Latitude 5330 i7 1265U/ 32GB/ 512G SSD PCIE/ 13.3\"FHD/ W11 PRO/ KBLED', 'dell-latitude-5330-i7-1265u-32gb-512g-ssd-pcie-133fhd-w11-pro-kbled', 24600000, 0, 1, 1, 0, 14, '', '2023-05-31__40586-40530-40456-40454-40445-40422-40351-40146-40108-39999-39894-39885-dell-latitude-5420-i5-10310u-16gb-256g-ssd-14-0-hd-w10-pro-kbled-39874-2.jpg', 2, 0, 1, 2, '<ul>\r\n	<li>Bộ vi xử l&iacute; :i7 1265U</li>\r\n	<li>Ram :32GB</li>\r\n	<li>Đĩa cứng :512G SSD PCIe</li>\r\n	<li>M&agrave;n h&igrave;nh :13.3&quot; FHD 220nits</li>\r\n	<li>Card đồ họa :Intel&reg; Iris XE</li>\r\n	<li>Hệ Điều H&agrave;nh :Windows&reg; 11 PRO</li>\r\n	<li>Phần mềm bản quyền :C&oacute;</li>\r\n	<li>Đ&egrave;n b&agrave;n ph&iacute;m :C&oacute;</li>\r\n</ul>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<h2><a href=\"https://phongvu.vn/c/laptop\">Laptop</a>&nbsp;Dell Inspiron 15 5625 99VP91 Bạc được thiết kế theo xu hướng tối giản theo đ&uacute;ng ti&ecirc;u chuẩn của một chiếc m&aacute;y t&iacute;nh phổ th&ocirc;ng. C&ugrave;ng với hiệu năng mạnh mẽ, laptop n&agrave;y sẽ gi&uacute;p đ&aacute;p ứng tốt c&aacute;c nhu cầu v&agrave; hứa hẹn sẽ mang đến trải nghiệm tuyệt vời đến kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p><img alt=\"Laptop &lt;a href=\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/8/20/20220820_133e3ca2-29a7-4b41-bb48-8bfe6130b6e8.png\" />Dell Inspiron 15 5625 99VP91 &quot;&gt;</p>\r\n\r\n<h3>Thiết kế tối giản mang n&eacute;t tinh tế, trọng lượng nhẹ dễ d&agrave;ng mang theo&nbsp;</h3>\r\n\r\n<p>Laptop Dell Inspiron 15 5625 sở hữu ngoại h&igrave;nh tương đối&nbsp;<strong>đơn giản</strong>&nbsp;với gam&nbsp;<strong>m&agrave;u bạc</strong>&nbsp;nổi bật thể hiện sự sang trọng tinh tế vốn c&oacute;. Với&nbsp;<strong>chất liệu cao cấp</strong>&nbsp;khiến cho chiếc m&aacute;y t&iacute;nh trở n&ecirc;n chắc chắn hơn v&agrave; cho độ bền cao hơn khi sử dụng, mang đến sự bền bỉ l&acirc;u d&agrave;i cho bạn.</p>\r\n\r\n<p><img alt=\"Laptop &lt;a href=\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/8/20/20220820_e5a85554-054e-4ffd-919b-3df878405b4b.png\" />Dell Inspiron 15 5625 99VP91 | Thiết kế nhỏ gọn&quot;&gt;</p>\r\n\r\n<p>M&aacute;y t&iacute;nh x&aacute;ch tay Dell c&oacute; k&iacute;ch thước&nbsp;<strong>35.68x25.19x1.79cm&nbsp;</strong>tương đối&nbsp;<strong>nhỏ gọn</strong>&nbsp;cho ph&eacute;p bạn c&oacute; thể dễ d&agrave;ng cho v&agrave;o t&uacute;i x&aacute;ch hoặc balo. Đặc biệt, với trọng lượng chỉ khoảng&nbsp;<strong>1.8kg</strong>&nbsp;gi&uacute;p bạn c&oacute; thể thoải m&aacute;i mang laptop theo b&ecirc;n m&igrave;nh để đi l&agrave;m hoặc đi học</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh lớn 16 inch Full HD+ cho chất lượng sắc n&eacute;t, c&ocirc;ng nghệ m&agrave;n h&igrave;nh chống l&oacute;a hiện đại</h3>\r\n\r\n<p>Dell Inspiron 99VP91 c&oacute; một điểm kh&aacute; nổi bật l&agrave; được trang bị m&agrave;n h&igrave;nh l&ecirc;n đến&nbsp;<strong>16 inch</strong>&nbsp;với chất lượng&nbsp;<strong>Full HD+ WVA</strong>&nbsp;cho chất lượng hiển thị h&igrave;nh ảnh sắc n&eacute;t đến từng chi tiết. Với m&agrave;n h&igrave;nh n&agrave;y cho ph&eacute;p người d&ugrave;ng c&oacute; những ph&uacute;t gi&acirc;y trải nghiệm tuyệt vời nhất.</p>\r\n\r\n<p><img alt=\"Laptop Dell Inspiron 15 5625 99VP91 | Màn hình sắc nét\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/8/20/20220820_99f04efb-cd8f-46b0-979d-12abee8ad0a1.png\" /></p>\r\n\r\n<p>M&aacute;y t&iacute;nh x&aacute;ch tay Inspiron c&ograve;n được nh&agrave; Dell t&iacute;ch hợp&nbsp;<strong>c&ocirc;ng nghệ m&agrave;n h&igrave;nh chống l&oacute;a</strong>&nbsp;hiện đại. Nhờ vậy, m&aacute;y cho ph&eacute;p người sử dụng c&oacute; thể nh&igrave;n thấy r&otilde; h&igrave;nh ảnh tr&ecirc;n m&agrave;n h&igrave;nh m&agrave; kh&ocirc;ng sợ xảy ra hiện tượng b&oacute;ng gương khi l&agrave;m việc nơi c&oacute; cường độ &aacute;nh s&aacute;ng mạnh.</p>\r\n\r\n<h3>Hiệu năng mạnh mẽ vượt trội nhờ AMD Ryzen 7, t&iacute;ch hợp chip đồ họa AMD Radeon Graphics</h3>\r\n\r\n<p>Laptop Inspiron 15 sở hữu hiệu năng kh&aacute; nổi bật so với những d&ograve;ng sản phẩm kh&aacute;c c&ugrave;ng ph&acirc;n kh&uacute;c với&nbsp;&nbsp;<strong>AMD Ryzen 7 5825U</strong>. Với&nbsp;<strong>8 nh&acirc;n, 16 lu&ocirc;̀ng</strong>&nbsp;c&ugrave;ng<strong>&nbsp;16MB</strong>&nbsp;bộ nhớ đệm gi&uacute;p cho chiếc m&aacute;y t&iacute;nh đạt tốc độ xung nhịp tối đa l&ecirc;n đến&nbsp;<strong>4.5GHz</strong>, hứa hẹn sẽ đ&aacute;p ứng được tốt c&aacute;c nhu cầu l&agrave;m việc hay giải tr&iacute; với c&aacute;c tựa game hot.</p>\r\n\r\n<p><img alt=\"Laptop Dell Inspiron 15 5625 99VP91 | Hiệu năng mạnh mẽ\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/8/20/20220820_7fba039d-bf5e-400b-8361-1f6acc1f9295.png\" /></p>\r\n\r\n<p>Kh&ocirc;ng những thế, laptop n&agrave;y c&ograve;n được t&iacute;ch hợp chip đồ họa&nbsp;<strong>AMD Radeon Graphics</strong>&nbsp;gi&uacute;p cho việc xử l&yacute; th&ocirc;ng tin h&igrave;nh ảnh trở n&ecirc;n mượt m&agrave; hơn. Đồng thời&nbsp;<strong>AMD Radeon</strong>&nbsp;c&ograve;n gi&uacute;p tối ưu h&oacute;a lượng điện năng ti&ecirc;u thụ so với những d&ograve;ng card rời kh&aacute;c.</p>\r\n\r\n<h3>Thoải m&aacute;i lưu trữ nhờ bộ nhớ ROM l&ecirc;n đến 512GB, đa nhiệm mượt m&agrave; với RAM 8GB thế hệ mới</h3>\r\n\r\n<p>Dell 15 5625 cho ph&eacute;p người d&ugrave;ng c&oacute; thể lưu trữ t&ugrave;y &yacute; m&agrave; kh&ocirc;ng lo hết dung lượng lưu trữ nhờ&nbsp;<strong>512GBSSD</strong>&nbsp;thế hệ&nbsp;<strong>M.2 NVMe</strong>. B&ecirc;n cạnh đ&oacute;, với kiểu ổ cứng SSD gi&uacute;p tối ưu h&oacute;a tốc độ truy xuất dữ liệu cũng như thời gian khởi động m&aacute;y được r&uacute;t ngắn.</p>\r\n\r\n<p><img alt=\"Laptop Dell Inspiron 15 5625 99VP91 | Bộ nhớ lưu trữ lớn\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/8/20/20220820_01c3cfbe-e0c5-440e-b194-2060882858cf.png\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, m&aacute;y t&iacute;nh x&aacute;ch tay Dell 99VP91 c&ograve;n được trang bị bộ nhớ RAM&nbsp;<strong>8GB</strong>&nbsp;thế hệ&nbsp;<strong>DDR4</strong>&nbsp;với 2 khe cắm, tốc độ bus đạt&nbsp;<strong>3200MHz</strong>&nbsp;kh&aacute; ấn tượng. Người d&ugrave;ng c&oacute; thể thoải m&aacute;i thao t&aacute;c đa nhiệm c&ugrave;ng l&uacute;c nhiều chương tr&igrave;nh tr&ecirc;n chiếc laptop Inspiron 15 m&agrave; kh&ocirc;ng lo giật m&aacute;y.</p>\r\n\r\n<h3>C&agrave;i sẵn hệ điều h&agrave;nh Windows 11 Home SL c&ugrave;ng Office Home &amp; Student 2021, thời lượng pin ấn tượng 4 cell 54 Wh</h3>\r\n\r\n<p>Laptop n&agrave;y sử dụng hệ điều h&agrave;nh&nbsp;<strong>Windows 11 Home SL</strong>, đ&acirc;y ch&iacute;nh l&agrave; hệ điều h&agrave;nh mới nhất của Windows với nhiều t&iacute;nh năng hấp dẫn. Ngo&agrave;i ra m&aacute;y t&iacute;nh c&ograve;n được c&agrave;i đặt&nbsp;<strong>Office Home &amp; Student 2021</strong>&nbsp;hỗ trợ tối đa cho người d&ugrave;ng văn ph&ograve;ng hoặc học sinh.</p>\r\n\r\n<p><img alt=\"Laptop Dell Inspiron 15 5625 99VP91 | Pin dung lượng lớn\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/8/20/20220820_8813f9d4-d8bb-48e0-ae5a-cd557cbfa599.png\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, m&aacute;y t&iacute;nh x&aacute;ch tay Dell cho thời lượng pin tối đa l&ecirc;n đến khoảng&nbsp;<strong>12 giờ đồng hồ</strong>&nbsp;đối với c&aacute;c t&aacute;c vụ cơ bản nhưng chỉ mất khoảng<strong>&nbsp;2 giờ</strong>&nbsp;để sạc đầy nhờ vi&ecirc;n<strong>&nbsp;pin 4 cell 54 Wh</strong>. Bạn c&oacute; thể sử dụng laptop ở bất k&igrave; đ&acirc;u m&agrave; kh&ocirc;ng cần mang theo sạc.</p>', 0, 0, 0, '2023-05-31 06:08:57', 18, NULL, NULL, 0, '2023-05-31 06:11:44', NULL),
(4, 'Laptop Dell Inspiron 5620 (5620-N6I5003W1) (i5-1240P/RAM 16GB/512GB SSD/ Windows 11 + Office)', 'laptop-dell-inspiron-5620-5620-n6i5003w1-i5-1240pram-16gb512gb-ssd-windows-11-office', 24990000, 0, 1, 1, 0, 0, '', '2023-05-31__unnamed-1.webp', 0, 1, 1, 0, '<p>- CPU: Intel Core i5-1240P<br />\r\n- M&agrave;n h&igrave;nh: 16&quot; WVA (1920 x 1200)<br />\r\n- RAM: 2 x 8GB DDR4 3200MHz<br />\r\n- Đồ họa: GeForce MX570 2GB GDDR6 / Intel Iris Xe Graphics<br />\r\n- Lưu trữ: 512GB SSD M.2 NVMe /<br />\r\n- Hệ điều h&agrave;nh: Windows 11 Home SL + Office Home &amp; Student 2021<br />\r\n- Pin: 4 cell 54 Wh Pin liền<br />\r\n- Khối lượng: 1.9kg</p>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<h2><a href=\"https://phongvu.vn/c/laptop\">Laptop</a>&nbsp;Dell Inspiron 5620 - 5620-N6I5003W1 sở hữu thiết kế mới mẻ, bảo mật v&acirc;n tay. Đi k&egrave;m những c&ocirc;ng nghệ hiện đại nhiều cải tiến nổi bật so với nhiều laptop thế hệ trước đ&oacute;. Với bộ vi xử l&yacute; Intel Core i5 c&ugrave;ng nhiều t&iacute;nh năng kh&aacute;c sẽ l&agrave; gợi &yacute; h&agrave;ng đầu cho học sinh, sinh vi&ecirc;n hay nh&acirc;n vi&ecirc;n văn ph&ograve;ng.&nbsp;</h2>\r\n\r\n<p><img alt=\"Laptop &lt;a href=\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/9/27/20220927_c5ce724f-19e4-42bb-a6f9-278dd193dba0.png\" />Dell Inspiron 5620 - 5620-N6I5003W1&quot;&gt;</p>\r\n\r\n<h3><strong>Thiết kế độc đ&aacute;o v&agrave; m&agrave;n h&igrave;nh 16 inch r&otilde; n&eacute;t&nbsp;</strong></h3>\r\n\r\n<p>Laptop Dell Inspiron 5620 - 5620-N6I5003W1 sở hữu ngoại h&igrave;nh v&ocirc; c&ugrave;ng thu h&uacute;t với khối lượng&nbsp;<strong>1.9kg</strong>&nbsp;v&agrave; k&iacute;ch thước chỉ&nbsp;<strong>35.67 x 25.19 x 1.795 cm.</strong>&nbsp;Nhờ gọn nhẹ như vậy n&ecirc;n rất dễ d&agrave;ng cho bạn. mang theo b&ecirc;n m&igrave;nh cả ng&agrave;y. Những đường n&eacute;t, chi tiết c&oacute; độ ho&agrave;n thiện cao v&agrave; được bo tr&ograve;n mềm mại, sang trọng.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop &lt;a href=\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/9/27/20220927_8d2293ea-30b9-4284-939b-326e4fc96881.png\" />Dell Inspiron 5620 - 5620-N6I5003W1 | Gam m&agrave;u độc đ&aacute;o&quot;&gt;</p>\r\n\r\n<p>Laptop Dell được trang bị m&agrave;n h&igrave;nh với k&iacute;ch thước&nbsp;<strong>16 inch</strong>. M&agrave;n h&igrave;nh lớn sẽ gi&uacute;p thực hiện thao t&aacute;c đơn giản, dễ d&agrave;ng hơn cũng như mang lại trải nghiệm giải tr&iacute; tuyệt vời hơn. B&ecirc;n cạnh đ&oacute; c&ograve;n được hỗ trợ độ ph&acirc;n giải&nbsp;<strong>Full HD</strong>&nbsp;với chất lượng hiển thị r&otilde; n&eacute;t, m&agrave;u sắc ch&acirc;n thật v&agrave; những thước phim sinh động.&nbsp;</p>\r\n\r\n<p><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/9/27/20220927_b1c95388-300f-4397-a02a-96e84832a49a.png\" /></p>\r\n\r\n<h3><strong>Hiệu năng mạnh mẽ với chip Intel Core i5 v&agrave; card đồ họa NVIDIA GeForce MX570 2GB GDDR6&nbsp;</strong></h3>\r\n\r\n<p>Dell Inspiron sử dụng hệ thống CPU&nbsp;<strong>Intel Core i5 thế hệ 12</strong>&nbsp;với&nbsp;<strong>12 nh&acirc;n&nbsp;</strong>v&agrave;&nbsp;<strong>16 luồng&nbsp;</strong>mang lại hiệu năng mạnh mẽ vượt trội hơn so với nhiều sản phẩm trong c&ugrave;ng tầm gi&aacute;. Nhờ đ&oacute; m&agrave; bạn c&oacute; thể dễ d&agrave;ng xử l&yacute; c&aacute;c t&aacute;c vụ từ phần mềm văn ph&ograve;ng cơ bản cho đến c&aacute;c ứng dụng đồ họa, thiết kế hay chơi game,...&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Dell Inspiron 5620 - 5620-N6I5003W1 | Hiệu năng\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/9/27/20220927_8bccd2f3-35ca-4e12-91a9-b92cf8d55e3d.png\" /></p>\r\n\r\n<p>Đặc biệt, laptop c&ograve;n được trang bị card đồ họa thế hệ mới&nbsp;<strong>NVIDIA GeForce MX 570 2GB đạt chuẩn GDDR6</strong>. Với trang bị đồ họa mạnh mẽ, hiện đại sẽ mang lại cho bạn những trải nghiệm h&igrave;nh ảnh v&ocirc; c&ugrave;ng r&otilde; n&eacute;t, m&agrave;u sắc tươi s&aacute;ng, sinh động v&agrave; những chuyển động mượt m&agrave;.&nbsp;</p>\r\n\r\n<h3><strong>Đa nhiệm hiệu quả với RAM 16GB v&agrave; khả năng lưu trữ 512GB&nbsp;</strong></h3>\r\n\r\n<p>Laptop Dell Inspiron được trang bị<strong>&nbsp;RAM 16GB&nbsp;</strong>đạt chuẩn&nbsp;<strong>DDR4</strong>&nbsp;v&agrave; c&oacute; thể cho tốc độ bus l&ecirc;n đến&nbsp;<strong>3200MHz</strong>. M&aacute;y t&iacute;nh c&ograve;n c&oacute; th&ecirc;m&nbsp;<strong>2 khe cắm&nbsp;</strong>hỗ trợ n&acirc;ng cấp<a href=\"https://phongvu.vn/ram-bo-nho-scat.02-N004\"><strong>&nbsp;RAM</strong></a>&nbsp;l&ecirc;n tối đa&nbsp;<strong>32GB</strong>. Nhờ vậy mang lại cho sản phẩm khả năng xử l&yacute; nhanh ch&oacute;ng, mượt m&agrave; n&ecirc;n bạn c&oacute; thể mở c&ugrave;ng l&uacute;c nhiều phần mềm, thực hiện đồng thời nhiều thao t&aacute;c m&agrave; vẫn đảm bảo hoạt động trơn tru. Từ đ&oacute; hỗ trợ l&agrave;m việc cũng như giải tr&iacute; hiệu quả hơn.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Dell Inspiron 5620 - 5620-N6I5003W1 | Dung lượng\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/9/27/20220927_51a7ef15-3e2c-4db8-b517-2f44a1e5de56.png\" /></p>\r\n\r\n<p>Kh&ocirc;ng chỉ vậy, laptop Dell c&ograve;n được trang bị kh&ocirc;ng gian lưu trữ l&ecirc;n đến&nbsp;<strong>512GB.&nbsp;</strong>Thay v&igrave; sử dụng th&ecirc;m hệ thống lưu trữ b&ecirc;n ngo&agrave;i như thẻ nhớ, USB hay c&aacute;c phần mềm lưu trữ th&igrave; bạn c&oacute; thể thoải m&aacute;i lưu trữ tr&ecirc;n m&aacute;y khối lượng lớn th&ocirc;ng tin. Laptop cho ph&eacute;p bạn lưu trữ đa dạng loại th&ocirc;ng tin như h&igrave;nh ảnh, video, văn bản, phần mềm,...&nbsp;</p>\r\n\r\n<h3><strong>Hỗ trợ c&agrave;i đặt Office Home &amp; Students 2021 v&agrave; vi&ecirc;n pin 4 cell 5</strong>4<strong>Wh&nbsp;</strong></h3>\r\n\r\n<p>Khi mua laptop Dell Inspiron bạn sẽ được hỗ trợ c&agrave;i đặt miễn ph&iacute; bộ phần mềm&nbsp;<strong>Office Home &amp; Students 2021</strong>. Với những t&iacute;nh năng mới v&agrave; nhiều cải tiến so với thế hệ trước, bạn sẽ c&oacute; thể xử l&yacute; c&ocirc;ng việc, thực hiện c&aacute;c t&aacute;c vụ văn ph&ograve;ng dễ d&agrave;ng hơn m&agrave; kh&ocirc;ng tốn th&ecirc;m bất kỳ chi ph&iacute; n&agrave;o. B&ecirc;n cạnh đ&oacute; c&ograve;n được hỗ trợ c&agrave;i đặt&nbsp;<strong>Windows 11</strong>&nbsp;với nhiều tiện &iacute;ch hiện đại.</p>\r\n\r\n<p><img alt=\"Laptop Dell Inspiron 5620 - 5620-N6I5003W1 | Win 11\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/9/27/20220927_b19c77f3-43c9-4e49-b422-dc0768caa382.png\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Laptop Dell sử dụng vi&ecirc;n pin liền&nbsp;<strong>4 cell 54Wh</strong>&nbsp;cho ph&eacute;p bạn sử dụng li&ecirc;n tục trong nhiều giờ liền. Nếu bạn l&agrave; học sinh, sinh vi&ecirc;n cần mang m&aacute;y t&iacute;nh đi học cả ng&agrave;y hay bạn thường xuy&ecirc;n mang m&aacute;y t&iacute;nh ra ngo&agrave;i l&agrave;m việc th&igrave; sẽ kh&ocirc;ng cần mang theo d&acirc;y sạc khi sử dụng laptop Dell Inspiron 5620 - 5620-N6I5003W1.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Dell Inspiron 5620 - 5620-N6I5003W1 | Pin \" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/9/27/20220927_78a98e40-34e1-48ab-ade4-92d01a28b24d.png\" /></p>\r\n\r\n<h3><strong>Đa dạng cổng kết nối v&agrave; hỗ trợ kết nối kh&ocirc;ng diện tiện lợi</strong></h3>\r\n\r\n<p>Dell Inspiron được hỗ trợ cổng xuất h&igrave;nh&nbsp;<strong>HDMI</strong>&nbsp;cho ph&eacute;p truyền h&igrave;nh ảnh từ m&aacute;y t&iacute;nh sang thiết bị kh&aacute;c với độ ph&acirc;n giải cao v&agrave; kh&ocirc;ng bị giật, lag. B&ecirc;n cạnh đ&oacute; l&agrave; c&aacute;c cổng kết nối:&nbsp;<strong>1 x USB Type C / DisplayPort / Power Delivery , 2 x USB 3.2 , 1 x SD card slot</strong>&nbsp;gi&uacute;p bạn dễ d&agrave;ng kết nối với c&aacute;c thiết bị điện tử ngoại vi.&nbsp;</p>\r\n\r\n<p><img alt=\"&lt;a href=\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/9/27/20220927_f7559c59-ee18-4538-a1b2-ad9b92d3f442.png\" />Laptop Dell Inspiron 5620 - 5620-N6I5003W1 | Kết nối&quot;&gt;</p>\r\n\r\n<p>Đặc biệt, m&aacute;y t&iacute;nh c&ograve;n được hỗ trợ kết nối kh&ocirc;ng d&acirc;y&nbsp;<strong>Bluetooth&nbsp;</strong>tiện lợi n&ecirc;n bạn c&oacute; thể dễ d&agrave;ng kết nối với b&agrave;n ph&iacute;m rời, chuột, tai nghe,... cũng như truyền tải dữ liệu. Ngo&agrave;i ra c&ograve;n c&oacute; kết nối&nbsp;<strong>Wifi 802.11ax (Wifi 6)</strong>&nbsp;tối ưu tốc độ mạng gi&uacute;p c&aacute;c thao t&aacute;c tr&ecirc;n Internet nhanh ch&oacute;ng, mượt m&agrave; hơn.&nbsp;</p>', 0, 0, 0, '2023-05-31 06:13:40', 20, NULL, NULL, 0, '2023-05-31 06:30:04', NULL),
(5, 'Laptop APPLE MacBook Pro 14\" (Apple M2/RAM 16GB/512GB SSD/ macOS)', 'laptop-apple-macbook-pro-14-apple-m2ram-16gb512gb-ssd-macos', 52500000, 0, 6, 1, 0, 7, '', '2023-05-31__unnamed-2.webp', 1, 1, 1, 1, '<p>- CPU: Apple M2<br />\r\n- M&agrave;n h&igrave;nh: 14.2&quot; (3024 x 1964),120Hz<br />\r\n- RAM: 1 x 16GB<br />\r\n- Đồ họa: Onboard<br />\r\n- Lưu trữ: 512GB SSD /<br />\r\n- Hệ điều h&agrave;nh: macOS<br />\r\n- Pin liền<br />\r\n- Khối lượng: 1.6kg</p>', '<p>Đang cập nhật</p>', 0, 0, 0, '2023-05-31 06:16:09', 19, NULL, NULL, 0, '2023-05-31 06:30:03', NULL),
(6, 'MacBook Pro 2022 13 inch Z16S00034 (M2/ 16GB/ SSD 512GB)', 'macbook-pro-2022-13-inch-z16s00034-m2-16gb-ssd-512gb', 42000000, 0, 6, 1, 0, 8, '', '2023-05-31__unnamed-3.webp', 1, 1, 1, 0, '<p>- CPU: Apple M2<br />\r\n- M&agrave;n h&igrave;nh: 13.3&quot; IPS (2560 x 1600)<br />\r\n- RAM: 1 x 16GB<br />\r\n- Đồ họa: Onboard<br />\r\n- Lưu trữ: 512GB SSD /<br />\r\n- Hệ điều h&agrave;nh: macOS<br />\r\n- 58 Wh Pin liền<br />\r\n- Khối lượng: 1.4kg</p>', '<p>M&ocirc; tả sản phẩm</p>\r\n\r\n<h2><a href=\"https://phongvu.vn/c/macbook\">MacBook</a>&nbsp;Pro 13 inch Z16S00034 của nh&agrave; Apple sở hữu một thiết kế thời thượng, sang trọng c&ugrave;ng với t&iacute;nh di động v&agrave; gọn nhẹ. M&aacute;y được trang bị bộ vi xử l&yacute; độc quyền Apple M2 c&oacute; hiệu năng hoạt động tối ưu, gi&uacute;p xử l&yacute; tốt mọi t&aacute;c vụ h&agrave;ng ng&agrave;y hay chỉnh sửa đồ họa. Kh&ocirc;ng những thế, chiếc m&aacute;y n&agrave;y c&ograve;n đảm bảo đ&aacute;p ứng đủ dải nhu cầu sử dụng từ cơ bản đến n&acirc;ng cao hứa hẹn sẽ l&agrave;m h&agrave;i l&ograve;ng đến mọi kh&aacute;ch h&agrave;ng.</h2>\r\n\r\n<p><img alt=\"MacBook Pro 13 inch Z16S00034\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_8f6f10e2-6d0d-4397-ab2e-91910e9422fc.png\" /></p>\r\n\r\n<h3>Thiết kế nhỏ gọn, thời thượng v&agrave; c&oacute; chất liệu vỏ kim loại cao cấp</h3>\r\n\r\n<p>MacBook 13 inch<strong>&nbsp;</strong>sở hữu ng&ocirc;n ngữ thiết kế đặc trưng của nh&agrave; Apple, thể hiện được sự thời thượng, tinh tế gi&uacute;p l&agrave;m tăng sự sang trọng hơn cho người sở hữu ph&ugrave; hợp cho mọi người d&ugrave;ng, đặc biệt l&agrave; c&aacute;c doanh nh&acirc;n. Với t&iacute;nh linh hoạt, nhỏ gọn chỉ với k&iacute;ch thước&nbsp;<strong>30.41 x 21.24 x 1.56cm</strong>&nbsp;v&agrave; trọng lượng khi&ecirc;m tốn chỉ<strong>&nbsp;1.4kg</strong>&nbsp;gi&uacute;p bạn c&oacute; thể mang chiếc MacBook n&agrave;y đến bất cứ nơi đ&acirc;u.</p>\r\n\r\n<p><img alt=\"MacBook Pro 13 inch Z16S00034 | Gam màu xám\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_e7f800b0-4622-4b14-a803-5e25867265d8.png\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, mọi đường n&eacute;t MacBook đều ho&agrave;n thiện một c&aacute;ch tỉ mỉ với c&aacute;c g&oacute;c cạnh được bo tr&ograve;n ho&agrave;n hảo c&ugrave;ng&nbsp;<strong>gam m&agrave;u x&aacute;m</strong>&nbsp;hết sức đẹp mắt. To&agrave;n bộ phần khung v&agrave; vỏ đều c&oacute; chất liệu&nbsp;<strong>kim loại cao cấp</strong>&nbsp;kh&ocirc;ng chỉ g&oacute;p phần tăng độ sang trọng m&agrave; c&ograve;n bảo vệ tốt cho MacBook hạn chế được việc cấn m&oacute;p khi c&oacute; va đập ngo&agrave;i &yacute; muốn.</p>\r\n\r\n<h3>Cấu h&igrave;nh tốt với CPU Apple M2, RAM 16GB&nbsp;</h3>\r\n\r\n<p>Laptop nh&agrave;&nbsp;<strong>T&aacute;o Khuyết</strong>&nbsp;được trang bị con chip độc quyền&nbsp;<strong>Apple M2</strong>&nbsp;xử l&yacute; mượt m&agrave; mọi t&aacute;c vụ h&agrave;ng ng&agrave;y cũng như l&agrave;m việc đồ họa hay chỉnh sửa video. Con chip c&oacute; hiệu năng đa luồng tốt hơn nhiều so với chip Apple M1 khi sở hữu đến&nbsp;<strong>8 l&otilde;i hiệu suất cao</strong>. Macbook Pro thế hệ mới n&agrave;y được rất nhiều KOL, tiktoker lựa chọn l&agrave;m bạn đồng h&agrave;nh cho c&ocirc;ng việc của m&igrave;nh.</p>\r\n\r\n<p><img alt=\"MacBook Pro 13 inch Z16S00034 | Chip M2\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_5e45fe6e-70b8-42f7-bfab-44d0a2b9cc02.png\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, MacBook sở hữu bộ nhớ&nbsp;<strong>RAM</strong>&nbsp;lớn l&ecirc;n đến&nbsp;<strong>16GB</strong>&nbsp;gi&uacute;p bạn thoải m&aacute;i sử dụng một lượt nhiều ứng dụng cũng như mở được nhiều trang web phục vụ tốt cho nhu cầu l&agrave;m việc, học tập v&agrave; giải tr&iacute; đều được mượt m&agrave;, kh&ocirc;ng bị giật lag.&nbsp;</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh 13.3 inch tấm nền Retina, hỗ trợ HD Webcam&nbsp;</h3>\r\n\r\n<p>M&aacute;y t&iacute;nh x&aacute;ch tay MacBook M2 sở hữu m&agrave;n h&igrave;nh&nbsp;<strong>13.3 inch&nbsp;</strong>vừa đủ cho mọi trải nghiệm l&agrave;m việc, học tập của bạn v&agrave; với m&agrave;n h&igrave;nh n&agrave;y gi&uacute;p chiếc laptop tr&ocirc;ng nhỏ gọn hơn đ&aacute;ng kể. B&ecirc;n cạnh đ&oacute; với m&agrave;n h&igrave;nh&nbsp;<strong>Retina</strong>&nbsp;được trang bị đem lại chất lượng h&igrave;nh ảnh cao, sắc n&eacute;t gi&uacute;p mọi chi tiết đều được hiển thị r&otilde; r&agrave;ng hơn c&ugrave;ng độ ph&acirc;n giải&nbsp;<strong>2560 x 1600 pixels</strong>.</p>\r\n\r\n<p><img alt=\"MacBook Pro 13 inch Z16S00034 | Màn hình\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_4b1252ce-a3ba-4626-ab66-118b5baa06e9.png\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, MacBook Pro 13 inch<strong>&nbsp;</strong>c&ograve;n được hỗ trợ&nbsp;<strong>HD Webcam</strong>&nbsp;với chất lượng h&igrave;nh ảnh cao, r&otilde; n&eacute;t khi bạn l&agrave;m việc, học tập qua nhiều ứng dụng trực tuyến phổ biến hiện nay như Zoom, Google Meet hay Zalo, Messenger.</p>\r\n\r\n<h3>Bộ nhớ lưu trữ 512GB SSD, b&agrave;n ph&iacute;m được hỗ trợ đ&egrave;n LED</h3>\r\n\r\n<p>Laptop Apple sở hữu một bộ nhớ với dung lượng lớn l&ecirc;n đến&nbsp;<strong>512GB&nbsp;</strong>gi&uacute;p bạn c&oacute; thể lưu trữ thoải m&aacute;i mọi th&ocirc;ng tin, t&agrave;i liệu, tập tin cần thiết hay tải về m&aacute;y nhiều ứng dụng đ&aacute;p ứng cho nhu cầu l&agrave;m việc cũng như học tập, giải tr&iacute; của bạn. Bộ nhớ chuẩn&nbsp;<strong>SSD</strong>&nbsp;gi&uacute;p MacBook khởi động nhanh ch&oacute;ng trong v&ograve;ng v&agrave;i gi&acirc;y gi&uacute;p bạn sử dụng ngay lập tức kh&ocirc;ng phải chờ đợi qu&aacute; l&acirc;u.</p>\r\n\r\n<p><img alt=\"MacBook Pro 13 inch Z16S00034 | Bàn phím ma thuật\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_d4653436-dac2-4bd9-acef-b9beba70ef7b.png\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, b&agrave;n ph&iacute;m MacBook đều được ho&agrave;n thiện tỉ mỉ, ho&agrave;n hảo về thiết kế lẫn trải nghiệm với mỗi ph&iacute;m c&oacute; độ nảy tốt đem lại cảm gi&aacute;c g&otilde; ph&iacute;m &ecirc;m &aacute;i. B&agrave;n ph&iacute;m c&ograve;n c&oacute; hỗ trợ&nbsp;<strong>đ&egrave;n LED</strong>&nbsp;đơn sắc gi&uacute;p bạn c&oacute; thể g&otilde; ph&iacute;m thoải m&aacute;i, dễ d&agrave;ng hơn trong m&ocirc;i trường c&oacute; yếu hay thiếu &aacute;nh s&aacute;ng.</p>\r\n\r\n<h3>Thời lượng pin tốt, thanh Touch Bar tiện &iacute;ch</h3>\r\n\r\n<p>MacBook Pro được trang bị vi&ecirc;n pin liền<strong>&nbsp;58Wh&nbsp;</strong>đem lại cho bạn một trải nghiệm tốt trong một buổi họp hay buổi học khi sử dụng với c&aacute;c t&aacute;c vụ nhẹ nh&agrave;ng m&agrave; kh&ocirc;ng lo ngại vấn đề hết pin. Ngo&agrave;i ra, m&aacute;y c&ograve;n được trang bị cổng sạc hiện đại gi&uacute;p việc sạc pin được nhanh hơn đ&aacute;ng kể.</p>\r\n\r\n<p><img alt=\"MacBook Pro 13 inch Z16S00034 | Touch Bar hiện đại\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_97a52d6e-8a5e-4f06-9661-44b0a1c08ef0.png\" /></p>\r\n\r\n<p>Một điểm kh&aacute;c của d&ograve;ng Pro với d&ograve;ng Air đ&oacute; l&agrave; d&ograve;ng Pro sẽ được trang bị thanh&nbsp;<strong>Touch Bar</strong>&nbsp;hiện đại v&agrave; đẹp mắt, đem lại nhiều tiện &iacute;ch ngo&agrave;i mong đợi. Người d&ugrave;ng c&oacute; thể điều khiển bằng cảm ứng với độ nhạy tốt gi&uacute;p thao t&aacute;c nhanh ch&oacute;ng c&aacute;c t&aacute;c vụ như: bật/tắt &acirc;m thanh, chuyển nhạc hay nhiều tiện &iacute;ch kh&aacute;c.</p>\r\n\r\n<h3>T&iacute;nh năng Touch ID v&agrave; Ambient Light sensor tiện &iacute;ch</h3>\r\n\r\n<p>Với t&iacute;nh năng<strong>&nbsp;Touch ID&nbsp;</strong>đặc biệt tr&ecirc;n mọi sản phẩm của Apple dựa tr&ecirc;n cảm biến một chạm nhanh ch&oacute;ng khi được bảo mật bằng sinh trắc học với&nbsp;<strong>nhận diện v&acirc;n tay&nbsp;</strong>người d&ugrave;ng c&oacute; độ ch&iacute;nh x&aacute;c cao gi&uacute;p bạn lưu trữ mọi th&ocirc;ng tin quan trọng được an to&agrave;n hơn bao giờ hết.</p>\r\n\r\n<p><img alt=\"MacBook Pro 13 inch Z16S00034 | Mở khóa vân tay\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_a78478e6-2d74-4854-907d-dbff9b429fbd.png\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, m&aacute;y c&ograve;n được hỗ trợ t&iacute;nh năng&nbsp;<strong>Ambient Light sensor&nbsp;</strong>l&agrave; cảm biến &aacute;nh s&aacute;ng - một loại cảm biến quang học. Với cơ chế tự động điều chỉnh &aacute;nh s&aacute;ng của m&agrave;n h&igrave;nh v&agrave; b&agrave;n ph&iacute;m th&iacute;ch hợp với từng loại điều kiện &aacute;nh s&aacute;ng m&ocirc;i trường kh&aacute;c nhau.</p>\r\n\r\n<h3>Hệ điều h&agrave;nh MacOS, nhiều kết nối tiện &iacute;ch</h3>\r\n\r\n<p>Với hệ điều h&agrave;nh<strong>&nbsp;MacOS&nbsp;</strong>được trang bị tr&ecirc;n<strong>&nbsp;</strong>MacBook Pro Z16S00034&nbsp; gi&uacute;p bạn c&oacute; độ bảo mật cao tr&aacute;nh khỏi việc x&acirc;m nhập của virus, đồng thời c&ograve;n đem đến cho bạn nhiều trải nghiệm độc đ&aacute;o, mới mẻ với nhiều tiện &iacute;ch m&agrave; bạn chỉ c&oacute; thể thấy khi sở hữu tr&ecirc;n chiếc laptop của nh&agrave; Apple.</p>\r\n\r\n<p><img alt=\"MacBook Pro 13 inch Z16S00034 | MacOS\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/7/20221007_2e124b8e-46f2-49ec-8a31-bb777d07c8a4.png\" /></p>\r\n\r\n<p>Cuối c&ugrave;ng, MacBook c&ograve;n được trang bị 2 cổng&nbsp;<strong>Thunderbolt 3</strong>&nbsp;cho ph&eacute;p m&aacute;y t&iacute;nh kết nối nhanh ch&oacute;ng với nhiều thiết bị kh&aacute;c c&ugrave;ng l&uacute;c với h&igrave;nh ảnh v&agrave; &acirc;m thanh chất lượng. M&aacute;y c&ograve;n được hỗ trợ&nbsp;<strong>WiFi 802.11ax (Wifi 6)</strong>&nbsp;c&oacute; đường truyền mạng ổn định đem lại cho bạn trải nghiệm kh&ocirc;ng bị giật lag v&agrave;&nbsp;<strong>Bluetooth 5.0</strong>&nbsp;c&oacute; khả năng truyền tải dữ liệu kh&ocirc;ng d&acirc;y với độ tương th&iacute;ch cao với nhiều thiết bị trong phạm vi rộng.</p>', 0, 0, 0, '2023-05-31 06:18:25', 20, NULL, NULL, 0, '2023-05-31 06:30:02', NULL),
(7, 'Laptop ASUS Vivobook X515EA-BQ2351W (i3-1115G4/RAM 4GB/512GB SSD/ Windows 11)', 'laptop-asus-vivobook-x515ea-bq2351w-i3-1115g4ram-4gb512gb-ssd-windows-11', 13990000, 0, 4, 1, 0, 0, '', '2023-05-31__unnamed-4.webp', 0, 0, 1, 0, '<p>- CPU: Intel Core i3-1115G4<br />\r\n- M&agrave;n h&igrave;nh: 15.6&quot; IPS (1920 x 1080)<br />\r\n- RAM: 1 x 4GB Onboard DDR4<br />\r\n- Đồ họa: Onboard Intel UHD Graphics<br />\r\n- Lưu trữ: 512GB SSD M.2 NVMe /<br />\r\n- Hệ điều h&agrave;nh: Windows 11 Home<br />\r\n- Pin: 2 cell 37 Wh<br />\r\n- Khối lượng: 1.8kg</p>', '<h3><a href=\"https://phongvu.vn/c/laptop\"><strong>Laptop&nbsp;</strong></a><strong>Asus Vivobook X515EA-BQ2351W l&agrave; một trong những d&ograve;ng laptop được nhiều sinh vi&ecirc;n ưa chuộng. Với gi&aacute; th&agrave;nh kh&ocirc;ng qu&aacute; cao, chiếc laptop n&agrave;y nhanh ch&oacute;ng được săn đ&oacute;n với thiết kế hiện đại v&agrave; hiệu năng ổn định, cho bạn một trải nghiệm th&uacute; vị.&nbsp;</strong></h3>\r\n\r\n<h4><strong>Kiểu d&aacute;ng thanh lịch, nhỏ gọn dễ d&agrave;ng mang theo</strong></h4>\r\n\r\n<p>Laptop Asus Vivobook c&oacute; vẻ ngo&agrave;i v&ocirc; c&ugrave;ng bắt mắt với kiểu d&aacute;ng gọn nhẹ, thanh lịch, m&agrave;n h&igrave;nh được&nbsp; thiết kế viền si&ecirc;u mỏng v&agrave; m&agrave;u x&aacute;m to&aacute;t l&ecirc;n vẻ mạnh mẽ v&agrave; hiện đại. Phần viền m&agrave;n h&igrave;nh vẫn l&agrave; một m&agrave;u đen quen thuộc v&agrave; logo ASUS tạo điểm nhấn.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Asus Vivobook X515EA-BQ2351W | Thiết kế gọn gàng\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/3/14/20220314_051dfd2e-8a66-4630-9728-952529e41383.jpg\" /></p>\r\n\r\n<p>Ấn tượng hơn nữa khi m&agrave; chiếc ASUS VivoBook X515EA n&agrave;y c&oacute; k&iacute;ch thước 36 x 23.5 x 1.99 cm c&ugrave;ng trọng lượng chỉ 1.8kg, rất nhẹ d&ugrave; đ&acirc;y chỉ l&agrave; một chiếc laptop 15,6 inch. Ph&iacute;a tr&ecirc;n m&agrave;n h&igrave;nh cũng được trang bị một chiếc VGA webcam tiện lợi cho việc học trực tuyến, họp online của người d&ugrave;ng.</p>\r\n\r\n<h4><strong>M&agrave;n h&igrave;nh 15,6 inch Full HD sắc n&eacute;t, trang bị tấm nền IPS</strong></h4>\r\n\r\n<p>Laptop Asus X515EA-BQ2351W được trang bị m&agrave;n h&igrave;nh 15.6 inch c&oacute; độ ph&acirc;n giải l&agrave; 1920 x 1080 pixels (Full HD). Tấm nền IPS của chiếc m&aacute;y t&iacute;nh n&agrave;y cũng cho khả năng hiển thị h&igrave;nh ảnh được sắc n&eacute;t hơn những m&agrave;n h&igrave;nh thường với dải m&agrave;u rộng, giảm được &aacute;nh s&aacute;ng xanh, tăng cường c&aacute;c chi tiết trong mọi điều kiện &aacute;nh s&aacute;ng.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Asus Vivobook X515EA-BQ2351W | Màn hình 15.6 inch\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/3/14/20220314_86e4d140-54d8-4fd6-b5b9-02def6aee434.jpg\" /></p>\r\n\r\n<p>Th&ecirc;m v&agrave;o đ&oacute;, em laptop n&agrave;y cũng sở hữu m&agrave;n h&igrave;nh chống l&oacute;a gi&uacute;p m&agrave;n h&igrave;nh kh&ocirc;ng bị ch&oacute;i s&aacute;ng, bị b&oacute;ng gương kể cả trong c&aacute;c điều kiện &aacute;nh s&aacute;ng gắt. C&ugrave;ng với đ&oacute;, m&agrave;n h&igrave;nh n&agrave;y cũng gi&uacute;p người d&ugrave;ng tr&aacute;nh mỏi mắt khi sử dụng trong một thời gian d&agrave;i, ph&ugrave; hợp với d&acirc;n văn ph&ograve;ng hay sinh vi&ecirc;n phải d&ugrave;ng m&aacute;y thường xuy&ecirc;n.</p>\r\n\r\n<h4><strong>Hiệu năng ổn định, Intel Core i3-1115G4&nbsp; cho mọi t&aacute;c vụ mượt m&agrave;</strong></h4>\r\n\r\n<p>Asus Vivobook X515EA-BQ2351W c&oacute; một cấu h&igrave;nh l&yacute; tưởng cho c&ocirc;ng việc văn ph&ograve;ng khi sức mạnh của m&aacute;y kh&ocirc;ng chỉ đến từ bộ vi xử l&yacute; Intel core i3-1115G4 ( 3.0 GHz - 4.10 GHz / 6MB / 2 nh&acirc;n, 4 lu&ocirc;̀ng) m&agrave; c&ograve;n từ bộ nhớ RAM 1 x 4GB Onboard DDR4 (1 khe cắm) cho hiệu năng sử dụng cao.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Asus Vivobook X515EA-BQ2351W | Hiệu năng mạnh mẽ\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/3/14/20220314_51218c7d-8fcf-4db8-91ce-e2ea2d0ac8ae.jpg\" /></p>\r\n\r\n<p>Con chip n&agrave;y tiết kiệm pin khi được sản xuất tr&ecirc;n tiến tr&igrave;nh 10nm SuperFin ti&ecirc;n tiến. Trong khi đ&oacute; RAM 4GB DDR4 on board cũng gi&uacute;p người d&ugrave;ng vận h&agrave;nh m&aacute;y được mượt m&agrave; v&agrave; trơn tru hơn.</p>\r\n\r\n<h4><strong>Trang bị chip đ&ocirc;̀ họa Intel UHD Graphics v&agrave;&nbsp; ổ cứng 512GB SSD</strong></h4>\r\n\r\n<p>Ngo&agrave;i ra, Vivobook X515EA sở hữu chip đ&ocirc;̀ họa Intel UHD Graphics cũng gi&uacute;p bạn c&oacute; thể thực hiện c&aacute;c t&aacute;c vụ văn ph&ograve;ng cơ bản, hay duyệt web, giải tr&iacute;, xem phim, office cơ bản một c&aacute;ch mượt m&agrave; hơn.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Asus Vivobook X515EA-BQ2351W | Dung lượng lưu trữ cao\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/3/14/20220314_7289ad5f-a4ac-4e24-8cb7-a2b2a504e9e1.jpg\" /></p>\r\n\r\n<p>Th&ecirc;m v&agrave;o đ&oacute;, laptop Asus Vivobook n&agrave;y c&ograve;n c&oacute; sẵn ổ cứng 512GB SSD M.2 NVMe, vừa cho dung lượng lưu trữ lớn, vừa c&oacute; thể&nbsp; tăng tốc to&agrave;n diện m&aacute;y t&iacute;nh. Ổ cứng n&agrave;y kết hợp với bộ nhớ RAM của m&aacute;y, cho bạn một kh&ocirc;ng gian vừa đủ cho việc lưu trữ t&agrave;i liệu, h&igrave;nh ảnh, video dễ d&agrave;ng.</p>\r\n\r\n<h4><strong>Hỗ trợ đầy đủ kết nối, hệ điều h&agrave;nh Windows 11 Home</strong></h4>\r\n\r\n<p>Chiếc laptop Asus cũng hỗ trợ đầy đủ những kết nối phổ biến như: 1 cổng USB 3.2 Type C, 1 cổng USB 3.2 , 2 cổng USB 2.0, 1 cổng HDMI. Nhờ đầy đủ cổng kết nối tr&ecirc;n m&aacute;y t&iacute;nh n&agrave;y c&oacute; thể kết nối với mọi thiết bị ngoại vi để phục vụ tối ưu cho c&ocirc;ng việc của bạn.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Asus Vivobook X515EA-BQ2351W | Đa dạng cổng kết nối\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/3/14/20220314_6839c0d9-2a49-4df6-8809-2008858215ac.jpg\" /></p>\r\n\r\n<p>ASUS đ&atilde; trang bị cho chiếc laptop Vivobook X515EA-BQ2351W hệ điều h&agrave;nh Windows 11 Home, cho ph&eacute;p bạn được trải nghiệm phi&ecirc;n bản Windows bản quyền trọn vẹn m&agrave; kh&ocirc;ng lo mất ph&iacute;. Win 11 với những cải tiến về giao diện v&agrave; được n&acirc;ng cao bảo mật,&nbsp; gi&uacute;p tối ưu được hiệu suất c&ocirc;ng việc của người d&ugrave;ng.</p>\r\n\r\n<h4><strong>Trang bị cảm biến v&acirc;n tay, Pin 2 cell 37Wh</strong></h4>\r\n\r\n<p>Laptop Asus X515EA-BQ2351W được trang bị cảm biến v&acirc;n tay t&iacute;ch hợp ngay trong touchpad của m&aacute;y t&iacute;nh cho ph&eacute;p người d&ugrave;ng chỉ mất đ&uacute;ng một c&uacute; chạm để mọi thứ được sẵn s&agrave;ng. Việc bảo mật bằng v&acirc;n tay c&oacute; thể gi&uacute;p bảo mật laptop của m&igrave;nh tốt hơn, mở app hay thanh to&aacute;n online được thuận tiện hơn.</p>\r\n\r\n<p><img alt=\"Laptop Asus Vivobook X515EA-BQ2351W | Dung lương pin cao\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/3/14/20220314_9d625d6b-04b5-4a85-9ab7-d8bcdcc7b549.jpg\" /></p>\r\n\r\n<p>Asus đ&atilde; trang bị cho chiếc laptop n&agrave;y một vi&ecirc;n pin liền 2 cell 37Wh , cho ph&eacute;p người d&ugrave;ng một thời lượng vừa đủ để c&oacute; thể trải nghiệm giải tr&iacute; hay l&agrave;m việc m&agrave; kh&ocirc;ng phải qu&aacute; lo lắng về việc chiếc laptop của m&igrave;nh sẽ hết pin giữa chừng.&nbsp;</p>', 0, 0, 0, '2023-05-31 08:32:33', 20, NULL, NULL, 0, NULL, NULL);
INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `pro_link`) VALUES
(8, 'Laptop ASUS Gaming ROG Strix G513IE-HN246W (Ryzen 7 4800H/RAM 8GB/512GB SSD/ Windows 11)', 'laptop-asus-gaming-rog-strix-g513ie-hn246w-ryzen-7-4800hram-8gb512gb-ssd-windows-11', 23500000, 0, 4, 1, 0, 5, '', '2023-05-31__unnamed-5.webp', 0, 0, 1, 0, '<p>- CPU: AMD Ryzen 7 4800H<br />\r\n- M&agrave;n h&igrave;nh: 15.6&quot; IPS (1920 x 1080),144Hz<br />\r\n- RAM: 1 x 8GB DDR4 3200MHz<br />\r\n- Đồ họa: RTX 3050Ti 4GB GDDR6 / AMD Radeon Graphics<br />\r\n- Lưu trữ: 512GB SSD M.2 NVMe /<br />\r\n- Hệ điều h&agrave;nh: Windows 11 Home<br />\r\n- Pin: 4 cell 56 Wh Pin liền<br />\r\n- Khối lượng: 2.1kg</p>', '<h2><a href=\"https://phongvu.vn/c/laptop\">Laptop</a>&nbsp;Asus Gaming ROG Strix G513IE-HN246W kho&aacute;c l&ecirc;n m&igrave;nh một ngoại h&igrave;nh Gaming ấn tượng, mạnh mẽ ph&ugrave; hợp với c&aacute;c game thủ. Đ&acirc;y sẽ l&agrave; một ứng cử vi&ecirc;n s&aacute;ng gi&aacute; với khả năng đ&aacute;p ứng những nhu cầu sử dụng những t&aacute;c vụ th&ocirc;ng thường một c&aacute;ch nhanh ch&oacute;ng, đồng thời hứa hẹn mang đến cho bạn những trải nghiệm trong từng trận game tuyệt vời.</h2>\r\n\r\n<p><img alt=\"Laptop Asus Gaming ROG Strix G513IE-HN246W\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_38aff848-2bff-4091-a933-856cb7e1567f.png\" /></p>\r\n\r\n<h3>Vẻ ngo&agrave;i c&aacute; t&iacute;nh đậm chất gaming, b&agrave;n ph&iacute;m trang bị hệ thống đ&egrave;n LED RGB rực rỡ</h3>\r\n\r\n<p>Asus Gaming ROG Strix sở hữu một thiết kế c&aacute; t&iacute;nh với c&aacute;c đường n&eacute;t khung m&aacute;y vu&ocirc;ng vắn thể hiện sự mạnh mẽ c&ugrave;ng với c&aacute;c đường viền đ&egrave;n&nbsp;<strong>LED</strong>&nbsp;mang đến một phong c&aacute;ch đậm chất gaming. Logo của h&atilde;ng được đặt nghi&ecirc;ng c&aacute;ch điệu tạo điểm nhấn cho sản phẩm. Lấy&nbsp;<strong>m&agrave;u x&aacute;m</strong>&nbsp;l&agrave;m chủ đạo mang đến cho chiếc laptop một vẻ ngo&agrave;i sang trọng, huyền b&iacute;.</p>\r\n\r\n<p><img alt=\"Laptop Asus Gaming ROG Strix G513IE-HN246W | Thiết kế đậm chất gaming\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_a0265c8b-69ee-4313-a927-a54777820100.png\" /></p>\r\n\r\n<p><a href=\"https://phongvu.vn/c/laptop-asus\">Laptop Asus</a>&nbsp;được trang bị một b&agrave;n ph&iacute;m với k&iacute;ch thước&nbsp;<strong>ti&ecirc;u chuẩn&nbsp;</strong>dễ d&agrave;ng sử dụng. H&agrave;nh tr&igrave;nh ph&iacute;m s&acirc;u c&ugrave;ng vật liệu cấu tạo cao cấp mang đến trải nghiệm đ&aacute;nh m&aacute;y thoải m&aacute;i, ch&iacute;nh x&aacute;c hơn. Đ&egrave;n&nbsp;<strong>LED RGB</strong>&nbsp;cung cấp &aacute;nh s&aacute;ng để bạn c&oacute; thể thao t&aacute;c b&agrave;n ph&iacute;m tốt trong m&ocirc;i trường thiếu s&aacute;ng. Touchpad nhanh nhạy gi&uacute;p bạn c&oacute; thể dễ d&agrave;ng điều khiển m&aacute;y mượt m&agrave;, nhanh ch&oacute;ng theo &yacute; muốn.</p>\r\n\r\n<p><img alt=\"Laptop Asus Gaming ROG Strix G513IE-HN246W | Bàn phím\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_89f87c6a-af36-484b-aaf8-4c3e6b92cb60.png\" /></p>\r\n\r\n<h3>M&agrave;n h&igrave;nh hiển thị chất lượng cao, c&ocirc;ng nghệ chống l&oacute;a tiện &iacute;ch</h3>\r\n\r\n<p>Laptop Gaming ROG Strixđược trang bị một m&agrave;n h&igrave;nh k&iacute;ch thước lớn&nbsp;<strong>15.6 inch</strong>&nbsp;c&ugrave;ng độ ph&acirc;n giải<strong>&nbsp;1920 x 1080px&nbsp;</strong>cho h&igrave;nh ảnh sắc n&eacute;t, ch&acirc;n thực. Tấm nền&nbsp;<strong>IPS</strong>&nbsp;cung cấp tầm số qu&eacute;t&nbsp;<strong>144Hz</strong>&nbsp;mang đến khung h&igrave;nh chuyển động mượt m&agrave; với khả năng t&aacute;i hiện m&agrave;u sắc rực rỡ.</p>\r\n\r\n<p><img alt=\"Laptop Asus Gaming ROG Strix G513IE-HN246W | Màn hình\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_9a960dba-7f29-48a9-8f8a-16bce5ad18bb.png\" /></p>\r\n\r\n<p>M&agrave;n h&igrave;nh c&ograve;n được phủ một&nbsp;<strong>lớp chống l&oacute;a</strong>&nbsp;với chức năng hạn chế sự ảnh hưởng của &aacute;nh s&aacute;ng trực tiếp đến chất lượng h&igrave;nh ảnh. Từ đ&oacute; bạn c&oacute; thể tận hưởng những khung h&igrave;nh đẹp mắt ở mọi g&oacute;c nh&igrave;n. M&agrave;n h&igrave;nh được thiết kế viền mỏng n&acirc;ng cao t&iacute;nh thẩm mỹ v&agrave; mang đến g&oacute;c nh&igrave;n rộng r&atilde;i hơn.</p>\r\n\r\n<h3>Cấu h&igrave;nh mạnh mẽ với AMD Ryzen 7, card đ&ocirc;̀ họa NVIDIA GeForce RTX 3050Ti 4GB GDDR6&nbsp;</h3>\r\n\r\n<p>Bộ vi xử l&yacute;&nbsp;<strong>AMD Ryzen 7&nbsp;</strong>mang đến cho laptop Asus một hiệu năng hoạt động mạnh mẽ. Với cấu tr&uacute;c cơ bản gồm&nbsp;<strong>8 nh&acirc;n, 16 lu&ocirc;̀ng</strong>, cung cấp xung nhịp&nbsp;<strong>2.9GHz - 4.2GHz</strong>&nbsp;nhờ chế độ&nbsp;<strong>Turbo Boost</strong>&nbsp;gi&uacute;p xử l&yacute; nhanh ch&oacute;ng hầu hết c&aacute;c t&aacute;c vụ từ cơ bản đến n&acirc;ng cao.</p>\r\n\r\n<p><img alt=\"Laptop Asus Gaming ROG Strix G513IE-HN246W | Card đồ họa, hiệu năng\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_ac0c86a9-aea9-40e1-843d-3f0cfcb964f6.png\" /></p>\r\n\r\n<p>Card đ&ocirc;̀ họa&nbsp;<strong>NVIDIA GeForce RTX 3050Ti 4GB GDDR6</strong>&nbsp; cho khả năng xử l&yacute; đồ họa ấn tượng. Với d&ograve;ng card n&agrave;y laptop Asus Gaming ROG Strix gi&uacute;p bạn c&oacute; thể thoải m&aacute;i s&aacute;ng tạo với c&aacute;c phần mềm đồ họa cho hiệu suất cao việc cao. Bạn c&ograve;n c&oacute; thể trải nghiệm những tựa game y&ecirc;u th&iacute;ch với h&igrave;nh ảnh ch&acirc;n thực, chuyển động mượt m&agrave;.</p>\r\n\r\n<h3>N&acirc;ng cao khả năng đa nhiệm với RAM 8GB DDR4 3200MHz, kh&ocirc;ng gian lưu trữ rộng lớn với&nbsp; 512GB</h3>\r\n\r\n<p><strong>RAM 8GB DDR4 3200MHz&nbsp;</strong>mang đến cho laptop Asus khả năng đa nhiệm n&acirc;ng cao hiệu quả c&ugrave;ng l&uacute;c nhiều t&aacute;c vụ. Bạn c&oacute; thể thoải m&aacute;i mở nhiều tab để học tập v&agrave; l&agrave;m việc m&agrave; kh&ocirc;ng lo xảy ra t&igrave;nh trạng giật lag từ đ&oacute; gi&uacute;p n&acirc;ng cao hiệu quả c&ocirc;ng việc cũng như học tập.</p>\r\n\r\n<p><img alt=\"Laptop Asus Gaming ROG Strix G513IE-HN246W | Bộ nhớ lưu trữ\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_03b27076-e80a-4407-84c3-cd5676738abe.png\" /></p>\r\n\r\n<p>Ổ cứng&nbsp;<strong>512GB SSD M.2 NVMe&nbsp;</strong>cung cấp một kh&ocirc;ng gian lưu trữ rộng r&atilde;i bạn c&oacute; thể lưu trữ thoải m&aacute;i những ứng dụng hay th&ocirc;ng tin c&aacute; nh&acirc;n cần thiết m&agrave; kh&ocirc;ng lo qu&aacute; tải. Ngo&agrave;i ra, d&ograve;ng ổ cứng n&agrave;y c&ograve;n hỗ trợ laptop Asus Gaming ROG Strix đ&aacute;ng kể trong việc tăng nhanh tốc độ khởi động m&aacute;y v&agrave; truy cập dữ liệu.</p>\r\n\r\n<h3>Thời lượng pin l&acirc;u d&agrave;i, c&agrave;i đặt sẵn hệ điều h&agrave;nh Windows 11 Home</h3>\r\n\r\n<p>Laptop Asus được nh&agrave; sản xuất trang bị vi&ecirc;n pin liền với dung lượng<strong>&nbsp;4 cell 56 Wh</strong>. Vi&ecirc;n pin n&agrave;y c&oacute; khả năng cung cấp cho bạn một thời lượng sử dụng l&acirc;u d&agrave;i đ&aacute;p ứng được nhu cầu giải tr&iacute; cũng như l&agrave;m việc.</p>\r\n\r\n<p><img alt=\"Laptop Asus Gaming ROG Strix G513IE-HN246W | Pin\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_d42e9708-b22c-4688-a0de-218068c00b82.png\" /></p>\r\n\r\n<p>Hệ điều h&agrave;nh&nbsp;<strong>Windows 11 Home&nbsp;</strong>được c&agrave;i đặt sẵn cho ph&eacute;p bạn c&oacute; thể sử dụng m&aacute;y ngay khi mua về m&agrave; kh&ocirc;ng cần phải tốn ph&iacute; c&agrave;i đặt. Window 11 cung cấp cho bạn một kho ứng dụng tiện &iacute;ch rộng lớn c&ugrave;ng khả năng bảo mật n&acirc;ng cao bảo vệ quyền ri&ecirc;ng tư của bản.</p>\r\n\r\n<p><img alt=\"Laptop Asus Gaming ROG Strix G513IE-HN246W | Win 11\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_552867ef-dc38-4a75-a8de-eedac434697b.png\" /></p>\r\n\r\n<h3>Trang bị đầy đủ c&aacute;c cổng kết nối hiện đại, c&ocirc;ng nghệ kết nối kh&ocirc;ng d&acirc;y tiện &iacute;ch</h3>\r\n\r\n<p>Chiếc laptop nh&agrave;&nbsp; Asus được trang bị đầy đủ c&aacute;c cổng kết nối hiện đại như cổng xuất h&igrave;nh&nbsp;<strong>HDMI</strong>, c&aacute;c cổng kết nối&nbsp;<strong>USB Type C/DisplayPort/Power Delivery, 3 x USB 3.2, LAN 1 Gb/s</strong>&nbsp;cho ph&eacute;p bạn c&oacute; thể kết nối với nhiều thiết bị ngoại vi một c&aacute;ch dễ d&agrave;ng.</p>\r\n\r\n<p><img alt=\"Laptop Asus Gaming ROG Strix G513IE-HN246W | Cổng kết nối\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_ec7e7289-e56c-4fb8-97c0-80404cb6502b.png\" /></p>\r\n\r\n<p>Chuẩn kết nối kh&ocirc;ng d&acirc;y bao gồm&nbsp;<strong>WiFi 802.11ax (Wifi 6) , Bluetooth 5.1&nbsp;</strong>mang đến một đường truyền ổn định tốc độ cao c&ugrave;ng khả năng kết nối dễ d&agrave;ng với c&aacute;c thiết bị di động để truyền tải dữ liệu nhanh ch&oacute;ng.</p>', 0, 0, 0, '2023-05-31 08:33:59', 20, NULL, NULL, 0, NULL, NULL),
(9, 'Laptop HP Envy x360 13-bf0096TU (76B16PA) (i5-1230U/RAM 8GB/512GB SSD/ Windows 11)', 'laptop-hp-envy-x360-13-bf0096tu-76b16pa-i5-1230uram-8gb512gb-ssd-windows-11', 25600000, 0, 2, 1, 0, 11, '', '2023-05-31__unnamed-6.webp', 0, 0, 1, 0, '<p>- CPU: Intel Core i5-1230U<br />\r\n- M&agrave;n h&igrave;nh: 13.3&quot; (2880 x 1800)<br />\r\n- RAM: 8GB Onboard LPDDR4X 4266MHz<br />\r\n- Đồ họa: Onboard Intel Iris Xe Graphics<br />\r\n- Lưu trữ: 512GB SSD M.2 NVMe /<br />\r\n- Hệ điều h&agrave;nh: Windows 11 Home SL<br />\r\n- Pin: 4 cell 66 Wh Pin liền<br />\r\n- Khối lượng: 1.3kg</p>', '<h2><strong>1.&nbsp; Khẳng định c&aacute; t&iacute;nh với thiết kế hiện đại tr&ecirc;n</strong>&nbsp;<strong>HP Envy x360 13-bf0096TU</strong></h2>\r\n\r\n<p>Khi cầm tr&ecirc;n tay chiếc&nbsp;<a href=\"https://phongvu.vn/c/laptop-hp\">Laptop HP</a>&nbsp;Envy x360 13-bf0096TU, m&igrave;nh đ&atilde; thực sự bị chinh phục bởi những g&igrave; m&agrave; HP đ&atilde; mang đến tr&ecirc;n chiếc m&aacute;y n&agrave;y. Thiết kế mỏng nhẹ của m&aacute;y c&ugrave;ng với chất liệu nh&ocirc;m cao cấp tạo n&ecirc;n một sự sang trọng v&agrave; hiện đại. M&agrave;n h&igrave;nh cảm ứng&nbsp;<strong>Full HD 13.3 inch</strong>&nbsp;cho h&igrave;nh ảnh sắc n&eacute;t v&agrave; đẹp mắt. B&agrave;n ph&iacute;m c&oacute; đ&egrave;n nền LED cho ph&eacute;p l&agrave;m việc trong điều kiện &aacute;nh s&aacute;ng yếu v&agrave; độ nhạy cao gi&uacute;p người d&ugrave;ng nhập liệu dễ d&agrave;ng. Độ ho&agrave;n thiện cũng như chi tiết được chăm ch&uacute;t tỉ mỉ, tạo n&ecirc;n một sản phẩm đ&aacute;ng gi&aacute; cho người sử dụng.</p>\r\n\r\n<p><img alt=\"thiet-ke-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/31/20230331_13491dc9-78c2-4078-9c2a-96dcc8748dee.jpeg\" /></p>\r\n\r\n<p>H&atilde;ng HP vẫn khẳng định được vị thế h&agrave;ng đầu của chiếc m&aacute;y n&agrave;y trong ph&acirc;n kh&uacute;c laptop văn ph&ograve;ng cao cấp. Laptop HP Envy x360 13-bf0096TU được thừa hưởng gần như to&agrave;n bộ những n&eacute;t tinh t&uacute;y nhất trong thiết kế của d&ograve;ng&nbsp;<a href=\"https://phongvu.vn/c/hp-envy\">HP Envy</a>&nbsp;từ sự ho&agrave;n thiện tỉ mỉ đến vẻ ngo&agrave;i sang trọng.&nbsp;</p>\r\n\r\n<p><img alt=\"danh-gia-laptop-hp-envy-x360-13\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/31/20230331_a5763fc9-ab95-4de9-9490-f873b54cdda6.jpeg\" /></p>\r\n\r\n<p>Đầu ti&ecirc;n, ch&uacute;ng ta sẽ sở hữu một chiếc m&aacute;y được&nbsp;<strong>ho&agrave;n thiện 100%</strong>&nbsp;bằng hợp&nbsp;<strong>kim nguy&ecirc;n khối cao cấp</strong>&nbsp;rất chắc chắn. Ch&iacute;nh v&igrave; vậy m&agrave; khi cầm m&aacute;y tr&ecirc;n tay, bạn sẽ cảm nhận được sự thoải m&aacute;i v&agrave; đầm tay mỗi khi sử dụng m&aacute;y m&agrave; kh&ocirc;ng hề c&oacute; cảm gi&aacute;c ọp ẹp.</p>\r\n\r\n<p><img alt=\"tan nhiet laptop hp envy x360 13 bf0096TU\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/31/20230331_9cb9a332-10a7-4a4a-83e7-593eb3d15f30.jpeg\" /></p>\r\n\r\n<p><strong>D&ograve;ng HP Envy x360 13-bf0096TU</strong>&nbsp;c&oacute; lối thiết kế tổng thể kh&aacute; vu&ocirc;ng vức để l&agrave;m nổi bật l&ecirc;n sự c&aacute; t&iacute;nh, mạnh mẽ v&agrave; hiện đại của một chiếc m&aacute;y cao cấp. Tuy nhi&ecirc;n thiết kế n&agrave;y vẫn kh&ocirc;ng qu&aacute; &ldquo;cứng&rdquo; đồng thời cũng rất ph&ugrave; hợp với những bạn nữ khi h&atilde;ng đ&aacute; bo tr&ograve;n c&aacute;c cạnh để c&oacute; cảm gi&aacute;c cầm nắm thoải m&aacute;i.&nbsp;</p>\r\n\r\n<p><img alt=\"danh-gia-thiet-ke-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/31/20230331_9c05a91b-46ed-4f7d-a0f6-cab6bde04fb8.jpeg\" /></p>\r\n\r\n<p>K&iacute;ch thước v&agrave; trọng lượng của chiếc&nbsp;<strong>HP Envy x360 13-bf0096TU</strong>&nbsp;sẽ l&agrave;m bạn phải bất ngờ, d&ugrave; sở hữu chiếc m&agrave;n h&igrave;nh k&iacute;ch thước 13 inch nhưng chiếc m&aacute;y n&agrave;y chỉ c&oacute; c&acirc;n nặng&nbsp;<strong>1.3kg</strong>&nbsp;v&agrave; độ mỏng&nbsp;<strong>1.61cm</strong>. Nếu bạn l&agrave; một fan của những chiếc m&aacute;y mỏng nhẹ cấu h&igrave;nh ổn định để dễ d&agrave;ng mang đi mọi nơi th&igrave;<strong>&nbsp;Laptop HP Envy x360 13-bf0096TU</strong>&nbsp;sẽ l&agrave; một ứng cử vi&ecirc;n s&aacute;ng gi&aacute; v&igrave; đ&acirc;y l&agrave; một trong những chiếc laptop mỏng nhẹ nhất thế giới hiện nay.&nbsp;</p>\r\n\r\n<p><img alt=\"danh-gia-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/31/20230331_bcfd4eb5-3997-4dcb-81a2-291dc3d05057.jpeg\" /></p>\r\n\r\n<p>Một điểm kh&aacute; đ&aacute;ng khen tr&ecirc;n chiếc m&aacute;y n&agrave;y nữa đ&oacute; ch&iacute;nh l&agrave; nước sơn Xanh-Đen t&ocirc;ng trầm vừa mang đến vẻ hiện đại v&agrave; cứng c&aacute;p vừa chống b&aacute;m dấu v&acirc;n tay kh&aacute; tốt. Nếu so với những sản phẩm kh&aacute;c tr&ecirc;n thị trường th&igrave; m&igrave;nh nhận thấy HP Envy x360 13-bf0096TU đ&atilde; l&agrave;m rất tốt trong kh&acirc;u n&agrave;y.&nbsp;</p>\r\n\r\n<h2><strong>2. Bản lề gập mở 360 độ si&ecirc;u ấn tượng</strong></h2>\r\n\r\n<p>Laptop HP Envy x360 13-bf0096TU mang đến khả năng l&agrave;m việc kh&ocirc;ng giới hạn kh&ocirc;ng gian nhờ v&agrave;o bản lề x360 cho ph&eacute;p người d&ugrave;ng mở m&aacute;y g&oacute;c si&ecirc;u rộng l&ecirc;n đến 360 độ. V&igrave; l&agrave; một chiếc m&aacute;y thuộc ph&acirc;n kh&uacute;c cao cấp n&ecirc;n chiếc&nbsp;<a href=\"https://phongvu.vn/c/laptop-mong-nhe\">laptop mỏng nhẹ</a>&nbsp;n&agrave;y cũng c&oacute; thể mở m&agrave;n h&igrave;nh bằng một tay tiện lợi.&nbsp;</p>\r\n\r\n<p><img alt=\"ban-le-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/31/20230331_48de69dd-ce2f-4d1b-be85-4218a2f2a5f9.jpeg\" /></p>\r\n\r\n<p>Tuy nhi&ecirc;n c&oacute; một nhược điểm cố hữu của loại<strong>&nbsp;bản lề x360</strong>&nbsp;đ&oacute; ch&iacute;nh l&agrave; n&oacute; c&oacute; một độ &ldquo;cứng&rdquo; nhất định nhằm giữ bản lề ổn định, ch&iacute;nh v&igrave; vậy m&agrave; khi người d&ugrave;ng gập mở m&agrave;n h&igrave;nh sẽ c&oacute; cảm gi&aacute;c chưa được mượt m&agrave; lắm.&nbsp;</p>\r\n\r\n<p>Một điểm đ&aacute;ng tiếc nữa m&agrave; m&igrave;nh nghĩ h&atilde;ng n&ecirc;n cần cải thiện ngay để trải nghiệm của người d&ugrave;ng được tốt hơn đ&oacute; ch&iacute;nh l&agrave; phần gờ để mở m&agrave;n h&igrave;nh qu&aacute; nhỏ khiến cho việc mở m&agrave;n h&igrave;nh kh&aacute; kh&oacute; khăn. Th&ecirc;m v&agrave;o đ&oacute;, v&igrave; phần khung m&agrave;n h&igrave;nh đ&atilde; được bo cong n&ecirc;n bạn sẽ thấy bất tiện hơn nếu như muốn gập mở m&agrave;n h&igrave;nh nhanh.&nbsp;</p>\r\n\r\n<p><img alt=\"ban-phim-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/31/20230331_171b24b6-260c-48f2-959d-74c11d91f92c.jpeg\" /></p>\r\n\r\n<h2><strong>3. M&agrave;n h&igrave;nh hiển thị 2K+ với chất lượng h&igrave;nh ảnh vượt trội</strong></h2>\r\n\r\n<p>M&agrave;n h&igrave;nh tr&ecirc;n&nbsp;<strong>HP Envy x360 13-bf0096TU</strong>&nbsp;chắc chắn sẽ chinh phục được những người d&ugrave;ng kh&oacute; t&iacute;nh nhất d&ugrave; đ&oacute; l&agrave; t&aacute;c vụ giải tr&iacute; đơn thuần hay l&agrave;m việc chuy&ecirc;n nghiệp. HP đ&atilde; trang bị cho chiếc m&aacute;y n&agrave;y một chiếc m&agrave;n h&igrave;nh OLED c&ocirc;ng nghệ BrightView với k&iacute;ch thước 13.3 inch c&ugrave;ng độ ph&acirc;n giải 2K+ v&ocirc; c&ugrave;ng sắc n&eacute;t.&nbsp;</p>\r\n\r\n<p><img alt=\"man-hinh-laptop-hp-envy-x360-13-bf0096TU\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/31/20230331_7bc64239-1167-4040-9e51-fe0868497853.jpeg\" /></p>\r\n\r\n<p>Kh&ocirc;ng giống như những&nbsp;<strong>tấm nền OLED</strong>&nbsp;kh&aacute;c tr&ecirc;n thị trường, m&agrave;n h&igrave;nh của&nbsp;<strong>HP Envy x360 1</strong>3 được phủ một lớp k&iacute;nh to&agrave;n bộ bề mặt gi&uacute;p đem lại h&igrave;nh ảnh c&oacute; độ trong trẻo, m&agrave;u sắc thể hiện rất sống động. B&ecirc;n cạnh đ&oacute;, 3 viền m&agrave;n h&igrave;nh của chiếc m&aacute;y n&agrave;y được v&aacute;t kh&aacute; mỏng kết hợp c&ugrave;ng viền đen gi&uacute;p cho h&igrave;nh ảnh c&oacute; độ s&acirc;u trường ảnh rất tốt, ch&uacute;ng ta gần như kh&ocirc;ng thể nhận ra chiếc viền m&agrave;n h&igrave;nh n&agrave;y khi sử dụng.&nbsp;</p>\r\n\r\n<p>Để phục vụ nhu cầu l&agrave;m việc chuy&ecirc;n nghiệp th&igrave; chiếc m&agrave;n h&igrave;nh n&agrave;y cũng đạt chuẩn m&agrave;u sắc&nbsp;<strong>100% DCI-P3</strong>, dải m&agrave;u rộng v&agrave; chuẩn m&agrave;u cao sẽ gi&uacute;p bạn l&agrave;m việc li&ecirc;n quan đến thiết kế đồ họa, dựng phim một c&aacute;ch chuy&ecirc;n nghiệp.&nbsp;</p>\r\n\r\n<p><img alt=\"danh gia man hinh laptop hp envy x360 13 bf0096TU\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/31/20230331_1bfc96db-c96f-4b70-a341-85945860e634.jpeg\" /></p>\r\n\r\n<p>Đặc biệt hơn cả, m&agrave;n h&igrave;nh của HP Envy x360 13 l&agrave; một chiếc m&agrave;n h&igrave;nh cảm ứng rất nhạy v&agrave; c&oacute; thể tương th&iacute;ch được với b&uacute;t cảm ứng. Bạn cũng c&oacute; thể sử dụng chiếc m&aacute;y n&agrave;y như một chiếc m&aacute;y t&iacute;nh bảng khi cần với bản lề gập mở 360 độ.&nbsp;</p>\r\n\r\n<p>Đối với những người d&ugrave;ng hay l&agrave;m việc ngo&agrave;i trời th&igrave; chiếc laptop HP n&agrave;y vẫn c&oacute; thể đ&aacute;p ứng tốt với độ s&aacute;ng l&ecirc;n đến 500 nits c&ugrave;ng lớp k&iacute;nh chống ch&oacute;i, c&ocirc;ng nghệ Low Blue Light gi&uacute;p bảo vệ mắt tốt hơn.&nbsp;</p>\r\n\r\n<h2><strong>4. Laptop mỏng nhẹ cấu h&igrave;nh mạnh nhờ v&agrave;o con chip Intel Gen 12</strong></h2>\r\n\r\n<p>Khi x&eacute;t về cấu h&igrave;nh th&igrave; chiếc&nbsp;<strong>Laptop HP Envy x360 13-bf0096TU</strong>&nbsp;kh&ocirc;ng hề l&eacute;p vế khi n&oacute; được trang bị một con chip Intel Gen 12. Bộ vi xử l&yacute;&nbsp;<strong>Intel Core i5-1230U</strong>&nbsp;d&ugrave; định danh chỉ l&agrave; một con chip tiết kiệm điện nhưng n&oacute; sở hữu đến 10 nh&acirc;n v&agrave; 12 luồng, xung nhịp tối đa m&agrave; con chip n&agrave;y mang đến l&ecirc;n tới 4.4 GHz, một con số ấn tượng tr&ecirc;n một chiếc laptop.&nbsp;</p>\r\n\r\n<p>Những t&aacute;c vụ văn ph&ograve;ng th&ocirc;ng thường hay học tập kh&ocirc;ng thể l&agrave;m kh&oacute; được chiếc laptop n&agrave;y, thậm ch&iacute; l&agrave; khi bạn d&ugrave;ng n&oacute; để thiết kế đồ họa, dựng phim th&igrave; card đồ họa t&iacute;ch hợp Intel Iris Xe Graphics vẫn c&oacute; thể đảm đương được một c&aacute;ch tương đối mượt m&agrave;.&nbsp;</p>', 0, 0, 0, '2023-05-31 08:36:10', 20, NULL, NULL, 0, NULL, NULL),
(10, 'Laptop HP Pavilion 15-eg2035TX (6K781PA) (i5-1235U/RAM 8GB/512GB SSD/ Windows 11)', 'laptop-hp-pavilion-15-eg2035tx-6k781pa-i5-1235uram-8gb512gb-ssd-windows-11', 189000000, 0, 2, 1, 0, 3, '', '2023-05-31__unnamed-7.webp', 1, 0, 1, 0, '<p>- CPU: Intel Core i5-1235U<br />\r\n- M&agrave;n h&igrave;nh: 15.6&quot; IPS (1920 x 1080)<br />\r\n- RAM: 2 x 4GB DDR4 3200MHz<br />\r\n- Đồ họa: GeForce MX550 2GB GDDR6 / Intel Iris Xe Graphics<br />\r\n- Lưu trữ: 512GB SSD M.2 NVMe /<br />\r\n- Hệ điều h&agrave;nh: Windows 11 Home SL<br />\r\n- Pin: 3 cell 41 Wh<br />\r\n- Khối lượng: 1.7kg</p>', '<h2><a href=\"https://phongvu.vn/c/laptop\">Laptop</a>&nbsp;HP Pavilion 15-eg2035TX 6K781PA thuộc d&ograve;ng laptop cao cấp đến từ thương hiệu HP nổi tiếng. Sản phẩm sở hữu kiểu thiết kế sang trọng với gam m&agrave;u v&agrave;ng quen thuộc c&ugrave;ng hiệu năng mạnh mẽ ổn định nhờ CPU&nbsp;Intel Core thế hệ thứ 12 chắc chắn sẽ l&agrave;m h&agrave;i l&ograve;ng đến những kh&aacute;ch h&agrave;ng kh&oacute; t&iacute;nh.</h2>\r\n\r\n<p><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/1/20221001_84a8aa13-259c-4bb6-9f33-419ba181b310.png\" /></p>\r\n\r\n<h3>Kiểu d&aacute;ng sang trọng với gam m&agrave;u bắt mắt c&ugrave;ng trọng lượng chỉ nặng 1.7kg</h3>\r\n\r\n<p>Laptop HP Pavilion 15 sở hữu ngoại h&igrave;nh sang trọng nhờ được ho&agrave;n thiện từ&nbsp;<strong>chất liệu cao cấp</strong>&nbsp;với&nbsp;<strong>gam m&agrave;u</strong>&nbsp;<strong>v&agrave;ng</strong>&nbsp;bắt mắt, đ&acirc;y ch&iacute;nh l&agrave; điểm nhấn gi&uacute;p bạn thể hiện được c&aacute; t&iacute;nh ri&ecirc;ng. B&ecirc;n cạnh đ&oacute;, c&aacute;c viền được thiết kế vu&ocirc;ng vức tạo cảm gi&aacute;c mạnh mẽ, ph&ugrave; hợp với nhiều đối tượng kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img alt=\"Laptop HP Pavilion 15-eg2035TX 6K781PA | Gam màu vàng\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/1/20221001_387a4494-d32d-4987-a6c1-16466dbf95a0.png\" /></p>\r\n\r\n<p>HP Pavilion sở hữu thiết kế nhỏ gọn với k&iacute;ch thước&nbsp;<strong>36.02 x 23.4 x 1.79cm&nbsp;</strong>mang đến sự linh hoạt cao, cho ph&eacute;p bạn bỏ vừa v&agrave;o balo hoặc t&uacute;i x&aacute;ch c&aacute; nh&acirc;n v&agrave; mang theo b&ecirc;n m&igrave;nh. Ngo&agrave;i ra, m&aacute;y t&iacute;nh c&ograve;n c&oacute; trọng lượng si&ecirc;u nhẹ chỉ khoảng&nbsp;<strong>1.7kg</strong>&nbsp;ph&ugrave; hợp với những người thường xuy&ecirc;n l&agrave;m việc b&ecirc;n ngo&agrave;i.</p>\r\n\r\n<h3>Trang bị m&agrave;n h&igrave;nh 15.6 inch Full HD c&ugrave;ng b&agrave;n ph&iacute;m full size &ecirc;m &aacute;i&nbsp;</h3>\r\n\r\n<p>M&aacute;y t&iacute;nh x&aacute;ch tay HP Pavilion được trang bị m&agrave;n h&igrave;nh với k&iacute;ch thước ti&ecirc;u chuẩn&nbsp;<strong>15.6 inch</strong>&nbsp;c&ugrave;ng viền m&agrave;n h&igrave;nh mỏng gi&uacute;p mở rộng kh&ocirc;ng gian hiển thị cho bạn. B&ecirc;n cạnh đ&oacute;, laptop c&ograve;n được trang bị tấm nền&nbsp;<strong>IPS</strong>&nbsp;với chất lượng&nbsp;<strong>Full HD 1920x1080px&nbsp;</strong>cho chất lượng hiển thị r&otilde; n&eacute;t v&agrave; ch&acirc;n thực.</p>\r\n\r\n<p><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/1/20221001_7c59f2ad-48e5-4566-8f78-942a96ae8b62.png\" /></p>\r\n\r\n<p>Ngo&agrave;i ra, b&agrave;n ph&iacute;m của laptop nh&agrave; HP được bố tr&iacute; hợp l&yacute; c&ugrave;ng h&agrave;nh tr&igrave;nh ph&iacute;m mượt m&agrave; mang lại cảm gi&aacute;c g&otilde; &ecirc;m &aacute;i ngay cả khi sử dụng trong nhiều giờ liền. Laptop c&ograve;n c&oacute;&nbsp;<strong>cụm ph&iacute;m số</strong>&nbsp;tiện lợi gi&uacute;p hỗ trợ kh&aacute;ch h&agrave;ng tối đa trong qu&aacute; tr&igrave;nh l&agrave;m việc.</p>\r\n\r\n<p><img alt=\"Laptop HP Pavilion 15-eg2035TX 6K781PA | Bàn phím\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/1/20221001_e6276d8b-0495-4fb3-9661-86d1e0edd1a9.png\" /></p>\r\n\r\n<h3>Trang bị CPU Intel Core i5 t&iacute;ch hợp chip đồ họa Intel Iris Xe Graphics c&ugrave;ng card rời NVIDIA GeForce MX550&nbsp;</h3>\r\n\r\n<p>Laptop HP 15-eg2035TX 6K781PA mang đến cho kh&aacute;ch h&agrave;ng hiệu năng ấn tượng nhờ trang bị&nbsp;<strong>CPU Intel Core i5</strong>&nbsp;<strong>thế hệ 12</strong>. Với&nbsp;<strong>10 nh&acirc;n 12 luồng</strong>&nbsp;c&ugrave;ng bộ nhớ đệm&nbsp;<strong>12MB</strong>, tốc độ xung nhịp tối đa l&ecirc;n đến&nbsp;<strong>4.4GHz</strong>&nbsp;cho khả năng xử l&yacute; nhanh ch&oacute;ng nhờ đ&oacute; m&agrave; gi&uacute;p đ&aacute;p ứng tốt c&aacute;c nhu cầu cơ bản h&agrave;ng ng&agrave;y của kh&aacute;ch h&agrave;ng.</p>\r\n\r\n<p><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/1/20221001_876f9393-1167-4907-84d3-9aae54de3b6d.png\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, HP Pavilion được nh&agrave; sản xuất t&iacute;ch hợp chip đồ họa&nbsp;<strong>Intel Iris Xe Graphics</strong>&nbsp;cho khả năng xử l&yacute; h&igrave;nh ảnh mượt m&agrave; v&agrave; chuẩn x&aacute;c. C&ugrave;ng với sự hỗ trợ của card rời&nbsp;<strong>NVIDIA GeForce MX550 2GB GDDR6</strong>&nbsp;gi&uacute;p tăng hiệu suất xử l&yacute;, đ&aacute;p ứng được c&aacute;c nhu cầu chỉnh sửa đồ họa cơ bản.</p>\r\n\r\n<h3>Đa nhiệm mượt m&agrave; với 8GB RAM, kh&ocirc;ng gian lưu trữ thoải m&aacute;i nhờ bộ nhớ 512GB SSD&nbsp;</h3>\r\n\r\n<p>Laptop HP 15-eg2035TX cho ph&eacute;p kh&aacute;ch h&agrave;ng thao t&aacute;c đa nhiệm mượt m&agrave; với nhiều chương tr&igrave;nh c&ugrave;ng l&uacute;c nhờ được trang bị bộ nhớ&nbsp;<strong>RAM 8GB</strong>&nbsp;với chuẩn&nbsp;<strong>DDR4</strong>&nbsp;được cải tiến từ phi&ecirc;n bản tiền nhiệm. C&ugrave;ng với bus RAM&nbsp;<strong>3200MHz</strong>&nbsp;cho khả năng truyền dữ liệu nhanh ch&oacute;ng.</p>\r\n\r\n<p><img alt=\"Laptop HP Pavilion 15-eg2035TX 6K781PA | Bộ nhớ lưu trữ\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/1/20221001_6ae271a7-0c1d-4333-83e0-02b9f7187c34.png\" /></p>\r\n\r\n<p>Kh&ocirc;ng những thế, Pavilion 15 c&ograve;n sở hữu kh&ocirc;ng gian lưu trữ kh&aacute; lớn l&ecirc;n đến&nbsp;<strong>512GB</strong>&nbsp;chuẩn&nbsp;<strong>M.2 NVMe</strong>&nbsp;cho khả năng lưu trữ dữ liệu thoải m&aacute;i. Đ&acirc;y sẽ l&agrave; giải ph&aacute;p gi&uacute;p giải quyết t&igrave;nh trạng đầy bộ nhớ xảy ra khi sử dụng, c&ugrave;ng với kiểu ổ cứng&nbsp;<strong>SSD</strong>&nbsp;mang đến khả năng truy xuất dữ liệu nhanh ch&oacute;ng.</p>\r\n\r\n<h3>Đa dạng cổng kết nối vật l&yacute; chất lượng, hỗ trợ c&ocirc;ng nghệ kết nối kh&ocirc;ng d&acirc;y t&acirc;n tiến</h3>\r\n\r\n<p>Laptop HP Pavilion 6K781PA được trang bị đầy đủ với c&aacute;c cổng kết nối th&ocirc;ng dụng như&nbsp;<strong>1 x USB Type C/ DisplayPort/ Power Delivery, 2 x USB 3.2&nbsp;</strong>cho ph&eacute;p bạn kết nối trực tiếp với c&aacute;c thiết bị kh&aacute;c một c&aacute;ch dễ d&agrave;ng. C&ugrave;ng với đ&oacute; l&agrave; cổng&nbsp;<strong>HDMI</strong>&nbsp;cho ph&eacute;p xuất h&igrave;nh ảnh chất lượng cao.</p>\r\n\r\n<p><img alt=\"Laptop HP Pavilion 15-eg2035TX 6K781PA | Cổng kết nối\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/1/20221001_e161b08c-66b0-4ec1-a559-ab12c10da3ad.png\" /></p>\r\n\r\n<p>Laptop n&agrave;y c&ograve;n sở hữu c&ocirc;ng nghệ kết nối kh&ocirc;ng d&acirc;y hiện đại, gi&uacute;p cho qu&aacute; tr&igrave;nh kết nối được diễn ra nhanh ch&oacute;ng.<strong>&nbsp;WiFi 802.11ax (Wifi 6)</strong>&nbsp;mang đến độ ổn định khi kết nối internet với băng th&ocirc;ng cao v&agrave; khả năng truyền dữ liệu kh&ocirc;ng d&acirc;y được tối ưu hơn nhờ&nbsp;<strong>Bluetooth 5.2.</strong></p>\r\n\r\n<h3>C&agrave;i đặt sẵn Windows 11 Home SL c&ugrave;ng pin 3 cell 41Wh</h3>\r\n\r\n<p>M&aacute;y t&iacute;nh x&aacute;ch tay Pavilion 15-eg2035TX 6K781PA được c&agrave;i đặt sẵn hệ điều h&agrave;nh&nbsp;<strong>Windows 11 Home SL</strong>&nbsp;gi&uacute;p mang đến nhiều tiện &iacute;ch đặc biệt cho kh&aacute;ch h&agrave;ng. Nhờ đ&oacute;, bạn c&oacute; thể sử dụng c&aacute;c t&iacute;nh năng hữu &iacute;ch để n&acirc;ng cao năng suất l&agrave;m việc m&agrave; kh&ocirc;ng cần tốn th&ecirc;m bất kỳ chi ph&iacute; n&agrave;o kh&aacute;c.</p>\r\n\r\n<p><img alt=\"Laptop HP Pavilion 15-eg2035TX 6K781PA\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/1/20221001_aa4188cc-d58a-4261-8e7c-c862aa918a03.png\" /></p>\r\n\r\n<p>Kh&ocirc;ng những thế, m&aacute;y t&iacute;nh x&aacute;ch tay HP Pavilion được trang bị vi&ecirc;n&nbsp;<strong>pin 3</strong>&nbsp;<strong>cell 41Wh</strong>&nbsp;cho thời lượng sử dụng vừa đủ với c&aacute;c t&aacute;c vụ cơ bản h&agrave;ng ng&agrave;y m&agrave; kh&ocirc;ng cần phải cắm sạc li&ecirc;n tục. C&ugrave;ng với đ&oacute; l&agrave; khả năng sạc đầy nhanh ch&oacute;ng gi&uacute;p kh&aacute;ch h&agrave;ng c&oacute; thể tiếp tục sử dụng laptop để l&agrave;m việc hay giải tr&iacute;.</p>\r\n\r\n<h3>Mua laptop HP Pavilion 15-eg2035TX 6K781PA ch&iacute;nh h&atilde;ng tại Phong Vũ, hỗ trợ bảo h&agrave;nh ch&iacute;nh h&atilde;ng 12 th&aacute;ng</h3>\r\n\r\n<p>M&aacute;y t&iacute;nh x&aacute;ch tay HP Pavilion 15 hứa hẹn sẽ mang đến cho kh&aacute;ch h&agrave;ng những trải nghiệm mới mẻ, với sự gọn nhẹ về thiết kế c&ugrave;ng hiệu năng ổn định gi&uacute;p đ&aacute;p ứng được c&aacute;c nhu cầu h&agrave;ng ng&agrave;y của bạn. Hiện tại,&nbsp;<a href=\"http://phongvu.vn/\"><strong>Showroom Phong Vũ</strong></a>&nbsp;đang ph&acirc;n phối ch&iacute;nh h&atilde;ng sản phẩm với gi&aacute; cực sốc, nhanh tay sở hữu để nhận được nhiều phần qu&agrave; v&agrave; được bảo h&agrave;nh l&ecirc;n đến&nbsp;<strong>12 th&aacute;ng</strong>.</p>', 0, 0, 0, '2023-05-31 08:38:27', 20, NULL, NULL, 0, NULL, NULL),
(11, 'Laptop Lenovo Ideapad 5 - 15IAL7 -82SF006LVN (i5-1235U/RAM 8GB/512GB SSD/ Windows 11)', 'laptop-lenovo-ideapad-5-15ial7-82sf006lvn-i5-1235uram-8gb512gb-ssd-windows-11', 152000000, 0, 3, 1, 0, 0, '', '2023-05-31__unnamed-8.webp', 0, 0, 1, 0, '<p>- CPU: Intel Core i5-1235U<br />\r\n- M&agrave;n h&igrave;nh: 15.6&quot; IPS (1920 x 1080)<br />\r\n- RAM: 8GB Onboard GDDR4 3200MHz<br />\r\n- Đồ họa: Onboard Intel Iris Xe Graphics<br />\r\n- Lưu trữ: 512GB SSD M.2 NVMe /<br />\r\n- Hệ điều h&agrave;nh: Windows 11 Home<br />\r\n- 57 Wh<br />\r\n- Khối lượng: 1.8kg</p>', '<h2><a href=\"https://phongvu.vn/c/laptop\">Laptop</a>&nbsp;Lenovo Ideapad 5 - 15IAL7 -82SF006LVN l&agrave; một si&ecirc;u phẩm được đ&aacute;nh gi&aacute; cao trong ph&acirc;n kh&uacute;c tầm gi&aacute;. Chiếc m&aacute;y t&iacute;nh n&agrave;y được trang bị m&agrave;n h&igrave;nh hiển thị k&iacute;ch thước lớn, chất lượng h&igrave;nh ảnh sắc n&eacute;t c&ugrave;ng hiệu năng hoạt động ổn định đ&acirc;y sẽ l&agrave; &ldquo;người bạn&rdquo; đồng h&agrave;nh với bạn từ c&ocirc;ng việc đến giải tr&iacute;, thư gi&atilde;n.</h2>\r\n\r\n<p><img alt=\"Laptop Lenovo Ideapad 5 - 15IAL7 -82SF006LVN\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_cae13ea2-2695-4355-9e0d-fcf07c4b16f0.png\" /></p>\r\n\r\n<h3>Ngoại h&igrave;nh sang trọng, thiết kế đơn giản, mỏng nhẹ</h3>\r\n\r\n<p>Lenovo Ideapad 5 mang đến cho bạn một thiết kế tinh tế với đường n&eacute;t khung m&aacute;y vu&ocirc;ng vức. Lựa chọn&nbsp;<strong>m&agrave;u xanh</strong>&nbsp;l&agrave;m t&ocirc;ng m&agrave;u chủ đạo vừa mang đến vẻ đẹp tươi m&aacute;i vừa to&aacute;t l&ecirc;n vẻ sang trọng, cuốn h&uacute;t. Bản lề với thiết kế tỉ mỉ gi&uacute;p bạn dễ d&agrave;ng đ&oacute;ng gập m&aacute;y.</p>\r\n\r\n<p><img alt=\"Laptop Lenovo Ideapad 5 - 15IAL7 -82SF006LVN | Ngoại hình sang trọng\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_52c7f751-2308-4582-9db2-b8e31f0e2400.png\" /></p>\r\n\r\n<p>Sản phẩm nh&agrave; Lenovo c&oacute; trọng lượng chỉ&nbsp;<strong>1.8kg</strong>&nbsp;c&ugrave;ng th&ocirc;ng số k&iacute;ch thước&nbsp;<strong>35.667 x 23.313 x 1.69cm&nbsp;</strong>dễ d&agrave;ng để bạn c&oacute; thể cầm nắm. Bạn cũng c&oacute; thể dễ d&agrave;ng bỏ laptop trong balo, t&uacute;i x&aacute;ch mang đến nhiều nơi kh&aacute;c nhau để l&agrave;m việc hay học tập hiệu quả.</p>\r\n\r\n<h3>K&iacute;ch thước m&agrave;n h&igrave;nh hiển thị lớn, c&ocirc;ng nghệ chống l&oacute;a bảo vệ mắt người d&ugrave;ng</h3>\r\n\r\n<p>Laptop Ideapad 5 được trang bị một m&agrave;n h&igrave;nh lớn với k&iacute;ch thước&nbsp;<strong>15.6 inch&nbsp;</strong>c&ugrave;ng độ ph&acirc;n giải<strong>&nbsp;1920 x 1080px</strong>&nbsp;cho h&igrave;nh ảnh hiển thị sắc n&eacute;t với kh&ocirc;ng gian hiển thị rộng r&atilde;i. Tấm nền&nbsp;<strong>IPS</strong>&nbsp;hiện đại gi&uacute;p n&acirc;ng cao chất lượng khung h&igrave;nh nhờ độ tương phản cao c&ugrave;ng m&agrave;u sắc ch&acirc;n thực.</p>\r\n\r\n<p><img alt=\"Laptop Lenovo Ideapad 5 - 15IAL7 -82SF006LVN | Màn hình\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_f5339a18-9ae0-48e5-9e86-715e17e6350e.png\" /></p>\r\n\r\n<p>Nhằm mang đến cho người d&ugrave;ng những trải nghiệm h&agrave;i l&ograve;ng hơn hết&nbsp; Lenovo đ&atilde; sử dụng&nbsp;<strong>c&ocirc;ng nghệ chống l&oacute;a</strong>&nbsp;vừa đảm bảo chất lượng h&igrave;nh ảnh kh&ocirc;ng bị ảnh hưởng bởi &aacute;nh s&aacute;ng b&ecirc;n ngo&agrave;i vừa gi&uacute;p bảo vệ mắt.&nbsp;<strong>FHD Webcam</strong>&nbsp;được trang bị tr&ecirc;n g&oacute;c m&agrave;n h&igrave;nh dễ đ&aacute;p ứng nhu cầu kết nối trực tuyến với chất lượng h&igrave;nh ảnh truyền tải Full HD sắc n&eacute;t.</p>\r\n\r\n<h3>Hiệu năng hoạt động ấn tượng, chip đ&ocirc;̀ họa Intel Iris Xe Graphics</h3>\r\n\r\n<p><strong>Intel Core i5-1235U</strong>&nbsp;thế hệ thứ 12 được trang bị mang đến cho laptop Lenovo hiệu năng hoạt động mạnh mẽ. Với cấu tr&uacute;c đa nh&acirc;n đa luồng c&ugrave;ng bộ nhớ đệm&nbsp;<strong>12MB</strong>&nbsp;v&agrave; xung nhịp dao động&nbsp;<strong>1.3GHz - 4.4GHz&nbsp;</strong>cho khả năng xử l&yacute; nhanh ch&oacute;ng c&aacute;c t&aacute;c vụ, n&acirc;ng cao hiệu quả l&agrave;m việc một c&aacute;ch tối ưu.</p>\r\n\r\n<p><img alt=\"Laptop Lenovo Ideapad 5 - 15IAL7 -82SF006LVN | Hiệu năng, chip đồ họa\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_2669ca52-7cbe-4734-9f2a-4a3c2e302100.png\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, Ideapad 5 cũng được t&iacute;ch hợp th&ecirc;m chip đ&ocirc;̀ họa&nbsp;<strong>Intel Iris Xe Graphics</strong>. D&ograve;ng chip n&agrave;y cung cấp cho m&aacute;y khả năng xử l&yacute; hầu hết được c&aacute;c t&aacute;c vụ đồ họa một c&aacute;ch mượt m&agrave;, nhanh ch&oacute;ng. Bạn cũng c&oacute; thể tự m&igrave;nh trải nghiệm những tựa game giải tr&iacute; y&ecirc;u th&iacute;ch với chất lượng đồ họa m&atilde;n nh&atilde;n.</p>\r\n\r\n<h3>Đa nhiệm mượt m&agrave; với RAM 8GB Onboard, kh&ocirc;ng gian lưu trữ 512GB</h3>\r\n\r\n<p>Laptop Lenovo Ideapad 5 được sử dụng bộ nhớ RAM&nbsp;<strong>8GB Onboard&nbsp;</strong>đạt chuẩn&nbsp;<strong>GDDR4</strong>&nbsp;cung cấp bus ram l&ecirc;n đến&nbsp;<strong>3200MHz</strong>. Từ đ&oacute; gi&uacute;p xử l&yacute;&nbsp; nhanh ch&oacute;ng c&ugrave;ng l&uacute;c nhiều t&aacute;c vụ, phần mềm m&agrave; kh&ocirc;ng lo xảy ra t&igrave;nh trạng giật lag ảnh hưởng đến trải nghiệm.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Lenovo Ideapad 5 - 15IAL7 -82SF006LVN | Bộ nhớ\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_bd5bf5e8-e8f2-4dbb-8983-133e03433462.png\" /></p>\r\n\r\n<p>M&aacute;y t&iacute;nh Lenovo cung cấp cho người d&ugrave;ng một kh&ocirc;ng gian lưu trữ rộng lớn với dung lượng&nbsp;<strong>512GB</strong>&nbsp;gi&uacute;p bạn c&oacute; thể thoải m&aacute;i tải về những h&igrave;nh ảnh, video y&ecirc;u th&iacute;ch. Ngo&agrave;i ra, với d&ograve;ng ổ cứng SSD bạn c&oacute; thể nhanh ch&oacute;ng khởi động m&aacute;y, truy cập ứng dụng một c&aacute;ch dễ d&agrave;ng tiết kiệm thời gian xử l&yacute;.</p>\r\n\r\n<h3>B&agrave;n ph&iacute;m &ecirc;m &aacute;i đầy đủ ph&iacute;m số,&nbsp; pin dung lượng lớn</h3>\r\n\r\n<p>Lenovo đ&atilde; trang bị cho sản phẩm của m&igrave;nh một b&agrave;n ph&iacute;m&nbsp;<strong>full size</strong>&nbsp;c&oacute; đầy đủ ph&iacute;m số gi&uacute;p bạn dễ d&agrave;ng nhập liệu một c&aacute;ch nhanh ch&oacute;ng v&agrave; ch&iacute;nh x&aacute;c hơn. Ph&iacute;m được thiết kế tỉ mỉ cho trải nghiệm &ecirc;m &aacute;i v&agrave; độ bền bỉ cao. Touchpad với độ nhạy cao kh&ocirc;ng hề thua k&eacute;m những thiết bị chuột rời.</p>\r\n\r\n<p><img alt=\"Laptop Lenovo Ideapad 5 - 15IAL7 -82SF006LVN | Pin, bàn phím\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_02f12e75-5bfb-499f-bba8-a0fecbd317eb.png\" /></p>\r\n\r\n<p>Laptop Ideapad 5 được trang bị vi&ecirc;n pin c&oacute; dung lượng&nbsp;<strong>57 Wh</strong>&nbsp;đủ để cung cấp cho bạn thời lượng để sử dụng học tập v&agrave; l&agrave;m việc trong nhiều giờ. C&ocirc;ng nghệ sạc nhanh mang đến nhiều tiện &iacute;ch, bạn kh&ocirc;ng phải tốn thời gian chờ đợi qu&aacute; l&acirc;u l&agrave; đ&atilde; c&oacute; thể sử dụng thiết bị.</p>\r\n\r\n<h3>Trang bị đa dạng c&aacute;c cổng kết nối hiện đại, c&agrave;i đặt sẵn hệ điều h&agrave;nh tiện &iacute;ch</h3>\r\n\r\n<p>Laptop được c&agrave;i đặt sẵn hệ điều h&agrave;nh mới&nbsp;<strong>Windows 11 Home&nbsp;</strong>gi&uacute;p tiết kiệm tối ưu chi ph&iacute; c&agrave;i đặt. Bạn c&oacute; thể dễ d&agrave;ng sử dụng thiết bị v&agrave; trải nghiệm được nhiều tiện &iacute;ch mới mẻ nhờ hệ điều h&agrave;nh mới n&agrave;y.&nbsp;</p>\r\n\r\n<p><img alt=\"Laptop Lenovo Ideapad 5 - 15IAL7 -82SF006LVN | Win 11\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_4b215942-3b2d-4a49-9ebd-408e553e887d.png\" /></p>\r\n\r\n<p>M&aacute;y c&ograve;n được trang bị đầy đủ c&aacute;c cổng kết nối như&nbsp;<strong>USB Type C/ DisplayPort/ Data/ Power Delivery, USB 3.2, SD card slot&nbsp;</strong>hay cổng xuất h&igrave;nh<strong>&nbsp;HDMI</strong>. B&ecirc;n cạnh đ&oacute;, laptop Lenovo c&ograve;n được t&iacute;ch hợp th&ecirc;m c&aacute;c chuẩn kết nối kh&ocirc;ng d&acirc;y&nbsp;<strong>WiFi 802.11ax (Wifi 6), Bluetooth 5.2&nbsp;</strong>cho đường truyền ổn định c&ugrave;ng khả năng truyền tải dữ liệu tốc độ cao.</p>\r\n\r\n<p><img alt=\"Laptop Lenovo Ideapad 5 - 15IAL7 -82SF006LVN | Cổng kết nối\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/10/8/20221008_df0f33bd-e3b7-4b1f-bf3d-eef550cbe75f.png\" /></p>', 0, 0, 0, '2023-05-31 08:40:55', 20, NULL, NULL, 0, NULL, NULL),
(12, 'MacBook Pro 2018 13.3 inch MR9R2', 'macbook-pro-2018-133-inch-mr9r2', 48200000, 0, 6, 1, 0, 0, '', '2023-05-31__unnamed-9.webp', 0, 0, 1, 0, '<p>- CPU: Core i5 ( 2.3 GHz<br />\r\n- M&agrave;n h&igrave;nh: 13.3&quot; ( 2560 x 1600 ) , kh&ocirc;ng cảm ứng<br />\r\n- RAM: 8GB LPDDR3 2133MHz<br />\r\n- Đồ họa: Intel Iris Plus Graphics 650<br />\r\n- Lưu trữ: 512GB SSD<br />\r\n- Hệ điều h&agrave;nh: macOS<br />\r\n- Pin: Pin liền</p>', '<h2>Overview&nbsp;<a href=\"https://phongvu.vn/c/macbook\">Laptop Apple MacBook Pro 13.3&rdquo; MR9R2</a></h2>\r\n\r\n<h3>Sức mạnh lớn đi k&egrave;m với tiềm năng lớn.</h3>\r\n\r\n<p><img alt=\"Máy tính xách tay/ Laptop MacBook Pro 2018 13.3&quot; MR9R2 (Xám)| Sức mạnh đi kèm với tiềm năng lớn\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2021/10/11/20211011_2b0190a8-55c2-4047-baa0-d5dac4dc1eb0.jpg\" /></p>\r\n\r\n<p>MacBook Pro n&acirc;ng tầm kh&aacute;i niệm notebook l&ecirc;n một tầm cao mới, với hiệu năng v&agrave; t&iacute;nh di động chuẩn mực. C&ugrave;ng ph&aacute;c họa v&agrave; ph&aacute;t triển &yacute; tưởng của bạn nhanh hơn bao giờ hết, nhờ c&oacute; sự hỗ trợ của vi xử l&yacute; hiệu năng cao c&ugrave;ng với bộ nhớ, dung lượng lưu trữ v&agrave; đồ họa t&acirc;n tiến.</p>\r\n\r\n<h3>Th&ecirc;m &quot;m&atilde; lực&quot; tại trung t&acirc;m xử l&yacute;.</h3>\r\n\r\n<p><img alt=\"Máy tính xách tay/ Laptop MacBook Pro 2018 13.3&quot; MR9R2 (Xám) | Thêm mã lực trung tâm xử lý\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2021/10/11/20211011_7f197a03-8336-4a07-accb-3238963050e5.jpg\" /></p>\r\n\r\n<p>Với bộ xử l&yacute; Intel Core thế hệ thứ t&aacute;m, MacBook Pro đạt đến tầm cao mới về hiệu năng t&iacute;nh to&aacute;n. Model 15 inch hiện c&oacute; bộ xử l&yacute; Intel Core i9 6 nh&acirc;n, hoạt động nhanh hơn tới 70% so với thế hệ trước, cho ph&eacute;p tốc độ Turbo Boost l&ecirc;n tới 4,8 GHz.&nbsp;</p>\r\n\r\n<p>Trong khi đ&oacute;, bộ xử l&yacute; l&otilde;i tứ tr&ecirc;n Apple MacBook Pro 13.3&rdquo; MR9R2 với Touch Bar giờ đ&acirc;y gi&uacute;p n&oacute; nhanh gấp đ&ocirc;i so với thế hệ trước. V&igrave; vậy, khi thực hiện c&aacute;c c&ocirc;ng việc xử l&yacute; cấp độ như bi&ecirc;n dịch m&atilde;, kết xuất m&ocirc; h&igrave;nh 3D, th&ecirc;m hiệu ứng đặc biệt, xếp lớp nhiều bản nhạc hoặc m&atilde; h&oacute;a video, bạn sẽ ho&agrave;n th&agrave;nh mọi việc với tốc độ nhanh hơn.</p>\r\n\r\n<p><img alt=\"Máy tính xách tay/ Laptop MacBook Pro 2018 13.3&quot; MR9R2 (Xám) | Hình ảnh sắc nét\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2021/10/11/20211011_b27fa54d-8408-49e7-a42f-16d7ac1b633a.jpg\" /></p>\r\n\r\n<p><em>Retouch, edit, v&agrave; l&agrave;m việc với h&igrave;nh ảnh độ ph&acirc;n giải cao tr&ecirc;n Photoshop.</em></p>\r\n\r\n<p><img alt=\"Máy tính xách tay/ Laptop MacBook Pro 2018 13.3&quot; MR9R2 (Xám) | Khởi chạy nhiều máy ảo cùng lúc\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2021/10/11/20211011_2266bb22-4ebe-4b4f-8851-94964dfa7711.jpg\" /></p>\r\n\r\n<p><em>X&acirc;y dựng code, khởi chạy nhiều m&aacute;y ảo c&ugrave;ng một l&uacute;c v&agrave; ngắm nh&igrave;n th&agrave;nh quả l&agrave;m việc h&igrave;nh th&agrave;nh.</em></p>\r\n\r\n<p><img alt=\"Máy tính xách tay/ Laptop MacBook Pro 2018 13.3&quot; MR9R2 (Xám) | Trải nghiệm hiệu năng rendering mô hình 3D\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2021/10/11/20211011_51cb9a04-ea59-45b5-8c5e-5125e9d0b136.jpg\" /></p>\r\n\r\n<p><em>Trải nghiệm hiệu năng rendering m&ocirc; h&igrave;nh 3D tr&ecirc;n Cinema 4D theo thời gian thực một c&aacute;ch mượt m&agrave;.</em></p>\r\n\r\n<p><img alt=\"Máy tính xách tay/ Laptop MacBook Pro 2018 13.3&quot; MR9R2 (Xám)| Tận hưởng một tựa game đồ họa như Fortnite\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2021/10/11/20211011_669dc842-910e-4d25-bc1c-ccce919c1049.jpg\" /></p>\r\n\r\n<p><em>Tận hưởng một tựa game đồ họa như Fortnite với độ phản hồi nhạy b&eacute;n v&agrave; chi tiết h&igrave;nh ảnh sống động.</em></p>\r\n\r\n<p><img alt=\"Máy tính xách tay/ Laptop MacBook Pro 2018 13.3&quot; MR9R2 (Xám) | Hình ảnh sống động\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2021/10/11/20211011_821190dd-1f0b-4e36-8822-0f56fe25e4db.jpg\" /></p>\r\n\r\n<h3>Hiệu năng đồ họa đ&aacute;ng kinh ngạc.</h3>\r\n\r\n<p>Apple MacBook Pro 13.3&rdquo; MR9R2 với Touch Bar c&oacute; đồ họa t&iacute;ch hợp mạnh mẽ với 128 MB DRAM nh&uacute;ng - gấp đ&ocirc;i so với thế hệ trước - gi&uacute;p tăng tốc c&aacute;c t&aacute;c vụ đồ họa. Điều đ&oacute; c&oacute; nghĩa l&agrave; nhiều thời gian hơn cho những g&igrave; quan trọng nhất - tạo ra c&ocirc;ng việc tuyệt vời.</p>\r\n\r\n<p><img alt=\"Máy tính xách tay/ Laptop MacBook Pro 2018 13.3&quot; MR9R2 (Xám) | Hiệu năng đồ họa đáng kinh ngạc\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2021/10/11/20211011_20241467-02d8-429f-a979-d44df2a553ff.jpg\" /></p>\r\n\r\n<p><em><strong>Chip bảo mật Apple T2</strong></em></p>\r\n\r\n<h3>Một tầng cao mới của c&ocirc;ng nghệ bảo mật</h3>\r\n\r\n<p>Giới thiệu Chip bảo mật Apple T2 - silicon Mac t&ugrave;y chỉnh thế hệ thứ hai do Apple thiết kế để l&agrave;m cho MacBook Pro an to&agrave;n hơn nữa. Nổi bật tr&ecirc;n c&aacute;c mẫu 13 v&agrave; 15 inch với Touch Bar, Chip bảo mật Apple T2 bao gồm bộ đồng xử l&yacute; Secure Eniances cung cấp nền tảng cho khả năng khởi động v&agrave; lưu trữ được m&atilde; h&oacute;a an to&agrave;n. N&oacute; cũng hợp nhất nhiều bộ điều khiển ri&ecirc;ng biệt, bao gồm bộ điều khiển quản l&yacute; hệ thống, bộ điều khiển &acirc;m thanh v&agrave; bộ điều khiển SSD, th&agrave;nh một.</p>\r\n\r\n<p><em><strong>Thunderbolt 3</strong></em></p>\r\n\r\n<h3>Cổng kết nối tốc độ v&agrave; đa năng nhất từng xuất hiện.</h3>\r\n\r\n<p>Thunderbolt 3 tr&ecirc;n Apple MacBook Pro 13.3&rdquo; MR9R2 kết hợp băng th&ocirc;ng cực cao với t&iacute;nh linh hoạt cực cao của ti&ecirc;u chuẩn c&ocirc;ng nghiệp USB ‑ C để tạo ra một cổng phổ biến được n&acirc;ng cấp. N&oacute; t&iacute;ch hợp truyền dữ liệu, sạc v&agrave; đầu ra video trong một đầu nối duy nhất, cung cấp th&ocirc;ng lượng l&ecirc;n tới 40 Gbps cho băng th&ocirc;ng gấp đ&ocirc;i Thunderbolt 2. Cả hai k&iacute;ch thước của MacBook Pro đều c&oacute; sẵn với tối đa bốn cổng, do đ&oacute; bạn c&oacute; thể thực hiện tất cả điều đ&oacute; từ hai ph&iacute;a. C&aacute;c thiết bị hiện c&oacute; dễ d&agrave;ng kết nối với c&aacute;p hoặc bộ chuyển đổi. V&agrave; Thunderbolt 3 c&oacute; thể đảo ngược, do đ&oacute;, bất kể bạn cắm như thế n&agrave;o, n&oacute; lu&ocirc;n lu&ocirc;n hướng l&ecirc;n tr&ecirc;n.</p>\r\n\r\n<h3>Th&ecirc;m nhiều c&aacute;ch để l&agrave;m việc năng suất hơn</h3>\r\n\r\n<p><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2021/10/11/20211011_df3a2c00-8b4b-45d5-836d-2365c5201c5b.jpg\" /></p>\r\n\r\n<p>Touch Bar thay thế c&aacute;c ph&iacute;m chức năng đ&atilde; chiếm phần tr&ecirc;n b&agrave;n ph&iacute;m của bạn bằng một thứ linh hoạt v&agrave; c&oacute; khả năng hơn nhiều. N&oacute; tự động thay đổi dựa tr&ecirc;n những g&igrave; bạn đang l&agrave;m để hiển thị cho bạn c&aacute;c c&ocirc;ng cụ c&oacute; li&ecirc;n quan để sử dụng trực quan - điều khiển hệ thống như &acirc;m lượng v&agrave; độ s&aacute;ng, c&aacute;ch tương t&aacute;c để điều chỉnh hoặc duyệt qua nội dung v&agrave; c&aacute;c t&iacute;nh năng g&otilde; th&ocirc;ng minh như biểu tượng cảm x&uacute;c v&agrave; văn bản dự đo&aacute;n, chỉ để đặt t&ecirc;n cho một số.</p>\r\n\r\n<h3>Bảo mật ti&ecirc;n tiến. Ngay trong tầm tay của bạn.</h3>\r\n\r\n<p><img alt=\"Máy tính xách tay/ Laptop MacBook Pro 2018 13.3&quot; MR9R2 (Xám) | Bảo mật tiên tiến\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2021/10/11/20211011_f8279e63-a086-4fd1-8cd8-366586a36f31.jpg\" /></p>\r\n\r\n<p>Mở kh&oacute;a m&aacute;y Mac của bạn ngay lập tức. Nhanh ch&oacute;ng truy cập c&agrave;i đặt hệ thống v&agrave; ghi ch&uacute; bị kh&oacute;a. V&agrave; thậm ch&iacute; chuyển đổi giữa những người d&ugrave;ng - tất cả chỉ bằng một c&uacute; chạm ng&oacute;n tay.</p>\r\n\r\n<p><em><strong>H&igrave;nh ảnh v&agrave; &acirc;m thanh</strong></em></p>\r\n\r\n<h3>N&acirc;ng niu đ&ocirc;i mắt. Cưng nựng đ&ocirc;i tai.</h3>\r\n\r\n<p><img alt=\"Máy tính xách tay/ Laptop MacBook Pro 2018 13.3&quot; MR9R2 (Xám) | Nâng niu đôi mắt\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2021/10/11/20211011_1a050851-25dc-41a5-83d8-9ee17343605e.jpg\" /></p>\r\n\r\n<p>M&agrave;n h&igrave;nh Retina trong MacBook Pro l&agrave; m&agrave;n h&igrave;nh tốt nhất từ trước đến nay tr&ecirc;n m&aacute;y t&iacute;nh x&aacute;ch tay Mac. N&oacute; c&oacute; đ&egrave;n nền LED s&aacute;ng v&agrave; tỷ lệ tương phản cao, mang lại m&agrave;u đen s&acirc;u v&agrave; m&agrave;u trắng s&aacute;ng. N&oacute; hỗ trợ m&agrave;u rộng P3 cho m&agrave;u xanh l&aacute; c&acirc;y v&agrave; m&agrave;u đỏ rực rỡ hơn so với sRGB. Với Model Apple MacBook Pro 13.3&rdquo; MR9R2 Touch Bar c&oacute; c&ocirc;ng nghệ True Tone.&nbsp;</p>\r\n\r\n<p>C&acirc;n bằng trắng tự động điều chỉnh để ph&ugrave; hợp với nhiệt độ m&agrave;u của &aacute;nh s&aacute;ng xung quanh bạn - cho trải nghiệm xem tự nhi&ecirc;n hơn. MacBook Pro c&oacute; &acirc;m thanh c&acirc;n bằng đẹp, độ trung thực cao, gi&uacute;p nghe c&aacute;c cấp độ mới với dải động rộng v&agrave; nhiều &acirc;m trầm hơn để b&ugrave;ng nổ tối đa. V&agrave; c&aacute;c loa được kết nối trực tiếp với sức mạnh hệ thống, cho ph&eacute;p khuếch đại cực đại lớn hơn. V&igrave; vậy, bạn c&oacute; thể mix một bản nhạc, chỉnh sửa video hoặc thưởng thức một bộ phim tại bất cứ đ&acirc;u, bất cứ khi n&agrave;o.</p>\r\n\r\n<h3>Tập trung tuyệt đối với kh&ocirc;ng gian l&agrave;m việc tĩnh lặng</h3>\r\n\r\n<p>B&agrave;n ph&iacute;m MacBook Pro c&oacute; cơ chế c&aacute;nh bướm - cung cấp độ ổn định ph&iacute;m gấp bốn lần so với cơ chế cắt k&eacute;o truyền thống, c&ugrave;ng với sự thoải m&aacute;i hơn. Mẫu Apple MacBook Pro 13.3&rdquo; MR9R2 với Touch Bar giờ đ&acirc;y c&oacute; b&agrave;n ph&iacute;m với trải nghiệm g&otilde; &ecirc;m hơn. V&agrave; b&agrave;n di chuột Force Touch rộng r&atilde;i mang đến cho ng&oacute;n tay của bạn nhiều khoảng trống để cử chỉ v&agrave; nhấp chuột</p>', 0, 0, 0, '2023-05-31 08:44:15', 20, NULL, NULL, 0, NULL, NULL);
INSERT INTO `products` (`id`, `pro_name`, `pro_slug`, `pro_price`, `pro_price_entry`, `pro_category_id`, `pro_supplier_id`, `pro_admin_id`, `pro_sale`, `pro_file`, `pro_avatar`, `pro_view`, `pro_hot`, `pro_active`, `pro_pay`, `pro_description`, `pro_content`, `pro_review_total`, `pro_review_star`, `pro_age_review`, `created_at`, `pro_number`, `pro_resistant`, `pro_energy`, `pro_country`, `updated_at`, `pro_link`) VALUES
(13, 'Laptop HP Victus 16-e1107AX (7C140PA) (Ryzen 5 6600H/RAM 8GB/512GB SSD/ Windows 11)', 'laptop-hp-victus-16-e1107ax-7c140pa-ryzen-5-6600hram-8gb512gb-ssd-windows-11', 24800000, 0, 2, 1, 0, 0, '', '2023-05-31__unnamed-10.webp', 1, 0, 1, 1, '<p>- CPU: AMD Ryzen 5 6600H<br />\r\n- M&agrave;n h&igrave;nh: 16.1&quot; IPS (1920 x 1080),144Hz<br />\r\n- RAM: 1 x 8GB GDDR5 4800MHz<br />\r\n- Đồ họa: RTX 3050 4GB GDDR6 / AMD Radeon 660M<br />\r\n- Lưu trữ: 512GB SSD M.2 NVMe /<br />\r\n- Hệ điều h&agrave;nh: Windows 11 Home SL<br />\r\n- Pin: 4 cell 70 Wh Pin liền<br />\r\n- Khối lượng: 2.5kg</p>', '<h3><strong>Đ&aacute;nh gi&aacute; chi tiết Laptop gaming HP Victus 16-e1107AX: Thiết kế đẹp, cấu h&igrave;nh mạnh mẽ, bền bỉ v&agrave; th&acirc;n thiện với m&ocirc;i trường</strong></h3>\r\n\r\n<p>Trong thế giới của những người y&ecirc;u th&iacute;ch tr&ograve; chơi điện tử, việc sở hữu một chiếc laptop gaming chất lượng l&agrave; điều v&ocirc; c&ugrave;ng quan trọng. V&agrave; Laptop HP Victus 16-e1107AX ch&iacute;nh l&agrave; một trong số những sản phẩm được c&aacute;c game thủ tin d&ugrave;ng. Được HP - thương hiệu nổi tiếng trong lĩnh vực c&ocirc;ng nghệ - sản xuất, chiếc laptop n&agrave;y kh&ocirc;ng chỉ c&oacute; thiết kế đẹp mắt m&agrave; c&ograve;n được trang bị những t&iacute;nh năng hiện đại, cấu h&igrave;nh mạnh mẽ v&agrave; độ bền cao. Kh&ocirc;ng những thế, n&oacute; c&ograve;n đ&aacute;p ứng được c&aacute;c ti&ecirc;u chuẩn về chất lượng v&agrave; an to&agrave;n m&ocirc;i trường, l&agrave; một sự lựa chọn ho&agrave;n hảo cho những người d&ugrave;ng đang t&igrave;m kiếm một chiếc laptop đ&aacute;p ứng được nhu cầu chơi game của m&igrave;nh.</p>\r\n\r\n<p>H&atilde;y c&ugrave;ng Phong Vũ đ&aacute;nh gi&aacute; chi tiết về HP Victus 16-e1107AX trong b&agrave;i viết dưới đ&acirc;y nh&eacute;!</p>\r\n\r\n<h2><strong>Thiết kế đẹp mắt, bền bỉ - chất liệu bền vững</strong></h2>\r\n\r\n<p>Thiết kế của sản phẩm n&agrave;y được chăm ch&uacute;t đến từng chi tiết với t&ocirc;ng m&agrave;u đen c&aacute; t&iacute;nh kết hợp với m&agrave;u bạc &aacute;nh kim, mang đến sự sang trọng v&agrave; đẳng cấp cho người d&ugrave;ng. Chiếc laptop n&agrave;y được thiết kế kh&aacute; mỏng v&agrave; nhẹ k&iacute;ch thước bao gồm&nbsp;<strong>37 x 26 x</strong>&nbsp;<strong>2.35 cm</strong>&nbsp;v&agrave; trọng lượng chỉ&nbsp;<strong>2.4 kg</strong>, chiếc laptop n&agrave;y kh&aacute; mỏng v&agrave; nhẹ, dễ d&agrave;ng mang theo bất cứ đ&acirc;u.</p>\r\n\r\n<p><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/8/20230308_561d6193-f473-424d-af7c-5554dca23868.png\" /></p>\r\n\r\n<p>Hơn thế nữa, laptop HP Gaming 16-e1107AX được trang bị vật liệu tốt, gi&uacute;p tăng độ bền bỉ. Với&nbsp;<strong>Ocean-bound plastic&nbsp;</strong>(nhựa đại dương<strong>)</strong>&nbsp;trong viền m&aacute;y v&agrave; vỏ loa, c&ugrave;ng với&nbsp;<strong>keycaps</strong>(c&aacute;c ph&iacute;m tr&ecirc;n m&aacute;y t&iacute;nh) được l&agrave;m từ nhựa t&aacute;i chế, ch&iacute;nh v&igrave; chiếc m&aacute;y t&iacute;nh nh&agrave; HP n&agrave;y đ&oacute;ng g&oacute;p phần n&agrave;o v&agrave;o việc bảo vệ m&ocirc;i trường.</p>\r\n\r\n<h2><strong>Cấu h&igrave;nh mạnh mẽ - Hiệu suất chất lượng</strong></h2>\r\n\r\n<p>HP Victus 16-e1107AX được trang bị bộ vi xử l&yacute;&nbsp;<strong>AMD Ryzen&trade; 5 6600H</strong>, với tốc độ tối đa l&ecirc;n tới&nbsp;<strong>4.5 GHz</strong>&nbsp;v&agrave; bộ nhớ cache L3&nbsp;<strong>16 MB</strong>, đi k&egrave;m với&nbsp;<strong>6 nh&acirc;n v&agrave; 12 luồng</strong>, đảm bảo cho chiếc laptop hoạt động mượt m&agrave; v&agrave; nhanh ch&oacute;ng khi xử l&yacute; c&aacute;c t&aacute;c vụ đa nhiệm.</p>\r\n\r\n<p><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/8/20230308_72bf9127-0a4d-40be-9b10-efc2f8c82bfe.png\" /></p>\r\n\r\n<p>Để c&oacute; thể chơi game một c&aacute;ch li&ecirc;n tục v&agrave; hiệu quả, việc giải nhiệt l&agrave; rất quan trọng với hệ thống l&agrave;m m&aacute;t được t&iacute;ch hợp sẵn, người chơi c&oacute; thể y&ecirc;n t&acirc;m rằng chiếc HP Victus n&agrave;y sẽ kh&ocirc;ng bị qu&aacute; nhiệt khi chơi game trong thời gian d&agrave;i. Điều n&agrave;y gi&uacute;p người d&ugrave;ng c&oacute; thể chơi game một c&aacute;ch li&ecirc;n tục v&agrave; kh&ocirc;ng lo lắng về hiệu suất v&agrave; độ bền của m&aacute;y t&iacute;nh của m&igrave;nh.</p>\r\n\r\n<p>Ngo&agrave;i ra, chiếc laptop gaming n&agrave;y c&ograve;n được trang bị 8 GB DDR5-4800 MHz RAM, kết hợp với bộ nhớ SSD l&ecirc;n đến&nbsp;<strong>512 GB PCIe&reg; NVMe&trade; TLC M.2</strong>, gi&uacute;p cho việc lưu trữ v&agrave; truy cập dữ liệu nhanh ch&oacute;ng hơn bao giờ hết. Điều n&agrave;y rất hữu &iacute;ch khi bạn cần lưu trữ v&agrave; sử dụng</p>\r\n\r\n<h2><strong>M&agrave;n h&igrave;nh r&otilde; n&eacute;t - Mang lại tầm nh&igrave;n mới cho game thủ</strong></h2>\r\n\r\n<p>Về m&agrave;n h&igrave;nh, HP Gaming 16-e1107AX được trang bị m&agrave;n h&igrave;nh&nbsp;<strong>40.9 cm (16.1inch</strong>) đường ch&eacute;o, độ ph&acirc;n giải&nbsp;<strong>FHD (1920 x 1080)</strong>,&nbsp;<strong>144 Hz</strong>,&nbsp;<strong>IPS, micro-edge, chống ch&oacute;i, độ s&aacute;ng 250 nits, phủ m&agrave;u 45% NTSC</strong>. Với những th&ocirc;ng số n&agrave;y, người d&ugrave;ng sẽ được trải nghiệm h&igrave;nh ảnh r&otilde; n&eacute;t, sắc n&eacute;t v&agrave; đầy sắc m&agrave;u.</p>\r\n\r\n<p><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/8/20230308_f6611770-c1eb-4485-a91d-688561968738.png\" /></p>\r\n\r\n<h2><strong>Windows 11 - Mang đến kh&ocirc;ng gian l&agrave;m việc tuyệt vời</strong></h2>\r\n\r\n<p>Hệ điều h&agrave;nh&nbsp;<strong>Windows 11 Home SL</strong>&nbsp;tr&ecirc;n chiếc laptop HP Gaming Victus 16-e1107AX mang đến cho người d&ugrave;ng những trải nghiệm đầy tươi mới v&agrave; hiện đại. Với giao diện đẹp mắt, tốc độ xử l&yacute; nhanh ch&oacute;ng v&agrave; t&iacute;nh năng bảo mật cao, Windows 11 Home SL gi&uacute;p người d&ugrave;ng tận hưởng c&aacute;c ứng dụng, tr&ograve; chơi v&agrave; c&ocirc;ng việc một c&aacute;ch su&ocirc;n sẻ. Hơn nữa, hệ điều h&agrave;nh n&agrave;y c&ograve;n được t&iacute;ch hợp c&aacute;c c&ocirc;ng nghệ ti&ecirc;n tiến như&nbsp;<strong>Cortana, Microsoft Edge, Windows Hello</strong>, chạy đa nhiệm mượt m&agrave; v&agrave; hỗ trợ nhiều t&aacute;c vụ đồng thời. Tất cả những điều n&agrave;y gi&uacute;p người d&ugrave;ng c&oacute; thể l&agrave;m việc v&agrave; giải tr&iacute; một c&aacute;ch tuyệt vời tr&ecirc;n chiếc laptop HP Victus 16-e1107AX</p>\r\n\r\n<p><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/8/20230308_e3c7d5f3-cf75-4660-8e51-cec7dcc7d0c9.png\" /></p>\r\n\r\n<h2><strong>Đa dạng cổng kết nối v&agrave; t&iacute;nh năng tiện &iacute;ch</strong></h2>\r\n\r\n<p>Đối với HP 16-e1107AX, người d&ugrave;ng sẽ được trải nghiệm sự đa dạng của c&aacute;c cổng kết nối, bao gồm&nbsp;<strong>1 cổng USB Type-C&reg; 5Gbps</strong>&nbsp;hỗ trợ&nbsp;<strong>USB Power Delivery,</strong>&nbsp;<strong>DisplayPort&trade; 1.4 v&agrave; HP Sleep and Charge</strong>, c&ugrave;ng với 1 cổng USB Type-A 5Gbps hỗ trợ HP Sleep and Charge.&nbsp;</p>\r\n\r\n<p>Ngo&agrave;i ra, chiếc m&aacute;y t&iacute;nh n&agrave;y cũng được trang bị nhiều t&iacute;nh năng tiện &iacute;ch như Wi-Fi 6 v&agrave; Bluetooth 5.3 cho ph&eacute;p kết nối mạng v&agrave; c&aacute;c thiết bị kh&ocirc;ng d&acirc;y dễ d&agrave;ng, Trusted Platform Module (TPM) - M&ocirc;-đun nền tảng đ&aacute;ng tin cậy gi&uacute;p bảo vệ dữ liệu c&aacute; nh&acirc;n của người d&ugrave;ng, v&agrave; 25GB lưu trữ Dropbox miễn ph&iacute; trong 12 th&aacute;ng. Với b&agrave;n ph&iacute;m đầy đủ c&oacute; đ&egrave;n nền v&agrave; touchpad nhạy, HP 16-e1107AX mang lại sự tiện nghi v&agrave; thoải m&aacute;i trong khi sử dụng.</p>\r\n\r\n<p><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/8/20230308_4c91c8df-b861-489e-a9c3-3942e0e0b1b9.png\" /></p>\r\n\r\n<p><em><strong>Một số h&igrave;nh ảnh thực tế của Laptop Gaming HP Victus 16-e1107AX</strong></em></p>\r\n\r\n<p><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/8/20230308_6a286081-bf50-4baa-af76-9fcda367e1a8.jpg\" /></p>\r\n\r\n<p><img src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2023/3/8/20230308_f49b5bdb-9c9d-4f5d-a3ac-7d60a5830fa8.jpg\" /></p>', 0, 0, 0, '2023-05-31 13:52:15', 20, NULL, NULL, 0, NULL, NULL),
(14, 'Laptop ASUS Vivobook X1502ZA-BQ127W (i5-1240P/RAM 8GB/512GB SSD/ Windows 11)', 'laptop-asus-vivobook-x1502za-bq127w-i5-1240pram-8gb512gb-ssd-windows-11', 27500000, 0, 4, 1, 0, 0, '', '2023-05-31__unnamed-11.webp', 1, 0, 1, 0, '<p>- CPU: Intel Core i5-1240P<br />\r\n- M&agrave;n h&igrave;nh: 15.6&quot; IPS (1920 x 1080)<br />\r\n- RAM: 8GB Onboard DDR4<br />\r\n- Đồ họa: Onboard Intel Iris Xe Graphics<br />\r\n- Lưu trữ: 512GB SSD M.2 NVMe /<br />\r\n- Hệ điều h&agrave;nh: Windows 11 Home<br />\r\n- Pin: 3 cell 42 Wh Pin liền<br />\r\n- Khối lượng: 1.7kg</p>', '<h2><a href=\"https://phongvu.vn/laptop-scat.01-N001?categories=01-N001-97\">Laptop</a>&nbsp;Asus Vivobook X1502ZA-BQ127W ch&iacute;nh l&agrave; mẫu laptop cao cấp thuộc d&ograve;ng Vivobook đến từ thương hiệu Asus kh&ocirc;ng qu&aacute; xa lạ với người d&ugrave;ng. Sở hữu kiểu d&aacute;ng kh&aacute; đơn giản gọn nhẹ bắt kịp với xu hướng c&ugrave;ng hiệu năng vượt trội trong tầm gi&aacute; hứa hẹn sẽ l&agrave;m h&agrave;i l&ograve;ng c&aacute;c bạn văn ph&ograve;ng hoặc học sinh - sinh vi&ecirc;n.</h2>\r\n\r\n<p><img alt=\"Laptop ASUS Vivobook X1502ZA-BQ127W\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/8/20/20220820_3c1c26b7-a932-4aa7-a6aa-82c13e5363aa.png\" /></p>\r\n\r\n<h3>Kiểu d&aacute;ng mang phong c&aacute;ch đơn giản gọn nhẹ tiện lợi</h3>\r\n\r\n<p>Laptop Asus Vivobook sở hữu kiểu d&aacute;ng nhỏ gọn với k&iacute;ch thước&nbsp;<strong>35.97x23.25x1.99cm</strong>, kết hợp c&ugrave;ng với gam&nbsp;<strong>m&agrave;u xanh</strong>&nbsp;<strong>trẻ trung</strong>&nbsp;mang đến sự tươi mới độc đ&aacute;o. C&ugrave;ng với đ&oacute;, laptop Asus c&oacute; khối lượng&nbsp;<strong>si&ecirc;u nhẹ</strong>&nbsp;chỉ khoảng&nbsp;<strong>1.7kg</strong>&nbsp;cho ph&eacute;p người d&ugrave;ng c&oacute; thể dễ d&agrave;ng mang theo b&ecirc;n m&igrave;nh ph&ugrave; hợp với người hay di chuyển nhiều.</p>\r\n\r\n<p><img alt=\"Laptop ASUS Vivobook X1502ZA-BQ127W | Thiết kế nhỏ gọn\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/8/20/20220820_a18e11ad-1969-44af-9662-5c6f2f6840b4.png\" /></p>\r\n\r\n<h3>M&agrave;n h&igrave;nh ti&ecirc;u chuẩn Full HD hiển thị r&otilde; n&eacute;t h&igrave;nh ảnh, viền m&agrave;n h&igrave;nh mỏng c&acirc;n đối tạo g&oacute;c nh&igrave;n rộng</h3>\r\n\r\n<p>Vivobook được nh&agrave; Asus trang bị cho tấm nền&nbsp;<strong>IPS Full HD 15.6 inch</strong>&nbsp;cho chất lượng h&igrave;nh ảnh hiển thị được r&otilde; n&eacute;t, m&agrave;u sắc ch&acirc;n thực với độ chi tiết cao. Với m&agrave;n h&igrave;nh n&agrave;y c&oacute; thể đ&aacute;p ứng được c&aacute;c nhu cầu của đại đa số người d&ugrave;ng về nhu cầu l&agrave;m việc v&agrave; giải tr&iacute;.</p>\r\n\r\n<p><img alt=\"Laptop ASUS Vivobook X1502ZA-BQ127W | Màn hình sắc nét\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/8/20/20220820_9f628023-95cc-47ed-be9a-8865d432a182.png\" /></p>\r\n\r\n<p>M&aacute;y t&iacute;nh x&aacute;ch tay Asus Vivobook X1502ZA sở hữu viền m&agrave;n h&igrave;nh được v&aacute;c mỏng đều hai b&ecirc;n c&acirc;n đối, kết hợp với c&aacute;c g&oacute;c m&agrave;n h&igrave;nh được thiết kế vu&ocirc;ng vức gi&uacute;p cho tổng thể chiếc laptop trở n&ecirc;n ho&agrave;n hảo. Laptop n&agrave;y sở hữu&nbsp;<strong>viền m&agrave;n h&igrave;nh mỏng</strong>, gi&uacute;p tạo cảm gi&aacute;c nh&igrave;n rộng hơn từ nhiều ph&iacute;a.</p>\r\n\r\n<h3>Cấu h&igrave;nh mạnh mẽ bởi Intel Core i5-1240P thế hệ mới, t&iacute;ch hợp chip đồ họa Intel Iris Xe Graphics</h3>\r\n\r\n<p>Vivobook được trang bị cấu h&igrave;nh mạnh mẽ vượt trội nhờ CPU&nbsp;<strong>Intel Core i5-1240P</strong>&nbsp;thế hệ thứ 12. Với&nbsp;<strong>12 nh&acirc;n 16 luồng</strong>, bộ nhớ đệm 12MB cho tốc độ xung nhịp mạnh mẽ l&ecirc;n đến&nbsp;<strong>4.4GHz</strong>&nbsp;cho ph&eacute;p người d&ugrave;ng c&oacute; thể thoải m&aacute;i thao t&aacute;c với c&aacute;c t&aacute;c vụ văn ph&ograve;ng mượt m&agrave; hoặc sử phần mềm chỉnh sửa h&igrave;nh ảnh ở mức cơ bản.</p>\r\n\r\n<p><img alt=\"Laptop ASUS Vivobook X1502ZA-BQ127W | Cấu hình mạnh mẽ\" src=\"https://storage.googleapis.com/teko-gae.appspot.com/media/image/2022/8/20/20220820_9dbd540a-85c6-450d-8533-9c3945e8b56c.png\" /></p>\r\n\r\n<p>B&ecirc;n cạnh đ&oacute;, m&aacute;y t&iacute;nh x&aacute;ch tay Asus Vivobook c&ograve;n t&iacute;ch hợp chip đồ họa<strong>&nbsp;Intel Iris Xe Graphics</strong>, gi&uacute;p hỗ trợ tối ưu h&oacute;a chất lượng h&igrave;nh ảnh hiển thị nhưng vẫn đảm bảo t&iacute;nh ổn định v&agrave; tiết kiệm điện năng. Người d&ugrave;ng c&oacute; thể thoải m&aacute;i tận hưởng những thước phim gay cấn.</p>\r\n\r\n<h3>Lưu trữ thoải m&aacute;i với 512GB SSD chuẩn M.2 NVMe, đa nhiệm mượt m&agrave; nhờ RAM 8GB c&oacute; hỗ trợ n&acirc;ng cấp</h3>\r\n\r\n<p>Laptop Asus Vivobook đ&aacute;p ứng tốt nhu cầu lưu trữ của người d&ugrave;ng nhờ trang bị dung lượng ROM l&ecirc;n đến<strong>&nbsp;512GB</strong>&nbsp;<strong>SSD&nbsp;</strong>chuẩn M.2 NVMe. Người d&ugrave;ng sẽ kh&ocirc;ng cần lo nghĩ nhiều về việc tr&agrave;n bộ nhớ khi d&ugrave;ng chiếc laptop n&agrave;y, chuẩn SSD c&ograve;n gi&uacute;p khởi động m&aacute;y nhanh hơn nữa.</p>', 1, 5, 5, '2023-05-31 13:55:29', 20, NULL, NULL, 0, '2023-05-31 14:07:37', NULL),
(15, 'Laptop Gaming Gigabyte G5 GD 51VN123SO i5-11400H | 16GB | 512GB SSD | 15.6\" FHD | RTX3050 4GB | Win11 (Black)', 'laptop-gaming-gigabyte-g5-gd-51vn123so-i5-11400h-16gb-512gb-ssd-156-fhd-rtx3050-4gb-win11-black', 22300000, 0, 7, 1, 0, 0, '', '2023-05-31__1-70172ddeb6054c409b623ac3dc77b5c0-master.webp', 1, 0, 1, 0, '<table border=\"1\" cellspacing=\"0\">\r\n	<tbody>\r\n		<tr>\r\n			<td>\r\n			<p><strong>CPU</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>Intel Core i5-11400H&nbsp;upto 4.50GHz, 6 nh&acirc;n 12 luồng</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>RAM</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>16GB (2x8GB)&nbsp;DDR4-3200Mhz&nbsp;(2 khe ram, n&acirc;ng cấp tối đa 64GB RAM)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Ổ cứng</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>512GB&nbsp;SSD M.2 PCIE&nbsp;G4X4 (C&ograve;n trống 1 khe SSD M.2 PCIE v&agrave; 1 khe 2.5&quot;&nbsp;SATA)</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>Card đồ họa</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>NVIDIA GeForce RTX 3050&nbsp;4GB GDDR6 + Intel UHD Graphics</p>\r\n			</td>\r\n		</tr>\r\n		<tr>\r\n			<td>\r\n			<p><strong>M&agrave;n h&igrave;nh</strong></p>\r\n			</td>\r\n			<td>\r\n			<p>15.6 inch Thin Bezel FHD (1920x1080) IPS-level Anti-glare Display LCD, 144Hz, ~90% sRGB</p>\r\n			</td>\r\n		</tr>\r\n	</tbody>\r\n</table>', '<h2><strong>Laptop Gaming Gigabyte G5 GD 51VN123SO i5-11400H | 16GB | 512GB SSD | 15.6&quot; FHD | RTX3050 4GB | Win11 (Black)</strong></h2>\r\n\r\n<p>Gigabyte G5 GD 51VN123SO sở hữu vẻ ngo&agrave;i đơn giản, thời thượng với khung m&aacute;y m&agrave;u đen x&aacute;m, mang đến cảm gi&aacute;c mạnh mẽ, hiện đại v&agrave; sang trọng. V&igrave; một chiếc laptop chơi game n&ecirc;n kh&ocirc;ng c&oacute; g&igrave; lạ khi Gigabyte G5 GD lại c&oacute; vẻ ngo&agrave;i hầm hố v&agrave; bụ bẫm như thế. Nhưng trọng lượng m&aacute;y đ&acirc;u đ&oacute; chỉ khoảng 2,2kg, bạn c&oacute; thể dễ d&agrave;ng mang m&aacute;y t&iacute;nh đi bất cứ đ&acirc;u. B&ecirc;n cạnh đ&oacute;, bạn c&oacute; thể custom cho &quot;hắc chiến binh&quot; của m&igrave;nh bằng hệ thống đ&egrave;n nền b&agrave;n ph&iacute;m với 15 chế độ m&agrave;u sắc kh&aacute;c nhau, tự tin khoe c&aacute; t&iacute;nh.</p>\r\n\r\n<h3><strong>Hiệu năng chiến game mạnh mẽ</strong></h3>\r\n\r\n<p>Được trang bị bộ vi xử l&yacute; Intel Core i5 thế hệ 11, d&ograve;ng chip H hiệu năng cao cấp c&ugrave;ng với sức mạnh của 6 nh&acirc;n 12 luồng, tốc độ tối đa c&oacute; thể l&ecirc;n tới 4.5GHz, laptop gaming Gigabyte G5 GD c&oacute; thể c&acirc;n mọi tựa game nặng tr&ecirc;n thị trường hiện nay với c&agrave;i đặt đồ họa cao nhất, streaming, chạy đa t&aacute;c vụ chuy&ecirc;n nghiệp một c&aacute;ch si&ecirc;u mượt m&agrave; kh&ocirc;ng xảy ra hiện tượng giật, lag kh&oacute; chịu.</p>\r\n\r\n<p>Song song đ&oacute;, 16GB RAM v&agrave; 512GB SSD gi&uacute;p qu&aacute; tr&igrave;nh xử l&yacute; v&agrave; truy cập dữ liệu được diễn ra nhanh ch&oacute;ng v&agrave; hiệu quả hơn. Bạn cũng c&oacute; thể thoải m&aacute;i lưu trữ mọi ứng dụng nặng hay t&agrave;i liệu trong m&aacute;y t&iacute;nh của m&igrave;nh.</p>\r\n\r\n<h3><strong>Card đồ họa cao cấp cấu tr&uacute;c Ampere</strong></h3>\r\n\r\n<p>Laptop Gigabyte G5 GD được trang bị card đồ họa NVIDIA GeForce&nbsp;RTX 3050&nbsp;cấu tr&uacute;c Ampere. Mọi h&igrave;nh ảnh đồ họa tr&ecirc;n game sẽ hiển thị đ&uacute;ng như những g&igrave; designer mong muốn nhờ sự hỗ trợ của c&aacute;c c&ocirc;ng nghệ h&agrave;ng đầu như d&ograve; tia theo thời gian thực, tr&iacute; tuệ nh&acirc;n tạo AI v&agrave; lập tr&igrave;nh đổ b&oacute;ng, bạn sẽ c&oacute; được những trải nghiệm chơi game từ trước đến nay chưa từng c&oacute;. Hơn nữa, &aacute;nh s&aacute;ng được m&ocirc; phỏng tr&ecirc;n m&agrave;n h&igrave;nh Gigabyte G5 GD cũng v&ocirc; c&ugrave;ng ch&acirc;n thật, kết hợp với đ&oacute; l&agrave; c&ocirc;ng nghệ NVIDIA DLSS n&acirc;ng chất lượng khung h&igrave;nh, n&acirc;ng cấp hiệu suất chơi game của bạn l&ecirc;n nhiều lần.</p>\r\n\r\n<h3><strong>M&agrave;n h&igrave;nh chuy&ecirc;n game đ&uacute;ng chuẩn</strong></h3>\r\n\r\n<p>Với hiệu năng phần cứng v&agrave; đồ họa vượt trội như vậy th&igrave; m&agrave;n h&igrave;nh của laptop cũng n&ecirc;n được đầu tư hẳn hoi để c&oacute; thể ph&aacute;t huy to&agrave;n bộ sức mạnh của laptop. V&agrave; tất nhi&ecirc;n m&agrave;n h&igrave;nh của Gigabyte G5 GD sẽ kh&ocirc;ng khiến người d&ugrave;ng thất vọng. Với k&iacute;ch thước m&agrave;n h&igrave;nh 15.67 inch, độ ph&acirc;n giải Full HD v&agrave; viền m&agrave;n h&igrave;nh si&ecirc;u mỏng mang đến cảm gi&aacute;c đắm ch&igrave;m hơn bao giờ hết.</p>\r\n\r\n<p>Tần số qu&eacute;t m&agrave;n h&igrave;nh 144Hz ti&ecirc;u chuẩn loại bỏ ho&agrave;n to&agrave;n hiện tượng giật lag m&agrave;n h&igrave;nh, h&igrave;nh ảnh hiển thị v&ocirc; c&ugrave;ng liền mạch v&agrave; sống động. Bạn sẽ đ&oacute;n đầu mọi chuyển động của đối thủ v&agrave; dễ d&agrave;ng l&agrave;m chủ mọi cuộc chơi.</p>\r\n\r\n<h3><strong>Hệ thống tản nhiệt WindForce độc quyền</strong></h3>\r\n\r\n<p>Tản nhiệt&nbsp;lu&ocirc;n l&agrave; một vấn đề nan giải ở những chiếc laptop gaming v&igrave; n&oacute; l&agrave; nguy&ecirc;n nh&acirc;n khiến laptop chơi game của bạn kh&ocirc;ng thể đạt tối đa hiệu suất. Biết được điều đ&oacute; n&ecirc;n Gigabyte G5 GD đ&atilde; trang bị hệ thống tản nhiệt WindForce độc quyền, hiệu suất l&agrave;m m&aacute;t tổng thể l&ecirc;n đến 150W. Laptop sử dụng quạt 5V - 47 c&aacute;nh quay li&ecirc;n tục để đẩy kh&ocirc;ng kh&iacute; n&oacute;ng ra ngo&agrave;i. Cả CPU v&agrave; GPU sẽ lu&ocirc;n được l&agrave;m m&aacute;t để thể hiện hết c&ocirc;ng suất 100% trong suốt qu&aacute; tr&igrave;nh sử dụng.</p>\r\n\r\n<h3><strong>Hệ thống &acirc;m thanh DTS: X Ultra chất lượng</strong></h3>\r\n\r\n<p>Đ&acirc;y c&oacute; lẽ l&agrave; chiếc laptop chơi game đầu ti&ecirc;n được Gigabyte t&iacute;ch hợp hệ thống &acirc;m thanh DTS: X Ultra chất lượng đến thế. &Acirc;m thanh v&ograve;m ảo c&oacute; chiều s&acirc;u đ&iacute;ch thực v&agrave; những c&ocirc;ng nghệ h&agrave;ng đầu đi k&egrave;m cho hiệu suất &acirc;m thanh vượt trội. Tuy game thủ lu&ocirc;n c&oacute; xu hướng sử dụng&nbsp;tai nghe gaming&nbsp;rời để cải thiện trải nghiệm chơi game nhưng chất lượng &acirc;m thanh DTS: X Ultra sẽ khiến bạn bất ngờ bởi hiệu ứng &acirc;m thanh v&ograve;m 3D si&ecirc;u thực. B&ecirc;n cạnh đ&oacute;, t&iacute;nh năng chống ồn AI hai chiều gi&uacute;p loại bỏ tạp &acirc;m một c&aacute;ch hiệu quả để bạn giao tiếp với đồng đội r&otilde; r&agrave;ng hơn bao giờ hết.</p>', 0, 0, 0, '2023-05-31 13:58:06', 20, NULL, NULL, 0, NULL, NULL),
(16, 'MACBOOK PRO V14', 'macbook-pro-v14', 48700000, 0, 6, 1, 0, 0, '', '2023-05-31__250-21050-apple-macbook-pro-14-m1-z15g001mg.jpg', 0, 1, 1, 0, '<p>Ram : 32GB</p>\r\n\r\n<p>Ổ Cứng 512GB</p>', '<p>aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</p>', 0, 0, 0, '2023-05-31 14:13:28', 20, NULL, NULL, 0, '2023-05-31 14:13:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_attributes`
--

CREATE TABLE `products_attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pa_product_id` int(11) NOT NULL DEFAULT 0,
  `pa_attribute_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products_attributes`
--

INSERT INTO `products_attributes` (`id`, `pa_product_id`, `pa_attribute_id`) VALUES
(3, 1, 3),
(4, 1, 13),
(5, 2, 3),
(6, 2, 13),
(9, 3, 2),
(10, 3, 10),
(11, 4, 2),
(12, 4, 10),
(13, 5, 3),
(14, 5, 14),
(15, 6, 3),
(16, 6, 14),
(17, 7, 2),
(18, 7, 11),
(19, 8, 2),
(20, 8, 11),
(21, 9, 2),
(22, 9, 15),
(23, 10, 2),
(24, 10, 15),
(25, 11, 2),
(26, 11, 12),
(27, 12, 3),
(28, 12, 14),
(29, 13, 3),
(30, 13, 15),
(31, 14, 2),
(32, 14, 11),
(33, 15, 2),
(34, 15, 16),
(35, 16, 3),
(36, 16, 14);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products_keywords`
--

CREATE TABLE `products_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pk_product_id` int(11) NOT NULL DEFAULT 0,
  `pk_keyword_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_images`
--

CREATE TABLE `product_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pi_name` varchar(191) DEFAULT NULL,
  `pi_slug` varchar(191) DEFAULT NULL,
  `pi_product_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `r_user_id` int(11) NOT NULL DEFAULT 0,
  `r_product_id` int(11) NOT NULL DEFAULT 0,
  `r_number` tinyint(4) NOT NULL DEFAULT 0,
  `r_status` tinyint(4) NOT NULL DEFAULT 0,
  `r_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ratings`
--

INSERT INTO `ratings` (`id`, `r_user_id`, `r_product_id`, `r_number`, `r_status`, `r_content`, `created_at`, `updated_at`) VALUES
(1, 2, 14, 5, 0, 'Quá OK', '2023-05-31 14:07:37', '2023-05-31 14:07:37');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slides`
--

CREATE TABLE `slides` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sd_title` varchar(191) DEFAULT NULL,
  `sd_link` varchar(191) DEFAULT NULL,
  `sd_image` varchar(191) DEFAULT NULL,
  `sd_target` tinyint(4) NOT NULL DEFAULT 1,
  `sd_active` tinyint(4) NOT NULL DEFAULT 1,
  `sd_sort` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `slides`
--

INSERT INTO `slides` (`id`, `sd_title`, `sd_link`, `sd_image`, `sd_target`, `sd_active`, `sd_sort`, `created_at`, `updated_at`) VALUES
(1, 'Slide 1', 'https://www.google.com/', '2023-05-31__10-ngay-sieu-sale-laptop-dell-sang-trng-mng-nh-gim-gia-dn-50-tng-ni-chien-khong-du-lo-d6804aa4.webp', 1, 1, 0, '2023-05-31 01:43:33', '2023-05-31 01:43:33'),
(2, 'Slide 2', 'https://www.google.com/', '2023-05-31__0331-laptophp-tin-tuc.jpg', 1, 1, 0, '2023-05-31 01:40:55', NULL),
(3, 'Slide 3', 'https://www.google.com/', '2023-05-31__photo-1-1632287825134421040141.jpg', 1, 1, 0, '2023-05-31 01:41:40', NULL),
(4, 'Slide 4', 'https://www.google.com/', '2023-05-31__637124481852258045-nfnerc-at-2x.png', 1, 1, 0, '2023-05-31 01:43:03', NULL),
(5, 'Slide 5', 'https://www.google.com/', '2023-05-31__banner-thanhlymaytinhnet.jpg', 1, 1, 0, '2023-05-31 01:44:48', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_accounts`
--

CREATE TABLE `social_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_user_id` varchar(191) NOT NULL,
  `user_id` varchar(191) NOT NULL,
  `provider` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `statics`
--

CREATE TABLE `statics` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `s_title` varchar(191) DEFAULT NULL,
  `s_slug` varchar(191) DEFAULT NULL,
  `s_type` tinyint(4) NOT NULL DEFAULT 0,
  `s_md5` varchar(191) DEFAULT NULL,
  `s_content` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `statics`
--

INSERT INTO `statics` (`id`, `s_title`, `s_slug`, `s_type`, `s_md5`, `s_content`, `created_at`, `updated_at`) VALUES
(1, 'Hướng Dẫn Mua Hàng', NULL, 1, NULL, '<p>Bấm v&agrave;o sản phẩm click mua ngay</p>', '2023-05-31 14:15:43', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `supplieres`
--

CREATE TABLE `supplieres` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sl_name` varchar(191) DEFAULT NULL,
  `sl_phone` varchar(191) DEFAULT NULL,
  `sl_email` varchar(191) DEFAULT NULL,
  `sl_address` varchar(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `supplieres`
--

INSERT INTO `supplieres` (`id`, `sl_name`, `sl_phone`, `sl_email`, `sl_address`, `created_at`, `updated_at`) VALUES
(1, 'Laptop Sài Gòn', '099999999', 'laptopsg@gmail.com', 'Quận 2,Tp. Hồ Chí Minh (TPHCM)', '2023-05-31 02:14:44', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tst_user_id` int(11) NOT NULL DEFAULT 0,
  `tst_admin_id` int(11) NOT NULL DEFAULT 0,
  `tst_total_money` int(11) NOT NULL DEFAULT 0,
  `tst_name` varchar(191) DEFAULT NULL,
  `tst_email` varchar(191) DEFAULT NULL,
  `tst_phone` varchar(191) DEFAULT NULL,
  `tst_address` varchar(191) DEFAULT NULL,
  `tst_note` varchar(191) DEFAULT NULL,
  `tst_status` tinyint(4) NOT NULL DEFAULT 1,
  `tst_type` tinyint(4) NOT NULL DEFAULT 1 COMMENT ' 1 thanh toan thuong, 2 la thanh toan online',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `transactions`
--

INSERT INTO `transactions` (`id`, `tst_user_id`, `tst_admin_id`, `tst_total_money`, `tst_name`, `tst_email`, `tst_phone`, `tst_address`, `tst_note`, `tst_status`, `tst_type`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 86891000, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '0123456789', '55A Điện Biên Phủ TP Hồ Chí Minh', 'GIAO VÀO GIỜ HÀNH CHÁNH', 3, 2, '2023-05-31 06:32:06', '2023-05-31 06:32:14'),
(2, 2, 0, 24800000, 'Nguyễn Thành Trung', 'nguyenthanhtrung@gmail.com', '0999999999', '55A Điện Biên Phủ TP Hồ Chí Minh', 'OK', 3, 2, '2023-05-31 14:08:35', '2023-05-31 14:09:37'),
(3, 2, 1, 21156000, 'Nguyễn Thành Trung', 'nguyenthanhtrung@gmail.com', '0999999999', '55A Điện Biên Phủ TP Hồ Chí Minh', 'OK', 3, 2, '2023-05-31 14:09:54', '2023-05-31 14:14:48');

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
  `phone` varchar(191) NOT NULL,
  `balance` int(11) NOT NULL DEFAULT 0,
  `log_login` text DEFAULT NULL,
  `count_comment` tinyint(4) NOT NULL DEFAULT 0,
  `address` varchar(191) DEFAULT NULL,
  `avatar` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `phone`, `balance`, `log_login`, `count_comment`, `address`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', NULL, '$2y$10$zXdrvwcP8Hao0rfQCD.M6upj4eYKGl4KKLfnYsm1cBhlADl83fihG', '0123456789', -86891000, NULL, 0, 'Điện Biên Phủ HCM', NULL, NULL, '2023-05-31 06:31:19', '2023-05-31 06:33:04'),
(2, 'Nguyễn Thành Trung', 'nguyenthanhtrung@gmail.com', NULL, '$2y$10$wb6V55nNrKULBrTyetJrT.ZKsxmd.FUOaeWfiTvvaBb7036A2V/nG', '0999999999', -21156000, NULL, 1, '225 Điện Biên Phủ Bình Thạnh HCM', '2023-05-31__images.jpg', NULL, '2023-05-31 14:06:16', '2023-05-31 14:10:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_favourite`
--

CREATE TABLE `user_favourite` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uf_product_id` int(11) NOT NULL DEFAULT 0,
  `uf_user_id` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `warehouses`
--

CREATE TABLE `warehouses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `w_product_id` int(11) NOT NULL,
  `w_price` int(11) NOT NULL DEFAULT 0,
  `w_qty` int(11) NOT NULL DEFAULT 0,
  `w_time_warehouse` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`),
  ADD UNIQUE KEY `admins_phone_unique` (`phone`);

--
-- Chỉ mục cho bảng `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_a_slug_index` (`a_slug`),
  ADD KEY `articles_a_hot_index` (`a_hot`),
  ADD KEY `articles_a_active_index` (`a_active`),
  ADD KEY `articles_a_menu_id_index` (`a_menu_id`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `attributes_atb_name_unique` (`atb_name`),
  ADD KEY `attributes_atb_category_id_index` (`atb_category_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_c_slug_unique` (`c_slug`),
  ADD KEY `categories_c_parent_id_index` (`c_parent_id`);

--
-- Chỉ mục cho bảng `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `comments_cmt_parent_id_index` (`cmt_parent_id`),
  ADD KEY `comments_cmt_product_id_index` (`cmt_product_id`),
  ADD KEY `comments_cmt_admin_id_index` (`cmt_admin_id`),
  ADD KEY `comments_cmt_user_id_index` (`cmt_user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `discount_code_d_code_unique` (`d_code`);

--
-- Chỉ mục cho bảng `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `exports`
--
ALTER TABLE `exports`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exports_w_order_id_index` (`w_order_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keywords_k_slug_unique` (`k_slug`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_mn_slug_unique` (`mn_slug`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `pay_histories`
--
ALTER TABLE `pay_histories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pay_histories_ph_code_unique` (`ph_code`),
  ADD KEY `index_code_user_id` (`ph_code`,`ph_user_id`),
  ADD KEY `pay_histories_ph_user_id_index` (`ph_user_id`);

--
-- Chỉ mục cho bảng `pay_ins`
--
ALTER TABLE `pay_ins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_ins_pi_user_id_index` (`pi_user_id`),
  ADD KEY `pay_ins_pi_admin_id_index` (`pi_admin_id`);

--
-- Chỉ mục cho bảng `pay_outs`
--
ALTER TABLE `pay_outs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pay_outs_po_user_id_index` (`po_user_id`),
  ADD KEY `pay_outs_po_transaction_id_index` (`po_transaction_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_pro_slug_unique` (`pro_slug`),
  ADD KEY `products_pro_hot_index` (`pro_hot`),
  ADD KEY `products_pro_active_index` (`pro_active`),
  ADD KEY `products_pro_supplier_id_index` (`pro_supplier_id`);

--
-- Chỉ mục cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_attributes_pa_product_id_index` (`pa_product_id`),
  ADD KEY `products_attributes_pa_attribute_id_index` (`pa_attribute_id`);

--
-- Chỉ mục cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_keywords_pk_product_id_index` (`pk_product_id`),
  ADD KEY `products_keywords_pk_keyword_id_index` (`pk_keyword_id`);

--
-- Chỉ mục cho bảng `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_accounts_provider_user_id_provider_unique` (`provider_user_id`,`provider`);

--
-- Chỉ mục cho bảng `statics`
--
ALTER TABLE `statics`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tst_user_id_index` (`tst_user_id`),
  ADD KEY `transactions_tst_admin_id_index` (`tst_admin_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`),
  ADD KEY `users_balance_index` (`balance`);

--
-- Chỉ mục cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_favourite_uf_product_id_uf_user_id_unique` (`uf_product_id`,`uf_user_id`);

--
-- Chỉ mục cho bảng `warehouses`
--
ALTER TABLE `warehouses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warehouses_w_product_id_index` (`w_product_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `discount_code`
--
ALTER TABLE `discount_code`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `exports`
--
ALTER TABLE `exports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `pay_histories`
--
ALTER TABLE `pay_histories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `pay_ins`
--
ALTER TABLE `pay_ins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `pay_outs`
--
ALTER TABLE `pay_outs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `products_keywords`
--
ALTER TABLE `products_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `social_accounts`
--
ALTER TABLE `social_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `statics`
--
ALTER TABLE `statics`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `supplieres`
--
ALTER TABLE `supplieres`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `user_favourite`
--
ALTER TABLE `user_favourite`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `warehouses`
--
ALTER TABLE `warehouses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
