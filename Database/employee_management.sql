-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2024 at 07:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `employee_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `ANNOUNCEMENT_ID` int(11) NOT NULL,
  `CATEGORY` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `CONTENT` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`ANNOUNCEMENT_ID`, `CATEGORY`, `CONTENT`, `START_DATE`, `END_DATE`) VALUES
(1, 'Công việc', 'Thông báo về lịch làm việc tháng 5', '2024-05-01', '2024-05-31'),
(2, 'Họp', 'Thông báo về cuộc họp toàn công ty', '2024-05-02', NULL),
(3, 'Sự kiện', 'Thông báo về sự kiện thể thao', '2024-05-10', '2024-05-12'),
(4, 'Tuyển dụng', 'Thông báo về việc tuyển dụng nhân viên mới', '2024-05-15', NULL),
(5, 'Đào tạo', 'Thông báo về khóa đào tạo kỹ năng mềm', '2024-05-20', '2024-05-25'),
(6, 'Chính sách', 'Thông báo về chính sách phúc lợi mới', '2024-05-05', NULL),
(7, 'Cảnh báo', 'Thông báo về việc nâng cấp hệ thống', '2024-05-08', '2024-05-09'),
(8, 'Hoạt động', 'Thông báo về hoạt động từ thiện', '2024-05-18', '2024-05-19'),
(9, 'Thông tin', 'Thông báo về thông tin mới của công ty', '2024-05-22', NULL),
(10, 'Khác', 'Thông báo về các hoạt động ngoài giờ', '2024-05-25', '2024-05-30');

-- --------------------------------------------------------

--
-- Table structure for table `announcements_seq`
--

CREATE TABLE `announcements_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Dumping data for table `announcements_seq`
--

INSERT INTO `announcements_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1001, 1, 9223372036854775806, 1, 1, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DEPARTMENT_ID` int(11) NOT NULL,
  `DEPARTMENT_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `MANAGER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DEPARTMENT_ID`, `DEPARTMENT_NAME`, `DESCRIPTION`, `MANAGER_ID`) VALUES
(1, 'Công nghệ thông tin', 'Quản lý hệ thống và phát triển phần mềm', 1),
(2, 'Phát triển', 'Phát triển các ứng dụng và hệ thống', 2),
(3, 'Nhân sự', 'Quản lý và tuyển dụng nhân viên', 3),
(4, 'Kinh doanh', 'Kinh doanh và quan hệ khách hàng', 4),
(5, 'Tài chính', 'Quản lý tài chính và kế toán', 5),
(6, 'Marketing', 'Quảng bá và tiếp thị', 6),
(7, 'Hỗ trợ', 'Hỗ trợ kỹ thuật', 7),
(8, 'Quản lý sản phẩm', 'Quản lý và phát triển sản phẩm', 8),
(9, 'Vận hành', 'Quản lý hoạt động hàng ngày', 1),
(10, 'Nghiên cứu và Phát triển', 'Nghiên cứu và phát triển sản phẩm', 2);

-- --------------------------------------------------------

--
-- Table structure for table `departments_seq`
--

CREATE TABLE `departments_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Dumping data for table `departments_seq`
--

