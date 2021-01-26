-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 29, 2020 lúc 01:17 AM
-- Phiên bản máy phục vụ: 10.4.11-MariaDB
-- Phiên bản PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `learnup`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(29, '2014_10_12_000000_create_users_table', 1),
(30, '2014_10_12_100000_create_password_resets_table', 1),
(31, '2019_08_19_000000_create_failed_jobs_table', 1),
(32, '2020_11_12_054718_table_tbl_category', 1),
(33, '2020_11_13_125045_table_tbl_admin', 1),
(34, '2020_11_14_054847_table_tbl_course', 1),
(35, '2020_11_14_073758_table_tbl_chappter', 1),
(36, '2020_11_18_074504_tbl_chappter_content', 1),
(37, '2020_11_20_044944_table_tbl_student', 1),
(38, '2020_11_25_072805_table_tbl_student_errollment', 1),
(39, '2020_11_25_073338_table_tbl_feedback', 1),
(40, '2020_11_27_091606_table_tbl_listemail', 1),
(41, '2020_11_27_120039_table_tbl_contact', 1),
(42, '2020_11_29_135806_table_tbl_blog', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `admin_username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_username`, `admin_password`, `admin_name`, `admin_phone`, `admin_address`, `created_at`, `updated_at`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'Nguyen Minh Long', '0961340573', '450 Đường Trần Đại Nghĩa, Quận Ngũ Hành Sơn, TP Đà Nẵng', '2020-12-21 07:37:36', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_blog`
--

CREATE TABLE `tbl_blog` (
  `blog_id` bigint(20) UNSIGNED NOT NULL,
  `blog_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_blog`
--

INSERT INTO `tbl_blog` (`blog_id`, `blog_title`, `blog_img`, `blog_content`, `created_at`, `updated_at`) VALUES
(1, 'React Query', 'DevtoolsReactQuery86.png', '<p>Xin ch&agrave;o c&aacute;c bạn, lại l&agrave; m&igrave;nh đ&acirc;y, h&ocirc;m n&agrave;y m&igrave;nh giới thiệu cho c&aacute;c bạn một package hữu &iacute;ch khi l&agrave;m việc với&nbsp;<strong>Reactjs</strong></p>\r\n\r\n<p>Chắc hẳn c&aacute;c bạn ai cũng từng gặp phải vấn đề khi l&agrave;m việc với&nbsp;<strong>api</strong>. C&oacute; rất nhiều thứ c&aacute;c bạn phải suy nghĩ khi xử l&yacute; dữ liệu kh&ocirc;ng đồng bộ, cập nhập data hay lưu data v&agrave;o cache hoặc re-fetching lại khi c&oacute; data mới.</p>\r\n\r\n<p>Th&igrave; b&acirc;y giờ c&aacute;c bạn kh&ocirc;ng phải lo nghĩ điều đ&oacute; nữa, khi m&agrave; đ&atilde; c&oacute;&nbsp;<a href=\"https://react-query.tanstack.com/overview\" target=\"_blank\">react-query</a>&nbsp;lo điều đ&oacute; cho bạn. N&oacute; xử l&yacute; những điều đ&oacute; một c&aacute;ch trơn tru, c&aacute;c bạn l&ecirc;n document của n&oacute; để đọc tiếp nh&eacute;, c&oacute; rất nhiều thứ hay ho&nbsp;</p>\r\n\r\n<p>OK! Vậy b&acirc;y giờ m&igrave;nh v&agrave; c&aacute;c bạn sẽ đi t&igrave;m hiều n&oacute; nh&eacute;.</p>\r\n\r\n<p>Trước hết, nếu bạn n&agrave;o đ&atilde; c&agrave;i reactjs rồi th&igrave; th&ocirc;i, c&ograve;n bạn n&agrave;o chưa th&igrave; c&oacute; thể chạy c&acirc;u lệnh ph&iacute;a dưới để c&agrave;i nhanh</p>\r\n\r\n<pre>\r\n<code>npx create-react-app\r\n</code></pre>\r\n\r\n<p>Khi c&agrave;i xong c&aacute;c bạn chạy th&ecirc;m cho m&igrave;nh c&acirc;u lệnh n&agrave;y nữa để c&agrave;i đặt&nbsp;<strong>react-query</strong></p>\r\n\r\n<pre>\r\n<code>npm i --save react-query\r\n</code></pre>\r\n\r\n<h5>Fetching the data</h5>\r\n\r\n<p>Đầu ti&ecirc;n, m&igrave;nh đi v&agrave;o fetch data nh&eacute;. C&aacute;c bạn mở file App.js l&ecirc;n v&agrave; thay thế bằng đoạn code sau</p>\r\n\r\n<pre>\r\n<code>import React from &#39;react&#39;;\r\nimport { useQuery } from &#39;react-query&#39;\r\n\r\nconst getPosts = async () =&gt; {\r\n  const response = await fetch(&#39;endpoint api&#39;)\r\n  return response.json()\r\n}\r\n\r\nfunction App() {\r\n  const { data, isFetching, isLoading, error, isError } = useQuery(&#39;key_unique&#39;, getPosts)\r\n\r\n  if (isLoading) {\r\n    return &lt;div&gt;loading...&lt;/div&gt; // loading data\r\n  }\r\n\r\n  if (isError) {\r\n    return &lt;div&gt;{error.message}&lt;/div&gt; // error data\r\n  }\r\n\r\n  return (\r\n    &lt;div&gt;\r\n      &lt;ul&gt;\r\n      {\r\n        data &amp;&amp; data\r\n          .slice(0,10) // only take frist 10 for now\r\n          // render list of titles\r\n          .map(d =&gt; &lt;li key={`post-${d.id}`}&gt;{d.title}&lt;/li&gt;)\r\n      }\r\n      &lt;/ul&gt; \r\n      { isFetching &amp;&amp; &lt;p&gt;updating...&lt;/p&gt; }\r\n    &lt;/div&gt;\r\n  )\r\n}\r\n\r\nexport default App\r\n</code></pre>\r\n\r\n<p>Đầu ti&ecirc;n, m&igrave;nh khai b&aacute;o một h&agrave;m&nbsp;<strong>getPosts()</strong>&nbsp;để lấy data từ api về.</p>\r\n\r\n<p>Trong h&agrave;m&nbsp;<strong>App()</strong>&nbsp;m&igrave;nh c&oacute; sử dụng hook&nbsp;<strong>useQuery</strong>, nếu bạn n&agrave;o chưa biết về hook th&igrave; c&oacute; thể l&ecirc;n trang chủ đọc nh&eacute; t<a href=\"https://reactjs.org/docs/hooks-intro.html\" target=\"_blank\">ại đ&acirc;y</a></p>\r\n\r\n<ul>\r\n	<li><strong>data</strong>: hook trả dữ liệu về cho m&igrave;nh qua biến data, c&aacute;c bạn d&ugrave;ng biến data để map dữ liệu của m&igrave;nh ra, data l&agrave; key mặc định c&aacute;c bạn kh&ocirc;ng thể refactor sang t&ecirc;n kh&aacute;c, nếu c&aacute;c bạn muốn đổi t&ecirc;n kh&aacute;c th&igrave; c&oacute; thể viết như n&agrave;y&nbsp;<strong>{ data: newName }</strong>&nbsp;v&agrave; c&aacute;c key ở dưới cũng vậy.</li>\r\n	<li><strong>isLoading</strong>: trả về trạng th&aacute;i loading khi data đang load</li>\r\n	<li><strong>isError</strong>: trả về lỗi khi fetch data về bị lỗi</li>\r\n	<li><strong>error</strong>: sẽ trả về lỗi cho bạn</li>\r\n	<li><strong>key_unique</strong>: đặc biệt l&agrave; c&aacute;i n&agrave;y. Mỗi một query sẽ c&oacute; một key duy nhất, n&ecirc;n c&aacute;c bạn phải để &yacute; l&agrave; đặt key kh&ocirc;ng được trung nhau</li>\r\n	<li><strong>isFetching</strong>: Tr&ocirc;ng bất kỳ trạng th&aacute;i n&agrave;o, nếu c&oacute; data mới th&igrave; sẽ trả về&nbsp;<strong>true</strong></li>\r\n</ul>\r\n\r\n<p>Trường hợp khi c&aacute;c bạn phải truyền cả params l&ecirc;n th&igrave;&nbsp;<strong>react-query</strong>&nbsp;cũng hỗ trợ cho c&aacute;c bạn</p>\r\n\r\n<pre>\r\n<code>useQuery([&#39;key&#39;, params1, params2], ...)\r\n</code></pre>\r\n\r\n<p>Ok, h&ocirc;m nay ch&uacute;ng ta cần ngầm tưng đ&acirc;y v&agrave;o đầu l&agrave; được rồi, chậm m&agrave; chắc&nbsp;, c&ograve;n c&aacute;c bạn n&agrave;o th&ocirc;ng minh th&igrave; l&ecirc;n tr&ecirc;n document của n&oacute; đọc v&agrave; l&agrave;m theo những h&agrave;m mới của n&oacute;.</p>\r\n\r\n<p>B&agrave;i viết của m&igrave;nh đến đ&acirc;y l&agrave; dừng nh&eacute;. Hẹn c&aacute;c bạn ở b&agrave;i tiếp theo, nếu m&igrave;nh c&oacute; sai chỗ n&agrave;o th&igrave; mong c&aacute;c bạn nhẹ tay g&oacute;p &yacute; cho m&igrave;nh. Cảm ơn c&aacute;c bạn đ&atilde; đọc b&agrave;i của m&igrave;nh&nbsp;</p>', '2020-12-23 21:34:44', '2020-12-23 21:34:44'),
(2, 'Git Flow là gì và những khái niệm', 'gitflow25.jpg', '<h1>Mục ti&ecirc;u</h1>\r\n\r\n<p>B&agrave;i viết muốn hướng đến người đọc nhận biết được kh&aacute;i niệm Git Flow v&agrave; t&iacute;nh cần thiết của n&oacute; trong việc ph&aacute;t triển dự &aacute;n.</p>\r\n\r\n<h4>Git Flow l&agrave; g&igrave; ?</h4>\r\n\r\n<p>Git flow được hiểu như l&agrave; 1 chu tr&igrave;nh d&ugrave;ng để thực h&agrave;nh cũng như sử dụng Git. V&iacute; dụ như l&agrave; phương ph&aacute;p tạo loại branch n&agrave;o, những branch n&agrave;o n&ecirc;n merge với nhau...</p>\r\n\r\n<h4>V&igrave; đ&acirc;u cần c&acirc;n nhắc sử dụng Git Flow ??</h4>\r\n\r\n<p>Trường hợp nhiều dev c&ugrave;ng tham gia ph&aacute;t triển dự &aacute;n trong 1 thời gian d&agrave;i m&agrave; nếu rule hoạt động kh&ocirc;ng được thống nhất v&agrave; quyết định th&igrave; việc xảy ra conflict hay l&agrave; miss khi merge l&agrave; chuyện như cơm bữa. Bởi vậy để giảm thiểu miss khi sử dụng Git th&igrave; việc xem x&eacute;t Git Flow l&agrave; cần thiết.</p>\r\n\r\n<h4>Branch</h4>\r\n\r\n<p>Ph&acirc;n biệt 5 loại branch sau : master, release, develop, feature, hot-fix.</p>\r\n\r\n<pre>\r\n<code>* master\r\n    l&agrave; nh&aacute;nh ở vị tr&iacute; tr&ecirc;n c&ugrave;ng, nơi chứa to&agrave;n bộ dữ liệu source của project. Ở nh&agrave;nh n&agrave;y th&igrave; kh&ocirc;ng c&oacute; quyền thay đổi source code.\r\n    \r\n* develop\r\n    nh&aacute;nh ph&aacute;t triển cho mục đ&iacute;ch release.\r\n    \r\n* release\r\n    nh&aacute;nh tạo ra trước khi release, rất hạn chế chỉnh sửa ở nh&aacute;nh n&agrave;y.\r\n    \r\n* feature\r\n    nh&aacute;nh tạo ra d&ugrave;ng để giải quyết bug cũng như run những function c&aacute; biệt.\r\n    \r\n* hot-fix\r\n    nh&aacute;nh d&ugrave;ng để fix bug gấp sau khi đ&atilde; ho&agrave;n tất release.\r\n</code></pre>\r\n\r\n<h5>Life cycle của Branch</h5>\r\n\r\n<pre>\r\n<code>* Branch master, develop một khi đ&atilde; được khởi tạo th&igrave; kh&ocirc;ng được x&oacute;a.\r\n\r\n* Branch feature, release, hot-fix th&igrave; được tạo v&agrave; x&oacute;a t&ugrave;y theo mục đ&iacute;ch sử dụng.\r\n</code></pre>\r\n\r\n<h4>Merge</h4>\r\n\r\n<p>L&agrave; h&agrave;nh động gộp 2 branch lại với nhau.</p>\r\n\r\n<h5>Case</h5>\r\n\r\n<pre>\r\n<code>    Tạo branch hot-fix, kiểm tra xem đ&atilde; fix bug chuẩn chưa rồi sau đ&oacute; merge hot-fix v&agrave;o master để release l&ecirc;n product.\r\n    Command của `git merge` như sau:\r\n    ```php\r\n        $ git checkout master // branchのヘッドをmasterへ置く\r\n        $ git merge hotfix     \r\n     ```\r\n</code></pre>\r\n\r\n<h5>Conflict</h5>\r\n\r\n<pre>\r\n<code>Conflict l&agrave; hiện tượng ph&aacute;t sinh xung đột code khi merge.\r\n</code></pre>\r\n\r\n<h4>Pull</h4>\r\n\r\n<p>Lệnh&nbsp;<code>git pull</code>&nbsp;được sử dụng để t&igrave;m nạp v&agrave; tải xuống nội dung từ remote repository v&agrave; cập nhật local repository sao cho ph&ugrave; hợp với nội dung đ&oacute;.</p>\r\n\r\n<h4>Pull Request</h4>\r\n\r\n<p>Được viết tắt l&agrave; PR, l&agrave; c&aacute;i để dev chia sẻ cho member trong team về những thay đổi trong local repository của m&igrave;nh. Ở đ&oacute; hiển thị nội dung thay đổi của source code, th&ocirc;ng b&aacute;o dự định merge. Hơn nữa c&oacute; thẻ communication.</p>\r\n\r\n<h5>PR Process</h5>\r\n\r\n<pre>\r\n<code>[Dev] bắt tay v&agrave;o code function mới.\r\n[Dev] xong khi code xong th&igrave; push l&ecirc;n.\r\n[Dev] tạo 1 Pull Request.\r\n[Team Lead] confirm nội dung PR.\r\n[Team Lead] nếu kh&ocirc;ng c&oacute; vấn đề g&igrave; th&igrave; merge.\r\n    Trường hợp khi confirm kết quả m&agrave; kh&ocirc;ng cần merge th&igrave; c&oacute; thể close.\r\n</code></pre>\r\n\r\n<h4>Tổng kết.</h4>\r\n\r\n<p>Ch&uacute;ng ta đ&atilde; t&igrave;m hiểu những kh&aacute;i niệm cơ bản của Git. Vẫn c&ograve;n nhiều những kh&aacute;i niệm kh&aacute;c nhưng hẹn ở phần sau. B&agrave;i viết theo &yacute; kiến chủ quan của người viết n&ecirc;n c&oacute; thể c&oacute; sai s&oacute;t (bow). Link tham khảo&nbsp;<a href=\"https://qiita.com/liten623jp/items/d870e13ada7718a442c0\" target=\"_blank\">Qiita</a></p>', '2020-12-21 13:27:33', NULL),
(3, 'Giới thiệu thư viện Benchmark.js', 'Benchmarkjs31.png', '<h3>Mở đầu</h3>\r\n\r\n<p>L&agrave; một nh&agrave; ph&aacute;t triển cần quan t&acirc;m tới c&acirc;u hỏi &quot;L&agrave;m sao để c&oacute; thể tạo ra một chương tr&igrave;nh c&oacute; chất lượng tốt&quot;. Một chương tr&igrave;nh với chất lượng tốt cần c&oacute; những đoạn m&atilde; nguồn tốt l&agrave;m cơ sở. Vậy như thế n&agrave;o l&agrave; một m&atilde; nguồn tốt? Đứng tr&ecirc;n quan điểm của bản th&acirc;n m&igrave;nh một m&atilde; nguồn tốt cần đảm bảo cả về h&igrave;nh thức v&agrave; hiệu năng.</p>\r\n\r\n<ol>\r\n	<li>Về h&igrave;nh thức: m&atilde; nguồn cần ngắn gọn, dễ hiểu, logic r&otilde; r&agrave;ng, tu&acirc;n thủ theo c&aacute;c convention được thống nhất chung.</li>\r\n	<li>Về hiệu năng: m&atilde; nguồn cần c&oacute; hiệu năng tốt ổn định.</li>\r\n</ol>\r\n\r\n<p>Đ&ocirc;i khi để đảm bảo t&iacute;nh đơn giản, ngắn gọn v&agrave; dễ đọc ch&uacute;ng ta cần phải hy sinh một phần hiệu năng trong khoảng chấp nhận được. Tuy nhi&ecirc;n trong hầu hết c&aacute;c trường hợp ch&uacute;ng ta n&ecirc;n lựa chọn những giải ph&aacute;p cho hiệu năng tốt để hệ thống hoạt động một c&aacute;ch tốt nhất. Benchmark.js l&agrave; một thư viện gi&uacute;p ch&uacute;ng ta l&agrave;m được việc đ&oacute;, n&oacute; cung cấp chức năng so s&aacute;nh hiệu năng của c&aacute;c giải ph&aacute;p ch&uacute;ng ta c&oacute; thể nghĩ ra nhằm lựa chọn được giải ph&aacute;p c&oacute; hiệu năng tốt.</p>\r\n\r\n<h3>Benchmark.js</h3>\r\n\r\n<p>Benchmark.js l&agrave; một thư viện Javascript cung cấp khả năng so s&aacute;nh hiệu năng của c&aacute;c javascript functions. Benchmark.js sẽ thực hiện function nhiều lần v&agrave; trả về kết quả dưới th&ocirc;ng số dưới dạng&nbsp;<code>operations/sec</code>, gi&aacute; trị n&agrave;y c&agrave;ng lớn thể hiện tốc độ của function sẽ c&agrave;ng nhanh qua đ&oacute; ch&uacute;ng ta c&oacute; thể lựa chọn được giải ph&aacute;p tốt nhất trong c&aacute;c giải ph&aacute;p được đưa ra.</p>\r\n\r\n<p>C&oacute; 2 c&aacute;ch để sử dụng Benchmark.js</p>\r\n\r\n<ul>\r\n	<li>\r\n	<p>In browser: th&ocirc;ng qua&nbsp;<a href=\"https://lodash.com/\" target=\"_blank\">lodash.js</a>,&nbsp;<a href=\"https://github.com/bestiejs/platform.js#readme\" target=\"_blank\">platform.js</a>,&nbsp;<a href=\"https://raw.githubusercontent.com/bestiejs/benchmark.js/2.1.2/benchmark.js\" target=\"_blank\">benchmark.js</a></p>\r\n\r\n	<pre>\r\n<code>&lt;script src=&quot;lodash.js&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;platform.js&quot;&gt;&lt;/script&gt;\r\n&lt;script src=&quot;benchmark.js&quot;&gt;&lt;/script&gt;\r\n</code></pre>\r\n	</li>\r\n	<li>\r\n	<p>C&agrave;i đặt th&ocirc;ng qua&nbsp;<code>npm</code>:</p>\r\n\r\n	<pre>\r\n<code>npm install --save benchmark\r\n</code></pre>\r\n	</li>\r\n</ul>\r\n\r\n<h3>V&iacute; dụ</h3>\r\n\r\n<h4>B&agrave;i to&aacute;n kiểm tra 1 chữ c&oacute; tồn tại trong 1 string hay kh&ocirc;ng?</h4>\r\n\r\n<pre>\r\n<code>var Benchmark = require(&#39;benchmark&#39;);\r\n\r\nvar suite = new Benchmark.Suite;\r\n\r\n// add tests\r\nsuite.add(&#39;RegExp#test&#39;, function() {\r\n  /o/.test(&#39;Hello World!&#39;);\r\n})\r\n.add(&#39;String#indexOf&#39;, function() {\r\n  &#39;Hello World!&#39;.indexOf(&#39;o&#39;) &gt; -1;\r\n})\r\n.add(&#39;String#match&#39;, function() {\r\n  !!&#39;Hello World!&#39;.match(/o/);\r\n})\r\n// add listeners\r\n.on(&#39;cycle&#39;, function(event) {\r\n  console.log(String(event.target));\r\n})\r\n.on(&#39;complete&#39;, function() {\r\n  console.log(&#39;Fastest is &#39; + this.filter(&#39;fastest&#39;).map(&#39;name&#39;));\r\n})\r\n// run async\r\n.run({ &#39;async&#39;: true });\r\n</code></pre>\r\n\r\n<p>Kết quả thu được:</p>\r\n\r\n<pre>\r\n<code>RegExp#test x 44,583,272 ops/sec &plusmn;0.56% (89 runs sampled)\r\nString#indexOf x 804,825,871 ops/sec &plusmn;1.40% (84 runs sampled)\r\nString#match x 22,052,172 ops/sec &plusmn;1.69% (89 runs sampled)\r\nFastest is String#indexOf\r\n</code></pre>\r\n\r\n<p>Như vậy trong 3 giải ph&aacute;p tr&ecirc;n, giải ph&aacute;p sử dụng&nbsp;<code>String.indexOf</code>&nbsp;l&agrave; giải ph&aacute;p cho hiệu năng tốt nhất.</p>\r\n\r\n<h4>B&agrave;i to&aacute;n chuyển 1 chuỗi th&agrave;nh mảng v&agrave; đảo ngược</h4>\r\n\r\n<p>Ta c&oacute; c&aacute;c giải ph&aacute;p như sau:</p>\r\n\r\n<pre>\r\n<code>// version 1\r\n\r\n&quot;hello&quot;.split(&quot;&quot;).reverse();\r\n\r\n// version 2\r\n\r\n[...&quot;hello&quot;].reverse();\r\n\r\n// version 3\r\n\r\nArray.from(&quot;hello&quot;).reverse();\r\n</code></pre>\r\n\r\n<p>C&ugrave;ng kiểm tra xem đ&acirc;u sẽ l&agrave; phương &aacute;n tốt nhất:</p>\r\n\r\n<pre>\r\n<code>const { Benchmark } = require(&quot;benchmark&quot;);\r\n\r\nfunction generateRandomString(length) {\r\n  var result = &quot;&quot;;\r\n  var characters =\r\n    &quot;ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789&quot;;\r\n  var charactersLength = characters.length;\r\n  for (var i = 0; i &lt; length; i++) {\r\n    result += characters.charAt(Math.floor(Math.random() * charactersLength));\r\n  }\r\n  return result;\r\n}\r\n\r\nfunction generateRandomNumberBetween(min, max){\r\n    return Math.floor(Math.random() * max) + min;\r\n}\r\n\r\n// data contains 100 random strings with lneght between 1 and 1000\r\nconst data = [];\r\nfor (let i = 0; i &lt; 100; i++) {\r\n    data.push(generateRandomString(generateRandomNumberBetween(1, 1000)));\r\n}\r\n\r\nconst suite = new Benchmark.Suite();\r\nsuite.add(&quot;string.split()&quot;, function() {\r\n    for (const str of data) {\r\n        str.split(&quot;&quot;);\r\n    }\r\n});\r\nsuite.add(&quot;Object spread&quot;, function () {\r\n    for (const str of data) {\r\n        [...str];\r\n    }\r\n});\r\nsuite.add(&quot;Array.from()&quot;, function() {\r\n    for (const str of data) {\r\n        Array.from(str);\r\n    }\r\n});\r\nsuite.on(&quot;cycle&quot;, function(event) {\r\n    console.log(String(event.target));\r\n});\r\nsuite.on(&quot;complete&quot;, function() {\r\n    console.log(&quot;Fastest is &quot; + this.filter(&quot;fastest&quot;).map(&quot;name&quot;));\r\n})\r\nsuite.run();\r\n</code></pre>\r\n\r\n<p>Kết quả:</p>\r\n\r\n<pre>\r\n<code>string.split() x 18,548 ops/sec &plusmn;0.41% (94 runs sampled)\r\nObject spread x 3,001 ops/sec &plusmn;0.19% (98 runs sampled)\r\nArray.from() x 2,936 ops/sec &plusmn;0.75% (94 runs sampled)\r\nFastest is string.split()\r\n</code></pre>\r\n\r\n<p>Trong v&iacute; dụ n&agrave;y ch&uacute;ng ta đ&atilde; mở rộng kiểm tra dựa tr&ecirc;n một tập dữ liệu ngẫu nhi&ecirc;n nhằm c&oacute; được kết quả một c&aacute;ch kh&aacute;ch quan nhất. Kết quả thu được l&agrave; giải ph&aacute;p sử dụng string.split() sẽ cho hiệu năng cao nhất.</p>\r\n\r\n<h3>Kết luận</h3>\r\n\r\n<p>Lợi &iacute;ch của việc benchmark đ&aacute;nh gi&aacute; hiệu năng của c&aacute;c giải ph&aacute;p c&oacute; thể chưa được nh&igrave;n nhận khi dự &aacute;n c&ograve;n nhỏ, c&aacute;c vấn đề về hiệu năng chưa thể hiện một c&aacute;ch r&otilde; r&agrave;ng. Tuy nhi&ecirc;n khi hệ thống đ&atilde; dần ng&agrave;y một phức tạp những vấn đề về hiệu năng c&oacute; thể ph&aacute;t sinh v&agrave; đem lại hậu quả to lớn.</p>\r\n\r\n<p>L&agrave; một nh&agrave; ph&aacute;t triển ch&uacute;ng ta cần c&oacute; tr&aacute;ch nhiệm với sản phẩm m&igrave;nh tạo ra từ những việc nhỏ nhặt nhất. Hy vọng qua b&agrave;i viết n&agrave;y sẽ gi&uacute;p mọi người c&oacute; th&ecirc;m 1 c&ocirc;ng cụ để gi&uacute;p cho sản phẩm của m&igrave;nh được tốt hơn.</p>\r\n\r\n<h3>Tham khảo</h3>\r\n\r\n<p><a href=\"https://benchmarkjs.com/\" target=\"_blank\">https://benchmarkjs.com/</a></p>\r\n\r\n<p><a href=\"https://dev.to/forgacs_peter/benchmarking-javascript-34l4\" target=\"_blank\">https://dev.to/forgacs_peter/benchmarking-javascript-34l4</a></p>', '2020-12-21 13:27:35', NULL),
(4, 'VueJS: Tính năng Mixins', 'vuejs85.jpg', '<p>Ch&agrave;o mọi người, h&ocirc;m nay m&igrave;nh sẽ viết về Mixins v&agrave; 1 số vấn đề trong sử dụng Mixins hay ho m&agrave; m&igrave;nh gặp trong dự &aacute;n thực.</p>\r\n\r\n<h2>I. Mixin trong VueJS:</h2>\r\n\r\n<p>Tr&iacute;ch dẫn từ trang chủ của&nbsp;<a href=\"https://vi.vuejs.org/v2/guide/mixins.html\" target=\"_blank\"><code>VueJS</code></a>:</p>\r\n\r\n<blockquote>\r\n<p>Mixin l&agrave; một c&aacute;ch linh hoạt để ph&acirc;n phối những t&iacute;nh năng t&aacute;i sử dụng được cho component.</p>\r\n</blockquote>\r\n\r\n<p>C&uacute; ph&aacute;p sử dụng Mixin cũng rất đơn giản, tạo 1 file js bất kỳ v&agrave; sử dụng n&oacute; ở c&aacute;c file vue:</p>\r\n\r\n<ul>\r\n	<li>src/mixins/isEven.js</li>\r\n</ul>\r\n\r\n<pre>\r\n<code>export default {\r\n  methods: {\r\n    isEven(value) {\r\n      return value % 2 === 0;\r\n    }\r\n  }\r\n};\r\n</code></pre>\r\n\r\n<p>Sau đ&oacute;, ch&uacute;ng ta sẽ import v&agrave;o file&nbsp;<code>.vue</code>&nbsp;cần d&ugrave;ng:</p>\r\n\r\n<ul>\r\n	<li>src/views/Home.vue:</li>\r\n</ul>\r\n\r\n<pre>\r\n<code>...\r\nimport isEven from &quot;@/helpers/isEven&quot;;\r\n...\r\n\r\nexport default {\r\n  ...\r\n  mixins: [isEven], // sử dụng isEven như một mixin\r\n  ...\r\n};\r\n</code></pre>\r\n\r\n<p>Ngo&agrave;i ra, ch&uacute;ng ta cũng c&oacute; thể viết một&nbsp;<code>Global Mixin</code>:</p>\r\n\r\n<ul>\r\n	<li>src/mixins/isEven.js</li>\r\n</ul>\r\n\r\n<pre>\r\n<code>import Vue from &quot;vue&quot;;\r\n\r\nVue.mixin({\r\n  methods: {\r\n    isEven(value) {\r\n      return value % 2 === 0;\r\n    }\r\n  }\r\n});\r\n</code></pre>\r\n\r\n<p>V&agrave; gọi ở trong file&nbsp;<code>main.js</code>:</p>\r\n\r\n<ul>\r\n	<li>src/main.js:</li>\r\n</ul>\r\n\r\n<pre>\r\n<code>...\r\nimport &quot;@/helpers/isEven&quot;;\r\n...\r\n</code></pre>\r\n\r\n<p>Với cả 2 c&aacute;ch tr&ecirc;n, ch&uacute;ng ta đ&atilde; c&oacute; thể sử dụng&nbsp;<code>isEven</code>&nbsp;để kiểm tra chẵn lẻ:</p>\r\n\r\n<ul>\r\n	<li>Ở tag&nbsp;<code>template</code>:</li>\r\n</ul>\r\n\r\n<pre>\r\n<code>&lt;template&gt;\r\n    ...\r\n    {{ isEvent(5) }} &lt;!-- false --&gt;\r\n    ...\r\n&lt;/template&gt;\r\n</code></pre>\r\n\r\n<ul>\r\n	<li>Ở tag&nbsp;<code>script</code>:</li>\r\n</ul>\r\n\r\n<pre>\r\n<code>export default {\r\n    ...\r\n    created() {\r\n        console.log(this.isEven(5)); /* false */\r\n    },\r\n    ...\r\n}\r\n</code></pre>\r\n\r\n<h2>II. Một số lưu &yacute; kh&aacute;c khi sử dụng mixin:</h2>\r\n\r\n<h3>1. Option Merging:</h3>\r\n\r\n<ul>\r\n	<li>Khi c&aacute;c t&ecirc;n biến&nbsp;<code>data</code>, c&aacute;c&nbsp;<code>computed</code>, c&aacute;c&nbsp;<code>methods</code>&nbsp;của&nbsp;<code>mixin</code>&nbsp;v&agrave;&nbsp;<code>component</code>&nbsp;tr&ugrave;ng nhau,&nbsp;<code>Vue</code>&nbsp;sẽ sử dụng c&aacute;c gi&aacute; trị n&agrave;y của&nbsp;<code>component</code>&nbsp;ưu ti&ecirc;n.</li>\r\n	<li>Khi c&aacute;c&nbsp;<code>Lifecycle Hooks</code>&nbsp;tr&ugrave;ng nhau, thứ tự chạy sẽ l&agrave;&nbsp;<code>Mixin -&gt; Component</code>&nbsp;cho từng hook.</li>\r\n</ul>\r\n\r\n<p>Demo code:</p>\r\n\r\n<ul>\r\n	<li>src/mixins/isEven.js</li>\r\n</ul>\r\n\r\n<pre>\r\n<code>export default {\r\n  data: () =&gt; ({\r\n    name: &quot;Mixin&quot;\r\n  }),\r\n  computed: {\r\n    show() {\r\n      return &quot;Mixin&quot;;\r\n    }\r\n  },\r\n  methods: {\r\n    isEven(value) {\r\n      return value % 2 === 0;\r\n    },\r\n    warning() {\r\n      return &quot;Mixin&quot;;\r\n    }\r\n  },\r\n  created() {\r\n    console.log(&quot;in mixin create&quot;); // eslint-disable-line no-console\r\n  },\r\n  beforeDestroy() {\r\n    console.log(&quot;in mixin destroy&quot;); // eslint-disable-line no-console\r\n  }\r\n};\r\n</code></pre>\r\n\r\n<ul>\r\n	<li>File&nbsp;<code>.vue</code>:</li>\r\n</ul>\r\n\r\n<pre>\r\n<code>&lt;template&gt;\r\n  &lt;div class=&quot;home&quot;&gt;\r\n    &lt;h2&gt;data: {{ name }}&lt;/h2&gt; &lt;!-- Component --&gt;\r\n    &lt;h2&gt;computed: {{ show }}&lt;/h2&gt; &lt;!-- Component --&gt;\r\n    &lt;h2&gt;methods: {{ warning() }}&lt;/h2&gt; &lt;!-- Component --&gt;\r\n  &lt;/div&gt;\r\n&lt;/template&gt;\r\n</code></pre>\r\n\r\n<pre>\r\n<code>import isEven from &quot;@/helpers/isEven&quot;;\r\n\r\nexport default {\r\n  name: &quot;Home&quot;,\r\n  mixins: [isEven],\r\n  data: () =&gt; ({\r\n    name: &quot;Component&quot;\r\n  }),\r\n  computed: {\r\n    show() {\r\n      return &quot;Component&quot;;\r\n    }\r\n  },\r\n  methods: {\r\n    warning() {\r\n      return &quot;Component&quot;;\r\n    }\r\n  },\r\n  created() {\r\n    console.log(&quot;in component create&quot;); // eslint-disable-line no-console\r\n  },\r\n  beforeDestroy() {\r\n    console.log(&quot;in component destroy&quot;); // eslint-disable-line no-console\r\n  }\r\n};\r\n</code></pre>\r\n\r\n<ul>\r\n	<li>In Terminal khi v&agrave;o url &#39;/&#39;:</li>\r\n</ul>\r\n\r\n<pre>\r\n<code>in mixin create\r\nin component create\r\n</code></pre>\r\n\r\n<ul>\r\n	<li>Khi thay đổi route:</li>\r\n</ul>\r\n\r\n<pre>\r\n<code>in mixin destroy\r\nin component destroy\r\n</code></pre>\r\n\r\n<h3>2. Lưu &yacute; từ người viết:</h3>\r\n\r\n<p>C&oacute; một v&agrave;i quan điểm về&nbsp;<code>Mixin</code>&nbsp;m&agrave; m&igrave;nh muốn chia sẽ th&ecirc;m.</p>\r\n\r\n<ul>\r\n	<li>Đầu ti&ecirc;n l&agrave; việc kh&ocirc;ng sử dụng&nbsp;<code>Global Mixin</code>, chỉ import mixin khi bạn sử dụng, tr&aacute;nh việc ảnh hưởng bởi&nbsp;<code>Mixin</code>&nbsp;l&agrave;m thay đổi c&aacute;c gi&aacute; trị của ứng dụng web, ngo&agrave;i ra c&ograve;n c&oacute; thể l&agrave;m giảm hiệu năng web của bạn.</li>\r\n	<li>Trong hầu hết trường hợp, khi viết c&aacute;c&nbsp;<code>helpers</code>, ch&uacute;ng ta kh&ocirc;ng n&ecirc;n viết theo dạng&nbsp;<code>Mixin</code>, thay v&agrave;o đ&oacute;, hay viết 1&nbsp;<code>pure function</code>&nbsp;(như function&nbsp;<code>isEven</code>&nbsp;ở đầu b&agrave;i l&agrave; 1&nbsp;<code>pure function</code>), import v&agrave;o ở dạng method. Chỉ khi cần sử dụng biến&nbsp;<code>this</code>&nbsp;của&nbsp;<code>Vue</code>, ch&uacute;ng ta mới ưu ti&ecirc;n hơn cho&nbsp;<code>mixin</code>. Việc sử dụng&nbsp;<code>pure function</code>&nbsp;cũng gi&uacute;p code gọn g&agrave;ng hơn, 1 function cho 1 chức năng, v&agrave; tương tự đối với mixin,&nbsp;<code>1 mixin 1 chức năng</code>:</li>\r\n</ul>\r\n\r\n<pre>\r\n<code>import isEvent from &#39;...&#39;;\r\n\r\nexport default {\r\n    methods: {\r\n        isEven,\r\n        ...\r\n    },\r\n}\r\n</code></pre>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y l&agrave; một v&agrave;i chia sẻ nho nhỏ của m&igrave;nh về&nbsp;<code>Mixin</code>&nbsp;khi thực chiến với&nbsp;<code>Vue</code>, cảm ơn c&aacute;c bạn đ&atilde; đọc qua. H&atilde;y mạnh dạn comment ở b&ecirc;n dưới nếu c&oacute; thắc mắc hoặc vấn đề cẩn thảo luận nh&eacute;&nbsp;.</p>', '2020-12-21 13:27:37', NULL),
(5, '12 kỹ thuật vô cùng hữu ích trong Javascript', 'js35.jpg', '<h3>Đ&ocirc;i lời dạo đầu...</h3>\r\n\r\n<p>Dạo quanh khắp c&aacute;c trang b&aacute;o mạng v&agrave;o một buổi chiều m&ugrave;a thu đầy nắng v&agrave; gi&oacute;, m&igrave;nh chợt đọc được 1 b&agrave;i viết với tựa đề&nbsp;<strong>&quot;12 Super Useful techniques in JavaScript&quot;</strong>... Với một đứa ham học hỏi như m&igrave;nh, m&igrave;nh chợt nghĩ liệu kh&ocirc;ng biết c&oacute; g&igrave; hay ho kh&ocirc;ng nữa, nhưng r&otilde; r&agrave;ng l&agrave; m&igrave;nh cũng mang tiếng code javascript l&acirc;u l&acirc;u v&agrave; l&agrave;m nhiều projects với n&oacute; rồi, vậy c&ograve;n g&igrave; m&igrave;nh c&oacute; thể học đ&acirc;y?</p>\r\n\r\n<p>Thế rồi m&igrave;nh vẫn quyết định bỏ ra 5 ph&uacute;t để đọc thử, v&agrave; rồi m&igrave;nh chợt thấy qu&aacute; rất nhiều c&aacute;ch xử l&iacute; th&uacute; vị v&agrave; th&ocirc;ng m&igrave;nh từ những c&aacute;i m&agrave; m&igrave;nh c&ograve;n ngỡ m&igrave;nh đ&atilde; biết r&otilde; rồi. Đấy, thế l&agrave; xong v&igrave; b&agrave;i đ&oacute; hay qu&aacute;, n&ecirc;n h&ocirc;m nay m&igrave;nh đ&acirc;y sẽ lại tiếp tục &quot;đ&oacute;ng vai chị Google&quot; để dịch ra cho c&aacute;c bạn c&ugrave;ng đọc nh&eacute;! C&oacute; thể c&aacute;c bạn đ&atilde; biết rồi th&igrave; coi như &ocirc;n tập lại c&ugrave;ng m&igrave;nh nha...&nbsp;</p>\r\n\r\n<p><strong>Now, let&#39;s go!</strong></p>\r\n\r\n<h1>1. Tạo một h&agrave;m tổng qu&aacute;t</h1>\r\n\r\n<p>Trước hết, h&atilde;y c&ugrave;ng tưởng tượng rằng ch&uacute;ng ta đang muốn ph&aacute;t triển một h&agrave;m tổng qu&aacute;t (d&ugrave;ng chung) v&agrave; đầu v&agrave;o l&agrave; một số lượng c&aacute;c tham số nhất định được sử dụng trong qu&aacute; tr&igrave;nh thực thi.</p>\r\n\r\n<p>V&iacute; dụ, một m&aacute;y t&iacute;nh c&oacute; N tham số v&agrave; N ph&eacute;p to&aacute;n. Bạn c&oacute; thể dễ d&agrave;ng đạt được điều n&agrave;y bằng c&aacute;ch sử dụng&nbsp;<a href=\"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax\" target=\"_blank\">spread operation</a>&nbsp;v&agrave;&nbsp;<a href=\"https://www.w3schools.com/jsref/jsref_reduce.asp\" target=\"_blank\">h&agrave;m reduce</a>:</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/5b742142-70a1-46ac-9fba-01a8ea98f154.png\" /></p>\r\n\r\n<p>Thiệt l&agrave; nhanh gọn lẹ để tạo ra 1 chiếc &quot;m&aacute;y t&iacute;nh bỏ t&uacute;i&quot; chạy bằng cơm với javascript phải kh&ocirc;ng c&aacute;c bạn?&nbsp;</p>\r\n\r\n<h1>2. Switch với khoảng gi&aacute; trị</h1>\r\n\r\n<p>C&aacute;i hồi m&agrave; m&igrave;nh d&ugrave;ng Pascal, C, hay Java cũ, m&igrave;nh đ&atilde; thấy được sự bất tiện của Switch khi chẳng t&agrave;i n&agrave;o m&igrave;nh c&oacute; thể d&ugrave;ng n&oacute; với một khoảng gi&aacute; trị cả... Thế l&agrave; to&agrave;n phải lồng&nbsp;<code>if...else</code>&nbsp;li&ecirc;n tục trong một số trường hợp. M&agrave; thật ra hồi đ&oacute; m&igrave;nh cũng c&ograve;n &quot;non v&agrave; xanh nữa&quot;&nbsp;</p>\r\n\r\n<p>Chắc cũng kh&ocirc;ng &iacute;t bạn gặp t&igrave;nh huống giống m&igrave;nh phải kh&ocirc;ng ạ, vậy th&igrave; giờ với Javascript, ta ho&agrave;n to&agrave;n c&oacute; thể xử l&iacute; được vấn đề đ&otilde; một c&aacute;ch dễ d&agrave;ng v&agrave; dễ hiểu như code dưới đ&acirc;y:</p>\r\n\r\n<pre>\r\n<code>function chooseSportByTemperature(fahrenheit) {\r\n  let sport\r\n\r\n  switch (true) {\r\n    case fahrenheit &gt;= 15 &amp;&amp; fahrenheit &lt;= 20:\r\n      sport = &#39;Running&#39;\r\n      break\r\n    case fahrenheit &gt; 20 &amp;&amp; fahrenheit &lt;= 30:\r\n      sport = &#39;Cycling&#39;\r\n      break\r\n    case fahrenheit &gt; 30:\r\n      sport = &#39;Stay in home&#39;\r\n      break\r\n    default:\r\n      sport = &#39;Sex&#39;\r\n  }\r\n\r\n  return sport\r\n}\r\n</code></pre>\r\n\r\n<p>Ở tr&ecirc;n ảnh c&ograve;n c&oacute; một kỹ thuật th&ocirc;ng minh đ&oacute; ch&iacute;nh l&agrave; thay v&igrave; ta d&ugrave;ng switch cho một biến n&agrave;o đ&oacute; th&igrave; ta sẽ&nbsp;<code>switch (true)</code>&nbsp;v&agrave; c&aacute;c case sẽ l&agrave; c&aacute;c điều kiện ta cần kiểm tra...</p>\r\n\r\n<p>Tho&aacute;t khỏi c&aacute;c v&ograve;ng&nbsp;<code>if...else</code>&nbsp;v&ocirc; tận th&ocirc;i n&agrave;o! Trong code của ch&uacute;ng ta giờ đ&acirc;y thật &quot;clean&quot;!</p>\r\n\r\n<h1>3. Gộp nhiều cases trong switch</h1>\r\n\r\n<p>Lại l&agrave; một kĩ thuật kh&aacute;c li&ecirc;n quan tới switch, kĩ thuật n&agrave;y c&oacute; thể cũng c&oacute; nhiều bạn đ&atilde; biết rồi ha! C&aacute;c bạn n&agrave;o chưa biết th&igrave; nh&igrave;n c&aacute;i trong ảnh l&agrave; hiểu ngay lu&ocirc;n nh&eacute;:</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/664f1d8e-3fde-43e3-8d00-cc2784001937.png\" /></p>\r\n\r\n<p>So easy! Muốn gộp ch&uacute;ng lại th&igrave; ta cho ch&uacute;ng cạnh liền nhau v&agrave; kh&ocirc;ng c&oacute;&nbsp;<code>break</code>&nbsp;ở giữa c&aacute;c case l&agrave; xong ngay!&nbsp;</p>\r\n\r\n<h1>4. Đợi nhiều h&agrave;m bất đồng bộ c&ugrave;ng l&uacute;c với async/await</h1>\r\n\r\n<p>Kỹ thuật n&agrave;y n&acirc;ng cao do c&oacute; li&ecirc;n quan tới&nbsp;<a href=\"https://javascript.info/async-await\" target=\"_blank\">async/await</a>&nbsp;, v&agrave; cũng kh&ocirc;ng &iacute;t c&aacute;c bạn c&oacute; thể gặp phải t&igrave;nh huống muốn thực thi c&ugrave;ng l&uacute;c nhiều h&agrave;m bất đồng bộ v&agrave; chờ cho to&agrave;n bộ ch&uacute;ng thực thi xong. Vậy kỹ thuật dưới đ&acirc;y sẽ gi&uacute;p bạn giải quyệt được vấn đề đ&oacute;:</p>\r\n\r\n<pre>\r\n<code>function resolveAfter1Seconds() {\r\n  return new Promise((resolve) =&gt; {\r\n    setTimeout(() =&gt; {\r\n      resolve(&#39;resolved&#39;)\r\n    }, 1000)\r\n  })\r\n}\r\n\r\nfunction resolveAfter2Seconds() {\r\n  return new Promise((resolve) =&gt; {\r\n    setTimeout(() =&gt; {\r\n      resolve(&#39;resolved&#39;)\r\n    }, 2000)\r\n  })\r\n}\r\n\r\nfunction resolveAfter3Seconds() {\r\n  return new Promise((resolve) =&gt; {\r\n    setTimeout(() =&gt; {\r\n      resolve(&#39;resolved&#39;)\r\n    }, 3000)\r\n  })\r\n}\r\n\r\nfunction resolveAfter4Seconds() {\r\n  return new Promise((resolve) =&gt; {\r\n    setTimeout(() =&gt; {\r\n      resolve(&#39;resolved&#39;)\r\n    }, 4000)\r\n  })\r\n}\r\n\r\nasync function asyncFunction() {\r\n  console.log(&#39;start&#39;)\r\n\r\n  const result = await Promise.all([\r\n    resolveAfter1Seconds(),\r\n    resolveAfter2Seconds(),\r\n    resolveAfter3Seconds(),\r\n    resolveAfter4Seconds(),\r\n  ])\r\n\r\n  console.log(result) //resolved after 4 seconds !\r\n  console.log(&#39;end&#39;)\r\n}\r\n\r\nasyncFunction()\r\n</code></pre>\r\n\r\n<p>Như bạn thấy đ&oacute;, ta sẽ&nbsp;<strong>bọc</strong>&nbsp;c&aacute;c c&ocirc;ng việc bất đồng bộ cần thực thi v&agrave;o c&aacute;c&nbsp;<strong>Promise</strong>, sau đ&oacute; c&oacute; 1 h&agrave;m async/await chung gọi tới&nbsp;<code>Promise.all</code>&nbsp;để thực thi tất cả c&aacute;c c&ocirc;ng việc của c&aacute;c Promise ta tạo ra... Rất đơn giản phải kh&ocirc;ng n&agrave;o? C&aacute;c bạn ngẫm t&iacute; l&agrave; m&igrave;nh tin hiểu ngay ạ!</p>\r\n\r\n<h1>5. San phẳn mảng 2 chiều chỉ trong 1 bước đơn giản</h1>\r\n\r\n<p>Đ&ocirc;i khi trong cuộc đời coder, ta sẽ ngồi nh&acirc;m nhi t&aacute;ch cafe m&agrave; nghĩ rằng trong Javascript th&igrave; l&agrave;m sao để m&agrave; c&oacute; thể &quot;gi&atilde;n phẳng&quot; một mảng 2 chiều th&agrave;nh mảng một chiều được b&acirc;y giờ nhỉ?&nbsp;</p>\r\n\r\n<p>Chẳng nhẽ phải đệ quy đi v&agrave;o từng element của mảng v&agrave; lấy gi&aacute; trị ra ư? Kh&ocirc;ng cần phức tạp vậy đ&acirc;u, h&atilde;y nh&igrave;n xuống ảnh dưới v&agrave; cẩn thận kẻo &quot;h&aacute; hốc miệng&quot; v&igrave; ngạc nhi&ecirc;n nha:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Đ&oacute;, chỉ với spread operation m&agrave; ta c&oacute; thể &quot;bẻ thẳng&quot; bất cứ mảng 2 chiều n&agrave;o!&nbsp;</p>\r\n\r\n<h1>6. San phẳn mảng đa chiều chỉ trong 1 bước đơn giản</h1>\r\n\r\n<p>Kỹ thuật thứ 5 c&oacute; vẻ &quot;ngầu&quot; đấy, nhưng m&agrave; chạy bằng cơm th&ocirc;i, thật ra dễ hơn th&igrave; Javascript đ&atilde; cung cấp sẵn cho ta một h&agrave;m gọi l&agrave; flat() để thực hiện c&ocirc;ng việc &quot;bẻ thẳng&quot; đ&oacute; rồi! M&agrave; c&ograve;n cho đa chiều nữa nh&eacute; chứ kh&ocirc;ng chỉ ri&ecirc;ng 2 chiều đ&acirc;u ạ...&nbsp;</p>\r\n\r\n<p>Sử dụng phương thức flat(), ch&uacute;ng ta c&oacute; thể tạo một mảng mới với tất cả c&aacute;c phần tử của mảng con được nối v&agrave;o n&oacute; một c&aacute;ch đệ quy l&ecirc;n đến độ s&acirc;u đ&atilde; chỉ định. Nếu chưa hiểu kĩ th&igrave; nh&igrave;n ảnh dưới nha c&aacute;c bạn:</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/957fc501-a839-40fa-bc7d-ebac5236d76b.png\" /></p>\r\n\r\n<h1>7. Tạo đối tượng &quot;thuần&quot; trong Javascript</h1>\r\n\r\n<p>C&aacute;i kỹ thuật n&agrave;y chắc l&agrave; hữu &iacute;ch cho bạn n&agrave;o muốn tự m&igrave;nh x&acirc;y dựng cơ ngơi, v&igrave; việc tạo ra một đối tượng &quot;thuần&quot; tức l&agrave; tạo ra một đối tượng m&agrave; trong n&oacute; chẳng c&oacute; bất cứ c&aacute;i g&igrave; cả.</p>\r\n\r\n<p>Th&ocirc;ng thường, khi ta tạo một đối tượng, đối tượng của ta sẽ được th&ecirc;m v&agrave;o sẵn một số c&aacute;c thuộc t&iacute;nh v&agrave; phương thức mặc định, h&atilde;y c&ugrave;ng nh&igrave;n h&igrave;nh dưới nh&eacute;:</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/94247c1a-d3eb-4ae5-8772-1d98132a6257.png\" /></p>\r\n\r\n<p>Như c&aacute;c bạn thấy, d&ugrave; ta kh&ocirc;ng khai b&aacute;o nhưng đối tượng m&agrave; ta tạo ra cũng c&oacute; sẵn c&aacute;c thuộc t&iacute;nh v&agrave; phương thức mặc định rồi...</p>\r\n\r\n<p>Vậy th&igrave;, nếu một ng&agrave;y đẹp trời n&agrave;o đ&oacute; bạn gh&eacute;t bỏ sự tiện dụng mặc định của Javascript v&agrave; muốn tự nh&agrave;o nặn ra một đối tượng của ri&ecirc;ng m&igrave;nh, th&igrave; h&atilde;y l&agrave;m như ảnh dưới đ&acirc;y nh&eacute;:</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/c1f845df-1a4a-48fc-bd50-02282aabdd2f.png\" /></p>\r\n\r\n<p>Đ&oacute;, easy again!&nbsp;</p>\r\n\r\n<h1>8. X&oacute;a th&agrave;nh phần tr&ugrave;ng nhau trong mảng chỉ với 1 bước</h1>\r\n\r\n<p>C&aacute;i chuyện l&agrave;m sao để nhanh ch&oacute;ng x&oacute;a c&aacute;c th&agrave;nh phần tr&ugrave;ng nhau trong một mảng th&igrave; l&agrave; c&acirc;u chuyện mu&ocirc;n thuở của bất k&igrave; lập tr&igrave;nh vi&ecirc;n n&agrave;o từ c&aacute;i thời Pascal c&ograve;n được d&ugrave;ng để thi HSG Quốc gia rồi &yacute; chứ&nbsp;</p>\r\n\r\n<p>Th&ocirc;ng thường th&igrave; để l&agrave;m c&ocirc;ng việc lọc tr&ugrave;ng n&agrave;y, &iacute;t nhất cũng phải mất 2 v&ograve;ng for với c&aacute;ch l&agrave;m cơ bản ai cũng c&oacute; thể nghĩ ra, cơ m&agrave; giờ đ&acirc;y, với sự ph&aacute;t triển mạnh mẽ của ES6 trong Javascript, ta chỉ cần &quot;one shot&quot; như dưới ảnh:</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/0e619e7b-3260-438b-a4e8-ba4aaef2c8f7.png\" /></p>\r\n\r\n<p>V&agrave; c&aacute;c bạn biết kết quả sẽ l&agrave; g&igrave; rồi đ&oacute;!!!</p>\r\n\r\n<h1>9. Ghi ra console khi m&agrave; trang được bắt đầu v&agrave; tải xong</h1>\r\n\r\n<p>C&aacute;i n&agrave;y th&igrave; hơi &iacute;t t&igrave;nh huống cần d&ugrave;ng nhưng cũng l&agrave; kỹ thuật hay v&igrave; ta sẽ c&oacute; thể d&ugrave;ng n&oacute; để kiểm tra hiệu suất, thời gian tải một trang một c&aacute;ch dễ d&agrave;ng hơn...</p>\r\n\r\n<p>Bạn cũng c&oacute; thể sử dụng c&aacute;c h&agrave;m&nbsp;<code>console.time(&#39;nh&atilde;n t&ecirc;n bạn muốn đặt để theo d&otilde;i&#39;)</code>&nbsp;v&agrave;&nbsp;<code>console.timeEnd(&#39;nh&atilde;n t&ecirc;n bạn đ&atilde; đặt trước đ&oacute;&#39;)</code>&nbsp;để bắt đầu v&agrave; kết th&uacute;c bộ đếm thời gian để bạn theo d&otilde;i thời gian thực hiện một thao t&aacute;c n&agrave;o đ&oacute;. C&aacute;i n&agrave;y th&igrave; cũng kh&ocirc;ng nhiều bạn biết ha, v&igrave; to&agrave;n console.log m&agrave; haha&nbsp;</p>\r\n\r\n<pre>\r\n<code>&lt;script&gt;\r\n    window.onload = () =&gt; {\r\n      console.log(&#39;Start&#39;)\r\n    }\r\n    window.onunload = () =&gt; {\r\n      console.log(&#39;Finish&#39;)\r\n    }\r\n&lt;/script&gt;\r\n</code></pre>\r\n\r\n<p>Hoặc hay ho hơn th&igrave;:</p>\r\n\r\n<pre>\r\n<code>&lt;script&gt;\r\n    window.onload = () =&gt; {\r\n      console.time(&#39;pageLoadingTime&#39;)\r\n    }\r\n    window.onunload = () =&gt; {\r\n      console.timeEnd(&#39;pageLoadingTime&#39;)\r\n    }\r\n&lt;/script&gt;\r\n</code></pre>\r\n\r\n<p>Btw, c&aacute; nh&acirc;n m&igrave;nh vẫn th&iacute;ch d&ugrave;ng addListener hơn l&agrave; override lại h&agrave;m event như n&agrave;y...&nbsp;</p>\r\n\r\n<h1>10. N&uacute;t in cho trang</h1>\r\n\r\n<p>Giờ ta c&oacute; thể tạo ra một n&uacute;t k&iacute;ch hoạt m&aacute;y in ngay tr&ecirc;n trang web một c&aacute;ch nhanh ch&oacute;ng m&agrave; người d&ugrave;ng ai cũng c&oacute; thể ấn m&agrave; chẳng cần hiểu qu&aacute; s&acirc;u về c&ocirc;ng nghệ... C&aacute;i n&agrave;y th&igrave; ngắn gọn dễ hiểu th&ocirc;i n&egrave;!</p>\r\n\r\n<pre>\r\n<code>&lt;input type=&quot;button&quot; value=&quot;Print this page!&quot; onclick=&quot;window.print()&quot; /&gt;\r\n</code></pre>\r\n\r\n<h1>11. L&agrave;m tr&ograve;n số</h1>\r\n\r\n<p>Đ&acirc;y cũng chắc l&agrave; kỹ thuật cơ bản m&agrave; bạn n&agrave;o đ&atilde; l&agrave;m việc với số tr&ecirc;n Javascript sẽ biết, nhưng cũng l&agrave; một kỹ thuật hay đ&aacute;ng liệt k&ecirc;... Ch&uacute;ng ta c&oacute; thể l&agrave;m tr&ograve;n đến số nguy&ecirc;n gần nhất, l&agrave;m tr&ograve;n xuống hoặc l&agrave;m tr&ograve;n l&ecirc;n. JavaScript cung cấp cho ta ba phương thức để đạt được điều n&agrave;y th&ocirc;ng qua đối tượng Math.</p>\r\n\r\n<p>Trước hết l&agrave; l&agrave;m tr&ograve;n tới số phần thập ph&acirc;n ta muốn, để l&agrave;m điều n&agrave;y, ta d&ugrave;ng h&agrave;m&nbsp;<code>toFixed(&#39;số phần thập phần cần giữ&#39;)</code>&nbsp;của ch&iacute;nh biến chứa gi&aacute; trị số m&agrave; ta cần:</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/3c9be32b-121f-4b6c-b642-769b273d3520.png\" /></p>\r\n\r\n<p>Đầu ra l&agrave; một chuỗi cần được chuyển đến h&agrave;m&nbsp;<code>parseFloat()</code>&nbsp;để trả về một số. Dẫu l&agrave; c&aacute;ch n&agrave;y c&oacute; vẻ chậm nhưng kết quả của n&oacute; th&igrave; lu&ocirc;n v&ocirc; c&ugrave;ng ch&iacute;nh x&aacute;c.</p>\r\n\r\n<p>Tiếp theo l&agrave; l&agrave;m tr&ograve;n tới số gần nhất, ta d&ugrave;ng&nbsp;<code>Math.round(&#39;số cần l&agrave;m tr&ograve;n&#39;)</code>:</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/2652b8ad-39e6-4b15-bc3a-339c8a76541d.png\" /></p>\r\n\r\n<p>Ngo&agrave;i ra c&ograve;n c&oacute;&nbsp;<code>Math.floor()</code>&nbsp;để l&agrave;m tr&ograve;n xuống v&agrave;&nbsp;<code>Math.ceil()</code>&nbsp;để l&agrave;m tr&ograve;n l&ecirc;n nữa nh&eacute;!</p>\r\n\r\n<p>C&oacute; một ch&uacute; &yacute; l&agrave;, việc l&agrave;m tr&ograve;n số kh&aacute;c với việc cắt bớt, khi ta sử dụng h&agrave;m&nbsp;<code>Math.trunc(&#39;số cần cắt bớt&#39;)</code>, th&igrave; n&oacute; đơn giản l&agrave; sẽ cắt bỏ hết phần thập ph&acirc;n của số đầu v&agrave;o chứ kh&ocirc;ng phải l&agrave;m tr&ograve;n đ&acirc;u nha!&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/458c6cfc-7299-409b-ba31-6a6dd43098a8.png\" /></p>\r\n\r\n<h1>12. L&agrave;m rỗng một mảng</h1>\r\n\r\n<p>C&aacute;i l&uacute;c trước khi m&igrave;nh đọc kỹ thuật n&agrave;y, m&igrave;nh đ&atilde; nghĩ ta chỉ cần g&aacute;n biến đ&oacute; bằng một mảng rỗng mới l&agrave; xong, nhưng thiết nghĩ lại th&igrave; r&otilde; r&agrave;ng điều đ&oacute; kh&ocirc;ng đ&uacute;ng với c&acirc;u &quot;L&agrave;m rỗng một mảng&quot; lắm...&nbsp;</p>\r\n\r\n<p>Thế n&ecirc;n ở đ&acirc;y c&oacute; một c&aacute;ch nhanh gọn để l&agrave;m điều đ&oacute;, ch&iacute;nh l&agrave; g&aacute;n cho&nbsp;<code>length</code>&nbsp;của mảng bằng 0. Thế l&agrave; xong&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/d5e9cc60-8c69-47ee-8b72-eaab6271dec0.png\" /></p>\r\n\r\n<h3>Đ&ocirc;i lời dạo kết...</h3>\r\n\r\n<p>Thế l&agrave; t&oacute;m c&aacute;i v&aacute;y lại, m&igrave;nh cũng đ&atilde; xong c&ocirc;ng việc phi&ecirc;n dịch vi&ecirc;n ki&ecirc;m đầu bếp &quot;th&ecirc;m mắm th&ecirc;m muối&quot; v&agrave;o b&agrave;i để gi&uacute;p cung cấp cho c&aacute;c bạn th&ecirc;m hoặc &ocirc;n lại được 12 kỹ thuật th&uacute; vị v&agrave; hay d&ugrave;ng trong Javascript rồi!</p>\r\n\r\n<p>Rất mong c&aacute;c bạn sẽ nhận th&ecirc;m được nhiều kiến thức bổ &iacute;ch sau khi bỏ ra 5 ph&uacute;t để đọc con b&agrave;i nho nhỏ n&agrave;y của m&igrave;nh.</p>\r\n\r\n<p>Ch&uacute;c c&aacute;c bạn một ng&agrave;y thật vui vẻ! M&igrave;nh xin ch&acirc;n th&agrave;nh cảm ơn!</p>', '2020-12-21 13:27:40', NULL),
(6, 'ES2020 có gì mới?', 'es2020logo25.jpg', '<p>Sau khi ph&aacute;t h&agrave;nh phi&ecirc;n bản ES6 năm 2015, Javascript đ&atilde; c&oacute; nhiều bước ph&aacute;t triển mạnh mẽ hơn trước. V&agrave; trong năm nay, với sự ho&agrave;n thiện của&nbsp;<code>ES2020</code>, lại một lần nữa hứa hẹn sẽ đem đến cho ch&uacute;ng ta những t&iacute;nh năng tuyệt vời. C&ugrave;ng nhau điểm qua một v&agrave;i t&iacute;nh năng mới nổi bật nh&eacute;!</p>\r\n\r\n<h3>Nullish Coalescing</h3>\r\n\r\n<p><strong>Nullish Coalescing</strong>&nbsp;(to&aacute;n tử&nbsp;<code>??</code>) cho ph&eacute;p ch&uacute;ng ta check c&aacute;c gi&aacute; trị&nbsp;<code>nullish</code>&nbsp;thay v&igrave; c&aacute;c gi&aacute; trị&nbsp;<code>falsey</code>. Vậy sự kh&aacute;c nhau giữa c&aacute;c gi&aacute; trị&nbsp;<code>nullish</code>&nbsp;v&agrave;&nbsp;<code>falsey</code>&nbsp;l&agrave; g&igrave;?</p>\r\n\r\n<p><code>Nullish</code>&nbsp;l&agrave; c&aacute;c gi&aacute; trị&nbsp;<code>null</code>&nbsp;hoặc&nbsp;<code>undefined</code>, c&ograve;n&nbsp;<code>falsey</code>&nbsp;l&agrave; c&aacute;c gi&aacute; trị như&nbsp;<code>&#39;&#39;</code>, number&nbsp;<code>0</code>,&nbsp;<code>undefined</code>,&nbsp;<code>null</code>,&nbsp;<code>false</code>,&nbsp;<code>NaN</code>, &hellip;</p>\r\n\r\n<p>V&iacute; dụ,<img alt=\"\" src=\"https://images.viblo.asia/7b92a2df-0ddc-456f-b3ed-2bc2600f41e6.png\" /></p>\r\n\r\n<p>Khi khai b&aacute;o biến l&agrave; thuộc t&iacute;nh của một object, để ph&ograve;ng trường hợp thuộc t&iacute;nh đ&oacute;&nbsp;<code>undefined</code>&nbsp;hoặc&nbsp;<code>null</code>, ta thường sử dụng to&aacute;n tử&nbsp;<code>||</code>&nbsp;để g&aacute;n gi&aacute; trị mặc định. Nhưng nếu gặp thuộc t&iacute;nh c&oacute; gi&aacute; trị&nbsp;<code>falsey</code>&nbsp;như&nbsp;<code>0</code>,&nbsp;<code>false</code>&nbsp;hay&nbsp;<code>&#39;&#39;</code>&nbsp;th&igrave;&nbsp;<code>||</code>&nbsp;sẽ hoạt động kh&ocirc;ng ch&iacute;nh x&aacute;c. V&agrave;&nbsp;<code>??</code>&nbsp;được đề xuất để giải quyết vấn đề n&agrave;y.</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/6bdd918d-dde4-4338-99a8-d5b3758ce424.png\" /></p>\r\n\r\n<p><code>??</code>&nbsp;hoạt động kh&aacute; giống&nbsp;<code>||</code>, nhưng&nbsp;<code>||</code>&nbsp;lu&ocirc;n trả về c&aacute;c gi&aacute; trị&nbsp;<code>truthy</code>, trong khi&nbsp;<code>??</code>&nbsp;trả về c&aacute;c gi&aacute; trị&nbsp;<code>non-nullish</code>,&nbsp;<code>??</code>&nbsp;vẫn hoạt động đ&uacute;ng với c&aacute;c gi&aacute; trị&nbsp;<code>falsey</code>.</p>\r\n\r\n<h3>Optional Chaining</h3>\r\n\r\n<p><strong>Optional Chaining</strong>&nbsp;(to&aacute;n tử&nbsp;<code>?.</code>) cho ph&eacute;p truy cập an to&agrave;n v&agrave;o c&aacute;c thuộc t&iacute;nh lồng nhau của một object m&agrave; kh&ocirc;ng cần phải check sự tồn tại của từng thuộc t&iacute;nh đ&oacute;. Trả về&nbsp;<code>undefined</code>&nbsp;nếu thuộc t&iacute;nh kh&ocirc;ng tồn tại.</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/259f4b8a-c606-48a7-9dec-dcf9ee8bf21b.png\" /></p>\r\n\r\n<p><code>?.</code>&nbsp;c&ograve;n c&oacute; thể d&ugrave;ng để kiểm tra một method c&oacute; tồn tại kh&ocirc;ng trước khi gọi, hay truy xuất c&aacute;c phần tử của một Array.</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/a8aa4037-f3b9-44c0-b337-e407671f0baa.png\" /></p>\r\n\r\n<h3>Promise.allSettled</h3>\r\n\r\n<p><strong>Promise.allSettled(promises)</strong>&nbsp;chỉ resolve khi&nbsp;<code>tất cả</code>&nbsp;c&aacute;c Promise đ&atilde; được thực thi hết - c&oacute; thể l&agrave; resolved hoặc rejected.</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/a4509235-a28f-4585-8ff0-c83ab7c1ab39.png\" /></p>\r\n\r\n<p>Về cơ bản&nbsp;<code>Promise.allSettled</code>&nbsp;kh&aacute; giống với&nbsp;<code>Promise.all</code>, nhưng c&oacute; sự kh&aacute;c biệt:</p>\r\n\r\n<ul>\r\n	<li><code>Promise.all</code>&nbsp;sẽ&nbsp;<strong>đợi</strong>&nbsp;cho tất cả c&aacute;c promises resolved hoặc rejected. Nhưng n&oacute; sẽ bị lỗi nếu một trong c&aacute;c promises bị rejected.</li>\r\n	<li><code>Promise.allSettled</code>&nbsp;chỉ thực thi tất cả c&aacute;c promises bất kể trạng th&aacute;i của ch&uacute;ng l&agrave; g&igrave;, kh&ocirc;ng quan t&acirc;m tới kết quả. V&agrave; kết quả trả về sẽ l&agrave; một mảng c&aacute;c phần tử như v&iacute; dụ tr&ecirc;n.</li>\r\n</ul>\r\n\r\n<h3>Dynamic Imports</h3>\r\n\r\n<p><strong>Dynamic Imports</strong>&nbsp;cho ph&eacute;p import động c&aacute;c files JS dưới dạng c&aacute;c modules nguy&ecirc;n bản giống như khi l&agrave;m với Webpack hay Babel.</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/be216239-f46e-44b3-b799-a2c574a6ad75.png\" /></p>\r\n\r\n<p>Lợi &iacute;ch dễ thấy nhất của&nbsp;<code>Dynamic Imports</code>&nbsp;l&agrave; cho ph&eacute;p&nbsp;<code>lazy-loading</code>: chỉ tải c&aacute;c module khi cần thiết.</p>\r\n\r\n<p>Trước khi ES2020 ph&aacute;t h&agrave;nh, ch&uacute;ng ta bắt buộc phải khai b&aacute;o import c&aacute;c module d&ugrave; cho ch&uacute;ng c&oacute; được sử dụng hay kh&ocirc;ng (<code>static import</code>), v&agrave; đương nhi&ecirc;n, điều n&agrave;y c&oacute; thể g&acirc;y nhiễu global&nbsp;<code>namespace</code>. Ngo&agrave;i ra ch&uacute;ng ta cũng kh&ocirc;ng thể import module theo c&aacute;c điều kiện&nbsp;<code>if-else</code>&nbsp;mong muốn như như ở ES2020 khi cần.</p>\r\n\r\n<h3>BigInt</h3>\r\n\r\n<p><strong>BigInt</strong>&nbsp;l&agrave; một trong những t&iacute;nh năng được mong đợi nhất trong JS, n&oacute; cho ph&eacute;p sử dụng c&aacute;c số lớn hơn số tối đa được ph&eacute;p&nbsp;<code>pow(2, 53) - 1</code>&nbsp;để xử l&yacute; dữ liệu.</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/251d6c71-870a-4dba-84f5-e55255364cdb.png\" /></p>\r\n\r\n<p>Cần sử dụng&nbsp;<code>n</code>&nbsp;ở cuối để biểu thị đ&acirc;y l&agrave; một&nbsp;<code>BigInt</code>&nbsp;v&agrave; n&ecirc;n được xử l&yacute; kh&aacute;c nhau bằng JavaScript engine (v8 hoặc bất kỳ engine n&agrave;o n&oacute; đang sử dụng). Nhưng t&iacute;nh năng mới n&agrave;y lại kh&ocirc;ng tương th&iacute;ch ngược v&igrave; hệ thống số truyền thống l&agrave;&nbsp;<code>IEEE 754</code>&nbsp;kh&ocirc;ng thể hỗ trợ c&aacute;c số c&oacute; k&iacute;ch thước n&agrave;y.</p>\r\n\r\n<h3>String.protype.matchAll</h3>\r\n\r\n<p><strong>matchAll()</strong>&nbsp;l&agrave; một method mới được th&ecirc;m v&agrave;o&nbsp;<code>String protype</code>&nbsp;v&agrave; c&oacute; li&ecirc;n quan đến&nbsp;<code>Regular Expressions</code>. N&oacute; sẽ trả về một&nbsp;<code>iterator</code>&nbsp;tất cả c&aacute;c kết quả matching, bao gồm cả c&aacute;c&nbsp;<code>groups</code>.</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/fac1e8ed-1312-4280-ba05-fd9e2fb7317a.png\" /></p>\r\n\r\n<h3>globalThis</h3>\r\n\r\n<p>Khi viết m&atilde; JS trong m&ocirc;i trường đa nền tảng ch&uacute;ng ta sẽ kh&aacute; kh&oacute; khăn trong việc nắm bắt c&aacute;c object to&agrave;n cục.</p>\r\n\r\n<ul>\r\n	<li>Browsers:&nbsp;<strong>window</strong></li>\r\n	<li>Node:&nbsp;<strong>global</strong></li>\r\n	<li>Web-workers:&nbsp;<strong>self</strong></li>\r\n	<li>Runtimes: object to&agrave;n cục sẽ kh&aacute;c. V&igrave; vậy, bạn sẽ phải c&oacute; triển khai của ri&ecirc;ng m&igrave;nh để detect runtime v&agrave; sau đ&oacute; sử dụng ch&iacute;nh x&aacute;c biến to&agrave;n cục ch&iacute;nh x&aacute;c.</li>\r\n</ul>\r\n\r\n<p>ES2020 c&oacute;&nbsp;<code>globalThis</code>, lu&ocirc;n tham chiếu đến đối tượng to&agrave;n cục, bất kể đang thực thi trong m&ocirc;i trường n&agrave;o. V&iacute; dụ,</p>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/508362af-743b-46f1-8b21-b3cbd560383d.png\" /></p>\r\n\r\n<h3>Private methods/properties</h3>\r\n\r\n<p>Th&ecirc;m tiền tố&nbsp;<code>#</code>&nbsp;v&agrave;o trước t&ecirc;n của thuộc t&iacute;nh hoặc method để khai b&aacute;o c&aacute;c&nbsp;<code>thuộc t&iacute;nh/method private</code>&nbsp;cho&nbsp;<code>JS Class</code>. Những methods v&agrave; thuộc t&iacute;nh n&agrave;y sẽ chỉ được ph&eacute;p truy cập từ b&ecirc;n trong Class được khai b&aacute;o.</p>\r\n\r\n<pre>\r\n<code>class Demo {\r\n  #value = &quot;Hihi&quot;\r\n  say() {\r\n    console.log(this.#value)\r\n  }\r\n}\r\n\r\nconst demo = new Demo()\r\ndemo.say()\r\nconsole.log(demo.#value)\r\n</code></pre>\r\n\r\n<p><em><strong>Tổng kết</strong></em></p>\r\n\r\n<p>Tr&ecirc;n đ&acirc;y m&igrave;nh chỉ n&ecirc;u ra một v&agrave;i t&iacute;nh năng m&igrave;nh cảm thấy l&agrave; nổi bật nhất trong ES2020, nhưng ngo&agrave;i ra c&ograve;n kh&aacute; nhiều t&iacute;nh năng th&uacute; vị kh&aacute;c nữa như&nbsp;<code>import.meta</code>,&nbsp;<code>for-in order</code>, ... Nếu bạn muốn t&igrave;m hiểu th&ecirc;m về ch&uacute;ng, c&oacute; thể tham khảo chi tiết t&agrave;i liệu&nbsp;<a href=\"https://tc39.es/\" target=\"_blank\">tại đ&acirc;y</a>.</p>', '2020-12-21 13:27:45', NULL);
INSERT INTO `tbl_blog` (`blog_id`, `blog_title`, `blog_img`, `blog_content`, `created_at`, `updated_at`) VALUES
(7, 'Tại sao bạn nên tìm hiểu Next.js', 'nextjs91.jpg', '<h2>1. Early web</h2>\r\n\r\n<p>Trở lại giữa những năm 2000, khi web c&ograve;n non trẻ v&agrave; đang ph&aacute;t triển, c&aacute;c nh&agrave; ph&aacute;t triển mới bắt đầu chuyển từ c&aacute;c trang HTML tĩnh sang c&aacute;c trang web động. Đ&oacute; l&agrave; thời ho&agrave;ng kim của ng&ocirc;n ngữ lập tr&igrave;nh hướng đối tượng như PHP (Server render HTML)</p>\r\n\r\n<p>Sau đ&oacute; l&agrave; thời đại JavaScript. Mọi người bắt đầu nhận ra rằng ng&ocirc;n ngữ n&agrave;y được hỗ trợ cho web v&agrave; c&oacute; thể được sử dụng rất nhiều.</p>\r\n\r\n<p>Bạn c&oacute; thể submit form động, requests&nbsp;<code>HTTP</code>, tạo ra c&aacute;c hiệu ứng cuộn đẹp mắt v&agrave; thậm ch&iacute; tạo trang web nhanh ch&oacute;ng.</p>\r\n\r\n<p>Sự gia tăng của JavaScript v&agrave; c&aacute;c thư viện như jQuery cho ph&eacute;p c&aacute;c nh&agrave; ph&aacute;t triển web tạo ra c&aacute;c giao diện đẹp c&oacute; thể t&ugrave;y chỉnh ho&agrave;n to&agrave;n bằng JavaScript.</p>\r\n\r\n<p>Chẳng bao l&acirc;u, mọi nh&agrave; ph&aacute;t triển web bắt đầu đẩy ng&agrave;y c&agrave;ng nhiều JavaScript xuống cho&nbsp;<code>client</code>&nbsp;web. Chắc chắn, c&ocirc;ng nghệ ph&aacute;t triển, điện thoại di động v&agrave; PC trở n&ecirc;n tốt hơn với nhiều RAM v&agrave; l&otilde;i hơn, nhưng JavaScript bắt đầu ph&aacute;t triển nhanh hơn.</p>\r\n\r\n<p>Nhiều chức năng hơn, nhiều t&iacute;nh năng hơn v&agrave; nhiều&nbsp;<code>frameworks</code>&nbsp;hơn c&oacute; nghĩa l&agrave; trải nghiệm người d&ugrave;ng tốt hơn v&agrave; khả năng tạo cảm gi&aacute;c giống như ứng dụng tr&ecirc;n web.</p>\r\n\r\n<p>Nhưng điều n&agrave;y cũng c&oacute; nghĩa l&agrave; ng&agrave;y c&agrave;ng đẩy nhiều JavaScript xuống thiết bị di động, v&agrave; c&aacute;c thiết bị đ&oacute; kh&ocirc;ng thể theo kịp c&aacute;c giới hạn JavaScript đang ph&aacute;t triển.</p>\r\n\r\n<h2>2.The Web was made for HTML</h2>\r\n\r\n<p>Với c&aacute;c framework như React v&agrave; Angular, về cơ bản bạn đang đẩy c&aacute;c g&oacute;i JavaScript khổng lồ cho&nbsp;<code>client</code>&nbsp;m&agrave; trước ti&ecirc;n phải tải xuống c&aacute;c trang HTML nhỏ.</p>\r\n\r\n<p>C&aacute;c thiết bị di động cũ, chậm chạp bắt đầu bỏ cuộc - thời gian tải ng&agrave;y c&agrave;ng cao, độ trễ nhiều hơn, c&aacute;c c&ocirc;ng cụ JS k&eacute;m mạnh mẽ hơn</p>\r\n\r\n<p>C&aacute;c nh&agrave; ph&aacute;t triển web đ&atilde; chuyển từ PHP (HTML do m&aacute;y chủ&nbsp;<code>render</code>) sang JavaScript (HTML do m&aacute;y client render) đ&atilde; bắt đầu nhận ra rằng họ đ&atilde; ti&ecirc;u tốn rất nhiều thời gian để load trang.</p>\r\n\r\n<p>Một trang&nbsp;<code>About Us</code>&nbsp;đơn giản, c&oacute; thể l&agrave; một trang HTML / CSS tĩnh rất đơn giản, b&acirc;y giờ l&agrave; một trang c&oacute; g&oacute;i JS khổng lồ. Đầu ti&ecirc;n, tr&igrave;nh duyệt (client) phải tải xuống, sau đ&oacute; ph&acirc;n t&iacute;ch c&uacute; ph&aacute;p, sau đ&oacute; thực thi v&agrave; sau đ&oacute; thay đổi DOM để hiển thị nội dung.</p>\r\n\r\n<p>Mọi người y&ecirc;u th&iacute;ch React v&agrave; c&aacute;c c&ocirc;ng cụ tương tự. Nhưng họ cũng hiểu &yacute; nghĩa của việc chạy qu&aacute; nhiều JS ph&iacute;a client.</p>\r\n\r\n<p>Mặt kh&aacute;c, họ th&iacute;ch c&aacute;ch hoạt động của PHP (server render HTML), nhưng họ kh&ocirc;ng th&iacute;ch kiến tr&uacute;c của n&oacute;. V&igrave; vậy giải ph&aacute;p l&agrave; g&igrave;?</p>\r\n\r\n<h2>3. Server-Side Rendering (SSR) &ndash; the best of both worlds</h2>\r\n\r\n<p>C&aacute;c nh&agrave; ph&aacute;t triển web nhận ra, rốt cuộc, khi m&atilde; React được thực thi xong, tất cả những g&igrave; bạn thực sự c&oacute; l&agrave; một HTML document để hiển thị.</p>\r\n\r\n<p>V&igrave; vậy, họ đ&atilde; l&agrave;m điều đ&oacute;. Server-Side Rendering (SSR) cho React đ&atilde; ra đời.</p>\r\n\r\n<p>Giờ đ&acirc;y, với SSR, bạn c&oacute; thể viết m&atilde; React, bằng c&aacute;ch n&agrave;o đ&oacute; chạy n&oacute; tr&ecirc;n m&aacute;y chủ (mạnh hơn thiết bị client th&ocirc;ng thường của bạn - như điện thoại di động), rồi gửi HTML document đến client.</p>\r\n\r\n<p>Với tư c&aacute;ch l&agrave; nh&agrave; ph&aacute;t triển, bạn c&oacute; thể viết m&atilde; trong React - c&ocirc;ng nghệ m&agrave; bạn y&ecirc;u th&iacute;ch. V&agrave; client truy cập tr&ecirc;n trang web sẽ nhận được một HTML document thuần t&uacute;y, điều n&agrave;y sẽ được tăng hiệu suất rất lớn.</p>\r\n\r\n<p>Win-win, ai lại kh&ocirc;ng th&iacute;ch điều đ&oacute; chứ&nbsp;<img alt=\"❤️\" src=\"https://twemoji.maxcdn.com/2/72x72/2764.png\" /></p>\r\n\r\n<h2>4. But it was too difficult</h2>\r\n\r\n<p>Server-side rendering chắc chắn l&agrave; giải ph&aacute;p cho vấn đề n&agrave;y. Nhưng vấn đề? Qu&aacute; kh&oacute; để thiết lập ch&iacute;nh x&aacute;c.</p>\r\n\r\n<p>Bộ nhớ đệm v&agrave; chặn bộ nhớ cache th&iacute;ch hợp? Bạn c&oacute; thể tạo tệp HTML tĩnh cho c&aacute;c trang kh&ocirc;ng thay đổi kh&ocirc;ng? Bạn n&ecirc;n l&agrave;m thế n&agrave;o để x&acirc;y dựng trải nghiệm điều hướng liền mạch tr&ecirc;n trang web của m&igrave;nh ngay cả khi bạn c&oacute; HTML hiển thị ph&iacute;a m&aacute;y chủ? Bạn n&ecirc;n giảm tải tr&ecirc;n m&aacute;y chủ của m&igrave;nh như thế n&agrave;o hoặc tạo nội dung theo y&ecirc;u cầu?</p>\r\n\r\n<p>V&agrave; tr&ecirc;n hết, l&agrave;m thế n&agrave;o để bạn thiết lập to&agrave;n bộ kiến tr&uacute;c n&agrave;y? Chắc chắn, React v&agrave; web cung cấp tất cả c&aacute;c API cho những thứ n&agrave;y, nhưng ch&uacute;ng kh&aacute; d&agrave;i d&ograve;ng v&agrave; thường l&agrave; thiết lập một lần.</p>\r\n\r\n<p>V&agrave;&nbsp;<code>Next.js</code>&nbsp;ra đời trong ho&agrave;n cảnh đ&oacute;</p>\r\n\r\n<h2>5. Introducing Next.js</h2>\r\n\r\n<p>Github:&nbsp;<a href=\"https://github.com/vercel/next.js\" target=\"_blank\">https://github.com/vercel/next.js</a></p>\r\n\r\n<p>Việc c&oacute; đến gần 60k star tr&ecirc;n github đ&atilde; thấy&nbsp;<code>Next.js</code>&nbsp;được nhiều người quan t&acirc;m đến mức n&agrave;o&nbsp;<code>Next.js</code>&nbsp;đang nhận được những update, bạn c&oacute; thể check trong tags tr&ecirc;n github của next:&nbsp;<a href=\"https://github.com/vercel/next.js/tags\" target=\"_blank\">https://github.com/vercel/next.js/tags</a></p>\r\n\r\n<p><code>Next.js</code>&nbsp;c&oacute; những giải ph&aacute;p:</p>\r\n\r\n<ul>\r\n	<li>Tốt cho việc SEO website</li>\r\n	<li>T&iacute;ch hợp bộ nhớ đệm v&agrave; tối ưu h&oacute;a tĩnh tự động</li>\r\n	<li>C&aacute;c trang ho&agrave;n to&agrave;n do m&aacute;y chủ hiển thị</li>\r\n	<li>100% React hỗ trợ</li>\r\n	<li>Tinh chỉnh cấu h&igrave;nh webpack / babel của bạn nếu cần</li>\r\n	<li>V&agrave; nhiều hơn nữa!</li>\r\n</ul>\r\n\r\n<p>N&oacute; trừu tượng tất cả c&aacute;c thiết lập hiệu suất v&agrave; ph&aacute;t triển bạn cần với một ứng dụng React điển h&igrave;nh v&agrave; cho ph&eacute;p bạn chỉ tập trung v&agrave;o những g&igrave; quan trọng - code logic nghiệp vụ của bạn.</p>\r\n\r\n<p>Next.js 9.5 đ&atilde; được ph&aacute;t h&agrave;nh trong năm nay với rất nhiều t&iacute;nh năng mới. V&agrave; t&ocirc;i nghĩ thật an to&agrave;n khi n&oacute;i rằng n&oacute; l&agrave; một trong những c&ocirc;ng cụ mạnh mẽ nhất hiện c&oacute; trong hệ sinh th&aacute;i ph&aacute;t triển web, đặc biệt nếu bạn đ&atilde; l&agrave; nh&agrave; ph&aacute;t triển React.</p>\r\n\r\n<p>Nếu bạn l&agrave; developer React v&agrave;o năm 2020, một trong những kỹ năng tốt nhất bạn c&oacute; thể học l&agrave; Next.js. Dưới đ&acirc;y l&agrave; một số lợi &iacute;ch m&agrave; n&oacute; mang lại cho bạn với tư c&aacute;ch l&agrave; developer:</p>\r\n\r\n<ul>\r\n	<li>Một c&ocirc;ng nghệ mới nổi - nhiều cơ hội v&agrave; khả năng việc l&agrave;m hơn</li>\r\n	<li>C&aacute;c page được server render, c&oacute; nghĩa l&agrave; hiệu suất tốt hơn - nhiều kh&aacute;ch h&agrave;ng t&igrave;m đến website của bạn hơn</li>\r\n	<li>SEO cho c&aacute;c trang web của bạn - search engines cũng sẽ y&ecirc;u bạn</li>\r\n	<li>Tất cả những lợi &iacute;ch của việc c&oacute; một server - API router, t&igrave;m nạp nội dung động</li>\r\n	<li>Một technical skill tuyệt vời trong CV của bạn</li>\r\n</ul>\r\n\r\n<h2>6. Some Next.js features I&#39;m excited about</h2>\r\n\r\n<p>Next.js đang ph&aacute;t triển rất nhanh. Họ kh&ocirc;ng d&ugrave;ng c&aacute;c chức năng cũ v&agrave; lu&ocirc;n giới thiệu những thứ mới tinh v&agrave; chất lượng.</p>\r\n\r\n<p>Cho đến h&ocirc;m nay, t&ocirc;i thực sự quan t&acirc;m đến to&agrave;n bộ framework, nhưng đ&acirc;y l&agrave; t&iacute;nh năng m&agrave; t&ocirc;i th&iacute;ch nhất</p>\r\n\r\n<h3>6.1 Stable Incremental Static Regeneration</h3>\r\n\r\n<p>N&oacute;i một c&aacute;ch đơn giản, t&iacute;nh năng n&agrave;y cho ph&eacute;p bạn tạo nội dung tĩnh một c&aacute;ch động.</p>\r\n\r\n<p>Giả sử bạn c&oacute; một trang web blog với rất nhiều b&agrave;i viết. Khi ai đ&oacute; truy cập&nbsp;<code>/news/[link]</code>&nbsp;(trong đ&oacute;&nbsp;<code>[link]</code>&nbsp;l&agrave; bất cứ thứ g&igrave;), bạn muốn cung cấp cho họ trang tĩnh nhanh nhất c&oacute; thể.</p>\r\n\r\n<p>Nhưng c&oacute; thể bạn kh&ocirc;ng muốn tạo tất cả c&aacute;c trang tĩnh tại thời điểm build v&igrave; n&oacute; sẽ khiến bạn mất rất nhiều thời gian. Trong một số trường hợp, điều n&agrave;y ho&agrave;n to&agrave;n kh&ocirc;ng thể xảy ra tại thời điểm build.</p>\r\n\r\n<p>Ngo&agrave;i ra, đ&ocirc;i khi nội dung của bạn c&oacute; thể thay đổi, chẳng hạn như chỉnh sửa blog nhanh - v&igrave; vậy bạn cũng kh&ocirc;ng thực sự muốn một trang ho&agrave;n to&agrave;n tĩnh m&atilde;i m&atilde;i. Vậy giải ph&aacute;p l&agrave; g&igrave;?</p>\r\n\r\n<p>Sử dụng Next.js 9.5+, giờ đ&acirc;y bạn c&oacute; thể tạo động c&aacute;c trang tĩnh theo đường dẫn động v&agrave; refresh ch&uacute;ng.</p>\r\n\r\n<p>Điều n&agrave;y c&oacute; nghĩa l&agrave; khi Next t&igrave;m nạp URL cụ thể đ&oacute;, n&oacute; sẽ lưu n&oacute; dưới dạng một trang tĩnh v&agrave; ph&acirc;n ph&aacute;t n&oacute; một c&aacute;ch tĩnh bất cứ khi n&agrave;o ai đ&oacute; truy cập đường dẫn. Đồng thời, n&oacute; sẽ sẵn s&agrave;ng chấp nhận c&aacute;c&nbsp;<code>paths</code>&nbsp;mới một c&aacute;ch linh hoạt.</p>\r\n\r\n<h3>6.2 Webpack 5 Support</h3>\r\n\r\n<p>Next.js cũng đang hướng tới hỗ trợ Webpack 5. Điều n&agrave;y thật th&uacute; vị khi Webpack 5 mang lại một số tối ưu h&oacute;a bundle v&agrave; hiệu suất tuyệt vời, đồng thời loại bỏ hỗ trợ cho những thứ kh&ocirc;ng d&ugrave;ng nữa trong webpack 4, l&agrave;m cho phần&nbsp;<code>core</code>&nbsp;nhẹ hơn.</p>\r\n\r\n<p>Điều đ&oacute; c&oacute; nghĩa l&agrave; c&aacute;c ứng dụng Next.js của bạn sẽ nhanh hơn bao giờ hết v&agrave; mạnh mẽ hơn.</p>\r\n\r\n<p><a href=\"https://webpack.js.org/blog/2020-10-10-webpack-5-release/\" target=\"_blank\">T&igrave;m hiểu webpack 5</a></p>\r\n\r\n<h3>6.3 Dropping of getInitialProps</h3>\r\n\r\n<p>C&aacute; nh&acirc;n t&ocirc;i kh&ocirc;ng th&iacute;ch kh&aacute;i niệm c&oacute; một h&agrave;m duy nhất thực thi tr&ecirc;n cả hai m&ocirc;i trường (client request v&agrave; server request) -&nbsp;<code>getInitialProps</code>.</p>\r\n\r\n<p>Rất may, Next.js đ&atilde; ph&aacute;t hiện ra rằng c&oacute; một giải ph&aacute;p tốt hơn nhiều v&agrave; họ đ&atilde; đưa&nbsp;<code>getServerSideProps</code>&nbsp;v&agrave;&nbsp;<code>getStaticProps</code>&nbsp;v&agrave;o như hai phương ph&aacute;p tuyệt vời với những c&aacute;i t&ecirc;n hay.</p>\r\n\r\n<p><code>getServerSideProps</code>, như t&ecirc;n cho thấy, cho ph&eacute;p bạn đưa c&aacute;c&nbsp;<code>props</code>&nbsp;v&agrave;o trang Next.js của m&igrave;nh từ ch&iacute;nh&nbsp;<code>server</code>. V&agrave;&nbsp;<code>getStaticProps</code>&nbsp;cho ph&eacute;p Next.js vẫn tạo ra c&aacute;c đầu ra tĩnh tại thời điểm build.</p>\r\n\r\n<p><code>getStaticProps</code>&nbsp;kết hợp với t&aacute;i tạo&nbsp;<code>static regeneration</code>&nbsp;l&agrave; một t&iacute;nh năng tuyệt vời. Bạn nhận được nhiều lợi &iacute;ch của&nbsp;<code>dynamic backend</code>&nbsp;m&agrave; kh&ocirc;ng cần c&oacute;&nbsp;<code>dynamic backend</code>.</p>\r\n\r\n<h3>6.4 Persistent Caching for Page Bundles</h3>\r\n\r\n<p>Next.js hiện cũng hỗ trợ bộ nhớ đệm li&ecirc;n tục cho c&aacute;c trang kh&ocirc;ng bị thay đổi. Trước đ&acirc;y, khi bạn release một ứng dụng Next.js mới, Next.js sẽ loại bỏ to&agrave;n bộ ứng dụng v&agrave; người d&ugrave;ng phải tải xuống lại tất cả CSS / JS, ngay cả khi c&aacute;c g&oacute;i đ&oacute; kh&ocirc;ng thay đổi.</p>\r\n\r\n<p>Trong phi&ecirc;n bản Next.js mới nhất được ph&aacute;t h&agrave;nh v&agrave;o tuần trước, những người bạn của ch&uacute;ng t&ocirc;i tại Vercel đ&atilde; giới thiệu&nbsp;<code>Persistent Caching</code>&nbsp;(<a href=\"https://nextjs.org/blog/next-9-5#persistent-caching-for-page-bundles\" target=\"_blank\">t&igrave;m hiểu th&ecirc;m</a>) , đ&acirc;y một lần nữa l&agrave; một điều ho&agrave;n to&agrave;n tuyệt vời để c&oacute; hiệu suất.</p>\r\n\r\n<h3>6.5 Out of the box support for Sass Modules and TypeScript</h3>\r\n\r\n<p>Nếu c&oacute; một thứ t&ocirc;i y&ecirc;u th&iacute;ch hơn JavaScript, th&igrave; đ&oacute; l&agrave; TypeScript. V&agrave; Sass cũng rất ngọt ng&agrave;o. Hầu hết những người t&ocirc;i biết đều sử dụng Sass để tăng sức mạnh cho CSS của họ v&agrave; n&oacute; cung cấp trải nghiệm tuyệt vời cho develop</p>\r\n\r\n<p>Next.js từ l&acirc;u đ&atilde; cung cấp hỗ trợ tuyệt vời cho TypeScript. Nhưng gần đ&acirc;y họ cũng đ&atilde; th&ecirc;m hỗ trợ dựa tr&ecirc;n module cho Sass.</p>\r\n\r\n<p>Điều n&agrave;y c&oacute; nghĩa l&agrave; c&aacute;c&nbsp;<code>styles</code>&nbsp;hiện c&oacute; thể được viết bằng&nbsp;<code>Sass</code>, cục bộ cho c&aacute;c module của bạn, với bộ nhớ đệm v&agrave; x&aacute;c thực lại - tất cả đều do Next.js quản l&yacute; nội bộ.</p>\r\n\r\n<p>C&oacute; vẻ như Vercel thực sự muốn bạn ph&aacute;t triển những sản phẩm tốt nhất chỉ tập trung v&agrave;o logic.</p>\r\n\r\n<h2>7. Conclusion</h2>\r\n\r\n<p>Tr&ecirc;n l&agrave; t&igrave;m hiểu của m&igrave;nh về&nbsp;<code>Next.js</code></p>\r\n\r\n<p>Hi vọng b&agrave;i viết tr&ecirc;n gi&uacute;p mọi người c&oacute; được c&aacute;i nh&igrave;n kh&aacute;i qu&aacute;t về&nbsp;<code>Next.js</code>, một ng&ocirc;n ngữ đang chiếm được nhiều t&igrave;nh cảm của c&aacute;c developer</p>\r\n\r\n<h2>8. T&agrave;i liệu tham khảo</h2>\r\n\r\n<p><a href=\"https://nextjs.org/\" target=\"_blank\">Next.js</a></p>\r\n\r\n<p><a href=\"https://webpack.js.org/blog/2020-10-10-webpack-5-release/\" target=\"_blank\">Webpack</a></p>\r\n\r\n<p><a href=\"https://nextjs.org/blog/next-9-5\" target=\"_blank\">Next.js new version 9.5</a></p>\r\n\r\n<p><a href=\"https://www.freecodecamp.org/news/why-you-should-learn-next-js-as-a-react-developer/\" target=\"_blank\">Why You Should Learn Next.js</a></p>', '2020-12-21 13:27:48', NULL),
(8, 'Javascript - Làm quen với Spread', 'Spread-Operator-trong-JavaScript76.png', '<p>ES6 &lt;<strong>ECMAScript</strong>&gt; được ra mắt mang đến cho ch&uacute;ng ta rất nhiều operator tiện lợi trong qu&aacute; tr&igrave;nh l&agrave;m việc. Trong b&agrave;i viết n&agrave;y ch&uacute;ng ta sẽ c&ugrave;ng nhau t&igrave;m hiểu về Spread, c&aacute;c kh&aacute;i niệm, v&agrave; khả năng v&agrave; c&aacute;ch sử dụng của n&oacute;</p>\r\n\r\n<h3>Spread l&agrave; g&igrave;?</h3>\r\n\r\n<p>Spread l&agrave; một to&aacute;n tử mới được th&ecirc;m v&agrave;o từ phi&ecirc;n bản ES6. Spread cho ph&eacute;p duyệt qua lần lượt c&aacute;c phần tử v&agrave; c&oacute; thể sử dụng để truyền v&agrave;o c&aacute;c method như l&agrave; c&aacute;c đối số. N&oacute; được biểu thị đơn giản bằng 3 dấu chấm: ...</p>\r\n\r\n<pre>\r\n<code>var newValue = [...value]; \r\n</code></pre>\r\n\r\n<p>Trong v&iacute; dụ tr&ecirc;n, th&igrave; biến mới c&oacute; t&ecirc;n newValue sẽ lấy được to&agrave;n bộ dữ liệu của biến value bằng c&aacute;ch sử dụng Spread operator. Spread c&oacute; thể sử dụng trong rất nhiều trường hợp tương tự c&aacute;c method đ&atilde; c&oacute; sẵn, v&iacute; dụ như khi ch&uacute;ng ta muốn&nbsp;<strong>copy</strong>&nbsp;một mảng dữ liệu,&nbsp;<strong>expand</strong>,&nbsp;<strong>concat</strong>,&nbsp;<strong>math</strong></p>\r\n\r\n<h3>Sử dụng Spread tương tự với concat()</h3>\r\n\r\n<p>concat() l&agrave; phương thực được cung cấp trong Js, n&oacute; cho ph&eacute;p ch&uacute;ng ta m&oacute;c nối c&aacute;c mảng lại với nhau để tạo th&agrave;nh một mảng dữ liệu duy nhất hoặc m&oacute;c nối c&aacute;c biến string lại với nhau. Với array, khi ch&uacute;ng ta sử dụng concat(), n&oacute; sẽ kh&ocirc;ng l&agrave;m thay đổi đến dữ liệu hiện tại của mảng. V&iacute; dụ dưới đ&acirc;y</p>\r\n\r\n<pre>\r\n<code>let arr = [1,2,3]; \r\nlet arr2 = [4,5]; \r\n  \r\nconst arr3 = arr.concat(arr2); \r\nconsole.log(arr);  // [ 1, 2, 3 ]\r\nconsole.log(arr2);  // [ 4, 5 ]\r\nconsole.log(arr3); // [ 1, 2, 3, 4, 5 ] \r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thay v&igrave; sử dụng concat, ch&uacute;ng ta c&oacute; thể đạt được điều tương tự bằng c&aacute;ch sử dụng Spread. Mặc d&ugrave; việc sử dụng Spread c&oacute; thể gi&uacute;p ch&uacute;ng ta đạt được kết quả giống với concat(), nhưng với dữ liệu c&oacute; size lớn th&igrave; ch&uacute;ng ta n&ecirc;n sử dụng concat(), v&igrave; việc sử dụng Spread g&acirc;y mất thời gian hơn so với concat() . V&iacute; dụ dưới đ&acirc;y:</p>\r\n\r\n<pre>\r\n<code>let arr = [1,2,3]; \r\nlet arr2 = [4,5]; \r\n  \r\nconst arr3 = [...arr, ...arr2];\r\nconsole.log(arr);  // [ 1, 2, 3 ]\r\nconsole.log(arr2);  // [ 4, 5 ]\r\nconsole.log(arr3); // [ 1, 2, 3, 4, 5 ] \r\n</code></pre>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/e4c6734e-197b-4dc7-a052-9b98337ddb4f.png\" /></p>\r\n\r\n<h3>Sử dụng Spread tương tự việc copy dữ liệu (splice)</h3>\r\n\r\n<p>B&igrave;nh thường, khi ch&uacute;ng ta muốn copy dữ liệu của một variable, ch&uacute;ng ta sẽ c&oacute; thể khai b&aacute;o như sau:</p>\r\n\r\n<pre>\r\n<code>let arr = [1,2,3,4]; \r\nlet newArr = arr; \r\n  \r\nconsole.log(newArr); // [1,2,3,4] \r\n</code></pre>\r\n\r\n<p>Tuy nhi&ecirc;n, việc copy dữ liệu như thế n&agrave;y sẽ g&acirc;y ra refercence, nếu như ch&uacute;ng ta thay đổi dữ liệu của newArr th&igrave; n&oacute; cũng sẽ ảnh hưởng đến arr. V&iacute; dụ như dưới đ&acirc;y:</p>\r\n\r\n<pre>\r\n<code>let arr = [1,2,3,4]; \r\nlet newArr = arr; \r\nnewArr.pop();\r\nconsole.log(newArr); // [1,2,3] \r\nconsole.log(arr); // [1,2,3] \r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>L&uacute;c n&agrave;y, dữ liệu đ&atilde; c&oacute; sự sai kh&aacute;c. Để tr&aacute;nh việc n&agrave;y, ch&uacute;ng ta ho&agrave;n to&agrave;n c&oacute; thể dử dụng Spread để thực hiện copy value.</p>\r\n\r\n<pre>\r\n<code>let arr = [1,2,3,4]; \r\nlet newArr = [...arr]; \r\nnewArr.pop();\r\nconsole.log(newArr); // [1,2,3] \r\nconsole.log(arr); // [1,2,3,4] \r\n</code></pre>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thật đơn giản đ&uacute;ng kh&ocirc;ng, bằng c&aacute;ch n&agrave;y, ch&uacute;ng ta sẽ đảm bảo được rằng dữ liệu gốc sẽ kh&ocirc;ng bị ảnh hưởng trong qu&aacute; tr&igrave;nh xử l&yacute;.</p>\r\n\r\n<h3>Sử dụng Spread để mở rộng (expand)</h3>\r\n\r\n<p>Như b&igrave;nh thường, khi ch&uacute;ng ta mở rộng mảng ch&uacute;ng ta c&oacute; thể d&ugrave;ng c&aacute;ch th&ocirc;ng thường như dưới đ&acirc;y:</p>\r\n\r\n<pre>\r\n<code>let arr = [&#39;a&#39;,&#39;b&#39;]; \r\nlet arr2 = [arr,&#39;c&#39;,&#39;d&#39;]; \r\nconsole.log(arr2);\r\n</code></pre>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/04031557-64f2-4650-b15e-1bff711cbde7.png\" />Mặc d&ugrave; kh&ocirc;ng c&oacute; b&aacute;o lỗi, nhưng việc mảng lồng b&ecirc;n trong một mảng kh&aacute;c c&oacute; vẻ l&agrave; điều kh&aacute; g&acirc;y băn khoăn, chưa kể việc mở rộng n&agrave;y sẽ g&acirc;y kh&oacute; khăn trong việc xử l&yacute; dữ liệu... Nếu ch&uacute;ng ta muốn bớt đi sự băn khoăn n&agrave;y, ch&uacute;ng ta c&oacute; thể sử dụng Spread. Bằng c&aacute;ch copy lần lượt c&aacute;c phần tử b&ecirc;n trong mảng arr sang mảng mới. V&agrave; l&uacute;c n&agrave;y đoạn code sẽ sửa như sau:</p>\r\n\r\n<pre>\r\n<code>let arr = [&#39;a&#39;,&#39;b&#39;]; \r\nlet arr2 = [...arr,&#39;c&#39;,&#39;d&#39;]; \r\nconsole.log(arr2);\r\n</code></pre>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/e77f1a4d-9f89-4631-8a05-f49c24870781.png\" /></p>\r\n\r\n<h3>Spread với Math object</h3>\r\n\r\n<p>Math object trong JS kh&aacute; hữu &iacute;ch trong một số trường hợp v&iacute; dụ như ch&uacute;ng ta muốn t&igrave;m số lớn nhất, hoặc nhỏ nhất trong một list c&aacute;c số... V&iacute; dụ dưới đ&acirc;y l&agrave; cơ bản về c&aacute;ch sử dụng của Math để t&igrave;m ra số lớn nhất. V&iacute; dụ:</p>\r\n\r\n<pre>\r\n<code>console.log(Math.max(1,2,3,-1)); //3\r\n</code></pre>\r\n\r\n<p>V&iacute; dụ như nếu ch&uacute;ng ta c&oacute; một mảng dữ liệu như sau [1,2,3,-1] . Để c&oacute; thể t&igrave;m gi&aacute; trị lớn nhất th&igrave; l&uacute;c n&agrave;y Math sẽ bị lỗi bởi v&igrave; Math kh&ocirc;ng thể l&agrave;m việc được với array.</p>\r\n\r\n<pre>\r\n<code>const arr = [1,2,3,-1];\r\nconsole.log(Math.max(arr));\r\n</code></pre>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/3fe02c2b-5f2b-4357-a94d-123c809c5727.png\" /></p>\r\n\r\n<p>Để giải quyết vấn đề n&agrave;y, ch&uacute;ng ta cũng c&oacute; thể d&ugrave;ng Spread. L&uacute;c n&agrave;y, đoạn code tr&ecirc;n sẽ được sửa th&agrave;nh:</p>\r\n\r\n<pre>\r\n<code>const arr = [1,2,3,-1];\r\nconsole.log(Math.max(...arr));\r\n</code></pre>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/13a7bb87-a89b-4c68-b48c-a5b15afc1d49.png\" /></p>\r\n\r\n<h3>Spread với Object</h3>\r\n\r\n<p>Ch&uacute;ng ta ho&agrave;n to&agrave;n c&oacute; thể sử dụng Spread để copy v&agrave; mở rộng một object. V&iacute; dụ m&igrave;nh sẽ c&oacute; một object &quot;user&quot; như sau:</p>\r\n\r\n<pre>\r\n<code>const user = { \r\n    name: &#39;Dung&#39;, \r\n    age: 25 \r\n}; \r\n</code></pre>\r\n\r\n<p>Tiếp đến, m&igrave;nh c&oacute; một object kh&aacute;c c&oacute; t&ecirc;n l&agrave; &quot;class&quot;:</p>\r\n\r\n<pre>\r\n<code>const info = { \r\n    email: &#39;khuat.van.dung@abc.xyz&#39;,\r\n    address: &#39;xyz-hanoi\r\n}; \r\n</code></pre>\r\n\r\n<p>L&uacute;c n&agrave;y, trong trường hợp m&igrave;nh muốn gộp 2 object n&agrave;y lại, m&igrave;nh ho&agrave;n to&agrave;n c&oacute; thể thực hiện như sau:</p>\r\n\r\n<pre>\r\n<code>const user = { \r\n    name: &#39;Dung&#39;, \r\n    age: 25 \r\n}; \r\n\r\nconst info = { \r\n    email: &#39;khuat.van.dung@abc.xyz&#39;,\r\n    address: &#39;xyz-hanoi&#39;\r\n}; \r\n\r\nconst profile = { ...user, ...info };\r\n\r\nconsole.log(profile);\r\n</code></pre>\r\n\r\n<p><img alt=\"\" src=\"https://images.viblo.asia/e24af0af-a80e-47fc-9b11-69f0b8990e82.png\" /></p>\r\n\r\n<p>L&uacute;c n&agrave;y, &quot;profile&quot; sẽ l&agrave; một object mới, bao gồm bản copy của &quot;user&quot; v&agrave; &quot;info&quot;.</p>\r\n\r\n<h3>Kết</h3>\r\n\r\n<p>Cảm ơn c&aacute;c bạn đ&atilde; ch&uacute; &yacute; đọc b&agrave;i viết.</p>\r\n\r\n<p>B&agrave;i viết tham khảo:</p>\r\n\r\n<p><a href=\"https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax\" target=\"_blank\">https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Spread_syntax</a>&nbsp;<a href=\"https://www.geeksforgeeks.org/javascript-spread-operator/\" target=\"_blank\">https://www.geeksforgeeks.org/javascript-spread-operator/</a></p>', '2020-12-21 13:27:51', '2020-12-21 06:26:45');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_img`, `created_at`, `updated_at`) VALUES
(1, 'Front-End', 'content75.png', '2020-12-21 00:48:37', '2020-12-23 21:28:24'),
(2, 'Back-End', 'briefcase73.png', '2020-12-21 00:52:06', NULL),
(3, 'FullStack', 'career61.png', '2020-12-21 00:52:19', NULL),
(4, 'IT & Software', 'python96.png', '2020-12-21 00:52:35', NULL),
(5, 'Art & Design', 'designer82.png', '2020-12-21 00:52:48', NULL),
(6, 'Marketing', 'speaker53.png', '2020-12-21 00:53:30', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chappter`
--

CREATE TABLE `tbl_chappter` (
  `chappter_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `chappter_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chappter`
--

INSERT INTO `tbl_chappter` (`chappter_id`, `course_id`, `chappter_name`, `created_at`, `updated_at`) VALUES
(1, 1, 'Chương 1: Giới thiệu khóa học', NULL, NULL),
(2, 1, 'Chương 2: Phân tích cấu trúc Database', NULL, NULL),
(3, 1, 'Chương 3: Thực hành', NULL, NULL),
(4, 2, 'Chương 1: Giới thiệu', NULL, NULL),
(5, 2, 'Chương 2: Làm quen', NULL, NULL),
(6, 2, 'Chương 3: Kiến thức cốt lõi', NULL, NULL),
(7, 2, 'Chương 4: HTML DOM', NULL, NULL),
(8, 2, 'Chương 5: Form Validation', NULL, NULL),
(9, 3, 'Chương 1: Giới thiệu', NULL, NULL),
(10, 3, 'Chương 2: Kiến thức cốt lõi', NULL, NULL),
(11, 3, 'Chương 3: Thực hành', NULL, NULL),
(12, 4, 'Chương 1: Giới thiệu về hệ điều hành Linux', NULL, NULL),
(13, 4, 'Chương 2: Làm việc với file', NULL, NULL),
(14, 4, 'Chương 3: Làm việc với hệ thống và mạng', NULL, NULL),
(15, 4, 'Chương 4: Cài đặt và cấu hình các dịch vụ cơ bản', NULL, NULL),
(16, 5, 'Chương 1: Trải nghiệm chỉnh ảnh trong PhotoShop', NULL, NULL),
(17, 5, 'Chương 2: Bộ công cụ cơ bản trong PhotoShop', NULL, NULL),
(18, 6, 'Chương 1: Tổng quan về Digital Marketing', NULL, NULL),
(19, 6, 'Chương 2: Quy trình làm Marketing', NULL, NULL),
(20, 6, 'Chương 3: Phân tích hành vi của người tiêu dùng trong thời đại kỹ thuật số', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_chappter_content`
--

CREATE TABLE `tbl_chappter_content` (
  `chappter_content_id` bigint(20) UNSIGNED NOT NULL,
  `chappter_id` bigint(20) UNSIGNED NOT NULL,
  `chappter_content_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `chappter_content_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_mandatory` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_chappter_content`
--

INSERT INTO `tbl_chappter_content` (`chappter_content_id`, `chappter_id`, `chappter_content_name`, `chappter_content_link`, `is_mandatory`, `created_at`, `updated_at`) VALUES
(2, 2, 'Bài 1: Phân Tích Cấu Trúc Database', 'TMvpjCCANaQ', 0, NULL, NULL),
(3, 2, 'Bài 2: Tạo Database Và Cấu Hình Project Kết Nối Database', '_Hb8rVc5dFE', 0, NULL, NULL),
(4, 3, 'Bài 3: Tạo Model', '_Rj8ZjafG6g', 0, NULL, NULL),
(5, 3, 'Bài 4: Cắt Layout Trang Chủ', 'ad9COizn9kI', 0, NULL, NULL),
(6, 3, 'Bài 5: Cắt Layout Các Trang', 'OwjvJf9ZsyA', 0, NULL, NULL),
(7, 3, 'Bài 6: Đổ Dữ Liệu Ra Slide Trang Chủ', '7X2blnrmB10', 0, NULL, NULL),
(8, 3, 'Bài 7: Đổ Dữ Liệu Sản Phẩm Ra Trang Chủ', 'lbwwtJks1Mw', 0, NULL, NULL),
(9, 3, 'Bài 8: Đổ Dữ Liệu Sản Phẩm Ra Trang Chủ, Phân Trang', 'ccUy_AQxxt4', 0, NULL, NULL),
(10, 3, 'Bài 9: View Share, Đọc Danh Sách Loại Sản Phẩm', '1oQLoCbWIB4', 0, NULL, NULL),
(11, 3, 'Bài 10: Đọc Danh Sách Sản Phẩm Theo Loại', 'daPGbyIwVdQ', 0, NULL, NULL),
(12, 3, 'Bài 11: Đọc Chi Tiết Sản Phẩm', 'o-L-PMgPQOQ', 0, NULL, NULL),
(13, 3, 'Bài 12: Giỏ hàng', 'ise_SPslDH4', 0, NULL, NULL),
(14, 3, 'Bài 13: Xóa Giỏ Hàng', '5c4BhBRjx44', 0, NULL, NULL),
(15, 3, 'Bài 14: Lưu Thông Tin Đơn Hàng Vào Database Phần 1', 'XbggT3OFQk4', 0, NULL, NULL),
(16, 3, 'Bài 15: Lưu Thông Tin Đơn Hàng Vào Database Phần 2', 'lZpc4mEnMBo', 0, NULL, NULL),
(17, 3, 'Bài 16: Cắt Layout Trang Đăng Kí, Đăng Nhập', 'Y85E0m_VKYk', 0, NULL, NULL),
(18, 3, 'Bài 17: Chức Năng Đăng Kí Tài Khoản Người Dùng', 'tgdBF7PvRhs', 0, NULL, NULL),
(19, 3, 'Bài 18: Đăng Nhập Và Đăng Xuất Với Authentication', 'uLTE7dPUQI4', 0, NULL, NULL),
(20, 3, 'Bài 19: Chức Năng Tìm Kiếm', 'a_Vu9CJ2wFI', 0, NULL, NULL),
(21, 4, 'Bài 1: Lời khuyên trước khóa học', '-jV06pqjUUc', 1, NULL, NULL),
(22, 4, 'Bài 2: Cài đặt môi trường', 'efI98nT8Ffo', 0, NULL, NULL),
(23, 5, 'Bài 3: Sử dụng JS trong file HTML', 'W0vEUmyvthQ', 0, NULL, NULL),
(24, 5, 'Bài 4: Khai báo biến', 'CLbx37dqYEI', 0, NULL, NULL),
(25, 5, 'Bài 5: Comments', 'xRpXBEq6TOY', 0, NULL, NULL),
(26, 5, 'Bài 6: Một số hàm built-in', 'rSV33HGotgE', 0, NULL, NULL),
(27, 5, 'Bài 7: Làm quen với toán tử', 'SZb-N7TfPlw', 0, NULL, NULL),
(28, 5, 'Bài 8: Toán tử số học', 'm_h7-dgKnMU', 0, NULL, NULL),
(29, 5, 'Bài 9: Toán tử ++ -- với tiền tố & hậu tố', 'aM-DUx6Qnc8', 0, NULL, NULL),
(30, 5, 'Bài 10: Toán tử gán', 'ncRmjazgsE8', 0, NULL, NULL),
(31, 5, 'Bài 11: Toán tử chuỗi', 'QCLVU6cZU_E', 0, NULL, NULL),
(32, 5, 'Bài 12: Toán tử so sánh trong Javascript phần 1', 'rWM2lXtS-d8', 0, NULL, NULL),
(33, 5, 'Bài 13: Kiểu dữ liệu Boolean', '9cZEG1SSSQc', 0, NULL, NULL),
(34, 5, 'Bài 14: Câu lệnh điều kiện If', '9MpHrdWBdxg', 0, NULL, NULL),
(35, 5, 'Bài 15: Toán tử logical', 'O_-SQ-aVR3E', 0, NULL, NULL),
(36, 5, 'Bài 16: Kiểu dữ liệu trong Javascript', 'P-fMQ3elxSE', 0, NULL, NULL),
(37, 5, 'Bài 17: Toán tử so sánh phần 2', 'meCXeMeyFdE', 0, NULL, NULL),
(38, 5, 'Bài 18: Toán tử logical và câu lệnh điều kiện If', 'j1PbSq5kJKY', 0, NULL, NULL),
(39, 6, 'Bài 19: Chuỗi', '6F_dajRCC9Q', 0, NULL, NULL),
(40, 6, 'Bài 20: Làm việc với chuỗi', 'b4YivuRmcEw', 0, NULL, NULL),
(41, 6, 'Bài 21: Số và làm  việc với số', 'varb35t44v0', 0, NULL, NULL),
(42, 9, '#1, Introduccion & Overview', 'Fs1G1BcP4BI', 0, NULL, NULL),
(43, 10, '#2 , Nodejs Backend', 'IR5FXX7a_rM', 0, NULL, NULL),
(44, 10, '#3 , Express Middlewares', 'VOx3iON96ew', 0, NULL, NULL),
(45, 10, '#4: Archivos estaticos con Express', '0Clbi-8EiLw', 0, NULL, NULL),
(46, 10, '#5: Base de datos MongoDB', 'NsiGIt9HVBM', 0, NULL, NULL),
(47, 10, '#6: Variables de Entorno, dotenv & cross-env', 'gTZmRwzzDlM', 0, NULL, NULL),
(48, 10, '#7: REST API Nodejs & Mongodb', 'c4mzLwZNCgQ', 0, NULL, NULL),
(49, 10, '#8: Frontend & npm modulos', 'z3OyqCE_J64', 0, NULL, NULL),
(50, 10, '#9: Webpack', 'gtkdxLgHIhg', 0, NULL, NULL),
(51, 10, '#10: User Interface & Bootstrap 4', 'mX6NwOwTlzk', 0, NULL, NULL),
(52, 10, '#11: Javascript Service Clases, fetch y AJAX', 'hO9993I520E', 0, NULL, NULL),
(53, 10, '#12: Renderizando Datos & Fetch', 'cpIIANXEXaI', 0, NULL, NULL),
(54, 10, '#13: HTTP Delete & eliminacion de Imagenes', 'wS2xCdbsnyg', 0, NULL, NULL),
(55, 10, '#14: (Final), Despliegue con Heroku y Mongodb Atlas', 'nm7gWyZvdVU', 0, NULL, NULL),
(56, 11, '#15: Javascript Single Page Application (SPA)', 'D9avX-jtIPM', 0, NULL, NULL),
(57, 11, '#16: Firebase Firestore CRUD con Javascript y HTML', 'itNsRn1kjLU', 0, NULL, NULL),
(58, 12, 'Bài 1: Giới thiệu khóa học Linux', '1v90nqLUH2w', 0, NULL, NULL),
(59, 12, 'Bài 2: Giới thiệu lịch sử Linux', 'ck-dZslUxEA', 0, NULL, NULL),
(60, 12, 'Bài 3: Ai sử dụng Linux', 'jp-AX3wUJTE', 0, NULL, NULL),
(61, 12, 'Bài 4: Thiết lập môi trường Linux', 'eGIapwJwsvU', 0, NULL, NULL),
(62, 12, 'Bài 5: Đăng nhập vào Linux', 'lrLa3taOzCs', 0, NULL, NULL),
(63, 12, 'Bài 6: Chạy lệnh trên linux và trợ giúp lệnh', 'JwDuUIfdATo', 0, NULL, NULL),
(64, 12, 'Bài 7: Giới thiệu về file system', 'CTlSOvZaeK8', 0, NULL, NULL),
(65, 12, 'Bài 8: Các lệnh file system thiết yếu', '2M3ZuGU6t_Q', 0, NULL, NULL),
(66, 12, 'Bài 9: Đường dẫn tuyệt đối và tương đối', 'MMfjepNNG4I', 0, NULL, NULL),
(67, 12, 'Bài 10: Một vài thủ thuật hữu ích khi gõ lệnh', 'W0jWVra5Apc', 0, NULL, NULL),
(68, 13, 'Bài 11: Tạo xóa thư mục, file', 'QrFNJIrKznI', 0, NULL, NULL),
(69, 13, 'Bài 12: Copy, di chuyển, đổi tên file và thư mục', 'KGuvu1_9Vy4', 0, NULL, NULL),
(70, 13, 'Bài 13: Các lệnh đọc file', 'PlA3_arwNk0', 0, NULL, NULL),
(71, 13, 'Bài 14: Làm việc với trình soạn thảo văn bản vi', '_T4f6XPW4Ew', 0, NULL, NULL),
(72, 16, 'Bài 1: Chỉnh Ảnh Nhanh', 'xYR03V2leaY', 0, NULL, NULL),
(73, 16, 'Bài 2: Cách chỉnh da, bóp mặt và dàn trang Photobook', 'TYruJi-LeFQ', 0, NULL, NULL),
(74, 16, 'Bài 3: Cắt ghép người qua nền khác - du lịch \"ảo\"', 'hBVQkRXp4XY', 0, NULL, NULL),
(75, 17, 'Bài 4: Nắm bắt tất cả công cụ của Photoshop', '4pbJF4KOCRI', 0, NULL, NULL),
(76, 18, 'Lesson 1 - Định nghĩa Digital marketing là gì?', 'Vic5oM5HF6Q', 0, NULL, NULL),
(77, 18, 'Lesson 2 - Phân biệt OM và DM', 'YTVTyU6jR9Y', 0, NULL, '2020-12-24 06:45:07'),
(78, 18, 'Lesson 3 - Phân biệt giữa MKT và Digital marketing', '4EBfCaHhey8', 0, NULL, NULL),
(79, 18, 'Lesson 4 - Các công cụ truyền thông trong DM', 'gG-riO4NKHQ', 0, NULL, NULL),
(80, 18, 'Lesson 5 - Mô hình Paid Owned Earned Media', '8ZvuPrpr19g', 0, NULL, NULL),
(81, 19, 'Lesson 1 - Môi trường vi mô trong marketing', '0HUgrpbKhaE', 0, NULL, NULL),
(82, 19, 'Lesson 2 - Môi trường vĩ mô trong marketing', '_yUH8z-76bE', 0, NULL, NULL),
(83, 19, 'Lesson 3 - Quy trình SOSTAC®', 'u1XVYbfUNa4', 0, NULL, NULL),
(84, 20, 'Lesson 1 - Mô hình hành vi khách hàng cổ điển', '5eZr6hHroco', 0, NULL, NULL),
(85, 20, 'Lesson 2 - Hành vi khách hàng trong môi trường số', 'GUNxslXcXOQ', 0, NULL, NULL),
(90, 1, 'Bài 1: Đây là bài 1', 'be.com/watch?v=_MDdAeP3yvU', 0, '2020-12-23 21:19:08', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_id`, `name`, `email`, `title`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Nguyễn Minh Long', 'nguyen.minhlong270400@gmail.com', 'Góp Ý', 'Đây là góp ý', NULL, NULL),
(2, 'Nguyễn Văn A', 'student1@example.com', 'Góp Ý', 'Đây là góp ý', NULL, NULL),
(3, 'Nguyễn Văn B', 'student2@example.com', 'Góp Ý', 'Đây là góp ý', NULL, NULL),
(4, 'Nguyễn Văn C', 'student3@example.com', 'Góp Ý', 'Đây là góp ý', NULL, NULL),
(5, 'testt', 'test@gmail.com', 'test', 'test', '2020-12-24 19:55:14', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_course`
--

CREATE TABLE `tbl_course` (
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `course_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_img` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_lever` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_overview` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `course_learned` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_course`
--

INSERT INTO `tbl_course` (`course_id`, `category_id`, `course_name`, `course_img`, `course_lever`, `course_overview`, `course_learned`, `created_at`, `updated_at`) VALUES
(1, 2, 'Lập trình PHP Laravel 5x: Xây dựng website bán hàng (Đã hoàn thành)', 'course-laravel85.jpg', 'Trung cấp', '<p>Kh&oacute;a học d&agrave;nh cho người muốn trở th&agrave;nh Lập tr&igrave;nh vi&ecirc;n Web PHP chuy&ecirc;n nghiệp, Freelancer PHP Developer đ&atilde; biết về HTML, Java Script v&agrave; SQL.</p>\r\n\r\n<p>Kho&aacute; học n&agrave;y sẽ hướng dẫn bạn ph&aacute;t triển một website phần backend từ đầu tới cuối với ng&ocirc;n ngữ PHP th&ocirc;ng qua việc sử dụng Framework PHP mạnh mẽ nhất b&acirc;y giờ l&agrave; Laravel 5.x</p>', '<ul>\r\n	<li>X&acirc;y dựng ứng dụng web ho&agrave;n chỉnh c&oacute; t&iacute;nh tương t&aacute;c với dữ liệu bằng PHP</li>\r\n	<li>Thiết lập template cho website với Blade Template</li>\r\n	<li>X&acirc;y dựng form để thu thập dữ liệu</li>\r\n	<li>Hiển thị dữ liệu</li>\r\n	<li>T&igrave;m kiếm dữ liệu</li>\r\n	<li>Cập nhật v&agrave; xo&aacute; dữ liệu</li>\r\n	<li>Định hướng trang web với Route</li>\r\n</ul>', NULL, NULL),
(2, 1, 'Lập trình Javascript cơ bản (Đang cập nhật)', 'course-javascript48.jpg', 'Sơ cấp', '<p>Kh&oacute;a học Javascript cơ bản d&agrave;nh cho mọi đối tượng bắt đầu học lập tr&igrave;nh với nội dung ngắn gọn, dễ hiểu v&agrave; hệ thống l&agrave;m b&agrave;i tập phong ph&uacute;</p>', '<ul>\r\n	<li>Hiểu chi tiết về c&aacute;c kh&aacute;i niệm cơ bản trong JS</li>\r\n	<li>X&acirc;y dựng được website đầu ti&ecirc;n kết hợp với JS</li>\r\n	<li>Tự tin khi phỏng vấn với kiến thức vững chắc</li>\r\n	<li>C&oacute; nền tảng để học c&aacute;c thư viện v&agrave; framework JS</li>\r\n	<li>Nắm chắc c&aacute;c t&iacute;nh năng trong phi&ecirc;n bản ES6</li>\r\n</ul>', NULL, NULL),
(3, 3, 'Javascript FullStack (Đã hoàn thành)', 'course-fullstack25.jpg', 'Cao cấp', '<p>Kh&oacute;a học cơ bản gồm 2 phần:</p>\r\n\r\n<ol>\r\n	<li>Phần một l&agrave; l&yacute; thuyết cơ bản về ng&ocirc;n ngữ JavaScript.</li>\r\n	<li>Phần hai l&agrave; học thực h&agrave;nh để hiểu bản chất c&aacute;ch l&agrave;m một ứng dụng với JavaScript</li>\r\n</ol>', '<ul>\r\n	<li>Hiểu được về cơ bản JavaScript&nbsp;v&agrave; hệ sinh th&aacute;i JavaScript.</li>\r\n	<li>Biết c&aacute;ch tạo, build v&agrave; run project với JavaScript nhanh nhất.</li>\r\n	<li>Nắm được kiến tr&uacute;c v&agrave; t&iacute;ch hợp của một ứng dụng web: Frontend v&agrave; Backend</li>\r\n</ul>', NULL, NULL),
(4, 4, 'Linux cơ bản (Đang cập nhật)', 'course-linux22.png', 'Sơ cấp', '<p>Kh&oacute;a học d&agrave;nh ri&ecirc;ng cho những người sử dụng nền tảng, hệ điều h&agrave;nh Linux.</p>\r\n\r\n<p>Bạn sẽ được giới thiệu to&agrave;n bộ về hệ điều h&agrave;nh Linux. C&aacute;c lệnh chủ yếu khi l&agrave;m việc với file system, thao t&aacute;c với file cấu h&igrave;nh, quản trị hệ thống v&agrave; mạng, c&agrave;i đặt v&agrave; cấu h&igrave;nh c&aacute;c dịch vụ cơ bản</p>\r\n\r\n<p>Kh&oacute;a học trang bị kỹ năng cơ bản nhất như kỹ năng thực h&agrave;nh v&agrave; tư duy để giải quyết vấn đề trong l&uacute;c l&agrave;m việc với hệ điều h&agrave;nh m&atilde; nguồn mở.</p>', '<p>Kh&oacute;a học trang bị kỹ năng cơ bản nhất như kỹ năng thực h&agrave;nh v&agrave; tư duy để giải quyết vấn đề trong l&uacute;c l&agrave;m việc với hệ điều h&agrave;nh m&atilde; nguồn mở.</p>', NULL, NULL),
(5, 5, 'Học photoshop cấp tốc (Đã hoàn thành)', 'course-pts79.jpg', 'Sơ cấp', '<p>Trong list n&agrave;y m&igrave;nh sẽ hướng dẫn anh em newbie c&aacute;ch để tự học photoshop cấp tốc nhanh ch&oacute;ng ngay tại nh&agrave; với c&aacute;c b&agrave;i giảng nhỏ lẻ :D đảm bảo anh em sẽ d&agrave;ng theo kịp v&agrave; thực h&agrave;nh ngay c&ugrave;ng m&igrave;nh.</p>', '<ul>\r\n	<li>Nắm được nhũng kỹ thuật chỉnh ảnh nhanh trong PhotoShop</li>\r\n	<li>Nắm bắt tất cả c&ocirc;ng cụ của PhotoShop</li>\r\n	<li>C&oacute; thể tự cắt gh&eacute;p ảnh cơ bản</li>\r\n</ul>', NULL, NULL),
(6, 6, 'Cùng học DIGITAL MARKETING (Đang cập nhật)', 'course-marketing17.png', 'Sơ cấp', '<p>LearnUp&nbsp;h&acirc;n hạnh giới thiệu series m&ocirc;n học C&ugrave;ng học DIGITAL MARKETING&nbsp;cho c&aacute;c bạn học vi&ecirc;n. Đ&acirc;y l&agrave; m&ocirc;n học căn bản cho những bạn trẻ muốn bước ch&acirc;n v&agrave;o con đường trở th&agrave;nh Digital marketer chuy&ecirc;n nghiệp.</p>', '<ul>\r\n	<li>\r\n	<p>Ứng dụng được kiến thức đ&atilde; học v&agrave;o chạy quảng c&aacute;o tr&ecirc;n Facebook</p>\r\n	</li>\r\n	<li>\r\n	<p>Tiếp cận NHIỀU kh&aacute;ch h&agrave;ng tiềm năng nhất với chi ph&iacute; &Iacute;T NHẤT.</p>\r\n	</li>\r\n	<li>\r\n	<p>Tạo những b&agrave;i viết c&oacute; khả năng- HẤP DẪN, M&Ecirc; HOẶC kh&aacute;ch h&agrave;ng. Đ&Aacute;NH BẬT mọi đối thủ cạnh tranh.</p>\r\n	</li>\r\n	<li>\r\n	<p>TRIỂN KHAI, KIỂM SO&Aacute;T c&aacute;c chiến dịch Facebook Marketing. Tự x&acirc;y dựng đội ngũ.</p>\r\n	</li>\r\n</ul>', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_feedback`
--

CREATE TABLE `tbl_feedback` (
  `fee_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `fee_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_feedback`
--

INSERT INTO `tbl_feedback` (`fee_id`, `student_id`, `course_id`, `fee_text`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Thích cách hướng dẫn kiến thức mới của giảng viên này, khá dễ tiếp thu', '2020-12-21 01:34:44', NULL),
(2, 5, 2, 'Khóa học bổ ích. LearnUp cập nhật thêm nhé', '2020-12-21 03:25:50', NULL),
(3, 5, 1, 'Kiến thức bổ ích', '2020-12-21 03:26:12', NULL),
(4, 5, 6, 'Khóa học bổ ích', '2020-12-21 03:26:52', NULL),
(5, 5, 5, 'Mong LearnUp cập nhật thêm', '2020-12-21 03:29:03', NULL),
(6, 5, 4, 'Cập nhật thêm video mới nhé LearnUp', '2020-12-21 03:29:30', NULL),
(7, 1, 6, 'Cập nhật thêm video sớm nha admin', '2020-12-21 03:30:05', NULL),
(8, 1, 5, 'Khóa học bổ ích', '2020-12-21 03:30:24', NULL),
(9, 1, 3, 'Good', '2020-12-21 03:30:48', NULL),
(10, 1, 2, 'Good!!', '2020-12-21 03:31:21', NULL),
(11, 2, 2, 'Cập nhật thêm video admin ơi!!!', '2020-12-21 03:32:28', NULL),
(12, 2, 1, 'Good', '2020-12-21 03:32:47', NULL),
(13, 3, 2, 'Ra video mới đi admin ơi!!!', '2020-12-21 03:33:52', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_listemail`
--

CREATE TABLE `tbl_listemail` (
  `email_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_listemail`
--

INSERT INTO `tbl_listemail` (`email_id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'nguyen.minhlong270400@gmail.com', '2020-12-21 22:01:54', NULL),
(2, 'student@example.com', '2020-12-21 22:02:00', NULL),
(3, 'admin@learnup.com', '2020-12-21 22:02:12', NULL),
(4, 'angrycat993@instasmail.com', '2020-12-21 22:02:18', NULL),
(5, 'sadswan496@donymails.com', '2020-12-21 22:02:25', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_student`
--

CREATE TABLE `tbl_student` (
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `student_username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `student_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `student_introduce` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_student`
--

INSERT INTO `tbl_student` (`student_id`, `student_username`, `student_password`, `student_name`, `student_email`, `student_phone`, `student_address`, `student_introduce`, `created_at`, `updated_at`) VALUES
(1, 'student', 'cd73502828457d15655bbd7a63fb0bc8', 'Nguyễn Minh Long', 'nguyen.minhlong270400@gmail.com', '0961340573', '450 Đường Trần Đại Nghĩa, Quận Ngũ Hành Sơn, TP Đà Nẵng', 'Sinh viên lớp K1204A\r\nTrường Đại Học Công Nghệ Thông Tin và Truyền Thông Việt Hàn', NULL, '2020-12-24 05:28:27'),
(2, 'student1', 'f9a79fc18bb00832f9ef7766dc2b416f', 'Nguyễn Văn A', 'student1@gmail.com', '0702244434', '92 Đô Đốc Tuyết, Hòa Xuân, Cẩm Lệ,  Đà Nẵng', NULL, NULL, '2020-12-24 05:38:18'),
(3, 'student2', '1ac439996c4d32152774d9198a8412db', 'Nguyễn Văn B', 'student2@gmail.com', '0702244434', '92 Đô Đốc Tuyết, Hòa Xuân, Cẩm Lệ,  Đà Nẵng', NULL, NULL, '2020-12-24 05:38:32'),
(4, 'student3', 'efa34222e7e3a8de9bde3f4d42ccfc37', 'Nguyen Van C', 'student3@gmail.com', '0702244434', '92 Đô Đốc Tuyết, Hòa Xuân, Cẩm Lệ,  Đà Nẵng', NULL, NULL, '2020-12-24 05:38:40'),
(5, 'student4', '149a92f4a470b1b7084f839521dfe7f6', 'Nguyen Van D', 'student4@gmail.com', '0702244434', '92 Đô Đốc Tuyết, Hòa Xuân, Cẩm Lệ,  Đà Nẵng', NULL, NULL, '2020-12-24 05:38:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_student_err`
--

CREATE TABLE `tbl_student_err` (
  `err_id` bigint(20) UNSIGNED NOT NULL,
  `student_id` bigint(20) UNSIGNED NOT NULL,
  `course_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tbl_student_err`
--

INSERT INTO `tbl_student_err` (`err_id`, `student_id`, `course_id`, `created_at`, `updated_at`) VALUES
(1, 1, 6, NULL, NULL),
(2, 5, 1, NULL, NULL),
(3, 5, 6, NULL, NULL),
(4, 5, 5, NULL, NULL),
(5, 5, 4, NULL, NULL),
(6, 1, 5, NULL, NULL),
(7, 1, 3, NULL, NULL),
(8, 1, 2, NULL, NULL),
(9, 2, 2, NULL, NULL),
(10, 2, 3, NULL, NULL),
(11, 3, 2, NULL, NULL),
(12, 3, 4, NULL, NULL),
(13, 1, 4, NULL, NULL),
(14, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Chỉ mục cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  ADD PRIMARY KEY (`blog_id`);

--
-- Chỉ mục cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Chỉ mục cho bảng `tbl_chappter`
--
ALTER TABLE `tbl_chappter`
  ADD PRIMARY KEY (`chappter_id`),
  ADD KEY `tbl_chappter_course_id_foreign` (`course_id`);

--
-- Chỉ mục cho bảng `tbl_chappter_content`
--
ALTER TABLE `tbl_chappter_content`
  ADD PRIMARY KEY (`chappter_content_id`),
  ADD KEY `tbl_chappter_content_chappter_id_foreign` (`chappter_id`);

--
-- Chỉ mục cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Chỉ mục cho bảng `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD PRIMARY KEY (`course_id`),
  ADD KEY `tbl_course_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD PRIMARY KEY (`fee_id`),
  ADD KEY `tbl_feedback_course_id_foreign` (`course_id`),
  ADD KEY `tbl_feedback_student_id_foreign` (`student_id`);

--
-- Chỉ mục cho bảng `tbl_listemail`
--
ALTER TABLE `tbl_listemail`
  ADD PRIMARY KEY (`email_id`),
  ADD UNIQUE KEY `tbl_listemail_email_unique` (`email`);

--
-- Chỉ mục cho bảng `tbl_student`
--
ALTER TABLE `tbl_student`
  ADD PRIMARY KEY (`student_id`);

--
-- Chỉ mục cho bảng `tbl_student_err`
--
ALTER TABLE `tbl_student_err`
  ADD PRIMARY KEY (`err_id`),
  ADD KEY `tbl_student_err_course_id_foreign` (`course_id`),
  ADD KEY `tbl_student_err_student_id_foreign` (`student_id`);

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
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tbl_blog`
--
ALTER TABLE `tbl_blog`
  MODIFY `blog_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `tbl_chappter`
--
ALTER TABLE `tbl_chappter`
  MODIFY `chappter_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `tbl_chappter_content`
--
ALTER TABLE `tbl_chappter_content`
  MODIFY `chappter_content_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT cho bảng `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_course`
--
ALTER TABLE `tbl_course`
  MODIFY `course_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  MODIFY `fee_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_listemail`
--
ALTER TABLE `tbl_listemail`
  MODIFY `email_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `tbl_student`
--
ALTER TABLE `tbl_student`
  MODIFY `student_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `tbl_student_err`
--
ALTER TABLE `tbl_student_err`
  MODIFY `err_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tbl_chappter`
--
ALTER TABLE `tbl_chappter`
  ADD CONSTRAINT `tbl_chappter_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `tbl_course` (`course_id`);

--
-- Các ràng buộc cho bảng `tbl_chappter_content`
--
ALTER TABLE `tbl_chappter_content`
  ADD CONSTRAINT `tbl_chappter_content_chappter_id_foreign` FOREIGN KEY (`chappter_id`) REFERENCES `tbl_chappter` (`chappter_id`);

--
-- Các ràng buộc cho bảng `tbl_course`
--
ALTER TABLE `tbl_course`
  ADD CONSTRAINT `tbl_course_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`category_id`);

--
-- Các ràng buộc cho bảng `tbl_feedback`
--
ALTER TABLE `tbl_feedback`
  ADD CONSTRAINT `tbl_feedback_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `tbl_course` (`course_id`),
  ADD CONSTRAINT `tbl_feedback_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `tbl_student` (`student_id`);

--
-- Các ràng buộc cho bảng `tbl_student_err`
--
ALTER TABLE `tbl_student_err`
  ADD CONSTRAINT `tbl_student_err_course_id_foreign` FOREIGN KEY (`course_id`) REFERENCES `tbl_course` (`course_id`),
  ADD CONSTRAINT `tbl_student_err_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `tbl_student` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
