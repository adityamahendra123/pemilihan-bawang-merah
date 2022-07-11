-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 21, 2021 at 08:48 AM
-- Server version: 10.2.36-MariaDB-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kahe6122_ahp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_alternatif`
--

CREATE TABLE `tb_alternatif` (
  `kode_alternatif` varchar(16) NOT NULL,
  `nama_alternatif` varchar(256) NOT NULL DEFAULT '',
  `keterangan` varchar(256) NOT NULL DEFAULT '',
  `total` double NOT NULL,
  `rank` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_alternatif`
--

INSERT INTO `tb_alternatif` (`kode_alternatif`, `nama_alternatif`, `keterangan`, `total`, `rank`) VALUES
('A4', 'SUNGGAL', 'Tersedia', 0.85760797750643, 1),
('A1', 'CIHERANG', 'Tersedia', 0.6621643233989, 3),
('A2', 'SITUBAGENDIT', 'Tersedia', 0.061322200778219, 5),
('A3', 'IR-64', 'Tersedia', 0.39160809527691, 4),
('A5', 'INPARI 32', 'Tersedia', 0.76733802797866, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `kode_kriteria` varchar(16) NOT NULL,
  `nama_kriteria` varchar(256) NOT NULL,
  `atribut` varchar(256) NOT NULL DEFAULT 'benefit'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`kode_kriteria`, `nama_kriteria`, `atribut`) VALUES
('C4', 'Anakan', 'benefit'),
('C3', 'Umur', 'benefit'),
('C1', 'Potensi Hasil', 'benefit'),
('C2', 'Bobot 1000', 'benefit'),
('C5', 'Tinggi', 'benefit');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_alternatif`
--

CREATE TABLE `tb_rel_alternatif` (
  `ID` int(11) NOT NULL,
  `kode_alternatif` varchar(16) DEFAULT NULL,
  `kode_kriteria` varchar(16) DEFAULT NULL,
  `nilai` double DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rel_alternatif`
--