INSERT INTO `departments_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1001, 1, 9223372036854775806, 1, 1, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `EMPLOYEE_ID` int(11) NOT NULL,
  `FIRST_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `LAST_NAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PHONE_NUMBER` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `EMAIL` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `BIRTH_DATE` date NOT NULL,
  `POSITION` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DEPARTMENT_ID` int(11) DEFAULT NULL,
  `HIRE_DATE` date NOT NULL,
  `SALARY` decimal(18,2) NOT NULL,
  `AVATAR` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`EMPLOYEE_ID`, `FIRST_NAME`, `LAST_NAME`, `PHONE_NUMBER`, `EMAIL`, `BIRTH_DATE`, `POSITION`, `DEPARTMENT_ID`, `HIRE_DATE`, `SALARY`, `AVATAR`) VALUES
(1, 'Nguyễn', 'Văn A', '0912345678', 'nguyenvana@example.com', '1985-05-20', 'Trưởng phòng', 1, '2015-03-01', 20000000.00, 'avatar1.jpg'),
(2, 'Trần', 'Thị B', '0987654321', 'tranthib@example.com', '1990-08-15', 'Lập trình viên', 2, '2017-06-15', 15000000.00, 'avatar2.jpg'),
(3, 'Lê', 'Thanh C', '0934567890', 'lethanhc@example.com', '1992-09-25', 'Chuyên viên nhân sự', 3, '2018-01-20', 12000000.00, 'avatar3.jpg'),
(4, 'Phạm', 'Minh D', '0912345679', 'phamminhd@example.com', '1988-12-10', 'Nhân viên kinh doanh', 4, '2019-11-10', 10000000.00, 'avatar4.jpg'),
(5, 'Hoàng', 'Lan E', '0923456789', 'hoanglane@example.com', '1995-07-30', 'Kế toán', 5, '2020-02-05', 11000000.00, 'avatar5.jpg'),
(6, 'Đặng', 'Hùng F', '0935678901', 'danghungf@example.com', '1993-11-15', 'Chuyên viên marketing', 6, '2016-09-25', 13000000.00, 'avatar6.jpg'),
(7, 'Bùi', 'Hồng G', '0946789012', 'buihongg@example.com', '1991-03-17', 'Lập trình viên', 2, '2019-05-10', 16000000.00, 'avatar7.jpg'),
(8, 'Võ', 'Anh H', '0957890123', 'voanhh@example.com', '1987-04-22', 'Hỗ trợ IT', 7, '2021-03-18', 11000000.00, 'avatar8.jpg'),
(9, 'Dương', 'Thị I', '0968901234', 'duongthii@example.com', '1989-10-05', 'Quản lý sản phẩm', 8, '2018-07-10', 17000000.00, 'avatar9.jpg'),
(10, 'Ngô', 'Văn J', '0979012345', 'ngovanj@example.com', '1994-06-20', 'Chuyên viên nhân sự', 3, '2020-12-01', 12000000.00, 'avatar10.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `employees_seq`
--

CREATE TABLE `employees_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Dumping data for table `employees_seq`
--

INSERT INTO `employees_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1001, 1, 9223372036854775806, 1, 1, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `EVENT_ID` int(11) NOT NULL,
  `CATEGORY` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`EVENT_ID`, `CATEGORY`, `DESCRIPTION`, `START_DATE`, `END_DATE`) VALUES
(1, 'Thể thao', 'Giải bóng đá công ty', '2024-06-01', '2024-06-02'),
(2, 'Đào tạo', 'Khóa đào tạo kỹ năng quản lý', '2024-06-05', '2024-06-06'),
(3, 'Từ thiện', 'Chương trình từ thiện tại làng trẻ em SOS', '2024-06-10', '2024-06-10'),
(4, 'Giải trí', 'Đêm gala văn nghệ công ty', '2024-06-15', '2024-06-15'),
(5, 'Họp mặt', 'Cuộc họp mặt kỷ niệm thành lập công ty', '2024-06-20', '2024-06-20'),
(6, 'Đào tạo', 'Khóa đào tạo nâng cao kỹ năng lập trình', '2024-06-25', '2024-06-26'),
(7, 'Giải trí', 'Chương trình giao lưu văn hóa', '2024-06-30', '2024-06-30'),
(8, 'Thể thao', 'Giải chạy marathon công ty', '2024-07-05', '2024-07-05'),
(9, 'Đào tạo', 'Khóa đào tạo kỹ năng mềm cho nhân viên', '2024-07-10', '2024-07-11'),
(10, 'Từ thiện', 'Chương trình hiến máu nhân đạo', '2024-07-15', '2024-07-15');

-- --------------------------------------------------------

--
-- Table structure for table `events_seq`
--

CREATE TABLE `events_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Dumping data for table `events_seq`
--

