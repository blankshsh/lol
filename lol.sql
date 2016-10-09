-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-10-09 10:40:20
-- 服务器版本： 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lol`
--

-- --------------------------------------------------------

--
-- 表的结构 `data`
--

CREATE TABLE `data` (
  `id` int(255) NOT NULL COMMENT 'AUTO_INCREMENT',
  `name` varchar(99) NOT NULL,
  `f_name` varchar(99) CHARACTER SET utf8 NOT NULL,
  `s_name` varchar(99) CHARACTER SET utf8 NOT NULL,
  `champion` varchar(999) NOT NULL,
  `fighter` varchar(99) NOT NULL,
  `mage` varchar(99) NOT NULL,
  `assassin` varchar(99) NOT NULL,
  `tank` varchar(99) NOT NULL,
  `marksman` varchar(99) NOT NULL,
  `support` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `data`
--

INSERT INTO `data` (`id`, `name`, `f_name`, `s_name`, `champion`, `fighter`, `mage`, `assassin`, `tank`, `marksman`, `support`) VALUES
(1, 'Aatrox', '暗裔剑魔', '亚托克斯', './img/champion/Aatrox.png', '1', '0', '0', '1', '0', '0'),
(2, 'Ahri', '九尾妖狐', '阿狸', './img/champion/Ahri.png', '0', '1', '1', '0', '0', '0'),
(3, 'Akali', '暗影之拳', '阿卡丽', './img/champion/Akali.png', '0', '0', '1', '0', '0', '0'),
(4, 'Alistar', '牛头酋长', '阿利斯塔', './img/champion/Alistar.png', '0', '0', '0', '1', '0', '1'),
(5, 'Amumu', '殇之木乃伊', '阿木木', './img/champion/Amumu.png', '0', '1', '0', '1', '0', '0'),
(6, 'Anivia', '冰晶凤凰', '艾尼维亚', './img/champion/Anivia.png', '0', '1', '0', '0', '0', '1'),
(7, 'Annie', '黑暗之女', '安妮', './img/champion/Annie.png', '0', '1', '0', '0', '0', '0'),
(8, 'Ashe', '寒冰射手', '艾希', './img/champion/Ashe.png ', '0', '0', '0', '0', '1', '1'),
(9, 'AurelionSol ', '铸星龙王', '奥瑞利安·索尔', './img/champion/AurelionSol.png ', '1', '1', '0', '0', '0', '0'),
(10, 'Azir', '沙漠皇帝', '阿兹尔', './img/champion/Azir.png ', '0', '1', '0', '0', '1', '0'),
(11, 'Bard', '星界游神', '巴德', './img/champion/Bard.png ', '0', '1', '0', '0', '0', '1'),
(12, 'Blitzcrank', '蒸汽机器人', '布里茨', './img/champion/Blitzcrank.png ', '1', '0', '0', '1', '0', '0'),
(13, 'Brand', '复仇焰魂', '布兰德', './img/champion/Brand.png ', '0', '1', '0', '0', '0', '0'),
(14, 'Braum', '弗雷尔卓德之心', '布隆', './img/champion/Braum.png ', '0', '0', '0', '1', '0', '1'),
(15, 'Caitlyn', '皮城女警', ' 凯特琳', './img/champion/Caitlyn.png ', '0', '0', '0', '0', '1', '0'),
(16, 'Cassiopeia', '魔蛇之拥', ' 卡西奥佩娅', './img/champion/Cassiopeia.png ', '0', '1', '0', '0', '0', '0'),
(17, 'Chogath', '虚空恐惧', '科加斯', './img/champion/Chogath.png ', '0', '1', '0', '1', '0', '0'),
(18, 'Corki', '英勇投弹手', '库奇', './img/champion/Corki.png ', '0', '0', '0', '0', '1', '0'),
(19, 'Darius', '诺克萨斯之手', '德莱厄斯', './img/champion/Darius.png ', '1', '0', '0', '1', '0', '0'),
(20, 'Diana', '皎月女神', '黛安娜', './img/champion/Diana.png ', '1', '1', '0', '0', '0', '0'),
(21, 'Draven', '荣耀行刑官', '德莱文', './img/champion/Draven.png ', '0', '0', '0', '0', '1', '0'),
(22, 'DrMundo', '祖安狂人', '蒙多医生', './img/champion/DrMundo.png ', '1', '0', '0', '1', '0', '0'),
(23, 'Ekko', '时间刺客', '艾克', './img/champion/Ekko.png ', '1', '0', '1', '0', '0', '0'),
(24, 'Elise', '蜘蛛女皇', '伊莉丝', './img/champion/Elise.png ', '1', '1', '0', '0', '0', '0'),
(25, 'Evelynn', '寡妇制造者', '伊芙琳', './img/champion/Evelynn.png ', '0', '1', '1', '0', '0', '0'),
(26, 'Ezreal', '探险家', '伊泽瑞尔', './img/champion/Ezreal.png ', '0', '1', '0', '0', '1', '0'),
(27, 'FiddleSticks', '末日使者', '费德提克', './img/champion/FiddleSticks.png ', '0', '1', '0', '0', '0', '1'),
(28, 'Fiora', '无双剑姬', '菲奥娜', './img/champion/Fiora.png ', '1', '0', '1', '0', '0', '0'),
(29, 'Fizz', '潮汐海灵', '菲兹', './img/champion/Fizz.png ', '1', '0', '1', '0', '0', '0'),
(30, 'Galio', '哨兵之殇', '加里奥', './img/champion/Galio.png ', '0', '1', '0', '1', '0', '0'),
(31, 'Gangplank', '海洋之灾', '普朗克', './img/champion/Gangplank.png ', '1', '0', '0', '0', '0', '0'),
(32, 'Garen', '德玛西亚之力', '盖伦', './img/champion/Garen.png ', '1', '0', '0', '1', '0', '0'),
(33, 'Gnar', '迷失之牙', '纳尔', './img/champion/Gnar.png ', '1', '0', '0', '1', '0', '0'),
(34, 'Gragas', '酒桶', '古拉加斯', './img/champion/Gragas.png ', '1', '1', '0', '0', '0', '0'),
(35, 'Graves', '法外狂徒', '格雷福斯', './img/champion/Graves.png ', '0', '0', '0', '0', '1', '0'),
(36, 'Hecarim', '战争之影', '赫卡里姆', './img/champion/Hecarim.png ', '1', '0', '0', '1', '0', '0'),
(37, 'Heimerdinger', '大发明家', '黑默丁格', './img/champion/Heimerdinger.png ', '0', '1', '0', '0', '0', '1'),
(38, 'Illaoi', '海兽祭司', '俄洛伊', './img/champion/Illaoi.png ', '1', '0', '0', '1', '0', '0'),
(39, 'Irelia', '刀锋意志', '艾瑞莉娅', './img/champion/Irelia.png ', '1', '0', '1', '0', '0', '0'),
(40, 'Janna', '风暴之怒', '迦娜', './img/champion/Janna.png ', '0', '1', '0', '0', '0', '1'),
(41, 'JarvanIV', '德玛西亚皇子', '嘉文四世', './img/champion/JarvanIV.png ', '1', '0', '0', '1', '0', '0'),
(42, 'Jax', '武器大师', '贾克斯', './img/champion/Jax.png ', '1', '0', '1', '0', '0', '0'),
(43, 'Jayce', '未来守护者 ', '杰斯', './img/champion/Jayce.png ', '1', '0', '0', '0', '1', '0'),
(44, 'Jhin', '戏命师', '烬', './img/champion/Jhin.png ', '0', '0', '1', '0', '1', '0'),
(45, 'Jinx', '暴走萝莉', '金克丝', './img/champion/Jinx.png ', '0', '0', '0', '0', '1', '0'),
(46, 'Kalista', '复仇之矛', '卡莉丝塔', './img/champion/Kalista.png ', '0', '0', '0', '0', '1', '0'),
(47, 'Karma', '天启者', '卡尔玛', './img/champion/Karma.png ', '0', '1', '0', '0', '0', '1'),
(48, 'Karthus', '死亡颂唱者', '卡尔萨斯', './img/champion/Karthus.png ', '0', '1', '0', '0', '0', '0'),
(49, 'Kassadin', '虚空行者', '卡萨丁', './img/champion/Kassadin.png', '0', '1', '1', '0', '0', '0'),
(50, 'Katarina', '不祥之刃', '卡特琳娜', './img/champion/Katarina.png', '0', '1', '1', '0', '0', '0'),
(51, 'Kayle', '审判天使', '凯尔', './img/champion/Kayle.png', '1', '0', '0', '0', '0', '1'),
(52, 'Kennen', '狂暴之心', '凯南', './img/champion/Kennen.png', '0', '1', '0', '0', '1', '0'),
(53, 'Khazix', '虚空掠夺者', '卡兹克', './img/champion/Khazix.png', '1', '0', '1', '0', '0', '0'),
(54, 'Kindred', '永猎双子', '千珏', './img/champion/Kindred.png', '0', '0', '0', '0', '1', '0'),
(55, 'Kled', '暴怒骑士', '克烈', './img/champion/Kled.png', '1', '0', '0', '1', '0', '0'),
(56, 'KogMaw', '深渊巨口', '克格莫', './img/champion/KogMaw.png', '0', '1', '0', '0', '1', '0'),
(57, 'Leblanc', '诡术妖姬', '乐芙兰', './img/champion/Leblanc.png', '0', '1', '1', '0', '0', '0'),
(58, 'LeeSin', '盲僧', '李青', './img/champion/LeeSin.png', '1', '0', '1', '0', '0', '0'),
(59, 'Leona', '曙光女神', '蕾欧娜', './img/champion/Leona.png', '0', '0', '0', '1', '0', '1'),
(60, 'Lissandra', '冰霜女巫', '丽桑卓', './img/champion/Lissandra.png', '0', '1', '0', '0', '0', '0'),
(61, 'Lucian', '圣枪游侠', '卢锡安', './img/champion/Lucian.png', '0', '0', '0', '0', '1', '0'),
(62, 'Lulu', '仙灵女巫', '璐璐', './img/champion/Lulu.png', '0', '1', '0', '0', '0', '1'),
(63, 'Lux', '光辉女郎', '拉克丝', './img/champion/Lux.png', '0', '1', '0', '0', '0', '1'),
(64, 'Malphite', '熔岩巨兽', '墨菲特', './img/champion/Malphite.png', '1', '0', '0', '1', '0', '0'),
(65, 'Malzahar', '虚空先知', '玛尔扎哈', './img/champion/Malzahar.png', '0', '1', '1', '0', '0', '0'),
(66, 'Maokai', '扭曲树精', '茂凯', './img/champion/Maokai.png', '0', '1', '0', '1', '0', '0'),
(67, 'MasterYi', '无极剑圣', '易', './img/champion/MasterYi.png', '1', '0', '1', '0', '0', '0'),
(68, 'MissFortune', '赏金猎人', '厄运小姐', './img/champion/MissFortune.png', '0', '0', '0', '0', '1', '0'),
(69, 'MonkeyKing', '齐天大圣', '孙悟空', './img/champion/MonkeyKing.png', '1', '0', '0', '1', '0', '0'),
(70, 'Mordekaiser', '铁铠冥魂', '莫德凯撒', './img/champion/Mordekaiser.png', '1', '0', '0', '0', '0', '0'),
(71, 'Morgana', '堕落天使', '莫甘娜', './img/champion/Morgana.png', '0', '1', '0', '0', '0', '1'),
(72, 'Nami', '唤潮鲛姬', '娜美', './img/champion/Nami.png', '0', '1', '0', '0', '0', '1'),
(73, 'Nasus', '沙漠死神', '内瑟斯', './img/champion/Nasus.png', '1', '0', '0', '1', '0', '0'),
(74, 'Nautilus', '深海泰坦', '诺提勒斯', './img/champion/Nautilus.png', '1', '0', '0', '1', '0', '0'),
(75, 'Nidalee', '狂野女猎手', '奈德丽', './img/champion/Nidalee.png', '1', '0', '1', '0', '0', '0'),
(76, 'Nocturne', '永恒梦魇', '魔腾', './img/champion/Nocturne.png', '1', '0', '1', '0', '0', '0'),
(77, 'Nunu', '雪人骑士', '努努', './img/champion/Nunu.png', '1', '0', '0', '0', '0', '1'),
(78, 'Olaf', '狂战士', '奥拉夫', './img/champion/Olaf.png', '1', '0', '0', '1', '0', '0'),
(79, 'Orianna', '发条魔灵', '奥莉安娜', './img/champion/Orianna.png', '0', '1', '0', '0', '0', '1'),
(80, 'Pantheon', '战争之王', '潘森', './img/champion/Pantheon.png', '1', '0', '1', '0', '0', '0'),
(81, 'Poppy', '圣锤之毅', '波比', './img/champion/Poppy.png', '1', '0', '0', '1', '0', '0'),
(82, 'Quinn', '德玛西亚之翼', '奎因', './img/champion/Quinn.png', '1', '0', '0', '0', '1', '0'),
(83, 'Rammus', '披甲龙龟', '拉莫斯', './img/champion/Rammus.png', '1', '0', '0', '1', '0', '0'),
(84, 'RekSai', '虚空遁地兽', '雷克塞', './img/champion/RekSai.png', '1', '0', '0', '0', '0', '0'),
(85, 'Renekton', '荒漠屠夫', '雷克顿', './img/champion/Renekton.png', '1', '0', '0', '1', '0', '0'),
(86, 'Rengar', '傲之追猎者', '雷恩加尔', './img/champion/Rengar.png', '1', '0', '1', '0', '0', '0'),
(87, 'Riven', '放逐之刃', '锐雯', './img/champion/Riven.png', '1', '0', '1', '0', '0', '0'),
(88, 'Rumble', '机械公敌', '兰博', './img/champion/Rumble.png', '1', '1', '0', '0', '0', '0'),
(89, 'Ryze', '符文法师', '瑞兹', './img/champion/Ryze.png', '1', '1', '0', '0', '0', '0'),
(90, 'Sejuani', '凛冬之怒', '瑟庄妮', './img/champion/Sejuani.png', '1', '0', '0', '1', '0', '0'),
(91, 'Shaco', '恶魔小丑', '萨科', './img/champion/Shaco.png', '0', '0', '1', '0', '0', '0'),
(92, 'Shen', '暮光之眼', '慎', './img/champion/Shen.png', '0', '0', '0', '1', '0', '0'),
(93, 'Shyvana', '龙血武姬', '希瓦娜', './img/champion/Shyvana.png', '1', '0', '0', '1', '0', '0'),
(94, 'Singed', '炼金术士', '辛吉德', './img/champion/Singed.png', '1', '0', '0', '1', '0', '0'),
(95, 'Sion', '亡灵战神', '赛恩', './img/champion/Sion.png', '1', '0', '0', '1', '0', '0'),
(96, 'Sivir', '战争女神', '希维尔', './img/champion/Sivir.png', '0', '0', '0', '0', '1', '0'),
(97, 'Skarner', '水晶先锋', '斯卡纳', './img/champion/Skarner.png', '1', '0', '0', '1', '0', '0'),
(98, 'Sona', '琴瑟仙女', '娑娜', './img/champion/Sona.png', '0', '1', '0', '0', '0', '1'),
(99, 'Soraka', '众星之子', '索拉卡', './img/champion/Soraka.png', '0', '1', '0', '0', '0', '1'),
(100, 'Swain', '策士统领', '斯维因', './img/champion/Swain.png', '1', '1', '0', '0', '0', '0'),
(101, 'Syndra', '暗黑元首', '辛德拉', './img/champion/Syndra.png', '0', '1', '0', '0', '0', '1'),
(102, 'TahmKench', '河流之王', '塔姆', './img/champion/TahmKench.png', '0', '0', '0', '1', '0', '1'),
(103, 'Taliyah', '岩雀', '塔莉垭', './img/champion/Taliyah.png', '0', '1', '0', '0', '0', '1'),
(104, 'Talon', '刀锋之影', '泰隆', './img/champion/Talon.png', '1', '0', '1', '0', '0', '0'),
(105, 'Taric', '瓦洛兰之盾', '塔里克', './img/champion/Taric.png', '1', '0', '0', '0', '0', '1'),
(106, 'Teemo', '迅捷斥候', '提莫', './img/champion/Teemo.png', '0', '0', '1', '0', '1', '0'),
(107, 'Thresh', '魂锁典狱长', '锤石', './img/champion/Thresh.png', '1', '0', '0', '0', '0', '1'),
(108, 'Tristana', '麦林炮手', '崔丝塔娜', './img/champion/Tristana.png', '0', '0', '1', '0', '1', '0'),
(109, 'Trundle', '巨魔之王', '特朗德尔', './img/champion/Trundle.png', '1', '0', '0', '1', '0', '0'),
(110, 'Tryndamere', '蛮族之王', '泰达米尔', './img/champion/Tryndamere.png', '1', '0', '1', '0', '0', '0'),
(111, 'TwistedFate', '卡牌大师', '崔斯特', './img/champion/TwistedFate.png', '0', '1', '0', '0', '0', '0'),
(112, 'Twitch', '瘟疫之源', '图奇', './img/champion/Twitch.png', '0', '0', '1', '0', '1', '0'),
(113, 'Udyr', '兽灵行者', '乌迪尔', './img/champion/Udyr.png', '1', '0', '0', '1', '0', '0'),
(114, 'Urgot', '首领之傲', '厄加特', './img/champion/Urgot.png', '1', '0', '0', '0', '1', '0'),
(115, 'Varus', '惩戒之箭', '韦鲁斯', './img/champion/Varus.png', '0', '1', '0', '0', '1', '0'),
(116, 'Vayne', '暗夜猎手', '薇恩', './img/champion/Vayne.png', '0', '0', '1', '0', '1', '0'),
(117, 'Veigar', '邪恶小法师', '维迦', './img/champion/Veigar.png', '0', '1', '0', '0', '0', '0'),
(118, 'Velkoz', '虚空之眼', '维克兹', './img/champion/Velkoz.png', '0', '1', '0', '0', '0', '0'),
(119, 'Vi', '皮城执法官', '蔚', './img/champion/Vi.png', '1', '0', '1', '0', '0', '0'),
(120, 'Viktor', '机械先驱', '维克托', './img/champion/Viktor.png', '0', '1', '0', '0', '0', '0'),
(121, 'Vladimir', '猩红收割者', '弗拉基米尔', './img/champion/Vladimir.png', '0', '1', '0', '1', '0', '0'),
(122, 'Volibear', '雷霆咆哮', '沃利贝尔', './img/champion/Volibear.png', '1', '0', '0', '1', '0', '0'),
(123, 'Warwick', '嗜血猎手', '沃里克', './img/champion/Warwick.png', '1', '0', '0', '1', '0', '0'),
(124, 'Xerath', '远古巫灵', '泽拉斯', './img/champion/Xerath.png', '0', '1', '1', '0', '0', '0'),
(125, 'XinZhao', '德邦总管', '赵信', './img/champion/XinZhao.png', '1', '0', '1', '0', '0', '0'),
(126, 'Yasuo', '疾风剑豪', '亚索', './img/champion/Yasuo.png', '1', '0', '1', '0', '0', '0'),
(127, 'Yorick', '牧魂人', '约里克', './img/champion/Yorick.png', '1', '0', '0', '1', '0', '0'),
(128, 'Zac', '生化魔人', '扎克', './img/champion/Zac.png', '1', '0', '0', '1', '0', '0'),
(129, 'Zed', '影流之主', '劫', './img/champion/Zed.png', '1', '0', '1', '0', '0', '0'),
(130, 'Ziggs', '爆破鬼才', '吉格斯', './img/champion/Ziggs.png', '0', '1', '0', '0', '0', '0'),
(131, 'Zilean', '时光守护者', '基兰', './img/champion/Zilean.png', '0', '1', '0', '0', '0', '1'),
(132, 'Zyra', '荆棘之兴', '婕拉', './img/champion/Zyra.png', '0', '1', '0', '0', '0', '1');

-- --------------------------------------------------------

--
-- 表的结构 `per`
--

CREATE TABLE `per` (
  `name` varchar(99) NOT NULL,
  `ad` int(99) NOT NULL,
  `ap` int(99) NOT NULL,
  `tank` int(99) NOT NULL,
  `hand` int(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `per`
--

INSERT INTO `per` (`name`, `ad`, `ap`, `tank`, `hand`) VALUES
('Aatrox', 8, 3, 4, 4),
('Ahri', 3, 8, 4, 5),
('Akali', 5, 8, 3, 7),
('Alistar', 6, 5, 9, 7),
('Amumu', 2, 8, 6, 3),
('Anivia', 1, 10, 4, 10);

-- --------------------------------------------------------

--
-- 表的结构 `skin`
--

CREATE TABLE `skin` (
  `id` int(255) NOT NULL COMMENT 'AUTO_INCREMENT	',
  `name` varchar(999) NOT NULL,
  `f_name` varchar(99) CHARACTER SET utf8 NOT NULL,
  `s_name` varchar(99) CHARACTER SET utf8 NOT NULL,
  `skin` varchar(999) NOT NULL,
  `skin_s` varchar(999) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `skin`
--

INSERT INTO `skin` (`id`, `name`, `f_name`, `s_name`, `skin`, `skin_s`) VALUES
(1, 'Aatrox', '默认皮肤', '', './img/skin/Aatrox_Splash_0.jpg', './img/skin/Aatrox_Splash_Tile_0.jpg'),
(2, 'Aatrox', '仲裁圣骑', '亚托克斯', './img/skin/Aatrox_Splash_1.jpg', './img/skin/Aatrox_Splash_Tile_1.jpg'),
(3, 'Aatrox', '霸天剑魔', '亚托克斯', './img/skin/Aatrox_Splash_2.jpg\r\n', './img/skin/Aatrox_Splash_Tile_2.jpg'),
(4, 'Aatrox', '狂鲨', '亚托克斯', './img/skin/Aatrox_Splash_3.jpg\r\n', './img/skin/Aatrox_Splash_Tile_3.jpg'),
(5, 'Ahri', '默认皮肤', '', './img/skin/Ahri_Splash_0.jpg', './img/skin/Ahri_Splash_Tile_0.jpg'),
(6, 'Ahri', '高丽风情', '阿狸', './img/skin/Ahri_Splash_1.jpg', './img/skin/Ahri_Splash_Tile_1.jpg'),
(7, 'Ahri', '暗影妖狐', '阿狸', './img/skin/Ahri_Splash_2.jpg', './img/skin/Ahri_Splash_Tile_2.jpg'),
(8, 'Ahri', '焰尾妖狐', '阿狸', './img/skin/Ahri_Splash_3.jpg', './img/skin/Ahri_Splash_Tile_3.jpg'),
(9, 'Ahri', '偶像歌手', '阿狸', './img/skin/Ahri_Splash_4.jpg', './img/skin/Ahri_Splash_Tile_4.jpg'),
(10, 'Ahri', '勇者', '阿狸', './img/skin/Ahri_Splash_5.jpg', './img/skin/Ahri_Splash_Tile_5.jpg'),
(11, 'Ahri', '风纪委员', '阿狸', './img/skin/Ahri_Splash_6.jpg', './img/skin/Ahri_Splash_Tile_6.jpg'),
(12, 'Ahri', '电玩女神', '阿狸', './img/skin/Ahri_Splash_7.jpg', './img/skin/Ahri_Splash_Tile_7.jpg'),
(13, 'Akali', '默认皮肤', '', './img/skin/Akali_Splash_0.jpg', './img/skin/Akali_Splash_Tile_0.jpg'),
(14, 'Akali', '蜂刺', '阿卡丽', './img/skin/Akali_Splash_1.jpg', './img/skin/Akali_Splash_Tile_1.jpg'),
(15, 'Akali', '绯红', '阿卡丽', './img/skin/Akali_Splash_2.jpg', './img/skin/Akali_Splash_Tile_2.jpg'),
(16, 'Akali', '足球宝贝', '阿卡丽', './img/skin/Akali_Splash_3.jpg', './img/skin/Akali_Splash_Tile_3.jpg'),
(17, 'Akali', '实习护士', '阿卡丽', './img/skin/Akali_Splash_4.jpg', './img/skin/Akali_Splash_Tile_4.jpg'),
(18, 'Akali', '鬼武姬', '阿卡丽', './img/skin/Akali_Splash_5.jpg', './img/skin/Akali_Splash_Tile_5.jpg'),
(19, 'Akali', '银色之牙', '阿卡丽', './img/skin/Akali_Splash_6.jpg', './img/skin/Akali_Splash_Tile_6.jpg'),
(20, 'Akali', '铁血女忍', '阿卡丽', './img/skin/Akali_Splash_7.jpg', './img/skin/Akali_Splash_Tile_7.jpg'),
(21, 'Akali', '刺身之拳', '阿卡丽', './img/skin/Akali_Splash_8.jpg', './img/skin/Akali_Splash_Tile_8.jpg'),
(22, 'Alistar', '默认皮肤', '', './img/skin/Alistar_Splash_0.jpg', './img/skin/Alistar_Splash_Tile_0.jpg'),
(23, 'Alistar', '暗黑灵魂', '阿利斯塔', './img/skin/Alistar_Splash_1.jpg', './img/skin/Alistar_Splash_Tile_1.jpg'),
(24, 'Alistar', '金牛座', '阿利斯塔', './img/skin/Alistar_Splash_2.jpg', './img/skin/Alistar_Splash_Tile_2.jpg'),
(25, 'Alistar', '斗牛士', '阿利斯塔', './img/skin/Alistar_Splash_3.jpg', './img/skin/Alistar_Splash_Tile_3.jpg'),
(26, 'Alistar', '荒野镖客', '阿利斯塔', './img/skin/Alistar_Splash_4.jpg', './img/skin/Alistar_Splash_Tile_4.jpg'),
(27, 'Alistar', '巨角幻兽', '阿利斯塔', './img/skin/Alistar_Splash_5.jpg', './img/skin/Alistar_Splash_Tile_5.jpg'),
(28, 'Alistar', '地狱火', '阿利斯塔', './img/skin/Alistar_Splash_6.jpg', './img/skin/Alistar_Splash_Tile_6.jpg'),
(29, 'Alistar', '后场堡垒', '阿利斯塔', './img/skin/Alistar_Splash_7.jpg', './img/skin/Alistar_Splash_Tile_7.jpg'),
(30, 'Alistar', '黑暗骑士', '阿利斯塔', './img/skin/Alistar_Splash_8.jpg', './img/skin/Alistar_Splash_Tile_8.jpg'),
(31, 'Alistar', 'SKT T1', '阿利斯塔', './img/skin/Alistar_Splash_9.jpg', './img/skin/Alistar_Splash_Tile_9.jpg'),
(32, 'Amumu', '默认皮肤', '', './img/skin/Amumu_Splash_0.jpg', './img/skin/Amumu_Splash_Tile_0.jpg'),
(33, 'Amumu', '法老', '阿木木', './img/skin/Amumu_Splash_1.jpg', './img/skin/Amumu_Splash_Tile_1.jpg'),
(34, 'Amumu', '狂欢', '阿木木', './img/skin/Amumu_Splash_2.jpg', './img/skin/Amumu_Splash_Tile_2.jpg'),
(35, 'Amumu', '情绪摇滚', '阿木木', './img/skin/Amumu_Splash_3.jpg', './img/skin/Amumu_Splash_Tile_3.jpg'),
(36, 'Amumu', '阿木木:', '“主人不要我了”', './img/skin/Amumu_Splash_4.jpg', './img/skin/Amumu_Splash_Tile_4.jpg'),
(37, 'Amumu', '王子不是我', '阿木木', './img/skin/Amumu_Splash_5.jpg', './img/skin/Amumu_Splash_Tile_5.jpg'),
(38, 'Amumu', '小小骑士', '阿木木', './img/skin/Amumu_Splash_6.jpg', './img/skin/Amumu_Splash_Tile_6.jpg'),
(39, 'Amumu', '殇之机器人', '阿木木', './img/skin/Amumu_Splash_7.jpg', './img/skin/Amumu_Splash_Tile_7.jpg'),
(40, 'Amumu', '惊悚派对', '阿木木', './img/skin/Amumu_Splash_8.jpg', './img/skin/Amumu_Splash_Tile_8.jpg'),
(41, 'Anivia', '默认皮肤', '', './img/skin/Anivia_Splash_0.jpg', './img/skin/Anivia_Splash_Tile_0.jpg'),
(42, 'Anivia', '双重冰晶', '艾尼维亚', './img/skin/Anivia_Splash_1.jpg', './img/skin/Anivia_Splash_Tile_1.jpg'),
(43, 'Anivia', '联盟之喙', '艾尼维亚', './img/skin/Anivia_Splash_2.jpg', './img/skin/Anivia_Splash_Tile_2.jpg'),
(44, 'Anivia', '重甲猎鹰', '艾尼维亚', './img/skin/Anivia_Splash_3.jpg', './img/skin/Anivia_Splash_Tile_3.jpg'),
(45, 'Anivia', '钢铁之翼', '艾尼维亚', './img/skin/Anivia_Splash_4.jpg', './img/skin/Anivia_Splash_Tile_4.jpg'),
(46, 'Anivia', '黯晶凤凰', '艾尼维亚', './img/skin/Anivia_Splash_5.jpg', './img/skin/Anivia_Splash_Tile_5.jpg'),
(47, 'Anivia', '翼龙', '艾尼维亚', './img/skin/Anivia_Splash_6.jpg', './img/skin/Anivia_Splash_Tile_6.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `per`
--
ALTER TABLE `per`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `skin`
--
ALTER TABLE `skin`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `data`
--
ALTER TABLE `data`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'AUTO_INCREMENT', AUTO_INCREMENT=133;
--
-- 使用表AUTO_INCREMENT `skin`
--
ALTER TABLE `skin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT COMMENT 'AUTO_INCREMENT	', AUTO_INCREMENT=48;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
