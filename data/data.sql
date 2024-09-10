SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE DATABASE IF NOT EXISTS `csdl_giaoduc` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `csdl_giaoduc`;

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `code`, `name`) VALUES
(1, 'MN', 'Mầm non'),
(2, 'TH', 'Tiểu học'),
(3, 'TH&THCS', 'Tiểu học và Trung học cơ sở'),
(4, 'THCS', 'Trung học cơ sở'),
(5, 'PT DTNT THCS', 'PT DTNT Trung học cơ sở'),
(6, 'THCS&THPT', 'Trung học cơ sở và Trung học phổ thông'),
(7, 'THPT', 'Trung học phổ thông'),
(8, 'GDTX', 'Giáo dục thường xuyên');

-- --------------------------------------------------------

--
-- Table structure for table `school`
--

CREATE TABLE `school` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `level_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `school`
--

INSERT INTO `school` (`id`, `name`, `url`, `level_id`) VALUES
(6008, 'MN Thị Trấn Thứ Ba', 'https://user.vnedu.vn/sso/', 1),
(6009, 'MN Xã Đông Thái', 'https://user.vnedu.vn/sso/', 1),
(6010, 'MN Xã Đông Yên', 'https://user.vnedu.vn/sso/', 1),
(6011, 'MN Xã Hưng Yên', 'https://user.vnedu.vn/sso/', 1),
(6012, 'MN Xã Nam Thái', 'https://user.vnedu.vn/sso/', 1),
(6013, 'MN Xã Nam Thái A', 'https://user.vnedu.vn/sso/', 1),
(6014, 'MN Xã Nam Yên', 'https://user.vnedu.vn/sso/', 1),
(6015, 'MN Xã Tây Yên', 'https://user.vnedu.vn/sso/', 1),
(6016, 'MN Xã Tây Yên A', 'https://user.vnedu.vn/sso/', 1),
(6017, 'TH Đông Thái 1', 'https://smas.edu.vn/', 2),
(6018, 'TH Đông Thái 2', 'https://smas.edu.vn/', 2),
(6019, 'TH Đông Thái 3', 'https://smas.edu.vn/', 2),
(6020, 'TH Đông Thái 5', 'https://smas.edu.vn/', 2),
(6021, 'TH Đông Yên 1', 'https://smas.edu.vn/', 2),
(6022, 'TH Đông Yên 2', 'https://smas.edu.vn/', 2),
(6023, 'TH Đông Yên 3', 'https://smas.edu.vn/', 2),
(6024, 'TH Hưng Yên 1', 'https://smas.edu.vn/', 2),
(6025, 'TH Hưng Yên 2', 'https://smas.edu.vn/', 2),
(6026, 'TH Nam Thái 1', 'https://smas.edu.vn/', 2),
(6027, 'TH Nam Thái 2', 'https://smas.edu.vn/', 2),
(6028, 'TH Nam Thái 3', 'https://smas.edu.vn/', 2),
(6029, 'TH Nam Thái A 1', 'https://smas.edu.vn/', 2),
(6030, 'TH Nam Thái A 2', 'https://smas.edu.vn/', 2),
(6031, 'TH Nam Yên 1', 'https://smas.edu.vn/', 2),
(6032, 'TH Nam Yên 2', 'https://smas.edu.vn/', 2),
(6033, 'TH Nam Yên 3', 'https://smas.edu.vn/', 2),
(6034, 'TH Tây Yên 1', 'https://smas.edu.vn/', 2),
(6035, 'TH Tây Yên 2', 'https://smas.edu.vn/', 2),
(6036, 'TH Tây Yên A 2', 'https://smas.edu.vn/', 2),
(6037, 'TH Tây Yên A1', 'https://smas.edu.vn/', 2),
(6038, 'TH Thị Trấn Thứ Ba 1', 'https://smas.edu.vn/', 2),
(6039, 'TH Thị Trấn Thứ Ba 2', 'https://smas.edu.vn/', 2),
(6040, 'TH Thị Trấn Thứ Ba 3', 'https://smas.edu.vn/', 2),
(6041, 'THCS Đông Yên', 'https://smas.edu.vn/', 4),
(6042, 'THCS Hưng Yên', 'https://smas.edu.vn/', 4),
(6043, 'THCS Nam Thái', 'https://smas.edu.vn/', 4),
(6044, 'THCS Nam Thái A', 'https://smas.edu.vn/', 4),
(6045, 'THCS Tây Yên', 'https://smas.edu.vn/', 4),
(6046, 'THCS Thị Trấn Thứ Ba 1', 'https://smas.edu.vn/', 4),
(6047, 'THCS Thị Trấn Thứ Ba 2', 'https://smas.edu.vn/', 4),
(6048, 'THCS xã Tây Yên A', 'https://smas.edu.vn/', 4),
(6049, 'MN Đông Hòa', 'https://user.vnedu.vn/sso/', 1),
(6050, 'MN Đông Hưng', 'https://user.vnedu.vn/sso/', 1),
(6051, 'MN Đông Hưng A', 'https://user.vnedu.vn/sso/', 1),
(6052, 'MN Đông Hưng B', 'https://user.vnedu.vn/sso/', 1),
(6053, 'MN Đông Thạnh', 'https://user.vnedu.vn/sso/', 1),
(6054, 'MN Tân Thạnh', 'https://user.vnedu.vn/sso/', 1),
(6055, 'MN Thị trấn Thứ 11', 'https://user.vnedu.vn/sso/', 1),
(6056, 'MN Thuận Hòa', 'https://user.vnedu.vn/sso/', 1),
(6057, 'MN Vân Khánh', 'https://user.vnedu.vn/sso/', 1),
(6058, 'MN Vân Khánh Đông', 'https://user.vnedu.vn/sso/', 1),
(6059, 'MN Vân Khánh Tây', 'https://user.vnedu.vn/sso/', 1),
(6060, 'TH Danh Coi', 'https://smas.edu.vn/', 2),
(6061, 'TH Đông Hòa 1', 'https://smas.edu.vn/', 2),
(6062, 'TH Đông Hòa 2', 'https://smas.edu.vn/', 2),
(6063, 'TH Đông Hòa 4', 'https://smas.edu.vn/', 2),
(6064, 'TH Đông Hưng 1', 'https://smas.edu.vn/', 2),
(6065, 'TH Đông Hưng 2', 'https://smas.edu.vn/', 2),
(6066, 'TH Đông Hưng A1', 'https://smas.edu.vn/', 2),
(6067, 'TH Đông Hưng A2', 'https://smas.edu.vn/', 2),
(6068, 'TH Đông Hưng B', 'https://smas.edu.vn/', 2),
(6069, 'TH Đông Thạnh 1', 'https://smas.edu.vn/', 2),
(6070, 'TH Đông Thạnh 2', 'https://smas.edu.vn/', 2),
(6071, 'TH Tân Thạnh 1', 'https://smas.edu.vn/', 2),
(6072, 'TH Tân Thạnh 2', 'https://smas.edu.vn/', 2),
(6073, 'TH Thị trấn 1', 'https://smas.edu.vn/', 2),
(6074, 'TH Thị trấn 2', 'https://smas.edu.vn/', 2),
(6075, 'TH Thuận Hòa 1', 'https://smas.edu.vn/', 2),
(6076, 'TH Thuận Hòa 3', 'https://smas.edu.vn/', 2),
(6077, 'TH Thuận Hòa 4', 'https://smas.edu.vn/', 2),
(6078, 'TH Vân Khánh 1', 'https://smas.edu.vn/', 2),
(6079, 'TH Vân Khánh 2', 'https://smas.edu.vn/', 2),
(6080, 'TH Vân Khánh Đông 1', 'https://smas.edu.vn/', 2),
(6081, 'TH Vân Khánh Đông 2', 'https://smas.edu.vn/', 2),
(6082, 'TH&THCS Vân Khánh Tây', 'https://user.vnedu.vn/sso/', 3),
(6083, 'THCS Đông Hòa', 'https://smas.edu.vn/', 4),
(6084, 'THCS Đông Hưng', 'https://smas.edu.vn/', 4),
(6085, 'THCS Đông Hưng A', 'https://smas.edu.vn/', 4),
(6086, 'THCS Đông Hưng B', 'https://smas.edu.vn/', 4),
(6087, 'THCS Đông Thạnh', 'https://smas.edu.vn/', 4),
(6088, 'THCS Thị trấn Thứ 11', 'https://smas.edu.vn/', 4),
(6089, 'THCS Thuận Hòa', 'https://smas.edu.vn/', 4),
(6090, 'THCS Vân Khánh Đông', 'https://smas.edu.vn/', 4),
(6091, 'MG Mong Thọ', 'https://user.vnedu.vn/sso/', 1),
(6092, 'MG Xã Mong Thọ A', 'https://user.vnedu.vn/sso/', 1),
(6093, 'MG Xã Mong Thọ B', 'https://user.vnedu.vn/sso/', 1),
(6094, 'MG Xã Thạnh Lộc', 'https://user.vnedu.vn/sso/', 1),
(6095, 'MG Xã Vĩnh Hòa Phú', 'https://user.vnedu.vn/sso/', 1),
(6096, 'MN Thị Trấn Minh Lương', 'https://user.vnedu.vn/sso/', 1),
(6097, 'MN Xã Bình An', 'https://user.vnedu.vn/sso/', 1),
(6098, 'MN Xã Giục Tượng', 'https://user.vnedu.vn/sso/', 1),
(6099, 'MN Xã Minh Hòa', 'https://user.vnedu.vn/sso/', 1),
(6100, 'MN Xã Vĩnh Hòa Hiệp', 'https://user.vnedu.vn/sso/', 1),
(6101, 'TH Bình An 1', 'https://smas.edu.vn/', 2),
(6102, 'TH Bình An 2', 'https://smas.edu.vn/', 2),
(6103, 'TH Bình An 3', 'https://smas.edu.vn/', 2),
(6104, 'TH Bình An 4', 'https://smas.edu.vn/', 2),
(6105, 'TH Giục Tượng 1', 'https://smas.edu.vn/', 2),
(6106, 'TH Giục Tượng 2', 'https://smas.edu.vn/', 2),
(6107, 'TH Giục Tượng 3', 'https://smas.edu.vn/', 2),
(6108, 'TH Minh Hòa 1', 'https://smas.edu.vn/', 2),
(6109, 'TH Minh Hòa 2', 'https://smas.edu.vn/', 2),
(6110, 'TH Minh Hòa 3', 'https://smas.edu.vn/', 2),
(6111, 'TH Minh Hòa 4', 'https://smas.edu.vn/', 2),
(6112, 'TH Minh Lương 1', 'https://smas.edu.vn/', 2),
(6113, 'TH Minh Lương 2', 'https://smas.edu.vn/', 2),
(6114, 'TH Minh Lương 3', 'https://smas.edu.vn/', 2),
(6115, 'TH Mong Thọ 1', 'https://smas.edu.vn/', 2),
(6116, 'TH Mong Thọ 2', 'https://smas.edu.vn/', 2),
(6117, 'TH Mong Thọ A1', 'https://smas.edu.vn/', 2),
(6118, 'TH Mong Thọ A2', 'https://smas.edu.vn/', 2),
(6119, 'TH Mong Thọ B1', 'https://smas.edu.vn/', 2),
(6120, 'TH Mong Thọ B2', 'https://smas.edu.vn/', 2),
(6121, 'TH Mong Thọ B3', 'https://smas.edu.vn/', 2),
(6122, 'TH Thạnh Lộc 1', 'https://smas.edu.vn/', 2),
(6123, 'TH Thạnh Lộc 2', 'https://smas.edu.vn/', 2),
(6124, 'TH Thạnh Lộc 3', 'https://smas.edu.vn/', 2),
(6125, 'TH Vĩnh Hòa Hiệp 1', 'https://smas.edu.vn/', 2),
(6126, 'TH Vĩnh Hòa Hiệp 2', 'https://smas.edu.vn/', 2),
(6127, 'TH Vĩnh Hòa Phú 1', 'https://smas.edu.vn/', 2),
(6128, 'TH Vĩnh Hòa Phú 2', 'https://smas.edu.vn/', 2),
(6129, 'THCS An Lạc', 'https://smas.edu.vn/', 4),
(6130, 'THCS Bình An', 'https://smas.edu.vn/', 4),
(6131, 'THCS Giục Tượng', 'https://smas.edu.vn/', 4),
(6132, 'THCS Minh Hòa', 'https://smas.edu.vn/', 4),
(6133, 'THCS Minh Lương', 'https://smas.edu.vn/', 4),
(6134, 'THCS Mong Thọ A', 'https://smas.edu.vn/', 4),
(6135, 'THCS Mong Thọ B', 'https://smas.edu.vn/', 4),
(6136, 'THCS Thạnh Lộc', 'https://smas.edu.vn/', 4),
(6137, 'THCS Vĩnh Hòa Hiệp', 'https://smas.edu.vn/', 4),
(6138, 'THCS Vĩnh Hòa Phú', 'https://smas.edu.vn/', 4),
(6139, 'MN Định An', 'https://user.vnedu.vn/sso/', 1),
(6140, 'MN Định Hòa', 'https://user.vnedu.vn/sso/', 1),
(6141, 'MN Thị Trấn Gò Quao', 'https://user.vnedu.vn/sso/', 1),
(6142, 'MN Thới Quản', 'https://user.vnedu.vn/sso/', 1),
(6143, 'MN Vĩnh Hòa Hưng Bắc', 'https://user.vnedu.vn/sso/', 1),
(6144, 'MN Vĩnh Hòa Hưng Nam', 'https://user.vnedu.vn/sso/', 1),
(6145, 'MN Vĩnh Phước A', 'https://user.vnedu.vn/sso/', 1),
(6146, 'MN Vĩnh Phước B', 'https://user.vnedu.vn/sso/', 1),
(6147, 'MN Vĩnh Thắng', 'https://user.vnedu.vn/sso/', 1),
(6148, 'MN Vĩnh Tuy', 'https://user.vnedu.vn/sso/', 1),
(6149, 'MN Xã Thủy Liễu', 'https://user.vnedu.vn/sso/', 1),
(6150, 'TH 1 Vĩnh Hòa Hưng Bắc', 'https://smas.edu.vn/', 2),
(6151, 'TH 1 Vĩnh Hòa Hưng Nam', 'https://smas.edu.vn/', 2),
(6152, 'TH 2 Vĩnh Hòa Hưng Bắc', 'https://smas.edu.vn/', 2),
(6153, 'TH 2 Vĩnh Hòa Hưng Nam', 'https://smas.edu.vn/', 2),
(6154, 'TH Định An 3', 'https://smas.edu.vn/', 2),
(6155, 'TH Định Hòa 3', 'https://smas.edu.vn/', 2),
(6156, 'TH Số 1 Vĩnh Phước A', 'https://smas.edu.vn/', 2),
(6157, 'TH số 1 xã Định An', 'https://smas.edu.vn/', 2),
(6158, 'TH số 1 Xã Thủy Liễu', 'https://smas.edu.vn/', 2),
(6159, 'TH số 1 Xã Vĩnh Tuy', 'https://smas.edu.vn/', 2),
(6160, 'TH số 2 xã Định An', 'https://smas.edu.vn/', 2),
(6161, 'TH Số 2 Xã Thủy Liễu', 'https://smas.edu.vn/', 2),
(6162, 'TH Số 3 Xã Vĩnh Tuy', 'https://smas.edu.vn/', 2),
(6163, 'TH Thị Trấn Gò Quao', 'https://smas.edu.vn/', 2),
(6164, 'TH Vĩnh Phước A2', 'https://smas.edu.vn/', 2),
(6165, 'TH Vĩnh Phước B2', 'https://smas.edu.vn/', 2),
(6166, 'TH Vĩnh Thắng', 'https://smas.edu.vn/', 2),
(6167, 'TH Xã Định Hòa 1', 'https://smas.edu.vn/', 2),
(6168, 'TH Xã Định Hòa 2', 'https://smas.edu.vn/', 2),
(6169, 'TH Xã Thới Quản 1', 'https://smas.edu.vn/', 2),
(6170, 'TH Xã Thới Quản 2', 'https://smas.edu.vn/', 2),
(6171, 'THCS Thị Trấn Gò Quao', 'https://smas.edu.vn/', 4),
(6172, 'THCS Vĩnh Hòa Hưng Nam', 'https://smas.edu.vn/', 4),
(6173, 'THCS Vĩnh Phước A', 'https://smas.edu.vn/', 4),
(6174, 'THCS Vĩnh Phước B', 'https://smas.edu.vn/', 4),
(6175, 'THCS Xã Vĩnh Tuy', 'https://smas.edu.vn/', 4),
(6176, 'THCS Xã Định Hòa', 'https://smas.edu.vn/', 4),
(6177, 'THCS Xã Thủy Liễu', 'https://smas.edu.vn/', 4),
(6178, 'MN Bàn Tân Định', 'https://user.vnedu.vn/sso/', 1),
(6179, 'MN Bàn Thạch', 'https://user.vnedu.vn/sso/', 1),
(6180, 'MN Hòa An', 'https://user.vnedu.vn/sso/', 1),
(6181, 'MN Hoa Hồng', 'https://user.vnedu.vn/sso/', 1),
(6182, 'MN Hòa Hưng', 'https://user.vnedu.vn/sso/', 1),
(6183, 'MN Hòa Lợi', 'https://user.vnedu.vn/sso/', 1),
(6184, 'MN Hoa Mai', 'https://user.vnedu.vn/sso/', 1),
(6185, 'MN Họa Mi', 'https://user.vnedu.vn/sso/', 1),
(6186, 'MN Long Thạnh', 'https://user.vnedu.vn/sso/', 1),
(6187, 'MN Ngọc Hòa', 'https://user.vnedu.vn/sso/', 1),
(6188, 'MN Ngọc Thành', 'https://user.vnedu.vn/sso/', 1),
(6189, 'MN Ngọc Thuận', 'https://user.vnedu.vn/sso/', 1),
(6190, 'MN Thạnh Bình', 'https://user.vnedu.vn/sso/', 1),
(6191, 'MN Thạnh Hòa', 'https://user.vnedu.vn/sso/', 1),
(6192, 'MN Thạnh Hưng', 'https://user.vnedu.vn/sso/', 1),
(6193, 'MN Thạnh Lộc', 'https://user.vnedu.vn/sso/', 1),
(6194, 'MN Thạnh Phước', 'https://user.vnedu.vn/sso/', 1),
(6195, 'MN Vĩnh Phú', 'https://user.vnedu.vn/sso/', 1),
(6196, 'MN Vĩnh Thạnh', 'https://user.vnedu.vn/sso/', 1),
(6197, 'TH Bàn Tân Định', 'https://smas.edu.vn/', 2),
(6198, 'TH Bàn Thạch', 'https://smas.edu.vn/', 2),
(6199, 'TH Hòa An', 'https://smas.edu.vn/', 2),
(6200, 'TH Hòa Hưng 1', 'https://smas.edu.vn/', 2),
(6201, 'TH Hòa Hưng 2', 'https://smas.edu.vn/', 2),
(6202, 'TH Hòa Lợi', 'https://smas.edu.vn/', 2),
(6203, 'TH Hòa Thuận', 'https://smas.edu.vn/', 2),
(6204, 'TH Long Thạnh 1', 'https://smas.edu.vn/', 2),
(6205, 'TH Long Thạnh 2', 'https://smas.edu.vn/', 2),
(6206, 'TH Ngọc Chúc', 'https://smas.edu.vn/', 2),
(6207, 'TH Ngọc Hòa', 'https://smas.edu.vn/', 2),
(6208, 'TH Ngọc Thành', 'https://smas.edu.vn/', 2),
(6209, 'TH Ngọc Thuận', 'https://smas.edu.vn/', 2),
(6210, 'TH Thạnh Hưng 1', 'https://smas.edu.vn/', 2),
(6211, 'TH Thạnh Hưng 2', 'https://smas.edu.vn/', 2),
(6212, 'TH Thạnh Lộc', 'https://smas.edu.vn/', 2),
(6213, 'TH Thạnh Phước', 'https://smas.edu.vn/', 2),
(6214, 'TH Thị Trấn Giồng Riềng 1', 'https://smas.edu.vn/', 2),
(6215, 'TH Thị Trấn Giồng Riềng 2', 'https://smas.edu.vn/', 2),
(6216, 'TH Thị Trấn Giồng Riềng 3', 'https://smas.edu.vn/', 2),
(6217, 'TH Vĩnh Thạnh', 'https://smas.edu.vn/', 2),
(6218, 'TH&THCS Bàn Thạch', 'https://user.vnedu.vn/sso/', 3),
(6219, 'TH&THCS Hòa An', 'https://user.vnedu.vn/sso/', 3),
(6220, 'TH&THCS Hòa Thuận', 'https://user.vnedu.vn/sso/', 3),
(6221, 'TH&THCS Huỳnh Tố', 'https://user.vnedu.vn/sso/', 3),
(6222, 'TH&THCS Ngọc Hòa', 'https://user.vnedu.vn/sso/', 3),
(6223, 'TH&THCS Ngọc Thành', 'https://user.vnedu.vn/sso/', 3),
(6224, 'TH&THCS Ngọc Thuận', 'https://user.vnedu.vn/sso/', 3),
(6225, 'TH&THCS Long Thạnh', 'https://user.vnedu.vn/sso/', 3),
(6226, 'TH&THCS Hòa Lợi', 'https://user.vnedu.vn/sso/', 3),
(6227, 'THCS Mai Thị Hồng Hạnh', 'https://smas.edu.vn/', 4),
(6228, 'TH&THCS Ngọc Chúc', 'https://user.vnedu.vn/sso/', 3),
(6229, 'TH&THCS Nguyễn Văn Rỗ', 'https://user.vnedu.vn/sso/', 3),
(6230, 'TH&THCS Nguyễn Văn Thới', 'https://user.vnedu.vn/sso/', 3),
(6231, 'TH&THCS Thạnh Bình', 'https://user.vnedu.vn/sso/', 3),
(6232, 'TH&THCS Thạnh Hòa', 'https://user.vnedu.vn/sso/', 3),
(6233, 'THCS Thạnh Hưng', 'https://smas.edu.vn/', 4),
(6234, 'THCS Thạnh Phước', 'https://smas.edu.vn/', 4),
(6235, 'TH&THCS Danh Thợi', 'https://user.vnedu.vn/sso/', 3),
(6236, 'MN Phú Lợi', 'https://user.vnedu.vn/sso/', 1),
(6237, 'MN Phú Mỹ', 'https://user.vnedu.vn/sso/', 1),
(6238, 'MN Tân Khánh Hòa', 'https://user.vnedu.vn/sso/', 1),
(6239, 'MN Vĩnh Điều', 'https://user.vnedu.vn/sso/', 1),
(6240, 'MN Vĩnh Phú', 'https://user.vnedu.vn/sso/', 1),
(6241, 'TH Phú Lợi', 'https://smas.edu.vn/', 2),
(6242, 'TH Phú Mỹ', 'https://smas.edu.vn/', 2),
(6243, 'TH Tân Khánh Hòa', 'https://smas.edu.vn/', 2),
(6244, 'TH Trần Thệ', 'https://smas.edu.vn/', 2),
(6245, 'TH Vĩnh Phú', 'https://smas.edu.vn/', 2),
(6246, 'TH&THCS Vĩnh Điều', 'https://user.vnedu.vn/sso/', 3),
(6247, 'TH&THCS Vĩnh Phú B', 'https://user.vnedu.vn/sso/', 3),
(6248, 'THCS Phú Mỹ', 'https://smas.edu.vn/', 4),
(6249, 'THCS Tân Khánh Hòa', 'https://smas.edu.vn/', 4),
(6250, 'THCS Vĩnh Phú', 'https://smas.edu.vn/', 4),
(6251, 'MG Bình Giang', 'https://user.vnedu.vn/sso/', 1),
(6252, 'MG Lình Huỳnh', 'https://user.vnedu.vn/sso/', 1),
(6253, 'MG Mỹ Hiệp Sơn', 'https://user.vnedu.vn/sso/', 1),
(6254, 'MG Mỹ Lâm', 'https://user.vnedu.vn/sso/', 1),
(6255, 'MG Mỹ Phước', 'https://user.vnedu.vn/sso/', 1),
(6256, 'MG Mỹ Thái', 'https://user.vnedu.vn/sso/', 1),
(6257, 'MG Mỹ Thuận', 'https://user.vnedu.vn/sso/', 1),
(6258, 'MG Nam Thái Sơn', 'https://user.vnedu.vn/sso/', 1),
(6259, 'MG Sóc Sơn', 'https://user.vnedu.vn/sso/', 1),
(6260, 'MG Sơn Bình', 'https://user.vnedu.vn/sso/', 1),
(6261, 'MG Sơn Kiên', 'https://user.vnedu.vn/sso/', 1),
(6262, 'MG Thổ Sơn', 'https://user.vnedu.vn/sso/', 1),
(6263, 'MN Bình Sơn', 'https://user.vnedu.vn/sso/', 1),
(6264, 'MN Thị trấn Hòn Đất', 'https://user.vnedu.vn/sso/', 1),
(6265, 'TH Bình Giang 1', 'https://smas.edu.vn/', 2),
(6266, 'TH Bình Giang 2', 'https://smas.edu.vn/', 2),
(6267, 'TH Bình Sơn 1', 'https://smas.edu.vn/', 2),
(6268, 'TH&THCS Bình Thuận', 'https://user.vnedu.vn/sso/', 3),
(6269, 'TH Giàn Gừa', 'https://smas.edu.vn/', 2),
(6270, 'TH Hiệp Bình', 'https://smas.edu.vn/', 2),
(6271, 'TH Hòa Tiến', 'https://smas.edu.vn/', 2),
(6272, 'TH Lình Huỳnh', 'https://smas.edu.vn/', 2),
(6273, 'TH Mương Kinh', 'https://smas.edu.vn/', 2),
(6274, 'TH Mỹ Hiệp Sơn', 'https://smas.edu.vn/', 2),
(6275, 'TH Mỹ Lâm 1', 'https://smas.edu.vn/', 2),
(6276, 'TH Mỹ Lâm 3', 'https://smas.edu.vn/', 2),
(6277, 'TH Mỹ Phú', 'https://smas.edu.vn/', 2),
(6278, 'TH Mỹ Phước', 'https://smas.edu.vn/', 2),
(6279, 'TH Mỹ Thuận', 'https://smas.edu.vn/', 2),
(6280, 'TH Nam Thái Sơn', 'https://smas.edu.vn/', 2),
(6281, 'TH Sơn Kiên 1', 'https://smas.edu.vn/', 2),
(6282, 'TH Sơn Kiên 3', 'https://smas.edu.vn/', 2),
(6283, 'TH Tân Hưng', 'https://smas.edu.vn/', 2),
(6284, 'TH Thành Công', 'https://smas.edu.vn/', 2),
(6285, 'TH Thị Trấn Hòn Đất 1', 'https://smas.edu.vn/', 2),
(6286, 'TH Thị Trấn Sóc Sơn', 'https://smas.edu.vn/', 2),
(6287, 'TH Thổ Sơn', 'https://smas.edu.vn/', 2),
(6288, 'TH&THCS Kiên Hảo', 'https://user.vnedu.vn/sso/', 3),
(6289, 'TH&THCS Mỹ Thái', 'https://user.vnedu.vn/sso/', 3),
(6290, 'TH&THCS Thị Trấn Hòn Đất 2', 'https://user.vnedu.vn/sso/', 3),
(6291, 'TH&THCS Thổ Sơn', 'https://user.vnedu.vn/sso/', 3),
(6292, 'TH&THCS Thuận Tiến', 'https://user.vnedu.vn/sso/', 3),
(6293, 'TH&THCS Vàm Rầy', 'https://user.vnedu.vn/sso/', 3),
(6294, 'THCS Giồng Kè', 'https://user.vnedu.vn/sso/', 3),
(6295, 'THCS Bình Giang', 'https://smas.edu.vn/', 4),
(6296, 'THCS Lình Huỳnh', 'https://smas.edu.vn/', 4),
(6297, 'THCS Mỹ Hưng', 'https://smas.edu.vn/', 4),
(6298, 'THCS Mỹ Lâm', 'https://smas.edu.vn/', 4),
(6299, 'THCS Mỹ Phước', 'https://smas.edu.vn/', 4),
(6300, 'THCS Mỹ Thuận', 'https://smas.edu.vn/', 4),
(6301, 'THCS Sóc Sơn', 'https://smas.edu.vn/', 4),
(6302, 'THCS Sơn Bình', 'https://smas.edu.vn/', 4),
(6303, 'THCS Sơn Kiên', 'https://smas.edu.vn/', 4),
(6304, 'THCS Thị Trấn', 'https://smas.edu.vn/', 4),
(6305, 'MG Mỹ Đức', 'https://user.vnedu.vn/sso/', 1),
(6306, 'MG Tô Châu', 'https://user.vnedu.vn/sso/', 1),
(6307, 'MN Đông Hồ', 'https://user.vnedu.vn/sso/', 1),
(6308, 'MN Hà Tiên', 'https://user.vnedu.vn/sso/', 1),
(6309, 'MN Thuận Yên', 'https://user.vnedu.vn/sso/', 1),
(6310, 'TH Bình San', 'https://smas.edu.vn/', 2),
(6311, 'TH Đông Hồ', 'https://smas.edu.vn/', 2),
(6312, 'TH Mỹ Đức', 'https://smas.edu.vn/', 2),
(6313, 'TH Pháo Đài 1', 'https://smas.edu.vn/', 2),
(6314, 'TH Thuận Yên', 'https://smas.edu.vn/', 2),
(6315, 'TH Tô Châu', 'https://smas.edu.vn/', 2),
(6316, 'TH&THCS Cừ Đứt', 'https://user.vnedu.vn/sso/', 3),
(6317, 'TH&THCS Pháo Đài', 'https://user.vnedu.vn/sso/', 3),
(6318, 'TH&THCS Tiên Hải', 'https://user.vnedu.vn/sso/', 3),
(6319, 'THCS Bình San', 'https://smas.edu.vn/', 4),
(6320, 'THCS Đông Hồ', 'https://smas.edu.vn/', 4),
(6321, 'THCS Mỹ Đức', 'https://smas.edu.vn/', 4),
(6322, 'THCS Thuận Yên', 'https://smas.edu.vn/', 4),
(6323, 'THCS Tô Châu', 'https://smas.edu.vn/', 4),
(6324, 'MN Sao Mai', 'https://user.vnedu.vn/sso/', 1),
(6325, 'MN An Sơn', 'https://user.vnedu.vn/sso/', 1),
(6326, 'MN Hòn Tre', 'https://user.vnedu.vn/sso/', 1),
(6327, 'TH An Sơn', 'https://smas.edu.vn/', 2),
(6328, 'TH Hòn Tre', 'https://smas.edu.vn/', 2),
(6329, 'TH Trần Quốc Toản', 'https://smas.edu.vn/', 2),
(6330, 'TH&THCS Nam Du', 'https://user.vnedu.vn/sso/', 3),
(6331, 'THCS An Sơn', 'https://smas.edu.vn/', 4),
(6332, 'MN Bình An', 'https://user.vnedu.vn/sso/', 1),
(6333, 'MN Bình Trị', 'https://user.vnedu.vn/sso/', 1),
(6334, 'MN Dương Hòa', 'https://user.vnedu.vn/sso/', 1),
(6335, 'MN Hòa Điền', 'https://user.vnedu.vn/sso/', 1),
(6336, 'MN Hoa Mai', 'https://user.vnedu.vn/sso/', 1),
(6337, 'MN Kiên Bình 1', 'https://user.vnedu.vn/sso/', 1),
(6338, 'MN Thị Trấn Kiên Lương', 'https://user.vnedu.vn/sso/', 1),
(6339, 'TH Bình An', 'https://smas.edu.vn/', 2),
(6340, 'TH Dương Hòa', 'https://smas.edu.vn/', 2),
(6341, 'TH Hòa Điền', 'https://smas.edu.vn/', 2),
(6342, 'TH Thị Trấn Kiên Lương 1', 'https://smas.edu.vn/', 2),
(6343, 'TH Thị Trấn Kiên Lương 2', 'https://smas.edu.vn/', 2),
(6344, 'TH Thị Trấn Kiên Lương 3', 'https://smas.edu.vn/', 2),
(6345, 'TH&THCS Bình Trị', 'https://user.vnedu.vn/sso/', 3),
(6346, 'TH&THCS Hòn Nghệ', 'https://user.vnedu.vn/sso/', 3),
(6347, 'TH&THCS Kiên Bình 1', 'https://user.vnedu.vn/sso/', 3),
(6348, 'TH&THCS Kiên Bình 2', 'https://user.vnedu.vn/sso/', 3),
(6349, 'TH&THCS Sơn Hải', 'https://user.vnedu.vn/sso/', 3),
(6350, 'THCS Bình An', 'https://smas.edu.vn/', 4),
(6351, 'THCS Dương Hòa', 'https://smas.edu.vn/', 4),
(6352, 'THCS Hòa Điền', 'https://smas.edu.vn/', 4),
(6353, 'THCS Thị Trấn Kiên Lương 1', 'https://smas.edu.vn/', 4),
(6354, 'MN An Thới', 'https://user.vnedu.vn/sso/', 1),
(6355, 'MN Bãi Thơm', 'https://user.vnedu.vn/sso/', 1),
(6356, 'MN Cửa Cạn', 'https://user.vnedu.vn/sso/', 1),
(6357, 'MN Cửa Dương', 'https://user.vnedu.vn/sso/', 1),
(6358, 'MN Dương Đông', 'https://user.vnedu.vn/sso/', 1),
(6359, 'MN Gành Dầu', 'https://user.vnedu.vn/sso/', 1),
(6360, 'MN Hàm Ninh', 'https://user.vnedu.vn/sso/', 1),
(6361, 'MN Hồ Thị Nghiêm', 'https://user.vnedu.vn/sso/', 1),
(6362, 'TH An Thới 1', 'https://smas.edu.vn/', 2),
(6363, 'TH An Thới 2', 'https://smas.edu.vn/', 2),
(6364, 'TH An Thới 3', 'https://smas.edu.vn/', 2),
(6365, 'TH Cửa Dương 1', 'https://smas.edu.vn/', 2),
(6366, 'TH Cửa Dương 2', 'https://smas.edu.vn/', 2),
(6367, 'TH Dương Đông 1', 'https://smas.edu.vn/', 2),
(6368, 'TH Dương Đông 2', 'https://smas.edu.vn/', 2),
(6369, 'TH Dương Đông 3', 'https://smas.edu.vn/', 2),
(6370, 'TH Dương Đông 4', 'https://smas.edu.vn/', 2),
(6371, 'TH Dương Tơ 1', 'https://smas.edu.vn/', 2),
(6372, 'TH Dương Tơ 2', 'https://smas.edu.vn/', 2),
(6373, 'TH&THCS An Thới 2', 'https://user.vnedu.vn/sso/', 3),
(6374, 'TH&THCS Bãi Bổn', 'https://user.vnedu.vn/sso/', 3),
(6375, 'TH&THCS Bãi Thơm', 'https://user.vnedu.vn/sso/', 3),
(6376, 'TH&THCS Cửa Cạn', 'https://user.vnedu.vn/sso/', 3),
(6377, 'TH&THCS Cửa Dương', 'https://user.vnedu.vn/sso/', 3),
(6378, 'TH&THCS Gành Dầu', 'https://user.vnedu.vn/sso/', 3),
(6379, 'TH&THCS Hàm Ninh', 'https://user.vnedu.vn/sso/', 3),
(6380, 'TH&THCS Nguyễn Trung Trực', 'https://user.vnedu.vn/sso/', 3),
(6381, 'TH&THCS Thổ Châu', 'https://user.vnedu.vn/sso/', 3),
(6382, 'THCS An Thới 1', 'https://smas.edu.vn/', 4),
(6383, 'THCS Dương Đông 1', 'https://smas.edu.vn/', 4),
(6384, 'THCS Dương Đông 2', 'https://smas.edu.vn/', 4),
(6385, 'THCS Dương Tơ', 'https://smas.edu.vn/', 4),
(6386, 'MG Ánh Dương', 'https://user.vnedu.vn/sso/', 1),
(6387, 'MG Hoa Lan', 'https://user.vnedu.vn/sso/', 1),
(6388, 'MG Hoa Mai', 'https://user.vnedu.vn/sso/', 1),
(6389, 'MG Họa Mi', 'https://user.vnedu.vn/sso/', 1),
(6390, 'MG Hương Sen', 'https://user.vnedu.vn/sso/', 1),
(6391, 'MG Măng Non', 'https://user.vnedu.vn/sso/', 1),
(6392, 'MN Bình Minh', 'https://user.vnedu.vn/sso/', 1),
(6393, 'MN Hoa Hồng', 'https://user.vnedu.vn/sso/', 1),
(6394, 'MN Hướng Dương', 'https://user.vnedu.vn/sso/', 1),
(6395, 'MN Ngôi Sao', 'https://user.vnedu.vn/sso/', 1),
(6396, 'MN Sao Mai', 'https://user.vnedu.vn/sso/', 1),
(6397, 'MN Sen Hồng', 'https://user.vnedu.vn/sso/', 1),
(6398, 'MN Vành Khuyên', 'https://user.vnedu.vn/sso/', 1),
(6399, 'TH Âu Cơ', 'https://smas.edu.vn/', 2),
(6400, 'TH Châu Văn Liêm', 'https://smas.edu.vn/', 2),
(6401, 'TH Đinh Bộ Lĩnh', 'https://smas.edu.vn/', 2),
(6402, 'TH Hồng Bàng', 'https://smas.edu.vn/', 2),
(6403, 'TH Kim Đồng', 'https://smas.edu.vn/', 2),
(6404, 'TH Lê Lợi', 'https://smas.edu.vn/', 2),
(6405, 'TH Lê Thị Hồng Gấm', 'https://smas.edu.vn/', 2),
(6406, 'TH Lê Văn Tám', 'https://smas.edu.vn/', 2),
(6407, 'TH Lương Thế Vinh', 'https://smas.edu.vn/', 2),
(6408, 'TH Lý Thường Kiệt', 'https://smas.edu.vn/', 2),
(6409, 'TH Lý Tự Trọng', 'https://smas.edu.vn/', 2),
(6410, 'TH Mạc Đĩnh Chi', 'https://smas.edu.vn/', 2),
(6411, 'TH Nguyễn Bá Ngọc', 'https://smas.edu.vn/', 2),
(6412, 'TH Nguyễn Chí Thanh', 'https://smas.edu.vn/', 2),
(6413, 'TH Nguyễn Hiền', 'https://smas.edu.vn/', 2),
(6414, 'TH Nguyễn Huệ', 'https://smas.edu.vn/', 2),
(6415, 'TH Nguyễn Thái Bình', 'https://smas.edu.vn/', 2),
(6416, 'TH Phạm Ngũ Lão', 'https://smas.edu.vn/', 2),
(6417, 'TH Trần Bình Trọng', 'https://smas.edu.vn/', 2),
(6418, 'TH Trần Khánh Dư', 'https://smas.edu.vn/', 2),
(6419, 'TH Trần Nhật Duật', 'https://smas.edu.vn/', 2),
(6420, 'TH Trần Quốc Toản', 'https://smas.edu.vn/', 2),
(6421, 'TH Trần Văn Ơn', 'https://smas.edu.vn/', 2),
(6422, 'TH Trưng Vương', 'https://smas.edu.vn/', 2),
(6423, 'TH Trương Định', 'https://smas.edu.vn/', 2),
(6424, 'TH&THCS Phan Huy Chú', 'https://user.vnedu.vn/sso/', 3),
(6425, 'TH&THCS Trần Hưng Đạo', 'https://user.vnedu.vn/sso/', 3),
(6426, 'THCS Chu Văn An', 'https://smas.edu.vn/', 4),
(6427, 'THCS Hùng Vương', 'https://smas.edu.vn/', 4),
(6428, 'THCS Lê Quý Đôn', 'https://smas.edu.vn/', 4),
(6429, 'THCS Ngô Quyền', 'https://smas.edu.vn/', 4),
(6430, 'THCS Ngô Sĩ Liên', 'https://smas.edu.vn/', 4),
(6431, 'THCS Nguyễn Bỉnh Khiêm', 'https://smas.edu.vn/', 4),
(6432, 'THCS Nguyễn Du', 'https://smas.edu.vn/', 4),
(6433, 'THCS Nguyễn Trãi', 'https://smas.edu.vn/', 4),
(6434, 'THCS Nguyễn Trường Tộ', 'https://smas.edu.vn/', 4),
(6435, 'THCS Võ Nguyên Giáp', 'https://smas.edu.vn/', 4),
(6436, 'THCS Võ Trường Toản', 'https://smas.edu.vn/', 4),
(6437, 'MG Hoa Hồng', 'https://user.vnedu.vn/sso/', 1),
(6438, 'MG Họa Mi', 'https://user.vnedu.vn/sso/', 1),
(6439, 'MG Hương Sen', 'https://user.vnedu.vn/sso/', 1),
(6440, 'MG Tân An', 'https://user.vnedu.vn/sso/', 1),
(6441, 'MG Tân Hiệp A', 'https://user.vnedu.vn/sso/', 1),
(6442, 'MG Tân Hòa', 'https://user.vnedu.vn/sso/', 1),
(6443, 'MG Tân Hội', 'https://user.vnedu.vn/sso/', 1),
(6444, 'MG Tân Thành', 'https://user.vnedu.vn/sso/', 1),
(6445, 'MG Thạnh Đông B', 'https://user.vnedu.vn/sso/', 1),
(6446, 'MG Thạnh Trị', 'https://user.vnedu.vn/sso/', 1),
(6447, 'MN Sơn Ca', 'https://user.vnedu.vn/sso/', 1),
(6448, 'MN Thị trấn Tân Hiệp', 'https://user.vnedu.vn/sso/', 1),
(6449, 'TH Đông Lộc', 'https://smas.edu.vn/', 2),
(6450, 'TH Tân An', 'https://smas.edu.vn/', 2),
(6451, 'TH Tân Hòa 1', 'https://smas.edu.vn/', 2),
(6452, 'TH Tân Hòa 2', 'https://smas.edu.vn/', 2),
(6453, 'TH Tân Hội 1', 'https://smas.edu.vn/', 2),
(6454, 'TH Tân Thành 1', 'https://smas.edu.vn/', 2),
(6455, 'TH Tân Thành 2', 'https://smas.edu.vn/', 2),
(6456, 'TH Thạnh Đông 1', 'https://smas.edu.vn/', 2),
(6457, 'TH Thạnh Đông 3', 'https://smas.edu.vn/', 2),
(6458, 'TH Thạnh Đông A1', 'https://smas.edu.vn/', 2),
(6459, 'TH Thạnh Đông A4', 'https://smas.edu.vn/', 2),
(6460, 'TH Thạnh Đông B1', 'https://smas.edu.vn/', 2),
(6461, 'TH Thạnh Đông B2', 'https://smas.edu.vn/', 2),
(6462, 'TH Thạnh Quới', 'https://smas.edu.vn/', 2),
(6463, 'TH Thạnh Trị', 'https://smas.edu.vn/', 2),
(6464, 'TH Thạnh Trúc', 'https://smas.edu.vn/', 2),
(6465, 'TH Thị Trấn 2', 'https://smas.edu.vn/', 2),
(6466, 'TH Thị Trấn Tân Hiệp 1', 'https://smas.edu.vn/', 2),
(6467, 'TH&THCS Đông Thọ', 'https://user.vnedu.vn/sso/', 3),
(6468, 'TH&THCS Tân An', 'https://user.vnedu.vn/sso/', 3),
(6469, 'TH&THCS Tân Hiệp A2', 'https://user.vnedu.vn/sso/', 3),
(6470, 'TH&THCS Tân Hiệp A3', 'https://user.vnedu.vn/sso/', 3),
(6471, 'TH&THCS Tân Hiệp A5', 'https://user.vnedu.vn/sso/', 3),
(6472, 'TH&THCS Tân Hiệp B', 'https://user.vnedu.vn/sso/', 3),
(6473, 'TH&THCS Tân Hội', 'https://user.vnedu.vn/sso/', 3),
(6474, 'TH&THCS Thạnh Đông', 'https://user.vnedu.vn/sso/', 3),
(6475, 'TH&THCS Thạnh Đông 1', 'https://user.vnedu.vn/sso/', 3),
(6476, 'TH&THCS Thạnh Đông A', 'https://user.vnedu.vn/sso/', 3),
(6477, 'TH&THCS Thạnh Đông A2', 'https://user.vnedu.vn/sso/', 3),
(6478, 'TH&THCS Thị trấn Tân Hiệp', 'https://user.vnedu.vn/sso/', 3),
(6479, 'THCS Tân Hiệp B2', 'https://smas.edu.vn/', 4),
(6480, 'THCS Tân Hòa', 'https://smas.edu.vn/', 4),
(6481, 'THCS Tân Thành', 'https://smas.edu.vn/', 4),
(6482, 'THCS Thạnh Đông', 'https://smas.edu.vn/', 4),
(6483, 'THCS Thạnh Đông A', 'https://smas.edu.vn/', 4),
(6484, 'THCS Thạnh Đông B', 'https://smas.edu.vn/', 4),
(6485, 'THCS Thạnh Trị', 'https://smas.edu.vn/', 4),
(6486, 'THCS Thị trấn Tân Hiệp', 'https://smas.edu.vn/', 4),
(6487, 'MN An Minh Bắc', 'https://user.vnedu.vn/sso/', 1),
(6488, 'MN Hòa Chánh', 'https://user.vnedu.vn/sso/', 1),
(6489, 'MN Minh Thuận 1', 'https://user.vnedu.vn/sso/', 1),
(6490, 'MN Minh Thuận 2', 'https://user.vnedu.vn/sso/', 1),
(6491, 'MN Thạnh Yên 1', 'https://user.vnedu.vn/sso/', 1),
(6492, 'MN Thạnh Yên 2', 'https://user.vnedu.vn/sso/', 1),
(6493, 'MN Thạnh Yên A', 'https://user.vnedu.vn/sso/', 1),
(6494, 'MN Vĩnh Hòa', 'https://user.vnedu.vn/sso/', 1),
(6495, 'TH An Minh Bắc 1', 'https://smas.edu.vn/', 2),
(6496, 'TH An Minh Bắc 4', 'https://smas.edu.vn/', 2),
(6497, 'TH Hòa Chánh 1', 'https://smas.edu.vn/', 2),
(6498, 'TH Hòa Chánh 2', 'https://smas.edu.vn/', 2),
(6499, 'TH Minh Thuận 1', 'https://smas.edu.vn/', 2),
(6500, 'TH Minh Thuận 5', 'https://smas.edu.vn/', 2),
(6501, 'TH Minh Thuận 6', 'https://smas.edu.vn/', 2),
(6502, 'TH Phạm Văn Hớn', 'https://smas.edu.vn/', 2),
(6503, 'TH Thạnh Yên 1', 'https://smas.edu.vn/', 2),
(6504, 'TH Thạnh Yên 2', 'https://smas.edu.vn/', 2),
(6505, 'TH Thạnh Yên A1', 'https://smas.edu.vn/', 2),
(6506, 'TH Thạnh Yên A2', 'https://smas.edu.vn/', 2),
(6507, 'TH Vĩnh Hòa 1', 'https://smas.edu.vn/', 2),
(6508, 'TH&THCS An Minh Bắc 3', 'https://user.vnedu.vn/sso/', 3),
(6509, 'TH&THCS Hòa Chánh 3', 'https://user.vnedu.vn/sso/', 3),
(6510, 'TH&THCS Minh Thuận 2', 'https://user.vnedu.vn/sso/', 3),
(6511, 'TH&THCS Minh Thuận 4', 'https://user.vnedu.vn/sso/', 3),
(6512, 'TH&THCS Vĩnh Hòa 2', 'https://user.vnedu.vn/sso/', 3),
(6513, 'THCS An Minh Bắc', 'https://smas.edu.vn/', 4),
(6514, 'THCS Hòa Chánh', 'https://smas.edu.vn/', 4),
(6515, 'THCS Minh Thuận 3', 'https://smas.edu.vn/', 4),
(6516, 'THCS Thạnh Yên', 'https://smas.edu.vn/', 4),
(6517, 'THCS Thạnh Yên A', 'https://smas.edu.vn/', 4),
(6518, 'MG Bình Minh', 'https://user.vnedu.vn/sso/', 1),
(6519, 'MG Phong Đông', 'https://user.vnedu.vn/sso/', 1),
(6520, 'MG Tân Thuận', 'https://user.vnedu.vn/sso/', 1),
(6521, 'MG Thị Trấn', 'https://user.vnedu.vn/sso/', 1),
(6522, 'MG Vĩnh Bình Bắc', 'https://user.vnedu.vn/sso/', 1),
(6523, 'MG Vĩnh Bình Nam', 'https://user.vnedu.vn/sso/', 1),
(6524, 'MG Vĩnh Phong', 'https://user.vnedu.vn/sso/', 1),
(6525, 'MG Vĩnh Thuận', 'https://user.vnedu.vn/sso/', 1),
(6526, 'TH Bình Minh', 'https://smas.edu.vn/', 2),
(6527, 'TH Tân Thuận 2', 'https://smas.edu.vn/', 2),
(6528, 'TH Thị Trấn 1', 'https://smas.edu.vn/', 2),
(6529, 'TH Thị Trấn 2', 'https://smas.edu.vn/', 2),
(6530, 'TH Vĩnh Bình Bắc 1', 'https://smas.edu.vn/', 2),
(6531, 'TH Vĩnh Bình Bắc 3', 'https://smas.edu.vn/', 2),
(6532, 'TH Vĩnh Bình Bắc 4', 'https://smas.edu.vn/', 2),
(6533, 'TH Vĩnh Phong 1', 'https://smas.edu.vn/', 2),
(6534, 'TH Vĩnh Phong 3', 'https://smas.edu.vn/', 2),
(6535, 'TH Vĩnh Phong 4', 'https://smas.edu.vn/', 2),
(6536, 'TH Vĩnh Thuận 1', 'https://smas.edu.vn/', 2),
(6537, 'TH Võ Văn Kiệt', 'https://smas.edu.vn/', 2),
(6538, 'TH&THCS Phong Đông', 'https://user.vnedu.vn/sso/', 3),
(6539, 'TH&THCS Tân Thuận 1', 'https://user.vnedu.vn/sso/', 3),
(6540, 'TH&THCS Tân Thuận 2', 'https://user.vnedu.vn/sso/', 3),
(6541, 'TH&THCS Vĩnh Bình Bắc', 'https://user.vnedu.vn/sso/', 3),
(6542, 'TH&THCS Vĩnh Bình Nam', 'https://user.vnedu.vn/sso/', 3),
(6543, 'TH&THCS Vĩnh Bình Nam 1', 'https://user.vnedu.vn/sso/', 3),
(6544, 'TH&THCS Thị Trấn Vĩnh Thuận', 'https://smas.edu.vn/', 4),
(6545, 'THCS Thị Trấn', 'https://smas.edu.vn/', 4),
(6546, 'THCS Vĩnh Phong 2', 'https://smas.edu.vn/', 4),
(6547, 'THCS Vĩnh Thuận', 'https://smas.edu.vn/', 4),
(6548, 'PT DTNT THCS An Biên', 'https://smas.edu.vn/', 5),
(6549, 'PT DTNT THCS Châu Thành', 'https://smas.edu.vn/', 5),
(6550, 'PT DTNT THCS Giồng Riềng', 'https://smas.edu.vn/', 5),
(6551, 'PT DTNT THCS Gò Quao', 'https://smas.edu.vn/', 5),
(6552, 'PT DTNT THCS Hà Tiên', 'https://smas.edu.vn/', 5),
(6553, 'PT DTNT THPT Kiên Giang', 'https://user.vnedu.vn/sso/', 7),
(6554, 'THPT An Biên', 'https://user.vnedu.vn/sso/', 7),
(6555, 'THPT An Minh', 'https://user.vnedu.vn/sso/', 7),
(6556, 'THPT An Thới', 'https://user.vnedu.vn/sso/', 7),
(6557, 'THPT Cây Dương', 'https://user.vnedu.vn/sso/', 7),
(6558, 'THPT Châu Thành', 'https://user.vnedu.vn/sso/', 7),
(6559, 'THPT chuyên Huỳnh Mẫn Đạt', 'https://user.vnedu.vn/sso/', 7),
(6560, 'THPT Dương Đông', 'https://user.vnedu.vn/sso/', 7),
(6561, 'THPT Giồng Riềng', 'https://user.vnedu.vn/sso/', 7),
(6562, 'THPT Gò Quao', 'https://user.vnedu.vn/sso/', 7),
(6563, 'THPT Hòn Đất', 'https://user.vnedu.vn/sso/', 7),
(6564, 'THPT Kiên Lương', 'https://user.vnedu.vn/sso/', 7),
(6565, 'THPT Ngô Sĩ Liên', 'https://user.vnedu.vn/sso/', 7),
(6566, 'THPT Nguyễn Hùng Sơn', 'https://user.vnedu.vn/sso/', 7),
(6567, 'THPT Nguyễn Thần Hiến', 'https://user.vnedu.vn/sso/', 7),
(6568, 'THPT Nguyễn Trung Trực', 'https://user.vnedu.vn/sso/', 7),
(6569, 'THPT Phú Quốc', 'https://user.vnedu.vn/sso/', 7),
(6570, 'THPT Sóc Sơn', 'https://user.vnedu.vn/sso/', 7),
(6571, 'THPT Tân Hiệp', 'https://user.vnedu.vn/sso/', 7),
(6572, 'THPT Thạnh Đông', 'https://user.vnedu.vn/sso/', 7),
(6573, 'THPT Thoại Ngọc Hầu', 'https://user.vnedu.vn/sso/', 7),
(6574, 'THPT Vĩnh Thuận', 'https://user.vnedu.vn/sso/', 7),
(6575, 'THCS&THPT Ba Hòn', 'https://user.vnedu.vn/sso/', 6),
(6576, 'THCS&THPT Bàn Tân Định', 'https://user.vnedu.vn/sso/', 6),
(6577, 'THCS&THPT Bình Sơn', 'https://user.vnedu.vn/sso/', 6),
(6578, 'THCS&THPT Định An', 'https://user.vnedu.vn/sso/', 6),
(6579, 'THCS&THPT Đông Thái', 'https://user.vnedu.vn/sso/', 6),
(6580, 'THCS&THPT Hòa Hưng', 'https://user.vnedu.vn/sso/', 6),
(6581, 'THCS&THPT Hòa Thuận', 'https://user.vnedu.vn/sso/', 6),
(6582, 'THCS&THPT Kiên Hải', 'https://user.vnedu.vn/sso/', 6),
(6583, 'THCS&THPT Lại Sơn', 'https://user.vnedu.vn/sso/', 6),
(6584, 'THCS&THPT Long Thạnh', 'https://user.vnedu.vn/sso/', 6),
(6585, 'THCS&THPT Minh Thuận', 'https://user.vnedu.vn/sso/', 6),
(6586, 'THCS&THPT Mong Thọ', 'https://user.vnedu.vn/sso/', 6),
(6587, 'THCS&THPT Nam Thái Sơn', 'https://user.vnedu.vn/sso/', 6),
(6588, 'THCS&THPT Nam Yên', 'https://user.vnedu.vn/sso/', 6),
(6589, 'THCS&THPT Nguyễn Hùng Hiệp', 'https://user.vnedu.vn/sso/', 6),
(6590, 'THCS&THPT Nguyễn Văn Xiện', 'https://user.vnedu.vn/sso/', 6),
(6591, 'THCS&THPT Phan Thị Ràng', 'https://user.vnedu.vn/sso/', 6),
(6592, 'THCS&THPT Thạnh Lộc', 'https://user.vnedu.vn/sso/', 6),
(6593, 'THCS&THPT Thạnh Tây', 'https://user.vnedu.vn/sso/', 6),
(6594, 'THCS&THPT Thới Quản', 'https://user.vnedu.vn/sso/', 6),
(6595, 'THCS&THPT U Minh Thượng', 'https://user.vnedu.vn/sso/', 6),
(6596, 'THCS&THPT Vân Khánh', 'https://user.vnedu.vn/sso/', 6),
(6597, 'THCS&THPT Vĩnh Bình Bắc', 'https://user.vnedu.vn/sso/', 6),
(6598, 'THCS&THPT Vĩnh Hòa', 'https://user.vnedu.vn/sso/', 6),
(6599, 'THCS&THPT Vĩnh Hòa Hưng Bắc', 'https://user.vnedu.vn/sso/', 6),
(6600, 'THCS&THPT Vĩnh Phong', 'https://user.vnedu.vn/sso/', 6),
(6601, 'THCS&THPT Vĩnh Thắng', 'https://user.vnedu.vn/sso/', 6),
(6602, 'THCS&THPT Võ Văn Kiệt', 'https://user.vnedu.vn/sso/', 6),
(6603, 'TT GDTX tỉnh Kiên Giang', 'https://smas.edu.vn/', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `school`
--
ALTER TABLE `school`
  ADD PRIMARY KEY (`id`),
  ADD KEY `level_id` (`level_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `school`