INSERT INTO `events_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1001, 1, 9223372036854775806, 1, 1, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `meetings`
--

CREATE TABLE `meetings` (
  `MEETING_ID` int(11) NOT NULL,
  `MEETING_DATE` date NOT NULL,
  `START_TIME` datetime NOT NULL,
  `END_TIME` datetime NOT NULL,
  `ROOM` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ORGANIZER_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `meetings`
--

INSERT INTO `meetings` (`MEETING_ID`, `MEETING_DATE`, `START_TIME`, `END_TIME`, `ROOM`, `DESCRIPTION`, `ORGANIZER_ID`) VALUES
(1, '2024-06-01', '2024-06-01 09:00:00', '2024-06-01 11:00:00', 'Phòng họp A', 'Cuộc họp định kỳ', 1),
(2, '2024-06-02', '2024-06-02 14:00:00', '2024-06-02 16:00:00', 'Phòng họp B', 'Họp dự án A', 2),
(3, '2024-06-03', '2024-06-03 10:00:00', '2024-06-03 12:00:00', 'Phòng họp C', 'Họp triển khai dự án', 3),
(4, '2024-06-04', '2024-06-04 13:00:00', '2024-06-04 15:00:00', 'Phòng họp A', 'Họp phân tích dự án', 4),
(5, '2024-06-05', '2024-06-05 09:00:00', '2024-06-05 11:00:00', 'Phòng họp B', 'Họp khách hàng', 5),
(6, '2024-06-06', '2024-06-06 10:00:00', '2024-06-06 12:00:00', 'Phòng họp C', 'Họp đào tạo', 6),
(7, '2024-06-07', '2024-06-07 09:00:00', '2024-06-07 11:00:00', 'Phòng họp A', 'Họp đánh giá', 7),
(8, '2024-06-08', '2024-06-08 14:00:00', '2024-06-08 16:00:00', 'Phòng họp B', 'Họp dự án B', 8),
(9, '2024-06-09', '2024-06-09 10:00:00', '2024-06-09 12:00:00', 'Phòng họp C', 'Họp kế hoạch', 9),
(10, '2024-06-10', '2024-06-10 09:00:00', '2024-06-10 11:00:00', 'Phòng họp A', 'Họp báo cáo', 10);

-- --------------------------------------------------------

--
-- Table structure for table `meetings_seq`
--

CREATE TABLE `meetings_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Dumping data for table `meetings_seq`
--

INSERT INTO `meetings_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1001, 1, 9223372036854775806, 1, 1, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `NOTIFICATION_ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `MESSAGE` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `READ_STATUS` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL CHECK (`READ_STATUS` in ('READ','UNREAD')),
  `NOTIFICATION_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`NOTIFICATION_ID`, `EMPLOYEE_ID`, `MESSAGE`, `READ_STATUS`, `NOTIFICATION_DATE`) VALUES
(1, 1, 'Bạn có một cuộc họp vào ngày mai', 'UNREAD', '2024-05-24'),
(2, 2, 'Yêu cầu nghỉ phép của bạn đã được phê duyệt', 'UNREAD', '2024-05-24'),
(3, 3, 'Bạn có thông báo mới từ phòng nhân sự', 'UNREAD', '2024-05-24'),
(4, 4, 'Lịch họp tuần này đã được cập nhật', 'UNREAD', '2024-05-24'),
(5, 5, 'Bạn có tin nhắn mới từ phòng kinh doanh', 'UNREAD', '2024-05-24'),
(6, 6, 'Thông báo về sự kiện sắp tới', 'UNREAD', '2024-05-24'),
(7, 7, 'Yêu cầu hỗ trợ kỹ thuật của bạn đã được xử lý', 'UNREAD', '2024-05-24'),
(8, 8, 'Thông báo về cuộc họp khẩn', 'UNREAD', '2024-05-24'),
(9, 9, 'Bạn có thông báo mới từ ban giám đốc', 'UNREAD', '2024-05-24'),
(10, 10, 'Yêu cầu tài liệu của bạn đã được phê duyệt', 'UNREAD', '2024-05-24');

-- --------------------------------------------------------

--
-- Table structure for table `notifications_seq`
--

CREATE TABLE `notifications_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Dumping data for table `notifications_seq`
--

INSERT INTO `notifications_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1001, 1, 9223372036854775806, 1, 1, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `permissions_seq`
--

CREATE TABLE `permissions_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Dumping data for table `permissions_seq`
--

INSERT INTO `permissions_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1, 1, 9223372036854775806, 1, 1, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `REQUEST_ID` int(11) NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `APPROVER_ID` int(11) DEFAULT NULL,
  `CONTENT` varchar(4000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `STATUS` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `RESULT` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `DEPARTMENT_ID` int(11) DEFAULT NULL,
  `ACTIVITY_TYPE` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`REQUEST_ID`, `EMPLOYEE_ID`, `APPROVER_ID`, `CONTENT`, `STATUS`, `RESULT`, `DEPARTMENT_ID`, `ACTIVITY_TYPE`) VALUES
(1, 1, 3, 'Yêu cầu nghỉ phép 5 ngày', 'Chờ phê duyệt', NULL, 1, 'Nghỉ phép'),
(2, 2, 1, 'Yêu cầu tăng lương', 'Đã phê duyệt', 'Tăng 10%', 2, 'Lương'),
(3, 3, 4, 'Yêu cầu điều chỉnh giờ làm việc', 'Đang xử lý', NULL, 3, 'Giờ làm việc'),
(4, 4, 5, 'Yêu cầu thiết bị mới', 'Đã từ chối', 'Không đủ ngân sách', 4, 'Thiết bị'),
(5, 5, 6, 'Yêu cầu đào tạo nâng cao', 'Chờ phê duyệt', NULL, 5, 'Đào tạo'),
(6, 6, 7, 'Yêu cầu hỗ trợ kỹ thuật', 'Đã hoàn thành', 'Đã hỗ trợ xong', 6, 'Hỗ trợ kỹ thuật'),
(7, 7, 8, 'Yêu cầu nghỉ thai sản', 'Đã phê duyệt', 'Đã nghỉ', 7, 'Nghỉ phép'),
(8, 8, 9, 'Yêu cầu tham gia sự kiện', 'Đang xử lý', NULL, 8, 'Sự kiện'),
(9, 9, 10, 'Yêu cầu đổi ca làm việc', 'Đã phê duyệt', 'Đã đổi', 9, 'Ca làm việc'),
(10, 10, 1, 'Yêu cầu hỗ trợ phần mềm', 'Đang xử lý', NULL, 10, 'Hỗ trợ phần mềm');

-- --------------------------------------------------------

--
-- Table structure for table `requests_seq`
--

CREATE TABLE `requests_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Dumping data for table `requests_seq`
--

