/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100420
 Source Host           : localhost:3306
 Source Schema         : api_divim

 Target Server Type    : MariaDB
 Target Server Version : 100420
 File Encoding         : 65001

 Date: 23/09/2023 09:03:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for agenda
-- ----------------------------
DROP TABLE IF EXISTS `agenda`;
CREATE TABLE `agenda`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `deskripsi` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam_mulai` time(0) NOT NULL,
  `jam_selesai` time(0) NOT NULL,
  `tempat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pakaian` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `peserta` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `pejabat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `penanggungjawab` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url_data_dukung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `why` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_users`(`id_user`) USING BTREE,
  CONSTRAINT `id_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 263 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of agenda
-- ----------------------------
INSERT INTO `agenda` VALUES (41, 1, 'Bimtek Siswas P3DN', 'b', '2022-07-07', '08:00:00', '10:00:00', 'aula kanwil', 'PDH', 'pimti, pejabat struktural, ', '', '', 'null', 'x', NULL, '2022-07-13 03:55:06', '2022-07-13 03:55:06');
INSERT INTO `agenda` VALUES (175, 1, 'teess', 'teess', '1970-01-01', '00:00:00', '00:00:00', 'teess', '', 'teess', '', '', 'null', 'x', 'teess', '2023-03-15 14:46:32', '2023-03-15 14:46:32');
INSERT INTO `agenda` VALUES (176, 1, 'teess', 'teess', '1970-01-01', '00:00:00', '00:00:00', 'teess', '', 'teess', '', '', 'null', 'x', 'teess', '2023-03-15 14:47:20', '2023-03-15 14:47:20');
INSERT INTO `agenda` VALUES (177, 1, 'Kunjungan Tim Inspektorat Jenderal Dalam Rangka Audit Tusi di LPKA Loteng', 'Kunjungan Tim Inspektorat Jenderal Dalam Rangka Audit Tusi di LPKA Loteng', '2023-03-15', '00:00:00', '00:00:00', 'Kunjungan Tim Inspektorat Jenderal Dalam Rangka Audit Tusi di LPKA Loteng', 'pdh iii', 'Kunjungan Tim Inspektorat Jenderal Dalam Rangka Audit Tusi di LPKA Loteng', '', '', 'null', 'x', 'Kunjungan Tim Inspektorat Jenderal Dalam Rangka Audit Tusi di LPKA Loteng', '2023-03-15 14:51:32', '2023-05-12 16:01:25');
INSERT INTO `agenda` VALUES (178, 1, 'do_upload', 'do_upload', '2023-03-15', '13:05:00', '13:05:00', 'do_upload', 'hh', 'do_upload', '', '', 'null', 'x', 'do_upload', '2023-03-15 15:02:55', '2023-03-16 14:21:12');
INSERT INTO `agenda` VALUES (179, 1, 'Bahanz Berita edit 2', 'Bahanz Berita', '2023-03-15', '00:00:00', '00:00:00', 'Bahanz Berita', '', 'Bahanz Berita', '', '', 'null', 'x', 'Bahanz Berita', '2023-03-15 15:04:54', '2023-03-16 14:59:36');
INSERT INTO `agenda` VALUES (182, 1, 'zzzzz', 'swwwewezzz', '2023-03-16', '00:00:00', '00:00:00', 'swwwewe', '', 'swwwewe', '', '', 'null', 'x', 'swwwewe', '2023-03-16 17:16:50', '2023-03-20 08:07:05');
INSERT INTO `agenda` VALUES (183, 1, 'Tes aaa', 'Silaturahmi', '2022-07-07', '11:15:05', '11:15:05', 'Tes tempat', 'PDH - II', 'Kakanwil,Kadivmin', '', '', 'null', 'tesstatus', 'tes why tgl 20', '2023-03-20 08:11:55', '2023-03-21 08:05:03');
INSERT INTO `agenda` VALUES (185, 1, 'rees', 'ree', '2023-03-21', '00:00:00', '00:00:00', 'ree', 'tess', 'ree', '', '', '[\"file\\/daduk\\/ucapanramadhankemenkumhamntb-f44fc99b-3c15-4439-b1c1-c2a59e5edea8.jpg\"]', 'x', 'ree', '2023-03-21 11:23:20', '2023-03-21 18:23:00');
INSERT INTO `agenda` VALUES (186, 1, 'tes agenda', 'Pelantikan Notariss', '2023-03-25', '08:30:00', '10:30:00', 'Aula', 'PDH III', 'Seluruh ASN Kanwil', '', '', '{\"1\":\"file\\/bahan_berita\\/coconut_tree.jpeg\"}', 'x', 'tes why', '2023-03-25 16:21:35', '2023-03-27 10:17:33');
INSERT INTO `agenda` VALUES (188, 1, 'Kegiatan tanggal 27 Maret 2023', 'lancarr', '2023-03-27', '00:00:00', '00:00:00', 'wqeqeqqw', '', 'wqeqqeqew', '', '', '[\"file\\/bahan_berita\\/pengayoman-removebg-preview.png\"]', 'x', 'wqeqeqe', '2023-03-27 10:14:48', '2023-03-27 10:16:53');
INSERT INTO `agenda` VALUES (189, 1, 'afaafa', 'afaafa', '2023-03-23', '00:00:00', '00:00:00', 'afaafa', '', 'afaafa', '', '', '[\"file\\/bahan_berita\\/pengayoman-removebg-preview1.png\"]', 'x', 'afaafa', '2023-03-27 10:18:15', '2023-03-27 10:21:31');
INSERT INTO `agenda` VALUES (190, 1, 'adafa', 'adafa', '2023-04-01', '00:00:00', '00:00:00', 'adafa', '', 'adafa', '', '', '{\"1\":\"file\\/bahan_berita\\/pengayoman-removebg-preview2.png\",\"2\":\"file\\/bahan_berita\\/peresean-img1.png\"}', 'x', 'adafa', '2023-03-27 10:22:28', '2023-05-10 20:03:50');
INSERT INTO `agenda` VALUES (191, 1, 'tes 31 maret', 'tes 31 maret', '2023-03-01', '00:00:00', '00:00:00', 'tes 31 maret', ' ', 'tes 31 maret', '', '', '[\"file\\/bahan_berita\\/WhatsApp_Image_2023-03-30_at_14.33.20.jpeg\",\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_cerah1.jpg\"]', 'x', 'tes 31 maret', '2023-03-31 10:54:30', '2023-03-31 10:56:06');
INSERT INTO `agenda` VALUES (193, 1, 'ujicobas', 'ujicobas', '1970-01-01', '00:00:00', '00:00:00', 'ujicobas', ' ', 'ujicobas', '', '', '[\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.07.41.jpeg\",\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.07.png\",\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.06.09.jpeg\",\"file\\/bahan_berita\\/peresean-img.png\"]', 'x', 'ujicobas', '2023-05-10 17:57:10', '2023-05-10 19:53:33');
INSERT INTO `agenda` VALUES (194, 1, 'ujicobas', 'ujicobass2', '1970-01-01', '00:00:00', '00:00:00', 'ujicobas', ' ', 'ujicobass2', '', '', '{\"0\":\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_cerah1.jpg\",\"1\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.06.091.jpeg\",\"3\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.071.png\",\"4\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.072.png\"}', 'x', 'ujicobass2', '2023-05-10 17:59:33', '2023-05-10 19:58:08');
INSERT INTO `agenda` VALUES (195, 1, 'Ujicobaz', 'Ujicobaz', '1970-01-01', '00:00:00', '00:00:00', 'Ujicobaz', ' ', 'Ujicobaz', '', '', '{\"1\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.073.png\",\"2\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.07.411.jpeg\",\"3\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.06.092.jpeg\",\"4\":\"file\\/bahan_berita\\/344146552_236324428991049_3570631344557291404_n.jpg\"}', 'x', 'Ujicobaz', '2023-05-10 20:05:01', '2023-05-10 20:05:27');
INSERT INTO `agenda` VALUES (196, 1, 'ujicobax', 'ujicobax', '1970-01-01', '00:00:00', '00:00:00', 'ujicobax', ' ', 'ujicobax', '', '', '{\"1\":\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN.jpeg\",\"2\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.074.png\"}', 'x', 'ujicobax', '2023-05-10 20:10:36', '2023-05-10 20:13:46');
INSERT INTO `agenda` VALUES (199, 1, 'Pembinaan Rohani Warga Binaan di Lapas Mataram', 'Romi Yudianto dalam sambutan meminta agar para pegawai meningkatkan displin dan terus meningkatkan kualitas pelayanan publik.', '2023-05-10', '00:00:00', '00:00:00', 'Ruang Legal Drafter Kanwil Kemenkumham NTB', ' ', 'Kepala Kantor Wilayah Kemenkumham NTB Romi Yudianto mengunjungi Kantor Imigrasi Kelas I TPI Mataram, Senin (13/2).', '', '', '{\"0\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.075.png\",\"2\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.07.412.jpeg\",\"3\":\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_cerah1.jpg\"}', 'x', 'Romi Yudianto berkunjung ke Kantor Imigrasi Kelas I TPI Mataram dalam rangka monitoring dan evaluasi.', '2023-05-10 20:23:21', '2023-05-10 20:24:01');
INSERT INTO `agenda` VALUES (201, 1, 'Pengawasan Pelaksanaan Bantuan Hukum Tingkat Daerah di Pulau Sumbawa / Monitoring dan Evaluasi Pelaksanaan Bantuan Hukum di Pulau Sumbawa', 'Guna Mencapai Indeks Kepuasan Layanan Bantuan Hukum yang Baik, Panwasda Laksanakan Monev ntb.kemenkumham.go.id – Tim Monitoring dan Evaluasi Bantuan Hukum Kanwil Kemenkumham NTB melaksanakan pengawasan pelaksanaan bantuan hukum tingkat daerah di Pulau Sumbawa sejak Selasa (9/05) hingga Kamis (11/05). Pada kegiatan ini, Tim Monev Bankum mengunjungi kantor LKBH Universitas Samawa, Pos Bantuan Hukum Dompu, LBH Ksatria dan Posbakumadin Bima. Dalam kunjungan ini, Puri Adriatik Chasanova selaku Kepala Bidang Hukum, menyampaikan pelaksanaan pemberian bantuan hukum kepada orang atau kelompok orang tidak mampu harus dilaksanakan oleh OBH dengan Profesional, Akuntabel, Sinergi, Transparan, dan Inovatif (PASTI). Puri juga mengingatkan terkait bantuan hukum non litigasi khususnya Penyuluhan Hukum agar dapat diberikan kepada masyarakat adat yang ada di Pulau Sumbawa. Di samping kunjungan pada kantor OBH, Tim Monev juga melakukan survei langsung kepada penerima layanan bantuan hukum di Lapas Kelas IIB Dompu, Rumah Tahanan Kelas IIB Bima dan Lapas Kelas IIA Sumbawa Besar. Hasil monitoring dan evaluasi terhadap kinerja Pemberi Bantuan Hukum dengan menggunakan metode survei layanan bantuan hukum diharapkan Indeks Kepuasan Layanan Bantuan Hukum mendapatkan nilai persepsi baik. ***', '2023-05-09', '00:00:00', '00:00:00', 'LKBH Universitas Samawa, Pos Bantuan Hukum Dompu, LBH Ksatria dan Posbakumadin Bima, Lapas Kelas IIB Dompu, Rumah Tahanan Kelas IIB Bima dan Lapas Kelas IIA Sumbawa Besar.', ' ', 'Tim Monitoring dan Evaluasi Panwasda Bantuan Hukum yang dipimpin oleh Kepala Bidang Hukum, Puri Adriatik Chasanova.', '', '', '[\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.077.png\",\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.07.413.jpeg\",\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_19.06.093.jpeg\"]', 'x', 'Dalam rangka pemenuhan target kinerja Divisi Pelayanan Hukum dan HAM yakni Pelaksanaan Monitoring dan Evaluasi Pemberi Bantuan Hukum melalui Survey Layanan Bantuan Hukum terhadap Penerima Bantuan Hukum.', '2023-05-11 11:57:04', '2023-05-11 11:57:04');
INSERT INTO `agenda` VALUES (202, 1, 'UJICOBA WHAT', 'UJICOBA How', '2023-05-15', '00:00:00', '00:00:00', 'UJICOBA Where', ' ', 'UJICOBA Who', '', '', '[\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_(1)3.jpeg\",\"file\\/bahan_berita\\/WhatsApp_Image_2023-05-05_at_22.42.35.jpeg\"]', 'x', 'UJICOBA Why', '2023-05-15 13:10:19', '2023-05-15 13:10:50');
INSERT INTO `agenda` VALUES (224, 1, 'Silaturahmi ke Walikota', 'Silaturahmi', '2022-08-11', '08:30:00', '12:00:00', 'Kantor Walikota Mataram', 'PDU - II', 'Kakanwil,Kadivmin', 'kadiv yankum dsd', 'subbid AHU', '[\"file\\/daduk\\/Capture1.PNG\"]', 'setuju', NULL, '2023-05-30 16:39:04', '2023-05-31 08:44:32');
INSERT INTO `agenda` VALUES (238, 0, 'fmxdcfvgjbhkj', 'sdfyguhijok', '2023-06-08', '08:30:00', '12:00:00', 'asdfghj', 'xcvbnm', 'sdtfyguhjk', ' vbn', 'sxdcfghjk', 'null', 'belum', NULL, '2023-06-07 15:15:00', '2023-06-07 15:15:00');
INSERT INTO `agenda` VALUES (242, 0, 'Olahraga Bersama', 'Senam pagi', '2023-06-09', '08:00:00', '09:00:00', 'Lapangan', 'Olahraga', 'Seluruh ASN', 'Pejabat Administrasi', 'Bagian Umum', 'null', 'belum', NULL, '2023-06-09 08:53:00', '2023-06-09 08:53:00');
INSERT INTO `agenda` VALUES (243, 1, 'tes 12 juni berita', 'tes 12 juni berita', '2023-06-12', '00:00:00', '00:00:00', 'tes 12 juni berita', 'x', 'tes 12 juni berita', '', '', '\"[\\\"file\\\\\\/bahan_berita\\\\\\/KANWIL_TAMPAK_DEPAN_cerah2.jpg\\\",\\\"file\\\\\\/bahan_berita\\\\\\/KANWIL_TAMPAK_DEPAN_(1)2.jpeg\\\"]\"', 'x', 'tes 12 juni berita', '2023-06-12 11:50:34', '2023-06-12 11:50:55');
INSERT INTO `agenda` VALUES (246, 1, 'BERITA SENIN 12 Juni 2023', 'BERITA SENIN 12 Juni 2023', '2023-06-12', '00:00:00', '00:00:00', 'BERITA SENIN 12 Juni 2023', 'x', 'BERITA SENIN 12 Juni 2023', '', '', '\"[\\\"file\\\\\\/bahan_berita\\\\\\/KANWIL_TAMPAK_DEPAN_cerah7.jpg\\\",\\\"file\\\\\\/bahan_berita\\\\\\/coconut_tree8.jpeg\\\"]\"', 'x', 'BERITA SENIN 12 Juni 2023', '2023-06-12 16:09:31', '2023-06-12 16:09:46');
INSERT INTO `agenda` VALUES (248, 1, 'NEWS BB 12 JUNI 2023s', 'NEWS BB 12 JUNI 2023', '2023-06-12', '00:00:00', '00:00:00', 'NEWS BB 12 JUNI 2023', 'x', 'NEWS BB 12 JUNI 2023', '', '', '[\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_cerah9.jpg\",\"file\\/bahan_berita\\/Picture1exit_bpk.png\",\"file\\/bahan_berita\\/coconut_tree12.jpeg\"]', 'x', 'NEWS BB 12 JUNI 2023', '2023-06-12 16:20:19', '2023-06-13 05:49:07');
INSERT INTO `agenda` VALUES (249, 1, 'sda', 'dasda', '2023-06-15', '00:00:00', '00:00:00', 'dsa', 'x', 'sdad', '', '', '[\"file\\/bahan_berita\\/Picture1z.png\"]', 'x', 'asdas', '2023-06-15 07:53:36', '2023-06-15 07:53:36');
INSERT INTO `agenda` VALUES (250, 1, 'dsd', 'adda', '2023-06-15', '00:00:00', '00:00:00', 'das', 'x', 'dsasd', '', '', '[\"file\\/bahan_berita\\/Presentation06_mei.pptx\"]', 'x', 'sdad', '2023-06-15 07:56:48', '2023-06-15 07:56:48');
INSERT INTO `agenda` VALUES (251, 1, 'asa', 'sad', '2023-06-05', '00:00:00', '00:00:00', 'asa', 'x', 'sadad', '', '', '[\"file\\/bahan_berita\\/Picture1exit_bpk1.png\"]', 'x', 'sadsa', '2023-06-15 08:06:26', '2023-06-15 08:06:26');
INSERT INTO `agenda` VALUES (252, 1, 'cvvcvc', 'cvcv', '2023-06-15', '00:00:00', '00:00:00', 'ccvcv', 'x', 'ccv', '', '', '[\"file\\/bahan_berita\\/Picture1exit_bpk2.png\"]', 'x', 'cvc', '2023-06-15 08:07:26', '2023-06-15 08:07:26');
INSERT INTO `agenda` VALUES (253, 1, 'jhj', 'hjh', '2023-06-16', '00:00:00', '00:00:00', 'hjh', 'x', 'hhjh', '', '', '[\"file\\/bahan_berita\\/Picture1exit_bpk3.png\"]', 'x', 'jh', '2023-06-15 08:08:33', '2023-06-15 08:08:33');
INSERT INTO `agenda` VALUES (254, 1, 'gg', 'gg', '2023-06-16', '00:00:00', '00:00:00', 'gg', 'x', 'gg', '', '', '[\"file\\/bahan_berita\\/Picture1exit_bpk6.png\"]', 'x', 'gg', '2023-06-15 11:13:35', '2023-06-15 11:13:35');
INSERT INTO `agenda` VALUES (256, 1, 'jjj', 'jjj', '2023-06-16', '00:00:00', '00:00:00', 'jjj', 'x', 'jjj', '', '', '[\"file\\/bahan_berita\\/Picture1exit_bpk9.png\",\"file\\/bahan_berita\\/pipas_jumat5.jpg\"]', 'x', 'jjj', '2023-06-15 14:50:12', '2023-06-15 14:50:12');
INSERT INTO `agenda` VALUES (257, 1, 'fff', 'fffffff', '2023-06-16', '00:00:00', '00:00:00', 'fff', 'x', 'ffff', '', '', '[\"file\\/bahan_berita\\/Picture1exit_bpk10.png\"]', 'x', 'ffff', '2023-06-15 15:43:57', '2023-06-15 15:43:57');
INSERT INTO `agenda` VALUES (258, 0, 'iissss', 'iissss', '2023-06-15', '08:55:00', '11:55:00', 'iissss', 'iissss', 'iissss', 'iissss', 'iissss', '[\"file\\/daduk\\/laporan_katamaran_(1).pdf\",\"file\\/daduk\\/Undangan_Pembukaan_FMD_Petugas_Pemasyarakatan.pdf\"]', 'sudah', NULL, '2023-06-15 15:47:51', '2023-06-15 15:51:58');
INSERT INTO `agenda` VALUES (259, 1, 'tes update', 'tes update', '2023-06-20', '09:55:00', '11:55:00', 'tes update', 'tes', 'tes update', 'tes', 'tes', '[\"file\\/daduk\\/_Laporan_Evaluasi_Tingkat_Kematangan_Pengelolaan_Perangkat_TI_docx_(1).pdf\",\"file\\/bahan_berita\\/pipas_jumat6.jpg\"]', 'sudah', 'tes update', '2023-06-20 15:36:54', '2023-06-22 18:12:39');
INSERT INTO `agenda` VALUES (260, 1, 'uji 22 Juni 2023', 'uji 22 Juni 2023', '2023-06-22', '00:00:00', '00:00:00', 'uji 22 Juni 2023', 'x', 'uji 22 Juni 2023', '', '', '{\"1\":\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_cerah13.jpg\",\"2\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-06-21_at_10.41.141.jpeg\",\"3\":\"file\\/bahan_berita\\/WhatsApp_Image_2023-06-20_at_16.41.36.jpeg\"}', 'x', 'uji 22 Juni 2023', '2023-06-22 17:54:28', '2023-06-25 05:54:58');
INSERT INTO `agenda` VALUES (261, 1, 'rrrrr', 'rrrrr', '2023-06-22', '00:00:00', '00:00:00', 'rrrrr', 'x', 'rrrrr', '', '', '[\"file\\/bahan_berita\\/pipas_jumat19.jpg\"]', 'x', 'rrrrr', '2023-06-22 18:21:35', '2023-06-27 15:23:22');
INSERT INTO `agenda` VALUES (262, 1, 'update x', 'update xs', '2023-06-22', '00:00:00', '00:00:00', 'update xs', 'x', 'update x', '', '', '[\"file\\/bahan_berita\\/pipas_jumat9.jpg\"]', 'x', 'update x', '2023-06-22 19:26:14', '2023-07-03 11:32:10');