INSERT INTO `tb_rel_alternatif` (`ID`, `kode_alternatif`, `kode_kriteria`, `nilai`) VALUES
(239, 'A4', 'C4', 4),
(240, 'A4', 'C5', 5),
(237, 'A4', 'C2', 4),
(238, 'A4', 'C3', 5),
(236, 'A4', 'C1', 5),
(232, 'A3', 'C3', 4),
(233, 'A3', 'C4', 5),
(234, 'A3', 'C5', 1),
(230, 'A3', 'C1', 3),
(231, 'A3', 'C2', 4),
(227, 'A2', 'C4', 1),
(228, 'A2', 'C5', 3),
(225, 'A2', 'C2', 4),
(226, 'A2', 'C3', 4),
(218, 'A1', 'C1', 4),
(219, 'A1', 'C2', 5),
(220, 'A1', 'C3', 5),
(221, 'A1', 'C4', 3),
(222, 'A1', 'C5', 5),
(224, 'A2', 'C1', 2),
(242, 'A5', 'C1', 5),
(243, 'A5', 'C2', 4),
(244, 'A5', 'C3', 4),
(245, 'A5', 'C4', 2),
(246, 'A5', 'C5', 2),
(254, 'A7', 'C1', 1),
(255, 'A7', 'C2', 5),
(256, 'A7', 'C3', 3),
(257, 'A7', 'C4', 5),
(258, 'A7', 'C5', 4),
(260, 'A8', 'C1', 3),
(261, 'A8', 'C2', 1),
(262, 'A8', 'C3', 3),
(263, 'A8', 'C4', 4),
(264, 'A8', 'C5', 3),
(266, 'A9', 'C1', 3),
(267, 'A9', 'C2', 1),
(268, 'A9', 'C3', 3),
(269, 'A9', 'C4', 4),
(270, 'A9', 'C5', 3),
(272, 'A10', 'C1', 1),
(273, 'A10', 'C2', 1),
(274, 'A10', 'C3', 5),
(275, 'A10', 'C4', 4),
(276, 'A10', 'C5', 3),
(278, 'A11', 'C1', 1),
(279, 'A11', 'C2', 1),
(280, 'A11', 'C3', 3),
(281, 'A11', 'C4', 3),
(282, 'A11', 'C5', 3),
(284, 'A12', 'C1', 3),
(285, 'A12', 'C2', 1),
(286, 'A12', 'C3', 5),
(287, 'A12', 'C4', 4),
(288, 'A12', 'C5', 3),
(290, 'A13', 'C1', 3),
(291, 'A13', 'C2', 1),
(292, 'A13', 'C3', 5),
(293, 'A13', 'C4', 4),
(294, 'A13', 'C5', 3),
(296, 'A14', 'C1', 1),
(297, 'A14', 'C2', 1),
(298, 'A14', 'C3', 1),
(299, 'A14', 'C4', 3),
(300, 'A14', 'C5', 1),
(302, 'A15', 'C1', 3),
(303, 'A15', 'C2', 1),
(304, 'A15', 'C3', 5),
(305, 'A15', 'C4', 3),
(306, 'A15', 'C5', 3),
(308, 'A16', 'C1', 1),
(309, 'A16', 'C2', 1),
(310, 'A16', 'C3', 3),
(311, 'A16', 'C4', 4),
(312, 'A16', 'C5', 3),
(314, 'A17', 'C1', 1),
(315, 'A17', 'C2', 1),
(316, 'A17', 'C3', 3),
(317, 'A17', 'C4', 3),
(318, 'A17', 'C5', 1),
(320, 'A18', 'C1', 5),
(321, 'A18', 'C2', 1),
(322, 'A18', 'C3', 5),
(323, 'A18', 'C4', 5),
(324, 'A18', 'C5', 4),
(326, 'A19', 'C1', 3),
(327, 'A19', 'C2', 5),
(328, 'A19', 'C3', 5),
(329, 'A19', 'C4', 4),
(330, 'A19', 'C5', 3),
(332, 'A20', 'C1', 3),
(333, 'A20', 'C2', 1),
(334, 'A20', 'C3', 5),
(335, 'A20', 'C4', 5),
(336, 'A20', 'C5', 4),
(338, 'A21', 'C1', 1),
(339, 'A21', 'C2', 1),
(340, 'A21', 'C3', 3),
(341, 'A21', 'C4', 4),
(342, 'A21', 'C5', 1),
(876, 'A22', 'C5', 1),
(875, 'A22', 'C4', 4),
(874, 'A22', 'C3', 3),
(873, 'A22', 'C2', 1),
(872, 'A22', 'C1', 1),
(350, 'A23', 'C1', 3),
(351, 'A23', 'C2', 1),
(352, 'A23', 'C3', 5),
(353, 'A23', 'C4', 4),
(354, 'A23', 'C5', 3),
(356, 'A24', 'C1', 3),
(357, 'A24', 'C2', 1),
(358, 'A24', 'C3', 3),
(359, 'A24', 'C4', 4),
(360, 'A24', 'C5', 3),
(362, 'A25', 'C1', 3),
(363, 'A25', 'C2', 1),
(364, 'A25', 'C3', 5),
(365, 'A25', 'C4', 5),
(366, 'A25', 'C5', 4),
(368, 'A26', 'C1', 5),
(369, 'A26', 'C2', 1),
(370, 'A26', 'C3', 3),
(371, 'A26', 'C4', 4),
(372, 'A26', 'C5', 3),
(374, 'A27', 'C1', 3),
(375, 'A27', 'C2', 1),
(376, 'A27', 'C3', 3),
(377, 'A27', 'C4', 4),
(378, 'A27', 'C5', 3),
(380, 'A28', 'C1', 1),
(381, 'A28', 'C2', 1),
(382, 'A28', 'C3', 1),
(383, 'A28', 'C4', 3),
(384, 'A28', 'C5', 3),
(386, 'A29', 'C1', 3),
(387, 'A29', 'C2', 2),
(388, 'A29', 'C3', 3),
(389, 'A29', 'C4', 4),
(390, 'A29', 'C5', 4),
(392, 'A30', 'C1', 3),
(393, 'A30', 'C2', 1),
(394, 'A30', 'C3', 3),
(395, 'A30', 'C4', 4),
(396, 'A30', 'C5', 3),
(398, 'A31', 'C1', 3),
(399, 'A31', 'C2', 1),
(400, 'A31', 'C3', 5),
(401, 'A31', 'C4', 4),
(402, 'A31', 'C5', 5),
(404, 'A32', 'C1', 3),
(405, 'A32', 'C2', 3),
(406, 'A32', 'C3', 5),
(407, 'A32', 'C4', 5),
(408, 'A32', 'C5', 5),
(410, 'A33', 'C1', 3),
(411, 'A33', 'C2', 1),
(412, 'A33', 'C3', 1),
(413, 'A33', 'C4', 5),
(414, 'A33', 'C5', 5),
(416, 'A34', 'C1', 3),
(417, 'A34', 'C2', 1),
(418, 'A34', 'C3', 3),
(419, 'A34', 'C4', 5),
(420, 'A34', 'C5', 4),
(422, 'A35', 'C1', 3),
(423, 'A35', 'C2', 1),
(424, 'A35', 'C3', 3),
(425, 'A35', 'C4', 3),
(426, 'A35', 'C5', 1),
(438, 'A36', 'C5', 1),
(437, 'A36', 'C4', 4),
(436, 'A36', 'C3', 3),
(435, 'A36', 'C2', 1),
(434, 'A36', 'C1', 3),
(440, 'A37', 'C1', 3),
(441, 'A37', 'C2', 1),
(442, 'A37', 'C3', 1),
(443, 'A37', 'C4', 3),
(444, 'A37', 'C5', 1),
(446, 'A38', 'C1', 3),
(447, 'A38', 'C2', 1),
(448, 'A38', 'C3', 3),
(449, 'A38', 'C4', 4),
(450, 'A38', 'C5', 3),
(452, 'A39', 'C1', 3),
(453, 'A39', 'C2', 1),
(454, 'A39', 'C3', 3),
(455, 'A39', 'C4', 4),
(456, 'A39', 'C5', 3),
(458, 'A40', 'C1', 1),
(459, 'A40', 'C2', 1),
(460, 'A40', 'C3', 1),
(461, 'A40', 'C4', 3),
(462, 'A40', 'C5', 1),
(464, 'A41', 'C1', 3),
(465, 'A41', 'C2', 1),
(466, 'A41', 'C3', 3),
(467, 'A41', 'C4', 3),
(468, 'A41', 'C5', 3),
(470, 'A42', 'C1', 3),
(471, 'A42', 'C2', 1),
(472, 'A42', 'C3', 3),
(473, 'A42', 'C4', 4),
(474, 'A42', 'C5', 3),
(476, 'A43', 'C1', 1),
(477, 'A43', 'C2', 1),
(478, 'A43', 'C3', 3),
(479, 'A43', 'C4', 5),
(480, 'A43', 'C5', 4),
(482, 'A44', 'C1', 3),
(483, 'A44', 'C2', 1),
(484, 'A44', 'C3', 5),
(485, 'A44', 'C4', 4),
(486, 'A44', 'C5', 4),
(488, 'A45', 'C1', 3),
(489, 'A45', 'C2', 1),
(490, 'A45', 'C3', 3),
(491, 'A45', 'C4', 4),
(492, 'A45', 'C5', 3),
(494, 'A48', 'C1', 3),
(495, 'A48', 'C2', 1),
(496, 'A48', 'C3', 3),
(497, 'A48', 'C4', 4),
(498, 'A48', 'C5', 3),
(500, 'A49', 'C1', 1),
(501, 'A49', 'C2', 1),
(502, 'A49', 'C3', 3),
(503, 'A49', 'C4', 3),
(504, 'A49', 'C5', 1),
(506, 'A50', 'C1', 3),
(507, 'A50', 'C2', 1),
(508, 'A50', 'C3', 3),
(509, 'A50', 'C4', 4),
(510, 'A50', 'C5', 3),
(512, 'A51', 'C1', 3),
(513, 'A51', 'C2', 1),
(514, 'A51', 'C3', 3),
(515, 'A51', 'C4', 3),
(516, 'A51', 'C5', 1),
(518, 'A52', 'C1', 3),
(519, 'A52', 'C2', 1),
(520, 'A52', 'C3', 3),
(521, 'A52', 'C4', 4),
(522, 'A52', 'C5', 4),
(524, 'A53', 'C1', 3),
(525, 'A53', 'C2', 1),
(526, 'A53', 'C3', 5),
(527, 'A53', 'C4', 4),
(528, 'A53', 'C5', 3),
(530, 'A54', 'C1', 1),
(531, 'A54', 'C2', 1),
(532, 'A54', 'C3', 1),
(533, 'A54', 'C4', 3),
(534, 'A54', 'C5', 3),
(536, 'A55', 'C1', 3),
(537, 'A55', 'C2', 1),
(538, 'A55', 'C3', 3),
(539, 'A55', 'C4', 4),
(540, 'A55', 'C5', 3),
(542, 'A56', 'C1', 1),
(543, 'A56', 'C2', 1),
(544, 'A56', 'C3', 3),
(545, 'A56', 'C4', 3),
(546, 'A56', 'C5', 3),
(548, 'A57', 'C1', 3),
(549, 'A57', 'C2', 1),
(550, 'A57', 'C3', 5),
(551, 'A57', 'C4', 5),
(552, 'A57', 'C5', 4),
(554, 'A58', 'C1', 3),
(555, 'A58', 'C2', 1),
(556, 'A58', 'C3', 3),
(557, 'A58', 'C4', 5),
(558, 'A58', 'C5', 5),
(560, 'A59', 'C1', 3),
(561, 'A59', 'C2', 1),
(562, 'A59', 'C3', 3),
(563, 'A59', 'C4', 4),
(564, 'A59', 'C5', 3),
(566, 'A60', 'C1', 3),
(567, 'A60', 'C2', 1),
(568, 'A60', 'C3', 3),
(569, 'A60', 'C4', 4),
(570, 'A60', 'C5', 3),
(572, 'A61', 'C1', 3),
(573, 'A61', 'C2', 1),
(574, 'A61', 'C3', 3),
(575, 'A61', 'C4', 3),
(576, 'A61', 'C5', 3),
(578, 'A62', 'C1', 3),
(579, 'A62', 'C2', 1),
(580, 'A62', 'C3', 3),
(581, 'A62', 'C4', 4),
(582, 'A62', 'C5', 4),
(584, 'A63', 'C1', 3),
(585, 'A63', 'C2', 1),
(586, 'A63', 'C3', 3),
(587, 'A63', 'C4', 5),
(588, 'A63', 'C5', 5),
(590, 'A64', 'C1', 3),
(591, 'A64', 'C2', 1),
(592, 'A64', 'C3', 3),
(593, 'A64', 'C4', 4),
(594, 'A64', 'C5', 3),
(596, 'A65', 'C1', 3),
(597, 'A65', 'C2', 1),
(598, 'A65', 'C3', 5),
(599, 'A65', 'C4', 4),
(600, 'A65', 'C5', 3),
(602, 'A66', 'C1', 3),
(603, 'A66', 'C2', 1),
(604, 'A66', 'C3', 3),
(605, 'A66', 'C4', 4),
(606, 'A66', 'C5', 3),
(608, 'A67', 'C1', 1),
(609, 'A67', 'C2', 1),
(610, 'A67', 'C3', 3),
(611, 'A67', 'C4', 4),
(612, 'A67', 'C5', 3),
(614, 'A68', 'C1', 1),
(615, 'A68', 'C2', 3),
(616, 'A68', 'C3', 3),
(617, 'A68', 'C4', 5),
(618, 'A68', 'C5', 5),
(620, 'A69', 'C1', 3),
(621, 'A69', 'C2', 1),
(622, 'A69', 'C3', 5),
(623, 'A69', 'C4', 5),
(624, 'A69', 'C5', 4),
(626, 'A70', 'C1', 3),
(627, 'A70', 'C2', 1),
(628, 'A70', 'C3', 3),
(629, 'A70', 'C4', 5),
(630, 'A70', 'C5', 5),
(632, 'A71', 'C1', 3),
(633, 'A71', 'C2', 1),
(634, 'A71', 'C3', 5),
(635, 'A71', 'C4', 5),
(636, 'A71', 'C5', 4),
(638, 'A72', 'C1', 1),
(639, 'A72', 'C2', 1),
(640, 'A72', 'C3', 3),
(641, 'A72', 'C4', 4),
(642, 'A72', 'C5', 3),
(644, 'A73', 'C1', 3),
(645, 'A73', 'C2', 1),
(646, 'A73', 'C3', 5),
(647, 'A73', 'C4', 4),
(648, 'A73', 'C5', 3),
(672, 'A74', 'C5', 4),
(671, 'A74', 'C4', 4),
(670, 'A74', 'C3', 5),
(669, 'A74', 'C2', 1),
(668, 'A74', 'C1', 3),
(678, 'A75', 'C5', 1),
(677, 'A75', 'C4', 3),
(676, 'A75', 'C3', 1),
(675, 'A75', 'C2', 1),
(674, 'A75', 'C1', 3),
(680, 'A76', 'C1', 3),
(681, 'A76', 'C2', 1),
(682, 'A76', 'C3', 3),
(683, 'A76', 'C4', 4),
(684, 'A76', 'C5', 4),
(686, 'A77', 'C1', 3),
(687, 'A77', 'C2', 1),
(688, 'A77', 'C3', 5),
(689, 'A77', 'C4', 4),
(690, 'A77', 'C5', 3),
(692, 'A78', 'C1', 3),
(693, 'A78', 'C2', 1),
(694, 'A78', 'C3', 3),
(695, 'A78', 'C4', 4),
(696, 'A78', 'C5', 3),
(698, 'A79', 'C1', 3),
(699, 'A79', 'C2', 3),
(700, 'A79', 'C3', 3),
(701, 'A79', 'C4', 4),
(702, 'A79', 'C5', 4),
(704, 'A80', 'C1', 3),
(705, 'A80', 'C2', 1),
(706, 'A80', 'C3', 3),
(707, 'A80', 'C4', 4),
(708, 'A80', 'C5', 3),
(710, 'A81', 'C1', 3),
(711, 'A81', 'C2', 1),
(712, 'A81', 'C3', 5),
(713, 'A81', 'C4', 4),
(714, 'A81', 'C5', 3),
(716, 'A82', 'C1', 1),
(717, 'A82', 'C2', 1),
(718, 'A82', 'C3', 3),
(719, 'A82', 'C4', 4),
(720, 'A82', 'C5', 3),
(722, 'A83', 'C1', 3),
(723, 'A83', 'C2', 1),
(724, 'A83', 'C3', 3),
(725, 'A83', 'C4', 4),
(726, 'A83', 'C5', 4),
(728, 'A84', 'C1', 3),
(729, 'A84', 'C2', 3),
(730, 'A84', 'C3', 3),
(731, 'A84', 'C4', 4),
(732, 'A84', 'C5', 3),
(734, 'A85', 'C1', 1),
(735, 'A85', 'C2', 1),
(736, 'A85', 'C3', 3),
(737, 'A85', 'C4', 3),
(738, 'A85', 'C5', 1),
(740, 'A86', 'C1', 1),
(741, 'A86', 'C2', 3),
(742, 'A86', 'C3', 1),
(743, 'A86', 'C4', 3),
(744, 'A86', 'C5', 1),
(746, 'A87', 'C1', 1),
(747, 'A87', 'C2', 1),
(748, 'A87', 'C3', 3),
(749, 'A87', 'C4', 4),
(750, 'A87', 'C5', 3),
(752, 'A88', 'C1', 3),
(753, 'A88', 'C2', 1),
(754, 'A88', 'C3', 5),
(755, 'A88', 'C4', 4),
(756, 'A88', 'C5', 3),
(758, 'A89', 'C1', 3),
(759, 'A89', 'C2', 1),
(760, 'A89', 'C3', 3),
(761, 'A89', 'C4', 3),
(762, 'A89', 'C5', 3),
(764, 'A90', 'C1', 1),
(765, 'A90', 'C2', 1),
(766, 'A90', 'C3', 3),
(767, 'A90', 'C4', 4),
(768, 'A90', 'C5', 3),
(770, 'A91', 'C1', 3),
(771, 'A91', 'C2', 1),
(772, 'A91', 'C3', 5),
(773, 'A91', 'C4', 5),
(774, 'A91', 'C5', 4),
(776, 'A92', 'C1', 3),
(777, 'A92', 'C2', 3),
(778, 'A92', 'C3', 3),
(779, 'A92', 'C4', 5),
(780, 'A92', 'C5', 4),
(782, 'A93', 'C1', 3),
(783, 'A93', 'C2', 1),
(784, 'A93', 'C3', 3),
(785, 'A93', 'C4', 4),
(786, 'A93', 'C5', 3),
(788, 'A94', 'C1', 3),
(789, 'A94', 'C2', 1),
(790, 'A94', 'C3', 3),
(791, 'A94', 'C4', 4),
(792, 'A94', 'C5', 3),
(794, 'A95', 'C1', 3),
(795, 'A95', 'C2', 1),
(796, 'A95', 'C3', 3),
(797, 'A95', 'C4', 4),
(798, 'A95', 'C5', 3),
(800, 'A96', 'C1', 1),
(801, 'A96', 'C2', 1),
(802, 'A96', 'C3', 3),
(803, 'A96', 'C4', 5),
(804, 'A96', 'C5', 4),
(806, 'A97', 'C1', 3),
(807, 'A97', 'C2', 1),
(808, 'A97', 'C3', 3),
(809, 'A97', 'C4', 4),
(810, 'A97', 'C5', 3),
(812, 'A98', 'C1', 3),
(813, 'A98', 'C2', 1),
(814, 'A98', 'C3', 3),
(815, 'A98', 'C4', 5),
(816, 'A98', 'C5', 4),
(818, 'A99', 'C1', 3),
(819, 'A99', 'C2', 1),
(820, 'A99', 'C3', 3),
(821, 'A99', 'C4', 4),
(822, 'A99', 'C5', 3),
(824, 'A100', 'C1', 3),
(825, 'A100', 'C2', 2),
(826, 'A100', 'C3', 3),
(827, 'A100', 'C4', 4),
(828, 'A100', 'C5', 3),
(830, 'A101', 'C1', 3),
(831, 'A101', 'C2', 1),
(832, 'A101', 'C3', 3),
(833, 'A101', 'C4', 4),
(834, 'A101', 'C5', 3),
(836, 'A102', 'C1', 1),
(837, 'A102', 'C2', 1),
(838, 'A102', 'C3', 3),
(839, 'A102', 'C4', 3),
(840, 'A102', 'C5', 1),
(842, 'A103', 'C1', 3),
(843, 'A103', 'C2', 3),
(844, 'A103', 'C3', 5),
(845, 'A103', 'C4', 5),
(846, 'A103', 'C5', 4),
(848, 'A104', 'C1', 1),
(849, 'A104', 'C2', 1),
(850, 'A104', 'C3', 1),
(851, 'A104', 'C4', 4),
(852, 'A104', 'C5', 3),
(854, 'A105', 'C1', 3),
(855, 'A105', 'C2', 5),
(856, 'A105', 'C3', 3),
(857, 'A105', 'C4', 5),
(858, 'A105', 'C5', 4),
(860, 'A47', 'C1', 3),
(861, 'A47', 'C2', 1),
(862, 'A47', 'C3', 5),
(863, 'A47', 'C4', 5),
(864, 'A47', 'C5', 5),
(866, 'A46', 'C1', 1),
(867, 'A46', 'C2', 1),
(868, 'A46', 'C3', 3),
(869, 'A46', 'C4', 3),
(870, 'A46', 'C5', 3),
(878, '567878888', 'C1', 5),
(879, '567878888', 'C2', 3),
(880, '567878888', 'C3', 3),
(881, '567878888', 'C4', 3),
(882, '567878888', 'C5', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_rel_kriteria`
--

CREATE TABLE `tb_rel_kriteria` (
  `ID` int(11) NOT NULL,
  `ID1` varchar(16) DEFAULT NULL,
  `ID2` varchar(16) DEFAULT NULL,
  `nilai` double(6,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rel_kriteria`
--

INSERT INTO `tb_rel_kriteria` (`ID`, `ID1`, `ID2`, `nilai`) VALUES
(507, 'C1', 'C4', 5.00),
(512, 'C5', 'C3', 0.33),
(506, 'C4', 'C4', 1.00),
(505, 'C4', 'C3', 0.50),
(504, 'C4', 'C2', 0.33),
(501, 'C1', 'C3', 5.00),
(502, 'C2', 'C3', 3.00),
(503, 'C4', 'C1', 0.20),
(517, 'C3', 'C5', 3.00),
(516, 'C2', 'C5', 5.00),
(515, 'C1', 'C5', 7.00),
(514, 'C5', 'C5', 1.00),
(513, 'C5', 'C4', 0.33),
(511, 'C5', 'C2', 0.20),
(510, 'C5', 'C1', 0.14),
(509, 'C3', 'C4', 2.00),
(508, 'C2', 'C4', 3.00),
(500, 'C3', 'C3', 1.00),
(499, 'C3', 'C2', 0.33),
(494, 'C1', 'C1', 1.00),
(495, 'C2', 'C1', 0.33),
(496, 'C2', 'C2', 1.00),
(497, 'C1', 'C2', 3.00),
(498, 'C3', 'C1', 0.20),
(518, 'C4', 'C5', 3.00);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user` varchar(16) DEFAULT NULL,
  `pass` varchar(16) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user`, `pass`) VALUES
('admin', 'ADMIN');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `password`) VALUES
(1, 'istna', 'istna.khisna@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(2, 'member', 'member@gmail.com', 'member', 'aa08769cdcb26674c6706093503ff0a3');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alternatif`
--
ALTER TABLE `tb_alternatif`
  ADD PRIMARY KEY (`kode_alternatif`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`kode_kriteria`);

--
-- Indexes for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tb_rel_kriteria`
--
ALTER TABLE `tb_rel_kriteria`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_rel_alternatif`
--
ALTER TABLE `tb_rel_alternatif`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=884;

--
-- AUTO_INCREMENT for table `tb_rel_kriteria`
--
ALTER TABLE `tb_rel_kriteria`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=530;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