INSERT INTO `requests_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1001, 1, 9223372036854775806, 1, 1, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `resources`
--

CREATE TABLE `resources` (
  `RESOURCE_ID` int(11) NOT NULL,
  `RESOURCE_NAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `DESCRIPTION` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `LOCATION` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `resources`
--

INSERT INTO `resources` (`RESOURCE_ID`, `RESOURCE_NAME`, `DESCRIPTION`, `LOCATION`) VALUES
(1, 'Phòng họp A', 'Phòng họp chính tại tầng 1', 'Tầng 1'),
(2, 'Máy chiếu', 'Máy chiếu đa năng', 'Phòng họp A'),
(3, 'Máy tính', 'Máy tính văn phòng', 'Phòng IT'),
(4, 'Xe ô tô', 'Xe ô tô công ty', 'Bãi đỗ xe'),
(5, 'Phòng họp B', 'Phòng họp tại tầng 2', 'Tầng 2'),
(6, 'Máy in', 'Máy in đa chức năng', 'Phòng kế toán'),
(7, 'Phòng họp C', 'Phòng họp nhỏ tại tầng 3', 'Tầng 3'),
(8, 'Máy photocopy', 'Máy photocopy văn phòng', 'Phòng hành chính'),
(9, 'Máy tính xách tay', 'Máy tính xách tay cho nhân viên', 'Phòng phát triển'),
(10, 'Bàn làm việc', 'Bàn làm việc nhân viên', 'Phòng nhân sự');

-- --------------------------------------------------------

--
-- Table structure for table `resources_seq`
--

CREATE TABLE `resources_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Dumping data for table `resources_seq`
--

INSERT INTO `resources_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1001, 1, 9223372036854775806, 1, 1, 1000, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `role_id` varchar(30) NOT NULL,
  `name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`role_id`, `name`) VALUES
('0', 'admin'),
('1', 'Nhân Viên');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `USER_ID` int(11) NOT NULL,
  `USERNAME` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `PASSWORD` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `EMPLOYEE_ID` int(11) DEFAULT NULL,
  `ROLE` int(11) NOT NULL CHECK (`ROLE` in (1,0)),
  `CREATE_AT` date DEFAULT NULL,
  `UPDATE_AT` date DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone_number` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`USER_ID`, `USERNAME`, `PASSWORD`, `EMPLOYEE_ID`, `ROLE`, `CREATE_AT`, `UPDATE_AT`, `address`, `Email`, `Phone_number`) VALUES
(1, 'nguyenvana', 'matkhau123', 1, 1, '2022-01-01', '2023-01-01', 'HCM', 'A@gmail.com', '0123456789'),
(2, 'tranthib', 'matkhau123', 2, 0, '2022-02-01', '2023-02-01', 'HCM', 'B@gmail.com', '0123456789'),
(3, 'lethanhc', 'matkhau123', 3, 0, '2022-03-01', '2023-03-01', 'HCM', 'C@gmail.com', '0123456789'),
(4, 'phamminhd', 'matkhau123', 4, 0, '2022-04-01', '2023-04-01', 'HCM', 'D@gmail.com', '1234567890'),
(5, 'hoanglane', 'matkhau123', 5, 0, '2022-05-01', '2023-05-01', 'HCM', 'E@gmail.com', '0834578459'),
(6, 'danghungf', 'matkhau123', 6, 0, '2022-06-01', '2023-06-01', 'HCM', 'E@gmail.com', '0856156789'),
(7, 'buihongg', 'matkhau123', 7, 0, '2022-07-01', '2023-07-01', 'HCM', 'G@gmail.com', '1597891568'),
(8, 'voanhh', 'matkhau123', 8, 0, '2022-08-01', '2023-08-01', 'HCM', 'H@gmail.com', '1865423489'),
(9, 'duongthii', 'matkhau123', 9, 0, '2022-09-01', '2023-09-01', 'HCM', 'I@gmail.com', '1597534568'),
(10, 'ngovanj', 'matkhau123', 10, 0, '2022-10-01', '2023-10-01', 'HCM', 'J@gmail.com', '1436257895');