-- ----------------------------
-- Table structure for bahan_berita
-- ----------------------------
DROP TABLE IF EXISTS `bahan_berita`;
CREATE TABLE `bahan_berita`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `berita_what` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `berita_how` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `berita_where` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `berita_when` date NOT NULL,
  `berita_who` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `penanggungjawab` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `url_data_dukung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `berita_why` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_users`(`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bahan_berita
-- ----------------------------
INSERT INTO `bahan_berita` VALUES (1, 1, 'asdfgh', 'asdfgh', 'asdfg', '0000-00-00', 'asdfg', 'asdfg', 'asdfg', 'asdfg', 'asdfg', '2023-06-05 09:29:39', '2023-06-05 09:29:39');
INSERT INTO `bahan_berita` VALUES (3, 0, 'qwerty', 'qwerty', 'qwerty', '2023-06-05', 'qwerty', '', '', '', 'qwerty', '2023-06-05 15:19:43', '2023-06-05 15:19:43');
INSERT INTO `bahan_berita` VALUES (4, 0, 'asdsdfd', 'qwerty', 'asdf', '1970-01-01', 'qwerty', '', 'null', '', 'qwerty', '2023-06-05 15:32:52', '2023-06-06 14:11:25');
INSERT INTO `bahan_berita` VALUES (5, 4, 'asdfgh', 'qwerty', 'qwerty', '2023-06-04', 'qwerty', '', '{\"1\":\"file\\/bahan_berita\\/foto_26.png\"}', '', 'qwerty', '2023-06-05 15:51:55', '2023-06-07 10:47:36');
INSERT INTO `bahan_berita` VALUES (6, 4, 'asdfgh', 'qwerty', 'qwerty', '2023-06-04', 'qwerty', '', 'null', 'x', 'qwerty', '2023-06-05 15:53:24', '2023-06-07 10:39:36');
INSERT INTO `bahan_berita` VALUES (7, 4, 'asdfg', 'asdfg', 'sadfgg', '2023-06-04', 'adsfdg', '', '{\"1\":\"file\\/bahan_berita\\/foto_115.png\"}', 'x', 'zxcvb', '2023-06-05 15:53:36', '2023-06-07 10:32:55');
INSERT INTO `bahan_berita` VALUES (8, 4, 'zxcvbn', 'zcxzvcxb', 'zxcvb', '2023-06-05', 'zxcvb', '', '{\"1\":\"file\\/bahan_berita\\/foto_25.png\",\"2\":\"file\\/bahan_berita\\/foto_116.png\"}', 'x', 'zxcvb', '2023-06-05 15:54:15', '2023-06-07 08:56:55');
INSERT INTO `bahan_berita` VALUES (9, 4, 'coba edit tgl 6', 'coba tambah tgl 1', 'coba edit tgl 6', '2023-06-08', 'coba tambah tgl 1', '', '[\"file\\/bahan_berita\\/foto_117.png\"]', 'x', 'coba tambah tgl 1', '2023-06-06 14:12:51', '2023-06-06 14:38:45');
INSERT INTO `bahan_berita` VALUES (10, 4, 'sddasv', 'asdfvbgvdvsdsdad', 'dsjdvd', '2023-06-06', 'sadfvsda', '', '[\"file\\/bahan_berita\\/foto_118.png\",\"file\\/bahan_berita\\/Contoh_laporannnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn.pdf\"]', 'x', 'sadfvsd', '2023-06-06 14:39:12', '2023-06-07 15:58:13');
INSERT INTO `bahan_berita` VALUES (11, 4, 's', 's', 's', '2023-06-02', 's', '', 'null', 'x', 's', '2023-06-06 15:05:03', '2023-06-06 15:05:03');
INSERT INTO `bahan_berita` VALUES (14, 4, 'Senam pagi', 'Seluruh ASN Kanwil Kemenkumham NTB mengikuti olahraga bersama senam pagi dalam rangka mewujudkan Kumham Sehat Kumham Produktif', 'Lapangan Kanwil Kemenkumham NTB', '2023-06-09', 'Seluruh pegawai Kanwil Kemenkumham NTB', '', 'null', 'x', 'Dalam rangka menwujudkan Kumham Sehat Kumham Produktif', '2023-06-09 15:57:08', '2023-06-09 15:57:08');
INSERT INTO `bahan_berita` VALUES (15, 0, 'asdsad', 'dasdad', 'dadad', '2023-06-05', 'dadad', '', '[\"file\\/bahan_berita\\/foto_120.png\",\"file\\/bahan_berita\\/foto_29.png\"]', 'x', 'dasdad', '2023-06-09 16:14:53', '2023-06-09 16:14:53');
INSERT INTO `bahan_berita` VALUES (16, 0, 'asdfg', 'sadfg', 'asdfg', '2023-06-12', 'sadfg', '', '[\"file\\/bahan_berita\\/foto_121.png\",\"file\\/bahan_berita\\/foto_210.png\"]', 'x', 'asdf', '2023-06-12 07:45:57', '2023-06-12 07:47:12');
INSERT INTO `bahan_berita` VALUES (17, 1, 'tes 12 juni gaes', 'tes 12 juni gaes', 'tes 12 juni gaes', '2023-06-12', 'tes 12 juni gaes', '', '[\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_cerah2.jpg\",\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_(1)4.jpeg\"]', 'x', 'tes 12 juni gaes', '2023-06-12 08:49:01', '2023-06-12 08:49:33');
INSERT INTO `bahan_berita` VALUES (18, 1, 'tes 12 juni BA', 'tes 12 juni BA', 'tes 12 juni BA', '2023-06-12', 'tes 12 juni BA', '', '[\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_(1)5.jpeg\",\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_cerah3.jpg\",\"file\\/bahan_berita\\/pipas_jumat.jpg\",\"file\\/bahan_berita\\/Picture1exit_bpk.png\"]', 'x', 'tes 12 juni BA', '2023-06-12 14:13:33', '2023-06-12 16:02:24');
INSERT INTO `bahan_berita` VALUES (19, 1, 'TBA 13 JUN 2023', 'TBA 13 JUN 2023', 'TBA 13 JUN 2023', '2023-06-13', 'TBA 13 JUN 2023', '', '[\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_cerah4.jpg\"]', 'x', 'TBA 13 JUN 2023', '2023-06-13 09:06:30', '2023-06-13 09:06:30');
INSERT INTO `bahan_berita` VALUES (20, 0, 'tes 15 juni 2023', 'tes 15 juni 2023', 'tes 15 juni 2023', '2023-06-15', 'tes 15 juni 2023', '', '[\"file\\/bahan_berita\\/Picture1exit_bpk1.png\",\"file\\/bahan_berita\\/pipas_jumat1.jpg\"]', 'x', 'tes 15 juni 2023', '2023-06-15 07:40:15', '2023-06-15 07:40:15');
INSERT INTO `bahan_berita` VALUES (21, 0, 'jjjj', 'jjjj', 'jjjj', '2023-06-16', 'jjjj', '', '[\"file\\/bahan_berita\\/coconut_tree1.jpeg\",\"file\\/bahan_berita\\/KANWIL_TAMPAK_DEPAN_cerah6.jpg\"]', 'x', 'jjjj', '2023-06-15 15:49:05', '2023-06-15 15:49:05');

-- ----------------------------
-- Table structure for data_itk
-- ----------------------------
DROP TABLE IF EXISTS `data_itk`;
CREATE TABLE `data_itk`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `nama` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `negara` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `jenis_kelamin` enum('pria','wanita') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `no_paspor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `penjamin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` enum('belum_diproses','perbaikan','sedang_diproses','draft_sedang_dibuat','menunggu_koreksi','selesai') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `url_data_dukung` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `created_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `id_zona` int(10) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `id_users`(`id_user`) USING BTREE,
  INDEX `id_zona`(`id_zona`) USING BTREE,
  CONSTRAINT `data_itk_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `zona` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 186 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of data_itk
-- ----------------------------
INSERT INTO `data_itk` VALUES (173, 1, 'Tes WNA Pemkot MtrS EDIT', 'Rusia', 'pria', '12WSX3RF2EDIT', 'Lombok', 'pt angin ribut', 'sedang_diproses', '[\"file\\/data_itk\\/kanwildepanbaru3.png\",\"file\\/data_itk\\/kanwildepanbaru2.png\"]', '2023-09-14 07:38:49', '2023-09-23 06:23:50', 8);
INSERT INTO `data_itk` VALUES (176, 0, 'Tes WNA Pemkot Mtrz', 'Rusia', 'pria', '1Q2W3ES', 'Lombok', 'pt angin ribut', 'sedang_diproses', '[\"file\\/data_itk\\/kanwildepanbaru3.png\",\"file\\/data_itk\\/kanwildepanbaru2.png\"]', '2023-09-14 07:38:49', '2023-09-14 07:38:49', 7);
INSERT INTO `data_itk` VALUES (177, 0, 'bima', 'belanda', 'pria', 'EQWFSAS', 'qas', 'sadsv', 'selesai', '[\"file\\/data_itk\\/kanwildepanbaru21.png\"]', '2023-09-21 09:03:06', '2023-09-21 09:03:06', 10);
INSERT INTO `data_itk` VALUES (178, 421, 'Mataram 2 edit', 'Macedonia', 'wanita', '8675465EWRFS', 'qdscedit', 'penjamin edit', 'selesai', '[\"file\\/data_itk\\/WhatsApp_Image_2023-02-08_at_14_46_07.jpeg\",\"file\\/data_itk\\/fractal-1740145_960_720.jpg\"]', '2023-09-21 09:31:19', '2023-09-23 06:25:33', 8);
INSERT INTO `data_itk` VALUES (179, 0, 'Adrian Mutu', 'Rumania', 'pria', '0O8UHY', 'Raba', 'Raba', 'selesai', '[\"file\\/data_itk\\/file.png\"]', '2023-09-21 09:41:27', '2023-09-21 09:41:27', 22);
INSERT INTO `data_itk` VALUES (180, 1, 'Neymar Edit', 'Brazil', 'pria', '12WSX3RF', 'Sumbawa Barat', 'PTSB', 'belum_diproses', '[\"file\\/data_itk\\/gold_texture.jpg\"]', '2023-09-21 11:50:18', '2023-09-21 11:50:35', 13);
INSERT INTO `data_itk` VALUES (181, 1, 'Neymar', 'Brazil', 'pria', '1EWREGBDeditt', 'qdsv', 'qewdfsv', 'sedang_diproses', '[\"file\\/data_itk\\/ERROR_(1).png\",\"file\\/data_itk\\/WhatsApp_Image_2023-09-18_at_09_02_48.jpeg\"]', '2023-09-21 15:29:44', '2023-09-22 16:52:48', 14);
INSERT INTO `data_itk` VALUES (182, 0, 'Hojlund', 'Belanda', 'pria', '2EFRTEG', 'ewregtgrf', 'qedfs', 'selesai', '[\"file\\/data_itk\\/file1.png\",\"file\\/data_itk\\/kanwildepanbaru22.png\"]', '2023-09-21 15:35:22', '2023-09-21 15:35:22', 17);
INSERT INTO `data_itk` VALUES (183, 1, 'Renata Edit', 'Rusia', 'wanita', 'EWRFEGDCRTEkedit', 'qwdfsvd', 'qewfs', 'selesai', '[\"file\\/data_itk\\/ERROR_(1)1.png\"]', '2023-09-21 15:36:27', '2023-09-23 09:00:51', 14);
INSERT INTO `data_itk` VALUES (184, 0, 'sbw', 'zimbabwe', 'pria', 'QWEWRFERWDC', 'sumbawa taliwang', 'eqw', 'belum_diproses', '[\"file\\/data_itk\\/WhatsApp_Image_2023-09-18_at_09_02_481.jpeg\"]', '2023-09-21 16:23:28', '2023-09-21 16:23:28', 14);
INSERT INTO `data_itk` VALUES (185, 421, 'Tes SW', 'Switzerland', 'wanita', 'TAMBAHPASPOR', 'Mataram', 'Bang ZUL', 'selesai', '[\"file\\/data_itk\\/WhatsApp_Image_2023-09-18_at_09_02_482.jpeg\"]', '2023-09-23 06:28:47', '2023-09-23 06:28:47', 8);

-- ----------------------------
-- Table structure for notifikasi
-- ----------------------------
DROP TABLE IF EXISTS `notifikasi`;
CREATE TABLE `notifikasi`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pesan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `id_user_pengirim` int(11) NOT NULL,
  `id_user_penerima` int(11) NOT NULL,
  `id_for_link` int(11) NOT NULL,
  `created_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `foreign_key_notifikasi_id_user_pengirim`(`id_user_pengirim`) USING BTREE,
  INDEX `foreign_key_notifikasi_id_user_penerima`(`id_user_penerima`) USING BTREE,
  CONSTRAINT `foreign_key_notifikasi_id_user_penerima` FOREIGN KEY (`id_user_penerima`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `foreign_key_notifikasi_id_user_pengirim` FOREIGN KEY (`id_user_pengirim`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `nama` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `whatsapp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `role` enum('superadmin','kakanwil','kanwil','pimti','satker','pemda','protokol') CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `id_zona` int(10) NULL DEFAULT NULL,
  `url_paraf` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `url_ttd` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_login` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `username_2`(`username`) USING BTREE,
  INDEX `username`(`username`) USING BTREE,
  INDEX `id_zona`(`id_zona`) USING BTREE,
  CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_zona`) REFERENCES `zona` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 423 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'superadmin', 'saS3eimg8Mg1M', 'Superadmin', '082144784053', 'superadmin', 1, '', '', '2023-09-23 06:29:53', '2021-10-14 12:48:52', '2021-10-14 12:48:52');