--
ALTER TABLE `school`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6604;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `school`
--
ALTER TABLE `school`
  ADD CONSTRAINT `school_ibfk_1` FOREIGN KEY (`level_id`) REFERENCES `level` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `dbase` varchar(255) NOT NULL DEFAULT '',
  `user` varchar(255) NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `query` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) NOT NULL,
  `col_name` varchar(64) NOT NULL,
  `col_type` varchar(64) NOT NULL,
  `col_length` text DEFAULT NULL,
  `col_collation` varchar(64) NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) DEFAULT '',
  `col_default` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `column_name` varchar(64) NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '',
  `transformation` varchar(255) NOT NULL DEFAULT '',
  `transformation_options` varchar(255) NOT NULL DEFAULT '',
  `input_transformation` varchar(255) NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) NOT NULL,
  `settings_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL,
  `export_type` varchar(10) NOT NULL,
  `template_name` varchar(64) NOT NULL,
  `template_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db` varchar(64) NOT NULL DEFAULT '',
  `table` varchar(64) NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) NOT NULL,
  `item_name` varchar(64) NOT NULL,
  `item_type` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) NOT NULL,
  `tables` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Dumping data for table `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"db\",\"table\":\"school\"},{\"db\":\"db\",\"table\":\"level\"},{\"db\":\"db\",\"table\":\"cap\"},{\"db\":\"db\",\"table\":\"truong\"},{\"db\":\"db\",\"table\":\"document\"}]');

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) NOT NULL DEFAULT '',
  `master_table` varchar(64) NOT NULL DEFAULT '',
  `master_field` varchar(64) NOT NULL DEFAULT '',
  `foreign_db` varchar(64) NOT NULL DEFAULT '',
  `foreign_table` varchar(64) NOT NULL DEFAULT '',
  `foreign_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) NOT NULL DEFAULT '',
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `search_name` varchar(64) NOT NULL DEFAULT '',
  `search_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) NOT NULL DEFAULT '',
  `table_name` varchar(64) NOT NULL DEFAULT '',
  `display_field` varchar(64) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) NOT NULL,
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `prefs` text NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) NOT NULL,
  `table_name` varchar(64) NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text NOT NULL,
  `schema_sql` text DEFAULT NULL,
  `data_sql` longtext DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Dumping data for table `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2024-09-10 00:13:50', '{\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) NOT NULL,
  `tab` varchar(64) NOT NULL,
  `allowed` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) NOT NULL,
  `usergroup` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