-- --------------------------------------------------------

--
-- Table structure for table `users_seq`
--

CREATE TABLE `users_seq` (
  `next_not_cached_value` bigint(21) NOT NULL,
  `minimum_value` bigint(21) NOT NULL,
  `maximum_value` bigint(21) NOT NULL,
  `start_value` bigint(21) NOT NULL COMMENT 'start value when sequences is created or value if RESTART is used',
  `increment` bigint(21) NOT NULL COMMENT 'increment value',
  `cache_size` bigint(21) UNSIGNED NOT NULL,
  `cycle_option` tinyint(1) UNSIGNED NOT NULL COMMENT '0 if no cycles are allowed, 1 if the sequence should begin a new cycle when maximum_value is passed',
  `cycle_count` bigint(21) NOT NULL COMMENT 'How many cycles have been done'
) ENGINE=InnoDB;

--
-- Dumping data for table `users_seq`
--

INSERT INTO `users_seq` (`next_not_cached_value`, `minimum_value`, `maximum_value`, `start_value`, `increment`, `cache_size`, `cycle_option`, `cycle_count`) VALUES
(1001, 1, 9223372036854775806, 1, 1, 1000, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`ANNOUNCEMENT_ID`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DEPARTMENT_ID`),
  ADD KEY `FK_MANAGER_ID` (`MANAGER_ID`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`EMPLOYEE_ID`),
  ADD KEY `FK_DEPARTMENT_ID` (`DEPARTMENT_ID`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`EVENT_ID`);

--
-- Indexes for table `meetings`
--
ALTER TABLE `meetings`
  ADD PRIMARY KEY (`MEETING_ID`),
  ADD KEY `FK_MEETING_ORGANIZER_ID` (`ORGANIZER_ID`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`NOTIFICATION_ID`),
  ADD KEY `FK_NOTIFICATION_EMPLOYEE_ID` (`EMPLOYEE_ID`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`REQUEST_ID`),
  ADD KEY `FK_REQUEST_EMPLOYEE_ID` (`EMPLOYEE_ID`),
  ADD KEY `FK_REQUEST_APPROVER_ID` (`APPROVER_ID`),
  ADD KEY `FK_REQUEST_DEPARTMENT_ID` (`DEPARTMENT_ID`);

--
-- Indexes for table `resources`
--
ALTER TABLE `resources`
  ADD PRIMARY KEY (`RESOURCE_ID`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `USERNAME` (`USERNAME`),
  ADD KEY `FK_USER_EMPLOYEE_ID` (`EMPLOYEE_ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `FK_MANAGER_ID` FOREIGN KEY (`MANAGER_ID`) REFERENCES `employees` (`EMPLOYEE_ID`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `FK_DEPARTMENT_ID` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `departments` (`DEPARTMENT_ID`);

--
-- Constraints for table `meetings`
--
ALTER TABLE `meetings`
  ADD CONSTRAINT `FK_MEETING_ORGANIZER_ID` FOREIGN KEY (`ORGANIZER_ID`) REFERENCES `employees` (`EMPLOYEE_ID`);

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `FK_NOTIFICATION_EMPLOYEE_ID` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employees` (`EMPLOYEE_ID`);

--
-- Constraints for table `requests`
--
ALTER TABLE `requests`
  ADD CONSTRAINT `FK_REQUEST_APPROVER_ID` FOREIGN KEY (`APPROVER_ID`) REFERENCES `employees` (`EMPLOYEE_ID`),
  ADD CONSTRAINT `FK_REQUEST_DEPARTMENT_ID` FOREIGN KEY (`DEPARTMENT_ID`) REFERENCES `departments` (`DEPARTMENT_ID`),
  ADD CONSTRAINT `FK_REQUEST_EMPLOYEE_ID` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employees` (`EMPLOYEE_ID`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `FK_USER_EMPLOYEE_ID` FOREIGN KEY (`EMPLOYEE_ID`) REFERENCES `employees` (`EMPLOYEE_ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