INSERT INTO `users` VALUES (2, 'kakanwil', 'saS3eimg8Mg1M', 'Romi Yudianto ', '08123456789', 'kakanwil', 1, '', '', '2023-08-18 15:46:51', '2021-10-15 14:27:50', '2023-08-31 11:23:29');
INSERT INTO `users` VALUES (421, 'kanwil_divim', 'saNA3l90Qljww', 'Kanwil Divim', '082144784053', 'pimti', 1, '', '', '2023-09-23 06:24:45', '2021-10-14 12:48:52', '2023-08-31 11:22:23');
INSERT INTO `users` VALUES (422, 'user2', 'saS3eimg8Mg1M', 'tes pengguna baru', 'x', 'kakanwil', NULL, 'x', 'x', '2023-09-21 11:48:36', '2023-09-21 11:48:36', '2023-09-21 11:48:36');

-- ----------------------------
-- Table structure for users_authentication
-- ----------------------------
DROP TABLE IF EXISTS `users_authentication`;
CREATE TABLE `users_authentication`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `users_id` int(11) NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expired_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `created_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime(0) NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 380 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users_authentication
-- ----------------------------
INSERT INTO `users_authentication` VALUES (1, 1, 'coPkIpgHNUppQ', '2023-07-07 23:50:06', '2022-05-17 08:50:06', '2022-05-17 08:50:06');
INSERT INTO `users_authentication` VALUES (2, 1, 'a', '2024-11-12 21:29:29', '2022-05-17 09:24:39', '2023-09-23 06:29:29');
INSERT INTO `users_authentication` VALUES (3, 1, 'colple6IJ0X9s', '2023-08-19 00:00:31', '2022-06-28 08:22:41', '2022-06-28 09:00:31');
INSERT INTO `users_authentication` VALUES (4, 1, 'coRBU3HmYkS6c', '2023-08-19 00:04:02', '2022-06-28 09:00:44', '2022-06-28 09:04:02');
INSERT INTO `users_authentication` VALUES (5, 1, 'cooWRcG4vi53I', '2023-08-19 00:04:14', '2022-06-28 09:04:14', '2022-06-28 09:04:14');
INSERT INTO `users_authentication` VALUES (6, 1, 'co5dJkxzqoL2I', '2023-08-19 00:37:56', '2022-06-28 09:37:56', '2022-06-28 09:37:56');
INSERT INTO `users_authentication` VALUES (7, 1, 'cofFSXyvgi5mI', '2023-08-19 01:00:40', '2022-06-28 09:58:35', '2022-06-28 10:00:40');
INSERT INTO `users_authentication` VALUES (8, 1, 'coCh242yfqjfA', '2023-08-20 00:49:59', '2022-06-29 08:53:04', '2022-06-29 09:49:59');
INSERT INTO `users_authentication` VALUES (9, 1, 'codzOjAyy/hko', '2023-08-24 23:05:10', '2022-07-04 07:55:47', '2022-07-04 08:05:10');
INSERT INTO `users_authentication` VALUES (10, 1, 'coe40zQAGnTLw', '2023-08-25 00:49:40', '2022-07-04 08:14:58', '2022-07-04 09:49:40');
INSERT INTO `users_authentication` VALUES (11, 1, 'coQayDASOweX2', '2023-08-26 01:56:21', '2022-07-05 10:55:50', '2022-07-05 10:56:21');
INSERT INTO `users_authentication` VALUES (12, 1, 'co60DLJBmGlAE', '2023-08-27 23:53:21', '2022-07-07 08:50:49', '2022-07-07 08:53:21');
INSERT INTO `users_authentication` VALUES (13, 1, 'coRvDt.X2fGsQ', '2023-08-28 00:54:13', '2022-07-07 08:53:33', '2022-07-07 09:54:13');
INSERT INTO `users_authentication` VALUES (14, 1, 'co1kCt4YBkfNs', '2023-09-02 23:37:49', '2022-07-13 00:29:00', '2022-07-13 08:37:49');
INSERT INTO `users_authentication` VALUES (15, 4, 'coujeDN2hayEM', '2023-09-02 23:41:36', '2022-07-13 00:36:30', '2022-07-13 08:41:36');
INSERT INTO `users_authentication` VALUES (16, 4, 'coCHs.WcDuG1g', '2023-09-02 23:53:21', '2022-07-13 00:51:28', '2022-07-13 08:53:21');
INSERT INTO `users_authentication` VALUES (17, 1, 'coP2eKxW.syJo', '2023-09-03 00:03:46', '2022-07-13 00:59:17', '2022-07-13 09:03:46');
INSERT INTO `users_authentication` VALUES (18, 4, 'coFhttglzOpEQ', '2023-09-03 00:02:29', '2022-07-13 01:01:36', '2022-07-13 09:02:29');
INSERT INTO `users_authentication` VALUES (19, 1, 'coAsAs9TNuxEc', '2023-09-03 02:55:06', '2022-07-13 03:54:39', '2022-07-13 11:55:06');
INSERT INTO `users_authentication` VALUES (20, 4, 'cobd6Orhlq8O.', '2023-09-05 10:00:29', '2022-07-15 10:15:31', '2022-07-15 19:00:29');
INSERT INTO `users_authentication` VALUES (21, 4, 'co.edJknywzQ.', '2023-09-05 10:03:04', '2022-07-15 11:02:23', '2022-07-15 19:03:04');
INSERT INTO `users_authentication` VALUES (22, 1, 'cougqpOdXFYzI', '2023-09-08 00:13:53', '2022-07-18 01:08:43', '2022-07-18 09:13:53');
INSERT INTO `users_authentication` VALUES (23, 1, 'co3zPZIjT7I/k', '2023-09-08 00:14:42', '2022-07-18 01:14:15', '2022-07-18 09:14:42');
INSERT INTO `users_authentication` VALUES (24, 1, 'coSiLUhZRK94o', '2023-09-08 00:27:07', '2022-07-18 01:26:14', '2022-07-18 09:27:07');
INSERT INTO `users_authentication` VALUES (25, 2, 'coD9p97lNuoIM', '2023-09-08 05:32:03', '2022-07-18 06:32:03', '2022-07-18 14:32:03');
INSERT INTO `users_authentication` VALUES (26, 4, 'coNjvxgWbJbEk', '2023-09-15 00:20:03', '2022-07-25 01:16:14', '2022-07-25 09:20:03');
INSERT INTO `users_authentication` VALUES (27, 4, 'coT408fi3z8Y2', '2023-09-15 02:22:18', '2022-07-25 02:43:58', '2022-07-25 11:22:18');
INSERT INTO `users_authentication` VALUES (28, 4, 'coWbh8crKkn.s', '2023-09-15 07:11:40', '2022-07-25 03:22:15', '2022-07-25 16:11:40');
INSERT INTO `users_authentication` VALUES (29, 4, 'coTEwR6aL11Sc', '2023-09-15 03:56:38', '2022-07-25 03:33:09', '2022-07-25 12:56:38');
INSERT INTO `users_authentication` VALUES (30, 4, 'co0MU7pJFHWwc', '2023-09-15 07:39:47', '2022-07-25 08:39:44', '2022-07-25 16:39:47');
INSERT INTO `users_authentication` VALUES (31, 4, 'cotXnaHc5EKJw', '2023-09-16 00:38:57', '2022-07-26 00:05:39', '2022-07-26 09:38:57');
INSERT INTO `users_authentication` VALUES (32, 4, 'coaENeKqG0J2g', '2023-09-16 05:19:08', '2022-07-26 06:19:06', '2022-07-26 14:19:08');
INSERT INTO `users_authentication` VALUES (33, 4, 'coZol47ywA5j.', '2023-09-16 23:19:32', '2022-07-26 23:58:38', '2022-07-27 08:19:32');
INSERT INTO `users_authentication` VALUES (34, 4, 'coRDBZBYqFvgE', '2023-09-17 00:31:00', '2022-07-27 01:30:50', '2022-07-27 09:31:00');
INSERT INTO `users_authentication` VALUES (35, 4, 'coSdb3q86fDU2', '2023-09-17 03:51:55', '2022-07-27 04:51:48', '2022-07-27 12:51:55');
INSERT INTO `users_authentication` VALUES (36, 4, 'co0JcijuzKKJA', '2023-09-18 07:34:50', '2022-07-28 08:33:48', '2022-07-28 16:34:50');
INSERT INTO `users_authentication` VALUES (37, 4, 'coPPmJcviKXao', '2023-09-19 00:15:18', '2022-07-29 01:09:47', '2022-07-29 09:15:18');
INSERT INTO `users_authentication` VALUES (38, 4, 'covF4CbkhAQMI', '2023-09-19 01:34:39', '2022-07-29 01:22:11', '2022-07-29 10:34:39');
INSERT INTO `users_authentication` VALUES (39, 4, 'coSdC4vbab2L.', '2023-09-21 06:30:16', '2022-07-31 07:25:07', '2022-07-31 15:30:16');
INSERT INTO `users_authentication` VALUES (40, 4, 'co3DAnw2TsWZU', '2023-09-22 00:47:44', '2022-08-01 01:11:51', '2022-08-01 09:47:44');
INSERT INTO `users_authentication` VALUES (41, 4, 'coopRz4HooQ8Q', '2023-09-22 02:22:51', '2022-08-01 03:02:38', '2022-08-01 11:22:51');
INSERT INTO `users_authentication` VALUES (42, 4, 'cop/np3qgAcOQ', '2023-09-22 04:10:07', '2022-08-01 05:10:06', '2022-08-01 13:10:07');
INSERT INTO `users_authentication` VALUES (43, 4, 'co3NiiGBitd5M', '2023-09-22 04:44:05', '2022-08-01 05:43:27', '2022-08-01 13:44:05');
INSERT INTO `users_authentication` VALUES (44, 4, 'coiPgRz4qzWVg', '2023-09-22 08:11:03', '2022-08-01 07:34:41', '2022-08-01 17:11:03');
INSERT INTO `users_authentication` VALUES (45, 4, 'coDMTulgLGfAw', '2023-09-22 06:43:06', '2022-08-01 07:39:01', '2022-08-01 15:43:06');
INSERT INTO `users_authentication` VALUES (46, 4, 'coAMfJo9yqZPk', '2023-09-22 08:14:45', '2022-08-01 09:14:41', '2022-08-01 17:14:45');
INSERT INTO `users_authentication` VALUES (47, 4, 'coanoiX8V/Iq6', '2023-09-23 02:37:33', '2022-08-02 03:11:38', '2022-08-02 11:37:33');
INSERT INTO `users_authentication` VALUES (48, 4, 'cordy9S.HhITE', '2023-09-23 06:14:13', '2022-08-02 07:07:39', '2022-08-02 15:14:13');
INSERT INTO `users_authentication` VALUES (49, 4, 'co2QFmqR4FugQ', '2023-09-24 00:43:52', '2022-08-03 01:28:40', '2022-08-03 09:43:52');
INSERT INTO `users_authentication` VALUES (50, 4, 'coeKa.4v1.KgU', '2023-09-24 05:52:41', '2022-08-03 06:48:42', '2022-08-03 14:52:41');
INSERT INTO `users_authentication` VALUES (51, 4, 'colv8AGDghnNs', '2023-09-24 08:57:52', '2022-08-03 09:57:48', '2022-08-03 17:57:52');
INSERT INTO `users_authentication` VALUES (52, 4, 'coH8F4L1t5LGQ', '2023-09-26 01:07:57', '2022-08-05 02:07:57', '2022-08-05 10:07:57');
INSERT INTO `users_authentication` VALUES (53, 4, 'cogFZ4l8NJdkM', '2023-09-26 09:10:06', '2022-08-05 10:09:55', '2022-08-05 18:10:06');
INSERT INTO `users_authentication` VALUES (54, 4, 'coYIJ3jm0IsFM', '2023-09-28 11:09:36', '2022-08-07 12:09:22', '2022-08-07 20:09:36');
INSERT INTO `users_authentication` VALUES (55, 4, 'coo5T.qykP7SA', '2023-09-29 06:22:14', '2022-08-08 07:22:04', '2022-08-08 15:22:14');
INSERT INTO `users_authentication` VALUES (56, 4, 'coziGcoCy.D8I', '2023-09-29 12:02:38', '2022-08-08 13:02:24', '2022-08-08 21:02:38');
INSERT INTO `users_authentication` VALUES (57, 4, 'coEQNXn1dr5VA', '2023-09-30 10:44:32', '2022-08-09 11:25:53', '2022-08-09 19:44:32');
INSERT INTO `users_authentication` VALUES (58, 4, 'coeayq5WApFqU', '2023-10-01 02:19:08', '2022-08-10 03:13:58', '2022-08-10 11:19:08');
INSERT INTO `users_authentication` VALUES (59, 4, 'coh.tXtnoMYiY', '2023-10-03 07:42:35', '2022-08-12 08:30:31', '2022-08-12 16:42:35');
INSERT INTO `users_authentication` VALUES (60, 4, 'coEB5bSLSqssk', '2023-10-06 02:13:41', '2022-08-15 03:13:41', '2022-08-15 11:13:41');
INSERT INTO `users_authentication` VALUES (61, 4, 'coHiI4407Zf2Y', '2023-10-06 05:53:20', '2022-08-15 06:45:35', '2022-08-15 14:53:20');
INSERT INTO `users_authentication` VALUES (62, 4, 'coaBX270lCb4Q', '2023-10-20 03:24:18', '2022-08-29 02:01:14', '2022-08-29 12:24:18');
INSERT INTO `users_authentication` VALUES (63, 4, 'coxDL2UIuEbXU', '2023-10-20 07:46:51', '2022-08-29 08:44:32', '2022-08-29 16:46:51');
INSERT INTO `users_authentication` VALUES (64, 4, 'coSy/qX8naFSk', '2023-10-21 01:08:00', '2022-08-30 01:29:57', '2022-08-30 10:08:00');
INSERT INTO `users_authentication` VALUES (65, 399, 'cowK5KowpNFGw', '2023-10-21 01:10:15', '2022-08-30 02:10:13', '2022-08-30 10:10:15');
INSERT INTO `users_authentication` VALUES (66, 4, 'coRAhiQTeQyIQ', '2023-10-21 08:09:39', '2022-08-30 08:46:08', '2022-08-30 17:09:39');
INSERT INTO `users_authentication` VALUES (67, 4, 'coXgO98ls7vsU', '2023-10-22 07:10:37', '2022-08-31 08:10:37', '2022-08-31 16:10:37');
INSERT INTO `users_authentication` VALUES (68, 4, 'coBdGi6qvXz/g', '2023-10-23 06:05:48', '2022-09-01 07:00:22', '2022-09-01 15:05:48');
INSERT INTO `users_authentication` VALUES (69, 4, 'coirCHcTqSB8Y', '2023-10-27 08:32:43', '2022-09-05 09:19:56', '2022-09-05 17:32:43');
INSERT INTO `users_authentication` VALUES (70, 4, 'cowph0A.fEFzo', '2023-11-04 06:44:23', '2022-09-13 07:44:23', '2022-09-13 15:44:23');
INSERT INTO `users_authentication` VALUES (71, 4, 'cox7PfwA7foKY', '2023-11-04 08:21:36', '2022-09-13 08:38:22', '2022-09-13 17:21:36');
INSERT INTO `users_authentication` VALUES (72, 4, 'coRtPi66S90..', '2023-11-05 00:00:51', '2022-09-14 00:31:31', '2022-09-14 09:00:51');
INSERT INTO `users_authentication` VALUES (73, 4, 'cof3MvlwTeciw', '2023-11-05 10:57:00', '2022-09-14 11:48:44', '2022-09-14 19:57:00');
INSERT INTO `users_authentication` VALUES (74, 4, 'coyTfUjOS0Xxg', '2023-11-06 02:26:19', '2022-09-15 02:08:12', '2022-09-15 11:26:19');
INSERT INTO `users_authentication` VALUES (75, 4, 'corYglN9W4snE', '2023-11-09 10:54:47', '2022-09-18 11:41:50', '2022-09-18 19:54:47');
INSERT INTO `users_authentication` VALUES (76, 4, 'coLIZ851M7TW.', '2023-11-10 00:55:29', '2022-09-19 01:32:25', '2022-09-19 09:55:29');
INSERT INTO `users_authentication` VALUES (77, 4, 'coHQpReZ7cz46', '2023-11-11 02:30:12', '2022-09-20 03:26:14', '2022-09-20 11:30:12');
INSERT INTO `users_authentication` VALUES (78, 4, 'coTyFTFJiGkBM', '2023-11-11 08:29:54', '2022-09-20 08:46:26', '2022-09-20 17:29:54');
INSERT INTO `users_authentication` VALUES (79, 4, 'coR/Q/6sq34oE', '2023-11-12 03:24:00', '2022-09-21 02:26:46', '2022-09-21 12:24:00');
INSERT INTO `users_authentication` VALUES (80, 4, 'cofLajAAfpHL6', '2023-11-12 08:55:49', '2022-09-21 09:54:46', '2022-09-21 17:55:49');
INSERT INTO `users_authentication` VALUES (81, 4, 'cobz4KgIWO2Rs', '2023-11-13 00:20:22', '2022-09-22 01:18:43', '2022-09-22 09:20:22');
INSERT INTO `users_authentication` VALUES (82, 4, 'cowfUYwQp5rgs', '2023-11-13 04:58:50', '2022-09-22 05:43:56', '2022-09-22 13:58:50');
INSERT INTO `users_authentication` VALUES (83, 4, 'coOMZ23Cyy6Fs', '2023-11-13 23:53:39', '2022-09-23 00:53:32', '2022-09-23 08:53:39');
INSERT INTO `users_authentication` VALUES (84, 4, 'coBa5Tcfgk8EA', '2023-11-17 07:19:06', '2022-09-26 07:45:19', '2022-09-26 16:19:06');
INSERT INTO `users_authentication` VALUES (85, 4, 'coPEzWW2rTwPU', '2023-11-25 00:35:15', '2022-10-04 01:29:57', '2022-10-04 09:35:15');
INSERT INTO `users_authentication` VALUES (86, 1, 'cokvJ4zYKzZ26', '2023-12-15 00:57:14', '2022-10-24 01:56:57', '2022-10-24 09:57:14');
INSERT INTO `users_authentication` VALUES (87, 4, 'co5txMe/NH4e6', '2023-12-16 01:50:01', '2022-10-25 01:42:37', '2022-10-25 10:50:01');
INSERT INTO `users_authentication` VALUES (88, 4, 'co5GEaQsuJz/2', '2023-12-18 03:18:59', '2022-10-27 03:38:45', '2022-10-27 12:18:59');
INSERT INTO `users_authentication` VALUES (89, 4, 'coaYBJ6KnglNM', '2023-12-18 03:22:03', '2022-10-27 03:58:07', '2022-10-27 12:22:03');
INSERT INTO `users_authentication` VALUES (90, 4, 'cokjRgpLvEQfA', '2023-12-23 07:07:03', '2022-11-01 06:14:27', '2022-11-01 16:07:03');
INSERT INTO `users_authentication` VALUES (91, 4, 'cojWkXRfg3vJg', '2023-12-24 23:44:47', '2022-11-03 00:36:33', '2022-11-03 08:44:47');
INSERT INTO `users_authentication` VALUES (92, 4, 'co0eHNbZ0.rZ2', '2023-12-25 02:28:20', '2022-11-03 03:20:34', '2022-11-03 11:28:20');
INSERT INTO `users_authentication` VALUES (93, 4, 'co6MGsVKZynJE', '2023-12-25 04:07:59', '2022-11-03 04:21:40', '2022-11-03 13:07:59');
INSERT INTO `users_authentication` VALUES (94, 4, 'cod3lyeHgwKTM', '2023-12-25 07:05:51', '2022-11-03 07:25:16', '2022-11-03 16:05:51');
INSERT INTO `users_authentication` VALUES (95, 4, 'coLb4eGcSOCVE', '2023-12-26 00:18:27', '2022-11-04 00:51:06', '2022-11-04 09:18:27');
INSERT INTO `users_authentication` VALUES (96, 4, 'co9UnU33ONjno', '2023-12-26 07:10:53', '2022-11-04 08:10:49', '2022-11-04 16:10:53');
INSERT INTO `users_authentication` VALUES (97, 4, 'copxyvel6BrHo', '2023-12-29 08:58:34', '2022-11-07 09:43:51', '2022-11-07 17:58:34');
INSERT INTO `users_authentication` VALUES (98, 4, 'co0luUCXwHIGE', '2023-12-30 03:14:32', '2022-11-08 01:45:38', '2022-11-08 12:14:32');
INSERT INTO `users_authentication` VALUES (99, 4, 'cof7wxeCuw1Wg', '2023-12-31 01:36:28', '2022-11-09 00:43:32', '2022-11-09 10:36:28');
INSERT INTO `users_authentication` VALUES (100, 4, 'coTGcz37e.J0o', '2023-12-31 08:27:43', '2022-11-09 09:27:36', '2022-11-09 17:27:43');
INSERT INTO `users_authentication` VALUES (101, 4, 'coy7BbzK6STW2', '2024-01-05 00:13:49', '2022-11-14 01:11:45', '2022-11-14 09:13:49');
INSERT INTO `users_authentication` VALUES (102, 4, 'co.kdmIqPvsXw', '2024-01-05 10:29:12', '2022-11-14 10:37:09', '2022-11-14 19:29:12');
INSERT INTO `users_authentication` VALUES (103, 4, 'colns2CZRuXsU', '2024-01-06 01:07:28', '2022-11-15 01:45:04', '2022-11-15 10:07:28');
INSERT INTO `users_authentication` VALUES (104, 4, 'coKbtHoniNxMk', '2024-01-12 23:30:33', '2022-11-22 00:30:20', '2022-11-22 08:30:33');
INSERT INTO `users_authentication` VALUES (105, 4, 'cokG.AqQ3JN1k', '2024-01-13 23:02:58', '2022-11-22 23:49:12', '2022-11-23 08:02:58');
INSERT INTO `users_authentication` VALUES (106, 4, 'co4id9D79I.T6', '2024-01-14 01:03:37', '2022-11-23 02:03:34', '2022-11-23 10:03:37');
INSERT INTO `users_authentication` VALUES (107, 4, 'cog1y/Toquob2', '2024-01-14 06:29:36', '2022-11-23 07:15:35', '2022-11-23 15:29:36');
INSERT INTO `users_authentication` VALUES (108, 4, 'codrwk5PH/f5Y', '2024-01-17 01:54:10', '2022-11-26 02:54:10', '2022-11-26 10:54:10');
INSERT INTO `users_authentication` VALUES (109, 4, 'coDgmtXccidiE', '2024-01-19 00:19:05', '2022-11-28 00:39:05', '2022-11-28 09:19:05');
INSERT INTO `users_authentication` VALUES (110, 4, 'codyn1wcKBAJE', '2024-01-26 03:28:11', '2022-12-05 04:21:51', '2022-12-05 12:28:11');
INSERT INTO `users_authentication` VALUES (111, 4, 'cofIq8KHACe.Q', '2024-01-28 23:55:05', '2022-12-08 00:55:05', '2022-12-08 08:55:05');
INSERT INTO `users_authentication` VALUES (112, 4, 'coOkPEq8.kQSs', '2024-01-29 02:42:13', '2022-12-08 03:15:58', '2022-12-08 11:42:13');
INSERT INTO `users_authentication` VALUES (113, 4, 'comqHgCXtbOy2', '2024-02-10 01:52:19', '2022-12-20 02:32:38', '2022-12-20 10:52:19');
INSERT INTO `users_authentication` VALUES (114, 1, 'coCMSoSoXT9YE', '2024-02-16 05:39:01', '2022-12-26 04:23:12', '2022-12-26 14:39:01');
INSERT INTO `users_authentication` VALUES (115, 1, 'coRqYSyRVb7E2', '2024-02-16 06:00:21', '2022-12-26 07:00:21', '2022-12-26 15:00:21');
INSERT INTO `users_authentication` VALUES (116, 4, 'coD8U.DxXZeWo', '2024-02-17 00:44:49', '2022-12-27 01:05:01', '2022-12-27 09:44:49');
INSERT INTO `users_authentication` VALUES (117, 4, 'coN76VjX7.Z/2', '2024-03-01 00:26:40', '2023-01-09 00:52:39', '2023-01-09 09:26:40');
INSERT INTO `users_authentication` VALUES (118, 4, 'coXRKspFoZEoE', '2024-03-01 07:05:08', '2023-01-09 08:02:06', '2023-01-09 16:05:08');
INSERT INTO `users_authentication` VALUES (119, 4, 'colJFYRmVd1Pc', '2024-03-02 00:10:46', '2023-01-10 01:10:44', '2023-01-10 09:10:46');
INSERT INTO `users_authentication` VALUES (120, 1, 'coYnXmDEcPLTs', '2024-03-02 01:52:32', '2023-01-10 02:38:59', '2023-01-10 10:52:32');
INSERT INTO `users_authentication` VALUES (121, 1, 'coSAY9qtUv2zE', '2024-03-02 02:08:22', '2023-01-10 03:08:12', '2023-01-10 11:08:22');
INSERT INTO `users_authentication` VALUES (122, 4, 'cooTVwDRNjSlc', '2024-03-03 02:54:34', '2023-01-11 03:50:33', '2023-01-11 11:54:34');
INSERT INTO `users_authentication` VALUES (123, 1, 'coXUZlYpUj482', '2024-03-03 06:57:36', '2023-01-11 07:57:09', '2023-01-11 15:57:36');
INSERT INTO `users_authentication` VALUES (124, 4, 'coOjNPIMkTxME', '2024-03-04 22:48:44', '2023-01-12 23:46:49', '2023-01-13 07:48:44');
INSERT INTO `users_authentication` VALUES (125, 1, 'cobPQqZqZ8WiM', '2024-03-08 01:36:05', '2023-01-16 02:35:38', '2023-01-16 10:36:05');
INSERT INTO `users_authentication` VALUES (126, 1, 'coIxL4KtK1IoY', '2024-03-09 06:51:31', '2023-01-17 15:51:31', '2023-01-17 15:51:31');
INSERT INTO `users_authentication` VALUES (127, 1, 'coDs/VQy/OvSI', '2024-03-09 06:59:01', '2023-01-17 15:58:28', '2023-01-17 15:59:01');
INSERT INTO `users_authentication` VALUES (128, 1, 'co6W0W8Nf7PXE', '2024-03-09 12:38:42', '2023-01-17 21:28:39', '2023-01-17 21:38:42');
INSERT INTO `users_authentication` VALUES (129, 1, 'covF.vuurgedo', '2024-03-09 20:31:49', '2023-01-18 05:31:29', '2023-01-18 05:31:49');
INSERT INTO `users_authentication` VALUES (130, 1, 'co7HZhYkJXMhE', '2024-03-10 19:06:26', '2023-01-19 04:05:12', '2023-01-19 04:06:26');
INSERT INTO `users_authentication` VALUES (131, 1, 'coQ9EtOgtmeQE', '2024-03-10 19:07:31', '2023-01-19 04:06:37', '2023-01-19 04:07:31');
INSERT INTO `users_authentication` VALUES (132, 1, 'coL0y6kU7/h2A', '2024-03-10 19:11:32', '2023-01-19 04:11:30', '2023-01-19 04:11:32');
INSERT INTO `users_authentication` VALUES (133, 1, 'coC7ff1/RFtY2', '2024-03-10 22:32:28', '2023-01-19 07:31:49', '2023-01-19 07:32:28');
INSERT INTO `users_authentication` VALUES (134, 1, 'coQSADs39wPto', '2024-03-11 06:57:43', '2023-01-19 09:36:44', '2023-01-19 15:57:43');
INSERT INTO `users_authentication` VALUES (135, 1, 'co1VTkEUWBTxg', '2024-03-11 02:53:05', '2023-01-19 11:51:12', '2023-01-19 11:53:05');
INSERT INTO `users_authentication` VALUES (136, 1, 'coP0KVqip4S6o', '2024-03-11 06:57:56', '2023-01-19 14:38:55', '2023-01-19 15:57:56');
INSERT INTO `users_authentication` VALUES (137, 1, 'cogSBnFNIhhBw', '2024-03-17 06:07:47', '2023-01-25 14:58:07', '2023-01-25 15:07:47');
INSERT INTO `users_authentication` VALUES (138, 1, 'cokE6IiRA21Nk', '2024-03-22 22:53:41', '2023-01-31 07:53:41', '2023-01-31 07:53:41');
INSERT INTO `users_authentication` VALUES (139, 1, 'cowZr/q4eGOz2', '2024-03-23 00:00:02', '2023-01-31 08:57:10', '2023-01-31 09:00:02');
INSERT INTO `users_authentication` VALUES (140, 1, 'comK5bgS/QPmU', '2024-03-23 02:17:47', '2023-01-31 11:14:22', '2023-01-31 11:17:47');
INSERT INTO `users_authentication` VALUES (141, 1, 'coDEK7uWn5rRo', '2024-03-23 05:49:12', '2023-01-31 14:04:35', '2023-01-31 14:49:12');
INSERT INTO `users_authentication` VALUES (142, 1, 'coAmjD8dUethw', '2024-04-28 23:25:24', '2023-03-09 08:25:10', '2023-03-09 08:25:24');
INSERT INTO `users_authentication` VALUES (143, 1, 'coXAjbBwcuYnM', '2024-05-04 02:31:32', '2023-03-14 11:03:55', '2023-03-14 11:31:32');
INSERT INTO `users_authentication` VALUES (144, 1, 'coQuZHApFacnI', '2024-05-05 00:12:58', '2023-03-15 07:50:15', '2023-03-15 09:12:58');
INSERT INTO `users_authentication` VALUES (145, 1, 'co8C.d9rDUc86', '2024-05-05 07:19:04', '2023-03-15 11:45:15', '2023-03-15 16:19:04');
INSERT INTO `users_authentication` VALUES (146, 1, 'coa0BNc8.4f5E', '2024-05-05 13:06:19', '2023-03-15 20:58:51', '2023-03-15 22:06:19');
INSERT INTO `users_authentication` VALUES (147, 1, 'coULtc0iZVDB6', '2024-05-06 10:31:11', '2023-03-16 14:17:11', '2023-03-16 19:31:11');
INSERT INTO `users_authentication` VALUES (148, 1, 'co0kvUBRvGDqo', '2024-05-06 21:30:09', '2023-03-17 06:27:06', '2023-03-17 06:30:09');
INSERT INTO `users_authentication` VALUES (149, 1, 'coO/gc7xzwBQc', '2024-05-10 03:08:32', '2023-03-20 08:06:03', '2023-03-20 12:08:32');
INSERT INTO `users_authentication` VALUES (150, 1, 'coWclVmAmvGJY', '2024-05-10 07:10:18', '2023-03-20 14:18:19', '2023-03-20 16:10:18');
INSERT INTO `users_authentication` VALUES (151, 1, 'colv1jgEM3opk', '2024-05-10 13:27:06', '2023-03-20 22:01:05', '2023-03-20 22:27:06');
INSERT INTO `users_authentication` VALUES (152, 1, 'coMGe/j11Dcns', '2024-05-11 00:00:48', '2023-03-21 07:44:08', '2023-03-21 09:00:48');
INSERT INTO `users_authentication` VALUES (153, 1, 'co0CCbuxjkbSk', '2024-05-11 09:23:00', '2023-03-21 11:14:37', '2023-03-21 18:23:00');
INSERT INTO `users_authentication` VALUES (154, 1, 'co7AeZJX24foY', '2024-05-15 07:26:16', '2023-03-25 16:18:24', '2023-03-25 16:26:16');
INSERT INTO `users_authentication` VALUES (155, 1, 'coXUY813aTRpo', '2024-05-17 01:22:53', '2023-03-27 08:20:31', '2023-03-27 10:22:53');
INSERT INTO `users_authentication` VALUES (156, 1, 'cochJd9LueIKg', '2024-05-21 01:56:06', '2023-03-31 10:53:58', '2023-03-31 10:56:06');
INSERT INTO `users_authentication` VALUES (157, 1, 'coxKkiySgvUY6', '2024-06-23 01:31:04', '2023-05-03 10:31:04', '2023-05-03 10:31:04');
INSERT INTO `users_authentication` VALUES (158, 1, 'coSe9Yj83giNs', '2024-06-24 05:21:40', '2023-05-04 08:04:09', '2023-05-04 14:21:40');
INSERT INTO `users_authentication` VALUES (159, 1, 'coWdqDdXQjkME', '2024-06-24 01:14:56', '2023-05-04 10:14:48', '2023-05-04 10:14:56');
INSERT INTO `users_authentication` VALUES (160, 1, 'coPpprsZ1xqPU', '2024-06-24 06:03:20', '2023-05-04 14:45:02', '2023-05-04 15:03:20');
INSERT INTO `users_authentication` VALUES (161, 1, 'co0A5KGymUGZU', '2024-06-24 23:30:42', '2023-05-05 07:34:45', '2023-05-05 08:30:42');
INSERT INTO `users_authentication` VALUES (162, 1, 'coenDUbu3eqZM', '2024-06-24 23:00:36', '2023-05-05 08:00:25', '2023-05-05 08:00:36');
INSERT INTO `users_authentication` VALUES (163, 1, 'coHXC5aIKjVhg', '2024-06-25 02:28:53', '2023-05-05 10:50:00', '2023-05-05 11:28:53');
INSERT INTO `users_authentication` VALUES (164, 1, 'coDheh5fmMgoU', '2024-06-25 04:39:44', '2023-05-05 13:39:44', '2023-05-05 13:39:44');
INSERT INTO `users_authentication` VALUES (165, 1, 'coiqQbzkWQLLo', '2024-06-25 04:42:25', '2023-05-05 13:42:25', '2023-05-05 13:42:25');
INSERT INTO `users_authentication` VALUES (166, 1, 'co586rmhrKCfI', '2024-06-25 04:48:59', '2023-05-05 13:48:59', '2023-05-05 13:48:59');
INSERT INTO `users_authentication` VALUES (167, 1, 'co8VS6tTb/S26', '2024-06-25 04:52:39', '2023-05-05 13:52:39', '2023-05-05 13:52:39');
INSERT INTO `users_authentication` VALUES (168, 1, 'coYRN6oZ5kaH2', '2024-06-25 05:12:09', '2023-05-05 14:04:18', '2023-05-05 14:12:09');
INSERT INTO `users_authentication` VALUES (169, 1, 'coM0.Zy08wRgs', '2024-06-25 13:49:41', '2023-05-05 22:25:03', '2023-05-05 22:49:41');
INSERT INTO `users_authentication` VALUES (170, 1, 'cokutOOiUEv6c', '2024-06-27 22:33:11', '2023-05-08 07:31:19', '2023-05-08 07:33:11');
INSERT INTO `users_authentication` VALUES (171, 1, 'coTMVMRu8nOb6', '2024-06-30 08:55:07', '2023-05-10 15:01:48', '2023-05-10 17:55:07');
INSERT INTO `users_authentication` VALUES (172, 1, 'cowpqgv8dzI72', '2024-06-30 09:21:36', '2023-05-10 17:55:28', '2023-05-10 18:21:36');
INSERT INTO `users_authentication` VALUES (173, 1, 'core2lpQ/Nd5w', '2024-06-30 09:23:58', '2023-05-10 18:21:47', '2023-05-10 18:23:58');
INSERT INTO `users_authentication` VALUES (174, 1, 'coEFfix0QTQkk', '2024-06-30 09:49:56', '2023-05-10 18:25:00', '2023-05-10 18:49:56');
INSERT INTO `users_authentication` VALUES (175, 1, 'co5Fg.XenWi0c', '2024-06-30 09:51:02', '2023-05-10 18:50:10', '2023-05-10 18:51:02');
INSERT INTO `users_authentication` VALUES (176, 1, 'coKvgGIFSt4lk', '2024-06-30 09:51:51', '2023-05-10 18:51:18', '2023-05-10 18:51:51');
INSERT INTO `users_authentication` VALUES (177, 1, 'coO1xe3td5pzY', '2024-06-30 09:53:28', '2023-05-10 18:52:04', '2023-05-10 18:53:28');
INSERT INTO `users_authentication` VALUES (178, 1, 'coro3WlTpQMg2', '2024-06-30 09:54:14', '2023-05-10 18:53:37', '2023-05-10 18:54:14');
INSERT INTO `users_authentication` VALUES (179, 1, 'cootfQkeOpV66', '2024-06-30 09:55:36', '2023-05-10 18:55:04', '2023-05-10 18:55:36');
INSERT INTO `users_authentication` VALUES (180, 1, 'co.UtsdAW7P/g', '2024-06-30 10:13:48', '2023-05-10 18:55:53', '2023-05-10 19:13:48');
INSERT INTO `users_authentication` VALUES (181, 1, 'coYAreuczhbvU', '2024-06-30 10:15:47', '2023-05-10 19:14:16', '2023-05-10 19:15:47');
INSERT INTO `users_authentication` VALUES (182, 1, 'co4Tvt9wxpShM', '2024-06-30 10:16:38', '2023-05-10 19:16:28', '2023-05-10 19:16:38');
INSERT INTO `users_authentication` VALUES (183, 1, 'coGTt1rsVwJ5g', '2024-06-30 10:20:48', '2023-05-10 19:17:33', '2023-05-10 19:20:48');
INSERT INTO `users_authentication` VALUES (184, 1, 'co8DGmKvL5w8Y', '2024-06-30 10:33:39', '2023-05-10 19:21:14', '2023-05-10 19:33:39');
INSERT INTO `users_authentication` VALUES (185, 1, 'coACXQdCtEE1E', '2024-06-30 10:45:29', '2023-05-10 19:35:08', '2023-05-10 19:45:29');
INSERT INTO `users_authentication` VALUES (186, 1, 'colionYaGU16o', '2024-06-30 11:05:27', '2023-05-10 19:45:40', '2023-05-10 20:05:27');
INSERT INTO `users_authentication` VALUES (187, 1, 'coybJOndRaMsY', '2024-06-30 11:24:01', '2023-05-10 20:09:46', '2023-05-10 20:24:01');
INSERT INTO `users_authentication` VALUES (188, 1, 'co2i8QxbaN9Iw', '2024-06-30 23:02:15', '2023-05-11 07:40:31', '2023-05-11 08:02:15');
INSERT INTO `users_authentication` VALUES (189, 1, 'corPnnaztzarU', '2024-06-30 23:01:17', '2023-05-11 08:01:17', '2023-05-11 08:01:17');
INSERT INTO `users_authentication` VALUES (190, 1, 'coG3QwxiEd7.o', '2024-06-30 23:12:21', '2023-05-11 08:09:38', '2023-05-11 08:12:21');
INSERT INTO `users_authentication` VALUES (191, 1, 'coqBekP4fPdOE', '2024-06-30 23:12:59', '2023-05-11 08:12:59', '2023-05-11 08:12:59');
INSERT INTO `users_authentication` VALUES (192, 1, 'co/p9Ez1rSCEE', '2024-06-30 23:15:14', '2023-05-11 08:15:14', '2023-05-11 08:15:14');
INSERT INTO `users_authentication` VALUES (193, 1, 'co0gxrZm.VD6w', '2024-06-30 23:22:27', '2023-05-11 08:22:07', '2023-05-11 08:22:27');
INSERT INTO `users_authentication` VALUES (194, 1, 'cofZ7k2x0Jo1M', '2024-06-30 23:44:15', '2023-05-11 08:24:09', '2023-05-11 08:44:15');
INSERT INTO `users_authentication` VALUES (195, 1, 'cosjfdFi6FsLE', '2024-07-01 02:59:30', '2023-05-11 10:56:21', '2023-05-11 11:59:30');
INSERT INTO `users_authentication` VALUES (196, 1, 'coRTq2FnUpPEo', '2024-07-01 06:24:28', '2023-05-11 15:22:28', '2023-05-11 15:24:28');
INSERT INTO `users_authentication` VALUES (197, 1, 'cowCjwiCxnvJc', '2024-07-02 07:12:12', '2023-05-12 14:11:24', '2023-05-12 16:12:12');
INSERT INTO `users_authentication` VALUES (198, 1, 'co3JusZvB7nU6', '2024-07-04 09:56:55', '2023-05-14 15:30:53', '2023-05-14 18:56:55');
INSERT INTO `users_authentication` VALUES (199, 1, 'commvFGSqCzVo', '2024-07-04 20:29:12', '2023-05-15 05:29:02', '2023-05-15 05:29:12');
INSERT INTO `users_authentication` VALUES (200, 1, 'coRv6DmcDSCpo', '2024-07-05 00:49:25', '2023-05-15 09:46:56', '2023-05-15 09:49:25');
INSERT INTO `users_authentication` VALUES (201, 1, 'co3RmgiiLxV1U', '2024-07-05 00:48:43', '2023-05-15 09:48:31', '2023-05-15 09:48:43');
INSERT INTO `users_authentication` VALUES (202, 1, 'cozOqIkrRPL4E', '2024-07-05 01:04:15', '2023-05-15 09:55:55', '2023-05-15 10:04:15');
INSERT INTO `users_authentication` VALUES (203, 1, 'cohqsvbYF7rg6', '2024-07-05 04:22:25', '2023-05-15 11:16:14', '2023-05-15 13:22:25');
INSERT INTO `users_authentication` VALUES (204, 1, 'corMwKhLoX3zI', '2024-07-05 03:15:40', '2023-05-15 11:22:51', '2023-05-15 12:15:40');
INSERT INTO `users_authentication` VALUES (205, 1, 'coU5U86eDmR8c', '2024-07-05 07:33:58', '2023-05-15 16:33:47', '2023-05-15 16:33:58');
INSERT INTO `users_authentication` VALUES (206, 1, 'cofK0BdY2RlsE', '2024-07-06 05:54:21', '2023-05-16 13:22:46', '2023-05-16 14:54:21');
INSERT INTO `users_authentication` VALUES (207, 1, 'coZHGo8ulAmKk', '2024-07-06 05:12:33', '2023-05-16 13:26:42', '2023-05-16 14:12:33');
INSERT INTO `users_authentication` VALUES (208, 1, 'cokbJKrzDYEl.', '2024-07-06 06:28:11', '2023-05-16 15:20:24', '2023-05-16 15:28:11');
INSERT INTO `users_authentication` VALUES (209, 1, 'co9ZUCXriew8E', '2024-07-06 07:00:03', '2023-05-16 15:32:37', '2023-05-16 16:00:03');
INSERT INTO `users_authentication` VALUES (210, 1, 'co0wubs/SfD32', '2024-07-06 19:04:55', '2023-05-17 03:56:58', '2023-05-17 04:04:55');
INSERT INTO `users_authentication` VALUES (211, 1, 'coyMRicKwmnlY', '2024-07-06 19:03:03', '2023-05-17 03:57:05', '2023-05-17 04:03:03');
INSERT INTO `users_authentication` VALUES (212, 1, 'cool/OjM7GguQ', '2024-07-07 04:23:19', '2023-05-17 07:31:17', '2023-05-17 13:23:19');
INSERT INTO `users_authentication` VALUES (213, 1, 'coUHboBGBpfS.', '2024-07-06 23:40:48', '2023-05-17 07:31:46', '2023-05-17 08:40:48');
INSERT INTO `users_authentication` VALUES (214, 1, 'coInvpHKT43hI', '2024-07-07 01:31:49', '2023-05-17 10:31:33', '2023-05-17 10:31:49');
INSERT INTO `users_authentication` VALUES (215, 1, 'copTX.Le9WjW6', '2024-07-09 08:36:35', '2023-05-19 14:24:47', '2023-05-19 17:36:35');
INSERT INTO `users_authentication` VALUES (216, 1, 'cozBUP87.XgCU', '2024-07-09 05:28:24', '2023-05-19 14:24:55', '2023-05-19 14:28:24');
INSERT INTO `users_authentication` VALUES (217, 1, 'co0fTJ5N3Q6hw', '2024-07-12 02:36:39', '2023-05-22 09:07:01', '2023-05-22 11:36:39');
INSERT INTO `users_authentication` VALUES (218, 1, 'coOpZE7yB.8/6', '2024-07-12 03:09:17', '2023-05-22 09:07:31', '2023-05-22 12:09:17');
INSERT INTO `users_authentication` VALUES (219, 1, 'cosw3i57Q0u0Q', '2024-07-12 06:26:47', '2023-05-22 14:22:25', '2023-05-22 15:26:47');
INSERT INTO `users_authentication` VALUES (220, 1, 'cobrtsz.W0L42', '2024-07-12 06:50:39', '2023-05-22 14:22:32', '2023-05-22 15:50:39');
INSERT INTO `users_authentication` VALUES (221, 1, 'coLo9ipbjrjLQ', '2024-07-19 04:54:39', '2023-05-29 13:53:57', '2023-05-29 13:54:39');
INSERT INTO `users_authentication` VALUES (222, 5, 'coEGgrACJVv7s', '2024-07-20 06:15:28', '2023-05-30 14:35:23', '2023-05-30 15:15:28');
INSERT INTO `users_authentication` VALUES (223, 1, 'cobyXpDp5Rdr6', '2024-07-20 06:18:19', '2023-05-30 15:17:03', '2023-05-30 15:18:19');
INSERT INTO `users_authentication` VALUES (224, 5, 'covS4PucAL1jw', '2024-07-20 06:29:06', '2023-05-30 15:18:49', '2023-05-30 15:29:06');
INSERT INTO `users_authentication` VALUES (225, 1, 'co1pOKUARYAyI', '2024-07-20 06:29:30', '2023-05-30 15:29:26', '2023-05-30 15:29:30');
INSERT INTO `users_authentication` VALUES (226, 5, 'coQpObxtQVWak', '2024-07-20 06:38:10', '2023-05-30 15:29:51', '2023-05-30 15:38:10');
INSERT INTO `users_authentication` VALUES (227, 1, 'co8VkCE39hc4U', '2024-07-20 06:54:23', '2023-05-30 15:39:47', '2023-05-30 15:54:23');
INSERT INTO `users_authentication` VALUES (228, 5, 'coUidpSF5aeow', '2024-07-20 07:08:39', '2023-05-30 15:54:46', '2023-05-30 16:08:39');
INSERT INTO `users_authentication` VALUES (229, 1, 'comTyEsUrTPnw', '2024-07-20 07:40:11', '2023-05-30 16:08:59', '2023-05-30 16:40:11');
INSERT INTO `users_authentication` VALUES (230, 1, 'coO/PBz33dS7g', '2024-07-20 07:36:44', '2023-05-30 16:33:33', '2023-05-30 16:36:44');
INSERT INTO `users_authentication` VALUES (231, 5, 'conOte6Cwq/O6', '2024-07-21 01:27:53', '2023-05-31 08:28:03', '2023-05-31 10:27:53');
INSERT INTO `users_authentication` VALUES (232, 4, 'cod.V8mVKn1C.', '2024-07-21 01:30:56', '2023-05-31 10:29:32', '2023-05-31 10:30:56');
INSERT INTO `users_authentication` VALUES (233, 4, 'cox9TzhnWLVsc', '2024-07-26 01:42:50', '2023-06-05 09:46:31', '2023-06-05 10:42:50');
INSERT INTO `users_authentication` VALUES (234, 4, 'coX.kNSYY9qe2', '2024-07-26 07:07:55', '2023-06-05 13:48:42', '2023-06-05 16:07:55');
INSERT INTO `users_authentication` VALUES (235, 4, 'cohl/xThA4gJU', '2024-07-27 01:24:23', '2023-06-06 10:24:18', '2023-06-06 10:24:23');
INSERT INTO `users_authentication` VALUES (236, 4, 'coWE9TLLegSA6', '2024-07-27 06:25:51', '2023-06-06 14:03:19', '2023-06-06 15:25:51');
INSERT INTO `users_authentication` VALUES (237, 4, 'coD0izv2cIMi.', '2024-07-28 02:48:24', '2023-06-07 08:25:15', '2023-06-07 11:48:24');
INSERT INTO `users_authentication` VALUES (238, 4, 'coBupFoSJ6hCw', '2024-07-28 06:14:14', '2023-06-07 14:48:40', '2023-06-07 15:14:14');
INSERT INTO `users_authentication` VALUES (239, 4, 'coc8Xdr4asXUI', '2024-07-28 06:58:13', '2023-06-07 15:52:46', '2023-06-07 15:58:13');
INSERT INTO `users_authentication` VALUES (240, 4, 'coWS4/TQwDOMo', '2024-07-30 06:57:08', '2023-06-09 15:31:45', '2023-06-09 15:57:08');
INSERT INTO `users_authentication` VALUES (241, 4, 'coE2MJvTFU4RE', '2024-08-01 23:04:48', '2023-06-12 07:46:11', '2023-06-12 08:04:48');
INSERT INTO `users_authentication` VALUES (242, 1, 'coG2LSlQ.sY4.', '2024-08-01 23:49:33', '2023-06-12 08:48:21', '2023-06-12 08:49:33');
INSERT INTO `users_authentication` VALUES (243, 1, 'cobk.iw5VTBvY', '2024-08-02 02:54:01', '2023-06-12 11:43:06', '2023-06-12 11:54:01');
INSERT INTO `users_authentication` VALUES (244, 1, 'coICDZP/JOFDI', '2024-08-02 07:50:11', '2023-06-12 12:17:09', '2023-06-12 16:50:11');
INSERT INTO `users_authentication` VALUES (245, 1, 'cosciwcNmBZ3Q', '2024-08-02 07:03:55', '2023-06-12 16:00:16', '2023-06-12 16:03:55');
INSERT INTO `users_authentication` VALUES (246, 1, 'cozCXp9ybWBxo', '2024-08-02 07:49:35', '2023-06-12 16:08:22', '2023-06-12 16:49:35');
INSERT INTO `users_authentication` VALUES (247, 1, 'coubCyNARKzf2', '2024-08-02 20:49:07', '2023-06-13 05:38:47', '2023-06-13 05:49:07');
INSERT INTO `users_authentication` VALUES (248, 1, 'co3/e3oXVea/A', '2024-08-03 00:04:12', '2023-06-13 09:03:13', '2023-06-13 09:04:12');
INSERT INTO `users_authentication` VALUES (249, 1, 'cofUbrlvgHSvU', '2024-08-03 00:06:30', '2023-06-13 09:03:24', '2023-06-13 09:06:30');
INSERT INTO `users_authentication` VALUES (250, 1, 'cocltrQtbxziM', '2024-08-05 06:44:33', '2023-06-15 07:50:01', '2023-06-15 15:44:33');
INSERT INTO `users_authentication` VALUES (251, 1, 'coPtyh/Fpiex6', '2024-08-04 23:08:34', '2023-06-15 08:08:05', '2023-06-15 08:08:34');
INSERT INTO `users_authentication` VALUES (252, 1, 'co3jB7oKhb1tM', '2024-08-05 02:46:12', '2023-06-15 11:18:24', '2023-06-15 11:46:12');
INSERT INTO `users_authentication` VALUES (253, 1, 'conGY1hko3z0g', '2024-08-05 06:16:23', '2023-06-15 14:59:34', '2023-06-15 15:16:23');
INSERT INTO `users_authentication` VALUES (254, 5, 'coUvz7y4iHsc.', '2024-08-05 06:51:58', '2023-06-15 15:49:54', '2023-06-15 15:51:58');
INSERT INTO `users_authentication` VALUES (255, 1, 'coNyRq99poK4o', '2024-08-06 01:02:26', '2023-06-16 08:20:24', '2023-06-16 10:02:26');
INSERT INTO `users_authentication` VALUES (256, 1, 'coe1meZMg79nY', '2024-08-06 07:23:15', '2023-06-16 13:36:10', '2023-06-16 16:23:15');
INSERT INTO `users_authentication` VALUES (257, 1, 'cox0r9goom9iU', '2024-08-10 06:36:54', '2023-06-20 15:22:32', '2023-06-20 15:36:54');
INSERT INTO `users_authentication` VALUES (258, 1, 'coL/p1vRik0XE', '2024-08-10 22:46:39', '2023-06-21 07:44:21', '2023-06-21 07:46:39');
INSERT INTO `users_authentication` VALUES (259, 1, 'cok8bxVdEYYDk', '2024-08-10 22:45:30', '2023-06-21 07:45:27', '2023-06-21 07:45:30');
INSERT INTO `users_authentication` VALUES (260, 1, 'co3h/1cr8geKo', '2024-08-12 08:51:41', '2023-06-22 17:51:41', '2023-06-22 17:51:41');
INSERT INTO `users_authentication` VALUES (261, 1, 'couAQ8pbLcicY', '2024-08-12 10:28:08', '2023-06-22 17:51:41', '2023-06-22 19:28:08');
INSERT INTO `users_authentication` VALUES (262, 1, 'coNPc.gXZrBRk', '2024-08-12 22:36:09', '2023-06-23 07:33:22', '2023-06-23 07:36:09');
INSERT INTO `users_authentication` VALUES (263, 1, 'coWBjVbQOR0T2', '2024-08-14 21:30:20', '2023-06-25 05:32:58', '2023-06-25 06:30:20');
INSERT INTO `users_authentication` VALUES (264, 1, 'coH5vjKJ3ixbk', '2024-08-15 07:12:29', '2023-06-25 16:03:24', '2023-06-25 16:12:29');
INSERT INTO `users_authentication` VALUES (265, 1, 'coUxeJDD49YKA', '2024-08-15 23:08:49', '2023-06-26 07:34:30', '2023-06-26 08:08:49');
INSERT INTO `users_authentication` VALUES (266, 1, 'co5mmgPY4bRLo', '2024-08-17 06:23:22', '2023-06-27 15:16:06', '2023-06-27 15:23:22');
INSERT INTO `users_authentication` VALUES (267, 1, 'co/Md3K3D0XeY', '2024-08-21 21:01:42', '2023-07-02 06:01:42', '2023-07-02 06:01:42');
INSERT INTO `users_authentication` VALUES (268, 1, 'coJq5ys4yaxHA', '2024-08-23 02:32:11', '2023-07-03 08:45:58', '2023-07-03 11:32:11');
INSERT INTO `users_authentication` VALUES (269, 1, 'coCne1gS00e.s', '2024-10-07 23:41:50', '2023-08-18 08:41:50', '2023-08-18 08:41:50');
INSERT INTO `users_authentication` VALUES (270, 1, 'coz7UAIfXZ/1g', '2024-10-08 00:07:14', '2023-08-18 09:07:14', '2023-08-18 09:07:14');
INSERT INTO `users_authentication` VALUES (271, 1, 'coCdFMd.rRpkY', '2024-10-08 00:19:28', '2023-08-18 09:19:28', '2023-08-18 09:19:28');
INSERT INTO `users_authentication` VALUES (272, 1, 'coVAioK7SX/js', '2024-10-08 00:33:15', '2023-08-18 09:33:15', '2023-08-18 09:33:15');
INSERT INTO `users_authentication` VALUES (273, 1, 'cobv37wPa4vrU', '2024-10-08 01:14:08', '2023-08-18 09:47:50', '2023-08-18 10:14:08');
INSERT INTO `users_authentication` VALUES (274, 2, 'co6nJAB5YxXJU', '2024-10-08 01:16:03', '2023-08-18 10:14:39', '2023-08-18 10:16:03');
INSERT INTO `users_authentication` VALUES (275, 1, 'cod9wh86.J40Q', '2024-10-08 01:16:16', '2023-08-18 10:16:16', '2023-08-18 10:16:16');
INSERT INTO `users_authentication` VALUES (276, 1, 'coEF/1M86mklM', '2024-10-08 01:20:25', '2023-08-18 10:19:43', '2023-08-18 10:20:25');
INSERT INTO `users_authentication` VALUES (277, 1, 'co3SErDrD//7c', '2024-10-08 06:10:29', '2023-08-18 10:20:55', '2023-08-18 15:10:29');
INSERT INTO `users_authentication` VALUES (278, 1, 'col2.cX0KUiHQ', '2024-10-08 06:43:56', '2023-08-18 15:24:27', '2023-08-18 15:43:56');
INSERT INTO `users_authentication` VALUES (279, 1, 'cotfPk1o9yDLk', '2024-10-08 06:46:05', '2023-08-18 15:44:04', '2023-08-18 15:46:05');
INSERT INTO `users_authentication` VALUES (280, 1, 'coRDdQFBzWF..', '2024-10-08 06:46:30', '2023-08-18 15:46:24', '2023-08-18 15:46:30');
INSERT INTO `users_authentication` VALUES (281, 2, 'co5MbbSC9YwLw', '2024-10-08 06:47:16', '2023-08-18 15:46:51', '2023-08-18 15:47:16');
INSERT INTO `users_authentication` VALUES (282, 1, 'coH3GZe5Cn9EA', '2024-10-08 07:38:07', '2023-08-18 15:47:24', '2023-08-18 16:38:07');
INSERT INTO `users_authentication` VALUES (283, 1, 'co1bwwLOlZ3lo', '2024-10-08 08:10:45', '2023-08-18 16:40:57', '2023-08-18 17:10:45');
INSERT INTO `users_authentication` VALUES (284, 1, 'cov6Zjb0x13Bs', '2024-10-08 13:13:15', '2023-08-18 21:44:09', '2023-08-18 22:13:15');
INSERT INTO `users_authentication` VALUES (285, 1, 'coD7Lfg9B./lM', '2024-10-08 22:13:44', '2023-08-19 05:06:05', '2023-08-19 07:13:44');
INSERT INTO `users_authentication` VALUES (286, 1, 'coRQAGkxKftVU', '2024-10-09 19:30:03', '2023-08-20 03:55:24', '2023-08-20 04:30:03');
INSERT INTO `users_authentication` VALUES (287, 1, 'conGzXI1YtyoQ', '2024-10-11 04:54:36', '2023-08-21 12:35:12', '2023-08-21 13:54:36');
INSERT INTO `users_authentication` VALUES (288, 1, 'co30p5lweSqmk', '2024-10-18 09:01:13', '2023-08-28 07:36:11', '2023-08-28 18:01:13');
INSERT INTO `users_authentication` VALUES (289, 1, 'cooU6DN4npito', '2024-10-18 22:33:09', '2023-08-29 07:31:14', '2023-08-29 07:33:09');
INSERT INTO `users_authentication` VALUES (290, 1, 'couKPs3j.mXHc', '2024-10-18 22:50:10', '2023-08-29 07:50:05', '2023-08-29 07:50:10');
INSERT INTO `users_authentication` VALUES (291, 1, 'coymsW8ES8ceA', '2024-10-18 23:01:12', '2023-08-29 07:59:07', '2023-08-29 08:01:12');
INSERT INTO `users_authentication` VALUES (292, 1, 'coaPw./g2u.aA', '2024-10-18 23:16:29', '2023-08-29 08:16:29', '2023-08-29 08:16:29');
INSERT INTO `users_authentication` VALUES (293, 1, 'coGndVfIWj0/2', '2024-10-18 23:17:30', '2023-08-29 08:17:30', '2023-08-29 08:17:30');
INSERT INTO `users_authentication` VALUES (294, 1, 'cow9UrgdRDqEw', '2024-10-18 23:49:27', '2023-08-29 08:49:26', '2023-08-29 08:49:27');
INSERT INTO `users_authentication` VALUES (295, 1, 'coCbOmOuZM5PI', '2024-10-18 23:54:31', '2023-08-29 08:53:33', '2023-08-29 08:54:31');
INSERT INTO `users_authentication` VALUES (296, 1, 'copY1Xr8PEFWg', '2024-10-18 23:54:56', '2023-08-29 08:54:56', '2023-08-29 08:54:56');
INSERT INTO `users_authentication` VALUES (297, 1, 'cobCNtSI7fgmA', '2024-10-19 00:24:37', '2023-08-29 09:23:20', '2023-08-29 09:24:37');
INSERT INTO `users_authentication` VALUES (298, 1, 'co/ckXfHuRd/E', '2024-10-19 00:57:12', '2023-08-29 09:57:11', '2023-08-29 09:57:12');
INSERT INTO `users_authentication` VALUES (299, 1, 'co8NJgWtNbwoI', '2024-10-19 01:14:50', '2023-08-29 10:14:41', '2023-08-29 10:14:50');
INSERT INTO `users_authentication` VALUES (300, 1, 'coQV//zQf8Xk2', '2024-10-19 03:11:22', '2023-08-29 12:10:58', '2023-08-29 12:11:22');
INSERT INTO `users_authentication` VALUES (301, 1, 'co17rum0rr7FM', '2024-10-19 20:40:29', '2023-08-30 05:40:04', '2023-08-30 05:40:29');
INSERT INTO `users_authentication` VALUES (302, 1, 'coQ9ljH8rQelc', '2024-10-20 02:04:10', '2023-08-30 11:01:26', '2023-08-30 11:04:10');
INSERT INTO `users_authentication` VALUES (303, 1, 'co0yK1XYomp0Q', '2024-10-20 02:34:23', '2023-08-30 11:30:08', '2023-08-30 11:34:23');
INSERT INTO `users_authentication` VALUES (304, 1, 'coUCWKNUjDBsM', '2024-10-20 06:05:00', '2023-08-30 14:11:17', '2023-08-30 15:05:00');
INSERT INTO `users_authentication` VALUES (305, 1, 'co2r40Joe7kIc', '2024-10-20 07:32:33', '2023-08-30 16:32:16', '2023-08-30 16:32:33');
INSERT INTO `users_authentication` VALUES (306, 1, 'coxrGPHkSOqOk', '2024-10-20 07:38:21', '2023-08-30 16:35:15', '2023-08-30 16:38:21');
INSERT INTO `users_authentication` VALUES (307, 1, 'coGGn35Q7Tbcs', '2024-10-20 23:43:27', '2023-08-31 08:33:38', '2023-08-31 08:43:27');
INSERT INTO `users_authentication` VALUES (308, 1, 'coJCGcLMX6ntU', '2024-10-21 00:01:03', '2023-08-31 08:58:20', '2023-08-31 09:01:03');
INSERT INTO `users_authentication` VALUES (309, 1, 'co1kIHPSEjAJU', '2024-10-21 01:14:47', '2023-08-31 09:01:27', '2023-08-31 10:14:47');
INSERT INTO `users_authentication` VALUES (310, 1, 'coXzpAexZvJog', '2024-10-21 01:22:27', '2023-08-31 10:17:04', '2023-08-31 10:22:27');
INSERT INTO `users_authentication` VALUES (311, 421, 'co6ylxzctEspk', '2024-10-21 01:35:35', '2023-08-31 10:24:16', '2023-08-31 10:35:35');
INSERT INTO `users_authentication` VALUES (312, 421, 'coWV6v6LBFxtQ', '2024-10-21 02:21:27', '2023-08-31 10:36:46', '2023-08-31 11:21:27');
INSERT INTO `users_authentication` VALUES (313, 1, 'coJygZd9.JWzQ', '2024-10-21 02:32:50', '2023-08-31 11:21:48', '2023-08-31 11:32:50');
INSERT INTO `users_authentication` VALUES (314, 421, 'coKW2EqYGO05A', '2024-10-21 02:33:40', '2023-08-31 11:33:28', '2023-08-31 11:33:40');
INSERT INTO `users_authentication` VALUES (315, 1, 'cobtto/T0FSgY', '2024-10-21 03:02:30', '2023-08-31 12:02:11', '2023-08-31 12:02:30');
INSERT INTO `users_authentication` VALUES (316, 421, 'coKh.8fb4zBo2', '2024-10-21 03:04:00', '2023-08-31 12:02:59', '2023-08-31 12:04:00');
INSERT INTO `users_authentication` VALUES (317, 1, 'coI6avyEQV.Zo', '2024-10-21 23:56:14', '2023-09-01 08:23:37', '2023-09-01 08:56:14');
INSERT INTO `users_authentication` VALUES (318, 1, 'co5Xjo9URiq56', '2024-10-22 00:07:02', '2023-09-01 08:57:10', '2023-09-01 09:07:02');
INSERT INTO `users_authentication` VALUES (319, 1, 'coyI/BwfhqrZk', '2024-10-22 00:47:25', '2023-09-01 09:47:24', '2023-09-01 09:47:25');
INSERT INTO `users_authentication` VALUES (320, 1, 'colEN70FMDVBA', '2024-10-22 00:52:41', '2023-09-01 09:52:40', '2023-09-01 09:52:41');
INSERT INTO `users_authentication` VALUES (321, 1, 'co.ya6pGIsda6', '2024-10-22 00:53:09', '2023-09-01 09:53:07', '2023-09-01 09:53:09');
INSERT INTO `users_authentication` VALUES (322, 1, 'coG0QkEd.S5zk', '2024-10-22 01:34:11', '2023-09-01 10:04:57', '2023-09-01 10:34:11');
INSERT INTO `users_authentication` VALUES (323, 1, 'codO00HjHJ9pI', '2024-10-22 06:07:28', '2023-09-01 14:17:44', '2023-09-01 15:07:28');
INSERT INTO `users_authentication` VALUES (324, 1, 'co4JJqUA87Zk2', '2024-10-22 06:17:19', '2023-09-01 15:14:10', '2023-09-01 15:17:19');
INSERT INTO `users_authentication` VALUES (325, 1, 'coAtjSrIUoLXY', '2024-10-22 06:29:29', '2023-09-01 15:29:28', '2023-09-01 15:29:29');
INSERT INTO `users_authentication` VALUES (326, 1, 'co980s820FdCU', '2024-10-22 07:26:29', '2023-09-01 15:39:37', '2023-09-01 16:26:29');
INSERT INTO `users_authentication` VALUES (327, 1, 'coM1iT5euaWwk', '2024-10-22 21:11:59', '2023-09-02 06:11:24', '2023-09-02 06:11:59');
INSERT INTO `users_authentication` VALUES (328, 1, 'coXbIPrX.aQhs', '2024-10-22 21:44:18', '2023-09-02 06:44:04', '2023-09-02 06:44:18');
INSERT INTO `users_authentication` VALUES (329, 1, 'coxTojhMCj1Uo', '2024-10-22 22:56:36', '2023-09-02 07:54:51', '2023-09-02 07:56:36');
INSERT INTO `users_authentication` VALUES (330, 1, 'coxhetZvzanco', '2024-10-23 02:57:42', '2023-09-02 11:54:48', '2023-09-02 11:57:42');
INSERT INTO `users_authentication` VALUES (331, 1, 'coMUnC4lZzFks', '2024-10-23 03:20:07', '2023-09-02 12:09:46', '2023-09-02 12:20:07');
INSERT INTO `users_authentication` VALUES (332, 1, 'co2TeMf4wH6Eg', '2024-10-24 12:01:13', '2023-09-03 20:51:55', '2023-09-03 21:01:13');
INSERT INTO `users_authentication` VALUES (333, 1, 'coAjkMwaEhPPY', '2024-10-25 05:22:52', '2023-09-04 14:16:55', '2023-09-04 14:22:52');
INSERT INTO `users_authentication` VALUES (334, 1, 'coZnayEox6mqs', '2024-10-25 05:35:00', '2023-09-04 14:25:17', '2023-09-04 14:35:00');
INSERT INTO `users_authentication` VALUES (335, 1, 'coX1uPqi1Wdr6', '2024-10-25 05:52:02', '2023-09-04 14:52:00', '2023-09-04 14:52:02');
INSERT INTO `users_authentication` VALUES (336, 1, 'co1QpiXdpH7mA', '2024-10-26 01:56:22', '2023-09-05 10:54:22', '2023-09-05 10:56:22');
INSERT INTO `users_authentication` VALUES (337, 1, 'coZs03hf3c/JA', '2024-10-26 02:17:02', '2023-09-05 11:15:59', '2023-09-05 11:17:02');
INSERT INTO `users_authentication` VALUES (338, 1, 'coHqmG1pZbsOY', '2024-10-26 02:32:19', '2023-09-05 11:27:17', '2023-09-05 11:32:19');
INSERT INTO `users_authentication` VALUES (339, 1, 'coZhFMksABkbQ', '2024-10-26 07:58:16', '2023-09-05 15:59:33', '2023-09-05 16:58:16');
INSERT INTO `users_authentication` VALUES (340, 1, 'coVOsiuQnqhfU', '2024-10-26 07:58:56', '2023-09-05 16:58:51', '2023-09-05 16:58:56');
INSERT INTO `users_authentication` VALUES (341, 1, 'cocpU4IcWbeOw', '2024-10-26 09:13:51', '2023-09-05 18:13:41', '2023-09-05 18:13:51');
INSERT INTO `users_authentication` VALUES (342, 1, 'co3FgbEW0Z0PI', '2024-10-27 00:39:22', '2023-09-06 08:33:11', '2023-09-06 09:39:22');
INSERT INTO `users_authentication` VALUES (343, 1, 'coQAK2erpXDhc', '2024-10-27 00:49:35', '2023-09-06 09:45:18', '2023-09-06 09:49:35');
INSERT INTO `users_authentication` VALUES (344, 1, 'cozEJhJXQA.so', '2024-10-27 01:03:59', '2023-09-06 09:53:33', '2023-09-06 10:03:59');
INSERT INTO `users_authentication` VALUES (345, 1, 'coOJZDRmJNC/Y', '2024-10-27 01:10:27', '2023-09-06 10:10:15', '2023-09-06 10:10:27');
INSERT INTO `users_authentication` VALUES (346, 1, 'coe1PpXLV/VKw', '2024-10-27 01:18:26', '2023-09-06 10:17:37', '2023-09-06 10:18:26');
INSERT INTO `users_authentication` VALUES (347, 1, 'co8uvvXslOUh2', '2024-10-27 01:26:36', '2023-09-06 10:26:30', '2023-09-06 10:26:36');
INSERT INTO `users_authentication` VALUES (348, 1, 'coom5B7BoyV0k', '2024-10-27 01:33:29', '2023-09-06 10:28:16', '2023-09-06 10:33:29');
INSERT INTO `users_authentication` VALUES (349, 421, 'co9dnEnSpReuc', '2024-10-27 01:34:11', '2023-09-06 10:34:04', '2023-09-06 10:34:11');
INSERT INTO `users_authentication` VALUES (350, 1, 'co4X2tJQut54U', '2024-10-27 01:34:41', '2023-09-06 10:34:36', '2023-09-06 10:34:41');
INSERT INTO `users_authentication` VALUES (351, 1, 'coCEKpZVlSBlo', '2024-10-27 11:22:29', '2023-09-06 20:22:19', '2023-09-06 20:22:29');
INSERT INTO `users_authentication` VALUES (352, 1, 'coeVQxleokHUc', '2024-10-27 11:22:49', '2023-09-06 20:22:48', '2023-09-06 20:22:49');
INSERT INTO `users_authentication` VALUES (353, 1, 'coFQZLs.XNLZQ', '2024-10-27 11:26:15', '2023-09-06 20:26:14', '2023-09-06 20:26:15');
INSERT INTO `users_authentication` VALUES (354, 1, 'coMWIGtZU3yCU', '2024-10-27 12:23:48', '2023-09-06 21:23:46', '2023-09-06 21:23:48');
INSERT INTO `users_authentication` VALUES (355, 1, 'coj9vHqzKVILQ', '2024-10-27 12:28:28', '2023-09-06 21:27:59', '2023-09-06 21:28:28');
INSERT INTO `users_authentication` VALUES (356, 1, 'coFf2tcNG2mHU', '2024-10-28 00:25:23', '2023-09-07 07:46:28', '2023-09-07 09:25:23');
INSERT INTO `users_authentication` VALUES (357, 1, 'coYzf.2sUuToM', '2024-11-01 01:26:11', '2023-09-11 10:26:09', '2023-09-11 10:26:11');
INSERT INTO `users_authentication` VALUES (358, 1, 'coNAtGRJaM0Kg', '2024-11-03 22:40:41', '2023-09-14 07:39:13', '2023-09-14 07:40:41');
INSERT INTO `users_authentication` VALUES (359, 1, 'coMvL9US6Xeqw', '2024-11-05 00:11:02', '2023-09-15 08:57:25', '2023-09-15 09:11:02');
INSERT INTO `users_authentication` VALUES (360, 1, 'co4wZnq3GbBXc', '2024-11-11 02:11:35', '2023-09-21 11:11:29', '2023-09-21 11:11:35');
INSERT INTO `users_authentication` VALUES (361, 1, 'co4L0l8.6Goas', '2024-11-11 02:12:42', '2023-09-21 11:12:28', '2023-09-21 11:12:42');
INSERT INTO `users_authentication` VALUES (362, 1, 'coxVfF5sk/8Ng', '2024-11-11 02:15:06', '2023-09-21 11:14:04', '2023-09-21 11:15:06');
INSERT INTO `users_authentication` VALUES (363, 1, 'coBwvwwvxn0jc', '2024-11-11 02:18:26', '2023-09-21 11:18:16', '2023-09-21 11:18:26');
INSERT INTO `users_authentication` VALUES (364, 1, 'coAGeVe0W2ENU', '2024-11-11 02:19:59', '2023-09-21 11:19:16', '2023-09-21 11:19:59');
INSERT INTO `users_authentication` VALUES (365, 1, 'coritlTOqFWck', '2024-11-11 02:58:29', '2023-09-21 11:44:54', '2023-09-21 11:58:29');
INSERT INTO `users_authentication` VALUES (366, 1, 'cohUSKIZ65TPc', '2024-11-11 06:32:45', '2023-09-21 15:30:27', '2023-09-21 15:32:45');
INSERT INTO `users_authentication` VALUES (367, 1, 'coYqiuHCMywjo', '2024-11-11 06:39:39', '2023-09-21 15:37:28', '2023-09-21 15:39:39');
INSERT INTO `users_authentication` VALUES (368, 1, 'cobW0o.xQv9r.', '2024-11-11 06:41:11', '2023-09-21 15:40:42', '2023-09-21 15:41:11');
INSERT INTO `users_authentication` VALUES (369, 1, 'covlPF9csOGt2', '2024-11-11 06:42:30', '2023-09-21 15:41:53', '2023-09-21 15:42:30');
INSERT INTO `users_authentication` VALUES (370, 1, 'coZUredfyWv6I', '2024-11-12 05:30:46', '2023-09-22 14:28:09', '2023-09-22 14:30:46');
INSERT INTO `users_authentication` VALUES (371, 1, 'conEJttyMAWvE', '2024-11-12 06:42:02', '2023-09-22 15:41:46', '2023-09-22 15:42:02');
INSERT INTO `users_authentication` VALUES (372, 1, 'coTicP1FO9OoE', '2024-11-12 06:50:15', '2023-09-22 15:43:40', '2023-09-22 15:50:15');
INSERT INTO `users_authentication` VALUES (373, 421, 'co.fUeZBPwKcg', '2024-11-12 07:51:16', '2023-09-22 16:35:56', '2023-09-22 16:51:16');
INSERT INTO `users_authentication` VALUES (374, 1, 'cow1Rc2MNjScg', '2024-11-12 07:52:49', '2023-09-22 16:52:02', '2023-09-22 16:52:49');
INSERT INTO `users_authentication` VALUES (375, 421, 'coZX1FNMWdplw', '2024-11-12 08:09:30', '2023-09-22 16:53:37', '2023-09-22 17:09:30');
INSERT INTO `users_authentication` VALUES (376, 421, 'cokAEp0B/aRDc', '2024-11-12 21:19:06', '2023-09-23 05:55:32', '2023-09-23 06:19:06');
INSERT INTO `users_authentication` VALUES (377, 1, 'coFZTN1oREG9c', '2024-11-12 21:23:51', '2023-09-23 06:20:12', '2023-09-23 06:23:51');
INSERT INTO `users_authentication` VALUES (378, 421, 'comx/WaU1mlfM', '2024-11-12 21:28:49', '2023-09-23 06:24:45', '2023-09-23 06:28:49');
INSERT INTO `users_authentication` VALUES (379, 1, 'co/U4Y878wJv.', '2024-11-13 00:00:51', '2023-09-23 06:29:53', '2023-09-23 09:00:51');

-- ----------------------------
-- Table structure for zona
-- ----------------------------
DROP TABLE IF EXISTS `zona`;
CREATE TABLE `zona`  (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nama_zona` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tgl_input` datetime(0) NULL DEFAULT NULL,
  `status` enum('belum_diproses','perbaikan','draft_sedang_dibuat','menunggu_koreksi','selesai') CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nama_panjang` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `warna_background` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zona
