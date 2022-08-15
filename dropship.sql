-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Agu 2022 pada 14.28
-- Versi server: 10.4.16-MariaDB
-- Versi PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dropship`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`) VALUES
(6, 'Asus'),
(5, 'HP'),
(7, 'Dell'),
(8, 'Samsung');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_status` tinyint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_status`) VALUES
(73, 'Watch', 1),
(72, 'Laptop', 1),
(71, 'Mobile', 1),
(74, 'Monitor', 1),
(75, 'Mouse', 1),
(76, 'PC', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `contact_id` int(11) NOT NULL,
  `contact_name` varchar(25) NOT NULL,
  `contact_email` varchar(32) NOT NULL,
  `contact_subject` varchar(32) NOT NULL,
  `contact_message` text NOT NULL,
  `contact_status` tinyint(2) NOT NULL,
  `contact_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_contact`
--

INSERT INTO `tbl_contact` (`contact_id`, `contact_name`, `contact_email`, `contact_subject`, `contact_message`, `contact_status`, `contact_date`) VALUES
(4, 'abir khan', 'abirkhan@gmail.com', 'Test two', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 0, '2017-12-28'),
(5, 'abir khan', 'abirkhan@gmail.com', 'Test two', 'Hello, i am abir i need some help.', 0, '2017-12-28'),
(14, 'abcd', 'sumonsarker018@gmail.com', 'Test Message', 'E-Shopper Inc.\r\n\r\n935 W. Webster Ave New Streets Chicago, IL 60614, NY\r\n\r\nNewyork USA\r\n\r\nMobile: +2346 17 38 93\r\n\r\nFax: 1-714-252-0026\r\n\r\nEmail: info@e-shopper.com', 0, '2017-12-28'),
(15, 'mumin', 'mumin@gmail.com', 'Test', 'ddddddddddddd', 0, '2017-12-28'),
(16, 'mumin', 'mumin@gmail.com', 'Test Message', 'Test Message', 0, '2017-12-28'),
(17, 'mumin', 'mumin@gmail.com', 'Test Message', 'Test Message', 0, '2017-12-27'),
(19, 'sumon', 'sumon@gmail.com', 'This is sumon', 'This is sumon', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(55) NOT NULL,
  `cus_email` varchar(55) NOT NULL,
  `cus_password` varchar(32) NOT NULL,
  `cus_mobile` varchar(14) NOT NULL,
  `cus_address` text NOT NULL,
  `cus_city` varchar(55) NOT NULL,
  `cus_country` varchar(55) NOT NULL,
  `cus_zip` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_customer`
--

INSERT INTO `tbl_customer` (`cus_id`, `cus_name`, `cus_email`, `cus_password`, `cus_mobile`, `cus_address`, `cus_city`, `cus_country`, `cus_zip`) VALUES
(48, 'Sm shuvo', 'sumonsarker080@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1611606484', 'Sylhet City', 'Mymensingh', 'Bangladesh', '2220'),
(47, 'Trailer', 'Traileralltimesu@gmail.com', '25d55ad283aa400af464c76d713c07ad', '1611606484', 'Sylhet City', 'Mymensingh', 'UK', '2220'),
(49, 'Naufal', 'Naufalnur7@gmail.com', 'b3b6d39d514d6be82cb75445fb1f3325', '0839393911716', 'jl.jaksanaranata timur rt:08/10', 'KABUPATEN BANDUNG', '-- Provinsi --', '40375');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` float NOT NULL,
  `order_status` varchar(20) NOT NULL DEFAULT 'pending',
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `cus_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `order_date`) VALUES
(100, 47, 78, 102, 107, 'pending', '2017-12-31 17:20:20'),
(97, 48, 76, 99, 107, 'pending', '2017-12-31 17:01:39'),
(101, 49, 80, 103, 107, 'pending', '2022-08-10 07:40:37');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(12) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(5) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `sales_quantity` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `sales_quantity`) VALUES
(125, 100, 53, 'Samsung j7', 100, 1),
(119, 97, 53, 'Samsung j7', 100, 1),
(126, 101, 53, 'Samsung j7', 100, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending',
  `payment_type` varchar(20) NOT NULL,
  `payment_date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `payment_message` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_status`, `payment_type`, `payment_date_time`, `payment_message`) VALUES
(102, 'pending', 'cash_on_delivery', '2017-12-31 17:20:20', ''),
(98, 'pending', 'cash_on_delivery', '2017-12-30 23:45:17', ''),
(97, 'pending', 'cash_on_delivery', '2017-12-30 23:36:17', ''),
(96, 'pending', 'cash_on_delivery', '2017-12-30 23:17:07', ''),
(103, 'pending', 'cash_on_delivery', '2022-08-10 07:40:37', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(11) NOT NULL,
  `pro_title` varchar(255) NOT NULL,
  `pro_desc` text NOT NULL,
  `pro_cat` tinyint(4) NOT NULL,
  `pro_sub_cat` tinyint(4) NOT NULL,
  `pro_brand` tinyint(4) NOT NULL,
  `pro_price` float NOT NULL,
  `pro_quantity` tinyint(4) NOT NULL,
  `pro_availability` tinyint(4) NOT NULL COMMENT 'status 1=instock, 2=outof stock, 3= up coming',
  `pro_status` tinyint(1) NOT NULL DEFAULT 1 COMMENT 'status=1 enable status=2 disable',
  `pro_image` text DEFAULT NULL,
  `top_product` tinyint(1) DEFAULT 0 COMMENT 'show top value=1 other wise value=0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_product`
--

INSERT INTO `tbl_product` (`pro_id`, `pro_title`, `pro_desc`, `pro_cat`, `pro_sub_cat`, `pro_brand`, `pro_price`, `pro_quantity`, `pro_availability`, `pro_status`, `pro_image`, `top_product`) VALUES
(53, 'Samsung j7', '<p>Samsung j5</p>\r\n', 71, 0, 8, 100, -82, 1, 1, 'uploads/j7.jpeg', 1),
(56, 'Asus Monitor', '<p>Asus Monitor</p>\r\n', 74, 0, 8, 20, -67, 1, 1, 'uploads/asus.jpg', 1),
(57, 'Samsung Laptop', '<p>Samsung Laptop</p>\r\n', 76, 0, 8, 200, 7, 1, 1, 'uploads/Notebook9-PCD.jpg', 1),
(58, 'Nokia G20 4/64GB - Night', '<p>Ukuran layar: 6.52 inches, 720 x 1600 pixels (~269 ppi density) IPS LCD<br>\r\nMemori: RAM 4GB, ROM 64GB, microSDXC slot<br>\r\nSistem operasi: Android 11<br>\r\nCPU: MediaTek Helio G35 (12 nm), Octa-core (4x2.3 GHz Cortex-A53 & 4x1.8 GHz Cortex-A53)<br>\r\nGPU: PowerVR GE8320<br>\r\nKamera Belakang: 48 MP f/1.8 PDAF (wide), 5 MP (ultrawide), 2 MP (macro), 2 MP (depth)<br>\r\nKamera Depan: 8 MP (wide)<br>\r\nSIM: Dual SIM (Nano-SIM, dual stand-by)<br>\r\nBaterai: Li-Po 5050 mAh, non-removable<br>\r\nBerat: 197 gr<br>\r\nGaransi Resmi<br>\r\n<br>\r\nBrand Nokia<br>\r\nWarna Night<br>\r\nJaringan GSM / HSPA / LTE<br>\r\nSistem Operasi Android 11<br>\r\nProsesor MediaTek Helio G35 (12 nm), Octa-core (4x2.3 GHz Cortex-A53 & 4x1.8 GHz Cortex-A53)<br>\r\nGPU PowerVR GE8320<br>\r\nRAM 4 GB<br>\r\nROM 64 GB<br>\r\nUkuran Layar 6.52 inch<br>\r\nTipe Layar IPS LCD<br>\r\nResolusi Layar 720 x 1600 pixels, 20:9 ratio (~269 ppi density)<br>\r\nKamera Belakang<br>\r\n48 MP, f/1.8, (wide), PDAF<br>\r\n5 MP, (ultrawide)<br>\r\n2 MP, (macro)<br>\r\n2 MP, (depth)<br>\r\n<br>\r\nKamera Depan 8 MP, (wide)<br>\r\nFitur Kamera LED flash, HDR, panorama<br>\r\nAudio Loudspeaker & 3.5mm jack<br>\r\nWLAN Wi-Fi 802.11 b/g/n, hotspot<br>\r\nBluetooth 5.0, A2DP, LE<br>\r\nGPS A-GPS, GLONASS, BDS<br>\r\nSensor Fingerprint (side-mounted), accelerometer, gyro, proximity<br>\r\nBaterai 5050 mAh<br>\r\nPengisian Daya 10W<br>\r\nSlot Memori Eksternal MicroSD Slot<br>\r\nSIM Dual Nano SIM<br>\r\nBerat 197 gr<br>\r\nDimensi 164,9 x 76 x 9,2 mm<br>\r\nLainnya<br>\r\nRadio<br>\r\nFM radio<br>\r\nNFC</p>\r\n', 71, 33, 6, 20, 7, 1, 1, 'uploads/8ca8461d-8f54-4767-8059-de0f8a3287e3.jpg', 1),
(59, 'Nokia G10 3/32GB - Dusk', '<p>Ukuran layar: 6.52 inci, 720 x 1600 pixels, 20:9 ratio, IPS LCD<br>\r\nMemori: RAM 3 GB, ROM 32 GB, MicroSDXC Slot<br>\r\nSistem operasi: Android 11<br>\r\nCPU: MediaTek Helio G25 (12 nm), Octa-core (4x2.0 GHz Cortex-A53 & 4x1.5 GHz Cortex-A53)<br>\r\nGPU: PowerVR GE8320<br>\r\nKamera: Triple 13 MP (wide) AF, 2 MP (macro), 2 MP, (depth); Depan 8 MP (wide)<br>\r\nSIM: Dual SIM (Nano-SIM, dual stand-by)<br>\r\nBaterai: Non-removable Li-Po 5050 mAh<br>\r\nBerat: 194 gr<br>\r\nGaransi Resmi<br>\r\n<br>\r\nBrand Nokia<br>\r\nWarna Purple<br>\r\nJaringan GSM / HSPA / LTE<br>\r\nSistem Operasi Android 11<br>\r\nProsesor MediaTek Helio G25 (12 nm), Octa-core (4x2.0 GHz Cortex-A53 & 4x1.5 GHz Cortex-A53)<br>\r\nGPU PowerVR GE8320<br>\r\nRAM 3 GB<br>\r\nROM 32 GB<br>\r\nUkuran Layar 6.52 inch<br>\r\nTipe Layar IPS LCD<br>\r\nResolusi Layar 720 x 1600 pixels, 20:9 ratio (~269 ppi density)<br>\r\nKamera Belakang<br>\r\n13 MP, (wide), AF<br>\r\n2 MP, (macro)<br>\r\n2 MP, (depth)<br>\r\n<br>\r\nKamera Depan 8 MP, (wide)<br>\r\nFitur Kamera LED flash, HDR, panorama<br>\r\nAudio Loudspeaker & 3.5mm jack<br>\r\nWLAN 802.11 b/g/n, hotspot<br>\r\nBluetooth 5.0, A2DP, LE<br>\r\nGPS A-GPS, GLONASS, BDS<br>\r\nSensor Fingerprint (side-mounted), accelerometer, proximity<br>\r\nBaterai 5050 mAh<br>\r\nPengisian Daya Charging 10W<br>\r\nSlot Memori Eksternal MicroSD Slot<br>\r\nSIM Dual Nano SIM<br>\r\nBerat 164.9 x 76 x 9.2 mm<br>\r\nDimensi 194 gr<br>\r\nLainnya<br>\r\nVideo<br>\r\n1080p@30fps<br>\r\n<br>\r\nRadio<br>\r\nFM radio<br>\r\n<br>\r\nUSB<br>\r\nUSB Type-C 2.0, USB On-The-Go</p>\r\n', 71, 33, 6, 50, 1, 1, 1, 'uploads/77cb99ff-423f-4dc4-a78e-e6e749cc3a50.jpg', 1),
(60, 'ACER SWIFT 3 Infinity 4 ', '<p>Acer Swift 3 Infinity 4 SF314-511-54Y9 Silver<br>\r\n<br>\r\nHighlights:<br>\r\n• Trendy, all metal sleek chassis (1.2kg-15.9mm), elevated hinge design.<br>\r\n• Rich & bright color (100% sRGB FHD IPS Panel in ultra-narrow bezels 85,73%).<br>\r\n• Intel 11th Gen, PCIe Gen4 SSD, and alternative thermal modes (Fn+F).<br>\r\n<br>\r\nSwift 3 Infinity 4 (SF314-511)<br>\r\n• Processor : Intel® Core™ i5-1135G7 processor<br>\r\n• OS : Windows 11 Home<br>\r\n• Memory : 16 GB of onboard LPDDR4X Dual Channel memory<br>\r\n• Storage : 512 GB SSD PCIe Gen4, NVMe<br>\r\n• Inch, Res, Ratio, Panel : 14\" IPS, Full HD 1920 x 1080, 100% sRGB, high-brightness (300nits), Acer ComfyView™ LED-backlit TFT LCD<br>\r\n• Graphics : Intel® Iris® Xe Graphics<br>\r\n• Network & Communication : IEEE 802.11 a/b/g/n/ac/ax & Bluetooth 5.0<br>\r\n• Battery 4-cell Lithium Ion (Li-Ion)<br>\r\n<br>\r\n• Interfaces/Ports :<br>\r\nHDMI Yes<br>\r\nNumber of HDMI Outputs 1<br>\r\nNumber of USB 3.2 Gen 1 Type-A Ports 2<br>\r\nNumber of USB 3.2 Gen 2 Type-C Ports 1<br>\r\nTotal Number of USB Ports 3<br>\r\nUSB Type-C Yes<br>\r\nUSB Type-C Detail<br>\r\nUSB Type-C port supporting:<br>\r\nUSB 3.2 Gen 2 (up to 10 Gbps)<br>\r\nDisplayPort over USB-C<br>\r\nThunderbolt 4<br>\r\nUSB charging 5 V; 3 A<br>\r\nDC-in port 19 V; 65 W<br>\r\n<br>\r\n• Features :<br>\r\n- Windows Hello (fingerprint) & Wake on Voice.<br>\r\n- Gen 4 SSD<br>\r\n- Alternative Thermal Modes (Fn+F)</p>\r\n', 72, 26, 6, 10799000, 12, 1, 1, 'uploads/6fc7310e-0ca4-4eb0-b48d-4f2ac3096143.jpg', 1),
(74, 'NEW Apple iPhone 13 128GB 256GB 512GB 128 256 512 GB Garansi 1 Tahun - 128GB, STARLIGHT', '<p>Iphone 13<br>\r\nLayar : 6.1 inch<br>\r\nMemori : 128 GB - 256 GB - 512 GB<br>\r\nWarna : Red - Starlight - Midnight - Blue - Pink<br>\r\n<br>\r\n- Garansi Apple International 1 Tahun<br>\r\n- BNIB (Brand New In Box)<br>\r\n- Di Dalam box: Unit iPhone + USB-C to Lightning Cable<br>\r\n<br>\r\nSIMCARD:<br>\r\n- IBOX ( Nano + eSim )<br>\r\n- INTER ( Single Nano TANPA esim )<br>\r\n- DUAL NANO ( Nano + Nano )</p>\r\n', 71, 29, 8, 400, 99, 1, 1, 'uploads/5941f086-6997-4ca0-8db6-e27ed9a871c2.jpg', 1),
(75, 'Asus ROG Strix G713QE GeForce RTX™ 3050Ti - Ryzen 7 5800 16GB 512ssd - UNIT GREY', '<p>- Color: Shadow black cover and base, shadow black aluminum keyboard frame<br>\r\n- Operating System: Windows 11 Home<br>\r\n- Prosesor:Intel® Core™ i9-12900H<br>\r\n- Processor Family: 12th Generation Intel® Core™ i9 processor<br>\r\n- Memory: 32 GB DDR5<br>\r\n- Internal Storage: 1 TB SSD<br>\r\n- Storage Type: SSD<br>\r\n- Display:16.1\"<br>\r\n- Graphics: NVIDIA GeForce RTX 3070 Ti Laptop GPU<br>\r\n- Ports: 2 Thunderbolt™ 4 with USB4™ Type-C® 40Gbps signaling rate (USB Power Delivery, DisplayPort™ 1.4, HP Sleep and Charge); 1 SuperSpeed USB Type-A 5Gbps signaling rate (HP Sleep and Charge); 2 SuperSpeed USB Type-A 5Gbps signaling rate; 1 HDMI 2.1; 1 RJ-45; 1 AC smart pin; 1 headphone/microphone combo<br>\r\n- Pointing Device: HP Imagepad with multi-touch gesture support<br>\r\n- Audio Features: Audio by Bang & Olufsen; DTS:X® Ultra; Dual speakers; HP Audio Boost<br>\r\n- Webcam: HP Wide Vision 720p HD camera with temporal noise reduction and integrated dual array digital microphones<br>\r\n- Keyboard: Full-size, 4-zone RGB backlit, shadow black keyboard with numeric keypad and 26-Key Rollover Anti-Ghosting Key technology<br>\r\n- Wireless: MediaTek Wi-Fi 6 MT7921 (2x2) and Bluetooth® 5.2 combo (Supporting Gigabit data rate)<br>\r\n- Power Supply Type:280 W Smart AC power adapter<br>\r\n- Dimensions Without Stand (W X D X H): 36.9 x 24.8 x 2.3 cm<br>\r\n- Berat: 2.35 kg<br>\r\n- Backlit keyboard: Yes<br>\r\n<br>\r\nWhat&#39;s in the box:<br>\r\n- Unit Laptop<br>\r\n- Charger / Pengisi Daya<br>\r\n- Kartu Garansi<br>\r\n- Dus Laptop</p>\r\n', 72, 33, 0, 3000000, 45, 1, 1, 'uploads/d121ee77-9fb1-4343-8574-75f3ab28d8d3.jpg', 1),
(76, 'Laptop Lenovo IdeaPad Slim 3i i3-10110U 256GB SSD 4GB WIN10+OHS MURAH - Platinum Grey', '<p>WARNA:<br>\r\nABYSS BLUE - 81WA00PAID<br>\r\nPLATINUM GREY - 81WA00PBID<br>\r\n<br>\r\nIntel Core i3-10110U (2C / 4T, 2.1 / 4.1GHz, 4MB)<br>\r\nIntel UHD Graphics<br>\r\n4GB Soldered DDR4-2666<br>\r\nMax Memory: Up to 12GB (4GB soldered + 8GB SO-DIMM) DDR4-2666<br>\r\nStorag: 256GB SSD M.2 2280 PCIe 3.0x4 NVMe<br>\r\nCard Reader: 4-in-1 Card Reader<br>\r\nOptical: None<br>\r\nHigh Definition (HD) Audio<br>\r\nStereo speakers, 1.5W x2, Dolby Audio<br>\r\nCamera: 720p with Privacy Shutter<br>\r\nMicrophone: 2x, Array<br>\r\nBattery : Integrated 35Wh<br>\r\nPower Adapter: 65W Round Tip Wall-mount<br>\r\nDisplay: 14\" HD (1366x768) TN 220nits Anti-glare<br>\r\nKeyboard: Non-backlit, English<br>\r\n327.1 x 241 x 19.9 mm (12.88 x 9.49 x 0.78 inches)<br>\r\n1.5 kg<br>\r\nPorts:<br>\r\n1x power connector<br>\r\n1x card reader<br>\r\n1x HDMI 1.4b<br>\r\n1x headphone / microphone combo jack (3.5mm)<br>\r\n1x USB 2.0<br>\r\n2x USB 3.2 Gen 1<br>\r\n<br>\r\nWindows 11 Home + Office Home & Student 2021 Original</p>\r\n', 72, 33, 0, 5000000, 45, 1, 1, 'uploads/176151d9-2b5a-48e0-939c-542e4821c06a.jpg', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(11) NOT NULL,
  `cus_id` int(11) NOT NULL,
  `cus_name` varchar(55) NOT NULL,
  `cus_email` varchar(55) NOT NULL,
  `cus_password` varchar(32) NOT NULL,
  `cus_mobile` varchar(14) NOT NULL,
  `cus_address` text NOT NULL,
  `cus_city` varchar(55) NOT NULL,
  `cus_country` varchar(55) NOT NULL,
  `cus_zip` varchar(5) NOT NULL,
  `cus_fax` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `cus_id`, `cus_name`, `cus_email`, `cus_password`, `cus_mobile`, `cus_address`, `cus_city`, `cus_country`, `cus_zip`, `cus_fax`) VALUES
(75, 48, 'Sm shuvo', 'sumonsarker080@gmail.com', '', '1611606484', 'Sylhet City', 'Mymensingh', 'Bangladesh', '2220', ''),
(78, 47, 'Trailer', 'Traileralltimesu@gmail.com', '', '1611606484', 'Sylhet City', 'Mymensingh', 'UK', '2220', ''),
(79, 49, 'Naufal', 'Naufalnur7@gmail.com', '', '0839393911716', 'jl.jaksanaranata timur rt:08/10', 'KABUPATEN BANDUNG', '-- Country --', '40375', ''),
(80, 49, 'Naufal', 'Naufalnur7@gmail.com', '', '0839393911716', 'jl.jaksanaranata timur rt:08/10', 'KABUPATEN BANDUNG', '-- Country --', '40375', ''),
(81, 49, 'Naufal', 'Naufalnur7@gmail.com', '', '0839393911716', 'jl.jaksanaranata timur rt:08/10', 'KABUPATEN BANDUNG', '-- Provinsi --', '40375', ''),
(82, 49, 'Naufal', 'Naufalnur7@gmail.com', '', '0839393911716', 'jl.jaksanaranata timur rt:08/10', 'KABUPATEN BANDUNG', '-- Provinsi --', '40375', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_sub_category`
--

CREATE TABLE `tbl_sub_category` (
  `sub_cat_id` int(11) NOT NULL,
  `sub_category_name` varchar(255) NOT NULL,
  `category_sub_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_sub_category`
--

INSERT INTO `tbl_sub_category` (`sub_cat_id`, `sub_category_name`, `category_sub_id`) VALUES
(29, 'ASUS', 76),
(30, 'Symphony', 71),
(28, 'Women Watches', 73),
(26, 'Hp 22er', 74),
(27, 'Men watch', 73),
(25, 'Bloody', 75),
(33, 'Asus', 75);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role` tinyint(3) NOT NULL,
  `user_status` tinyint(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `user_email`, `user_password`, `user_role`, `user_status`) VALUES
(1, 'csesumonpro', 'admin@gmail.com', '$2y$10$jC5vMlVtrPNSZNZr4cpJ.O4x.pvMMhRMkLV/NuOthbiVlttTHmsTi', 1, 1),
(2, 'abir', 'abir@gmail.com', '$2y$10$jC5vMlVtrPNSZNZr4cpJ.O4x.pvMMhRMkLV/NuOthbiVlttTHmsTi', 0, 1),
(3, 'Author', 'admin@gmail.com', 'admin', 3, 1),
(4, 'Editor', 'editor@gmail.com', '$2y$10$EESLtdn.aLoCOzrpO0lIl.ZzvewPPEV6symLLJ/./xIsSV5wkZbcq', 4, 1),
(15, 'dddddddddddd', 'dddddddddd@gmail.com', '$2y$10$.pEXHG8AENKIfZUVrfDc0O1CRZI4FBjymkeVznJ7apaqir0beALqa', 0, 1),
(13, 'Deloyar J Imran', 'Imran@gmail.com', '$2y$10$RnujkWIfW4DURvAKYlaSfOZp6XMPrIXtP.HGCICoKQbWyTHR3104y', 2, 1),
(14, 'abir', 'ami@gmail.com', '$2y$10$WW/OrYnmOwlFgWEM4zQ22Om3XQFDmyntZegtRNKN9OVcfQ4GXfluC', 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indeks untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`contact_id`);

--
-- Indeks untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`cus_id`);

--
-- Indeks untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indeks untuk tabel `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indeks untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indeks untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`pro_id`);

--
-- Indeks untuk tabel `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indeks untuk tabel `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  ADD PRIMARY KEY (`sub_cat_id`);

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT untuk tabel `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT untuk tabel `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT untuk tabel `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
