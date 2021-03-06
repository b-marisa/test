-- phpMyAdmin SQL Dump
-- version 4.4.15.5
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 24, 2018 at 02:10 AM
-- Server version: 5.6.34-log
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kcdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `quest`
--

CREATE TABLE IF NOT EXISTS `quest` (
  `id` int(11) NOT NULL,
  `game_id` int(4) NOT NULL,
  `wiki_id` char(4) NOT NULL,
  `name` varchar(200) NOT NULL,
  `detail` varchar(200) NOT NULL,
  `reward_fuel` int(4) NOT NULL DEFAULT '0',
  `reward_ammo` int(4) NOT NULL DEFAULT '0',
  `reward_steel` int(4) NOT NULL DEFAULT '0',
  `reward_bauxite` int(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=360 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `quest`
--

INSERT INTO `quest` (`id`, `game_id`, `wiki_id`, `name`, `detail`, `reward_fuel`, `reward_ammo`, `reward_steel`, `reward_bauxite`) VALUES
(1, 101, 'A01', 'はじめての「編成」！', '２隻以上の艦で構成される「艦隊」を編成せよ！', 20, 20, 0, 0),
(2, 102, 'A02', '「駆逐隊」を編成せよ！', '駆逐艦４隻以上で構成される「駆逐隊」を編成せよ！', 30, 30, 30, 0),
(3, 103, 'A03', '「水雷戦隊」を編成せよ！', '軽巡洋艦を旗艦とし、数隻の駆逐艦で構成される「水雷戦隊」を編成せよ！', 40, 40, 0, 40),
(4, 104, 'A04', '６隻編成の艦隊を編成せよ！', '全6隻で構成される主力艦隊を編成せよ！', 50, 0, 50, 0),
(5, 105, 'A05', '軽巡２隻を擁する隊を編成せよ！', '軽巡洋艦２隻を擁する高速艦隊を編成せよ！', 60, 60, 0, 0),
(6, 106, 'A07', '「重巡戦隊」を編成せよ！', '重巡洋艦２隻を擁する重巡艦隊を編成せよ！', 0, 70, 0, 30),
(7, 107, 'A12', '「空母機動部隊」を編成せよ！', '空母1隻以上を旗艦とし、その護衛艦艇と共に、空母機動部隊を編成せよ！', 50, 0, 0, 100),
(8, 108, 'A08', '「天龍」型軽巡姉妹の全２艦を編成せよ！', '天龍型軽巡洋艦「天龍」「龍田」を同一艦隊に配属せよ！', 100, 100, 100, 50),
(9, 109, 'A14', '「川内」型軽巡姉妹の全３艦を編成せよ！', '川内型軽巡洋艦「川内」「神通」「那珂」を同一艦隊に配属せよ！', 100, 0, 100, 0),
(10, 110, 'A15', '「妙高」型重巡姉妹の全４隻を編成せよ！', '妙高型重巡洋艦「妙高」「那智」「足柄」「羽黒」を同一艦隊に配属せよ！', 150, 100, 150, 100),
(11, 111, 'A17', '「扶桑」型戦艦姉妹の全２隻を編成せよ！', '扶桑型戦艦「扶桑」「山城」を同一艦隊に配属せよ！', 200, 200, 200, 200),
(12, 110, 'A15', '「妙高」型重巡姉妹の全４隻を編成せよ！', '妙高型重巡洋艦「妙高」「那智」「足柄」「羽黒」を同一艦隊に配属せよ！', 150, 100, 150, 100),
(13, 111, 'A17', '「扶桑」型戦艦姉妹の全２隻を編成せよ！', '扶桑型戦艦「扶桑」「山城」を同一艦隊に配属せよ！', 200, 200, 200, 200),
(14, 112, 'A18', '「伊勢」型戦艦姉妹の全２隻を編成せよ！', '伊勢型戦艦「伊勢」「日向」を同一艦隊に配属せよ！', 300, 200, 300, 200),
(15, 113, 'A13', '戦艦と重巡による主力艦隊を編成せよ！', '戦艦1隻以上、重巡2隻以上を主力とした水上打撃艦隊を編成せよ！', 0, 150, 0, 0),
(16, 116, 'A09', '「水上機母艦」を配備せよ！', '多数の水上偵察機を運用する「水上機母艦」を艦隊に配備せよ！', 0, 0, 0, 200),
(17, 117, 'A11', '第２艦隊で空母機動部隊を編成せよ！', '第２艦隊に空母を配備して、空母機動部隊を編成せよ！', 100, 0, 0, 100),
(18, 118, 'A16', '「金剛」型による高速戦艦部隊を編成せよ！', '金剛型戦艦「金剛」「比叡」「榛名」「霧島」全４隻の高速戦艦を集中配備せよ！', 0, 0, 0, 0),
(19, 119, 'A20', '「三川艦隊」を編成せよ！', '「鳥海」「青葉」「加古」「古鷹」「天龍」を含む高速艦隊を編成せよ！', 400, 0, 200, 0),
(20, 120, 'A10', '「第六駆逐隊」を編成せよ！', '「暁」「響」「雷」「電」4隻による第六駆逐隊を編成せよ！', 150, 150, 0, 0),
(21, 121, 'A21', '「第四戦隊」を編成せよ！', '「愛宕」「高雄」「鳥海」「摩耶」を基幹とした第四戦隊を編成せよ！', 300, 150, 0, 0),
(22, 122, 'A22', '「西村艦隊」を編成せよ！', '「扶桑」「山城」「最上」「時雨」を基幹とした西村艦隊を編成せよ！', 200, 200, 200, 0),
(23, 123, 'A23', '「第五航空戦隊」を編成せよ！', '「翔鶴」「瑞鶴」を基幹とし、駆逐艦2隻を加えた第五航空戦隊を編成せよ！', 300, 0, 0, 300),
(24, 124, 'A24', '新「三川艦隊」を編成せよ！', '「鳥海」「青葉」「衣笠」「加古」「古鷹」「天龍」からなる三川艦隊を編成せよ！', 300, 0, 300, 0),
(25, 125, 'A25', '潜水艦隊を編成せよ！', '伊号潜水艦2隻からなる潜水艦隊を編成せよ！', 150, 150, 0, 0),
(26, 126, 'A26', '航空水上打撃艦隊を編成せよ！', '航空戦艦2隻と航空巡洋艦2隻を基幹とする艦隊を編成せよ！', 0, 0, 200, 200),
(27, 127, 'A27', '中規模潜水艦隊を編成せよ！', '伊号潜水艦3隻以上からなる潜水艦隊を編成せよ！', 150, 150, 0, 0),
(28, 128, 'A28', '「第六戦隊」を編成せよ！', '「古鷹」「加古」「青葉」「衣笠」を基幹とした第六戦隊を編成せよ！', 250, 300, 0, 0),
(29, 129, 'A29', '「第五艦隊」を編成せよ！', '「那智」「足柄」「多摩」「木曾」を中核とした「第五艦隊」を編成せよ！', 200, 0, 300, 0),
(30, 130, 'A30', '「第一水雷戦隊」を編成せよ！', '「阿武隈」「曙」「潮」「霞」「不知火」を中核とした「第一水雷戦隊」を編成せよ！', 200, 300, 0, 0),
(31, 131, 'A31', '「第八駆逐隊」を編成せよ！', '「朝潮」「満潮」「大潮」「荒潮」4隻による第八駆逐隊を編成せよ！', 150, 150, 0, 0),
(32, 132, 'A32', '「第十八駆逐隊」を編成せよ！', '「霞」「霰」「陽炎」「不知火」4隻による第十八駆逐隊を編成せよ！', 180, 180, 0, 0),
(33, 133, 'A33', '「第三十駆逐隊(第一次)」を編成せよ！', '「睦月」「如月」「弥生」「望月」4隻による第三十駆逐隊(第一次)を編成せよ！', 200, 200, 0, 0),
(34, 134, 'WA01', '式の準備！(その参)', '第一艦隊旗艦に練度の高い(Lv.90以上～99以下)艦娘を配備して気持ちを整理せよ！', 88, 88, 88, 88),
(35, 135, 'WA02', '新たなる旅立ち！', '第一艦隊旗艦に強い絆を結んだLv.100以上の艦娘を配備した6隻の艦隊を編成せよ！', 200, 200, 200, 200),
(36, 136, 'A34', '「第三十駆逐隊(第二次)」を編成せよ！', '「睦月」「弥生」「卯月」「望月」4隻による第三十駆逐隊(第二次)を編成せよ！', 220, 220, 0, 0),
(37, 137, 'A35', '「第五戦隊」を編成せよ！', '「妙高」「那智」「羽黒」を基幹とした第五戦隊を編成せよ！', 0, 0, 300, 0),
(38, 138, 'A36', '新編「第二航空戦隊」を編成せよ！', '「飛龍改二」(※旗艦)及び「蒼龍」を基幹とした二航戦(要駆逐艦2隻)を編成せよ！', 0, 0, 0, 400),
(39, 139, 'A37', '潜水艦隊「第六艦隊」を編成せよ！', '「潜水母艦」と複数の潜水艦(4隻以上)からなる潜水艦隊「第六艦隊」を編成せよ！', 250, 250, 0, 0),
(40, 140, 'A38', '新型電探を配備せよ！', '新型電探運用試験のため、第一艦隊の旗艦に「妙高改二」を配備せよ！', 300, 0, 0, 300),
(41, 141, 'A39', '再編成「第二航空戦隊」を強化せよ！', '「蒼龍改二」(※旗艦)及び「飛龍改二」を基幹とした二航戦(要駆逐艦2隻)を編成せよ！', 0, 0, 0, 450),
(42, 142, 'A40', '精鋭「第三戦隊」全艦集結せよ！', '第二次改装を完了した改装金剛型高速戦艦4隻を集結させよ！', 0, 100, 0, 0),
(43, 143, 'A41', '「新型正規空母」を配備せよ！', '雲龍型航空母艦一番艦「雲龍」を第一艦隊機旗艦に配備せよ！', 100, 100, 100, 300),
(44, 144, 'A42', '主力戦艦部隊「第二戦隊」を編成せよ！', '長門型2隻及び扶桑型2隻の計4隻の主力戦艦からなる第二戦隊を編成せよ！', 0, 250, 250, 0),
(45, 145, 'A43', '戦艦を主力とした水上打撃部隊を編成せよ！', '大和型・長門型・伊勢型・扶桑型のいずれか3隻と軽巡1隻他の水上打撃部隊を配備せよ！', 300, 300, 0, 0),
(46, 146, 'A45', '改修工廠を準備せよ！', '第一艦隊の旗艦に工作艦「明石」を配備、改修工廠の準備を実施せよ！', 100, 0, 100, 0),
(47, 147, 'A44', '「西村艦隊」を再編成せよ！', '「扶桑」「山城」「最上」「時雨」「満潮」を基幹とした西村艦隊を編成せよ！', 300, 300, 0, 0),
(48, 148, 'A46', '軽快な「水上反撃部隊」を編成せよ！', '駆逐艦「霞」を旗艦とした重巡「足柄」及び軽巡1隻駆逐艦4隻の水上挺身部隊を編成せよ！', 250, 250, 0, 50),
(49, 149, 'A47', '「第十一駆逐隊」を編成せよ！', '特I型駆逐艦「吹雪」「白雪」「初雪」「叢雲」4隻による第十一駆逐隊を編成せよ！', 110, 110, 110, 0),
(50, 150, 'A48', '「第二一駆逐隊」を編成せよ！', '「初春」「子日」「若葉」「初霜」4隻による第二一駆逐隊を編成せよ！', 210, 210, 0, 0),
(51, 151, 'A49', '「第二二駆逐隊」を編成せよ！', '「皐月」「文月」「長月」他1隻計駆逐艦4隻による第二二駆逐隊を編成せよ！', 220, 220, 0, 0),
(52, 152, 'A50', '「三川艦隊」を新編、突入準備せよ！', '第一艦隊において、「鳥海改ニ」を旗艦とする「三川艦隊」を編成せよ！', 300, 300, 0, 0),
(53, 153, 'A51', '「第十八戦隊」を新編成せよ！', '軽巡洋艦「天龍」「龍田」を基幹戦力とした「第十八戦隊」を4隻以上で新編成せよ！', 180, 180, 0, 180),
(54, 154, 'A52', '海上突入部隊を編成せよ！', '戦艦「比叡」「霧島」軽巡「長良」駆逐艦「暁」「雷」「電」による海上突入部隊を編成せよ！', 0, 300, 0, 0),
(55, 155, 'A53', '新編「第六駆逐隊」を編成せよ！', '「暁改二」を旗艦とした「響」「雷」「電」4隻による第六駆逐隊を編成せよ！', 150, 150, 0, 0),
(56, 156, 'A54', '「第一水雷戦隊」北方突入準備！', '「阿武隈」を旗艦として「響」「初霜」「若葉」「五月雨」「島風」による一水戦を編成せよ！', 150, 150, 0, 0),
(57, 157, 'A55', '「第一水雷戦隊」北方再突入準備！', '「阿武隈改二」を旗艦として「響」「夕雲」「長波」「秋雲」「島風」の一水戦を再編成せよ！', 200, 200, 0, 0),
(58, 161, 'A56', '「第五航空戦隊」を再編成せよ！', '「翔鶴」「瑞鶴」と随伴駆逐艦「朧」「秋雲」を基幹とした第五航空戦隊を再編成せよ！', 300, 0, 0, 300),
(59, 162, 'A57', '新編「第二一戦隊」出撃準備！', '「那智改二」「足柄改二」及び「多摩」「木曾」を基幹とした、第二一戦隊を編成せよ！', 150, 150, 150, 0),
(60, 163, 'A58', '「第十六戦隊(第一次)」を編成せよ！', '「足柄」を旗艦として「球磨」「長良」を擁する、第十六戦隊(第一次)を編成せよ！', 150, 150, 150, 0),
(61, 164, 'A59', '「第三航空戦隊」を編成せよ！', '「瑞鶴改」を旗艦とし、「瑞鳳」「千歳」「千代田」を加えた4隻の空母部隊を編成せよ！', 200, 200, 0, 200),
(62, 165, 'A60', '「第四航空戦隊」を編成せよ！', '航空戦艦「伊勢改」及び「日向改」を基幹戦力とした第四航空戦隊を編成せよ！', 0, 200, 0, 200),
(63, 166, 'A61', '「小沢艦隊」を編成せよ！', '「瑞鶴改」旗艦、空母「瑞鳳改」「千歳」「千代田」及び「伊勢改」「日向改」を配備せよ！', 300, 0, 0, 300),
(64, 167, 'A62', '新航空戦隊を編成せよ！', '改二改装を終えた翔鶴型航空母艦2隻と同護衛艦による新航空戦隊を新編成せよ！', 0, 300, 300, 300),
(65, 168, 'A63', '「第十六戦隊(第二次)」を編成せよ！', '「名取」を旗艦として「五十鈴」「鬼怒」を擁する、第十六戦隊(第二次)を編成せよ！', 160, 160, 160, 0),
(66, 169, 'A64', '「新編成航空戦隊」を編成せよ！', '空母2隻+航空戦艦/航空巡洋艦2隻+駆逐艦2隻の新航空戦隊を編成せよ！', 0, 200, 0, 200),
(67, 170, 'A65', '精強な「水上反撃部隊」を再編成せよ！', '駆逐艦「霞」旗艦、「足柄」「大淀」「朝霜」「清霜」他の水上反撃部隊を再編成せよ！', 300, 300, 0, 0),
(68, 171, 'A66', '「第三十一戦隊(第一次)」を編成せよ！', '「五十鈴改二」旗艦、「皐月改二」「卯月改」を含む、対潜機動水上部隊を編成せよ！', 310, 310, 0, 0),
(69, 172, 'A67', '「第二七駆逐隊」を編成せよ！', '「白露改」旗艦、「時雨」「春雨」「五月雨」4隻による第二七駆逐隊を編成せよ！', 0, 270, 270, 0),
(70, 173, 'A68', '強行高速輸送部隊を編成せよ！', '「川内改二」旗艦、「江風改二」「時雨改二」他駆逐2隻による水雷戦隊を編成せよ！', 100, 100, 100, 0),
(71, 174, 'A69', '新編「水雷戦隊」を含む艦隊を再編成せよ！', '軽巡級を旗艦とした駆逐艦4隻からなる強力な水雷戦隊を含む艦隊を再編成せよ！', 200, 200, 0, 0),
(72, 175, 'A70', '新編「第八駆逐隊」を再編成せよ！', '「朝潮改二」を旗艦とした「満潮」「大潮」「荒潮」4隻による第八駆逐隊を再編成せよ！', 200, 200, 0, 0),
(73, 176, 'A71', '精鋭！八駆第一小隊！', '「朝潮改二丁」及び「大潮改二」を含む艦隊を編成せよ！', 250, 250, 0, 0),
(74, 177, 'A72', '「第十九駆逐隊」を編成せよ！', '特型駆逐艦「磯波」「浦波」「綾波」「敷波」4隻による第十九駆逐隊を編成せよ！', 190, 190, 190, 0),
(75, 178, 'A73', '「第十六戦隊(第三次)」を編成せよ！', '「鬼怒」「青葉」「北上」「大井」を擁する、第十六戦隊(第三次)を編成せよ！', 200, 200, 200, 0),
(76, 179, 'A74', '精鋭「第十六戦隊」を再編成せよ！', '「鬼怒改二」を旗艦として、「北上改二」「大井改二」「球磨改」及び<br>「青葉改」「浦波改」「敷波改」から5隻、計6隻の精鋭「第十六戦隊」を再編成せよ！', 300, 300, 0, 0),
(77, 180, 'A75', '新編「第一戦隊」を編成せよ！', '編成任務：第一艦隊に新改装された長門型戦艦一番艦「長門改二」及び同二番艦「陸奥改」からなる<br>新編第一戦隊を配備せよ！', 0, 880, 0, 0),
(78, 181, 'A76', '新編「第七戦隊」を編成せよ！', '編成任務：第一艦隊旗艦に新改装された改鈴谷型「熊野改二」、同二番艦に「鈴谷改二」、<br>僚艦に「最上改」「三隈改」を配した新編第七戦隊を配備せよ！', 0, 0, 0, 700),
(79, 182, 'A77', '精鋭「第四航空戦隊」を再編成せよ！', '編成任務：第一艦隊旗艦及び同二番艦に練度50以上の航空戦艦「伊勢」「日向」を配備、<br>随伴艦に軽巡洋艦1隻、駆逐艦2隻他を伴う精鋭「第四航空戦隊」を再編成せよ！', 0, 0, 0, 400),
(80, 183, 'A78', '新編「第四水雷戦隊」を編成せよ！', '編成任務：第一艦隊旗艦に「由良改二」を配備、随伴艦に二駆「村雨」「夕立」「春雨」「五月雨」<br>他1隻の駆逐艦を配備、新編「第四水雷戦隊」を編成せよ！', 400, 0, 0, 0),
(81, 184, 'A79', '精鋭「第二二駆逐隊」を再編成せよ！', '編成任務：「文月改二」「皐月改二」「水無月改」「長月改」の精強駆逐艦4隻の編成による<br>精鋭第二二駆逐隊を再編成せよ！', 220, 0, 220, 0),
(82, 185, 'A80', '精強「任務部隊」を編成せよ！', '編成任務：第一艦隊旗艦に「Saratoga Mk.II」または同「Mod.2」を配備、随伴艦に<br>軽巡洋艦1隻、駆逐艦2隻以上を配した夜間作戦可能な機動部隊を新編せよ！', 0, 300, 0, 300),
(83, 186, 'A81', '最精鋭「第八駆逐隊」を編成せよ！', '精鋭駆逐隊編成任務：「朝潮改二」「大潮改二」「荒潮改二」「満潮改二」の<br>最精鋭朝潮型駆逐艦4隻による新編「第八駆逐隊」の編成を完了せよ！', 300, 300, 0, 0),
(84, 187, 'A82', '「西村艦隊」第二戦隊随伴部隊、集結せよ！', '捷一号作戦準備任務：第一遊撃部隊第三部隊の中核となる第二戦隊の随伴艦を編成する。<br>各艦隊から艦艇を抽出、第三艦隊に「最上」「時雨」「満潮」「朝雲」「山雲」を配備せよ！', 0, 300, 300, 0),
(85, 188, 'A83', '精鋭「三一駆」第一小隊、抜錨準備！', '編成任務：「長波改二」旗艦、僚艦に「高波改」または「沖波改」「朝霜改」を配した、第三一駆逐隊第一小隊(2隻艦隊)を編成せよ！', 200, 200, 0, 0),
(86, 201, 'Bd01', '敵艦隊を撃破せよ！', '艦隊を出撃させ、敵艦隊を捕捉、これを撃滅せよ！', 50, 50, 0, 0),
(87, 202, 'B01', 'はじめての「出撃」！', '艦隊を出撃させ、敵艦隊と交戦せよ！', 20, 20, 0, 0),
(88, 203, 'B02', '鎮守府正面海域を護れ！', '鎮守府正面海域に艦隊を出撃させ、敵艦の跳梁を阻止せよ！', 30, 30, 30, 0),
(89, 204, 'B04', '南西諸島沖に出撃せよ！', '南西諸島沖に艦隊を出撃させ、敵艦隊と交戦せよ！', 40, 40, 0, 0),
(90, 205, 'B05', '接近する「敵前衛艦隊」を迎撃せよ！', '南西諸島沖に接近する「敵前衛艦隊」を捕捉、これを撃滅せよ！', 50, 0, 50, 0),
(91, 206, 'B06', '「水雷戦隊」で出撃せよ！', '軽巡洋艦1隻を旗艦とし、複数の駆逐艦からなる水雷戦隊で出撃せよ！', 60, 60, 0, 60),
(92, 207, 'B07', '「重巡洋艦」を出撃させよ！', '重巡洋艦を旗艦とした艦隊を編成、これを出撃させよ！', 70, 0, 70, 0),
(93, 208, 'B08', '「戦艦」を出撃させよ！', '海上の覇者、戦艦を旗艦とした艦隊を編成、これを出撃させよ！', 0, 150, 150, 0),
(94, 209, 'B09', '「空母機動部隊」出撃せよ！', '空母1隻とその護衛艦艇で構成した空母機動部隊を出撃させよ！', 200, 0, 0, 300),
(95, 210, 'Bd03', '敵艦隊を10回邀撃せよ！', '艦隊全力出撃！遊弋する敵艦隊を10回邀撃せよ！', 150, 150, 200, 100),
(96, 211, 'Bd04', '敵空母を３隻撃沈せよ！', '艦隊の脅威となる敵空母群。これを捕捉撃滅し、3隻轟沈せよ！', 150, 150, 150, 300),
(97, 212, 'Bd06', '敵輸送船団を叩け！', '敵の輸送船5隻以上を撃沈し、敵の補給路を寸断せよ！', 0, 200, 0, 0),
(98, 213, 'Bw03', '海上通商破壊作戦', '1週間で敵輸送船を20隻以上撃沈せよ！', 500, 0, 400, 0),
(99, 214, 'Bw01', 'あ号作戦', '1週間の全力出撃を行い、可能な限り多くの敵艦隊を捕捉、これを迎撃せよ！', 300, 300, 300, 100),
(100, 215, 'B03', '第２艦隊、出撃せよ！', '新たに編成した「第２艦隊」を出撃させよ！', 0, 0, 200, 200),
(101, 216, 'Bd02', '敵艦隊主力を撃滅せよ！', '艦隊を出撃させ、敵艦隊「主力」を捕捉！これを撃滅せよ！', 50, 50, 50, 50),
(102, 217, 'B10', '敵空母を撃沈せよ！', '敵機動部隊を捕捉し、これを邀撃、敵空母を轟沈せよ！', 0, 0, 0, 100),
(103, 218, 'Bd05', '敵補給艦を3隻撃沈せよ！', '艦隊を出撃させ、敵補給艦を捕捉、これを撃滅せよ！', 100, 50, 200, 50),
(104, 219, 'B11', '「三川艦隊」出撃せよ！', '新編成した「三川艦隊」で出撃せよ！', 0, 200, 0, 0),
(105, 220, 'Bw02', 'い号作戦', '有力な母艦航空隊で1週間の全力出撃を行い、可能な限り多くの敵空母を撃滅せよ！', 0, 500, 0, 500),
(106, 221, 'Bw04', 'ろ号作戦', '1週間の全力出撃を行い、敵輸送船団を捕捉・撃滅、敵の補給路を寸断せよ！', 400, 0, 800, 0),
(107, 222, 'B12', '「第六駆逐隊」出撃せよ！', '「暁」「響」「雷」「電」による第六駆逐隊、出撃せよ！', 200, 0, 0, 0),
(108, 223, 'B13', '「第四戦隊」出撃せよ！', '「愛宕」「高雄」「鳥海」「摩耶」を基幹とする第四戦隊で、バシー島沖の敵を撃滅せよ！', 150, 100, 150, 100),
(109, 224, 'B14', '「西村艦隊」出撃せよ！', '「扶桑」「山城」「最上」「時雨」を基幹とする西村艦隊で、オリョール海の敵を撃滅せよ！', 400, 0, 400, 0),
(110, 225, 'B15', '「第五航空戦隊」出撃せよ！', '「翔鶴」「瑞鶴」を基幹とする第五航空戦隊で、北方海域モーレイ海の敵を撃滅せよ！', 200, 200, 0, 700),
(111, 226, 'Bd07', '南西諸島海域の制海権を握れ！', '艦隊を南西諸島海域に全力出撃させ、多数の敵艦隊「主力」群を捕捉、撃滅せよ！', 300, 0, 0, 200),
(112, 227, 'B16', '新「三川艦隊」出撃せよ！', '完全編成した「三川艦隊」をもって、オリョール海の敵を撃滅せよ！', 100, 150, 100, 150),
(113, 228, 'Bw05', '海上護衛戦', '有力な対潜能力を持つ海上護衛隊によって、可能な限り多くの敵潜水艦を撃滅せよ！', 600, 0, 0, 0),
(114, 229, 'Bw06', '敵東方艦隊を撃滅せよ！', '西方海域に出撃し、敵東方艦隊の主力を捕捉、これを撃滅せよ！', 400, 0, 0, 700),
(115, 230, 'Bd08', '敵潜水艦を制圧せよ！', '対潜能力の充実した艦隊で出撃、敵潜水艦狩りを実施せよ！', 300, 30, 300, 30),
(116, 231, 'B17', '「潜水艦隊」出撃せよ！', '伊号潜水艦2隻からなる潜水艦隊でオリョール海の敵を撃滅せよ！', 150, 0, 300, 0),
(117, 232, 'B18', '「航空水上打撃艦隊」出撃せよ！', '航空戦艦2隻と航空巡洋艦2隻を基幹とする艦隊でカレー洋の制海権を握れ！', 0, 150, 0, 300),
(118, 233, 'B19', '「第六戦隊」出撃せよ！', '編成した「第六戦隊」をもって出撃し、オリョール海の敵を撃滅「完全勝利」せよ！', 0, 150, 0, 300),
(119, 239, 'B20', '「第八駆逐隊」出撃せよ！', '編成した「第八駆逐隊」を含む艦隊で出撃し、オリョール海の敵を撃滅せよ！', 0, 100, 400, 0),
(120, 240, 'B21', '「第十八駆逐隊」出撃せよ！', '編成した「第十八駆逐隊」を含む艦隊で出撃し、北方海域モーレイ海の敵を撃滅せよ！', 0, 100, 0, 400),
(121, 241, 'Bw07', '敵北方艦隊主力を撃滅せよ！', '北方海域の深部に出撃し、敵北方艦隊の主力艦隊を捕捉、これを撃滅せよ！', 300, 300, 400, 300),
(122, 242, 'Bw08', '敵東方中枢艦隊を撃破せよ！', '西方海域カスガダマ島沖に出撃し、敵東方中枢艦隊を捕捉、これを撃破せよ！', 500, 0, 500, 0),
(123, 243, 'Bw09', '南方海域珊瑚諸島沖の制空権を握れ！', '南方海域珊瑚諸島沖に出撃し、敵機動部隊本体を捕捉撃滅、これに完全勝利せよ！', 0, 300, 0, 800),
(124, 244, 'B22', '「第三十駆逐隊(第一次)」出撃せよ！', '「第三十駆逐隊(第一次)」を含む艦隊で出撃し、キス島沖の主力艦隊と交戦せよ！', 100, 100, 100, 500),
(125, 245, 'WB01', '式の準備！(最終)', '練度の高い(Lv.90～99)第一艦隊旗艦で出撃し、オリョール海の暁に勝利を刻め！', 0, 0, 0, 0),
(126, 246, 'WB02', '二人でする初めての任務！', '強い絆を結んだ艦娘を旗艦とした第一艦隊でリランカ島へ出撃、敵中枢を撃滅せよ！', 300, 300, 300, 300),
(127, 247, 'B23', '「航空戦艦」抜錨せよ！', '航空戦艦2隻を基幹とする艦隊で、西方海域カスガダマ島の敵勢力を撃破せよ！', 0, 300, 300, 900),
(128, 248, 'B24', '「第三十駆逐隊」対潜哨戒！', '「第三十駆逐隊(第二次)」は直ちに抜錨！鎮守府正面の対潜哨戒を実施せよ！', 330, 330, 330, 0),
(129, 249, 'Bm01', '「第五戦隊」出撃せよ！', '「第五戦隊」は沖ノ島沖の戦闘哨戒を実施、敵艦隊主力を捕捉、これを撃滅せよ！', 0, 550, 550, 0),
(130, 250, 'B25', '新編「第二航空戦隊」出撃せよ！', '新編「二航戦」を基幹とした艦隊で、珊瑚諸島沖に出撃、敵機動部隊を撃滅せよ！', 0, 500, 0, 500),
(131, 251, 'B26', '精鋭「第二航空戦隊」抜錨せよ！', '錬成を終え再編成「二航戦」を基幹とした艦隊で、敵リランカ島を空襲、破砕せよ！', 500, 0, 500, 0),
(132, 252, 'B27', '戦艦「榛名」出撃せよ！', '第二次改装実施した「榛名」を基幹とした艦隊で「南方海域」へ進出、敵艦隊主力を撃滅せよ！', 100, 0, 0, 0),
(133, 253, 'B28', '「第六〇一航空隊」出撃せよ！', '雲龍型航空母艦「雲龍改」含む機動部隊で珊瑚島沖に出撃、敵機動部隊を撃滅せよ！', 0, 300, 0, 300),
(134, 254, 'B29', '「軽空母」戦隊、出撃せよ！', '軽空母1～2隻、軽巡1隻、駆逐艦3～4隻の艦隊でカムラン半島の敵を撃滅せよ！', 0, 300, 0, 300),
(135, 255, 'B30', '「水雷戦隊」バシー島沖緊急展開', '軽巡を旗艦とした水雷戦隊(軽巡最大2隻他駆逐艦)でバシー島沖の敵を撃滅せよ！', 300, 300, 0, 0),
(136, 256, 'Bm02', '「潜水艦隊」出撃せよ！', '潜水艦戦力を中核とした艦隊で中部海域哨戒線へ反復出撃、敵戦力を漸減せよ！', 0, 600, 0, 0),
(137, 257, 'Bm03', '「水雷戦隊」南西へ！', '軽巡旗艦の水雷戦隊(軽巡最大3隻他駆逐艦)を急派、南西諸島防衛線で敵を撃滅せよ！', 500, 0, 0, 300),
(138, 258, 'B31', '「第二戦隊」抜錨！', '「第二戦隊」を基幹とした艦隊でカレー洋に進出、反復出撃により敵海上兵力を撃滅せよ！', 0, 400, 0, 0),
(139, 259, 'Bm04', '「水上打撃部隊」南方へ！', '戦艦3隻軽巡1隻他を基幹とした水上打撃部隊で南方海域へ進出、敵艦隊を撃滅せよ！', 350, 400, 350, 0),
(140, 260, 'B32', '「戦艦部隊」北方海域に突入せよ！', '戦艦2隻と直援軽空母1隻(正規空母無し)基幹の艦隊で北方AL海域に突入、敵を撃滅せよ！', 0, 500, 0, 250),
(141, 261, 'Bw10', '海上輸送路の安全確保に努めよ！', '鎮守府正面の対潜哨戒を反復実施し、安全な海上輸送路を確保せよ！', 100, 0, 0, 0),
(142, 262, 'B33', '「西村艦隊」南方海域へ進出せよ！', '「西村艦隊」を南方海域に進出させ、敵主力艦隊へ突入、これを撃滅せよ！', 0, 0, 500, 300),
(143, 263, 'B34', '「第六戦隊」南西海域へ出撃せよ！', '「古鷹」「加古」「青葉」「衣笠」を基幹とした「第六戦隊」で、沖ノ島沖の敵艦隊を撃滅せよ！', 0, 400, 0, 400),
(144, 264, 'Bm06', '「空母機動部隊」西へ！', '航空母艦2隻(随伴駆逐艦2隻)を基幹とする空母機動艦隊で、カレー洋の敵艦隊を撃滅せよ！', 0, 0, 600, 800),
(145, 265, 'Bm05', '海上護衛強化月間', '鎮守府正面海域の対潜哨戒を強化し、敵潜水艦を制圧、安全な海上輸送体制を確立せよ！', 800, 0, 0, 0),
(146, 266, 'Bm07', '「水上反撃部隊」突入せよ！', '駆逐艦を旗艦とした重巡1隻軽巡1隻駆逐艦4隻からなる水上挺身部隊、沖ノ島沖に突入せよ！', 0, 600, 0, 200),
(147, 267, 'B35', '「第十一駆逐隊」出撃せよ！', '「第十一駆逐隊」を含む艦隊で出撃し、オリョール海の敵を撃破せよ！', 0, 300, 300, 0),
(148, 268, 'B36', '「第十一駆逐隊」対潜哨戒！', '「第十一駆逐隊」を含む艦隊で鎮守府正面へ展開、対潜哨戒を実施せよ！', 400, 0, 0, 200),
(149, 269, 'B37', '「第二一駆逐隊」出撃せよ！', '「第二一駆逐隊」を含む艦隊で出撃し、北方海域モーレイ海の敵を撃滅せよ！', 300, 300, 300, 0),
(150, 270, 'B39', '「第二二駆逐隊」出撃せよ！', '「第二二駆逐隊」を含む艦隊で南西諸島防衛線に出撃、敵主力艦隊を撃滅せよ！', 0, 0, 0, 400),
(151, 271, 'B38', '「那智戦隊」抜錨せよ！', '旗艦「那智」及び「初霜」「霞」「潮」「曙」他1隻の艦隊でバシー島沖の敵を撃滅せよ！', 500, 300, 0, 0),
(152, 272, 'B40', '「改装防空重巡」出撃せよ！', '摩耶改または摩耶改二及び軽巡1駆逐2隻を含む艦隊でオリョール海の敵艦隊を撃滅せよ！', 300, 0, 300, 0),
(153, 273, 'B41', '新編「三川艦隊」ソロモン方面へ！', '第一艦隊に編成した「三川艦隊」を南方海域に進出させ、同方面の敵艦隊を撃滅せよ！', 480, 480, 0, 0),
(154, 274, 'B42', '「第六駆逐隊」対潜哨戒なのです！', '「第六駆逐隊」を含む艦隊で鎮守府正面へ展開、対潜哨戒を実施せよ！', 200, 200, 200, 0),
(155, 275, 'B43', '抜錨！「第十八戦隊」', '「天龍」「龍田」を基幹戦力とした「第十八戦隊」で出撃し、オリョール海の敵主力を撃滅せよ！', 350, 0, 0, 250),
(156, 276, 'B44', '海上突入部隊、進発せよ！', '「比叡」「霧島」「長良」「暁」「雷」「電」の艦隊で、南方海域進出作戦を実施、敵を撃滅せよ！', 500, 0, 500, 0),
(157, 277, 'B45', '「第六駆逐隊」対潜哨戒を徹底なのです！', '「第六駆逐隊」を含む艦隊で鎮守府正面で対潜哨戒を実施、敵潜水艦部隊を痛打せよ！', 300, 300, 0, 0),
(158, 278, 'B46', '「第一水雷戦隊」ケ号作戦、突入せよ！', '北方突入準備を完了した「一水戦」で北方キス島に突入！包囲網を破り、友軍を救出せよ！', 0, 300, 0, 400),
(159, 279, 'B47', '「第一水雷戦隊」北方ケ号作戦、再突入！', '北方再突入準備の新編「一水戦」で北方キス島に再突入を敢行、同撤収作戦を完遂せよ！', 0, 400, 0, 500),
(160, 285, 'B49', '「空母機動部隊」北方海域に進出せよ！', '航空母艦を旗艦とした空母機動部隊を北方AL海域方面に展開、敵戦力を撃滅せよ！', 500, 0, 500, 0),
(161, 286, 'B48', '鎮守府正面の対潜哨戒を強化せよ！', '鎮守府正面の対潜哨戒を強化し、海上資源輸送路の安全を確立せよ！', 300, 300, 0, 0),
(162, 287, 'B50', '「第五航空戦隊」珊瑚諸島沖に出撃せよ！', '再編成した「第五航空戦隊」を珊瑚諸島沖に展開、敵機動部隊を捕捉撃滅せよ！', 0, 500, 0, 0),
(163, 288, 'B51', '新編「第二一戦隊」北方へ出撃せよ！', '新編「第二一戦隊」を基幹とする艦隊で北方海域モーレイ海に出撃、敵を撃滅せよ！', 300, 300, 0, 0),
(164, 289, 'B52', '「第十六戦隊(第一次)」出撃せよ！', '「第十六戦隊(第一次)」をバシー島沖に展開、敵艦隊を撃滅せよ！', 200, 0, 200, 0),
(165, 293, 'B53', '「第三航空戦隊」南西諸島防衛線に出撃！', '編成した「第三航空戦隊」を南西諸島防衛線に展開、敵侵攻艦隊を捕捉撃滅せよ！', 0, 0, 300, 0),
(166, 294, 'B54', '「小沢艦隊」出撃せよ！', '「小沢艦隊」を沖ノ島海域前面に展開し、侵攻する敵機動部隊を捕捉、これを撃滅せよ！', 300, 0, 300, 300),
(167, 295, 'B55', '「第十六戦隊(第二次)」出撃せよ！', '「第十六戦隊(第二次)」をオリョール海に展開、敵主力艦隊を捕捉、これを撃滅せよ！', 320, 0, 320, 0),
(168, 296, 'B56', '新編成航空戦隊、北方へ進出せよ！', '「新編成航空戦隊」をアルフォンシーノ方面へ進出、敵泊地の機動部隊を撃滅せよ！', 0, 400, 0, 400),
(169, 297, 'B57', '「礼号作戦」実施せよ！', '精強な「水上反撃部隊」で、南西諸島沖ノ島沖に突入！同海域の敵戦力を撃滅せよ！', 300, 700, 0, 0),
(170, 301, 'C01', 'はじめての「演習」！', '他の提督(プレイヤー)の艦隊と「演習」を行おう！', 10, 10, 0, 0),
(171, 302, 'C04', '大規模演習', '今週中に「演習」で他の提督の艦隊に対して20回「勝利」しよう！', 200, 200, 200, 200),
(172, 303, 'C02', '「演習」で練度向上！', '本日中に他の司令官の艦隊に対して3回「演習」を挑もう！', 50, 0, 0, 50),
(173, 304, 'C03', '「演習」で他提督を圧倒せよ！', '本日中に他の司令官の艦隊との「演習」で5回以上「勝利」をおさめよう！', 0, 50, 0, 50),
(174, 306, 'WC01', '式の準備！(その弐)', '本日中に「演習」で2回以上「勝利」をおさめ、式への気持ちを整理しよう！', 0, 0, 88, 88),
(175, 307, 'C05', '艦隊の練度向上に努めよ！', '作戦前に艦隊の練度向上を図る！本日中に「演習」で3回以上「勝利」をおさめよう！', 0, 0, 300, 300),
(176, 308, 'C06', '演習を強化、艦隊の練度向上に努めよ！', '艦隊のさらなる練度向上を図る！本日中に「演習」で4回以上「勝利」をおさめよう！', 0, 300, 0, 0),
(177, 309, 'C07', '北方再突入に備え、練度向上に努めよ！', '艦隊再突入に備え、艦隊練度向上を図る！本日中に「演習」で4回以上「勝利」せよ！', 300, 0, 0, 0),
(178, 311, 'C08', '精鋭艦隊演習', '同日中に「演習」で7回以上「勝利」をおさめ、我が精鋭艦隊の練度を示そう！', 0, 400, 0, 200),
(179, 312, 'C09', '上陸部隊演習', '島嶼攻略部隊の練度向上のため、本日中に演習で4回以上「勝利」せよ！', 0, 200, 200, 0),
(180, 313, 'C10', '秋季大演習', '秋の一日中に「演習」で8回以上「勝利」をおさめ、艦隊のさらなる練度に努めよ！', 1000, 0, 300, 0),
(181, 314, 'C11', '冬季大演習', '冬の一日中に「演習」で8回以上「勝利」をおさめ、艦隊のさらなる練度に努めよ！', 300, 1000, 0, 0),
(182, 316, 'C13', '輸送部隊の練度向上に努めよ！', '演習任務：輸送部隊の練度向上を図る！本日中に演習で4回以上「勝利」せよ！', 300, 300, 0, 0),
(183, 317, 'C15', '甲型駆逐艦の戦力整備計画', '甲型駆逐艦整備任務：甲型駆逐艦【夕雲型/陽炎型】を2隻以上配備した第一艦隊で演習で3回「勝利」、<br>その後、同艦隊を南西諸島海域に投入。各出撃で得られた戦訓を艦隊型駆逐艦戦力整備に活用せよ！', 0, 350, 0, 350),
(184, 401, 'D01', 'はじめての「遠征」！', '艦隊を「遠征」に出発させよう！', 30, 30, 30, 30),
(185, 402, 'D02', '「遠征」を３回成功させよう！', '本日中に「遠征」３回成功させよう！', 100, 100, 100, 100),
(186, 403, 'D03', '「遠征」を１０回成功させよう！', '本日中に「遠征」10回成功させよう！', 150, 300, 300, 150),
(187, 404, 'D04', '大規模遠征作戦、発令！', '今週中に「遠征」30回成功させよう！', 300, 500, 500, 300),
(188, 405, 'D05', '第一次潜水艦派遣作戦', 'はじめての潜水艦派遣作戦を成功させよう！', 0, 0, 10, 10),
(189, 406, 'D06', '第二次潜水艦派遣作戦', '第二次潜水艦派遣作戦を成功させよう！', 0, 0, 10, 10),
(190, 408, 'D07', '潜水艦派遣作戦による技術入手の継続！', '第三次及び第四次潜水艦派遣作戦を成功させ、他国製技術の導入に努めよ！', 0, 0, 0, 800),
(191, 409, 'D08', '潜水艦派遣による海外艦との接触作戦', '有力な潜水艦隊派遣による海外艦との接触作戦を成功させよ！', 0, 100, 0, 0),
(192, 410, 'D09', '南方への輸送作戦を成功させよ！', '激戦海域である南方海域への「東京急行」系遠征を敢行、これを成功させよ！', 150, 0, 0, 0),
(193, 411, 'D11', '南方への鼠輸送を継続実施せよ！', '今週中に「東京急行」系遠征を継続的に実施、同種作戦を7回成功させよう！', 400, 0, 0, 400),
(194, 412, 'D10', '航空火力艦の運用を強化せよ！', '「航空戦艦運用演習」を実施し、航空火力艦の運用の強化に努めよ！', 0, 0, 0, 100),
(195, 413, 'D12', '(続)航空火力艦の運用を強化せよ！', '「航空戦艦運用演習」を継続実施し、航空火力艦の運用の強化に引き続き努めよ！', 0, 0, 0, 200),
(196, 414, 'D13', '遠洋潜水艦作戦を実施せよ！', '「遠洋潜水艦作戦」を実施し、潜水艦隊の練度向上と敵艦隊漸減に努めよ！', 0, 200, 0, 0),
(197, 415, 'D14', '遠洋潜水艦作戦の成果を拡大せよ！', '「遠洋潜水艦作戦」を継続実施し、潜水艦隊の練度向上と敵艦隊漸減に努めよ！', 0, 400, 0, 0),
(198, 416, 'D15', '防空射撃演習を実施せよ！', '「防空射撃演習」を複数回実施し、艦隊の防空能力を高めよ！', 0, 200, 0, 200),
(199, 417, 'D16', '囮機動部隊支援作戦を実施せよ！', '「囮機動部隊支援作戦」を実施し、これを成功させよ！', 400, 0, 0, 400),
(200, 418, 'D17', '観艦式予行を実施せよ！', '観艦式を実施する。予行として「観艦式予行」を複数回実施し、これを2回成功させよ！', 150, 0, 0, 150),
(201, 419, 'D18', '観艦式を敢行せよ！', '練度の高い艦隊で観艦式本番を実施する。「観艦式」を実施し、これを成功させよ！', 300, 300, 300, 0),
(202, 420, 'D19', '機動部隊の運用を強化せよ！', '機動部隊遠征を実施、「MO作戦」及び「敵母港空襲作戦」を展開、これを成功させよ！', 200, 200, 400, 0),
(203, 422, 'D20', '潜水艦派遣作戦による航空機技術入手', '潜水艦派遣作戦により、新型航空機技術の導入に努めよ！', 0, 100, 0, 100),
(204, 423, 'D21', '潜水艦派遣作戦による噴式技術の入手', '鉄鋼5,000及びボーキサイト1,500を準備して、潜水艦派遣作戦により<br>噴式エンジン技術の導入に努めよ！※任務達成後、準備した資源は消費します。', 100, 0, 0, 100),
(205, 424, 'D22', '輸送船団護衛を強化せよ！', '遠征任務：「海上護衛任務」を反復実施し、輸送船団の護衛に務めよ！', 1000, 0, 0, 300),
(206, 425, 'D23', '海上護衛総隊、遠征開始！', '遠征任務：遠征任務「対潜警戒任務」「海上護衛任務」「タンカー護衛任務」を実施、<br>軽巡、駆逐艦、海防艦などから編成された護衛艦隊で各遠征を成功させよ！', 700, 700, 0, 0),
(207, 426, 'D24', '海上通商航路の警戒を厳とせよ！', '遠征任務：遠征任務「警備任務」「対潜警戒任務」「海上護衛任務」「強行偵察任務」<br>を実施し、敵の通商破壊部隊を制圧、海上通商航路の安全を確保せよ！', 800, 0, 0, 0),
(208, 427, 'D25', '遠征「補給」支援体制を強化せよ！', '遠征補給支援体制の強化：鋼材800を用意し、遠征任務「兵站強化任務」を実施。<br>同遠征任務を成功させ、艦隊遠征時における「補給」支援体制の拡充に努めよ！', 200, 200, 0, 0),
(209, 428, 'D26', '近海に侵入する敵潜を制圧せよ！', '敵潜制圧任務：遠征任務「対潜警戒任務」「海峡警備行動」「長時間対潜警戒」を<br>それぞれ複数回実施し、近海に潜り込む敵潜部隊を制圧、我が領海から叩き出せ！', 0, 1000, 0, 300),
(210, 429, 'D27', '「捷一号作戦」、発動準備！', '捷一号作戦準備任務：遠征任務「警備任務」「兵站強化任務」及び「南西方面航空偵察作戦」<br>を実施。これを無事完遂し、南西方面での作戦準備にあたれ！', 0, 600, 0, 600),
(211, 501, 'E01', 'はじめての「補給」！', '補給は大事です！燃料・弾薬を艦に「補給」しよう！', 0, 20, 0, 0),
(212, 502, 'E02', 'はじめての「入渠」！', '戦闘で傷ついた艦を「入渠」させて修理して、次の出撃に備えよう！', 0, 0, 30, 0),
(213, 503, 'E03', '艦隊大整備！', '各艦隊から整備が必要な艦を5隻以上ドック入りさせ、大規模な整備をしよう！', 30, 30, 30, 30),
(214, 504, 'E04', '艦隊酒保祭り！', '艦隊酒保祭り！各艦に延べ15回以上の補給を実施しよう！', 50, 50, 50, 50),
(215, 601, 'F01', 'はじめての「建造」！', '「工廠」で鋼材などの資材を使って新しい艦を「建造」しよう！', 50, 50, 50, 50),
(216, 602, 'F02', 'はじめての「開発」！', '「工廠」でボーキサイトなどの資材を使って新しい装備アイテムを「開発」しよう！', 100, 100, 100, 100),
(217, 603, 'F03', 'はじめての「解体」！', '「工廠」で不要な艦を「解体」してみよう！', 60, 60, 60, 60),
(218, 604, 'F04', 'はじめての「廃棄」！', '「工廠」で装備アイテムを「廃棄」してみよう！', 80, 80, 80, 80),
(219, 605, 'F05', '新装備「開発」指令', '「工廠」で装備アイテムを新たに「開発」しよう(失敗もOK)！', 40, 40, 40, 40),
(220, 606, 'F06', '新造艦「建造」指令', '「工廠」で艦娘を本日中に新たに「建造」しよう！', 50, 50, 50, 50),
(221, 607, 'F07', '装備「開発」集中強化！', '「工廠」で装備アイテムを本日中に3回「開発」しよう(失敗もOK)！', 100, 100, 100, 100),
(222, 608, 'F08', '艦娘「建造」艦隊強化！', '艦隊強化のため、「工廠」で艦娘を本日中に3隻「建造」しよう！', 200, 200, 300, 100),
(223, 609, 'F09', '軍縮条約対応！', '少し艦隊規模が大きくなりすぎました！「工廠」で不要な艦を2隻「解体」してください！', 0, 0, 0, 50),
(224, 610, 'F10', '「大型艦建造」の準備！(その弐)', '大型艦建造の準備をします！「工廠」で装備アイテムを4回「廃棄」してみてください！', 800, 800, 0, 0),
(225, 611, 'WF01', '式の準備！(その壱)', '式の準備をします！「工廠」で装備アイテムを2回「廃棄」して身の回りの整理を！', 88, 88, 0, 0),
(226, 612, 'F11', '輸送用ドラム缶の準備', '「工廠」で装備アイテムを3回「廃棄」して、輸送用のドラム缶を準備します。', 0, 0, 30, 0),
(227, 613, 'F12', '資源の再利用', '「工廠」で余剰の装備アイテムをなるべく多く「廃棄」して、鋼材の再利用に努めよう！', 0, 0, 100, 0),
(228, 614, 'F13', '機種転換', '「九七式艦攻(友永隊)」搭載空母を秘書艦にした状態で新たに「天山」を2つ廃棄！', 0, 0, 0, 50),
(229, 615, 'F14', '機種転換', '「九九式艦爆(江草隊)」搭載空母を秘書艦にした状態で新たに「彗星」を2つ廃棄！', 0, 0, 0, 50),
(230, 616, 'F15', '機種転換', '「零戦52型丙(六〇一空)」搭載空母を秘書艦にした状態で新たに「烈風」を2つ廃棄！', 0, 0, 0, 50),
(231, 617, 'F16', '「伊良湖」の準備', '「工廠」で不要な装備アイテムをいくつか「廃棄」して、新型給糧艦召喚の準備をしましょう！', 100, 0, 0, 0),
(232, 618, 'F17', 'はじめての「装備改修」！', '「改修工廠」で「装備」を改修してみましょう！明石さん、お願いします！', 0, 0, 100, 0),
(233, 619, 'F18', '装備の改修強化', '「改修工廠」で「装備」の改修強化に努めます。', 0, 50, 0, 0),
(234, 622, 'F20', '機種転換', '「九七式艦攻(村田隊)」搭載「翔鶴」を秘書艦にして、新たに「天山」を2つ廃棄！', 0, 0, 0, 50),
(235, 623, 'F19', '精鋭「九七式艦攻」部隊の編成', '「翔鶴」または「赤城」を秘書艦にした状態で新たに「九七式艦攻」を3つ廃棄！', 0, 0, 0, 50),
(236, 624, 'F21', '試作艤装の準備', '「工廠」で装備アイテムを7つ「廃棄」して、「試製甲板カタパルト」を準備します。', 0, 0, 100, 0),
(237, 625, 'F23', '試製航空艤装の追加試作', '「工廠」で装備アイテムを9つ「廃棄」して、「試製甲板カタパルト」を追加試作します。', 0, 0, 100, 50),
(238, 626, 'F22', '精鋭「艦戦」隊の新編成', '要熟練搭乗員：練度max「零戦21型」搭載「鳳翔」秘書艦で「零戦21型」x2「九六艦戦」x1廃棄！', 0, 0, 0, 50),
(239, 627, 'F24', '機種転換', '「零戦21型(熟練)」搭載空母を秘書艦にして、新たに「零戦52型」を2つ廃棄！', 0, 0, 0, 50),
(240, 628, 'F25', '機種転換', '練度max「零戦21型(熟練)」搭載空母を秘書艦にして、新たに「零戦52型」を2つ廃棄！', 0, 0, 0, 50),
(241, 629, 'F26', '「艦戦」隊の再編成', '練度max「零戦52型(熟練)」搭載「瑞鶴」秘書艦で「零戦52型丙(六〇一空)」を廃棄！', 0, 0, 0, 50),
(242, 630, 'F28', '「艦戦」隊の再編成', '練度max「零戦21型(熟練)」搭載「瑞鶴」が秘書の状態で、「零戦21型」を2つ廃棄！', 0, 0, 0, 50),
(243, 631, 'F27', '機種転換＆部隊再編', '練度max「零戦52型丙(付岩井小隊)」搭載「瑞鶴」秘書艦で、「零戦62型(爆戦)」を2つ廃棄！', 0, 0, 0, 50),
(244, 632, 'F29', '機種転換', '練度max「零戦21型(付岩本小隊)」搭載「瑞鶴」秘書艦で、「零戦52型」を2つ廃棄！', 0, 0, 0, 50),
(245, 633, 'F30', '機種転換＆部隊再編', '部隊を再編する！練度max「零戦52型甲(付岩本小隊)」搭載「瑞鶴」秘書艦で、「彩雲」を2つ廃棄！', 0, 0, 0, 50),
(246, 634, 'F31', '新家具の準備', '「工廠」で装備アイテムを9つ「廃棄」して、新家具の準備をします。', 0, 0, 90, 0),
(247, 635, 'F32', '新装備の準備', '「工廠」で装備アイテムを5つ「廃棄」して、新装備配備の準備をします。', 0, 0, 50, 0),
(248, 636, 'F33', '上陸戦用新装備の調達', '「工廠」で「7.7mm機銃」及び「12.7mm単装機銃」を二つずつ廃棄！', 50, 0, 0, 0),
(249, 637, 'F35', '「熟練搭乗員」養成', '勲章x2消費：「鳳翔」秘書艦に練度max及び改修max「九六式艦戦」を搭載、熟練搭乗員を養成せよ！<br>(任務達成後、部隊は消滅します)', 0, 0, 0, 100),
(250, 638, 'F34', '対空機銃量産', '「機銃」系装備を量産し、工廠で6個廃棄！ 「装備改修」強化をサポートせよ！', 0, 100, 0, 200),
(251, 639, 'F36', '新型魚雷兵装の開発', '勲章x2消費：「島風」秘書艦に改修max「61cm五連装(酸素)魚雷」と<br>改修max「61cm三連装(酸素)魚雷」を装備！(任務達成後、各装備は消滅します)', 0, 600, 0, 0),
(252, 641, 'F37', '「航空基地設営」事前準備', '「航空基地設営」の事前準備を開始する。「ドラム缶(輸送用)」を二つ「工廠」で廃棄し、「7.7mm機銃」及び「九六式艦戦」を各二つずつ用意せよ！(任務達成後、用意した必要装備は消滅します)', 200, 0, 0, 200),
(253, 642, 'F38', '「陸攻」隊の増勢', '「基地航空隊」開設に向け、「陸攻」の追加調達を行う。「7.7mm機銃」及び<br>「九九式艦爆」を各二つずつ準備せよ！(任務達成後、同装備は消滅します)', 0, 200, 0, 200),
(254, 643, 'F39', '主力「陸攻」の調達', '主力陸上攻撃機「一式陸攻」の新規調達を行う。「零式艦戦21型」を二つ「工廠」で廃棄し、<br>「九六式陸攻」一つと「九七式艦攻」二つを準備せよ！(任務達成後、用意した必要装備は消滅します)', 250, 250, 0, 0),
(255, 644, 'F40', '「一式陸攻」性能向上型の調達', '「一式陸攻」性能向上型の配備を行う。「一式陸攻」一つと「天山」二つを準備せよ！<br>(任務達成後、用意した必要装備は消滅します/「一式陸攻」の熟練度は継承されます)', 0, 0, 0, 300),
(256, 645, 'F41', '「洋上補給」物資の調達', '「三式弾」一つを廃棄し、燃料750及び弾薬750と「ドラム缶(輸送用)」二つと「九一式徹甲弾」一つを<br>用意せよ！※任務達成後、用意した資源及び必要装備(徹甲弾は改修値の低いもの優先)は消滅します。', 0, 0, 0, 0),
(257, 646, 'F42', '「特注家具」の調達', '「25mm単装機銃」一つを廃棄、家具コイン5,000と「25mm連装機銃」及び「25mm三連装機銃」を各<br>二つ準備せよ！　※任務達成後、用意した家具コイン及び必要装備(改修値の低いもの優先)は消滅します。', 0, 0, 0, 100),
(258, 647, 'F43', '中部海域「基地航空隊」展開！', '「ドラム缶(輸送用)」二つを廃棄、燃料1200及びボーキサイト3000、さらに「設営隊」一つを準備せよ！<br>※任務達成後、用意した資源及び「設営隊」は消滅します。', 0, 0, 0, 0),
(259, 648, 'F44', '「特注家具」の調達', '「12.7cm連装高角砲」二つを廃棄し、家具コイン5,000と「14cm単装砲」及び「15.2cm単装砲」を各二つずつ準備せよ！　※任務達成後、用意した家具コイン及び必要装備(低改修を優先)は消費します。', 0, 100, 0, 0),
(260, 649, 'F45', '新機軸偵察機の開発', '新機軸の偵察機の調達を行う。「零式水上偵察機」を二つ「工廠」で廃棄し、<br>「一式陸攻」一つと「彩雲」二つを準備せよ！(任務達成後、用意した必要装備は消費します)', 0, 0, 0, 100),
(261, 650, 'F46', '噴式戦闘爆撃機の開発', 'ネ式エンジンを搭載した新型戦闘爆撃機の開発を行う。「紫電改二」三つを「工廠」で廃棄し、「新型航空機設計図」二つと「ネ式エンジン」一つを準備せよ！(任務達成後、用意した必要アイテムは消費します)', 0, 0, 0, 100),
(262, 651, 'F47', 'ネ式エンジンの増産', '噴式航空機生産のため、ネ式エンジンの増産を行う。「零式艦戦52型」三つを「工廠」で廃棄し、「流星」「烈風」各二つと鉄鋼8,000を準備せよ！※任務達成後、用意した必要装備と資源は消費します。', 0, 0, 0, 0),
(263, 652, 'F48', '「特注家具」の調達', '主砲「12.7cm連装砲」を二つ廃棄、家具コイン5,000と「7.7mm機銃」及び「九六式艦戦」各二つずつ<br>準備せよ！　※任務達成後、用意した家具コイン及び必要装備(低改修値のもの優先)は消費します。', 0, 0, 0, 100),
(264, 656, 'F49', '六三一空「晴嵐」隊の編成', '秘書艦に「伊401」または「伊14」または「伊13」を配備。「晴嵐」を一番スロットに搭載。「瑞雲(六三一空)」を二番スロットに搭載。「晴嵐(六三一空)」を新編せよ！　※任務達成後瑞雲は消滅します。', 0, 0, 0, 0),
(265, 657, 'SF03', '春の準備任務：桃の節句準備！', '春の準備任務：「14cm単装砲」を二つ廃棄、家具コイン5,000と「九九式艦爆」「61cm三連装魚雷」各二つを準備せよ！　※任務達成後、用意した家具コイン及び必要装備(低改修値のもの優先)は消費します。', 0, 0, 0, 0),
(266, 658, 'F50', '潜水艦武装の強化', '「61cm三連装魚雷」を四つ廃棄、開発資材x120と「61cm四連装(酸素)魚雷」「九三式水中聴音機」各三つを準備せよ！　※任務達成後、用意した開発資材及び必要装備(低改修値のもの優先)は消費します。', 0, 100, 0, 0),
(267, 659, 'F51', '精鋭「水戦」隊の新編成', '精鋭飛行隊の新編成：練度max及び改修maxの「二式水戦改」を一番スロットに搭載した秘書艦で、<br>「零式艦戦21型」x2「瑞雲」x2を廃棄！　※新飛行隊を編成する「熟練搭乗員」が必要です。', 0, 0, 0, 50),
(268, 660, 'F52', '精鋭「水戦」隊の増勢', '精鋭飛行隊の増勢：練度max及び改修maxの「二式水戦改」を一番スロットに搭載した秘書艦で、<br>「零式艦戦21型」x2「瑞雲」x2を廃棄！　※新飛行隊を編成する「熟練搭乗員」が必要です。', 0, 0, 0, 50),
(269, 661, 'F53', '新型砲墳兵装、戦力化開始！', '工廠任務：新型砲墳兵装の開発及び同戦力化を開始する。「副砲」系装備x10を廃棄、<br>鉄鋼6,000を準備せよ！　※任務達成後、準備した資源は消費します。', 0, 400, 0, 0),
(270, 662, 'F54', '新型艤装の開発研究', '工廠任務：新型艤装の開発研究を実施する。「中口径主砲」系装備x10を廃棄、鉄鋼12,000を準備せよ！<br>※任務達成後、準備した資源は消費します。「勲章」と「新型砲墳兵装資材」の獲得選択が可能です。', 0, 500, 0, 0),
(271, 663, 'F55', '新型艤装の継続研究', '工廠任務：新型艤装の開発を継続実施する。「大口径主砲」系装備x10を廃棄、鉄鋼18,000を準備せよ！<br>※任務達成後、準備した資源は消費します。「勲章」と「新型砲熕兵装資材」の獲得選択が可能です。', 0, 600, 0, 0),
(272, 664, 'F56', '電探技術の射撃装置への活用', '工廠任務：電探技術の射撃装置への活用を研究する。「電探」系装備x10を廃棄、弾薬及び鉄鋼を各8,000<br>準備せよ！※任務達成後、準備した資源は消費します。「勲章」と「兵装資材」の獲得選択が可能です。', 0, 0, 0, 300),
(273, 665, 'F57', '民生産業への協力', '工廠任務：軍需物資を放出し、民生産業に協力する。「小口径主砲」系装備x16を廃棄、燃料12,000を<br>準備せよ！※任務達成後、準備した資源は消費します。「勲章」と「兵装資材」の獲得選択が可能です。', 0, 0, 600, 0),
(274, 666, 'F58', '精鋭「瑞雲」隊の編成', '秘書艦「日向改」の四番スロットに改修max「瑞雲(六三四空)」を搭載して、ドラム缶(輸送用)x2を廃棄。<br>さらに「九九式艦爆」x2「瑞雲」x2を用意せよ！　※新飛行隊を編成する「熟練搭乗員」が必要です。', 0, 0, 0, 100),
(275, 667, 'F59', '民生産業への協力を継続せよ！', '工廠任務：軍需物資を放出し、民生産業への協力を継続する。「機銃」系装備x10を廃棄、鉄鋼15,000を<br>準備せよ！※任務達成後、準備した資源は消費します。「特注家具職人」と「勲章」の獲得選択が可能。', 0, 0, 0, 300),
(276, 668, 'F60', '新型戦闘糧食の試作', '料理任務：手軽に食事をとることができて、なおかつ美味しく腹にがっつりたまる新型の戦闘糧食を<br>開発する。「戦闘糧食」x2と燃料800及びボーキサイト150を用意せよ！油入れ送気開始！調理始め！', 0, 100, 0, 0),
(277, 669, 'F61', '夜戦型艦上戦闘機の開発', '練度&改修maxの「F6F-3」を秘書艦一番スロットに搭載、 「13号対空電探」x2 「22号対水上電探」x2<br>を廃棄、開発資材x30、改修資材x6、ボーキサイト5,000、「新型航空兵装資材」x1を準備せよ！', 0, 100, 0, 0),
(278, 670, 'F63', '夜戦型艦上戦闘機の性能強化', '練度&改修maxの「F6F-5」を秘書艦一番スロットに搭載、 「13号対空電探」x2 「22号対水上電探」x2<br>を廃棄、開発資材x40、改修資材x8、ボーキサイト6,000、「新型航空兵装資材」x1を準備せよ！', 0, 100, 0, 0),
(279, 671, 'F62', '夜間作戦型艦上攻撃機の開発', '「TBF」を秘書艦一番スロットに搭載、「13号対空電探」x2「22号対水上電探」x2廃棄、開発資材x40<br>改修資材x10、弾薬5,000、ボーキサイト8,000、「新型航空兵装資材」x1、「熟練搭乗員」を用意せよ！', 100, 0, 0, 0),
(280, 672, 'F64', '「遊撃部隊」艦隊司令部の創設', '遊撃部隊任務：「遊撃部隊 艦隊司令部」を創設する。「艦隊司令部施設」を秘書艦一番スロットに搭載、 <br>電探系装備x3を廃棄、開発資材x10、鋼材x2,000、そして「戦闘詳報」x2を準備せよ！', 0, 300, 0, 0),
(281, 673, 'F65', '装備開発力の整備', '工廠整備任務：装備開発力を整備する。「小口径主砲」系装備x4を廃棄せよ！', 0, 0, 100, 0),
(282, 674, 'F66', '工廠環境の整備', '工廠整備任務：工廠環境の重整備を実施する。「機銃」系装備x3を廃棄、鋼材300を準備せよ！<br>※任務達成後、準備した資源は消費します。', 0, 100, 0, 0),
(283, 675, 'F67', '運用装備の統合整備', '運用装備統合任務：装備の統合整備を実施する。「艦上戦闘機」系装備x6、「機銃」系装備x4を廃棄、<br>ボーキサイト800を準備(本任務は時局により更新されます)。　※任務達成後、準備資源を消費します。', 200, 0, 0, 200),
(284, 676, 'F68', '装備開発力の集中整備', '工廠環境の集中整備を実施する！「中口径主砲」系装備x3、「副砲」系装備x3、「ドラム缶(輸送用)」x1<br>を廃棄、鋼材2,400を準備せよ！　※任務達成後、準備した資源は消費します。', 0, 200, 0, 0),
(285, 701, 'G01', 'はじめての「近代化改修」！', '任意の艦を近代化改修(合成)して、強化せよ！', 0, 0, 50, 50),
(286, 702, 'G02', '艦の「近代化改修」を実施せよ！', '近代化改修を実施して、２回以上これを成功させよ！', 20, 20, 50, 0),
(287, 703, 'G03', '「近代化改修」を進め、戦備を整えよ！', '一週間の間に、近代化改修を１5回成功させよ！', 200, 200, 300, 100),
(288, 704, 'G04', '「大型艦建造」の準備！(その壱)', '大型艦/新型艦建造のための準備を行う。任意の艦で近代化改修を4回成功させよ！', 0, 0, 400, 400),
(289, 705, 'G05', '航空艤装の近代化改修', '鉄鋼5,500及びボーキサイト2,500を準備して、任意の正規空母の近代化改修を<br>[航空母艦]x5隻同時使用により2回成功させよ！※任務達成後、準備した資源は消費します。', 0, 0, 0, 0),
(290, 801, 'SB26', '謹賀新年！「水雷戦隊」出撃始め！', '新春特別任務：軽巡を旗艦とした水雷戦隊を鎮守府海域南西諸島沖及び南西諸島防衛線に展開！<br>両作戦海域において敵艦隊を邀撃、新年の暁に勝利を刻みなさい！二〇一八、水雷戦隊…抜錨ッ！', 0, 2018, 0, 0),
(291, 802, 'SB27', '新春「伊良湖」のお手伝い！', '新春特別任務：謹賀新年…提督、おめでとうございます！新春からお手伝い、ありがとうございます！<br>水上機母艦または巡洋艦級旗艦で、バシー島沖及び東部オリョール海に反復出撃、お願いします！', 0, 0, 2018, 0),
(292, 803, 'SB28', '護衛始め！「海上護衛隊」なお正月！', '新春特別任務：駆逐艦及び海防艦で編成された海上護衛隊(軽空母1隻配備可能)を編成、<br>鎮守府近海において近海対潜哨戒及び輸送船団護衛作戦を実施、各3回以上成功させよ！', 2018, 0, 0, 0),
(293, 804, 'SB29', '迎春！「空母機動部隊」全力出撃！', '新春特別任務：旗艦に航空母艦、護衛駆逐艦2隻以上を擁する機動部隊でサーモン海域北方に展開！<br>反復出撃によって、同艦域の敵戦力を撃破せよ！精鋭「空母機動部隊」、新春の海に抜錨せよ！', 0, 0, 0, 2018),
(294, 805, 'B58', '旗艦「霞」北方海域を哨戒せよ！', '旗艦「霞改二」で駆逐艦4隻を含む艦隊を北方海域に投入し、モーレイ海哨戒を実施せよ！', 300, 0, 300, 0),
(295, 806, 'B59', '旗艦「霞」出撃！敵艦隊を撃滅せよ！', '旗艦「霞改二」で駆逐艦3隻を含む艦隊で南西諸島沖ノ島沖に突入！敵主力を撃滅せよ！', 500, 500, 0, 0),
(296, 807, 'B60', '「第三十一戦隊」出撃せよ！', '第三十一戦隊(第一次)を鎮守府近海航路に出撃させ、同航路の安全確保に努めよ！', 0, 0, 600, 0),
(297, 808, 'B61', '「第二七駆逐隊」出撃せよ！', '「白露改」旗艦の第二七戦隊を含む艦隊をオリョール海に展開、同海域の敵艦隊を撃滅せよ！', 500, 0, 500, 0),
(298, 809, 'B62', '強襲上陸作戦用戦力を増強せよ！', '中部海域における航空偵察「K作戦」を実施しつつ、強襲上陸作戦用戦力の強化を図れ！', 0, 600, 0, 0),
(299, 810, 'B63', '製油所地帯を防衛せよ！', '水雷戦隊を製油所地帯沿岸に展開！同海域に出没する敵艦隊を三回以上撃滅せよ！', 400, 0, 0, 0),
(300, 811, 'B64', '南西諸島防衛線を強化せよ！', '南西諸島防衛線に有力な艦隊を展開、同方面に来襲する敵艦隊を五回以上撃滅せよ！', 0, 0, 400, 0),
(301, 812, 'B65', 'オリョール海の制海権を確保せよ！', '大潮を旗艦とする艦隊を東部オリョール海に反復出撃、同方面敵艦隊を完全撃滅せよ！', 0, 400, 0, 200),
(302, 813, 'B66', '旗艦「大潮」出撃せよ！', '「大潮改二」旗艦の有力な艦隊を北方AL海域に展開、北方海域戦闘哨戒を実施せよ！', 500, 500, 0, 0),
(303, 814, 'B68', '強行高速輸送部隊、出撃せよ！', '「江風改二」「時雨改二」「川内改二」他駆逐2隻を含む艦隊で、ジャム島攻略作戦を実施せよ！', 500, 0, 500, 0),
(304, 815, 'B69', '「第一航空戦隊」西へ！', '旗艦「赤城」同僚艦「加賀」を中核とする艦隊で、深海東洋艦隊漸減作戦を貫徹せよ！', 0, 800, 0, 800),
(305, 816, 'B67', '艦隊、三周年！', '三周年を記念しバシー島沖及び東部オリョール海に出撃、同海域の敵艦隊を撃滅せよ！', 1000, 1000, 1000, 0),
(306, 817, 'B70', '新編艦隊、南西諸島防衛線へ急行せよ！', '水雷戦隊を含む新編艦隊を南西諸島防衛線に展開、同方面に来襲する敵艦隊を撃破せよ！', 300, 300, 300, 0),
(307, 818, 'B71', '鎮守府近海航路の安全確保を強化せよ！', '水雷戦隊を含む新編艦隊を鎮守府近海航路に出撃させ、同航路の安全確保に努めよ！', 0, 900, 900, 900),
(308, 819, 'B72', '「第三十一戦隊」敵潜を制圧せよ！', '第三十一戦隊(第一次)を鎮守府近海航路に再投入！反復出撃し、敵潜を制圧せよ！', 310, 310, 0, 310),
(309, 820, 'B73', '新編「第八駆逐隊」出撃せよ！', '新編「第八駆逐隊」を含む艦隊を鎮守府近海航路に出撃させ、同航路の安全確保に努めよ！', 400, 400, 0, 0),
(310, 821, 'B74', '精鋭「八駆第一小隊」対潜哨戒！', '「第八駆逐隊第一小隊」を含む艦隊で鎮守府正面対潜哨戒を反復実施！敵潜を圧倒せよ！', 0, 800, 0, 200),
(311, 822, 'Bq01', '沖ノ島海域迎撃戦', '有力な艦隊を沖ノ島海域前面に反復投入、侵攻する敵機動部隊を迎撃、これを撃滅せよ！', 800, 800, 800, 0),
(312, 823, 'B75', '水雷戦隊、南西防衛線に反復出撃せよ！', '軽巡級旗艦と駆逐艦4隻の水雷戦隊を基幹とした艦隊を編成、<br>南西諸島防衛線に反復出撃し、同海域の制海権確保に努めよ！', 0, 350, 0, 350),
(313, 824, 'B76', '製油所地帯沿岸の哨戒を実施せよ！', '軽空母旗艦と駆逐艦3隻を基幹とした護衛艦隊を編成、<br>製油所地帯沿岸に展開し、同海域の哨戒を実施、同海域の安全を確保せよ！', 600, 0, 0, 0),
(314, 825, 'B77', '水雷戦隊、南西諸島海域を哨戒せよ！', '水雷戦隊を基幹とした有力な艦隊で南西諸島海域バシー島沖及び東部オリョール海を哨戒、<br>同海域に遊弋する敵艦隊を捕捉、これを撃滅せよ！', 600, 600, 0, 0),
(315, 826, 'B78', '「第十九駆逐隊」出撃せよ！', '特型駆逐艦4隻による「第十九駆逐隊」を鎮守府近海に展開！<br>鎮守府正面対潜哨戒を実施し、跳梁する敵潜部隊の制圧に努めよ！', 300, 300, 300, 0),
(316, 827, 'B79', '「第十九駆逐隊」敵主力に突入せよ！', '「第十九駆逐隊」を含む有力な艦隊を編成し、南西諸島海域沖ノ島沖に展開！<br>同方面に遊弋する敵主力を捕捉、これを撃破せよ！', 600, 600, 0, 300),
(317, 828, 'B80', '飛行場設営の準備を実施せよ！', '中部海域における航空偵察「K作戦」を再度実施、さらに同方面に遊弋する敵艦隊を撃滅し、<br>中部海域における飛行場設営の準備を実施せよ！', 0, 0, 0, 0),
(318, 829, 'B81', '夜間突入！敵上陸部隊を叩け！', '南方サブ島沖海域へ精鋭艦隊を突入！敵艦隊の邀撃を突破し、同方面の敵上陸部隊を叩け！', 0, 0, 0, 0),
(319, 830, 'B82', '夜の海を照らす「灯り」を入手せよ！', '有力な艦隊をカムラン半島に投入、同方面に出没する敵艦隊を捕捉、これを撃滅せよ！<br>そして、夜を照らす「灯り」を入手せよ！　ある季節は夜戦以外にも使い道があるようだ！', 100, 100, 0, 0),
(320, 834, 'B83', '南西諸島防衛線を増強せよ！', '水上機母艦または航空巡洋艦を旗艦とする有力な艦隊を南西諸島防衛線に投入、<br>水上機戦力によって同防衛線を強化、同方面の敵艦隊を撃滅せよ！', 300, 300, 0, 0),
(321, 835, 'B84', '「第十六戦隊(第三次)」出撃せよ！', '「第十六戦隊(第三次)」を沖ノ島海域前面に展開、敵主力艦隊を捕捉、これを撃破せよ！', 400, 0, 0, 400),
(322, 836, 'B85', '精鋭「第十六戦隊」突入せよ！', '再編成を完了した精鋭「第十六戦隊」を南西諸島海域沖ノ島沖に展開、<br>同方面に遊弋する敵主力を捕捉、これを撃破せよ！', 600, 600, 0, 0),
(323, 837, 'B86', '輸送作戦を成功させ、帰還せよ！', '「鬼怒改二」を旗艦、僚艦に「浦波改」他駆逐艦3隻の計5隻の艦隊で<br>バシー島沖における柳輸送作戦を実施、同輸送作戦を完全成功させ、帰還せよ！', 1000, 0, 1000, 3000),
(324, 838, 'B87', '重巡戦隊、抜錨せよ！', '重巡4隻を基幹戦力とした重巡旗艦の艦隊を南西諸島海域東部オリョール海に展開し、<br>同海域の敵艦隊を撃滅、制海権を確保せよ！', 400, 400, 0, 0),
(325, 839, 'B88', '戦艦戦隊、出撃せよ！', '戦艦2隻を中核戦力とする戦艦旗艦の艦隊を北方海域アルフォンシーノ方面に進出させ、<br>同海域の敵艦隊を撃滅、北方海域の制海権確保に努めよ！', 0, 800, 0, 200),
(326, 842, 'B89', '主力戦艦戦隊、抜錨せよ！', '戦艦または航空戦艦2隻以上からなる強力な戦艦戦隊を中核とした艦隊を沖ノ島海域前面に展開、<br>侵攻する敵艦隊を捕捉、これを撃滅せよ！', 0, 800, 400, 0),
(327, 844, 'B90', '精鋭「第八駆逐隊」突入せよ！', '「荒潮改二」を旗艦とし、僚艦に「第八駆逐隊」から1隻を配備した精鋭第1艦隊で<br>サーモン海域北方に突入、同方面に接近する有力な敵艦隊を捕捉、同方面の敵戦力の漸減に努めよ！', 800, 800, 0, 800),
(328, 846, 'B91', '潜水艦隊、中部海域の哨戒を実施せよ！', '潜水艦を旗艦とし、4隻以上の有力な潜水艦を配備した第一艦隊、精鋭潜水艦隊で<br>中部海域哨戒線に進出、回航中の敵空母を捕捉、これを襲撃せよ！', 300, 300, 300, 0),
(329, 847, 'SB22', '春の準備任務：桃の節句準備を完遂せよ！', '春の準備任務：艦隊を東部オリョール海に反復出撃、同方面敵艦隊を覆滅し、<br>同海域周辺の制海権を完全に確保、桃の節句を迎える準備を完遂せよ！', 330, 330, 0, 330),
(330, 848, 'B92', '重装甲巡洋艦、鉄底海峡に突入せよ！', '第一艦隊旗艦に「Zara due」を配備、同艦隊で南方サブ島沖海域へ突入！同方面の敵艦隊群を突破し、鉄底海峡に展開する敵戦力を撃破せよ！', 0, 0, 700, 0),
(331, 849, 'B93', '南西諸島方面の敵艦隊を撃破せよ！', '軽巡を旗艦とした艦隊を編成し、南西諸島防衛線、バシー島沖及び<br>東部オリョール海に展開、同海域に遊弋する敵艦隊を撃破せよ！', 300, 0, 300, 300),
(332, 850, 'B94', '洋上航空戦力を拡充せよ！', '航空母艦、または水上機母艦を旗艦とした有力な艦隊を編成、北方AL海域、<br>西方海域カスガダマ沖 、中部海域MS諸島沖に展開し、各海域の敵艦隊を撃滅せよ！', 500, 500, 0, 1000),
(333, 851, 'B95', '改装航空巡洋艦、出撃！', '改装航空巡洋艦「鈴谷改二」を旗艦とした精強な艦隊を編成、同艦隊を南方海域に展開、<br>南方海域前面、及びサブ島沖海域に遊弋する敵艦隊群を捕捉、これを撃破せよ！', 300, 300, 300, 700),
(334, 852, 'B96', '改装攻撃型軽空母、前線展開せよ！', '改装航空母艦「鈴谷航改二」を旗艦とした精強な機動部隊を編成、同艦隊を中部海域に進出。<br>MS諸島沖、KW環礁沖海域に展開し、同海域の敵機動部隊を捕捉、これを撃滅せよ！', 0, 1000, 0, 1000),
(335, 853, 'B97', '鎮守府海域警戒を厳とせよ！', '巡洋艦クラスを旗艦に配備、2隻以上の駆逐艦を擁する警戒艦隊を編成せよ。同警戒艦隊を以て、<br>鎮守府海域(南西諸島/製油所地帯沿岸/南西諸島防衛線/鎮守府近海)の警戒任務にあたれ！', 400, 400, 400, 0),
(336, 854, 'Bq02', '戦果拡張任務！「Z作戦」前段作戦', '戦果拡張作戦：我が第一艦隊に精鋭艦艇を集中配備、同精鋭艦隊を以て、南西諸島の沖ノ島海域、<br>中部海域哨戒線、グアノ環礁沖の敵艦隊を撃破、中部北海域ピーコック島の敵戦力を破砕殲滅せよ！', 0, 2000, 0, 0),
(337, 855, 'B98', '海上護衛体制の強化に努めよ！', '海上護衛作戦：駆逐艦または海防艦3隻以上を含む護衛艦隊を編成し、鎮守府海域の製油所地帯沿岸、<br>南西諸島防衛線、鎮守府近海、鎮守府近海航路にそれぞれ展開、各海域における作戦を成功させよ！', 400, 0, 0, 400),
(338, 856, 'B99', '新編「第一戦隊」、抜錨せよ！', '新編「第一戦隊」出撃任務：戦艦「長門改二」を旗艦、二番艦に「陸奥改」を配備した第一艦隊で出撃！<br>カレー洋リランカ島沖、サーモン海域北方に展開し、同海域の敵艦隊主力を捕捉、これを撃滅せよ！', 0, 880, 880, 0),
(339, 857, 'B100', '増強海上護衛総隊、抜錨せよ！', '出撃任務：軽巡1隻以上、駆逐艦または海防艦2隻以上、さらに航空巡洋艦または軽空母で増強した<br>第一護衛艦隊を第一艦隊に編成、南西諸島海域の各海域に展開、敵艦隊を撃破、各作戦を成功させよ！', 700, 0, 0, 0),
(340, 858, 'B101', '新編「第七戦隊」、出撃せよ！', '出撃任務：新編「第七戦隊」を出撃！　カレー洋リランカ島沖「深海東洋艦隊漸減作戦」、<br>MS諸島沖「MS諸島防衛戦」において、敵艦隊主力を捕捉、これを撃滅せよ！', 0, 0, 1000, 500),
(341, 859, 'B102', '精鋭「第四航空戦隊」、抜錨せよ！', '精鋭「第四航空戦隊」出撃任務：精鋭航空戦艦を主戦力に再編された「第四航空戦隊」、抜錨せよ！<br>沖ノ島沖戦闘哨戒及び北方AL海域戦闘哨戒を実施、同方面の敵艦隊主力を捕捉、これを撃破せよ！', 500, 0, 500, 0),
(342, 860, 'B103', '旗艦「由良」、抜錨！', '出撃任務：旗艦に「由良改二」、随伴艦に二駆「村雨」「夕立」「春雨」「五月雨」及び「秋月」から<br>二隻以上を配備した第一艦隊を展開、東部オリョール海及び南方海域前面の敵戦力を撃滅せよ！', 400, 400, 0, 400),
(343, 861, 'Bq03', '強行輸送艦隊、抜錨！', '航路護衛任務：航空戦艦(または補給艦でも可)2隻を中核とした艦隊で、鎮守府近海航路における<br>輸送船団護衛作戦を実施。同輸送護衛作戦を2回成功させよ！', 1000, 400, 400, 0),
(344, 862, 'Bq04', '前線の航空偵察を実施せよ！', '偵察任務：水上機母艦1隻と軽巡2隻を中核とした偵察艦隊を、中部海域グアノ環礁沖海域に展開、<br>航空偵察作戦「K作戦」を反復実施せよ！さらに同方面の敵艦隊を捕捉、敵戦力の撃破に努めよ！', 0, 800, 0, 1000),
(345, 863, 'B104', '精鋭「第二二駆逐隊」出撃せよ！', '出撃任務：再編した精鋭「第二二駆逐隊」を含む精強な水雷戦隊で北方海域キス島沖に出撃、<br>キス島撤退作戦を完全成功させよ！', 0, 700, 0, 100),
(346, 864, 'B105', '精強大型航空母艦、抜錨！', '出撃任務：「Saratoga Mk.II」または同「Mod.2」を旗艦とした「任務部隊」で、南方海域サーモン海域<br>北方及び中部海域MS諸島沖に展開、同海域敵戦力を捕捉撃滅、「MS諸島防衛戦」を成功させよ！', 0, 0, 700, 700),
(347, 865, 'B106', '夜間作戦空母、前線に出撃せよ！', '出撃任務：「Saratoga Mk.II」を旗艦とした第一艦隊を KW環礁沖海域に展開、敵機動部隊を迎撃！<br>「空母機動部隊迎撃戦」を見事成功させよ！　夜戦作戦空母、抜錨！　前線に出撃せよ！', 0, 0, 0, 1000),
(348, 869, 'B107', '補給線の安全を確保せよ！', '軽巡クラスの艦隊旗艦と2隻以上の駆逐艦または海防艦を中核とした警戒艦隊を編成、同艦隊で<br>鎮守府海域(製油所地帯沿岸/南西諸島防衛線/鎮守府近海)の警戒と補給線安全確保にあたれ！', 300, 300, 0, 0),
(349, 870, 'B108', '「第八駆逐隊」、南西へ！', '第八駆逐隊任務：「第八駆逐隊」を含む艦隊で、鎮守府海域南西諸島沖、及び南西諸島海域バシー島沖に<br>展開！同海域に跳梁する敵艦隊戦力を捕捉、これを撃滅せよ！', 0, 250, 250, 250),
(350, 871, 'B109', '最精鋭「第八駆逐隊」、全力出撃！', '第八駆逐隊任務：最精鋭「第八駆逐隊」を中核戦力とした艦隊を編成、北方海域キス島沖、及び<br>南方海域サーモン海域に突入！同海域の敵艦隊を撃滅、第八駆逐隊による完全勝利を刻め！', 800, 0, 0, 0),
(351, 873, 'Bq05', '北方海域警備を実施せよ！', '北方海域警備任務：北方海域の警備を実施する。軽巡を1隻以上含む艦隊で、北方海域モーレイ海、<br>キス島沖、アルフォンシーノ方面に艦隊を展開、北方海域方面の警備と制海権確保に努めよ！', 500, 500, 0, 0),
(352, 874, 'B110', '北方海域戦闘哨戒を実施せよ！', '北方海域戦闘哨戒任務：北方AL海域に軽空母と水上機母艦及び軽巡を基幹戦力とした精鋭艦隊を投入。<br>北方戦闘哨戒を反復実施、同方面の敵増援部隊主力を捕捉、これを撃滅し、北方海域戦線を防衛せよ！', 0, 1000, 0, 700),
(353, 875, 'Bq06', '精鋭「三一駆」、鉄底海域に突入せよ！', '強行東京急行任務：精鋭「三一駆」第一小隊を護衛戦力とした突入艦隊を編成、南方サーモン海域に投入。<br>鉄底海峡に突入し、同海域に展開する敵艦艇を実力で排除、強行鼠輸送作戦を反復完遂せよ！', 310, 310, 0, 310);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `quest`
--
ALTER TABLE `quest`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `quest`
--
ALTER TABLE `quest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=360;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