-- ----------------------------
INSERT INTO `zona` VALUES (1, 'kasub_inteldakim', '2023-06-07 16:03:35', NULL, 'Kasub Inteldakim', '#3a87ad');
INSERT INTO `zona` VALUES (7, 'pemprov_ntb', '2023-05-08 11:25:22', '', 'Pemerintah Provinsi NTB', '#ad5997');
INSERT INTO `zona` VALUES (8, 'pemkot_mataram', '2023-05-08 11:25:22', '', 'Pemerintah Kota Mataram', '#583c10');
INSERT INTO `zona` VALUES (10, 'pemkot_bima', '2023-05-08 11:25:22', 'menunggu_koreksi', 'Pemerintah Kota Bima', '#581747');
INSERT INTO `zona` VALUES (13, 'pemkab_sumbawa_barat', '2023-05-08 11:25:22', 'belum_diproses', 'Pemerintah Kabupaten Sumbawa Barat', '#228c1c');
INSERT INTO `zona` VALUES (14, 'pemkab_sumbawa', '2023-05-08 11:25:22', 'belum_diproses', 'Pemerintah Kabupaten Sumbawa', '#ece315');
INSERT INTO `zona` VALUES (17, 'pemkab_lombok_utara', '2023-05-08 11:25:22', 'draft_sedang_dibuat', 'Pemerintah Kabupaten Lombok Utara', '#b5004a');
INSERT INTO `zona` VALUES (18, 'pemkab_lombok_timur', '2023-05-08 11:25:22', 'belum_diproses', 'Pemerintah Kabupaten Lombok Timur', '#330f4b');
INSERT INTO `zona` VALUES (19, 'pemkab_lombok_tengah', '2023-05-08 11:25:22', 'draft_sedang_dibuat', 'Pemerintah Kabupaten Lombok Tengah', '#b2471a');
INSERT INTO `zona` VALUES (20, 'pemkab_lombok_barat', '2023-05-08 11:25:22', 'draft_sedang_dibuat', 'Pemerintah Kabupaten Lombok Barat', '#0d7942');
INSERT INTO `zona` VALUES (21, 'pemkab_dompu', '2023-05-08 11:25:22', 'menunggu_koreksi', 'Pemerintah Kabupaten Dompu', '#777479');
INSERT INTO `zona` VALUES (22, 'pemkab_bima', '2023-05-08 11:25:22', 'selesai', 'Pemerintah Kabupaten Bima', '#2d3211');
INSERT INTO `zona` VALUES (64, 'superadmin', '2023-06-07 16:03:35', NULL, 'Superadmin', '#b50f7f');
INSERT INTO `zona` VALUES (65, 'divim_kanwil', '2023-05-08 11:25:22', 'selesai', 'Divisi Keimigrasian Kanwil', '#2d3211');

SET FOREIGN_KEY_CHECKS = 1;
