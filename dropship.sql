-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Sep 2022 pada 19.05
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.5

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
(6, 'ASUS'),
(5, 'HP'),
(7, 'DELL'),
(8, 'SAMSUNG'),
(9, 'LENOVO'),
(10, 'OPPO'),
(11, 'VIVO'),
(12, 'APPLE'),
(13, 'NOKIA'),
(14, 'ACER');

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
(73, 'Tablet', 1),
(72, 'Laptop', 1),
(71, 'Handphone', 1),
(78, 'Aksesoris', 1),
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
(49, 'Naufal', 'Naufalnur7@gmail.com', 'b3b6d39d514d6be82cb75445fb1f3325', '0839393911716', 'jl.jaksanaranata timur rt:08/10', 'KABUPATEN BANDUNG', 'Bali', '40375'),
(50, 'chandrian tubagus', 'chand@gmail.com', '25d55ad283aa400af464c76d713c07ad', '088971203725', 'PPI G10/13', 'KABUPATEN BANDUNG', 'Jawa Barat', '40375');

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
(97, 48, 76, 99, 107, 'pending', '2017-12-31 17:01:39'),
(101, 49, 80, 103, 107, 'pending', '2022-08-10 07:40:37'),
(102, 49, 84, 104, 1018990, 'pending', '2022-08-19 03:09:06'),
(103, 50, 86, 105, 220300000, 'pending', '2022-08-19 06:39:35'),
(104, 50, 86, 106, 330449000, 'pending', '2022-08-19 06:40:23'),
(105, 50, 86, 107, 330449000, 'pending', '2022-08-19 06:40:25'),
(106, 50, 86, 108, 0, 'pending', '2022-08-19 06:40:27'),
(107, 49, 86, 109, 2550010, 'pending', '2022-08-19 06:41:53'),
(108, 49, 87, 110, 5100010, 'pending', '2022-08-19 06:54:40');

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
(119, 97, 53, 'Samsung j7', 100, 1),
(126, 101, 53, 'Samsung j7', 100, 1),
(127, 102, 56, 'Asus Monitor', 999000, 1),
(128, 103, 60, 'ACER SWIFT 3 Infinity 4 ', 10799000, 20),
(129, 104, 60, 'ACER SWIFT 3 Infinity 4 ', 10799000, 30),
(130, 107, 57, 'Samsung Laptop', 2500000, 1),
(131, 108, 57, 'Samsung Laptop', 2500000, 2);

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
(98, 'pending', 'cash_on_delivery', '2017-12-30 23:45:17', ''),
(97, 'pending', 'cash_on_delivery', '2017-12-30 23:36:17', ''),
(96, 'pending', 'cash_on_delivery', '2017-12-30 23:17:07', ''),
(103, 'pending', 'cash_on_delivery', '2022-08-10 07:40:37', ''),
(104, 'pending', 'cash_on_delivery', '2022-08-19 03:09:06', ''),
(105, 'pending', 'cash_on_delivery', '2022-08-19 06:39:35', ''),
(106, 'pending', 'cash_on_delivery', '2022-08-19 06:40:23', ''),
(107, 'pending', 'cash_on_delivery', '2022-08-19 06:40:25', ''),
(108, 'pending', 'cash_on_delivery', '2022-08-19 06:40:27', ''),
(109, 'pending', 'cash_on_delivery', '2022-08-19 06:41:53', ''),
(110, 'pending', 'cash_on_delivery', '2022-08-19 06:54:40', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_product`
--

CREATE TABLE `tbl_product` (
  `pro_id` int(11) NOT NULL,
  `pro_title` varchar(35) NOT NULL,
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
(53, 'Samsung j7', '<p>Samsung j5</p>\r\n', 71, 29, 8, 2560000, 56, 1, 1, 'uploads/j7.jpeg', 1),
(56, 'Asus Monitor', '<p>Asus Monitor</p>\r\n', 78, 33, 6, 999000, 66, 1, 1, 'uploads/asus.jpg', 1),
(57, 'Samsung Laptop', '<p>Samsung Laptop</p>\r\n', 72, 29, 8, 2500000, 4, 1, 1, 'uploads/Notebook9-PCD.jpg', 1),
(58, 'Nokia G20 4/64GB - Night', '<p>Ukuran layar: 6.52 inches, 720 x 1600 pixels (~269 ppi density) IPS LCD<br>\r\nMemori: RAM 4GB, ROM 64GB, microSDXC slot<br>\r\nSistem operasi: Android 11<br>\r\nCPU: MediaTek Helio G35 (12 nm), Octa-core (4x2.3 GHz Cortex-A53 & 4x1.8 GHz Cortex-A53)<br>\r\nGPU: PowerVR GE8320<br>\r\nKamera Belakang: 48 MP f/1.8 PDAF (wide), 5 MP (ultrawide), 2 MP (macro), 2 MP (depth)<br>\r\nKamera Depan: 8 MP (wide)<br>\r\nSIM: Dual SIM (Nano-SIM, dual stand-by)<br>\r\nBaterai: Li-Po 5050 mAh, non-removable<br>\r\nBerat: 197 gr<br>\r\nGaransi Resmi<br>\r\n<br>\r\nBrand Nokia<br>\r\nWarna Night<br>\r\nJaringan GSM / HSPA / LTE<br>\r\nSistem Operasi Android 11<br>\r\nProsesor MediaTek Helio G35 (12 nm), Octa-core (4x2.3 GHz Cortex-A53 & 4x1.8 GHz Cortex-A53)<br>\r\nGPU PowerVR GE8320<br>\r\nRAM 4 GB<br>\r\nROM 64 GB<br>\r\nUkuran Layar 6.52 inch<br>\r\nTipe Layar IPS LCD<br>\r\nResolusi Layar 720 x 1600 pixels, 20:9 ratio (~269 ppi density)<br>\r\nKamera Belakang<br>\r\n48 MP, f/1.8, (wide), PDAF<br>\r\n5 MP, (ultrawide)<br>\r\n2 MP, (macro)<br>\r\n2 MP, (depth)<br>\r\n<br>\r\nKamera Depan 8 MP, (wide)<br>\r\nFitur Kamera LED flash, HDR, panorama<br>\r\nAudio Loudspeaker & 3.5mm jack<br>\r\nWLAN Wi-Fi 802.11 b/g/n, hotspot<br>\r\nBluetooth 5.0, A2DP, LE<br>\r\nGPS A-GPS, GLONASS, BDS<br>\r\nSensor Fingerprint (side-mounted), accelerometer, gyro, proximity<br>\r\nBaterai 5050 mAh<br>\r\nPengisian Daya 10W<br>\r\nSlot Memori Eksternal MicroSD Slot<br>\r\nSIM Dual Nano SIM<br>\r\nBerat 197 gr<br>\r\nDimensi 164,9 x 76 x 9,2 mm<br>\r\nLainnya<br>\r\nRadio<br>\r\nFM radio<br>\r\nNFC</p>\r\n', 71, 34, 13, 1588000, 45, 1, 1, 'uploads/8ca8461d-8f54-4767-8059-de0f8a3287e3.jpg', 1),
(59, 'Nokia G10 3/32GB - Dusk', '<p>Ukuran layar: 6.52 inci, 720 x 1600 pixels, 20:9 ratio, IPS LCD<br>\r\nMemori: RAM 3 GB, ROM 32 GB, MicroSDXC Slot<br>\r\nSistem operasi: Android 11<br>\r\nCPU: MediaTek Helio G25 (12 nm), Octa-core (4x2.0 GHz Cortex-A53 & 4x1.5 GHz Cortex-A53)<br>\r\nGPU: PowerVR GE8320<br>\r\nKamera: Triple 13 MP (wide) AF, 2 MP (macro), 2 MP, (depth); Depan 8 MP (wide)<br>\r\nSIM: Dual SIM (Nano-SIM, dual stand-by)<br>\r\nBaterai: Non-removable Li-Po 5050 mAh<br>\r\nBerat: 194 gr<br>\r\nGaransi Resmi<br>\r\n<br>\r\nBrand Nokia<br>\r\nWarna Purple<br>\r\nJaringan GSM / HSPA / LTE<br>\r\nSistem Operasi Android 11<br>\r\nProsesor MediaTek Helio G25 (12 nm), Octa-core (4x2.0 GHz Cortex-A53 & 4x1.5 GHz Cortex-A53)<br>\r\nGPU PowerVR GE8320<br>\r\nRAM 3 GB<br>\r\nROM 32 GB<br>\r\nUkuran Layar 6.52 inch<br>\r\nTipe Layar IPS LCD<br>\r\nResolusi Layar 720 x 1600 pixels, 20:9 ratio (~269 ppi density)<br>\r\nKamera Belakang<br>\r\n13 MP, (wide), AF<br>\r\n2 MP, (macro)<br>\r\n2 MP, (depth)<br>\r\n<br>\r\nKamera Depan 8 MP, (wide)<br>\r\nFitur Kamera LED flash, HDR, panorama<br>\r\nAudio Loudspeaker & 3.5mm jack<br>\r\nWLAN 802.11 b/g/n, hotspot<br>\r\nBluetooth 5.0, A2DP, LE<br>\r\nGPS A-GPS, GLONASS, BDS<br>\r\nSensor Fingerprint (side-mounted), accelerometer, proximity<br>\r\nBaterai 5050 mAh<br>\r\nPengisian Daya Charging 10W<br>\r\nSlot Memori Eksternal MicroSD Slot<br>\r\nSIM Dual Nano SIM<br>\r\nBerat 164.9 x 76 x 9.2 mm<br>\r\nDimensi 194 gr<br>\r\nLainnya<br>\r\nVideo<br>\r\n1080p@30fps<br>\r\n<br>\r\nRadio<br>\r\nFM radio<br>\r\n<br>\r\nUSB<br>\r\nUSB Type-C 2.0, USB On-The-Go</p>\r\n', 71, 34, 13, 1399000, 127, 1, 1, 'uploads/77cb99ff-423f-4dc4-a78e-e6e749cc3a50.jpg', 1),
(60, 'ACER SWIFT 3 Infinity 4 ', '<p>Acer Swift 3 Infinity 4 SF314-511-54Y9 Silver<br>\r\n<br>\r\nHighlights:<br>\r\n• Trendy, all metal sleek chassis (1.2kg-15.9mm), elevated hinge design.<br>\r\n• Rich & bright color (100% sRGB FHD IPS Panel in ultra-narrow bezels 85,73%).<br>\r\n• Intel 11th Gen, PCIe Gen4 SSD, and alternative thermal modes (Fn+F).<br>\r\n<br>\r\nSwift 3 Infinity 4 (SF314-511)<br>\r\n• Processor : Intel® Core™ i5-1135G7 processor<br>\r\n• OS : Windows 11 Home<br>\r\n• Memory : 16 GB of onboard LPDDR4X Dual Channel memory<br>\r\n• Storage : 512 GB SSD PCIe Gen4, NVMe<br>\r\n• Inch, Res, Ratio, Panel : 14\" IPS, Full HD 1920 x 1080, 100% sRGB, high-brightness (300nits), Acer ComfyView™ LED-backlit TFT LCD<br>\r\n• Graphics : Intel® Iris® Xe Graphics<br>\r\n• Network & Communication : IEEE 802.11 a/b/g/n/ac/ax & Bluetooth 5.0<br>\r\n• Battery 4-cell Lithium Ion (Li-Ion)<br>\r\n<br>\r\n• Interfaces/Ports :<br>\r\nHDMI Yes<br>\r\nNumber of HDMI Outputs 1<br>\r\nNumber of USB 3.2 Gen 1 Type-A Ports 2<br>\r\nNumber of USB 3.2 Gen 2 Type-C Ports 1<br>\r\nTotal Number of USB Ports 3<br>\r\nUSB Type-C Yes<br>\r\nUSB Type-C Detail<br>\r\nUSB Type-C port supporting:<br>\r\nUSB 3.2 Gen 2 (up to 10 Gbps)<br>\r\nDisplayPort over USB-C<br>\r\nThunderbolt 4<br>\r\nUSB charging 5 V; 3 A<br>\r\nDC-in port 19 V; 65 W<br>\r\n<br>\r\n• Features :<br>\r\n- Windows Hello (fingerprint) & Wake on Voice.<br>\r\n- Gen 4 SSD<br>\r\n- Alternative Thermal Modes (Fn+F)</p>\r\n', 72, 35, 14, 10799000, -30, 1, 1, 'uploads/6fc7310e-0ca4-4eb0-b48d-4f2ac3096143.jpg', 1),
(74, 'IPHONE 13', '<p>Iphone 13<br>\r\nLayar : 6.1 inch<br>\r\nMemori : 128 GB - 256 GB - 512 GB<br>\r\nWarna : Red - Starlight - Midnight - Blue - Pink<br>\r\n<br>\r\n- Garansi Apple International 1 Tahun<br>\r\n- BNIB (Brand New In Box)<br>\r\n- Di Dalam box: Unit iPhone + USB-C to Lightning Cable<br>\r\n<br>\r\nSIMCARD:<br>\r\n- IBOX ( Nano + eSim )<br>\r\n- INTER ( Single Nano TANPA esim )<br>\r\n- DUAL NANO ( Nano + Nano )</p>\r\n', 71, 28, 12, 14499000, 99, 1, 1, 'uploads/5941f086-6997-4ca0-8db6-e27ed9a871c2.jpg', 1),
(78, 'Apple iPad Air 4 2020 10.9 inch 64G', '<p>Apple iPad Air 4 2020 10.9 inch 64GB Wifi Only<br>\r\n<br>\r\n- Space Grey<br>\r\n- Silver<br>\r\n- Rose Gold<br>\r\n- Green<br>\r\n- Sky Blue<br>\r\n<br>\r\nWhat&#39;s in the box :<br>\r\n- iPad Air<br>\r\n- USB?C Charge Cable (1 meter)<br>\r\n- 20W USB?C Power Adapter<br>\r\n<br>\r\nDisplay :<br>\r\nLiquid Retina display<br>\r\n10.9-inch (diagonal) LED?backlit Multi?Touch display with IPS technology<br>\r\n2360-by-1640-pixel resolution at 264 pixels per inch (ppi)<br>\r\nWide color display (P3)<br>\r\nTrue Tone display<br>\r\nFingerprint-resistant oleophobic coating<br>\r\nFully laminated display<br>\r\nAntireflective coating<br>\r\n1.8% reflectivity<br>\r\n500 nits brightness<br>\r\n<br>\r\nChip :<br>\r\nA14 Bionic chip with 64?bit architecture<br>\r\nNeural Engine<br>\r\n<br>\r\nCamera :<br>\r\n12MP Wide camera<br>\r\nƒ/1.8 aperture<br>\r\nFive-element lens<br>\r\nHybrid IR ?lter<br>\r\nBackside illumination sensor<br>\r\nLive Photos with stabilization<br>\r\nAutofocus with Focus Pixels<br>\r\nTap to focus with Focus Pixels<br>\r\nWide color capture for photos and Live Photos<br>\r\nPanorama (up to 63MP)<br>\r\nExposure control<br>\r\nNoise reduction<br>\r\nSmart HDR for photos<br>\r\nAuto image stabilization<br>\r\nBurst mode<br>\r\nTimer mode<br>\r\nPhoto geotagging<br>\r\nImage formats captured: HEIF and JPEG<br>\r\n<br>\r\nVideo Recording :<br>\r\n4K video recording at 24 fps, 30 fps, or 60 fps<br>\r\n1080p HD video recording at 30 fps or 60 fps<br>\r\nSlo?mo video support for 1080p at 120 fps or 240 fps<br>\r\nTime?lapse video with stabilization<br>\r\nCinematic video stabilization (1080p and 720p)<br>\r\nContinuous autofocus video<br>\r\nNoise reduction<br>\r\nTake 8MP still photos while recording 4K video<br>\r\nPlayback zoom<br>\r\nVideo geotagging<br>\r\nVideo formats captured: HEVC and H.264<br>\r\n<br>\r\nMicrophones :<br>\r\nDual microphones for calls, video recording, and audio recording<br>\r\n<br>\r\nSensors :<br>\r\nTouch ID<br>\r\nThree?axis gyro<br>\r\nAccelerometer<br>\r\nBarometer<br>\r\nAmbient light sensor<br>\r\nTouch ID<br>\r\nUnlock iPad<br>\r\nSecure personal data within apps<br>\r\nMake purchases from the iTunes Store, App Store, and Apple Books<br>\r\n<br>\r\nGaransi Internasional 1 Tahun</p>\r\n', 73, 28, 0, 7009000, 127, 1, 1, 'uploads/f9e5d822-1c8a-4bea-b948-4b81ac86bb5d.jpg', 1);

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
(79, 49, 'Naufal', 'Naufalnur7@gmail.com', '', '0839393911716', 'jl.jaksanaranata timur rt:08/10', 'KABUPATEN BANDUNG', '-- Country --', '40375', ''),
(80, 49, 'Naufal', 'Naufalnur7@gmail.com', '', '0839393911716', 'jl.jaksanaranata timur rt:08/10', 'KABUPATEN BANDUNG', '-- Country --', '40375', ''),
(81, 49, 'Naufal', 'Naufalnur7@gmail.com', '', '0839393911716', 'jl.jaksanaranata timur rt:08/10', 'KABUPATEN BANDUNG', '-- Provinsi --', '40375', ''),
(82, 49, 'Naufal', 'Naufalnur7@gmail.com', '', '0839393911716', 'jl.jaksanaranata timur rt:08/10', 'KABUPATEN BANDUNG', '-- Provinsi --', '40375', ''),
(83, 49, 'Naufal', 'Naufalnur7@gmail.com', '', '0839393911716', 'jl.jaksanaranata timur rt:08/10', 'KABUPATEN BANDUNG', '-- Provinsi --', '40375', ''),
(84, 49, 'Naufal', 'Naufalnur7@gmail.com', '', '0839393911716', 'jl.jaksanaranata timur rt:08/10', 'KABUPATEN BANDUNG', 'Jawa Barat', '40375', ''),
(85, 49, 'Naufal', 'Naufalnur7@gmail.com', '', '0839393911716', 'jl.jaksanaranata timur rt:08/10', 'KABUPATEN BANDUNG', 'Jawa Barat', '40375', ''),
(86, 50, 'chandrian tubagus', 'chand@gmail.com', '', '088971203725', 'PPI G10/13', 'KABUPATEN BANDUNG', 'Jawa Barat', '40375', ''),
(87, 49, 'Naufal', 'Naufalnur7@gmail.com', '', '0839393911716', 'jl.jaksanaranata timur rt:08/10', 'KABUPATEN BANDUNG', 'Bali', '40375', '');

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
(29, 'SAMSUNG', 76),
(30, 'LENOVO', 71),
(28, 'APPLE', 73),
(26, 'OPPO', 74),
(27, 'HP', 73),
(25, 'VIVO', 75),
(33, 'ASUS', 75),
(34, 'NOKIA', 0),
(35, 'ACER', 0);

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
  `user_status` tinyint(3) NOT NULL,
  `user_brand` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `user_email`, `user_password`, `user_role`, `user_status`, `user_brand`) VALUES
(17, 'Chandrian Tubagus', 'chandrian@gmail.com', '$2y$10$bxFSxt2UpzVEsKI9Qd5f0eYo0chOhUHqrOSWSt0SIfDS9kRgDO0hS', 1, 1, 0),
(2, 'abir', 'abir@gmail.com', '$2y$10$jC5vMlVtrPNSZNZr4cpJ.O4x.pvMMhRMkLV/NuOthbiVlttTHmsTi', 0, 1, 0),
(3, 'Author', 'admin@gmail.com', 'admin', 3, 1, 0),
(4, 'Editor', 'editor@gmail.com', '$2y$10$EESLtdn.aLoCOzrpO0lIl.ZzvewPPEV6symLLJ/./xIsSV5wkZbcq', 4, 1, 0),
(15, 'dddddddddddd', 'dddddddddd@gmail.com', '$2y$10$.pEXHG8AENKIfZUVrfDc0O1CRZI4FBjymkeVznJ7apaqir0beALqa', 0, 1, 0),
(13, 'Deloyar J Imran', 'Imran@gmail.com', '$2y$10$RnujkWIfW4DURvAKYlaSfOZp6XMPrIXtP.HGCICoKQbWyTHR3104y', 2, 1, 0),
(14, 'abir', 'ami@gmail.com', '$2y$10$WW/OrYnmOwlFgWEM4zQ22Om3XQFDmyntZegtRNKN9OVcfQ4GXfluC', 0, 1, 0),
(16, 'Distributor', 'distributor@gmail.com', '$2y$10$JTk4cvBssTZY4NSBy1BZ6OPsjoubPgeob/GA/SgzTLlbScmFyVi.m', 2, 1, 12),
(18, 'hp', 'hp@gmail.com', '$2y$10$kF2vXU3tHfuzNIju.kW34.ht0opcZuOm54ZLbiT.96DwDXhfnhLwi', 2, 1, 5);

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
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `cus_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT untuk tabel `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT untuk tabel `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT untuk tabel `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT untuk tabel `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `pro_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT untuk tabel `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT untuk tabel `tbl_sub_category`
--
ALTER TABLE `tbl_sub_category`
  MODIFY `sub_cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
