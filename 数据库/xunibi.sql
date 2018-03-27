-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2017 年 08 月 09 日 01:53
-- 服务器版本: 5.5.53
-- PHP 版本: 5.4.45

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `xunibi`
--

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_admin`
--

CREATE TABLE IF NOT EXISTS `btchanges_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `username` char(16) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `moble` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `last_login_time` int(11) unsigned NOT NULL,
  `last_login_ip` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='管理员表' AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `btchanges_admin`
--

INSERT INTO `btchanges_admin` (`id`, `email`, `username`, `nickname`, `moble`, `password`, `sort`, `addtime`, `last_login_time`, `last_login_ip`, `endtime`, `status`) VALUES
(1, '502182299@qq.com', 'admin', '海通网络', '13059840358', '7fef6171469e80d32c0559f88b377245', 0, 0, 0, 0, 0, 1),
(2, '111111@qq.com', 'xiaomage', '小马哥', '11111111111', '50b6849d9c2b20fd7fcff2c92450078f', 0, 0, 0, 0, 0, 1),
(3, '111111@qq.com', 'xiaomage2', 'xiaomage2', '11111111111', '96e79218965eb72c92a549dd5a330112', 0, 0, 0, 0, 0, 1),
(4, '111111@qq.com', 'xiaomage3', 'xiaomage3', '11111111111', '1606b01abe9510bf6ed1c63f5f4392c9', 0, 0, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_adver`
--

CREATE TABLE IF NOT EXISTS `btchanges_adver` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(250) NOT NULL,
  `type` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告图片表' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `btchanges_adver`
--

INSERT INTO `btchanges_adver` (`id`, `name`, `url`, `img`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, '', '', '5932ede7967c8.jpg', '', 0, 1475466480, 1475466480, 1),
(2, '', '', '5932edfe4d12a.jpg', '', 1, 1475466565, 1475466565, 1),
(3, '', '', '583d4578e04cb.jpg', '', 2, 1480322388, 1480322390, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_appads`
--

CREATE TABLE IF NOT EXISTS `btchanges_appads` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `content` varchar(256) NOT NULL,
  `url` varchar(255) NOT NULL,
  `img` varchar(255) DEFAULT NULL,
  `block_id` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告图片表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_appadsblock`
--

CREATE TABLE IF NOT EXISTS `btchanges_appadsblock` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `content` varchar(256) NOT NULL,
  `rank` varchar(256) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `remain` varchar(255) DEFAULT '3',
  `type` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='广告图片表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_appc`
--

CREATE TABLE IF NOT EXISTS `btchanges_appc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `web_name` varchar(64) DEFAULT NULL,
  `web_title` varchar(64) DEFAULT NULL,
  `web_icp` varchar(64) DEFAULT NULL,
  `index_img` varchar(256) DEFAULT NULL,
  `pay` varchar(256) DEFAULT NULL,
  `withdraw_notice` varchar(256) DEFAULT NULL,
  `charge_notice` varchar(256) DEFAULT NULL,
  `show_coin` varchar(255) DEFAULT NULL,
  `show_market` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_app_log`
--

CREATE TABLE IF NOT EXISTS `btchanges_app_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `type` varchar(64) NOT NULL,
  `content` varchar(255) NOT NULL,
  `addtime` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_app_vip`
--

CREATE TABLE IF NOT EXISTS `btchanges_app_vip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(255) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `rule` text,
  `times` int(11) DEFAULT NULL,
  `price_num` varchar(255) DEFAULT NULL,
  `price_coin` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `addtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `btchanges_app_vip`
--

INSERT INTO `btchanges_app_vip` (`id`, `tag`, `name`, `rule`, `times`, `price_num`, `price_coin`, `status`, `addtime`) VALUES
(1, '1', 'VIP会员卡', '[{"id":"1","num":1000}]', 100, '100', '3', 1, 1476004810);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_app_vipuser`
--

CREATE TABLE IF NOT EXISTS `btchanges_app_vipuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `vip_id` int(11) NOT NULL,
  `addtime` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_article`
--

CREATE TABLE IF NOT EXISTS `btchanges_article` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `content` text CHARACTER SET utf8 NOT NULL,
  `adminid` int(10) unsigned NOT NULL,
  `type` varchar(255) CHARACTER SET utf8 NOT NULL,
  `hits` int(11) unsigned NOT NULL,
  `footer` int(11) unsigned NOT NULL,
  `index` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `type` (`type`),
  KEY `adminid` (`adminid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=17 ;

--
-- 转存表中的数据 `btchanges_article`
--

INSERT INTO `btchanges_article` (`id`, `title`, `content`, `adminid`, `type`, `hits`, `footer`, `index`, `sort`, `addtime`, `endtime`, `status`) VALUES
(5, '海通网路每日分红说明', '<h4 class="dividend-hd" style="font-family:''Microsoft YaHei'';font-size:36px;">\r\n	<span style="font-size:16px;">分红规则</span> \r\n</h4>\r\n<div class="dividend-rule" style="margin:10px 0px;font-size:24px;color:#333333;font-family:''Microsoft YaHei'';">\r\n	<p>\r\n		<span style="font-size:14px;">1:每天10：50发放分红</span> \r\n	</p>\r\n	<p>\r\n		<br />\r\n	</p>\r\n	<p>\r\n		<span style="font-size:14px;">2:(每天的总利润/总持币量)*你的持币量，即是你的分红金额。</span> \r\n	</p>\r\n</div>', 1, 'aaa', 0, 1, 1, 0, 1486372940, 1483694542, 1),
(7, '海通网络众筹', '<p class="MsoNormal" style="color:#333333;font-family:tahoma, " microsoft="" yahei",="" arial,="" helvetica,="" sans-serif;font-size:14px;background-color:#ffffff;"="">\r\n	海通网络众筹时间：2月6日10:00至2月14日22:00共九天\r\n	</p>\r\n<p align="left" class="MsoNormal" style="color:#333333;font-family:tahoma, " microsoft="" yahei",="" arial,="" helvetica,="" sans-serif;font-size:14px;background-color:#ffffff;"=""> <span style="color:#333333;">海通网络</span>众筹机制：核心理论上促进机会均等，扩展性强的二代加密货币平台\r\n</p>\r\n<p align="left" class="MsoNormal" style="color:#333333;font-family:tahoma, " microsoft="" yahei",="" arial,="" helvetica,="" sans-serif;font-size:14px;background-color:#ffffff;"="">\r\n	认购数量：每天认购100亿、九天共900亿，每人每天限购100—3000元，剩余100亿，平台会根据市场流通量，分期发放，当FC涨至1元停盘下调百分之10认购第二期。\r\n	</p>\r\n<p align="left" class="MsoNormal" style="color:#333333;font-family:tahoma, " microsoft="" yahei",="" arial,="" helvetica,="" sans-serif;font-size:14px;background-color:#ffffff;"="">\r\n	还有剩余的50亿滑稽团队用作以后的应用开发推广。最终解释权归<span style="color:#333333;">青青</span>网官方所有。\r\n</p>\r\n<p align="left" class="MsoNormal" style="color:#333333;font-family:tahoma, " microsoft="" yahei",="" arial,="" helvetica,="" sans-serif;font-size:14px;background-color:#ffffff;"="">\r\n	认购价格：1元/100w\r\n	</p>\r\n<p align="left" class="MsoNormal" style="color:#333333;font-family:tahoma, " microsoft="" yahei",="" arial,="" helvetica,="" sans-serif;font-size:14px;background-color:#ffffff;"="">\r\n	认购条件：邀请3位用户实名注册滑稽之家并充值（至少一人充值）（从2月7号新邀请的用户开始计算）\r\n</p>\r\n<p align="left" class="M', 1, 'aaa', 0, 1, 1, 0, 1483703465, 1483703468, 1),
(12, '精简教程：一张图读懂比特币', '<div style="margin:0px;padding:0px;border:0px;color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:26px;background-color:#F9F9F9;">\r\n	精简教程：一张图读懂比特币\r\n</div>\r\n<div style="margin:5px 0px 0px;padding:0px;border:0px;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;color:#999999;background-color:#F9F9F9;">\r\n	<br />\r\n</div>\r\n<div class="bk30 hr" style="margin:0px;padding:0px;border:0px;color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;background:url(http://rs.btc38.com/statics/images/uline.gif) 50% 50% repeat-x #F9F9F9;">\r\n</div>\r\n<div style="margin:0px;padding:0px;border:0px;color:#333333;font-family:''Microsoft YaHei'', Arial, Verdana, sans-serif, ''Segoe UI'', Tahoma;font-size:16px;background-color:#F9F9F9;">\r\n	该图由新浪科技制作，转载过来，希望对新人有所帮助，让大家更快了解比特币。<br />\r\n<span style="color:#FF0000;">由于图片尺寸非常大，建议右击将图片保存到电脑本地进行阅读，或者点击图片获得更大的尺寸。</span><br />\r\n<a href="http://www.btc38.com/uploadfile/2013/0824/20130824093459273.jpg" target="_blank"><img alt="一张图快速入门了解比特币" height="4140/" src="http://www.btc38.com/uploadfile/2013/0824/20130824093459273.jpg" width="440" /></a><br />\r\n<br />\r\n	<div style="margin:0px;padding:0px;border:0px;color:#990000;font-size:13px;">\r\n		声明：部分文章转自互联网，如该转载不符合您的意愿或侵犯您的版权，请您与我们联系，我们会尽快删除。\r\n	</div>\r\n</div>', 1, 'bbb', 0, 1, 1, 0, 1480225114, 1480225116, 1),
(14, '有问题可联系客服', '有问题请联系客服QQ:396322838', 1, '常见问题', 0, 1, 1, 1, 1483852982, 1502169792, 1),
(15, '央行：数字货币开发应用有利于精准扶贫', '<p style="color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">\r\n	中国人民银行研究局局长徐忠日前表示，数字货币的开发和应用有利于更好地精准扶贫。他还表示，我国采用科技金融去扶贫的“硬件”条件已经具备，但是在“软件”方面，还需从有效的监管框架、保护好消费者权益和缩小农民和农村金融机构的数字鸿沟三方面进行完善。\r\n</p>\r\n<p style="color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">\r\n	　　徐忠是26日在由浙江省农村信用社联合社、浙江省金融学会和浙江省金融业发展促进会主办的普惠金融创新发展（浙江）峰会上做出如上表述的。徐忠说，包括中国央行在内的不少国家都在研发数字货币。数字货币是基于密码学，采用集中分布相对均衡的系统，应用大数据分析。用户身份认证采用前台自愿、后台实名，本身设计密集高效。“由于它是基于密码的，所以有可追踪性。如果使用数字货币，将有助于解决贫困地区假币问题。”他说。徐忠还举例说，现在我国政府有大量财政补贴通过各种渠道发放，但按照现在的方式，核实这些资金流向的成本非常高，如果使用数字货币，就能够很容易地知道资金有没有真正发放到要补贴的农民手里。另外，通过数字货币发放扶贫贷款就能够跟踪到贷款是否真正发放到符合条件的农民手里，此外，还可以通过数字货币来跟踪农民是如何使用扶贫资金的，从而帮助监管部门更好地设计出扶贫政策。\r\n</p>\r\n<p style="color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">\r\n	　　徐忠称，我国采用科技金融去扶贫的“硬件”条件已经具备，但是在“软件”方面，当前还需要进行完善。一是需要有效的监管框架，监管框架对推动科技金融发展，保护消费者利益至关重要；二是在推动科技金融发展过程中要保护好消费者权益。比如，监管者可以要求在进行数据收集的时候，要明确获得客户的授权，针对授权要明确规定搜集到的不准确数据要根据客户实际进行调整；三是要缩小农民和农村金融机构的数字鸿沟。\r\n</p>\r\n<p style="color:#333333;font-family:微软雅黑;font-size:14px;background-color:#FFFFFF;">\r\n	转自：http://jjckb.xinhuanet.com/2016-11/27/c_135861993.htm\r\n</p>', 1, '常见问题', 0, 1, 1, 2, 1480326159, 1480326168, 1),
(16, '中国版数字货币来袭 和纸币说再见？', '<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	数字货币要来了。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	近日有媒体报道称，央行数字货币研究所有望于今年年底挂牌成立。据悉，该研究所将在央行印制科学技术研究所的基础上成立。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	记者梳理了央行官网上公布的其直属单位2017年度工作人员招聘公告，并从中发现，从事数字货币研究与开发工作的招聘人员信息赫然在列，“计划招聘6名具有硕士或博士学历的专业人士进行数字货币研发工作”。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	显然，国家正在加紧对于数字货币的研发。而据记者了解，目前世界多地都在不约而同地进行数字货币方面的部署。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	数字货币为何会成为一块“香饽饽”？未来随着数字货币的面世和普及，人们会和纸币说再见吗？\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<span style="font-weight:700;">央行数字货币 中心化为最大特点</span>\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	数字货币，是以算法保证其币值，以去中心分布式区块链算法形成的电子货币。比如：比特币、莱特币。目前全世界发行的数字货币达到有数千种。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	独立投资人王昌盛认为，自布雷顿森林体系之后，货币从锚定货币更多的转向信用货币，即央行与国家信用发行货币，而数字货币也是信用货币的一种。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	但据央行数字货币研究所筹备组组长姚前表示，央行要发行的数字货币“主要是为了替代实物现金。降低传统纸币发行、流通的成本，提升经济交易活动的便利性和透明度”。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	当然一提到数字货币，很多人都会想到其典型比特币。诚然，数字货币的底层技术均为区块链技术。但值得关注的是，不少受访的业内人士表示，央行意欲发行的数字货币和比特币其实有着很多区别和特点。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	在sosobtc联合创始人李雄看来，“央行数字货币底层技术是区块链，但是它的‘链’跟比特币的‘链’是不一样的”。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	从服务对象上看，央行数字货币是为国家服务的，是法币的数字化；而比特币是服务于市场的，将货币本质还给了市场。从核心特征上看，央行数字货币绝对是中心化的，“结果可能是四大行联合起来，利用区块链的记账结算功能搞一条联盟链。”李雄对《中国产经新闻》记者称，反观比特币则是去中心化的，不可篡改的。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	巴比特网站数字货币专栏作家李健也表示认同。李健对《中国产经新闻》记者表示，央行发行的数字货币必然是在央行的控制下，从代码到发行形式，绝对是中心化的数字货币。“比特币是去中心化的，谁都可以挖矿，买卖”。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	另外，从政治上看，央行数字货币是绝对权威，不允许包括比特币在内的其他货币挑战。“但比特币是通过达成共识来运作的，完全的市场行为，比特币面前任何人都是平等的”。李雄对记者补充说道。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<span style="font-weight:700;">全球“跟风” 抢占先机</span>\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	早在今年年初，中国人民银行行长周小川曾公开宣称，央行正在研究发行“数字货币”。而近一年来，各地召开的关于区块链的会议接连不断。每次都有政府相关人员出席，民间的探讨一直没脱离国家层面的参与，前些天央行招聘数字货币研究员的信息，更能证明国家对区块链和数字货币的重视。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	因此，在李雄看来，“央行要成立数字货币研究所，这是必然”。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	与此同时，值得注意的是，不仅仅是我国央行正在紧锣密鼓地筹备数字货币的事宜。记者发现，实际上世界各国都在对数字货币进行不同程度的部署。数字货币为何会如此重要？\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	据李雄介绍，国内方面，银行、券商等金融机构正在组织数字货币的技术攻关。而国外荷兰、法国、英国等国也都在研发数字货币。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	“金融的基础是货币，国家控制货币就等于控制金融。”李雄对记者强调道，对于以比特币为首的数字货币来说，其天生就具有金融属性。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	同时，王昌盛还向《中国产经新闻》记者介绍，数字货币的出现，使支付在线上变得可以追述。“而支付的大数据一旦可以记录整理，将会是一笔巨大的数据金矿。”\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	一个在反恐领域颇为著名的故事是，英美曾雇佣银行一线数据人员帮助制定大数据规则来筛选出恐怖分子。即，追踪英国青年是否购买保险来筛查是否为恐怖分子。一般西方国家福利水平很高，年轻人很少不买保险，但恐怖分子怎么会浪费钱给自己购买享受不到的保险呢？\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	由此，王昌盛认为，如果人们大量使用数字货币，那么消费习惯将更多地泄露更多的信息。“数据不会说谎，未来这些数据可以在反恐、反腐领域展开应用。而数据追述功能也能极大地杜绝洗钱。”\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	“至于未来数字货币会不会颠覆现有的金融体系，在全球货币（数字货币）面前，谁也说不准。都需要提前布局，避免在货币战争中失去主动权。”李雄对记者补充道。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<span style="font-weight:700;">纸币消亡 言之尚早</span>\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	显然在业内人士看来，数字货币和区块链是一块“兵家必争之地”，甚至已经成为了一种金融趋势。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	比如，2015年5月丹麦政府就公布了一系列方案，其中就包括废除法律要求商店接受物理现金的一项计划。2016年1月起，服装零售店、餐馆以及加油站都将进入无现金时代。随着西方丹麦、瑞典、以色列以及美国都在推行无现金社会，“这使得全球线上支付与数字货币的趋势越发强烈”。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	同时，王昌盛表示，2015年末人民币广义货币M2的余额为139.23万亿元，而流通中的现金仅为6.32万亿。“需要由央行印制发行的现金数量已经降到货币总量的不到5%”。由此，现金比重的下降和记账式货币的上升也是全世界的共同潮流和大势。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	那么在此趋势之下，如果每个国家都潜心研制和发展自己国家版本的数字货币，未来如比特币、莱特币等的数字货币会不会成为类似当今美元一样的存在呢？\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	对此，有业内人士预测，数字货币将会对纸币带来较大冲击。李健就对记者表示，央行发行的数字货币最后会加速纸币的消亡，促进比特币的普及。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	中央财经大学金融法研究所所长黄震则表示，人们在实践中已越发倾向使用电子银行和电子支付，而不愿携带纸币，因此以后市面上流通的纸币可能会因此趋势而越来越少。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	不过，李雄却持保守观点。他对记者说：“最近我跟货币专家刘昌用曾谈到数字货币，如比特币对法币冲击的事。比特币的流通对M0（流通中现金）的基础货币发行上会有影响，比如在交易所卖币提现，这个过程可以理解成‘货币发行’，增加货币的流通量。”\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	但李雄强调，目前来看其实影响不大。因为比特币目前还处于被管制的状态，比如央行曾联合五部委发布的《关于防范比特币风险的通知》。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<span style="font-weight:700;">何时推出 暂无时间表</span>\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	除了管制问题，数字货币在世界当前的发展其实也还不尽成熟。要完全面世和流通其实还需要一定的时间。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	在王昌盛看来，“数字货币有利也有弊。数字货币遵循的是算法规则，想把它流通领域限定在特定的某一国范围的技术难度很大，数字货币可能在资本管制方面给央行带来麻烦。“但既然是趋势总要有吃螃蟹的勇气”。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	李雄也对记者坦言，目前数字货币还处于萌芽阶段，以比特币为例，比特币的总量为2100万，到2140年才能全部挖完。从时间维度来看，我们目前在数字货币的发展还很稚嫩，“冰冻三尺非一日之寒”。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	同时，据央行内部人士透露，央行在设计数字货币时会充分考虑，现有的货币政策调控、货币的供给与创造机制、货币政策的传导渠道等。但目前央行对数字货币的研究更多是在理论研究和实践探索阶段。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	姚前此前在接受《金融时报》采访时就回应：“目前关于法定数字货币的原型系统，正在研发过程中。至于何时能推出中国央行的法定数字货币暂无时间表”。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	不过值得一提的是，他也表示，法定数字货币的推出会遵照循序渐进的原则一步步推进。可以选择少数的封闭的应用场景，比如票据市场，先开展实验并观察其使用效果。逐步积累经验之后，再进行改进和完善，发展成熟后再大范围地推广。\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	<br />\r\n</p>\r\n<p style="font-size:14px;color:#333333;font-family:''Microsoft YaHei'';background-color:#FFFFFF;">\r\n	因此，在未来在较长时期内，数字货币和纸币可能会并存流通。数字货币对于纸币的冲击，也不必过早担心。“对于普通百姓来说，未来到银行取钱时，既可以选择兑换实物现金，也可以选择兑换数字货币”。姚前补充道。\r\n</p>', 1, 'bbb', 0, 1, 1, 1, 1480326934, 1478080541, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_article_type`
--

CREATE TABLE IF NOT EXISTS `btchanges_article_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 NOT NULL,
  `remark` varchar(50) CHARACTER SET utf8 NOT NULL,
  `index` varchar(50) CHARACTER SET utf8 NOT NULL,
  `footer` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `shang` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- 转存表中的数据 `btchanges_article_type`
--

INSERT INTO `btchanges_article_type` (`id`, `name`, `title`, `remark`, `index`, `footer`, `shang`, `content`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, '公司简介', '公司简介', '行业资讯', '0', '1', 'aboutus', '<br />\r\n海通网络科技有限公司于2017年1月创办，2017年2月正式上线。投资的60%用于平台推广和宣传。<br />\r\n  海通网络是面向中国的虚拟货币交易平台（将来也会开放国际版），我们致力于为您提供安全、快捷、稳定的虚拟货币交易，秉承谷歌“不作恶”的原则，为数字资产爱好者提供一个安全可靠、方便易用以及具有公信力的数字货币交易服务平台。<br />\r\n 滑稽之家在行业内率先实现了 100% 的数字币和法币的数量均为公开透明的。及时的展示和公布平台的会员数。<br />\r\n在发展过程中，我们不仅成了一个团队。我们成了对这项事业有着共同热爱的好朋友！我们所有的员工都具备顶尖资质，能够为每一位客户提供最高水平的服务和个性化方案。我们的团队提供7X12小时的服务，因此，让每个客户快乐愉快安全的在平台交易。<br />\r\n<div>\r\n	<br />\r\n</div>', 1, 1486445296, 1486445297, 1),
(2, 'xiazai', '下载中心', '最新公告', '0', '1', '', '', 3, 0, 0, 1),
(3, 'help', '帮助中心', '帮助中心', '0', '1', '', '', 2, 0, 0, 1),
(4, 'aboutus', '关于我们', '关于我们', '0', '1', '', '海通网络502182299@qq.com', 1, 1496246400, 1496246400, 1),
(5, '联系我们', '联系我们', '', '0', '1', 'aboutus', '请联系我们客服QQ:502182299', 2, 1480224546, 1480224548, 1),
(6, 'join', '加入我们', '', '0', '1', 'aboutus', '海通网络502182299@qq.com', 4, 1486483200, 1486483200, 1),
(7, '法律声明', '法律声明', '', '0', '1', 'aboutus', '《虚拟币交易平台用户服务协议》<br />\r\n一、总则<br />\r\n1.1、 用户在使用虚拟币交易平台服务前，应当仔细阅读《用户服务协议》（以下<br />\r\n简称“本协议”）的全部内容，对于本协议中的加重字体、斜体、下划线、颜色标记等条款<br />\r\n需重点阅读、理解。<br />\r\n1.2、&nbsp;所提供的各项服务的所有权和运作权均归海通网路所有。<br />\r\n1.3、 用户应当同意本协议的全部条款并按照页面上的提示完成全部的注册程序。用户在进<br />\r\n行注册程序过程中点击"注册"按钮即表示用户与滑稽之家达成以下协议，完全接受本协议项下<br />\r\n的全部条款，本协议即在用户与滑稽之家之间产生法律效力，对双方均具有法律约束力。<br />\r\n1.4、 用户注册成功后，我们将给予每个用户一个用户帐号及相应的密码，该用户帐号和<br />\r\n密码由用户负责保管；用户应当对以其用户帐号进行的所有活动和事件负法律责任。<br />\r\n1.5、 《用户服务协议》、单项服务条款、全部活动条款及公告可由我们随时更<br />\r\n新，且无需另行通知。我们有权对上述条款进行修改，修改后的协议一旦公布即有效替代<br />\r\n原有协议。用户可随时查询最新协议。用户在使用滑稽之家提供的各项服务之前，应仔细阅读<br />\r\n本协议及本协议不可分割的各项服务协议。用户在使用相关服务时,应关注并遵守其所适用<br />\r\n的相关条款。用户如不同意本服务协议及/或随时对其的修改，不得访问或使用本网站相关<br />\r\n服务；用户一旦使用我们服务，即视为用户已了解并完全同意本协议及其他服务条款中的<br />\r\n各项内容，包括滑稽之家对本协议及其他服务条款随时所做的任何修改，并成为我们用户。<br />\r\n二、用户资格及注册<br />\r\n2.1、 用户应为具有完全民事权利能力和民事行为能力的自然人、法人，或是能够独立承担<br />\r\n民事责任能力的其他组织。用户若不具有前述规定的法律能力资格，须经法定代理人同意或<br />\r\n由法定代理人代理，或是得到有权主体授权后进行注册、交易。或虽不具有完全民事权利能<br />\r\n力和行为能力,但点击同意注册按钮，&nbsp;滑稽之家即视为经其法定代理人同意并由其法定代理人<br />\r\n代理注册及完成交易等服务内容的操作。<br />\r\n2.2、 用户使用我们提供的网络平台服务前，应自行准备如下设备并承担如下开支：<br />\r\n2.2.1、 自行配备上网的所需设备，包括个人电脑、调制解调器或其他必备上网装置；<br />\r\n2.2.2、 自行负担个人上网所支付的与此服务有关的电话费用、网络费用等。<br />\r\n2.3、 用户点击“同意以下协议并注册”按钮，则视为用户同意本协议的所有条款，且具有<br />\r\n浏览我们平台相关信息、提交买单、合理交易等使用我们提供的全部服务的权利能力和<br />\r\n行为能力，同意承担由此带来的全部法律责任。<br />\r\n<br />\r\n2.4、 用户注册、使用我们不得出于非法或破坏滑稽之家交易秩序的目的，用户保证向比特儿提交的全部信息真实、准确和完整，不存在盗用、借用、买入非本人手机号码、电子邮箱<br />\r\n等进行注册、虚假交易和作弊交易的行为，用户若存在上述违规行为，滑稽之家有权取消其交<br />\r\n易资格及因参加交易活动所获权益，并停止服务、封停帐号。如该违规行为给滑稽之家造成损<br />\r\n失的，我们保留追究赔偿及诉至法律解决的权利。<br />\r\n2.5、 用户注册成功后，应妥善保管其滑稽之家平台帐户及密码，定期或不定期修改密码，在<br />\r\n每次使用我们服务完毕后及时退出帐户，以确保帐户安全。用户不得将滑稽之家平台帐户出<br />\r\n借、转让或用作其他非法用途，否则因帐户未妥善保管而造成损失的，用户应承担相应法律<br />\r\n责任。<br />\r\n三、用户个人信息保护<br />\r\n3.1、本协议所称之滑稽之家用户信息是指符合法律、法规及相关规定，并符合下述范围的信<br />\r\n息：<br />\r\n3.1.1、用户注册土豪时代或申请土豪时代会员卡时，向土豪时代提供的个人信息；<br />\r\n3.1.2、用户在使用土豪时代服务、参加网站活动或访问网站网页时，土豪时代自动接收并记录的<br />\r\n用户浏览器端或手机客户端数据，包括但不限于 IP 地址、网站 Cookie 中的资料及用户要求<br />\r\n取用的网页记录；<br />\r\n3.1.3、土豪时代从商业伙伴处合法获取的用户个人信息；<br />\r\n3.1.4、其它土豪时代通过合法途径获取的用户个人信息。<br />\r\n3.2、土豪时代承诺：非经法定原因或用户事先许可，土豪时代不会向任何第三方透露用户的密<br />\r\n码、姓名、身份证，手机号码等非公开信息。并对用户信息中涉及识别用户个人身份和用户个人隐私<br />\r\n的信息进行保护，承诺在未获得用户许可的情况下，不会将用户的上述信息对外公开或提供<br />\r\n给任何第三方，但以下情况除外：<br />\r\n3.2.1、经用户同意向用户本人或其他第三方披露；<br />\r\n3.2.2、经用户同意公开其个人资料，享受为其提供的产品和服务；<br />\r\n3.2.3、根据法律、法规等相关规定，或行政机构要求，向行政、司法机构或其他法律规定的<br />\r\n第三方披露；<br />\r\n3.2.4、其它土豪时代根据法律、法规等相关规定进行的披露。<br />\r\n四、服务的提供、修改及终止<br />\r\n<br />\r\n4.1、用户可根据本协议及土豪时代公布的相关使用规则，查阅在土豪时代平台上发布的交易及<br />\r\n相关资料，通过土豪时代平台交易具体的金融服务产品等有关活动，及土豪时代现有及将来可能<br />\r\n提供的其他服务。<br />\r\n4.2、用户在使用土豪时代提供的上述服务时，应遵守本协议及土豪时代的相关使用规则，遵守<br />\r\n自愿、平等、公平及诚实信用原则，不利用土豪时代平台侵犯他人合法权益及谋取不正当利益，<br />\r\n不扰乱网上交易的正常秩序。<br />\r\n4.3、用户在接受土豪时代各项服务的同时，同意接受土豪时代网提供的各类信息服务。用户在<br />\r\n此授权土豪时代可以向其电子邮件、手机、通信地址等发送商业信息。用户有权选择不接受比<br />\r\n特儿提供的各类信息服务，并进入土豪时代相关页面进行更改。<br />\r\n4.4、土豪时代会尽全力维护平台的正常运行，以向用户提供持续、稳定、安全、顺畅的服务。<br />\r\n但用户理解并同意：土豪时代对服务页面进行改版、升级网站系统、增加服务功能等须中断服<br />\r\n务的操作时，有权暂时中断服务。<br />\r\n4.5、土豪时代保留随时修改或中断服务而不需通知用户的权利。土豪时代有权行使修改或中断<br />\r\n服务的权利，不需对用户或任何无直接关系的第三方负责。<br />\r\n4.6、用户对本协议的修改有异议，或对土豪时代的服务不满，可以行使如下权利：<br />\r\n4.6.1、停止使用土豪时代的网络服务；<br />\r\n4.6.2、通过客服等渠道告知土豪时代停止对其服务。结束服务后，用户使用土豪时代网络服务的<br />\r\n权利立即终止。在此情况下，土豪时代没有义务传送任何未处理的信息或未完成的服务给用户<br />\r\n或任何无直接关系的第三方。<br />\r\n五、用户权利<br />\r\n5.1、用户的用户名、密码和安全性<br />\r\n5.1.1、用户有权选择是否成为土豪时代会员，用户选择成为土豪时代注册用户的，可自行创建、<br />\r\n修改昵称。用户名和昵称的命名及使用应遵守相关法律法规并符合网络道德。用户名和昵称<br />\r\n中不能含有任何侮辱、威胁、淫秽、谩骂等侵害他人合法权益的文字。<br />\r\n5.1.2、用户一旦注册成功，成为土豪时代的会员，将得到用户名（用户邮箱）和密码，并对以<br />\r\n此组用户名和密码登入系统后所发生的所有活动和事件负责，自行承担一切使用该用户名的<br />\r\n言语、行为等而直接或者间接导致的法律责任。<br />\r\n5.1.3、用户有义务妥善保管土豪时代网账号、用户名和密码、短信验证码、谷哥验证码，用户<br />\r\n将对用户名和密码、和谷哥密钥安全负全部责任。因用户原因导致用户名或密码、谷哥密钥<br />\r\n泄露而造成的任何法律后果由用户本人负责，由于用户自身原因泄露这些信息导致的财产损<br />\r\n失，本站不负相关责任。由于本站是交易网站，登录密码、提现密码、交易密码、短信密码、<br />\r\n谷哥密码等不得使用相同密码，否则会有安全隐患，相关责任由用户自身承担。<br />\r\n5.1.4、用户密码遗失的，可以通过注册电子邮箱发送的链接重置密码，以手机号码注册的用<br />\r\n户可以凭借手机号码找回原密码。用户若发现任何非法使用用户名或存在其他安全漏洞的情<br />\r\n况，应立即告知滑稽之家。<br />\r\n5.1.5、滑稽之家不会向任何用户索取密码，不会让用户往任何非本站交易中心里提供的帐户、<br />\r\nbtc/ltc 充值地址打款，请大家不要相信任何滑稽之家打折、优惠等诈骗信息，往非 btc/ltc 交易<br />\r\n中心提供的账户、地址里打款或币造成的损失本站不负责任。<br />\r\n5.2、用户有权根据网站相关规定，在发布信息等贡献后，取得滑稽之家给予的奖励；<br />\r\n5.3、用户有权修改其个人账户中各项可修改信息，自行选择昵称和录入介绍性文字，自行<br />\r\n决定是否提供非必填项的内容；<br />\r\n5.4、用户有权参加滑稽之家社区，并发表符合国家法律规定，并符合滑稽之家社区规则的文章<br />\r\n及观点；<br />\r\n5.5、用户有权根据网站相关规定，获得土豪时代给与的奖励（如社区学分、徽章等）；<br />\r\n5.6、用户有权参加滑稽之家组织提供的各项线上、线下活动；<br />\r\n5.7、用户有权根据滑稽之家网站规定，享受土豪时代提供的其它各类服务。<br />\r\n六、用户义务<br />\r\n6.1 用户可以在滑稽之家平台发布对商品或交易服务的评价信息，并可对其进行适当的修<br />\r\n改、删除，但不得不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和<br />\r\n公民的合法权益，不得利用本站制作、复制和传播下列信息：<br />\r\n6.1.1、 反对宪法所确定的基本原则，煽动、抗拒、破坏宪法和法律、行政法规实施的；<br />\r\n6.1.2、 煽动颠覆国家政权，推翻社会主义制度，煽动、分裂国家，破坏国家统一的；<br />\r\n6.1.3、 损害国家荣誉和利益的；<br />\r\n6.1.4、 煽动民族仇恨、民族歧视，破坏民族团结的；<br />\r\n6.1.5、 任何包含对种族、性别、宗教、地域内容等歧视的；<br />\r\n6.1.6、 捏造或者歪曲事实，散布谣言，扰乱社会秩序的；<br />\r\n6.1.7、 宣扬封建迷信、邪教、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；<br />\r\n<br />\r\n6.1.8、 公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；<br />\r\n6.1.9、 损害国家机关信誉的；<br />\r\n6.1.10、其他违反宪法和法律行政法规的。<br />\r\n6.1.11、进行商业广告行为的<br />\r\n6.2、用户不得通过任何手段恶意注册滑稽之家网站帐号，包括但不限于以牟利、炒作、套现、<br />\r\n获奖等为目的多个账号注册。用户亦不得盗用其他用户帐号。如用户违反上述规定，则比特<br />\r\n儿网有权直接采取一切必要的措施，包括但不限于删除用户发布的内容、取消用户在网站获<br />\r\n得的星级、荣誉以及虚拟财富，暂停或查封用户帐号，取消因违规所获利益，乃至通过诉讼<br />\r\n形式追究用户法律责任等。<br />\r\n6.3、禁止用户将滑稽之家任何形式作为从事各种非法活动的场所、平台或媒介。未经比特<br />\r\n儿的授权或许可，用户不得借用本站的名义从事任何商业活动，也不得以任何形式将土豪时代<br />\r\n作为从事商业活动的场所、平台或媒介。如用户违反上述规定，则滑稽之家有权直接采取一切<br />\r\n必要的措施，包括但不限于删除用户发布的内容、取消用户在网站获得的星级、荣誉以及虚<br />\r\n拟财富，暂停或查封用户帐号，取消因违规所获利益，乃至通过诉讼形式追究用户法律责任<br />\r\n等。<br />\r\n6.4、用户在滑稽之家以各种形式发布的一切信息，均应符合国家法律法规等相关规定及网站<br />\r\n相关规定，符合社会公序良俗，并不侵犯任何第三方主体的合法权益，否则用户自行承担因<br />\r\n此产生的一切法律后果，且滑稽之家因此受到的损失，有权向用户追偿。<br />\r\n七、责任限制与免责<br />\r\n7.1、不论在任何情况下，滑稽之家对由于互联网正常的设备维护，互联网络连接故障，电脑、<br />\r\n通讯或其他系统的故障，网络攻击，电力故障，罢工，暴乱，骚乱，灾难性天气（如火灾、<br />\r\n洪水、风暴等），爆炸，战争，政府行为，司法行政机关的命令或第三方的不作为而造成的<br />\r\n不能履行或延迟履行服务不承担责任。<br />\r\n7.2、滑稽之家作为“网络服务提供者”的第三方平台，不担保网站平台上的信息及服务能充<br />\r\n分满足用户的需求。对于用户在接受滑稽之家服务过程中可能遇到的错误、侮辱、诽谤、不<br />\r\n作为、淫秽、色情或亵渎事件，滑稽之家不承担法律责任。<br />\r\n7.3、基于互联网的特殊性，滑稽之家也不担保服务不会受中断，对服务的及时性、安全性都<br />\r\n不作担保，不承担非因土豪时代导致的责任。<br />\r\n7.4、滑稽之家力图使用户能对本网站进行安全访问和使用，但滑稽之家不声明也不保证本网站<br />\r\n或其服务器是不含病毒或其它潜在有害因素的；因此用户应使用业界公认的软件查杀任何自<br />\r\n滑稽之家 下载文件中的病毒。用户须自行辨别真伪，谨慎预防风险。<br />\r\n<br />\r\n7.5、滑稽之家不对用户所发布信息的保存、修改、删除或储存失败负责。对网站上的非因比<br />\r\n特儿故意所导致的排字错误、疏忽等不承担责任。用户须自行辨别真伪，谨慎预防风险。<br />\r\n7.6、滑稽之家有权但无义务，改善或更正本网站任何部分之疏漏、错误。<br />\r\n7.7、除非滑稽之家以书面形式明确约定，滑稽之家对于用户以任何方式（包括但不限于包含、<br />\r\n经由、连接或下载）从本网站所获得的任何内容信息，包括但不限于广告等，不保证其准确<br />\r\n性、完整性、可靠性；对于用户因本网站上的内容信息而购买、获取的任何产品、服务、信<br />\r\n息或资料，滑稽之家不承担责任。用户自行承担使用本网站信息内容所导致的风险。<br />\r\n7.8、滑稽之家内所有用户所发表的用户评论，仅代表用户个人观点，并不表示本网站赞同其<br />\r\n观点或证实其描述，本网站不承担用户评论引发的任何法律责任。<br />\r\n7.9、滑稽之家有权删除滑稽之家网内各类不符合法律或协议规定的信息，而保留不通知用户的<br />\r\n权利。<br />\r\n7.10、所有发给用户的通告，滑稽之家都将通过正式的页面公告、站内信、电子邮件、客服电<br />\r\n话、手机短信或常规的信件送达。任何非经土滑稽之家正规渠道获得的中奖、优惠等活动或信息，<br />\r\n&nbsp;滑稽之家不承担法律责任。<br />\r\n7.11、滑稽之家有权根据市场情况调整充值、提现、交易等手续费费率，有权决定免费推广期<br />\r\n的终止。<br />\r\n八、法律管辖和适用<br />\r\n8.1、 本协议的订立、执行和解释及争议的解决均应适用中华人民共和国大陆地区的法律管<br />\r\n辖。<br />\r\n8.2、如发生本协议条款与上述法律相抵触时，则这些条款将完全按上述法律规定重新解释，<br />\r\n但不影响其它合法条款对用户产生的法律效力和影响。<br />\r\n8.3、 本协议的规定是可分割的，如本协议任何规定被裁定为无效或不可执行，则该规定可<br />\r\n被删除，不影响其余条款的继续执行。<br />\r\n8.4、 如双方就本协议内容或其执行发生任何争议，双方应尽力友好协商解决；协商不成时，<br />\r\n任何一方均可向滑稽之家所在地人民法院提起诉讼。<br />\r\n8.5、本协议是滑稽之家与用户注册成为滑稽之家用户，使用滑稽之家服务之间的重要法律文件，<br />\r\n&nbsp;滑稽之家或者用户的任何其他书面或者口头意思表示与本协议不一致的，均应当以本协议为<br />\r\n准。<br />\r\n滑稽之家 平台深圳区链网络科技有限公司保留最终解释权。<br />\r\n<br />\r\n九、附则<br />\r\n本协议除以上正文部分外，还包括土豪时代平台发布的各项服务规则、产品使用规则、页面提<br />\r\n示提醒等，各项服务规则与本协议具有同等法律效力，为本协议不可分割的重要组成部分。<br />\r\n服务规则包括但不限 《土豪时代用户协议》、 《网络交易服务规则》、 《土豪时代平台使用规<br />\r\n则》、 《隐私声明》、 《反作弊声明》、 《用户交易体验承诺》、 《网购服务》等。其他<br />\r\n交易服务规则。<br />', 4, 1480224641, 1480224643, 1),
(8, '免责声明', '免责声明', '', '0', '1', 'aboutus', '根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。滑稽之家仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在滑稽之家平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任。', 5, 1480224678, 1480224679, 1),
(9, '注册协议', '注册协议', '', '0', '1', 'aboutus', '根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。滑稽之家仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在滑稽之家平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任。<br />\r\n<br />\r\n<br />\r\n<br />\r\n请您务必注意以下几点：<br />\r\n<br />\r\n<br />\r\n<br />\r\n1.警惕虚假宣传，不要听信任何币值会永远上涨的宣传，数字货币作为一种虚拟商品，具有极高的风险，很可能出现价值归零的情况。<br />\r\n<br />\r\n2.对于推广和运营方的市场承诺，需要谨慎判别，目前并没有相关法律能保证其兑现承诺，投币网不会对任何数字货币进行背书和承诺。<br />\r\n<br />\r\n3.坚决拒绝多层次传销组织，在我国参与该类组织是违法行为，造成的一切后果自负，平台将配合相关执法部门的要求进行调查、取证。<br />\r\n<br />\r\n4.根据《中华人民共和国反洗钱法》等有关法律规定，严格禁止利用平台进行洗钱等违法犯罪活动，平台将配合相关执法部门的要求进行调查、取证。<br />\r\n<br />\r\n5.数字货币和数字积分等虚拟商品所对应的实物财产和持有者享有的权利存在因发行方等义务相关方破产，关闭或违法犯罪等其他经营风险导致无法兑现的风险。<br />\r\n<br />\r\n6.在滑稽之家注册参与交换的用户，应保证注册身份信息的真实、准确，保证拟交换的数字货币等虚拟商品的来源合法。因信息不真实造成的任何问题，平台概不负责。<br />\r\n<br />\r\n7.因国家法律，法规及政策性文件的制定和修改，导致数字货币等虚拟商品的交易被暂停或者禁止的，由此导致的全部损失由用户自行承担。<br />\r\n<br />\r\n8.请控制风险，不要投入超过您风险承受能力的资金，不要购买您所不了解的数字货币，数字积分等虚拟商品。<br />', 6, 1480224705, 1480224707, 1),
(10, '注册指南', '注册指南', '', '0', '1', 'help', '<img src="/Upload/article/583a700024ba4.png" alt="" />', 1, 1480224781, 1480224782, 1),
(12, 'c', '充值指南', '', '0', '1', 'help', '测试数据', 3, 0, 0, 1),
(13, 'd', '充值限额', '', '0', '1', 'help', '测试数据', 4, 0, 0, 1),
(14, '提现指南', '提现指南', '', '0', '1', 'help', '<h3 style="font-family:''Microsoft YaHei'';font-weight:500;font-size:24px;background-color:#FFFFFF;">\r\n	提现须知\r\n</h3>\r\n<p style="color:#999999;font-family:''Microsoft YaHei'';font-size:14px;background-color:#FFFFFF;">\r\n	1. 提现手续费率1％，每笔提现最低收费2元 。\r\n</p>\r\n<p style="color:#999999;font-family:''Microsoft YaHei'';font-size:14px;background-color:#FFFFFF;">\r\n	2. 单笔提现限额100元——50000元。\r\n</p>\r\n<p style="color:#999999;font-family:''Microsoft YaHei'';font-size:14px;background-color:#FFFFFF;">\r\n	3. 银行卡提现24小时内到帐，在已汇出24小时后 仍未收到款项，请联系客服。\r\n</p>', 5, 1480501522, 1480501524, 1),
(15, 'aa', '虚拟币钱包下载', '', '0', '1', 'xiazai', '暂无', 1, 1486396800, 1486483200, 0),
(16, '浏览器下载', '浏览器下载', '', '0', '1', 'xiazai', '<img src="/Upload/article/583a7016bd67f.png" alt="" />', 2, 1480224804, 1480224805, 1),
(17, '新币上线申请', '新币上线申请', '', '0', '1', 'xiazai', '<span style="font-size:14px;background-color:#E53333;">请发邮件联系工作人员，合作愉快！！！ <a href="mailto:413670447@qq.com">413679447@qq.com</a></span>', 3, 1480224952, 1480224955, 1),
(18, 'dd', '工具下载', '', '0', '1', 'xiazai', '测试数据', 4, 0, 0, 0),
(19, 'aaa', '官方公告', '', '1', '0', '', '', 1, 0, 0, 1),
(20, 'bbb', '行业资讯', '', '1', '0', '', '', 2, 0, 0, 1),
(21, '常见问题', '常见问题', '', '1', '0', '', '海通网络502182299@qq.com', 3, 1480224089, 1480224091, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_auth_extend`
--

CREATE TABLE IF NOT EXISTS `btchanges_auth_extend` (
  `group_id` mediumint(10) unsigned NOT NULL COMMENT '用户id',
  `extend_id` mediumint(8) unsigned NOT NULL COMMENT '扩展表中数据的id',
  `type` tinyint(1) unsigned NOT NULL COMMENT '扩展类型标识 1:栏目分类权限;2:模型权限',
  UNIQUE KEY `group_extend_type` (`group_id`,`extend_id`,`type`),
  KEY `uid` (`group_id`),
  KEY `group_id` (`extend_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `btchanges_auth_extend`
--

INSERT INTO `btchanges_auth_extend` (`group_id`, `extend_id`, `type`) VALUES
(1, 1, 1),
(1, 1, 2),
(1, 2, 1),
(1, 2, 2),
(1, 3, 1),
(1, 3, 2),
(1, 4, 1),
(1, 37, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_auth_group`
--

CREATE TABLE IF NOT EXISTS `btchanges_auth_group` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '用户组id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '用户组所属模块',
  `type` tinyint(4) NOT NULL COMMENT '组类型',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '用户组中文名称',
  `description` varchar(80) NOT NULL DEFAULT '' COMMENT '描述信息',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '用户组状态：为1正常，为0禁用,-1为删除',
  `rules` varchar(500) NOT NULL DEFAULT '' COMMENT '用户组拥有的规则id，多个规则 , 隔开',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `btchanges_auth_group`
--

INSERT INTO `btchanges_auth_group` (`id`, `module`, `type`, `title`, `description`, `status`, `rules`) VALUES
(2, 'admin', 1, '财务管理组', '拥有网站资金相关的权限', -1, '431'),
(3, 'admin', 1, '超级管理员', '超级管理员组,拥有系统所有权限', 1, '1865,1866,1867,1868,1875,1876,1881,1883,1934,1937,1943,1952,1955,1958,1960,1963,1974,1975,1976,2000,2002,2021,2023,2028,2029,2034'),
(4, 'admin', 1, '资讯管理员', '拥有网站文章资讯相关权限11', -1, ''),
(5, 'admin', 1, '资讯管理员', '拥有网站文章资讯相关权限', 1, ''),
(6, 'admin', 1, '财务管理组', '拥有网站资金相关的权限333', 1, '1671,1686,1687,1740,1741,1742,1743,1763,1765,1779,1780,1805,1806,1826,1827,1828,1832,1840,1841'),
(10, 'admin', 1, '财务管理组', '拥有网站资金相关的权限333', 1, ''),
(11, 'admin', 1, 'ceshi', '', 1, '1865,1875,1952,1955');

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_auth_group_access`
--

CREATE TABLE IF NOT EXISTS `btchanges_auth_group_access` (
  `uid` int(10) unsigned NOT NULL COMMENT '用户id',
  `group_id` mediumint(8) unsigned NOT NULL COMMENT '用户组id',
  UNIQUE KEY `uid_group_id` (`uid`,`group_id`),
  KEY `uid` (`uid`),
  KEY `group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

--
-- 转存表中的数据 `btchanges_auth_group_access`
--

INSERT INTO `btchanges_auth_group_access` (`uid`, `group_id`) VALUES
(2, 3),
(3, 3),
(4, 3),
(1, 11);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_auth_rule`
--

CREATE TABLE IF NOT EXISTS `btchanges_auth_rule` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT COMMENT '规则id,自增主键',
  `module` varchar(20) NOT NULL COMMENT '规则所属module',
  `type` tinyint(2) NOT NULL DEFAULT '1' COMMENT '1-url;2-主菜单',
  `name` char(80) NOT NULL DEFAULT '' COMMENT '规则唯一英文标识',
  `title` char(20) NOT NULL DEFAULT '' COMMENT '规则中文描述',
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效(0:无效,1:有效)',
  `condition` varchar(300) NOT NULL DEFAULT '' COMMENT '规则附加条件',
  PRIMARY KEY (`id`),
  KEY `module` (`module`,`status`,`type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2043 ;

--
-- 转存表中的数据 `btchanges_auth_rule`
--

INSERT INTO `btchanges_auth_rule` (`id`, `module`, `type`, `name`, `title`, `status`, `condition`) VALUES
(425, 'admin', 1, 'Admin/article/add', '新增', -1, ''),
(427, 'admin', 1, 'Admin/article/setStatus', '改变状态', -1, ''),
(428, 'admin', 1, 'Admin/article/update', '保存', -1, ''),
(429, 'admin', 1, 'Admin/article/autoSave', '保存草稿', -1, ''),
(430, 'admin', 1, 'Admin/article/move', '移动', -1, ''),
(432, 'admin', 2, 'Admin/Article/mydocument', '内容', -1, ''),
(437, 'admin', 1, 'Admin/Trade/config', '交易配置', -1, ''),
(449, 'admin', 1, 'Admin/Index/operate', '市场统计', -1, ''),
(455, 'admin', 1, 'Admin/Issue/config', '认购配置', -1, ''),
(457, 'admin', 1, 'Admin/Index/database/type/export', '数据备份', -1, ''),
(461, 'admin', 1, 'Admin/Article/chat', '聊天列表', -1, ''),
(464, 'admin', 1, 'Admin/Index/database/type/import', '数据还原', -1, ''),
(471, 'admin', 1, 'Admin/Mytx/config', '提现配置', -1, ''),
(472, 'admin', 2, 'Admin/Mytx/index', '提现', -1, ''),
(473, 'admin', 1, 'Admin/Config/market', '市场配置', -1, ''),
(477, 'admin', 1, 'Admin/User/myzr', '转入虚拟币', -1, ''),
(479, 'admin', 1, 'Admin/User/myzc', '转出虚拟币', -1, ''),
(482, 'admin', 2, 'Admin/ExtA/index', '扩展', -1, ''),
(488, 'admin', 1, 'Admin/Auth_manager/createGroup', '新增用户组', -1, ''),
(499, 'admin', 1, 'Admin/ExtA/index', '扩展管理', -1, ''),
(509, 'admin', 1, 'Admin/Article/adver_edit', '编辑', -1, ''),
(510, 'admin', 1, 'Admin/Article/adver_status', '修改', -1, ''),
(513, 'admin', 1, 'Admin/Issue/index_edit', '认购编辑', -1, ''),
(514, 'admin', 1, 'Admin/Issue/index_status', '认购修改', -1, ''),
(515, 'admin', 1, 'Admin/Article/chat_edit', '编辑', -1, ''),
(516, 'admin', 1, 'Admin/Article/chat_status', '修改', -1, ''),
(517, 'admin', 1, 'Admin/User/coin_edit', 'coin修改', -1, ''),
(519, 'admin', 1, 'Admin/Mycz/type_status', '状态修改', -1, ''),
(520, 'admin', 1, 'Admin/Issue/log_status', '认购状态', -1, ''),
(521, 'admin', 1, 'Admin/Issue/log_jiedong', '认购解冻', -1, ''),
(522, 'admin', 1, 'Admin/Tools/database/type/export', '数据备份', -1, ''),
(525, 'admin', 1, 'Admin/Config/coin_edit', '编辑', -1, ''),
(526, 'admin', 1, 'Admin/Config/coin_add', '编辑币种', -1, ''),
(527, 'admin', 1, 'Admin/Config/coin_status', '状态修改', -1, ''),
(528, 'admin', 1, 'Admin/Config/market_edit', '编辑', -1, ''),
(530, 'admin', 1, 'Admin/Tools/database/type/import', '数据还原', -1, ''),
(541, 'admin', 2, 'Admin/Trade/config', '交易', -1, ''),
(569, 'admin', 1, 'Admin/ADVERstatus', '修改', -1, ''),
(570, 'admin', 1, 'Admin/Tradelog/index', '交易记录', -1, ''),
(585, 'admin', 1, 'Admin/Config/mycz', '充值配置', -1, ''),
(590, 'admin', 1, 'Admin/Mycztype/index', '充值类型', -1, ''),
(600, 'admin', 1, 'Admin/Usergoods/index', '用户联系地址', -1, ''),
(1379, 'admin', 1, 'Admin/Bazaar/index', '集市管理', -1, ''),
(1405, 'admin', 1, 'Admin/Bazaar/config', '集市配置', -1, ''),
(1425, 'admin', 1, 'Admin/Bazaar/log', '集市记录', -1, ''),
(1451, 'admin', 1, 'Admin/Bazaar/invit', '集市推广', -1, ''),
(1846, 'admin', 1, 'Admin/AuthManager/createGroup', '新增用户组', -1, ''),
(1847, 'admin', 1, 'Admin/AuthManager/editgroup', '编辑用户组', -1, ''),
(1848, 'admin', 1, 'Admin/AuthManager/writeGroup', '更新用户组', -1, ''),
(1849, 'admin', 1, 'Admin/AuthManager/changeStatus', '改变状态', -1, ''),
(1850, 'admin', 1, 'Admin/AuthManager/access', '访问授权', -1, ''),
(1851, 'admin', 1, 'Admin/AuthManager/category', '分类授权', -1, ''),
(1852, 'admin', 1, 'Admin/AuthManager/user', '成员授权', -1, ''),
(1853, 'admin', 1, 'Admin/AuthManager/tree', '成员列表授权', -1, ''),
(1854, 'admin', 1, 'Admin/AuthManager/group', '用户组', -1, ''),
(1855, 'admin', 1, 'Admin/AuthManager/addToGroup', '添加到用户组', -1, ''),
(1856, 'admin', 1, 'Admin/AuthManager/removeFromGroup', '用户组移除', -1, ''),
(1857, 'admin', 1, 'Admin/AuthManager/addToCategory', '分类添加到用户组', -1, ''),
(1858, 'admin', 1, 'Admin/AuthManager/addToModel', '模型添加到用户组', -1, ''),
(1859, 'admin', 1, 'Admin/Trade/status', '修改状态', -1, ''),
(1860, 'admin', 1, 'Admin/Trade/chexiao', '撤销挂单', -1, ''),
(1861, 'admin', 1, 'Admin/Shop/images', '图片', 1, ''),
(1862, 'admin', 1, 'Admin/Login/index', '用户登录', -1, ''),
(1863, 'admin', 1, 'Admin/Login/loginout', '用户退出', -1, ''),
(1864, 'admin', 1, 'Admin/User/setpwd', '修改管理员密码', -1, ''),
(1865, 'admin', 2, 'Admin/Index/index', '系统', 1, ''),
(1866, 'admin', 2, 'Admin/Article/index', '内容', 1, ''),
(1867, 'admin', 2, 'Admin/User/index', '用户', 1, ''),
(1868, 'admin', 2, 'Admin/Finance/index', '财务', 1, ''),
(1869, 'admin', 2, 'Admin/Trade/index', '交易', 1, ''),
(1870, 'admin', 2, 'Admin/Game/index', '应用', 1, ''),
(1871, 'admin', 2, 'Admin/Config/index', '设置', 1, ''),
(1872, 'admin', 2, 'Admin/Operate/index', '运营', 1, ''),
(1873, 'admin', 2, 'Admin/Tools/index', '工具', 1, ''),
(1874, 'admin', 2, 'Admin/Cloud/index', '扩展', 1, ''),
(1875, 'admin', 1, 'Admin/Index/index', '系统概览', 1, ''),
(1876, 'admin', 1, 'Admin/Article/index', '文章管理', 1, ''),
(1877, 'admin', 1, 'Admin/Article/edit', '编辑添加', -1, ''),
(1878, 'admin', 1, 'Admin/Text/index', '提示文字', -1, ''),
(1879, 'admin', 1, 'Admin/Text/edit', '编辑', -1, ''),
(1880, 'admin', 1, 'Admin/Text/status', '修改', -1, ''),
(1881, 'admin', 1, 'Admin/User/index', '用户管理', 1, ''),
(1882, 'admin', 1, 'Admin/User/config', '用户配置', -1, ''),
(1883, 'admin', 1, 'Admin/Finance/index', '财务明细', 1, ''),
(1884, 'admin', 1, 'Admin/Finance/myczTypeEdit', '编辑添加', -1, ''),
(1885, 'admin', 1, 'Admin/Finance/config', '配置', -1, ''),
(1886, 'admin', 1, 'Admin/Tools/index', '清理缓存', 1, ''),
(1887, 'admin', 1, 'Admin/Finance/type', '类型', -1, ''),
(1888, 'admin', 1, 'Admin/Finance/type_status', '状态修改', -1, ''),
(1889, 'admin', 1, 'Admin/User/edit', '编辑添加', -1, ''),
(1890, 'admin', 1, 'Admin/User/status', '修改状态', -1, ''),
(1891, 'admin', 1, 'Admin/User/adminEdit', '编辑添加', -1, ''),
(1892, 'admin', 1, 'Admin/User/adminStatus', '修改状态', -1, ''),
(1893, 'admin', 1, 'Admin/User/authEdit', '编辑添加', -1, ''),
(1894, 'admin', 1, 'Admin/User/authStatus', '修改状态', -1, ''),
(1895, 'admin', 1, 'Admin/User/authStart', '重新初始化权限', -1, ''),
(1896, 'admin', 1, 'Admin/User/logEdit', '编辑添加', -1, ''),
(1897, 'admin', 1, 'Admin/User/logStatus', '修改状态', -1, ''),
(1898, 'admin', 1, 'Admin/User/qianbaoEdit', '编辑添加', -1, ''),
(1899, 'admin', 1, 'Admin/Trade/index', '委托管理', 1, ''),
(1900, 'admin', 1, 'Admin/User/qianbaoStatus', '修改状态', -1, ''),
(1901, 'admin', 1, 'Admin/User/bankEdit', '编辑添加', -1, ''),
(1902, 'admin', 1, 'Admin/User/bankStatus', '修改状态', -1, ''),
(1903, 'admin', 1, 'Admin/User/coinEdit', '编辑添加', -1, ''),
(1904, 'admin', 1, 'Admin/User/coinLog', '财产统计', -1, ''),
(1905, 'admin', 1, 'Admin/User/goodsEdit', '编辑添加', -1, ''),
(1906, 'admin', 1, 'Admin/User/goodsStatus', '修改状态', -1, ''),
(1907, 'admin', 1, 'Admin/Article/typeEdit', '编辑添加', -1, ''),
(1908, 'admin', 1, 'Admin/Article/linkEdit', '编辑添加', -1, ''),
(1909, 'admin', 1, 'Admin/Config/index', '基本配置', 1, ''),
(1910, 'admin', 1, 'Admin/Article/adverEdit', '编辑添加', -1, ''),
(1911, 'admin', 1, 'Admin/User/authAccess', '访问授权', -1, ''),
(1912, 'admin', 1, 'Admin/User/authAccessUp', '访问授权修改', -1, ''),
(1913, 'admin', 1, 'Admin/User/authUser', '成员授权', -1, ''),
(1914, 'admin', 1, 'Admin/User/authUserAdd', '成员授权增加', -1, ''),
(1915, 'admin', 1, 'Admin/User/authUserRemove', '成员授权解除', -1, ''),
(1916, 'admin', 1, 'Admin/Operate/index', '推广奖励', 1, ''),
(1917, 'admin', 1, 'Admin/App/config', 'APP配置', 1, ''),
(1918, 'admin', 1, 'AdminUser/detail', '后台用户详情', -1, ''),
(1919, 'admin', 1, 'AdminUser/status', '后台用户状态', -1, ''),
(1920, 'admin', 1, 'AdminUser/add', '后台用户新增', -1, ''),
(1921, 'admin', 1, 'AdminUser/edit', '后台用户编辑', -1, ''),
(1922, 'admin', 1, 'Admin/Articletype/edit', '编辑', -1, ''),
(1923, 'admin', 1, 'Admin/Shop/index', '商品管理', 1, ''),
(1924, 'admin', 1, 'Admin/Huafei/index', '充值记录', 1, ''),
(1925, 'admin', 1, 'Admin/Huafei/config', '充值配置', 1, ''),
(1926, 'admin', 1, 'Admin/Vote/index', '投票记录', 1, ''),
(1927, 'admin', 1, 'Admin/Vote/type', '投票类型', 1, ''),
(1928, 'admin', 1, 'Admin/Money/index', '理财管理', 1, ''),
(1929, 'admin', 1, 'Admin/Issue/index', '认购管理', 1, ''),
(1930, 'admin', 1, 'Admin/Issue/log', '认购记录', 1, ''),
(1931, 'admin', 1, 'Admin/Article/images', '上传图片', -1, ''),
(1932, 'admin', 1, 'Admin/Adver/edit', '编辑', -1, ''),
(1933, 'admin', 1, 'Admin/Adver/status', '修改', -1, ''),
(1934, 'admin', 1, 'Admin/Article/type', '文章类型', 1, ''),
(1935, 'admin', 1, 'Admin/User/index_edit', '编辑', -1, ''),
(1936, 'admin', 1, 'Admin/User/index_status', '修改', -1, ''),
(1937, 'admin', 1, 'Admin/Finance/mycz', '人民币充值', 1, ''),
(1938, 'admin', 1, 'Admin/Finance/myczTypeStatus', '状态修改', -1, ''),
(1939, 'admin', 1, 'Admin/Finance/myczTypeImage', '上传图片', -1, ''),
(1940, 'admin', 1, 'Admin/Finance/mytxStatus', '修改状态', -1, ''),
(1941, 'admin', 1, 'Admin/Tools/dataExport', '备份数据库', 1, ''),
(1942, 'admin', 1, 'Admin/Tools/dataImport', '还原数据库', 1, ''),
(1943, 'admin', 1, 'Admin/User/admin', '管理员管理', 1, ''),
(1944, 'admin', 1, 'Admin/Trade/log', '成交记录', 1, ''),
(1945, 'admin', 1, 'Admin/Issue/edit', '认购编辑', -1, ''),
(1946, 'admin', 1, 'Admin/Issue/status', '认购修改', -1, ''),
(1947, 'admin', 1, 'Admin/Config/moble', '短信配置', 1, ''),
(1948, 'admin', 1, 'Admin/Invit/config', '推广配置', -1, ''),
(1949, 'admin', 1, 'Admin/App/vip_config_list', 'APP等级', 1, ''),
(1950, 'admin', 1, 'Admin/Link/edit', '编辑', -1, ''),
(1951, 'admin', 1, 'Admin/Link/status', '修改', -1, ''),
(1952, 'admin', 1, 'Admin/Index/coin', '币种统计', 1, ''),
(1953, 'admin', 1, 'Admin/Shop/config', '商城配置', 1, ''),
(1954, 'admin', 1, 'Admin/Money/log', '理财日志', 1, ''),
(1955, 'admin', 1, 'Admin/Index/market', '市场统计', 1, ''),
(1956, 'admin', 1, 'Admin/Chat/edit', '编辑', -1, ''),
(1957, 'admin', 1, 'Admin/Chat/status', '修改', -1, ''),
(1958, 'admin', 1, 'Admin/Article/adver', '广告管理', 1, ''),
(1959, 'admin', 1, 'Admin/Trade/chat', '交易聊天', 1, ''),
(1960, 'admin', 1, 'Admin/Finance/myczType', '人民币充值方式', 1, ''),
(1961, 'admin', 1, 'Admin/Usercoin/edit', '财产修改', -1, ''),
(1962, 'admin', 1, 'Admin/Finance/mytxExcel', '导出选中', -1, ''),
(1963, 'admin', 1, 'Admin/User/auth', '权限列表', 1, ''),
(1964, 'admin', 1, 'Admin/Mycz/status', '修改', -1, ''),
(1965, 'admin', 1, 'Admin/Mycztype/status', '状态修改', -1, ''),
(1966, 'admin', 1, 'Admin/Config/contact', '客服配置', 1, ''),
(1967, 'admin', 1, 'Admin/App/adsblock_list', 'APP广告板块', 1, ''),
(1968, 'admin', 1, 'Admin/Tools/queue', '服务器队列', 1, ''),
(1969, 'admin', 1, 'Admin/Tools/qianbao', '钱包检查', 1, ''),
(1970, 'admin', 1, 'Admin/Shop/type', '商品类型', 1, ''),
(1971, 'admin', 1, 'Admin/Fenhong/index', '分红管理', 1, ''),
(1972, 'admin', 1, 'Admin/Huafei/type', '充值金额', 1, ''),
(1973, 'admin', 1, 'Admin/Money/fee', '理财明细', 1, ''),
(1974, 'admin', 1, 'Admin/Article/link', '友情链接', 1, ''),
(1975, 'admin', 1, 'Admin/User/log', '登陆日志', 1, ''),
(1976, 'admin', 1, 'Admin/Finance/mytx', '人民币提现', 1, ''),
(1977, 'admin', 1, 'Admin/Finance/mytxChuli', '正在处理', -1, ''),
(1978, 'admin', 1, 'Admin/Config/bank', '银行配置', 1, ''),
(1979, 'admin', 1, 'Admin/Config/bank_edit', '编辑', -1, ''),
(1980, 'admin', 1, 'Admin/Coin/edit', '编辑', 1, ''),
(1981, 'admin', 1, 'Admin/Coin/status', '状态修改', -1, ''),
(1982, 'admin', 1, 'Admin/Market/edit', '编辑市场', 1, ''),
(1983, 'admin', 1, 'Admin/Config/market_add', '状态修改', -1, ''),
(1984, 'admin', 1, 'Admin/Tools/invoke', '其他模块调用', -1, ''),
(1985, 'admin', 1, 'Admin/Tools/optimize', '优化表', -1, ''),
(1986, 'admin', 1, 'Admin/Tools/repair', '修复表', -1, ''),
(1987, 'admin', 1, 'Admin/Tools/del', '删除备份文件', -1, ''),
(1988, 'admin', 1, 'Admin/Tools/export', '备份数据库', -1, ''),
(1989, 'admin', 1, 'Admin/Tools/import', '还原数据库', -1, ''),
(1990, 'admin', 1, 'Admin/Tools/excel', '导出数据库', -1, ''),
(1991, 'admin', 1, 'Admin/Tools/exportExcel', '导出Excel', -1, ''),
(1992, 'admin', 1, 'Admin/Tools/importExecl', '导入Excel', -1, ''),
(1993, 'admin', 1, 'Admin/Config/coin', '币种配置', 1, ''),
(1994, 'admin', 1, 'Admin/User/detail', '用户详情', -1, ''),
(1995, 'admin', 1, 'Admin/App/ads_user', 'APP广告用户', 1, ''),
(1996, 'admin', 1, 'Admin/Cloud/theme', '主题模板', 1, ''),
(1997, 'admin', 1, 'Admin/Shop/coin', '付款方式', 1, ''),
(1998, 'admin', 1, 'Admin/Huafei/coin', '付款方式', 1, ''),
(1999, 'admin', 1, 'Admin/Trade/comment', '币种评论', 1, ''),
(2000, 'admin', 1, 'Admin/User/qianbao', '用户钱包', 1, ''),
(2001, 'admin', 1, 'Admin/Trade/market', '交易市场', 1, ''),
(2002, 'admin', 1, 'Admin/Finance/mytxConfig', '人民币提现配置', 1, ''),
(2003, 'admin', 1, 'Admin/Finance/mytxChexiao', '撤销提现', -1, ''),
(2004, 'admin', 1, 'Admin/Mytx/status', '状态修改', -1, ''),
(2005, 'admin', 1, 'Admin/Mytx/excel', '取消', -1, ''),
(2006, 'admin', 1, 'Admin/Mytx/exportExcel', '导入excel', -1, ''),
(2007, 'admin', 1, 'Admin/Menu/index', '菜单管理', -1, ''),
(2008, 'admin', 1, 'Admin/Menu/sort', '排序', 1, ''),
(2009, 'admin', 1, 'Admin/Menu/add', '添加', 1, ''),
(2010, 'admin', 1, 'Admin/Menu/edit', '编辑', 1, ''),
(2011, 'admin', 1, 'Admin/Cloud/kefu', '客服代码', 1, ''),
(2012, 'admin', 1, 'Admin/Menu/del', '删除', 1, ''),
(2013, 'admin', 1, 'Admin/Cloud/kefuUp', '使用', 1, ''),
(2014, 'admin', 1, 'Admin/Menu/toogleHide', '是否隐藏', 1, ''),
(2015, 'admin', 1, 'Admin/Menu/toogleDev', '是否开发', 1, ''),
(2016, 'admin', 1, 'Admin/Menu/importFile', '导入文件', -1, ''),
(2017, 'admin', 1, 'Admin/Menu/import', '导入', -1, ''),
(2018, 'admin', 1, 'Admin/Config/text', '提示文字', 1, ''),
(2019, 'admin', 1, 'Admin/Shop/log', '购物记录', 1, ''),
(2020, 'admin', 1, 'Admin/Fenhong/log', '分红记录', 1, ''),
(2021, 'admin', 1, 'Admin/User/bank', '提现地址', 1, ''),
(2022, 'admin', 1, 'Admin/Trade/invit', '交易推荐', 1, ''),
(2023, 'admin', 1, 'Admin/Finance/myzr', '虚拟币转入', 1, ''),
(2024, 'admin', 1, 'Admin/Finance/mytxQueren', '确认提现', -1, ''),
(2025, 'admin', 1, 'Admin/Finance/myzcQueren', '确认转出', -1, ''),
(2026, 'admin', 1, 'Admin/Config/qita', '其他配置', 1, ''),
(2027, 'admin', 1, 'Admin/Shop/goods', '收货地址', 1, ''),
(2028, 'admin', 1, 'Admin/User/coin', '用户财产', 1, ''),
(2029, 'admin', 1, 'Admin/Finance/myzc', '虚拟币转出', 1, ''),
(2030, 'admin', 1, 'Admin/Verify/code', '图形验证码', -1, ''),
(2031, 'admin', 1, 'Admin/Verify/mobile', '手机验证码', -1, ''),
(2032, 'admin', 1, 'Admin/Verify/email', '邮件验证码', -1, ''),
(2033, 'admin', 1, 'Admin/Config/daohang', '导航配置', 1, ''),
(2034, 'admin', 1, 'Admin/User/goods', '联系地址', 1, ''),
(2035, 'admin', 1, 'Admin/User/myzc_qr', '确认转出', -1, ''),
(2036, 'admin', 1, 'Admin/Article/status', '修改状态', -1, ''),
(2037, 'admin', 1, 'Admin/Finance/myczStatus', '修改状态', -1, ''),
(2038, 'admin', 1, 'Admin/Finance/myczQueren', '确认到账', -1, ''),
(2039, 'admin', 1, 'Admin/Article/typeStatus', '修改状态', -1, ''),
(2040, 'admin', 1, 'Admin/Article/linkStatus', '修改状态', -1, ''),
(2041, 'admin', 1, 'Admin/Article/adverStatus', '修改状态', -1, ''),
(2042, 'admin', 1, 'Admin/Article/adverImage', '上传图片', -1, '');

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_bazaar`
--

CREATE TABLE IF NOT EXISTS `btchanges_bazaar` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coin` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `deal` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集市交易表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_bazaar_config`
--

CREATE TABLE IF NOT EXISTS `btchanges_bazaar_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `market` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '市场名称',
  `price_min` decimal(20,8) unsigned NOT NULL COMMENT '最小交易价格',
  `price_max` decimal(20,8) unsigned NOT NULL COMMENT '最大交易价格',
  `num_mix` decimal(20,8) unsigned NOT NULL COMMENT '最小交易数量',
  `num_max` decimal(20,8) unsigned NOT NULL COMMENT '最大交易数量',
  `invit_coin` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '上家赠送币种',
  `invit_1` decimal(20,8) unsigned NOT NULL COMMENT '一代赠送比例',
  `invit_2` decimal(20,8) unsigned NOT NULL COMMENT '二代赠送比例',
  `invit_3` decimal(20,8) unsigned NOT NULL COMMENT '三代赠送比例',
  `fee` varchar(50) CHARACTER SET utf8 NOT NULL COMMENT '手续费',
  `default` tinyint(2) unsigned NOT NULL COMMENT '默认',
  `sort` int(11) unsigned NOT NULL COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL COMMENT '编辑时间',
  `status` tinyint(2) unsigned NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `coinname` (`market`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_bazaar_invit`
--

CREATE TABLE IF NOT EXISTS `btchanges_bazaar_invit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `invit` int(11) unsigned NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `type` varchar(50) CHARACTER SET utf8 NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_bazaar_log`
--

CREATE TABLE IF NOT EXISTS `btchanges_bazaar_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `peerid` int(11) unsigned NOT NULL,
  `coin` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`),
  KEY `peerid` (`peerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='集市交易记录表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_category`
--

CREATE TABLE IF NOT EXISTS `btchanges_category` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '分类ID',
  `name` varchar(30) NOT NULL COMMENT '标志',
  `title` varchar(50) NOT NULL COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `list_row` tinyint(3) unsigned NOT NULL DEFAULT '10' COMMENT '列表每页行数',
  `meta_title` varchar(50) NOT NULL DEFAULT '' COMMENT 'SEO的网页标题',
  `keywords` varchar(255) NOT NULL DEFAULT '' COMMENT '关键字',
  `description` varchar(255) NOT NULL DEFAULT '' COMMENT '描述',
  `template_index` varchar(100) NOT NULL COMMENT '频道页模板',
  `template_lists` varchar(100) NOT NULL COMMENT '列表页模板',
  `template_detail` varchar(100) NOT NULL COMMENT '详情页模板',
  `template_edit` varchar(100) NOT NULL COMMENT '编辑页模板',
  `model` varchar(100) NOT NULL DEFAULT '' COMMENT '关联模型',
  `type` varchar(100) NOT NULL DEFAULT '' COMMENT '允许发布的内容类型',
  `link_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '外链',
  `allow_publish` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许发布内容',
  `display` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '可见性',
  `reply` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '是否允许回复',
  `check` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '发布的文章是否需要审核',
  `reply_model` varchar(100) NOT NULL DEFAULT '',
  `extend` text NOT NULL COMMENT '扩展设置',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `update_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '更新时间',
  `status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '数据状态',
  `icon` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '分类图标',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uk_name` (`name`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='分类表' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `btchanges_category`
--

INSERT INTO `btchanges_category` (`id`, `name`, `title`, `pid`, `sort`, `list_row`, `meta_title`, `keywords`, `description`, `template_index`, `template_lists`, `template_detail`, `template_edit`, `model`, `type`, `link_id`, `allow_publish`, `display`, `reply`, `check`, `reply_model`, `extend`, `create_time`, `update_time`, `status`, `icon`) VALUES
(1, 'blog', '博客', 0, 0, 10, '', '', '', '', '', '', '', '2', '2,1', 0, 0, 1, 0, 0, '1', '', 1379474947, 1382701539, 1, 0),
(2, 'default_blog', '默认分类', 1, 1, 10, '', '', '', '', '', '', '', '2', '2,1,3', 0, 1, 1, 0, 1, '1', '', 1379475028, 1386839751, 1, 31);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_chat`
--

CREATE TABLE IF NOT EXISTS `btchanges_chat` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) NOT NULL,
  `username` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='文字聊天表' AUTO_INCREMENT=21 ;

--
-- 转存表中的数据 `btchanges_chat`
--

INSERT INTO `btchanges_chat` (`id`, `userid`, `username`, `content`, `sort`, `addtime`, `endtime`, `status`) VALUES
(3, '24', 'zxx666', '[/#3]', 0, 1480243774, 0, 1),
(4, '24', 'zxx666', '大家好啊', 0, 1480243784, 0, 1),
(5, '26', 'qc9966', '[/#71]', 0, 1480260852, 0, 1),
(6, '20', 'yanlovemo', '青春来了吗', 0, 1480260876, 0, 1),
(7, '26', 'qc9966', '你猜', 0, 1480260882, 0, 1),
(8, '24', 'zxx666', '猜猜我是谁', 0, 1480316127, 0, 1),
(9, '32', 'jxxyxl202', '[/#30]', 0, 1480326402, 0, 1),
(10, '20', 'yanlovemo', '我知道你是谁。[/#19]', 0, 1480336731, 0, 1),
(11, '29', 'THbtc168', '[/#1]自由交易', 0, 1480336981, 0, 1),
(12, '29', 'THbtc168', '[/#55]', 0, 1480405503, 0, 1),
(13, '39', 'DK1690', '出来搞事啦', 0, 1480427164, 0, 1),
(14, '29', 'THbtc168', '[/#60]', 0, 1480491453, 0, 1),
(15, '29', 'THbtc168', '币友投币这样搞，我今天只能喝自来水了', 0, 1480491481, 0, 1),
(16, '68', 'liubing', '[/#74]', 0, 1480561856, 0, 1),
(17, '1', 'jw1203', '搞什么事', 0, 1486382293, 0, 1),
(18, '17', 'aw1355605638', '你们吼', 0, 1486644147, 0, 1),
(19, '5', 'reptilier', '。。。', 0, 1486817079, 0, 1),
(20, '23', 'xiaoguaibao', '...', 0, 1487910855, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_coin`
--

CREATE TABLE IF NOT EXISTS `btchanges_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `fee_bili` varchar(50) NOT NULL,
  `endtime` int(11) unsigned NOT NULL COMMENT '',
  `addtime` int(11) unsigned NOT NULL,
  `status` int(4) unsigned NOT NULL,
  `fee_meitian` varchar(200) NOT NULL COMMENT '每天限制',
  `dj_zj` varchar(200) NOT NULL,
  `dj_dk` varchar(200) NOT NULL,
  `dj_yh` varchar(200) NOT NULL,
  `dj_mm` varchar(200) NOT NULL,
  `zr_zs` varchar(50) NOT NULL,
  `zr_jz` varchar(50) NOT NULL,
  `zr_dz` varchar(50) NOT NULL,
  `zr_sm` varchar(50) NOT NULL,
  `zc_sm` varchar(50) NOT NULL,
  `zc_fee` varchar(50) NOT NULL,
  `zc_user` varchar(50) NOT NULL,
  `zc_min` varchar(50) NOT NULL,
  `zc_max` varchar(50) NOT NULL,
  `zc_jz` varchar(50) NOT NULL,
  `zc_zd` varchar(50) NOT NULL,
  `js_yw` varchar(50) NOT NULL,
  `js_sm` text NOT NULL,
  `js_qb` varchar(50) NOT NULL,
  `js_ym` varchar(50) NOT NULL,
  `js_gw` varchar(50) NOT NULL,
  `js_lt` varchar(50) NOT NULL,
  `js_wk` varchar(50) NOT NULL,
  `cs_yf` varchar(50) NOT NULL,
  `cs_sf` varchar(50) NOT NULL,
  `cs_fb` varchar(50) NOT NULL,
  `cs_qk` varchar(50) NOT NULL,
  `cs_zl` varchar(50) NOT NULL,
  `cs_cl` varchar(50) NOT NULL,
  `cs_zm` varchar(50) NOT NULL,
  `cs_nd` varchar(50) NOT NULL,
  `cs_jl` varchar(50) NOT NULL,
  `cs_ts` varchar(50) NOT NULL,
  `cs_bz` varchar(50) NOT NULL,
  `tp_zs` varchar(50) NOT NULL,
  `tp_js` varchar(50) NOT NULL,
  `tp_yy` varchar(50) NOT NULL,
  `tp_qj` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='币种配置表' AUTO_INCREMENT=14 ;

--
-- 转存表中的数据 `btchanges_coin`
--

INSERT INTO `btchanges_coin` (`id`, `name`, `type`, `title`, `img`, `sort`, `fee_bili`, `endtime`, `addtime`, `status`, `fee_meitian`, `dj_zj`, `dj_dk`, `dj_yh`, `dj_mm`, `zr_zs`, `zr_jz`, `zr_dz`, `zr_sm`, `zc_sm`, `zc_fee`, `zc_user`, `zc_min`, `zc_max`, `zc_jz`, `zc_zd`, `js_yw`, `js_sm`, `js_qb`, `js_ym`, `js_gw`, `js_lt`, `js_wk`, `cs_yf`, `cs_sf`, `cs_fb`, `cs_qk`, `cs_zl`, `cs_cl`, `cs_zm`, `cs_nd`, `cs_jl`, `cs_ts`, `cs_bz`, `tp_zs`, `tp_js`, `tp_yy`, `tp_qj`) VALUES
(1, 'cny', 'rmb', '人民币', 'cny.png', 0, '', 0, 0, 1, '', '', '0', '0', '0', '0', '1', '0', '0', '0', '', '', '', '', '1', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(11, 'hjc', 'rgb', '汉家币', '59550af0cedd6.png', 0, '10', 0, 0, 1, '20', '', '', '', '', '0', '1', '1', '', '', '0', '', '0', '10000', '1', '100', 'hjcoin', '', '#', '#', '#', '#', '#', '海通', '海通', '2016-5-18', '1S', '8000', '0', 'pos', '60', '100', '优秀团队', '暂无', '', '', '', ''),
(12, 'ydc', 'rgb', '元东币', '59550dacbe557.png', 0, '10', 0, 0, 1, '20', '', '', '', '', '0', '1', '1', '', '', '0', '', '0', '10000', '1', '100', 'ydcoin', '', '#', '#', '#', '#', '#', '海通', '海通', '2015-5-18', '1s', '80000000', '0', 'POS', '60', '60', '优秀团队', '暂无', '', '', '', ''),
(13, 'ltc', 'qbb', '莱特币', '595513e76d790.png', 0, '10', 0, 0, 1, '20', '127.0.0.1:86400', '86400', 'Litecoin', 'LitecoinLitecoin', '10', '1', '1', '', '', '0.5', '', '0', '10000', '1', '100', 'Litecoin', '<span style="color:#333333;font-family:''Microsoft YaHei'', 微软雅黑, arial, Tahoma, SimSun, sans-serif;font-size:14px;line-height:24px;background-color:#FFFFFF;">Litecoin受到了比特币(BTC)的启发，第一个基于Scrypt算法的网络数字货币，与Bitcoin相比，他的确认速度快，2.5分钟确认一次，总量为8400万。并且在技术上具有相同的实现原理，Litecoin的创造和转让基于一种开源的加密协议，不受到任何中央机构的管理。Litecoin旨在改进比特币，与其相比，Litecoin具有三种显著差异。第一，Litecoin网络每2.5分钟（而不是10分钟）就可以处理一个块，因此可以提供更快的交易确认。第二，Litecoin网络预期产出8400万个Litecoin，是比特币网络发行货币量的四倍之多。第三，Litecoin在其工作量证明算法中使用了由Colin Percival首次提出的scrypt加密算法。</span>', 'https://litecoin.org/cn/', 'https://github.com/litecoin-project', 'http://www.laiteb.com/', 'https://litecointalk.io/u', 'https://litecointalk.org/', 'Charls Lee', 'Scrypt', '2011/10/7', '150秒/块', '84000000', '35123000', 'PoW', '2016 Blocks', '50LTC', '人气高、国内几大交易网站支持、开发能力强', '推广止步不前', '', '', '', '');

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_coin_comment`
--

CREATE TABLE IF NOT EXISTS `btchanges_coin_comment` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `content` varchar(500) NOT NULL,
  `cjz` int(11) unsigned NOT NULL,
  `tzy` int(11) unsigned NOT NULL,
  `xcd` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `btchanges_coin_comment`
--

INSERT INTO `btchanges_coin_comment` (`id`, `userid`, `coinname`, `content`, `cjz`, `tzy`, `xcd`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 23, 'fc', 'good', 1, 0, 0, 0, 1486807926, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_coin_json`
--

CREATE TABLE IF NOT EXISTS `btchanges_coin_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=347 ;

--
-- 转存表中的数据 `btchanges_coin_json`
--

INSERT INTO `btchanges_coin_json` (`id`, `name`, `data`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(4, 'zc', '[0,0,"0.00000000",null]', '', 0, 1475510399, 0, 0),
(6, 'zc', '[0,0,null,null]', '', 0, 1475596799, 0, 0),
(8, 'zc', '[0,0,null,null]', '', 0, 1475683199, 0, 0),
(32, 'zyc', '[10000016077.659,0,"0.00000000",null]', '', 0, 1475510399, 0, 0),
(33, 'dog', '[100000969.1,0,"0.00000000",null]', '', 0, 1475510399, 0, 0),
(34, 'zyc', '[10000016077.659,0,null,null]', '', 0, 1475596799, 0, 0),
(35, 'dog', '[100000969.1,0,null,null]', '', 0, 1475596799, 0, 0),
(37, 'zh', '[1000000000999,0,"0.00000000",null]', '', 0, 1475510399, 0, 0),
(38, 'dog', '[100000969.1,0,null,null]', '', 0, 1475683199, 0, 0),
(39, 'zyc', '[10000016077.659,0,null,null]', '', 0, 1475683199, 0, 0),
(40, 'zh', '[1000000000999,0,null,null]', '', 0, 1475596799, 0, 0),
(41, 'dog', '[100000969.1,0,null,null]', '', 0, 1475769599, 0, 0),
(42, 'zyc', '[10000016077.659,0,null,null]', '', 0, 1475769599, 0, 0),
(43, 'zh', '[1000000000999,0,null,null]', '', 0, 1475683199, 0, 0),
(44, 'dog', '[100000969.1,0,null,null]', '', 0, 1475855999, 0, 0),
(45, 'zyc', '[10000016077.659,0,null,null]', '', 0, 1475855999, 0, 0),
(46, 'zh', '[1000000000999,0,null,null]', '', 0, 1475769599, 0, 0),
(47, 'dog', '[100000969.1,0,null,null]', '', 0, 1475942399, 0, 0),
(48, 'zyc', '[10000016077.659,0,null,null]', '', 0, 1475942399, 0, 0),
(49, 'zh', '[1000000000999,0,null,null]', '', 0, 1475855999, 0, 0),
(50, 'dog', '[100000969.1,0,null,null]', '', 0, 1476028799, 0, 0),
(51, 'zyc', '[10000016077.659,0,null,null]', '', 0, 1476028799, 0, 0),
(52, 'zh', '[1000000000999,0,null,null]', '', 0, 1475942399, 0, 0),
(53, 'dog', '[100000969.1,0,null,null]', '', 0, 1476115199, 0, 0),
(54, 'zyc', '[10000016077.659,0,null,null]', '', 0, 1476115199, 0, 0),
(55, 'zh', '[1000000000999,0,null,null]', '', 0, 1476028799, 0, 0),
(56, 'zh', '[1000000000999,0,null,null]', '', 0, 1476115199, 0, 0),
(57, 'dog', '[100000964.1,0,null,null]', '', 0, 1476201599, 0, 0),
(58, 'zyc', '[10000014657.518,0,null,null]', '', 0, 1476201599, 0, 0),
(59, 'zh', '[1000000000981.5,0,null,null]', '', 0, 1476201599, 0, 0),
(60, 'dog', '[100000964.1,0,null,null]', '', 0, 1476287999, 0, 0),
(61, 'zyc', '[10000014303.982,0,null,null]', '', 0, 1476287999, 0, 0),
(62, 'zh', '[1000000000981.5,0,null,null]', '', 0, 1476287999, 0, 0),
(63, 'dog', '[100000964.1,0,null,null]', '', 0, 1476374399, 0, 0),
(64, 'zyc', '[10000014303.982,0,null,null]', '', 0, 1476374399, 0, 0),
(65, 'zh', '[1000000010979.7,0,null,null]', '', 0, 1476374399, 0, 0),
(66, 'dog', '[1559057.1,0,null,null]', '', 0, 1476460799, 0, 0),
(67, 'zyc', '[16470.90909091,0,null,null]', '', 0, 1476460799, 0, 0),
(68, 'zh', '[11090,0,null,null]', '', 0, 1476460799, 0, 0),
(69, 'dog', '[1000001558046,0,null,null]', '', 0, 1476547199, 0, 0),
(70, 'zyc', '[1000015781.0202,0,null,null]', '', 0, 1476547199, 0, 0),
(71, 'zh', '[1000011089,0,null,null]', '', 0, 1476547199, 0, 0),
(72, 'dog', '[1000001558046,0,null,null]', '', 0, 1476633599, 0, 0),
(73, 'zh', '[1000011089,0,null,null]', '', 0, 1476633599, 0, 0),
(74, 'zh', '[1000011089,0,null,null]', '', 0, 1476719999, 0, 0),
(75, 'bcg', '[10000000,0,"0.00000000",null]', '', 0, 1475510399, 0, 0),
(76, 'bcg', '[10000000,0,null,null]', '', 0, 1475596799, 0, 0),
(77, 'bcg', '[10000000,0,null,null]', '', 0, 1475683199, 0, 0),
(78, 'btc', '[1111111,0,"0.00000000",null]', '', 0, 1475510399, 0, 0),
(79, 'ltc', '[1111122,0,"0.00000000",null]', '', 0, 1475510399, 0, 0),
(80, 'dgc', '[11212121,0,"0.00000000",null]', '', 0, 1475510399, 0, 0),
(81, 'ybc', '[21212121,0,"0.00000000",null]', '', 0, 1475510399, 0, 0),
(82, 'bcg', '[10000000,0,null,null]', '', 0, 1475769599, 0, 0),
(83, 'btc', '[1111111,0,null,null]', '', 0, 1475596799, 0, 0),
(84, 'ltc', '[1111122,0,null,null]', '', 0, 1475596799, 0, 0),
(85, 'dgc', '[11212121,0,null,null]', '', 0, 1475596799, 0, 0),
(86, 'ybc', '[21212121,0,null,null]', '', 0, 1475596799, 0, 0),
(87, 'btc', '[1111111,0,null,null]', '', 0, 1475683199, 0, 0),
(88, 'ltc', '[1111122,0,null,null]', '', 0, 1475683199, 0, 0),
(89, 'dgc', '[11212121,0,null,null]', '', 0, 1475683199, 0, 0),
(90, 'ybc', '[21212121,0,null,null]', '', 0, 1475683199, 0, 0),
(91, 'btc', '[1111111,0,null,null]', '', 0, 1475769599, 0, 0),
(92, 'ltc', '[1111122,0,null,null]', '', 0, 1475769599, 0, 0),
(93, 'dgc', '[11212121,0,null,null]', '', 0, 1475769599, 0, 0),
(94, 'ybc', '[21212121,0,null,null]', '', 0, 1475769599, 0, 0),
(95, 'bcg', '[10000000,0,null,null]', '', 0, 1475855999, 0, 0),
(96, 'btc', '[1111,0,null,null]', '', 0, 1475855999, 0, 0),
(97, 'btc', '[1111,0,null,null]', '', 0, 1475942399, 0, 0),
(98, 'btc', '[10,0,"0.00000000","0.00000000"]', '', 0, 1476028799, 0, 0),
(99, 'btc', '[10,0,null,null]', '', 0, 1476115199, 0, 0),
(100, 'btc', '[10,0,null,null]', '', 0, 1476201599, 0, 0),
(101, 'btc', '[10,0,null,null]', '', 0, 1476287999, 0, 0),
(102, 'btc', '[0,0,null,null]', '', 0, 1476374399, 0, 0),
(103, 'btc', '[0,0,null,null]', '', 0, 1476460799, 0, 0),
(104, 'btc', '[0,0,null,null]', '', 0, 1476547199, 0, 0),
(105, 'btc', '[0,0,null,null]', '', 0, 1476633599, 0, 0),
(106, 'btc', '[0,0,null,null]', '', 0, 1476719999, 0, 0),
(107, 'btc', '[0,0,null,null]', '', 0, 1476806399, 0, 0),
(108, 'btc', '[0,0,null,null]', '', 0, 1476892799, 0, 0),
(109, 'btc', '[0,0,null,null]', '', 0, 1476979199, 0, 0),
(110, 'btc', '[0,0,null,null]', '', 0, 1477065599, 0, 0),
(111, 'btc', '[0,0,null,null]', '', 0, 1477151999, 0, 0),
(112, 'btc', '[0,0,null,null]', '', 0, 1477238399, 0, 0),
(113, 'btc', '[0,0,null,null]', '', 0, 1477324799, 0, 0),
(114, 'btc', '[0,0,null,null]', '', 0, 1477411199, 0, 0),
(115, 'btc', '[0,0,null,null]', '', 0, 1477497599, 0, 0),
(116, 'btc', '[0,0,null,null]', '', 0, 1477583999, 0, 0),
(117, 'btc', '[0,0,null,null]', '', 0, 1477670399, 0, 0),
(118, 'btc', '[0,0,null,null]', '', 0, 1477756799, 0, 0),
(119, 'btc', '[0,0,null,null]', '', 0, 1477843199, 0, 0),
(120, 'btc', '[0,0,null,null]', '', 0, 1477929599, 0, 0),
(121, 'btc', '[0,0,null,null]', '', 0, 1478015999, 0, 0),
(122, 'btc', '[0,0,null,null]', '', 0, 1478102399, 0, 0),
(123, 'btc', '[0,0,null,null]', '', 0, 1478188799, 0, 0),
(124, 'btc', '[0,0,null,null]', '', 0, 1478275199, 0, 0),
(125, 'btc', '[0,0,null,null]', '', 0, 1478361599, 0, 0),
(126, 'btc', '[0,0,null,null]', '', 0, 1478447999, 0, 0),
(127, 'btc', '[0,0,null,null]', '', 0, 1478534399, 0, 0),
(128, 'btc', '[0,0,null,null]', '', 0, 1478620799, 0, 0),
(129, 'btc', '[0,0,null,null]', '', 0, 1478707199, 0, 0),
(130, 'btc', '[0,0,null,null]', '', 0, 1478793599, 0, 0),
(131, 'btc', '[0,0,null,null]', '', 0, 1478879999, 0, 0),
(132, 'btc', '[0,0,null,null]', '', 0, 1478966399, 0, 0),
(133, 'btc', '[0,0,null,null]', '', 0, 1479052799, 0, 0),
(134, 'btc', '[0,0,null,null]', '', 0, 1479139199, 0, 0),
(135, 'btc', '[0,0,null,null]', '', 0, 1479225599, 0, 0),
(136, 'btc', '[0,0,null,null]', '', 0, 1479311999, 0, 0),
(137, 'btc', '[0,0,null,null]', '', 0, 1479398399, 0, 0),
(138, 'btc', '[0,0,null,null]', '', 0, 1479484799, 0, 0),
(139, 'btc', '[0,0,null,null]', '', 0, 1479571199, 0, 0),
(140, 'btc', '[0,0,null,null]', '', 0, 1479657599, 0, 0),
(141, 'btc', '[0,0,null,null]', '', 0, 1479743999, 0, 0),
(142, 'btc', '[0,0,null,null]', '', 0, 1479830399, 0, 0),
(143, 'btc', '[0,0,null,null]', '', 0, 1479916799, 0, 0),
(144, 'btc', '[0,0,null,null]', '', 0, 1480003199, 0, 0),
(145, 'btc', '[0,0,null,null]', '', 0, 1480089599, 0, 0),
(146, 'btc', '[0,0,null,null]', '', 0, 1480175999, 0, 0),
(147, 'btc', '[0,0,null,null]', '', 0, 1480262399, 0, 0),
(148, 'btc', '[0,0,null,null]', '', 0, 1480348799, 0, 0),
(149, 'btc', '[0,0,null,null]', '', 0, 1480435199, 0, 0),
(150, 'btc', '[0,0,null,null]', '', 0, 1480521599, 0, 0),
(151, 'btc', '[0,0,null,null]', '', 0, 1480607999, 0, 0),
(152, 'btc', '[0,0,null,null]', '', 0, 1480694399, 0, 0),
(153, 'btc', '[0,0,null,null]', '', 0, 1480780799, 0, 0),
(154, 'btc', '[0,0,null,null]', '', 0, 1480867199, 0, 0),
(155, 'btc', '[0,0,null,null]', '', 0, 1480953599, 0, 0),
(156, 'btc', '[0,0,null,null]', '', 0, 1481039999, 0, 0),
(157, 'btc', '[0,0,null,null]', '', 0, 1481126399, 0, 0),
(158, 'btc', '[0,0,null,null]', '', 0, 1481212799, 0, 0),
(159, 'btc', '[0,0,null,null]', '', 0, 1481299199, 0, 0),
(160, 'btc', '[0,0,null,null]', '', 0, 1481385599, 0, 0),
(161, 'btc', '[0,0,null,null]', '', 0, 1481471999, 0, 0),
(162, 'btc', '[0,0,null,null]', '', 0, 1481558399, 0, 0),
(163, 'btc', '[0,0,null,null]', '', 0, 1481644799, 0, 0),
(164, 'btc', '[0,0,null,null]', '', 0, 1481731199, 0, 0),
(165, 'btc', '[0,0,null,null]', '', 0, 1481817599, 0, 0),
(166, 'btc', '[0,0,null,null]', '', 0, 1481903999, 0, 0),
(167, 'btc', '[0,0,null,null]', '', 0, 1481990399, 0, 0),
(168, 'btc', '[0,0,null,null]', '', 0, 1482076799, 0, 0),
(169, 'btc', '[0,0,null,null]', '', 0, 1482163199, 0, 0),
(170, 'btc', '[0,0,null,null]', '', 0, 1482249599, 0, 0),
(171, 'btc', '[0,0,null,null]', '', 0, 1482335999, 0, 0),
(172, 'btc', '[0,0,null,null]', '', 0, 1482422399, 0, 0),
(173, 'btc', '[0,0,null,null]', '', 0, 1482508799, 0, 0),
(174, 'btc', '[0,0,null,null]', '', 0, 1482595199, 0, 0),
(175, 'btc', '[0,0,null,null]', '', 0, 1482681599, 0, 0),
(176, 'btc', '[0,0,null,null]', '', 0, 1482767999, 0, 0),
(177, 'btc', '[0,0,null,null]', '', 0, 1482854399, 0, 0),
(178, 'btc', '[0,0,null,null]', '', 0, 1482940799, 0, 0),
(179, 'btc', '[0,0,null,null]', '', 0, 1483027199, 0, 0),
(180, 'btc', '[0,0,null,null]', '', 0, 1483113599, 0, 0),
(181, 'btc', '[0,0,null,null]', '', 0, 1483199999, 0, 0),
(182, 'btc', '[0,0,null,null]', '', 0, 1483286399, 0, 0),
(183, 'btc', '[0,0,null,null]', '', 0, 1483372799, 0, 0),
(184, 'btc', '[0,0,null,null]', '', 0, 1483459199, 0, 0),
(185, 'btc', '[0,0,null,null]', '', 0, 1483545599, 0, 0),
(186, 'btc', '[0,0,null,null]', '', 0, 1483631999, 0, 0),
(187, 'btc', '[0,0,null,null]', '', 0, 1483718399, 0, 0),
(188, 'btc', '[0,0,null,null]', '', 0, 1483804799, 0, 0),
(189, 'btc', '[0,0,null,null]', '', 0, 1483891199, 0, 0),
(190, 'btc', '[0,0,null,null]', '', 0, 1483977599, 0, 0),
(191, 'btc', '[0,0,null,null]', '', 0, 1484063999, 0, 0),
(192, 'btc', '[0,0,null,null]', '', 0, 1484150399, 0, 0),
(193, 'btc', '[0,0,null,null]', '', 0, 1484236799, 0, 0),
(194, 'btc', '[0,0,null,null]', '', 0, 1484323199, 0, 0),
(195, 'btc', '[0,0,null,null]', '', 0, 1484409599, 0, 0),
(196, 'btc', '[0,0,null,null]', '', 0, 1484495999, 0, 0),
(197, 'btc', '[0,0,null,null]', '', 0, 1484582399, 0, 0),
(198, 'btc', '[0,0,null,null]', '', 0, 1484668799, 0, 0),
(199, 'btc', '[0,0,null,null]', '', 0, 1484755199, 0, 0),
(200, 'btc', '[0,0,null,null]', '', 0, 1484841599, 0, 0),
(201, 'btc', '[0,0,null,null]', '', 0, 1484927999, 0, 0),
(202, 'btc', '[0,0,null,null]', '', 0, 1485014399, 0, 0),
(203, 'btc', '[0,0,null,null]', '', 0, 1485100799, 0, 0),
(204, 'btc', '[0,0,null,null]', '', 0, 1485187199, 0, 0),
(205, 'btc', '[0,0,null,null]', '', 0, 1485273599, 0, 0),
(206, 'btc', '[0,0,null,null]', '', 0, 1485359999, 0, 0),
(207, 'btc', '[0,0,null,null]', '', 0, 1485446399, 0, 0),
(208, 'btc', '[0,0,null,null]', '', 0, 1485532799, 0, 0),
(209, 'btc', '[0,0,null,null]', '', 0, 1485619199, 0, 0),
(210, 'btc', '[0,0,null,null]', '', 0, 1485705599, 0, 0),
(211, 'btc', '[0,0,null,null]', '', 0, 1485791999, 0, 0),
(212, 'btc', '[0,0,null,null]', '', 0, 1485878399, 0, 0),
(213, 'btc', '[0,0,null,null]', '', 0, 1485964799, 0, 0),
(214, 'btc', '[0,0,null,null]', '', 0, 1486051199, 0, 0),
(215, 'btc', '[0,0,null,null]', '', 0, 1486137599, 0, 0),
(216, 'btc', '[0,0,null,null]', '', 0, 1486223999, 0, 0),
(217, 'btc', '[0,0,null,null]', '', 0, 1486310399, 0, 0),
(218, 'btc', '[0,0,null,null]', '', 0, 1486396799, 0, 0),
(219, 'btc', '[0,0,null,null]', '', 0, 1486483199, 0, 0),
(220, 'fc', '[5480477.190476,0,"100.00000000",null]', '', 0, 1486655999, 0, 0),
(221, 'fc', '[5480477.190476,0,null,null]', '', 0, 1486742399, 0, 0),
(222, 'fc', '[19673434.333333,0,null,null]', '', 0, 1486828799, 0, 0),
(223, 'fc', '[528694943.07315,0,null,null]', '', 0, 1486915199, 0, 0),
(224, 'fc', '[973066450.38026,0,null,null]', '', 0, 1487001599, 0, 0),
(225, 'fc', '[1023071450.3803,0,null,null]', '', 0, 1487087999, 0, 0),
(226, 'fc', '[980836855.24217,0,null,null]', '', 0, 1487174399, 0, 0),
(227, 'fc', '[1029683819.4502,0,null,null]', '', 0, 1487260799, 0, 0),
(228, 'fc', '[986826676.59302,0,null,null]', '', 0, 1487347199, 0, 0),
(229, 'fc', '[976731438.49778,0,null,null]', '', 0, 1487433599, 0, 0),
(230, 'fc', '[976731438.49778,0,null,null]', '', 0, 1487519999, 0, 0),
(231, 'fc', '[978731638.49778,0,null,null]', '', 0, 1487606399, 0, 0),
(232, 'fc', '[1524113371.2178,0,null,null]', '', 0, 1487692799, 0, 0),
(233, 'fc', '[64409454.059072,0,null,null]', '', 0, 1487779199, 0, 0),
(234, 'fc', '[64409454.059072,0,null,null]', '', 0, 1487865599, 0, 0),
(235, 'fc', '[68599930.249548,0,null,null]', '', 0, 1487951999, 0, 0),
(236, 'fc', '[68599930.249548,0,null,null]', '', 0, 1488038399, 0, 0),
(237, 'fc', '[72790406.440024,0,null,null]', '', 0, 1488124799, 0, 0),
(238, 'fc', '[72790406.440024,0,null,null]', '', 0, 1488211199, 0, 0),
(239, 'fc', '[72790406.440024,0,null,null]', '', 0, 1488297599, 0, 0),
(240, 'fc', '[72790406.440024,0,null,null]', '', 0, 1488383999, 0, 0),
(241, 'fc', '[72790406.440024,0,null,null]', '', 0, 1488470399, 0, 0),
(242, 'fc', '[72790406.440024,0,null,null]', '', 0, 1488556799, 0, 0),
(243, 'fc', '[72790406.440024,0,null,null]', '', 0, 1488643199, 0, 0),
(244, 'fc', '[72790406.440024,0,null,null]', '', 0, 1488729599, 0, 0),
(245, 'fc', '[73861835.011453,0,null,null]', '', 0, 1488815999, 0, 0),
(246, 'fc', '[73861835.011453,0,null,null]', '', 0, 1488902399, 0, 0),
(247, 'fc', '[73861835.011453,0,null,null]', '', 0, 1488988799, 0, 0),
(248, 'dkc', '[0,0,"100.00000000",null]', '', 0, 1486655999, 0, 0),
(249, 'dkc', '[0,0,"58600.50748990",null]', '', 0, 1486742399, 0, 0),
(250, 'dkc', '[0,0,"56320.53220130","24660.00000000"]', '', 0, 1486828799, 0, 0),
(251, 'dkc', '[0,0,"5000.00000000",null]', '', 0, 1486915199, 0, 0),
(252, 'dkc', '[0,0,"2500.10000000",null]', '', 0, 1487001599, 0, 0),
(253, 'dkc', '[0,0,"4884.20800000",null]', '', 0, 1487087999, 0, 0),
(254, 'dkc', '[0,0,null,null]', '', 0, 1487174399, 0, 0),
(255, 'dkc', '[0,0,null,null]', '', 0, 1487260799, 0, 0),
(256, 'dkc', '[0,0,null,null]', '', 0, 1487347199, 0, 0),
(257, 'dkc', '[0,0,"200.00000000",null]', '', 0, 1487433599, 0, 0),
(258, 'dkc', '[0,0,"54532.72000000",null]', '', 0, 1487519999, 0, 0),
(259, 'dkc', '[0,0,null,null]', '', 0, 1487606399, 0, 0),
(260, 'dkc', '[0,0,null,null]', '', 0, 1487692799, 0, 0),
(261, 'dkc', '[0,0,null,null]', '', 0, 1487779199, 0, 0),
(262, 'dkc', '[0,0,null,null]', '', 0, 1487865599, 0, 0),
(263, 'dkc', '[0,0,null,null]', '', 0, 1487951999, 0, 0),
(264, 'dkc', '[0,0,null,null]', '', 0, 1488038399, 0, 0),
(265, 'dkc', '[0,0,null,null]', '', 0, 1488124799, 0, 0),
(266, 'dkc', '[0,0,null,null]', '', 0, 1488211199, 0, 0),
(267, 'dkc', '[0,0,null,null]', '', 0, 1488297599, 0, 0),
(268, 'dkc', '[0,0,null,null]', '', 0, 1488383999, 0, 0),
(269, 'dkc', '[0,0,null,null]', '', 0, 1488470399, 0, 0),
(270, 'dkc', '[0,0,null,null]', '', 0, 1488556799, 0, 0),
(271, 'dkc', '[0,0,null,null]', '', 0, 1488643199, 0, 0),
(272, 'dkc', '[0,0,null,null]', '', 0, 1488729599, 0, 0),
(273, 'dkc', '[0,0,null,null]', '', 0, 1488815999, 0, 0),
(274, 'dkc', '[0,0,null,null]', '', 0, 1488902399, 0, 0),
(275, 'dkc', '[0,0,null,null]', '', 0, 1488988799, 0, 0),
(276, 'dkc', '[0,0,null,null]', '', 0, 1489075199, 0, 0),
(277, 'dkc', '[0,0,null,null]', '', 0, 1489161599, 0, 0),
(278, 'dkc', '[0,0,null,null]', '', 0, 1489247999, 0, 0),
(279, 'dkc', '[0,0,null,null]', '', 0, 1489334399, 0, 0),
(280, 'dkc', '[0,0,null,null]', '', 0, 1489420799, 0, 0),
(281, 'dkc', '[0,0,null,null]', '', 0, 1489507199, 0, 0),
(282, 'dkc', '[0,0,null,null]', '', 0, 1489593599, 0, 0),
(283, 'dkc', '[0,0,null,null]', '', 0, 1489679999, 0, 0),
(284, 'dkc', '[0,0,null,null]', '', 0, 1489766399, 0, 0),
(285, 'dkc', '[0,0,null,null]', '', 0, 1489852799, 0, 0),
(286, 'dkc', '[0,0,null,null]', '', 0, 1489939199, 0, 0),
(287, 'dkc', '[0,0,null,null]', '', 0, 1490025599, 0, 0),
(288, 'dkc', '[0,0,null,null]', '', 0, 1490111999, 0, 0),
(289, 'dkc', '[0,0,null,null]', '', 0, 1490198399, 0, 0),
(290, 'dkc', '[0,0,null,null]', '', 0, 1490284799, 0, 0),
(291, 'dkc', '[0,0,null,null]', '', 0, 1490371199, 0, 0),
(292, 'dkc', '[0,0,null,null]', '', 0, 1490457599, 0, 0),
(293, 'dkc', '[0,0,null,null]', '', 0, 1490543999, 0, 0),
(294, 'dkc', '[0,0,null,null]', '', 0, 1490630399, 0, 0),
(295, 'dkc', '[0,0,null,null]', '', 0, 1490716799, 0, 0),
(296, 'dkc', '[0,0,null,null]', '', 0, 1490803199, 0, 0),
(297, 'dkc', '[0,0,null,null]', '', 0, 1490889599, 0, 0),
(298, 'dkc', '[0,0,null,null]', '', 0, 1490975999, 0, 0),
(299, 'dkc', '[0,0,null,null]', '', 0, 1491062399, 0, 0),
(300, 'dkc', '[0,0,null,null]', '', 0, 1491148799, 0, 0),
(301, 'dkc', '[0,0,null,null]', '', 0, 1491235199, 0, 0),
(302, 'dkc', '[0,0,null,null]', '', 0, 1491321599, 0, 0),
(303, 'dkc', '[0,0,null,null]', '', 0, 1491407999, 0, 0),
(304, 'dkc', '[0,0,null,null]', '', 0, 1491494399, 0, 0),
(305, 'dkc', '[0,0,null,null]', '', 0, 1491580799, 0, 0),
(306, 'dkc', '[0,0,null,null]', '', 0, 1491667199, 0, 0),
(307, 'dkc', '[0,0,null,null]', '', 0, 1491753599, 0, 0),
(308, 'dkc', '[0,0,null,null]', '', 0, 1491839999, 0, 0),
(309, 'dkc', '[0,0,null,null]', '', 0, 1491926399, 0, 0),
(310, 'dkc', '[0,0,null,null]', '', 0, 1492012799, 0, 0),
(311, 'dkc', '[0,0,null,null]', '', 0, 1492099199, 0, 0),
(312, 'qqb', '[262.5,0,"100.00000000",null]', '', 0, 1486655999, 0, 0),
(313, 'qqb', '[262.5,0,"58600.50748990",null]', '', 0, 1486742399, 0, 0),
(314, 'qqb', '[262.5,0,"56320.53220130","24660.00000000"]', '', 0, 1486828799, 0, 0),
(315, 'qqb', '[262.5,0,"5000.00000000",null]', '', 0, 1486915199, 0, 0),
(316, 'fc', '[73871835.011453,0,null,null]', '', 0, 1489075199, 0, 0),
(344, 'hjc', '[80000000,0,"100.00000000",null]', '', 0, 1486655999, 0, 0),
(346, 'ydc', '[80000000,0,"100.00000000",null]', '', 0, 1486655999, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_config`
--

CREATE TABLE IF NOT EXISTS `btchanges_config` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `footer_logo` varchar(200) NOT NULL COMMENT ' ',
  `huafei_zidong` varchar(200) NOT NULL COMMENT '名称',
  `kefu` varchar(200) NOT NULL,
  `huafei_openid` varchar(200) NOT NULL COMMENT '名称',
  `huafei_appkey` varchar(200) NOT NULL COMMENT '名称',
  `index_lejimum` varchar(200) NOT NULL COMMENT '设置',
  `login_verify` varchar(200) NOT NULL COMMENT '设置',
  `fee_meitian` varchar(200) NOT NULL COMMENT '设置',
  `top_name` varchar(200) NOT NULL COMMENT '设置',
  `web_name` varchar(200) NOT NULL,
  `web_title` varchar(200) NOT NULL,
  `web_logo` varchar(200) NOT NULL,
  `web_llogo_small` varchar(200) NOT NULL,
  `web_keywords` text NOT NULL,
  `web_description` text NOT NULL,
  `web_close` text NOT NULL,
  `web_close_cause` text NOT NULL,
  `web_icp` text NOT NULL,
  `web_cnzz` text NOT NULL,
  `web_ren` text NOT NULL,
  `web_reg` text NOT NULL,
  `market_mr` text NOT NULL,
  `xnb_mr` text NOT NULL,
  `rmb_mr` text NOT NULL,
  `web_waring` text NOT NULL,
  `moble_type` text NOT NULL,
  `moble_url` text NOT NULL,
  `moble_user` text NOT NULL,
  `moble_pwd` text NOT NULL,
  `contact_moble` text NOT NULL,
  `contact_weibo` text NOT NULL,
  `contact_tqq` text NOT NULL,
  `contact_qq` text NOT NULL,
  `contact_qqun` text NOT NULL,
  `contact_weixin` text NOT NULL,
  `contact_weixin_img` text NOT NULL,
  `contact_email` text NOT NULL,
  `contact_alipay` text NOT NULL,
  `contact_alipay_img` text NOT NULL,
  `contact_bank` text NOT NULL,
  `user_truename` text NOT NULL,
  `user_moble` text NOT NULL,
  `user_alipay` text NOT NULL,
  `user_bank` text NOT NULL,
  `user_text_truename` text NOT NULL,
  `user_text_moble` text NOT NULL,
  `user_text_alipay` text NOT NULL,
  `user_text_bank` text NOT NULL,
  `user_text_log` text NOT NULL,
  `user_text_password` text NOT NULL,
  `user_text_paypassword` text NOT NULL,
  `mytx_min` text NOT NULL,
  `mytx_max` text NOT NULL,
  `mytx_bei` text NOT NULL,
  `mytx_coin` text NOT NULL,
  `mytx_fee` text NOT NULL,
  `trade_min` text NOT NULL,
  `trade_max` text NOT NULL,
  `trade_limit` text NOT NULL,
  `trade_text_log` text NOT NULL,
  `issue_ci` text NOT NULL,
  `issue_jian` text NOT NULL,
  `issue_min` text NOT NULL,
  `issue_max` text NOT NULL,
  `money_min` text NOT NULL,
  `money_max` text NOT NULL,
  `money_bei` text NOT NULL,
  `money_text_index` text NOT NULL,
  `money_text_log` text NOT NULL,
  `money_text_type` text NOT NULL,
  `invit_type` text NOT NULL,
  `invit_fee1` text NOT NULL,
  `invit_fee2` text NOT NULL,
  `invit_fee3` text NOT NULL,
  `invit_text_txt` text NOT NULL,
  `invit_text_log` text NOT NULL,
  `index_notice_1` text NOT NULL,
  `index_notice_11` text NOT NULL,
  `index_notice_2` text NOT NULL,
  `index_notice_22` text NOT NULL,
  `index_notice_3` text NOT NULL,
  `index_notice_33` text NOT NULL,
  `index_notice_4` text NOT NULL,
  `index_notice_44` text NOT NULL,
  `text_footer` text NOT NULL,
  `shop_text_index` text NOT NULL,
  `shop_text_log` text NOT NULL,
  `shop_text_addr` text NOT NULL,
  `shop_text_view` text NOT NULL,
  `huafei_text_index` text NOT NULL,
  `huafei_text_log` text NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  `shop_coin` varchar(200) NOT NULL COMMENT '计算方式',
  `shop_logo` varchar(200) NOT NULL COMMENT '商城LOGO',
  `shop_login` varchar(200) NOT NULL COMMENT '是否要登陆',
  `index_html` varchar(50) DEFAULT NULL,
  `trade_hangqing` varchar(50) DEFAULT NULL,
  `trade_moshi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统配置表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `btchanges_config`
--

INSERT INTO `btchanges_config` (`id`, `footer_logo`, `huafei_zidong`, `kefu`, `huafei_openid`, `huafei_appkey`, `index_lejimum`, `login_verify`, `fee_meitian`, `top_name`, `web_name`, `web_title`, `web_logo`, `web_llogo_small`, `web_keywords`, `web_description`, `web_close`, `web_close_cause`, `web_icp`, `web_cnzz`, `web_ren`, `web_reg`, `market_mr`, `xnb_mr`, `rmb_mr`, `web_waring`, `moble_type`, `moble_url`, `moble_user`, `moble_pwd`, `contact_moble`, `contact_weibo`, `contact_tqq`, `contact_qq`, `contact_qqun`, `contact_weixin`, `contact_weixin_img`, `contact_email`, `contact_alipay`, `contact_alipay_img`, `contact_bank`, `user_truename`, `user_moble`, `user_alipay`, `user_bank`, `user_text_truename`, `user_text_moble`, `user_text_alipay`, `user_text_bank`, `user_text_log`, `user_text_password`, `user_text_paypassword`, `mytx_min`, `mytx_max`, `mytx_bei`, `mytx_coin`, `mytx_fee`, `trade_min`, `trade_max`, `trade_limit`, `trade_text_log`, `issue_ci`, `issue_jian`, `issue_min`, `issue_max`, `money_min`, `money_max`, `money_bei`, `money_text_index`, `money_text_log`, `money_text_type`, `invit_type`, `invit_fee1`, `invit_fee2`, `invit_fee3`, `invit_text_txt`, `invit_text_log`, `index_notice_1`, `index_notice_11`, `index_notice_2`, `index_notice_22`, `index_notice_3`, `index_notice_33`, `index_notice_4`, `index_notice_44`, `text_footer`, `shop_text_index`, `shop_text_log`, `shop_text_addr`, `shop_text_view`, `huafei_text_index`, `huafei_text_log`, `addtime`, `status`, `shop_coin`, `shop_logo`, `shop_login`, `index_html`, `trade_hangqing`, `trade_moshi`) VALUES
(1, '59550a1073ee6.png', '1', 'c', '', '', '1', '0', '', '您好，欢迎来到海通网路虚拟币交易平台 ', '数字货币交易中心', '数字货币交易中心', '59550a028a02d.png', '59550a09bfbae.png', '数字货币交易中心', '数字货币交易中心', '1', '升级中...', '数字货币交易中心-版权所有', '', '100', '<div style="text-align:center;">\r\n	<div style="text-align:left;">\r\n		<span style="color:#337FE5;">根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。滑稽之家仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在滑稽之家平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任。<br />\r\n<br />\r\n<br />\r\n<br />\r\n请您务必注意以下几点：<br />\r\n<br />\r\n<br />\r\n<br />\r\n1.警惕虚假宣传，不要听信任何币值会永远上涨的宣传，数字货币作为一种虚拟商品，具有极高的风险，很可能出现价值归零的情况。<br />\r\n<br />\r\n2.对于推广和运营方的市场承诺，需要谨慎判别，目前并没有相关法律能保证其兑现承诺，投币网不会对任何数字货币进行背书和承诺。<br />\r\n<br />\r\n3.坚决拒绝多层次传销组织，在我国参与该类组织是违法行为，造成的一切后果自负，平台将配合相关执法部门的要求进行调查、取证。<br />\r\n<br />\r\n4.根据《中华人民共和国反洗钱法》等有关法律规定，严格禁止利用平台进行洗钱等违法犯罪活动，平台将配合相关执法部门的要求进行调查、取证。<br />\r\n<br />\r\n5.数字货币和数字积分等虚拟商品所对应的实物财产和持有者享有的权利存在因发行方等义务相关方破产，关闭或违法犯罪等其他经营风险导致无法兑现的风险。<br />\r\n<br />\r\n6.在滑稽之家注册参与交换的用户，应保证注册身份信息的真实、准确，保证拟交换的数字货币等虚拟商品的来源合法。因信息不真实造成的任何问题，平台概不负责。<br />\r\n<br />\r\n7.因国家法律，法规及政策性文件的制定和修改，导致数字货币等虚拟商品的交易被暂停或者禁止的，由此导致的全部损失由用户自行承担。<br />\r\n<br />\r\n8.请控制风险，不要投入超过您风险承受能力的资金，不要购买您所不了解的数字货币，数字积分等虚拟商品。<br />\r\n                                               2017-2-7</span> \r\n	</div>\r\n	<div style="text-align:left;">\r\n		<span style="color:#337FE5;"></span> \r\n	</div>\r\n</div>\r\n<p>\r\n	<span style="color:#E56600;font-size:10px;"></span> \r\n</p>', 'hjc_cny', 'hjc', 'cny', '风险警告：根椐人民银行等有关部委的相关规定，比特币等数字货币系特殊的虚拟商品，作为互联网上的商品买卖行为，普通民众在自担风险的前提下拥有参与的自由。数字货币行业目前存在很多不确定，不可控的风险因素（如预挖、暴涨暴跌、庄家操控、团队解散、技术缺陷等），导致交易具有极高的风险。滑稽之家仅为数字货币等虚拟商品的爱好者提供一个自由的网上交换平台，对在滑稽之家平台交换的数字货币等虚拟商品的来源、价值，网站运营方不承担任何审查、担保、赔偿的法律责任，如果您不能接受，请不要进行交易！', '1', '', '', '', '13888888888', '', 'http://t.qq.com/cncnv3', '396322838', '396322838', 'li83839140', '56f98e6d70135.jpg', '83839140@qq.com', '83839140@qq.com', '56f98e6d7245d.jpg', '中国银行|动说科技|0000 0000 0000 0000', '2', '2', '2', '2', '&lt;span&gt;&lt;span&gt;会员您好,务必正确填写好自己的真实姓名和真实身份证号码.&lt;/span&gt;&lt;/span&gt;', '&lt;span&gt;会员您好,务必用自己的手机号码进行手机认证,认证以后可以用来接收验证码.&lt;/span&gt;', '&lt;span&gt;会员您好,务必正确填写支付宝 &amp;nbsp;真实姓名（与实名认证姓名相同）和支付宝账号,后期提现唯一依据.&lt;/span&gt;', '&lt;span&gt;会员您好,&lt;/span&gt;&lt;span&gt;&lt;span&gt;务必正确填写银行卡信息 提现唯一依据.&lt;/span&gt;&lt;span&gt;&lt;/span&gt;&lt;/span&gt;', '&lt;span&gt;自己以往操作和登录及登录地点的相关记录.&lt;/span&gt;', '&lt;span&gt;会员您好,修改登录密码以后请不要忘记.若不记得旧登录密码,请点击--&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;忘记密码&lt;/span&gt;', '&lt;span&gt;会员您好,修改交易密码以后请不要忘记.若不记得旧交易密码,请点击--&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;忘记密码&lt;/span&gt;', '50', '50000', '100', 'cny', '1.233', '1', '10000000', '10', '&lt;span&gt;&lt;span&gt;你委托买入或者卖出成功交易后的记录.&lt;/span&gt;&lt;/span&gt;', '5', '24', '1', '100000', '100', '100000', '100', '理财首页', '理财记录', '理财类型', '1', '5', '3', '2', '一起来成为土豪吧！', '&lt;span&gt;&lt;span&gt;查看自己推广的好友,请点击&lt;/span&gt;&lt;span style=&quot;color:#EE33EE;&quot;&gt;“+”&lt;/span&gt;&lt;span&gt;,同时正确引导好友实名认证以及买卖,赚取推广收益和交易手续费.&lt;/span&gt;&lt;/span&gt;', '系统可靠', '银行级用户数据加密、动态身份验证多级风险识别控制，保障交易安全', '系统可靠', '账户多层加密，分布式服务器离线存储，即时隔离备份数据，确保安全', '快捷方便', '充值即时、提现迅速，每秒万单的高性能交易引擎，保证一切快捷方便', '服务专业', '热忱的客服工作人员和24小时的技术团队随时为您的账户安全保驾护航', '&lt;p&gt;\r\n	&lt;a href=&quot;/Article/index/type/aboutus.html&quot; target=&quot;_blank&quot;&gt;/Article/index/type/aboutus.html&lt;/a&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;br /&gt;\r\n&lt;/p&gt;\r\n&lt;p&gt;\r\n	&amp;lt;a href=&quot;&lt;a href=&quot;/Article/index/type/aboutus.html&quot; target=&quot;_blank&quot;&gt;/Article/index/type/aboutus.html&lt;/a&gt;&quot;&amp;gt;关于我们&amp;lt;/a&amp;gt;\r\n&lt;/p&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;联系我们&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;资质证明&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;用户协议&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n|&lt;br /&gt;\r\n&amp;lt;a href=&quot;/Article/index/type/aboutus.html&quot;&amp;gt;法律声明&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;p style=&quot;margin-top: 5px;text-align: center;&quot;&amp;gt;&lt;br /&gt;\r\nCopyright &amp;copy; 2016&lt;br /&gt;\r\n&amp;lt;a href=&quot;/&quot;&amp;gt;{$C[''web_name'']}交易平台 &amp;lt;/a&amp;gt;&lt;br /&gt;\r\nAll Rights Reserved.&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.miibeian.gov.cn/&quot;&amp;gt;{$C[''web_icp'']}&amp;lt;/a&amp;gt;{$C[''web_cnzz'']|htmlspecialchars_decode}&lt;br /&gt;\r\n&lt;br /&gt;\r\n&amp;lt;/p&amp;gt;&lt;br /&gt;\r\n&amp;lt;p class=&quot;clear1&quot; id=&quot;ut646&quot; style=&quot;margin-top: 10px;text-align: center;&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://webscan.360.cn/index/checkwebsite/url/www.zuocoin.com&quot; target=&quot;_blank&quot;&amp;gt;&amp;lt;img border=&quot;0&quot; width=&quot;83&quot; height=&quot;31&quot; src=&quot;http://img.webscan.360.cn/status/pai/hash/a272bae5f02b1df25be2c1d9d0b251f7&quot;/&amp;gt;&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.szfw.org/&quot; target=&quot;_blank&quot; id=&quot;ut118&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_2.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.miibeian.gov.cn/&quot; target=&quot;_blank&quot; id=&quot;ut119&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_3.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;a href=&quot;http://www.cyberpolice.cn/&quot; target=&quot;_blank&quot; id=&quot;ut120&quot; class=&quot;margin10&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;img src=&quot;__UPLOAD__/footer/footer_4.png&quot;&amp;gt;&lt;br /&gt;\r\n&amp;lt;/a&amp;gt;&lt;br /&gt;\r\n&amp;lt;/p&amp;gt;&lt;br /&gt;', '', '', '', '', '', '', 1467383018, 0, '', '/Upload/shop/598a43aa3cfd4.jpg', '1', 'd', '1', '0');

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_daohang`
--

CREATE TABLE IF NOT EXISTS `btchanges_daohang` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `title` varchar(255) NOT NULL COMMENT '名称',
  `url` varchar(255) NOT NULL COMMENT 'url',
  `sort` int(11) unsigned NOT NULL COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL COMMENT '编辑时间',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `btchanges_daohang`
--

INSERT INTO `btchanges_daohang` (`id`, `name`, `title`, `url`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 'finance', '财务中心', 'Finance/index', 1, 0, 0, 1),
(2, 'user', '安全中心', 'User/index', 2, 0, 0, 1),
(3, 'Issue', '应用中心', 'Issue/index', 3, 0, 0, 1),
(4, 'article', '帮助中心', 'Article/index', 7, 0, 0, 0),
(6, 'shop', '云购商城', 'Shop/index', 5, 0, 0, 1),
(7, 'vote', '新币投票', 'Vote/index', 6, 0, 0, 1),
(8, ' Issue', '认购中心', 'Issue/index', 4, 1474183878, 0, 1),
(9, '推广返佣', '推广返佣', 'promote/index.html', 4, 1480423054, 0, 1),
(10, '数字货币交易中心', '数字货币交易中心', '#', 100, 1501405729, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_fenhong`
--

CREATE TABLE IF NOT EXISTS `btchanges_fenhong` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `coinjian` varchar(50) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `btchanges_fenhong`
--

INSERT INTO `btchanges_fenhong` (`id`, `name`, `coinname`, `coinjian`, `num`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, '月分红', 'zyc', 'cny', '1000.00000000', 1, 1476115200, 1476115200, 0),
(2, '股分红', 'thc', 'cny', '1.00000000', 1, 1478620800, 1478620800, 0),
(3, '滑稽币众筹分红', 'fc', 'fc', '1000000.00000000', 2, 1486355493, 1486355493, 0),
(4, '交易平台股份分红', 'cny', 'cny', '1.00000000', 1, 1486355449, 1486355449, 0),
(5, '个', 'fc', 'cny', '10.00000000', 1, 1486358485, 1486358485, 0),
(6, '3333', 'ydc', 'cny', '100000.00000000', 11, 1500358222, 1500358222, 0);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_fenhong_log`
--

CREATE TABLE IF NOT EXISTS `btchanges_fenhong_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `coinjian` varchar(50) NOT NULL,
  `fenzong` varchar(50) NOT NULL,
  `fenchi` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `btchanges_fenhong_log`
--

INSERT INTO `btchanges_fenhong_log` (`id`, `name`, `coinname`, `coinjian`, `fenzong`, `fenchi`, `price`, `num`, `mum`, `sort`, `addtime`, `endtime`, `status`, `userid`) VALUES
(1, '交易平台股份分红', 'cny', 'fc', '1.00000000', '', '0.00009999', '10001.00000000', '0.99999999', 0, 1486355524, 0, 1, 1),
(2, '滑稽币众筹分红', 'fc', 'fc', '1000000.00000000', '', '1000000.01000000', '0.99999999', '1000000.00000000', 0, 1486355589, 0, 1, 1),
(3, '个', 'fc', 'cny', '10.00000000', '', '0.00001000', '1000001.00000000', '10.00001000', 0, 1486358502, 0, 1, 1),
(4, '3333', 'ydc', 'cny', '100000.00000000', '', '0.00125000', '5200.00000000', '6.50000000', 0, 1500358246, 0, 1, 38),
(5, '3333', 'ydc', 'cny', '100000.00000000', '', '0.00125000', '79994800.00000000', '99993.50000000', 0, 1500358246, 0, 1, 39);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_finance`
--

CREATE TABLE IF NOT EXISTS `btchanges_finance` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  `coinname` varchar(50) NOT NULL COMMENT '币种',
  `num_a` decimal(20,8) unsigned NOT NULL COMMENT '之前正常',
  `num_b` decimal(20,8) unsigned NOT NULL COMMENT '之前冻结',
  `num` decimal(20,8) unsigned NOT NULL COMMENT '之前总计',
  `fee` decimal(20,8) unsigned NOT NULL COMMENT '操作数量',
  `type` varchar(50) NOT NULL COMMENT '操作类型',
  `name` varchar(50) NOT NULL COMMENT '操作名称',
  `nameid` int(11) NOT NULL COMMENT '操作详细',
  `remark` varchar(50) NOT NULL COMMENT '操作备注',
  `mum_a` decimal(20,8) unsigned NOT NULL COMMENT '剩余正常',
  `mum_b` decimal(20,8) unsigned NOT NULL COMMENT '剩余冻结',
  `mum` decimal(20,8) unsigned NOT NULL COMMENT '剩余总计',
  `move` varchar(50) NOT NULL COMMENT '附加',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `status` tinyint(4) unsigned NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='财务记录表' AUTO_INCREMENT=164 ;

--
-- 转存表中的数据 `btchanges_finance`
--

INSERT INTO `btchanges_finance` (`id`, `userid`, `coinname`, `num_a`, `num_b`, `num`, `fee`, `type`, `name`, `nameid`, `remark`, `mum_a`, `mum_b`, `mum`, `move`, `addtime`, `status`) VALUES
(1, 20, 'cny', '100.00000000', '0.00000000', '100.00000000', '10.00000000', '2', 'trade', 1, '交易中心-委托买入-市场thc_cny', '90.00000000', '10.00000000', '100.00000000', 'aec08b5a775b52e73429fff15e195928', 1480488331, 0),
(2, 20, 'cny', '90.00000000', '10.00000000', '100.00000000', '3.00000000', '2', 'tradelog', 1, '交易中心-成功买入-市场thc_cny', '90.00000000', '7.00000000', '97.00000000', 'd4d0d2199d0222463fabdc193f9cade8', 1480488356, 1),
(3, 20, 'cny', '90.00000000', '7.00000000', '97.00000000', '3.00000000', '1', 'tradelog', 1, '交易中心-成功卖出-市场thc_cny', '92.99400000', '7.00000000', '99.99400000', '88cba0e7cdfb665fcafacf0b6eb07144', 1480488356, 1),
(4, 20, 'cny', '92.99400000', '7.00000000', '99.99400000', '7.00000000', '1', 'trade', 1, '交易中心-交易撤销thc_cny', '99.99400000', '0.00000000', '99.99400000', 'a5eb12b149bee38f440a829dbc98db87', 1480488386, 1),
(5, 29, 'cny', '0.00000000', '0.00000000', '0.00000000', '100.00000000', '1', 'mycz', 1, '人民币充值-人工到账', '100.00000000', '0.00000000', '100.00000000', '7def0fc701de69bf9cd7e38f78630403', 1480488640, 1),
(6, 20, 'cny', '0.00000000', '0.00000000', '0.00000000', '0.30000000', '1', 'mycz', 20, '人民币充值-一代充值奖励-充值ID29,订单QI986922,金额100元,奖励0.3元', '0.30000000', '0.00000000', '0.30000000', '3bc90026827bbdf0fb7a159442f528a0', 1480488640, 0),
(7, 1, 'cny', '0.00000000', '0.00000000', '0.00000000', '1.00000000', '1', 'mycz', 21, '人民币充值-人工到账', '1.00000000', '0.00000000', '1.00000000', '7f372f3ac9402770fd46cd43bd545b56', 1486352889, 1),
(8, 1, 'cny', '1.00000000', '0.00000000', '1.00000000', '1.00000000', '1', 'mycz', 22, '人民币充值-人工到账', '2.00000000', '0.00000000', '2.00000000', 'a8e81e493e31caca5cbaaf28a33405a7', 1486353716, 1),
(9, 1, 'cny', '2.00000000', '0.00000000', '2.00000000', '9999.00000000', '1', 'mycz', 23, '人民币充值-人工到账', '10001.00000000', '0.00000000', '10001.00000000', '5f995e0e2c2fac4eb54d8710ee319f91', 1486354258, 1),
(10, 2, 'cny', '0.00000000', '0.00000000', '0.00000000', '1000.00000000', '1', 'mycz', 24, '人民币充值-人工到账', '1000.00000000', '0.00000000', '1000.00000000', '4cb4d0e37b20128e1b169193fb193ddc', 1486357838, 1),
(11, 1, 'cny', '10001.00000000', '0.00000000', '10001.00000000', '3.00000000', '1', 'mycz', 1, '人民币充值-一代充值奖励-充值ID2,订单HP149122,金额1000元,奖励3元', '10004.00000000', '0.00000000', '10004.00000000', 'ee98e10066ed2ead443cfc8c9f344a3a', 1486357838, 1),
(12, 1, 'cny', '10004.00000000', '0.00000000', '10004.00000000', '100.00000000', '2', 'mytx', 1, '人民币提现-申请提现', '9904.00000000', '0.00000000', '9904.00000000', '17403aed56d3b1d67c6075d321be6445', 1486358183, 1),
(13, 1, 'cny', '9914.00001000', '0.00000000', '9914.00001000', '0.10000000', '2', 'trade', 7, '交易中心-委托买入-市场fc_cny', '9913.90001000', '0.10000000', '9914.00001000', '66a6a2faddd4903aaa0442b2efabb7e3', 1486376993, 0),
(14, 1, 'cny', '9913.90001000', '0.10000000', '9914.00001000', '0.10000000', '2', 'tradelog', 2, '交易中心-成功买入-市场fc_cny', '9913.90001000', '0.00000000', '9913.90001000', '1653e467798d1e601dd9aa5b76e6393a', 1486376993, 1),
(15, 1, 'cny', '9913.90001000', '0.00000000', '9913.90001000', '0.10000000', '1', 'tradelog', 2, '交易中心-成功卖出-市场fc_cny', '9913.99901000', '0.00000000', '9913.99901000', '89ddbe0db83c3395eff56aa58324c07f', 1486376993, 1),
(16, 1, 'cny', '9913.99901000', '0.00000000', '9913.99901000', '0.01000000', '2', 'trade', 8, '交易中心-委托买入-市场fc_cny', '9913.98901000', '0.01000000', '9913.99901000', '96ae0a0fb166e0bb4939657adac40a8d', 1486377127, 1),
(17, 1, 'cny', '9913.98901000', '0.01000000', '9913.99901000', '0.01000000', '2', 'tradelog', 3, '交易中心-成功买入-市场fc_cny', '9913.98901000', '0.00000000', '9913.98901000', '0a971123477fe764d8397a9a7de95328', 1486377127, 1),
(18, 1, 'cny', '9913.98901000', '0.00000000', '9913.98901000', '0.01000000', '1', 'tradelog', 3, '交易中心-成功卖出-市场fc_cny', '9913.99891000', '0.00000000', '9913.99891000', '8da412f0f2071d446a362b6dfdc75592', 1486377127, 1),
(19, 1, 'cny', '9913.99891000', '0.00000000', '9913.99891000', '2974.19967300', '2', 'trade', 9, '交易中心-委托买入-市场fc_cny', '6939.79923700', '2974.19967300', '9913.99891000', 'e91b1c110b1e8c2894c58a2478858ad7', 1486377475, 1),
(20, 1, 'cny', '6939.79923700', '2974.19967300', '9913.99891000', '0.69000000', '2', 'tradelog', 4, '交易中心-成功买入-市场fc_cny', '6939.79923700', '2973.50967300', '9913.30891000', '9a66796dc9bd5d4be73db2b567621698', 1486377476, 1),
(21, 1, 'cny', '6939.79923700', '2973.50967300', '9913.30891000', '0.69000000', '1', 'tradelog', 4, '交易中心-成功卖出-市场fc_cny', '6940.48233700', '2973.50967300', '9913.99201000', 'c458f7a047c429c3ca23a579e857d132', 1486377476, 1),
(22, 1, 'cny', '6940.48233700', '2973.50967300', '9913.99201000', '2973.50967300', '1', 'trade', 9, '交易中心-交易撤销fc_cny', '9913.99201000', '0.00000000', '9913.99201000', 'e2f4e49730476a53df27ce46ce439286', 1486377511, 1),
(23, 1, 'cny', '9913.99201000', '0.00000000', '9913.99201000', '0.01000000', '2', 'trade', 10, '交易中心-委托买入-市场fc_cny', '9913.98201000', '0.01000000', '9913.99201000', '852ef96b911b0e3aa3551b9a254d604f', 1486382248, 1),
(24, 4, 'cny', '0.00000000', '0.00000000', '0.00000000', '10.00000000', '1', 'mycz', 25, '人民币充值-人工到账', '10.00000000', '0.00000000', '10.00000000', '061ca0a94cfc131fb6335abf84fa64e4', 1486382685, 1),
(25, 1, 'cny', '9913.98201000', '0.01000000', '9913.99201000', '0.03000000', '1', 'mycz', 1, '人民币充值-一代充值奖励-充值ID4,订单EM771575,金额10元,奖励0.03元', '9914.01201000', '0.01000000', '9914.02201000', '0e8fc204c128594a7513c5e9468200c4', 1486382685, 1),
(26, 5, 'cny', '0.00000000', '0.00000000', '0.00000000', '10.00000000', '1', 'mycz', 26, '人民币充值-人工到账', '10.00000000', '0.00000000', '10.00000000', '37b3dd7b0b905f1d003916b4a0dc3397', 1486384410, 1),
(27, 1, 'cny', '9914.01201000', '0.01000000', '9914.02201000', '0.03000000', '1', 'mycz', 1, '人民币充值-一代充值奖励-充值ID5,订单UX539438,金额10元,奖励0.03元', '9914.04201000', '0.01000000', '9914.05201000', '520aafa30547cd475aedcbbb8379f8e8', 1486384410, 1),
(28, 1, 'cny', '9914.04201000', '0.01000000', '9914.05201000', '0.02000000', '2', 'trade', 12, '交易中心-委托买入-市场fc_cny', '9914.02201000', '0.03000000', '9914.05201000', 'f6467f663c4cb269e40d511f51e9bdf2', 1486451816, 1),
(29, 1, 'cny', '9914.02201000', '0.03000000', '9914.05201000', '0.02000000', '2', 'tradelog', 5, '交易中心-成功买入-市场fc_cny', '9914.02201000', '0.01000000', '9914.03201000', 'cf89bbb6075cb1edc84060c79df5a733', 1486451816, 1),
(30, 1, 'cny', '9914.02201000', '0.01000000', '9914.03201000', '0.02000000', '1', 'tradelog', 5, '交易中心-成功卖出-市场fc_cny', '9914.04181000', '0.01000000', '9914.05181000', '7aeff71bc6b859b7f74aca17ca28082e', 1486451816, 1),
(31, 1, 'cny', '9914.04181000', '0.01000000', '9914.05181000', '1.00000000', '2', 'issue', 1, '认购中心-立即认购', '9914.04181000', '0.01000000', '9914.05181000', '39483b49331507ddaaddb0d40e839537', 1486477461, 1),
(32, 1, 'cny', '9914.04181000', '0.01000000', '9914.05181000', '1000000.00000000', '2', 'issue', 2, '认购中心-立即认购', '9913.04181000', '0.01000000', '9913.05181000', 'c2d0fa93b25045315ff4e7fba123d098', 1486477794, 1),
(33, 1, 'cny', '9913.04181000', '0.01000000', '9913.05181000', '0.01000000', '2', 'tradelog', 6, '交易中心-成功买入-市场fc_cny', '9913.04181000', '0.00000000', '9913.04181000', 'ad40159445501b34b7760168e74aebda', 1486484538, 1),
(34, 1, 'cny', '9913.04181000', '0.00000000', '9913.04181000', '0.01000000', '1', 'tradelog', 6, '交易中心-成功卖出-市场fc_cny', '9913.05168670', '0.00000000', '9913.05168670', 'ae2c536db102db461d145739fa847632', 1486484538, 1),
(35, 13, 'cny', '0.00000000', '0.00000000', '0.00000000', '10.00000000', '1', 'mycz', 28, '人民币充值-人工到账', '10.00000000', '0.00000000', '10.00000000', 'b83a60c843fd1745f3e9d13dafe4baf7', 1486538649, 1),
(36, 1, 'cny', '9913.05168670', '0.00000000', '9913.05168670', '0.03000000', '1', 'mycz', 1, '人民币充值-一代充值奖励-充值ID13,订单HS653491,金额10元,奖励0.03元', '9913.08168670', '0.00000000', '9913.08168670', 'e813ab1b128a358d73120af700b63e50', 1486538649, 1),
(37, 1, 'cny', '9913.08168670', '0.00000000', '9913.08168670', '15000000.00000000', '2', 'issue', 3, '认购中心-立即认购', '9814.08168670', '0.00000000', '9814.08168670', '3da2eefd214733de7e2eef1e0540300e', 1486538856, 1),
(38, 13, 'cny', '10.00000000', '0.00000000', '10.00000000', '15000000.00000000', '2', 'issue', 4, '认购中心-立即认购', '0.10000000', '0.00000000', '0.10000000', '62e57b6b9a9f2e2db1370e2fe374b7e2', 1486538948, 1),
(39, 1, 'cny', '9814.09653670', '0.00000000', '9814.09653670', '1.00000000', '1', 'mycz', 32, '人民币充值-人工到账', '9815.09653670', '0.00000000', '9815.09653670', '35b1310551cba6122852e0e490963595', 1486571438, 1),
(40, 17, 'cny', '0.00000000', '0.00000000', '0.00000000', '10.00000000', '1', 'mycz', 31, '人民币充值-人工到账', '10.00000000', '0.00000000', '10.00000000', 'ccef19884e9006675fab98914f339af6', 1486571458, 1),
(41, 1, 'cny', '9815.09653670', '0.00000000', '9815.09653670', '0.03000000', '1', 'mycz', 1, '人民币充值-一代充值奖励-充值ID17,订单TR173789,金额10元,奖励0.03元', '9815.12653670', '0.00000000', '9815.12653670', 'c1f3ec30f224243aecae85be5023001a', 1486571458, 1),
(42, 17, 'cny', '10.00000000', '0.00000000', '10.00000000', '7500000.00000000', '2', 'issue', 5, '认购中心-立即认购', '5.05000000', '0.00000000', '5.05000000', '913539c0254a3a6077a31d091a2dcd27', 1486571731, 1),
(43, 1, 'cny', '9815.13396170', '0.00000000', '9815.13396170', '0.07000000', '2', 'trade', 16, '交易中心-委托买入-市场fc_cny', '9815.06396170', '0.07000000', '9815.13396170', 'e21ebe273d1acdc722226992470f89b7', 1486643544, 1),
(44, 1, 'cny', '9815.06396170', '0.07000000', '9815.13396170', '0.01466687', '2', 'tradelog', 7, '交易中心-成功买入-市场fc_cny', '9815.06396170', '0.05533313', '9815.11929483', 'b93ddeb32e9636934c654cd2344ad9bd', 1486643544, 1),
(45, 1, 'cny', '9815.06396170', '0.05533313', '9815.11929483', '0.01466687', '1', 'tradelog', 7, '交易中心-成功卖出-市场fc_cny', '9815.07844773', '0.05533313', '9815.13378086', '4c7c24426850fa43fe888edf3ed0dac6', 1486643544, 1),
(46, 1, 'cny', '9815.07844773', '0.05533313', '9815.13378086', '0.03260024', '2', 'tradelog', 8, '交易中心-成功买入-市场fc_cny', '9815.07844773', '0.02273289', '9815.10118062', '67383100ecf10b22ce8bb4bbe77a6866', 1486643544, 1),
(47, 1, 'cny', '9815.07844773', '0.02273289', '9815.10118062', '0.03260024', '1', 'tradelog', 8, '交易中心-成功卖出-市场fc_cny', '9815.11064601', '0.02273289', '9815.13337890', '7f28f705d9775014d90a3ca027a22e99', 1486643544, 1),
(48, 1, 'cny', '9815.11064601', '0.02273289', '9815.13337890', '0.02273289', '2', 'tradelog', 9, '交易中心-成功买入-市场fc_cny', '9815.11064601', '0.00000000', '9815.11064601', '9cc9a75ac1b06745811d950334e6972b', 1486643545, 1),
(49, 1, 'cny', '9815.11064601', '0.00000000', '9815.11064601', '0.02273289', '1', 'tradelog', 9, '交易中心-成功卖出-市场fc_cny', '9815.13309860', '0.00000000', '9815.13309860', '1a4ca4947c79c5f845f80cc825ae2825', 1486643545, 1),
(50, 1, 'cny', '9815.13309860', '0.00000000', '9815.13309860', '0.25000000', '2', 'trade', 18, '交易中心-委托买入-市场fc_cny', '9814.88309860', '0.25000000', '9815.13309860', '4704a4156172dd814520856973865f01', 1486643653, 1),
(51, 1, 'cny', '9814.88309860', '0.25000000', '9815.13309860', '0.00008728', '2', 'tradelog', 10, '交易中心-成功买入-市场fc_cny', '9814.88309860', '0.24991272', '9815.13301132', '271b94d24623c3dafa28c5f037554eaf', 1486643653, 1),
(52, 1, 'cny', '9814.88309860', '0.24991272', '9815.13301132', '0.00008728', '1', 'tradelog', 10, '交易中心-成功卖出-市场fc_cny', '9814.88318480', '0.24991272', '9815.13309752', '1d3edb6bd35567368259fb944bf5a4d8', 1486643653, 1),
(53, 1, 'cny', '9814.88318480', '0.24991272', '9815.13309752', '0.24991272', '2', 'tradelog', 11, '交易中心-成功买入-市场fc_cny', '9814.88318480', '0.00000000', '9814.88318480', '42346dfe0615ff10ac3d0c11b205a75f', 1486643653, 1),
(54, 1, 'cny', '9814.88318480', '0.00000000', '9814.88318480', '0.24991272', '1', 'tradelog', 11, '交易中心-成功卖出-市场fc_cny', '9815.13001610', '0.00000000', '9815.13001610', '11e7b3989f2f4eb1ab85f99cbeb72bad', 1486643653, 1),
(55, 1, 'cny', '9815.13001610', '0.00000000', '9815.13001610', '0.13000000', '2', 'trade', 19, '交易中心-委托买入-市场fc_cny', '9815.00001610', '0.13000000', '9815.13001610', '7df5501d248ea4c08be8ef58a86db8de', 1486643779, 1),
(56, 1, 'cny', '9815.00001610', '0.13000000', '9815.13001610', '0.13000000', '2', 'tradelog', 12, '交易中心-成功买入-市场fc_cny', '9815.00001610', '0.00000000', '9815.00001610', 'd5188e6ee72141cb4f4b7624a1f92ea4', 1486643779, 1),
(57, 1, 'cny', '9815.00001610', '0.00000000', '9815.00001610', '0.13000000', '1', 'tradelog', 12, '交易中心-成功卖出-市场fc_cny', '9815.12841320', '0.00000000', '9815.12841320', '44bc97f3ddacc41989d80270769bfff8', 1486643779, 1),
(58, 17, 'cny', '5.05000000', '0.00000000', '5.05000000', '0.75000000', '2', 'trade', 20, '交易中心-委托买入-市场fc_cny', '4.30000000', '0.75000000', '5.05000000', 'da2f77a863d3aaaa9be1d37ef0c8ae3d', 1486643817, 1),
(59, 17, 'cny', '4.30000000', '0.75000000', '5.05000000', '0.62008728', '2', 'tradelog', 13, '交易中心-成功买入-市场fc_cny', '4.30000000', '0.12991272', '4.42991272', '584dd43d8fea8b14b11fd84935df9eb8', 1486643817, 1),
(60, 1, 'cny', '9815.12841320', '0.00000000', '9815.12841320', '0.62008728', '1', 'tradelog', 13, '交易中心-成功卖出-市场fc_cny', '9815.74085480', '0.00000000', '9815.74085480', '8606113b23f376712011571a1e832cb2', 1486643817, 0),
(61, 5, 'cny', '10.00000000', '0.00000000', '10.00000000', '2.00000000', '2', 'trade', 21, '交易中心-委托买入-市场fc_cny', '8.00000000', '2.00000000', '10.00000000', '0d8c5a7f88673e35417a142a40769bfd', 1486643964, 1),
(62, 17, 'cny', '4.30000000', '0.12991272', '4.42991272', '0.12991272', '2', 'tradelog', 14, '交易中心-成功买入-市场fc_cny', '4.30000000', '0.00000000', '4.30000000', 'ca83ff07c643a81e7ee2632a1530071c', 1486644070, 1),
(63, 1, 'cny', '9815.74085480', '0.00000000', '9815.74085480', '0.12991272', '1', 'tradelog', 14, '交易中心-成功卖出-市场fc_cny', '9815.86916570', '0.00000000', '9815.86916570', '38005949f852cfbfd7e504ed5d29517d', 1486644070, 0),
(64, 5, 'cny', '8.00000000', '2.00000000', '10.00000000', '0.18008728', '2', 'tradelog', 15, '交易中心-成功买入-市场fc_cny', '8.00000000', '1.81991272', '9.81991272', '31b73f97d7addaf9d81f297d43e2033f', 1486644070, 1),
(65, 1, 'cny', '9815.86916570', '0.00000000', '9815.86916570', '0.18008728', '1', 'tradelog', 15, '交易中心-成功卖出-市场fc_cny', '9816.04703250', '0.00000000', '9816.04703250', 'fed01f1184d2df2be22d7bb407fd12d5', 1486644070, 0),
(66, 1, 'cny', '9816.04703250', '0.00000000', '9816.04703250', '100000000.00000000', '2', 'issue', 6, '认购中心-立即认购', '9748.04703250', '0.00000000', '9748.04703250', 'ad310350403367bf6542a339517e8aea', 1486645296, 1),
(67, 5, 'cny', '8.00000000', '1.81991272', '9.81991272', '1.81000000', '2', 'tradelog', 16, '交易中心-成功买入-市场fc_cny', '8.00000000', '0.00991272', '8.00991272', '3794ef8360375931a70a0487f2a54c42', 1486645637, 1),
(68, 1, 'cny', '9748.04703250', '0.00000000', '9748.04703250', '1.81000000', '1', 'tradelog', 16, '交易中心-成功卖出-市场fc_cny', '9749.83471520', '0.00000000', '9749.83471520', 'dd809f1cbdef81944025298c7921a406', 1486645637, 0),
(69, 5, 'cny', '8.00000000', '0.00991272', '8.00991272', '5000000.00000000', '2', 'issue', 7, '认购中心-立即认购', '4.60000000', '0.00991272', '4.60991272', '722e0a07d6e3a033b05e76fa08dae90e', 1486646829, 1),
(70, 5, 'cny', '4.60000000', '0.00991272', '4.60991272', '0.00991272', '2', 'tradelog', 17, '交易中心-成功买入-市场fc_cny', '4.60000000', '0.00000000', '4.60000000', '716740d35d271c4a4590e8d0d37a6d35', 1486652378, 1),
(71, 1, 'cny', '9749.83981520', '0.00000000', '9749.83981520', '0.00991272', '1', 'tradelog', 17, '交易中心-成功卖出-市场fc_cny', '9749.84960570', '0.00000000', '9749.84960570', '37543e72a747cccd8f00397481641267', 1486652378, 0),
(72, 1, 'cny', '9749.84960570', '0.00000000', '9749.84960570', '5000000.00000000', '2', 'issue', 8, '认购中心-立即认购', '9749.84960570', '0.00000000', '9749.84960570', '14c75f31364af0e71ea4d5b8e4f2dd16', 1486653860, 1),
(73, 8, 'cny', '0.00000000', '0.00000000', '0.00000000', '10000000.00000000', '2', 'issue', 9, '认购中心-立即认购', '0.00000000', '0.00000000', '0.00000000', '368ee4b76c30d29f88d3e68a54f67479', 1486693715, 1),
(74, 8, 'cny', '0.00000000', '0.00000000', '0.00000000', '40000000.00000000', '2', 'issue', 10, '认购中心-立即认购', '0.00000000', '0.00000000', '0.00000000', 'e93d4c2a431d61ca39db498238b4dc5f', 1486693777, 1),
(75, 8, 'cny', '0.00000000', '0.00000000', '0.00000000', '50000000.00000000', '2', 'issue', 11, '认购中心-立即认购', '0.00000000', '0.00000000', '0.00000000', '8e609a70b9b3deefdf554f95490b4f07', 1486693833, 1),
(76, 1, 'cny', '9749.84960570', '0.00000000', '9749.84960570', '0.01000000', '2', 'trade', 30, '交易中心-委托买入-市场fc_cny', '9749.83960570', '0.01000000', '9749.84960570', '6257e8533adbc2c8e5e799449a5c11a7', 1486697937, 1),
(77, 1, 'cny', '9749.83960570', '0.01000000', '9749.84960570', '0.01000000', '2', 'tradelog', 18, '交易中心-成功买入-市场fc_cny', '9749.83960570', '0.00000000', '9749.83960570', '771137f010715e68ac40d866b3d6cd61', 1486697937, 1),
(78, 1, 'cny', '9749.83960570', '0.00000000', '9749.83960570', '0.01000000', '1', 'tradelog', 18, '交易中心-成功卖出-市场fc_cny', '9749.84948240', '0.00000000', '9749.84948240', '4ede4b818146d28c23370e1b7f408fa1', 1486697937, 1),
(79, 1, 'cny', '9749.84948240', '0.00000000', '9749.84948240', '1.50000000', '2', 'trade', 31, '交易中心-委托买入-市场fc_cny', '9748.34948240', '1.50000000', '9749.84948240', '9cae20b4b79605774a8f6e37fcf6eb59', 1486697978, 1),
(80, 1, 'cny', '9748.34948240', '1.50000000', '9749.84948240', '1.50000000', '2', 'tradelog', 19, '交易中心-成功买入-市场fc_cny', '9748.34948240', '0.00000000', '9748.34948240', '0c07f55a6701d80a29d32c74336d1428', 1486697978, 1),
(81, 1, 'cny', '9748.34948240', '0.00000000', '9748.34948240', '1.50000000', '1', 'tradelog', 19, '交易中心-成功卖出-市场fc_cny', '9749.83098740', '0.00000000', '9749.83098740', '2bd8ea54c1f971c5e1d0ee73d0e136b0', 1486697978, 1),
(82, 1, 'cny', '9749.83098740', '0.00000000', '9749.83098740', '2.00000000', '2', 'trade', 32, '交易中心-委托买入-市场fc_cny', '9747.83098740', '2.00000000', '9749.83098740', '8c0a7f8d3e0f6f4a1746b0ace84cce5a', 1486698031, 1),
(83, 1, 'cny', '9747.83098740', '2.00000000', '9749.83098740', '1.00000000', '2', 'tradelog', 20, '交易中心-成功买入-市场fc_cny', '9747.83098740', '1.00000000', '9748.83098740', 'fd2bab4d1e47f7cfccdcb61c021b7d5b', 1486698031, 1),
(84, 8, 'cny', '0.00000000', '0.00000000', '0.00000000', '1.00000000', '1', 'tradelog', 20, '交易中心-成功卖出-市场fc_cny', '0.98767000', '0.00000000', '0.98767000', '3d70aeefecf0c8f21cccd4838cf4a6c3', 1486698031, 0),
(85, 1, 'cny', '9747.83099140', '1.00000000', '9748.83099140', '1.00000000', '2', 'tradelog', 21, '交易中心-成功买入-市场fc_cny', '9747.83099140', '0.00000000', '9747.83099140', '56ca407d46b21b84400e309a1cd45281', 1486698031, 1),
(86, 8, 'cny', '0.98767000', '0.00000000', '0.98767000', '1.00000000', '1', 'tradelog', 21, '交易中心-成功卖出-市场fc_cny', '1.97534000', '0.00000000', '1.97534000', 'a84ca26c1fdbdf69418d2036d802babc', 1486698031, 0),
(87, 1, 'cny', '9747.83099540', '0.00000000', '9747.83099540', '3.00000000', '2', 'trade', 33, '交易中心-委托买入-市场fc_cny', '9744.83099540', '3.00000000', '9747.83099540', '840d29cfc4f451dd994c3a78969dc9f7', 1486698235, 1),
(88, 1, 'cny', '9744.83099540', '3.00000000', '9747.83099540', '1.00000000', '2', 'tradelog', 22, '交易中心-成功买入-市场fc_cny', '9744.83099540', '2.00000000', '9746.83099540', 'd37c19d0e4991ceffe317592f36a58dc', 1486698235, 1),
(89, 8, 'cny', '1.97534000', '0.00000000', '1.97534000', '1.00000000', '1', 'tradelog', 22, '交易中心-成功卖出-市场fc_cny', '2.96301000', '0.00000000', '2.96301000', '0461c60fe85bc25dddf3b992686ed686', 1486698235, 0),
(90, 1, 'cny', '9744.83099940', '2.00000000', '9746.83099940', '1.00000000', '2', 'tradelog', 23, '交易中心-成功买入-市场fc_cny', '9744.83099940', '1.00000000', '9745.83099940', '48ed2dd4e7ae664e39a6a22358ad00b9', 1486698235, 1),
(91, 8, 'cny', '2.96301000', '0.00000000', '2.96301000', '1.00000000', '1', 'tradelog', 23, '交易中心-成功卖出-市场fc_cny', '3.95068000', '0.00000000', '3.95068000', 'e533dfd239242b078a6f14751d2ee915', 1486698235, 0),
(92, 1, 'cny', '9744.83100340', '1.00000000', '9745.83100340', '1.00000000', '2', 'tradelog', 24, '交易中心-成功买入-市场fc_cny', '9744.83100340', '0.00000000', '9744.83100340', '8a8baf54597a69ae8a673c8047baa12b', 1486698235, 1),
(93, 8, 'cny', '3.95068000', '0.00000000', '3.95068000', '1.00000000', '1', 'tradelog', 24, '交易中心-成功卖出-市场fc_cny', '4.93835000', '0.00000000', '4.93835000', '282cb6af781895b0c0b50580e3bfe1c1', 1486698235, 0),
(94, 1, 'cny', '9744.83100740', '0.00000000', '9744.83100740', '5.00000000', '2', 'trade', 36, '交易中心-委托买入-市场fc_cny', '9739.83100740', '5.00000000', '9744.83100740', 'b677ca0510a7b3dc68e98c8fb699b40c', 1486706161, 1),
(95, 1, 'cny', '9739.83100740', '5.00000000', '9744.83100740', '5.00000000', '2', 'tradelog', 25, '交易中心-成功买入-市场fc_cny', '9739.83100740', '0.00000000', '9739.83100740', '4ca2a2c85a1c082eff7f5dac816ce839', 1486706161, 1),
(96, 1, 'cny', '9739.83100740', '0.00000000', '9739.83100740', '5.00000000', '1', 'tradelog', 25, '交易中心-成功卖出-市场fc_cny', '9744.76935740', '0.00000000', '9744.76935740', '0f7081f9cbb218b546793460fb5858eb', 1486706161, 1),
(97, 19, 'cny', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '1', 'mycz', 41, '人民币充值-人工到账', '5.00000000', '0.00000000', '5.00000000', 'ce0f0e21d75f0681de49fa6e6c7d099b', 1486725411, 1),
(98, 1, 'cny', '9744.76935740', '0.00000000', '9744.76935740', '0.01500000', '1', 'mycz', 1, '人民币充值-一代充值奖励-充值ID19,订单PD337983,金额5元,奖励0.015元', '9744.78435740', '0.00000000', '9744.78435740', '3a35d57ddb5489005d5b5e33685c58c8', 1486725411, 1),
(99, 19, 'cny', '5.00000000', '0.00000000', '5.00000000', '1000000.00000000', '2', 'issue', 12, '认购中心-立即认购', '4.32000000', '0.00000000', '4.32000000', 'a77b19fd2665d928ae477158713761d3', 1486725729, 1),
(100, 19, 'cny', '4.32000000', '0.00000000', '4.32000000', '1500000.00000000', '2', 'issue', 13, '认购中心-立即认购', '3.30000000', '0.00000000', '3.30000000', 'e7ec6c08e08974e21ec8d97a77f59a01', 1486725828, 1),
(101, 19, 'cny', '3.30000000', '0.00000000', '3.30000000', '3000000.00000000', '2', 'issue', 14, '认购中心-立即认购', '1.26000000', '0.00000000', '1.26000000', '026e8c581571f2441355b7a823501506', 1486725861, 1),
(102, 19, 'cny', '1.26000000', '0.00000000', '1.26000000', '1500000.00000000', '2', 'issue', 15, '认购中心-立即认购', '0.24000000', '0.00000000', '0.24000000', '3e801ca14c1ddffd7eea67438cb8ac43', 1486725913, 1),
(103, 19, 'cny', '0.24000000', '0.00000000', '0.24000000', '2.00000000', '1', 'mycz', 43, '人民币充值-人工到账', '2.24000000', '0.00000000', '2.24000000', '5c7fcd0eeb503f74dce175795c8a879e', 1486728109, 1),
(104, 1, 'cny', '9744.79149740', '0.00000000', '9744.79149740', '0.00600000', '1', 'mycz', 1, '人民币充值-一代充值奖励-充值ID19,订单EA354576,金额2元,奖励0.006元', '9744.79749740', '0.00000000', '9744.79749740', 'c3f6e2aa083c4df5a7ea92fa8eaf6a1f', 1486728109, 1),
(105, 24, 'cny', '0.00000000', '0.00000000', '0.00000000', '1.00000000', '1', 'mycz', 42, '人民币充值-人工到账', '1.00000000', '0.00000000', '1.00000000', '6be1a02c99bce99d9dcb5abeefbeba2a', 1486728166, 1),
(106, 1, 'cny', '9744.79749740', '0.00000000', '9744.79749740', '0.00300000', '1', 'mycz', 1, '人民币充值-一代充值奖励-充值ID24,订单SZ723931,金额1元,奖励0.003元', '9744.80049740', '0.00000000', '9744.80049740', '67e9b982897472479a6c7cb68d180596', 1486728166, 1),
(107, 19, 'cny', '2.24000000', '0.00000000', '2.24000000', '3000000.00000000', '2', 'issue', 16, '认购中心-立即认购', '0.20000000', '0.00000000', '0.20000000', '67405d9c010f4d2a867dea22fe898928', 1486728243, 1),
(108, 24, 'cny', '1.00000000', '0.00000000', '1.00000000', '1.00000000', '2', 'trade', 39, '交易中心-委托买入-市场fc_cny', '0.00000000', '1.00000000', '1.00000000', 'b5ee0c5f8a668db847db4259bc155938', 1486728252, 1),
(109, 24, 'cny', '0.00000000', '1.00000000', '1.00000000', '1.00000000', '2', 'tradelog', 26, '交易中心-成功买入-市场fc_cny', '0.00000000', '0.00000000', '0.00000000', '194b9af0db7932e438ddfb579b779d5b', 1486728252, 1),
(110, 21, 'cny', '0.00000000', '0.00000000', '0.00000000', '1.00000000', '1', 'tradelog', 26, '交易中心-成功卖出-市场fc_cny', '0.98767000', '0.00000000', '0.98767000', '4c456e65034a668755b33e16f3371166', 1486728252, 1),
(111, 24, 'cny', '0.00000000', '0.00000000', '0.00000000', '1.00000000', '1', 'mycz', 44, '人民币充值-人工到账', '1.00000000', '0.00000000', '1.00000000', '6be1a02c99bce99d9dcb5abeefbeba2a', 1486744501, 1),
(112, 1, 'cny', '9744.80356140', '0.00000000', '9744.80356140', '0.00300000', '1', 'mycz', 1, '人民币充值-一代充值奖励-充值ID24,订单FN487386,金额1元,奖励0.003元', '9744.80656140', '0.00000000', '9744.80656140', '0b70f313b14e78714c2072a0158e1427', 1486744501, 1),
(113, 24, 'cny', '1.00000000', '0.00000000', '1.00000000', '0.50116500', '2', 'trade', 41, '交易中心-委托买入-市场fc_cny', '0.49883500', '0.50116500', '1.00000000', 'c5b7cf27e38157157b7fd40a4b77c96b', 1486777111, 1),
(114, 24, 'cny', '0.49883500', '0.50116500', '1.00000000', '0.50116500', '2', 'tradelog', 27, '交易中心-成功买入-市场fc_cny', '0.49883500', '0.00000000', '0.49883500', '10c8a33c28b2eaa1a5077d883ee5c77c', 1486777111, 1),
(115, 21, 'cny', '0.98767000', '0.00000000', '0.98767000', '0.50116500', '1', 'tradelog', 27, '交易中心-成功卖出-市场fc_cny', '1.48150500', '0.00000000', '1.48150500', '19875b559d5b803e14da86068ce94884', 1486777111, 1),
(116, 24, 'cny', '0.49883500', '0.00000000', '0.49883500', '0.10023300', '2', 'trade', 42, '交易中心-委托买入-市场fc_cny', '0.39860200', '0.10023300', '0.49883500', '5ad575a4e8fde9494ee9c6083e554805', 1486791840, 1),
(117, 24, 'cny', '0.39860200', '0.10023300', '0.49883500', '0.10023300', '2', 'tradelog', 28, '交易中心-成功买入-市场fc_cny', '0.39860200', '0.00000000', '0.39860200', 'fda19605179a016a61a1481397d37e6a', 1486791840, 1),
(118, 21, 'cny', '1.48150500', '0.00000000', '1.48150500', '0.10023300', '1', 'tradelog', 28, '交易中心-成功卖出-市场fc_cny', '1.58027200', '0.00000000', '1.58027200', '6aa91c195dd3dc6fef970f0171adbd96', 1486791840, 0),
(119, 24, 'cny', '0.39860200', '0.00000000', '0.39860200', '0.30069900', '2', 'trade', 43, '交易中心-委托买入-市场fc_cny', '0.09790300', '0.30069900', '0.39860200', 'a81f2706d932d4909f0a6c01aa91cc6a', 1486791892, 1),
(120, 24, 'cny', '0.09790300', '0.30069900', '0.39860200', '0.30069900', '2', 'tradelog', 29, '交易中心-成功买入-市场fc_cny', '0.09790300', '0.00000000', '0.09790300', '177b2302c68fb446398fa47bbdd292d3', 1486791892, 1),
(121, 21, 'cny', '1.58027200', '0.00000000', '1.58027200', '0.30069900', '1', 'tradelog', 29, '交易中心-成功卖出-市场fc_cny', '1.87657300', '0.00000000', '1.87657300', '42201d1541ee76f7827f9c20436a94c1', 1486791892, 0),
(122, 24, 'cny', '0.09790300', '0.00000000', '0.09790300', '0.09020970', '2', 'trade', 44, '交易中心-委托买入-市场fc_cny', '0.00769330', '0.09020970', '0.09790300', 'cd7c6c75ce94e8837273ba035903367d', 1486792050, 1),
(123, 24, 'cny', '0.00769330', '0.09020970', '0.09790300', '0.09020970', '2', 'tradelog', 30, '交易中心-成功买入-市场fc_cny', '0.00769330', '0.00000000', '0.00769330', '4c1a8d7c6a067a10978f2bf491b6706f', 1486792050, 1),
(124, 21, 'cny', '1.87657300', '0.00000000', '1.87657300', '0.09020970', '1', 'tradelog', 30, '交易中心-成功卖出-市场fc_cny', '1.96546330', '0.00000000', '1.96546330', '8fb4180684d7a4b8770488f732ed42f5', 1486792050, 0),
(125, 24, 'cny', '0.00769330', '0.00000000', '0.00769330', '0.00694009', '2', 'trade', 45, '交易中心-委托买入-市场fc_cny', '0.00075321', '0.00694009', '0.00769330', 'b7842b15dd794d57a103e66a84a2f135', 1486792077, 1),
(126, 24, 'cny', '0.00075321', '0.00694009', '0.00769330', '0.00694009', '2', 'tradelog', 31, '交易中心-成功买入-市场fc_cny', '0.00075321', '0.00000000', '0.00075321', '0db558a4949eb280ef039c7a2315383a', 1486792077, 1),
(127, 21, 'cny', '1.96546330', '0.00000000', '1.96546330', '0.00694009', '1', 'tradelog', 31, '交易中心-成功卖出-市场fc_cny', '1.97230189', '0.00000000', '1.97230189', '0367fdca6b4cf29d10061ca89fba85ba', 1486792077, 0),
(128, 24, 'cny', '0.00075321', '0.00000000', '0.00075321', '0.00067946', '2', 'trade', 46, '交易中心-委托买入-市场fc_cny', '0.00007375', '0.00067946', '0.00075321', '5cbaaceb5cba7da65f88a4bcacd86d6d', 1486792110, 1),
(129, 24, 'cny', '0.00007375', '0.00067946', '0.00075321', '0.00067946', '2', 'tradelog', 32, '交易中心-成功买入-市场fc_cny', '0.00007375', '0.00000000', '0.00007375', '182cc97b0d8af8fc7ebbd22f9ae7d2f1', 1486792110, 1),
(130, 21, 'cny', '1.97230189', '0.00000000', '1.97230189', '0.00067946', '1', 'tradelog', 32, '交易中心-成功卖出-市场fc_cny', '1.97297141', '0.00000000', '1.97297141', 'dcbb44741d801b632557268154225224', 1486792110, 0),
(131, 24, 'cny', '0.00007375', '0.00000000', '0.00007375', '0.00006652', '2', 'trade', 47, '交易中心-委托买入-市场fc_cny', '0.00000723', '0.00006652', '0.00007375', 'eeec0ac3ee8717c3f7b7267975d980bd', 1486792126, 1),
(132, 24, 'cny', '0.00000723', '0.00006652', '0.00007375', '0.00006652', '2', 'tradelog', 33, '交易中心-成功买入-市场fc_cny', '0.00000723', '0.00000000', '0.00000723', 'ecf5de877bac60633e39e7cb42e77d19', 1486792126, 1),
(133, 21, 'cny', '1.97297141', '0.00000000', '1.97297141', '0.00006652', '1', 'tradelog', 33, '交易中心-成功卖出-市场fc_cny', '1.97303696', '0.00000000', '1.97303696', '09da967f8deafffc73f4fe323ad6c296', 1486792126, 0),
(134, 8, 'cny', '4.93835000', '0.00000000', '4.93835000', '5000000.00000000', '2', 'issue', 17, '认购中心-立即认购', '1.53835000', '0.00000000', '1.53835000', '82b978fa89ea4aeb46617d377f193d33', 1486804441, 1),
(135, 8, 'cny', '1.53835000', '0.00000000', '1.53835000', '1000000.00000000', '2', 'issue', 18, '认购中心-立即认购', '0.85835000', '0.00000000', '0.85835000', 'c067c426e0db20791cc843a1f7536df6', 1486804494, 1),
(136, 35, 'cny', '0.00000000', '0.00000000', '0.00000000', '12222.00000000', '1', 'mycz', 49, '人民币充值-人工到账', '12222.00000000', '0.00000000', '12222.00000000', '362789f2084d3bb9dc3d8c17c3ceca1b', 1492011483, 1),
(137, 35, 'cny', '12222.00000000', '0.00000000', '12222.00000000', '12222.00000000', '1', 'mycz', 48, '人民币充值-人工到账', '24444.00000000', '0.00000000', '24444.00000000', 'eb572bcd9bf68f94ba026a23455e337d', 1492011485, 1),
(138, 36, 'cny', '0.00000000', '0.00000000', '0.00000000', '5000.00000000', '1', 'mycz', 50, '人民币充值-人工到账', '5000.00000000', '0.00000000', '5000.00000000', '1e051beab58f5708b7ad57ea17b499e1', 1496499084, 1),
(139, 36, 'cny', '5000.00000000', '0.00000000', '5000.00000000', '1000.00000000', '2', 'issue', 19, '认购中心-立即认购', '4500.00000000', '0.00000000', '4500.00000000', '745c7d4a79b0de7c186e58861b3a4b8e', 1496504159, 1),
(140, 36, 'cny', '4500.00000000', '0.00000000', '4500.00000000', '1000.00000000', '2', 'issue', 20, '认购中心-立即认购', '3500.00000000', '0.00000000', '3500.00000000', '51652910341d154eef9bfac29b452967', 1496505618, 1),
(141, 36, 'cny', '3500.00000000', '0.00000000', '3500.00000000', '100.00000000', '2', 'issue', 21, '认购中心-立即认购', '3400.00000000', '0.00000000', '3400.00000000', '0c3a8f3a078c8f4f484dcfd0dfa651c5', 1496505972, 1),
(142, 34, 'cny', '0.00000000', '0.00000000', '0.00000000', '100.00000000', '1', 'mycz', 47, '人民币充值-人工到账', '100.00000000', '0.00000000', '100.00000000', '1d2d82f2139bea0f1fc7e5573f3b5b9d', 1496522352, 1),
(143, 23, 'cny', '0.00000000', '0.00000000', '0.00000000', '1.00000000', '1', 'mycz', 46, '人民币充值-人工到账', '1.00000000', '0.00000000', '1.00000000', '34b2f78f702f020ea5522227fd22997b', 1496522358, 1),
(144, 1, 'cny', '100.00000000', '0.00000000', '100.00000000', '0.00300000', '1', 'mycz', 1, '人民币充值-一代充值奖励-充值ID23,订单NY621258,金额1元,奖励0.003元', '100.00300000', '0.00000000', '100.00300000', '5442cc74db106aa62f0cff15f4178a0e', 1496522358, 0),
(145, 38, 'cny', '0.00000000', '0.00000000', '0.00000000', '100.00000000', '1', 'mycz', 51, '人民币充值-人工到账', '100.00000000', '0.00000000', '100.00000000', '2810cc55346fb81dcbc839759a402ad6', 1496522363, 1),
(146, 39, 'cny', '999999999999.99999999', '0.00000000', '999999999999.99999999', '80000000.00000000', '2', 'issue', 22, '认购中心-立即认购', '928799999999.99999999', '0.00000000', '928800000000.00000000', '3a9f9e28148743b5984e84121bc61e0e', 1498746053, 0),
(147, 39, 'cny', '928799999999.99999999', '0.00000000', '928800000000.00000000', '80000000.00000000', '2', 'issue', 23, '认购中心-立即认购', '923599999999.99999999', '0.00000000', '923600000000.00000000', '8dd3f07c9ef02005a428968b9cd4c567', 1498746613, 1),
(148, 38, 'cny', '999999999999.99999999', '0.00000000', '999999999999.99999999', '89000.00000000', '2', 'trade', 55, '交易中心-委托买入-市场hjc_cny', '999999910999.99999999', '89000.00000000', '999999999999.99999999', '271b68a6337da5151ae5b72e62d6e17d', 1498821889, 0),
(149, 38, 'cny', '999999910999.99999999', '89000.00000000', '999999999999.99999999', '89000.00000000', '2', 'tradelog', 34, '交易中心-成功买入-市场hjc_cny', '999999910999.99999999', '0.00000000', '999999911000.00000000', '2fe4804fff7aa977a475862f01e543a3', 1498821889, 1),
(150, 39, 'cny', '923599999999.99999999', '0.00000000', '923600000000.00000000', '89000.00000000', '1', 'tradelog', 34, '交易中心-成功卖出-市场hjc_cny', '923600088554.99999999', '0.00000000', '923600088555.00000000', '5ca42faa926f9fa81ec87dbe55c6a00f', 1498821890, 0),
(151, 38, 'cny', '999999910999.99999999', '0.00000000', '999999911000.00000000', '445750.00000000', '2', 'trade', 56, '交易中心-委托买入-市场hjc_cny', '999999465249.99999999', '445750.00000000', '999999911000.00000000', 'd7097788176e8569b015e4c3859f9b15', 1498821913, 1),
(152, 38, 'cny', '999999465249.99999999', '445750.00000000', '999999911000.00000000', '445750.00000000', '2', 'tradelog', 35, '交易中心-成功买入-市场hjc_cny', '999999465249.99999999', '0.00000000', '999999465250.00000000', '3c0afbde6de74fc44bce73bc6b0d4727', 1498821988, 1),
(153, 39, 'cny', '923600088554.99999999', '0.00000000', '923600088555.00000000', '445750.00000000', '1', 'tradelog', 35, '交易中心-成功卖出-市场hjc_cny', '923600532076.24999999', '0.00000000', '923600532076.25000000', '145c87bf7d0a8f8655ed13ce09c7238d', 1498821989, 0),
(154, 38, 'cny', '999999465249.99999999', '0.00000000', '999999465250.00000000', '520000.00000000', '2', 'trade', 59, '交易中心-委托买入-市场ydc_cny', '999998945249.99999999', '520000.00000000', '999999465250.00000000', 'f716852f738f0644caf5e036c703d65f', 1498822054, 1),
(155, 38, 'cny', '999998945249.99999999', '520000.00000000', '999999465250.00000000', '325000.00000000', '2', 'tradelog', 36, '交易中心-成功买入-市场ydc_cny', '999998945249.99999999', '195000.00000000', '999999140250.00000000', 'bcdc29e337638a5cc609516657d4a4b1', 1498822054, 1),
(156, 39, 'cny', '923600532076.24999999', '0.00000000', '923600532076.25000000', '325000.00000000', '1', 'tradelog', 36, '交易中心-成功卖出-市场ydc_cny', '923600855451.24999999', '0.00000000', '923600855451.25000000', 'b7221eef1635fcc8df59abe8762a9a9c', 1498822054, 0),
(157, 38, 'cny', '999998945249.99999999', '195000.00000000', '999999140250.00000000', '33000.00000000', '2', 'trade', 60, '交易中心-委托买入-市场ydc_cny', '999998912249.99999999', '228000.00000000', '999999140250.00000000', '732f8f2f34c7b86ba17ce15ae67b5553', 1498822069, 1),
(158, 38, 'cny', '999998912249.99999999', '228000.00000000', '999999140250.00000000', '13200.00000000', '2', 'tradelog', 37, '交易中心-成功买入-市场ydc_cny', '999998912249.99999999', '214800.00000000', '999999127050.00000000', '566f7c717adc8d521b402c20e21689d9', 1498822100, 1),
(159, 39, 'cny', '923600855451.24999999', '0.00000000', '923600855451.25000000', '13200.00000000', '1', 'tradelog', 37, '交易中心-成功卖出-市场ydc_cny', '923600868585.24999999', '0.00000000', '923600868585.25000000', '7c263df744f89da3722787ba394516cb', 1498822100, 0),
(160, 39, 'cny', '923600868585.24999999', '0.00000000', '923600868585.25000000', '900.00000000', '2', 'trade', 62, '交易中心-委托买入-市场hjc_cny', '923600867685.24999999', '900.00000000', '923600868585.25000000', 'e83f97ae28c26191340f5ceca678f512', 1499654371, 1),
(161, 39, 'cny', '923600867685.24999999', '900.00000000', '923600868585.25000000', '891.00000000', '2', 'tradelog', 38, '交易中心-成功买入-市场hjc_cny', '923600867685.24999999', '9.00000000', '923600867694.25000000', 'afc5b146350d6a3d7d4da4b4652a1a61', 1499654371, 1),
(162, 39, 'cny', '923600867685.24999999', '9.00000000', '923600867694.25000000', '891.00000000', '1', 'tradelog', 38, '交易中心-成功卖出-市场hjc_cny', '923600868571.79499999', '9.00000000', '923600868580.80000000', 'f2adea597615161f694b7d5b2e13d9e3', 1499654371, 1),
(163, 38, 'cny', '999998912256.49999999', '214800.00000000', '999999127056.50000000', '19800.00000000', '1', 'trade', 60, '交易中心-交易撤销ydc_cny', '999998932056.49999999', '195000.00000000', '999999127056.50000000', '9a7555c444028bd4feb6bbbdf5f5b9d4', 1500606226, 0);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_footer`
--

CREATE TABLE IF NOT EXISTS `btchanges_footer` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- 转存表中的数据 `btchanges_footer`
--

INSERT INTO `btchanges_footer` (`id`, `name`, `title`, `url`, `img`, `type`, `remark`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, '1', '关于我们', '/Article/index/type/aboutus.html', '', '1', '', 1, 111, 0, 1),
(2, '1', '联系我们', '/Article/index/type/aboutus.html', '', '1', '', 1, 111, 0, 1),
(3, '1', '资质证明', '/Article/index/type/aboutus.html', '', '1', '', 1, 111, 0, 1),
(4, '1', '用户协议', '/Article/index/type/aboutus.html', '', '1', '', 1, 111, 0, 1),
(5, '1', '法律声明', '/Article/index/type/aboutus.html', '', '1', '', 1, 111, 0, 1),
(6, '1', '1', '/', 'footer_1.png', '2', '', 1, 111, 0, 1),
(7, '1', '1', 'http://www.szfw.org/', 'footer_2.png', '2', '', 1, 111, 0, 1),
(8, '1', '1', 'http://www.miibeian.gov.cn/', 'footer_3.png', '2', '', 1, 111, 0, 1),
(9, '1', '1', 'http://www.cyberpolice.cn/', 'footer_4.png', '2', '', 1, 111, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_huafei`
--

CREATE TABLE IF NOT EXISTS `btchanges_huafei` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL,
  `moble` varchar(255) NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `mum` decimal(20,8) NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `btchanges_huafei`
--

INSERT INTO `btchanges_huafei` (`id`, `userid`, `moble`, `num`, `type`, `mum`, `addtime`, `endtime`, `status`) VALUES
(1, 2, '13958844896', 50, 'dog', '5.00000000', 1476016339, 0, 0),
(2, 12, '15979197685', 30, 'fc', '42857142.85714300', 1486997620, 0, 0),
(3, 8, '18157316153', 20, 'fc', '28571428.57142900', 1486998754, 0, 0),
(4, 12, '15979197685', 30, 'fc', '42857142.85714300', 1487133105, 0, 0),
(5, 12, '15979197685', 10, 'fc', '14285714.28571400', 1487248208, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_huafei_coin`
--

CREATE TABLE IF NOT EXISTS `btchanges_huafei_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `coinname` varchar(50) NOT NULL,
  `price` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `btchanges_huafei_coin`
--

INSERT INTO `btchanges_huafei_coin` (`id`, `coinname`, `price`, `status`) VALUES
(1, 'fc', '0.0000007', 1),
(2, 'qqb', '0.5', 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_huafei_type`
--

CREATE TABLE IF NOT EXISTS `btchanges_huafei_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `btchanges_huafei_type`
--

INSERT INTO `btchanges_huafei_type` (`id`, `name`, `title`, `status`) VALUES
(1, '10', '10元话费充值', 1),
(2, '20', '20元话费充值', 1),
(3, '30', '30元话费充值', 1),
(4, '50', '50元话费充值', 1),
(5, '100', '100元话费充值', 1),
(6, '300', '300元话费充值', 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_invit`
--

CREATE TABLE IF NOT EXISTS `btchanges_invit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `invit` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `invit` (`invit`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='推广奖励表' AUTO_INCREMENT=33 ;

--
-- 转存表中的数据 `btchanges_invit`
--

INSERT INTO `btchanges_invit` (`id`, `userid`, `invit`, `name`, `type`, `num`, `mum`, `fee`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 20, 29, 'cny', '一代充值奖励', '100.00000000', '100.00000000', '0.30000000', 0, 1480488640, 0, 1),
(2, 1, 2, 'cny', '一代充值奖励', '1000.00000000', '1000.00000000', '3.00000000', 0, 1486357838, 0, 1),
(3, 1, 4, 'cny', '一代充值奖励', '10.00000000', '10.00000000', '0.03000000', 0, 1486382685, 0, 1),
(4, 1, 5, 'cny', '一代充值奖励', '10.00000000', '10.00000000', '0.03000000', 0, 1486384410, 0, 1),
(5, 1, 13, 'cny', '一代充值奖励', '10.00000000', '10.00000000', '0.03000000', 0, 1486538649, 0, 1),
(6, 1, 13, '滑稽币认购', '一代认购赠送', '15000000.00000000', '9.90000000', '0.01485000', 0, 1486538948, 0, 1),
(7, 1, 17, 'cny', '一代充值奖励', '10.00000000', '10.00000000', '0.03000000', 0, 1486571458, 0, 1),
(8, 1, 17, '滑稽币认购', '一代认购赠送', '7500000.00000000', '4.95000000', '0.00742500', 0, 1486571731, 0, 1),
(9, 1, 5, '滑稽币认购', '一代认购赠送', '5000000.00000000', '3.40000000', '0.00510000', 0, 1486646829, 0, 1),
(10, 1, 8, '滑稽币平台返利', '一代认购赠送', '10000000.00000000', '8300000.00000000', '12450.00000000', 0, 1486693715, 0, 1),
(11, 1, 8, '滑稽币平台返利', '一代认购赠送', '40000000.00000000', '33200000.00000000', '49800.00000000', 0, 1486693777, 0, 1),
(12, 1, 8, '滑稽币平台返利', '一代认购赠送', '50000000.00000000', '41500000.00000000', '62250.00000000', 0, 1486693833, 0, 1),
(13, 1, 8, '一代卖出赠送', 'fc_cny卖出交易赠送', '1000000.00000000', '1.00000000', '0.00000400', 0, 1486698031, 0, 1),
(14, 1, 8, '一代卖出赠送', 'fc_cny卖出交易赠送', '1000000.00000000', '1.00000000', '0.00000400', 0, 1486698031, 0, 1),
(15, 1, 8, '一代卖出赠送', 'fc_cny卖出交易赠送', '1000000.00000000', '1.00000000', '0.00000400', 0, 1486698235, 0, 1),
(16, 1, 8, '一代卖出赠送', 'fc_cny卖出交易赠送', '1000000.00000000', '1.00000000', '0.00000400', 0, 1486698235, 0, 1),
(17, 1, 8, '一代卖出赠送', 'fc_cny卖出交易赠送', '1000000.00000000', '1.00000000', '0.00000400', 0, 1486698235, 0, 1),
(18, 1, 19, 'cny', '一代充值奖励', '5.00000000', '5.00000000', '0.01500000', 0, 1486725411, 0, 1),
(19, 1, 19, '滑稽币认购', '一代认购赠送', '1000000.00000000', '0.68000000', '0.00102000', 0, 1486725729, 0, 1),
(20, 1, 19, '滑稽币认购', '一代认购赠送', '1500000.00000000', '1.02000000', '0.00153000', 0, 1486725828, 0, 1),
(21, 1, 19, '滑稽币认购', '一代认购赠送', '3000000.00000000', '2.04000000', '0.00306000', 0, 1486725861, 0, 1),
(22, 1, 19, '滑稽币认购', '一代认购赠送', '1500000.00000000', '1.02000000', '0.00153000', 0, 1486725913, 0, 1),
(23, 1, 19, 'cny', '一代充值奖励', '2.00000000', '2.00000000', '0.00600000', 0, 1486728109, 0, 1),
(24, 1, 24, 'cny', '一代充值奖励', '1.00000000', '1.00000000', '0.00300000', 0, 1486728166, 0, 1),
(25, 1, 19, '滑稽币认购', '一代认购赠送', '3000000.00000000', '2.04000000', '0.00306000', 0, 1486728243, 0, 1),
(26, 1, 21, '一代卖出赠送', 'fc_cny卖出交易赠送', '1000000.00000000', '1.00000000', '0.00000400', 0, 1486728252, 0, 1),
(27, 1, 24, 'cny', '一代充值奖励', '1.00000000', '1.00000000', '0.00300000', 0, 1486744501, 0, 1),
(28, 1, 21, '一代卖出赠送', 'fc_cny卖出交易赠送', '500000.00000000', '0.50000000', '0.00000200', 0, 1486777111, 0, 1),
(29, 1, 21, '一代卖出赠送', 'fc_cny卖出交易赠送', '300000.00000000', '0.30000000', '0.00000100', 0, 1486791892, 0, 1),
(30, 1, 8, '滑稽币认购', '一代认购赠送', '5000000.00000000', '3.40000000', '0.00510000', 0, 1486804441, 0, 1),
(31, 1, 8, '滑稽币认购', '一代认购赠送', '1000000.00000000', '0.68000000', '0.00102000', 0, 1486804494, 0, 1),
(32, 1, 23, 'cny', '一代充值奖励', '1.00000000', '1.00000000', '0.00300000', 0, 1496522358, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_issue`
--

CREATE TABLE IF NOT EXISTS `btchanges_issue` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `buycoin` varchar(50) NOT NULL,
  `num` bigint(20) unsigned NOT NULL,
  `deal` int(11) unsigned NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `limit` int(11) unsigned NOT NULL,
  `time` varchar(255) NOT NULL,
  `tian` varchar(255) NOT NULL,
  `ci` varchar(255) NOT NULL,
  `jian` varchar(255) NOT NULL,
  `min` varchar(255) NOT NULL,
  `max` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `invit_coin` varchar(50) NOT NULL,
  `invit_1` varchar(50) NOT NULL,
  `invit_2` varchar(50) NOT NULL,
  `invit_3` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`),
  KEY `coinname` (`coinname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='认购发行表' AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `btchanges_issue`
--

INSERT INTO `btchanges_issue` (`id`, `name`, `coinname`, `buycoin`, `num`, `deal`, `price`, `limit`, `time`, `tian`, `ci`, `jian`, `min`, `max`, `content`, `invit_coin`, `invit_1`, `invit_2`, `invit_3`, `sort`, `addtime`, `endtime`, `status`) VALUES
(9, '汉家币', 'hjc', 'cny', 80000000, 80000000, '890.00000000', 80000000, '2017-06-28 00:00:00', '5', '1', '1', '100', '80000000', '', 'cny', '', '', '', 0, 1498747285, 0, 1),
(10, '元东币', 'ydc', 'cny', 80000000, 80000000, '65.00000000', 80000000, '2017-06-28 00:00:00', '5', '1', '1', '1000', '80000000', '', 'cny', '', '', '', 0, 1498747268, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_issue_log`
--

CREATE TABLE IF NOT EXISTS `btchanges_issue_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `buycoin` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` int(20) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `ci` int(11) unsigned NOT NULL,
  `jian` varchar(255) NOT NULL,
  `unlock` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='认购记录表' AUTO_INCREMENT=24 ;

--
-- 转存表中的数据 `btchanges_issue_log`
--

INSERT INTO `btchanges_issue_log` (`id`, `userid`, `name`, `coinname`, `buycoin`, `price`, `num`, `mum`, `ci`, `jian`, `unlock`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 1, '滑稽币平台返利', 'fc', 'fc', '5000000.00000000', 1, '5000000.00000000', 0, '', 1, 0, 1486477461, 1486477461, 0),
(2, 1, '滑稽币认购', 'fc', 'cny', '0.00000100', 1000000, '1.00000000', 30, '24', 2, 0, 1486477794, 1486644853, 0),
(3, 1, '滑稽币认购', 'fc', 'cny', '0.00000660', 15000000, '99.00000000', 7, '24', 2, 0, 1486538856, 1486644850, 0),
(4, 13, '滑稽币认购', 'fc', 'cny', '0.00000066', 15000000, '9.90000000', 7, '24', 1, 0, 1486538948, 1486538948, 0),
(5, 17, '滑稽币认购', 'fc', 'cny', '0.00000066', 7500000, '4.95000000', 7, '24', 4, 0, 1486571731, 1488618425, 0),
(6, 1, '滑稽币认购', 'fc', 'cny', '0.00000068', 100000000, '68.00000000', 7, '24', 1, 0, 1486645296, 1486645296, 0),
(7, 5, '滑稽币认购', 'fc', 'cny', '0.00000068', 5000000, '3.40000000', 7, '24', 1, 0, 1486646829, 1486646829, 0),
(8, 1, '滑稽币平台返利', 'fc', 'fc', '0.83000000', 5000000, '4150000.00000000', 30, '24', 1, 0, 1486653860, 1486653860, 0),
(9, 8, '滑稽币平台返利', 'fc', 'fc', '0.83000000', 10000000, '8300000.00000000', 30, '24', 7, 0, 1486693715, 1487905707, 0),
(10, 8, '滑稽币平台返利', 'fc', 'fc', '0.83000000', 40000000, '33200000.00000000', 30, '24', 7, 0, 1486693777, 1487905706, 0),
(11, 8, '滑稽币平台返利', 'fc', 'fc', '0.83000000', 50000000, '41500000.00000000', 30, '24', 7, 0, 1486693833, 1487905704, 0),
(12, 19, '滑稽币认购', 'fc', 'cny', '0.00000068', 1000000, '0.68000000', 7, '24', 1, 0, 1486725729, 1486725729, 0),
(13, 19, '滑稽币认购', 'fc', 'cny', '0.00000068', 1500000, '1.02000000', 7, '24', 1, 0, 1486725828, 1486725828, 0),
(14, 19, '滑稽币认购', 'fc', 'cny', '0.00000068', 3000000, '2.04000000', 7, '24', 1, 0, 1486725861, 1486725861, 0),
(15, 19, '滑稽币认购', 'fc', 'cny', '0.00000068', 1500000, '1.02000000', 7, '24', 1, 0, 1486725913, 1486725913, 0),
(16, 19, '滑稽币认购', 'fc', 'cny', '0.00000068', 3000000, '2.04000000', 7, '24', 1, 0, 1486728243, 1486728243, 0),
(17, 8, '滑稽币认购', 'fc', 'cny', '0.00000068', 5000000, '3.40000000', 7, '24', 6, 0, 1486804441, 1487905704, 0),
(18, 8, '滑稽币认购', 'fc', 'cny', '0.00000068', 1000000, '0.68000000', 7, '24', 6, 0, 1486804494, 1487905702, 0),
(19, 36, '青青币', 'qqb', 'cny', '0.50000000', 1000, '500.00000000', 8, '24', 1, 0, 1496504159, 1496504159, 0),
(20, 36, '青青币', 'qqb', 'cny', '1.00000000', 1000, '1000.00000000', 8, '24', 1, 0, 1496505618, 1496505618, 0),
(21, 36, '青青币', 'qqb', 'cny', '1.00000000', 100, '100.00000000', 8, '24', 1, 0, 1496505972, 1496505972, 0),
(22, 39, '汉家币', 'hjc', 'cny', '890.00000000', 80000000, '71200000000.00000000', 1, '0.1', 1, 0, 1498746053, 1498746053, 1),
(23, 39, '元东币', 'ydc', 'cny', '65.00000000', 80000000, '5200000000.00000000', 1, '0.1', 1, 0, 1498746613, 1498746613, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_link`
--

CREATE TABLE IF NOT EXISTS `btchanges_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='常用银行地址' AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `btchanges_link`
--

INSERT INTO `btchanges_link` (`id`, `name`, `title`, `url`, `img`, `mytx`, `remark`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 'boc', '中国银行', 'http://www.boc.cn/', 'img_56937003683ce.jpg', '', '', 0, 1452503043, 0, 1),
(2, 'abc', '农业银行', 'http://www.abchina.com/cn/', 'img_569370458b18d.jpg', '', '', 0, 1452503109, 0, 1),
(3, 'bccb', '北京银行', 'http://www.bankofbeijing.com.cn/', 'img_569370588dcdc.jpg', '', '', 0, 1452503128, 0, 1),
(4, 'ccb', '建设银行', 'http://www.ccb.com/', 'img_5693709bbd20f.jpg', '', '', 0, 1452503195, 0, 1),
(5, 'ceb', '光大银行', 'http://www.bankofbeijing.com.cn/', 'img_569370b207cc8.jpg', '', '', 0, 1452503218, 0, 1),
(6, 'cib', '兴业银行', 'http://www.cib.com.cn/cn/index.html', 'img_569370d29bf59.jpg', '', '', 0, 1452503250, 0, 1),
(7, 'citic', '中信银行', 'http://www.ecitic.com/', 'img_569370fb7a1b3.jpg', '', '', 0, 1452503291, 0, 1),
(8, 'cmb', '招商银行', 'http://www.cmbchina.com/', 'img_5693710a9ac9c.jpg', '', '', 0, 1452503306, 0, 1),
(9, 'cmbc', '民生银行', 'http://www.cmbchina.com/', 'img_5693711f97a9d.jpg', '', '', 0, 1452503327, 0, 1),
(10, '虚拟币信息中文网', '虚拟币信息中文网', 'http://www.chinabtcltc.com/', 'img_5693713076351.jpg', '', '', 0, 1452503344, 1480225439, 1),
(11, '巴比特论坛', '巴比特论坛', 'http://www.8btc.com/', 'img_56937154bebc5.jpg', '', '', 0, 1452503380, 1480225390, 1),
(12, 'F2Pool 挖矿鱼池', 'F2Pool 挖矿鱼池', 'https://www.f2pool.com/', 'img_56937162db7f5.jpg', '', '', 0, 1480225304, 1480225306, 1),
(13, '币行', '币行', 'https://www.okcoin.cn', 'img_5693717eefaa3.jpg', '', '', 0, 1452503422, 1480225269, 1),
(14, '比特时代', '比特时代', 'http://www.btc38.com/', 'img_5693718f1d70e.jpg', '', '', 0, 1452503439, 1480225238, 1),
(15, 'BTC123', 'BTC123', 'https://www.btc123.com', '56c2e4c9aff85.jpg', '', '', 0, 1455613129, 1480225206, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_log`
--

CREATE TABLE IF NOT EXISTS `btchanges_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` int(20) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `unlock` int(11) unsigned NOT NULL,
  `ci` int(11) unsigned NOT NULL,
  `recycle` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_market`
--

CREATE TABLE IF NOT EXISTS `btchanges_market` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `round` varchar(255) NOT NULL,
  `fee_buy` varchar(255) NOT NULL,
  `fee_sell` varchar(255) NOT NULL,
  `buy_min` varchar(255) NOT NULL,
  `buy_max` varchar(255) NOT NULL,
  `sell_min` varchar(255) NOT NULL,
  `sell_max` varchar(255) NOT NULL,
  `trade_min` varchar(255) NOT NULL,
  `trade_max` varchar(255) NOT NULL,
  `invit_buy` varchar(50) NOT NULL,
  `invit_sell` varchar(50) NOT NULL,
  `invit_1` varchar(50) NOT NULL,
  `invit_2` varchar(50) NOT NULL,
  `invit_3` varchar(50) NOT NULL,
  `zhang` varchar(255) NOT NULL,
  `die` varchar(255) NOT NULL,
  `hou_price` varchar(255) NOT NULL,
  `tendency` varchar(1000) NOT NULL,
  `trade` int(11) unsigned NOT NULL,
  `new_price` decimal(20,8) unsigned NOT NULL,
  `buy_price` decimal(20,8) unsigned NOT NULL,
  `sell_price` decimal(20,8) unsigned NOT NULL,
  `min_price` decimal(20,8) unsigned NOT NULL,
  `max_price` decimal(20,8) unsigned NOT NULL,
  `volume` decimal(20,8) unsigned NOT NULL,
  `change` decimal(20,8) NOT NULL,
  `api_min` decimal(20,8) unsigned NOT NULL,
  `api_max` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='行情配置表' AUTO_INCREMENT=19 ;

--
-- 转存表中的数据 `btchanges_market`
--

INSERT INTO `btchanges_market` (`id`, `name`, `round`, `fee_buy`, `fee_sell`, `buy_min`, `buy_max`, `sell_min`, `sell_max`, `trade_min`, `trade_max`, `invit_buy`, `invit_sell`, `invit_1`, `invit_2`, `invit_3`, `zhang`, `die`, `hou_price`, `tendency`, `trade`, `new_price`, `buy_price`, `sell_price`, `min_price`, `max_price`, `volume`, `change`, `api_min`, `api_max`, `sort`, `addtime`, `endtime`, `status`) VALUES
(16, 'hjc_cny', '3', '0', '0.5', '0.01', '1000000', '0.01', '1000000', '100', '1000000', '1', '1', '5', '10', '15', '10', '10', '', '', 1, '891.00000000', '0.00000000', '891.00000000', '891.00000000', '891.00000000', '1.00000000', '0.00000000', '0.00000000', '0.00000000', 0, 0, 0, 1),
(17, 'ydc_cny', '3', '0', '0.5', '0.01', '1000000', '0.01', '1000000', '100', '1000000', '1', '1', '5', '10', '15', '10', '10', '', '', 1, '66.00000000', '66.00000000', '0.00000000', '65.00000000', '66.00000000', '5200.00000000', '0.00000000', '0.00000000', '0.00000000', 0, 0, 0, 1),
(18, 'ltc_cny', '3', '0', '0.5', '0.01', '100000', '0.01', '100000', '100', '100000', '1', '1', '0', '0', '0', '', '', '', '', 1, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_market_json`
--

CREATE TABLE IF NOT EXISTS `btchanges_market_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `data` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=65 ;

--
-- 转存表中的数据 `btchanges_market_json`
--

INSERT INTO `btchanges_market_json` (`id`, `name`, `data`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(4, 'zc_cny', '', '', 0, 1670515199, 0, 0),
(9, 'zh_cny', '', '', 0, 5500799, 0, 0),
(13, 'zyc_cny', '["19283007.84470000","211336735.43218400","2113367.35432184","2113367.35432184"]', '', 0, 1475942399, 0, 0),
(14, 'dog_cny', '["1995868.70000000","203939.01376290","1019.69506881","1019.69506881"]', '', 0, 1475596799, 0, 0),
(15, 'zyc_cny', '["5100.00000000","50690.00000000","506.90000000","506.90000000"]', '', 0, 1476028799, 0, 0),
(16, 'dog_cny', '', '', 0, 1476028799, 0, 0),
(17, 'zyc_cny', '', '', 0, 1368287999, 0, 0),
(18, 'dog_cny', '["80545341.40000000","5557325.01092000","27786.62505460","27786.62505460"]', '', 0, 1475942399, 0, 0),
(19, 'bcg_cny', '["20000.00000000","200000.00000000","0.00000000","0.00000000"]', '', 0, 1477843199, 0, 0),
(20, 'bcg_cny', '', '', 0, 1478620799, 0, 0),
(23, 'dgc_cny', '["111.00000000","2.22000000","0.00000000","0.00000000"]', '', 0, 1477843199, 0, 0),
(24, 'ybc_cny', '["111.00000000","111.00000000","0.00000000","0.00000000"]', '', 0, 1477843199, 0, 0),
(27, 'dgc_cny', '', '', 0, 1478102399, 0, 0),
(28, 'ybc_cny', '', '', 0, 1478102399, 0, 0),
(31, 'ltc_cny', '["22.00000000","594.00000000","0.00000000","0.00000000"]', '', 0, 1477843199, 0, 0),
(34, 'ltc_cny', '', '', 0, 1192723199, 0, 0),
(43, 'thc_cny', '["30.00000000","3.00000000","0.00000000","0.00600000"]', '', 0, 1480521599, 0, 0),
(44, 'thc_cny', '', '', 0, 1487174399, 0, 0),
(52, 'fc_cny', '["800000.00000000","0.80000000","0.00000000","0.00800000"]', '', 0, 1486396799, 0, 0),
(53, 'btc_cny', '', '', 0, 1201881599, 0, 0),
(54, 'fc_cny', '["10000.00000000","0.02000000","0.00000000","0.00020000"]', '', 0, 1486483199, 0, 0),
(55, 'fc_cny', '["10000.00000000","0.01000000","0.00000000","0.00012330"]', '', 0, 1486569599, 0, 0),
(56, 'fc_cny', '["3200000.00000000","3.20000000","0.00000000","0.03945600"]', '', 0, 1486655999, 0, 0),
(57, 'fc_cny', '["12510000.00000000","12.51000000","0.00000000","0.15424830"]', '', 0, 1486742399, 0, 0),
(58, 'fc_cny', '["997668.21000000","0.99766821","0.00232456","0.01230125"]', '', 0, 1486828799, 0, 0),
(59, 'fc_cny', '', '', 0, 1196783999, 0, 0),
(60, 'qqb_cny', '', '', 0, 1496764799, 0, 0),
(61, 'hjc_cny', '["600.00000000","534750.00000000","0.00000000","2673.75000000"]', '', 0, 1498838399, 0, 0),
(62, 'hjc_cny', '', '', 0, 1499788799, 0, 0),
(63, 'ydc_cny', '["5200.00000000","338200.00000000","0.00000000","1691.00000000"]', '', 0, 1498838399, 0, 0),
(64, 'hjc_cny', '["1.00000000","891.00000000","0.00000000","4.45500000"]', '', 0, 1499702399, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_menu`
--

CREATE TABLE IF NOT EXISTS `btchanges_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '文档ID',
  `title` varchar(50) NOT NULL DEFAULT '' COMMENT '标题',
  `pid` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '上级分类ID',
  `sort` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '排序（同级有效）',
  `url` char(255) NOT NULL DEFAULT '' COMMENT '链接地址',
  `hide` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否隐藏',
  `tip` varchar(255) NOT NULL DEFAULT '' COMMENT '提示',
  `group` varchar(50) DEFAULT '' COMMENT '分组',
  `is_dev` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '是否仅开发者模式可见',
  `ico_name` varchar(50) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=450 ;

--
-- 转存表中的数据 `btchanges_menu`
--

INSERT INTO `btchanges_menu` (`id`, `title`, `pid`, `sort`, `url`, `hide`, `tip`, `group`, `is_dev`, `ico_name`) VALUES
(1, '系统', 0, 1, 'Index/index', 0, '', '', 0, 'home'),
(2, '内容', 0, 1, 'Article/index', 0, '', '', 0, 'list-alt'),
(3, '用户', 0, 1, 'User/index', 0, '', '', 0, 'user'),
(4, '财务', 0, 1, 'Finance/index', 0, '', '', 0, 'th-list'),
(5, '交易', 0, 1, 'Trade/index', 0, '', '', 0, 'stats'),
(6, '应用', 0, 1, 'Game/index', 0, '', '', 0, 'globe'),
(7, '设置', 0, 1, 'Config/index', 0, '', '', 0, 'cog'),
(8, '运营', 0, 1, 'Operate/index', 0, '', '', 0, 'share'),
(9, '工具', 0, 1, 'Tools/index', 0, '', '', 0, 'wrench'),
(10, '扩展', 0, 1, 'Cloud/index', 0, '', '', 0, 'tasks'),
(11, '系统概览', 1, 1, 'Index/index', 0, '', '系统', 0, 'home'),
(12, '市场统计', 1, 3, 'Index/market', 0, '', '系统', 0, 'home'),
(13, '文章管理', 2, 1, 'Article/index', 0, '', '内容', 0, 'list-alt'),
(14, '编辑添加', 13, 1, 'Article/edit', 1, '', '内容', 0, 'home'),
(15, '修改状态', 13, 100, 'Article/status', 1, '', '内容', 0, 'home'),
(16, '上传图片', 13, 2, 'Article/images', 1, '', '内容管理', 0, '0'),
(18, '编辑', 17, 2, 'Adver/edit', 1, '', '内容管理', 0, '0'),
(19, '修改', 17, 2, 'Adver/status', 1, '', '内容管理', 0, '0'),
(21, '编辑', 20, 3, 'Chat/edit', 1, '', '聊天管理', 0, '0'),
(22, '修改', 20, 3, 'Chat/status', 1, '', '聊天管理', 0, '0'),
(23, '提示文字', 2, 1, 'Text/index', 1, '', '提示管理', 0, 'exclamation-sign'),
(24, '编辑', 23, 1, 'Text/edit', 1, '', '提示管理', 0, '0'),
(25, '修改', 23, 1, 'Text/status', 1, '', '提示管理', 0, '0'),
(26, '用户管理', 3, 1, 'User/index', 0, '', '用户', 0, 'user'),
(32, '确认转出', 26, 8, 'User/myzc_qr', 1, '', '用户管理', 0, '0'),
(33, '用户配置', 3, 1, 'User/config', 1, '', '前台用户管理', 0, 'cog'),
(34, '编辑', 33, 2, 'User/index_edit', 1, '', '用户管理', 0, '0'),
(35, '修改', 33, 2, 'User/index_status', 1, '', '用户管理', 0, '0'),
(37, '财产修改', 26, 3, 'Usercoin/edit', 1, '', '用户管理', 0, '0'),
(39, '新增用户组', 38, 0, 'AuthManager/createGroup', 1, '', '权限管理', 0, '0'),
(40, '编辑用户组', 38, 0, 'AuthManager/editgroup', 1, '', '权限管理', 0, '0'),
(41, '更新用户组', 38, 0, 'AuthManager/writeGroup', 1, '', '权限管理', 0, '0'),
(42, '改变状态', 38, 0, 'AuthManager/changeStatus', 1, '', '权限管理', 0, '0'),
(43, '访问授权', 38, 0, 'AuthManager/access', 1, '', '权限管理', 0, '0'),
(44, '分类授权', 38, 0, 'AuthManager/category', 1, '', '权限管理', 0, '0'),
(45, '成员授权', 38, 0, 'AuthManager/user', 1, '', '权限管理', 0, '0'),
(46, '成员列表授权', 38, 0, 'AuthManager/tree', 1, '', '权限管理', 0, '0'),
(47, '用户组', 38, 0, 'AuthManager/group', 1, '', '权限管理', 0, '0'),
(48, '添加到用户组', 38, 0, 'AuthManager/addToGroup', 1, '', '权限管理', 0, '0'),
(49, '用户组移除', 38, 0, 'AuthManager/removeFromGroup', 1, '', '权限管理', 0, '0'),
(50, '分类添加到用户组', 38, 0, 'AuthManager/addToCategory', 1, '', '权限管理', 0, '0'),
(51, '模型添加到用户组', 38, 0, 'AuthManager/addToModel', 1, '', '权限管理', 0, '0'),
(53, '配置', 52, 1, 'Finance/config', 1, '', '', 0, '0'),
(55, '类型', 52, 1, 'Finance/type', 1, '', '', 0, '0'),
(56, '状态修改', 52, 1, 'Finance/type_status', 1, '', '', 0, '0'),
(60, '修改', 57, 3, 'Mycz/status', 1, '', '充值管理', 0, '0'),
(61, '状态修改', 57, 3, 'Mycztype/status', 1, '', '充值管理', 0, '0'),
(64, '状态修改', 62, 5, 'Mytx/status', 1, '', '提现管理', 0, '0'),
(65, '取消', 62, 5, 'Mytx/excel', 1, '', '提现管理', 0, '0'),
(66, '导入excel', 9, 5, 'Mytx/exportExcel', 1, '', '提现管理', 0, '0'),
(68, '委托管理', 5, 1, 'Trade/index', 0, '', '交易', 0, 'stats'),
(69, '成交记录', 5, 2, 'Trade/log', 0, '', '交易', 0, 'stats'),
(70, '修改状态', 68, 0, 'Trade/status', 1, '', '交易管理', 0, '0'),
(71, '撤销挂单', 68, 0, 'Trade/chexiao', 1, '', '交易管理', 0, '0'),
(74, '认购编辑', 72, 2, 'Issue/edit', 1, '', '认购管理', 0, '0'),
(75, '认购修改', 72, 2, 'Issue/status', 1, '', '认购管理', 0, '0'),
(79, '基本配置', 7, 1, 'Config/index', 0, '', '设置', 0, 'cog'),
(80, '短信配置', 7, 2, 'Config/moble', 0, '', '设置', 0, 'cog'),
(81, '客服配置', 7, 3, 'Config/contact', 0, '', '设置', 0, 'cog'),
(82, '银行配置', 79, 4, 'Config/bank', 0, '', '网站配置', 0, 'credit-card'),
(83, '编辑', 82, 4, 'Config/bank_edit', 1, '', '网站配置', 0, '0'),
(85, '编辑', 84, 4, 'Coin/edit', 0, '', '网站配置', 0, '0'),
(87, '状态修改', 84, 4, 'Coin/status', 1, '', '网站配置', 0, '0'),
(89, '编辑市场', 88, 4, 'Market/edit', 0, '', '', 0, '0'),
(91, '状态修改', 88, 4, 'Config/market_add', 1, '', '', 0, '0'),
(92, '图形验证码', 95, 7, 'Verify/code', 1, '', '网站配置', 0, '0'),
(93, '手机验证码', 95, 7, 'Verify/mobile', 1, '', '网站配置', 0, '0'),
(94, '邮件验证码', 95, 7, 'Verify/email', 1, '', '网站配置', 0, '0'),
(95, '其他配置', 7, 6, 'Config/qita', 0, '', '设置', 0, 'cog'),
(97, '推广配置', 8, 2, 'Invit/config', 1, '', '推广管理', 0, 'cog'),
(101, '其他模块调用', 9, 4, 'Tools/invoke', 1, '', '其他', 0, '0'),
(102, '优化表', 9, 4, 'Tools/optimize', 1, '', '其他', 0, '0'),
(103, '修复表', 9, 4, 'Tools/repair', 1, '', '其他', 0, '0'),
(104, '删除备份文件', 9, 4, 'Tools/del', 1, '', '其他', 0, '0'),
(105, '备份数据库', 9, 4, 'Tools/export', 1, '', '其他', 0, ''),
(106, '还原数据库', 9, 4, 'Tools/import', 1, '', '其他', 0, '0'),
(107, '导出数据库', 9, 4, 'Tools/excel', 1, '', '其他', 0, '0'),
(108, '导出Excel', 9, 4, 'Tools/exportExcel', 1, '', '其他', 0, '0'),
(109, '导入Excel', 9, 4, 'Tools/importExecl', 1, '', '其他', 0, '0'),
(115, '图片', 111, 0, 'Shop/images', 0, '', '云购商城', 0, '0'),
(116, '菜单管理', 7, 5, 'Menu/index', 1, '', '开发组', 0, 'list'),
(117, '排序', 116, 5, 'Menu/sort', 0, '', '开发组', 0, '0'),
(118, '添加', 116, 5, 'Menu/add', 0, '', '开发组', 0, '0'),
(119, '编辑', 116, 5, 'Menu/edit', 0, '', '开发组', 0, '0'),
(120, '删除', 116, 5, 'Menu/del', 0, '', '开发组', 0, '0'),
(121, '是否隐藏', 116, 5, 'Menu/toogleHide', 0, '', '开发组', 0, '0'),
(122, '是否开发', 116, 5, 'Menu/toogleDev', 0, '', '开发组', 0, '0'),
(123, '导入文件', 7, 5, 'Menu/importFile', 1, '', '开发组', 0, 'log-in'),
(124, '导入', 7, 5, 'Menu/import', 1, '', '开发组', 0, 'log-in'),
(127, '用户登录', 3, 0, 'Login/index', 1, '', '用户配置', 0, '0'),
(128, '用户退出', 3, 0, 'Login/loginout', 1, '', '用户配置', 0, '0'),
(129, '修改管理员密码', 3, 0, 'User/setpwd', 1, '', '用户', 0, 'home'),
(131, '用户详情', 3, 4, 'User/detail', 1, '', '前台用户管理', 0, 'time'),
(132, '后台用户详情', 3, 1, 'AdminUser/detail', 1, '', '后台用户管理', 0, 'th-list'),
(133, '后台用户状态', 3, 1, 'AdminUser/status', 1, '', '后台用户管理', 0, 'th-list'),
(134, '后台用户新增', 3, 1, 'AdminUser/add', 1, '', '后台用户管理', 0, 'th-list'),
(135, '后台用户编辑', 3, 1, 'AdminUser/edit', 1, '', '后台用户管理', 0, 'th-list'),
(138, '编辑', 2, 1, 'Articletype/edit', 1, '', '内容管理', 0, 'list-alt'),
(140, '编辑', 139, 2, 'Link/edit', 1, '', '内容管理', 0, '0'),
(141, '修改', 139, 2, 'Link/status', 1, '', '内容管理', 0, '0'),
(155, '服务器队列', 9, 3, 'Tools/queue', 0, '', '工具', 0, 'wrench'),
(156, '钱包检查', 9, 3, 'Tools/qianbao', 0, '', '工具', 0, 'wrench'),
(157, '币种统计', 1, 2, 'Index/coin', 0, '', '系统', 0, 'home'),
(163, '提示文字', 7, 5, 'Config/text', 0, '', '设置', 0, 'cog'),
(220, '币种评论', 5, 4, 'Trade/comment', 0, '', '交易', 0, 'stats'),
(278, '文章类型', 2, 2, 'Article/type', 0, '', '内容', 0, 'list-alt'),
(279, '广告管理', 2, 3, 'Article/adver', 0, '', '内容', 0, 'list-alt'),
(280, '友情链接', 2, 4, 'Article/link', 0, '', '内容', 0, 'list-alt'),
(282, '登陆日志', 3, 4, 'User/log', 0, '', '用户', 0, 'user'),
(283, '用户钱包', 3, 5, 'User/qianbao', 0, '', '用户', 0, 'user'),
(284, '提现地址', 3, 6, 'User/bank', 0, '', '用户', 0, 'user'),
(285, '用户财产', 3, 7, 'User/coin', 0, '', '用户', 0, 'user'),
(286, '联系地址', 3, 8, 'User/goods', 0, '', '用户', 0, 'user'),
(287, '交易聊天', 5, 3, 'Trade/chat', 0, '', '交易', 0, 'stats'),
(288, '交易市场', 5, 5, 'Trade/market', 0, '', '交易', 0, 'stats'),
(289, '交易推荐', 5, 6, 'Trade/invit', 0, '', '交易', 0, 'stats'),
(290, '财务明细', 4, 1, 'Finance/index', 0, '', '财务', 0, 'th-list'),
(291, '人民币充值', 4, 2, 'Finance/mycz', 0, '', '财务', 0, 'th-list'),
(292, '人民币充值方式', 4, 3, 'Finance/myczType', 0, '', '财务', 0, 'th-list'),
(293, '人民币提现', 4, 4, 'Finance/mytx', 0, '', '财务', 0, 'th-list'),
(294, '人民币提现配置', 4, 5, 'Finance/mytxConfig', 0, '', '财务', 0, 'th-list'),
(295, '虚拟币转入', 4, 6, 'Finance/myzr', 0, '', '财务', 0, 'th-list'),
(296, '虚拟币转出', 4, 7, 'Finance/myzc', 0, '', '财务', 0, 'th-list'),
(297, '修改状态', 291, 100, 'Finance/myczStatus', 1, '', '财务', 0, 'home'),
(298, '确认到账', 291, 100, 'Finance/myczQueren', 1, '', '财务', 0, 'home'),
(299, '编辑添加', 292, 1, 'Finance/myczTypeEdit', 1, '', '财务', 0, 'home'),
(300, '状态修改', 292, 2, 'Finance/myczTypeStatus', 1, '', '财务', 0, 'home'),
(301, '上传图片', 292, 2, 'Finance/myczTypeImage', 1, '', '财务', 0, 'home'),
(302, '修改状态', 293, 2, 'Finance/mytxStatus', 1, '', '财务', 0, 'home'),
(303, '导出选中', 293, 3, 'Finance/mytxExcel', 1, '', '财务', 0, 'home'),
(304, '正在处理', 293, 4, 'Finance/mytxChuli', 1, '', '财务', 0, 'home'),
(305, '撤销提现', 293, 5, 'Finance/mytxChexiao', 1, '', '财务', 0, 'home'),
(306, '确认提现', 293, 6, 'Finance/mytxQueren', 1, '', '财务', 0, 'home'),
(307, '确认转出', 296, 6, 'Finance/myzcQueren', 1, '', '财务', 0, 'home'),
(309, '清理缓存', 9, 1, 'Tools/index', 0, '', '工具', 0, 'wrench'),
(310, '备份数据库', 9, 2, 'Tools/dataExport', 0, '', '工具', 0, 'wrench'),
(311, '还原数据库', 9, 2, 'Tools/dataImport', 0, '', '工具', 0, 'wrench'),
(312, '管理员管理', 3, 2, 'User/admin', 0, '', '用户', 0, 'user'),
(313, '权限列表', 3, 3, 'User/auth', 0, '', '用户', 0, 'user'),
(314, '编辑添加', 26, 1, 'User/edit', 1, '', '用户', 0, 'home'),
(315, '修改状态', 26, 1, 'User/status', 1, '', '用户', 0, 'home'),
(316, '编辑添加', 312, 1, 'User/adminEdit', 1, '', '用户', 0, 'home'),
(317, '修改状态', 312, 1, 'User/adminStatus', 1, '', '用户', 0, 'home'),
(318, '编辑添加', 313, 1, 'User/authEdit', 1, '', '用户', 0, 'home'),
(319, '修改状态', 313, 1, 'User/authStatus', 1, '', '用户', 0, 'home'),
(320, '重新初始化权限', 313, 1, 'User/authStart', 1, '', '用户', 0, 'home'),
(321, '编辑添加', 282, 1, 'User/logEdit', 1, '', '用户', 0, 'home'),
(322, '修改状态', 282, 1, 'User/logStatus', 1, '', '用户', 0, 'home'),
(323, '编辑添加', 283, 1, 'User/qianbaoEdit', 1, '', '用户', 0, 'home'),
(324, '修改状态', 283, 1, 'User/qianbaoStatus', 1, '', '用户', 0, 'home'),
(325, '编辑添加', 284, 1, 'User/bankEdit', 1, '', '用户', 0, 'home'),
(326, '修改状态', 284, 1, 'User/bankStatus', 1, '', '用户', 0, 'home'),
(327, '编辑添加', 285, 1, 'User/coinEdit', 1, '', '用户', 0, 'home'),
(328, '财产统计', 285, 1, 'User/coinLog', 1, '', '用户', 0, 'home'),
(329, '编辑添加', 286, 1, 'User/goodsEdit', 1, '', '用户', 0, 'home'),
(330, '修改状态', 286, 1, 'User/goodsStatus', 1, '', '用户', 0, 'home'),
(331, '编辑添加', 278, 1, 'Article/typeEdit', 1, '', '内容', 0, 'home'),
(332, '修改状态', 278, 100, 'Article/typeStatus', 1, '', '内容', 0, 'home'),
(333, '编辑添加', 280, 1, 'Article/linkEdit', 1, '', '内容', 0, 'home'),
(334, '修改状态', 280, 100, 'Article/linkStatus', 1, '', '内容', 0, 'home'),
(335, '编辑添加', 279, 1, 'Article/adverEdit', 1, '', '内容', 0, 'home'),
(336, '修改状态', 279, 100, 'Article/adverStatus', 1, '', '内容', 0, 'home'),
(337, '上传图片', 279, 100, 'Article/adverImage', 1, '', '内容', 0, 'home'),
(375, '客服代码', 10, 5, 'Cloud/kefu', 0, '', '扩展', 0, 'tasks'),
(376, '使用', 375, 5, 'Cloud/kefuUp', 0, '', '扩展', 0, 'tasks'),
(377, '访问授权', 313, 1, 'User/authAccess', 1, '', '用户', 0, 'home'),
(378, '访问授权修改', 313, 1, 'User/authAccessUp', 1, '', '用户', 0, 'home'),
(379, '成员授权', 313, 1, 'User/authUser', 1, '', '用户', 0, 'home'),
(380, '成员授权增加', 313, 1, 'User/authUserAdd', 1, '', '用户', 0, 'home'),
(381, '成员授权解除', 313, 1, 'User/authUserRemove', 1, '', '用户', 0, 'home'),
(382, '币种配置', 7, 4, 'Config/coin', 0, '', '设置', 0, 'cog'),
(383, '推广奖励', 8, 1, 'Operate/index', 0, '', '运营', 0, 'share'),
(384, 'APP配置', 8, 1, 'App/config', 0, '', 'APP管理', 0, 'time'),
(385, 'APP等级', 8, 2, 'App/vip_config_list', 0, '', 'APP管理', 0, 'time'),
(386, 'APP广告板块', 8, 3, 'App/adsblock_list', 0, '', 'APP管理', 0, 'time'),
(387, 'APP广告用户', 8, 4, 'App/ads_user', 0, '', 'APP管理', 0, 'time'),
(388, '导航配置', 7, 7, 'Config/daohang', 0, '', '设置', 0, 'cog'),
(418, '主题模板', 10, 4, 'Cloud/theme', 0, '', '扩展', 0, 'tasks'),
(425, '商品管理', 6, 1, 'Shop/index', 0, '', '商城管理', 0, 'globe'),
(426, '商城配置', 6, 2, 'Shop/config', 0, '', '商城管理', 0, 'globe'),
(427, '商品类型', 6, 3, 'Shop/type', 0, '', '商城管理', 0, 'globe'),
(428, '付款方式', 6, 4, 'Shop/coin', 0, '', '商城管理', 0, 'globe'),
(429, '购物记录', 6, 5, 'Shop/log', 0, '', '商城管理', 0, 'globe'),
(430, '收货地址', 6, 6, 'Shop/goods', 0, '', '商城管理', 0, 'globe'),
(433, '分红管理', 6, 3, 'Fenhong/index', 0, '', '分红管理', 0, 'globe'),
(434, '分红记录', 6, 5, 'Fenhong/log', 0, '', '分红管理', 0, 'globe'),
(435, '充值记录', 6, 1, 'Huafei/index', 0, '', '话费充值', 0, 'globe'),
(436, '充值配置', 6, 1, 'Huafei/config', 0, '', '话费充值', 0, 'globe'),
(437, '充值金额', 6, 3, 'Huafei/type', 0, '', '话费充值', 0, 'globe'),
(438, '付款方式', 6, 4, 'Huafei/coin', 0, '', '话费充值', 0, 'globe'),
(439, '投票记录', 6, 1, 'Vote/index', 0, '', '新币投票', 0, 'globe'),
(440, '投票类型', 6, 1, 'Vote/type', 0, '', '新币投票', 0, 'globe'),
(441, '理财管理', 6, 1, 'Money/index', 0, '', '理财管理', 0, 'globe'),
(442, '理财日志', 6, 2, 'Money/log', 0, '', '理财管理', 0, 'globe'),
(443, '理财明细', 6, 3, 'Money/fee', 0, '', '理财管理', 0, 'globe'),
(448, '认购管理', 6, 1, 'Issue/index', 0, '', '认购管理', 0, 'globe'),
(449, '认购记录', 6, 1, 'Issue/log', 0, '', '认购管理', 0, 'globe');

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_message`
--

CREATE TABLE IF NOT EXISTS `btchanges_message` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_message_log`
--

CREATE TABLE IF NOT EXISTS `btchanges_message_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_money`
--

CREATE TABLE IF NOT EXISTS `btchanges_money` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `num` bigint(20) unsigned NOT NULL DEFAULT '0',
  `deal` int(11) unsigned NOT NULL DEFAULT '0',
  `tian` int(11) unsigned NOT NULL,
  `fee` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='投资理财表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_money_fee`
--

CREATE TABLE IF NOT EXISTS `btchanges_money_fee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `money_id` int(11) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `num` int(6) NOT NULL,
  `content` varchar(255) NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_money_log`
--

CREATE TABLE IF NOT EXISTS `btchanges_money_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `feea` decimal(20,8) unsigned NOT NULL,
  `tian` int(11) unsigned NOT NULL,
  `tiana` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  `money_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='理财记录表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_mycz`
--

CREATE TABLE IF NOT EXISTS `btchanges_mycz` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `mum` int(11) unsigned NOT NULL,
  `type` varchar(50) NOT NULL,
  `tradeno` varchar(50) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='充值记录表' AUTO_INCREMENT=63 ;

--
-- 转存表中的数据 `btchanges_mycz`
--

INSERT INTO `btchanges_mycz` (`id`, `userid`, `num`, `mum`, `type`, `tradeno`, `remark`, `sort`, `addtime`, `endtime`, `status`) VALUES
(21, 1, 1, 1, 'weixin', 'HK152985', '', 0, 1486352856, 1486352889, 2),
(22, 1, 1, 1, 'alipay', 'JK617581', '', 0, 1486353431, 1486353716, 2),
(23, 1, 9999, 9999, 'weixin', 'CH437483', '', 0, 1486354243, 1486354258, 2),
(24, 2, 1000, 1000, 'alipay', 'HP149122', '', 0, 1486357829, 1486357838, 2),
(25, 4, 10, 10, 'alipay', 'EM771575', '', 0, 1486382653, 1486382685, 2),
(26, 5, 10, 10, 'weixin', 'UX539438', '', 0, 1486384242, 1486384410, 2),
(28, 13, 10, 10, 'alipay', 'HS653491', '', 0, 1486537998, 1486538649, 2),
(31, 17, 10, 10, 'weixin', 'TR173789', '', 0, 1486571137, 1486571458, 2),
(32, 1, 1, 1, 'weixin', 'VU341688', '', 0, 1486571255, 1486571438, 2),
(41, 19, 5, 5, 'weixin', 'PD337983', '', 0, 1486725182, 1486725411, 2),
(42, 24, 1, 1, 'weixin', 'SZ723931', '', 0, 1486727957, 1486728166, 2),
(43, 19, 2, 2, 'weixin', 'EA354576', '', 0, 1486728028, 1486728109, 2),
(44, 24, 1, 1, 'alipay', 'FN487386', '', 0, 1486735852, 1486744501, 2),
(45, 23, 1, 0, 'weixin', 'UY475673', '', 0, 1487925315, 0, 0),
(46, 23, 1, 1, 'alipay', 'NY621258', '', 0, 1487925492, 1496522358, 2),
(47, 34, 100, 100, 'alipay', 'JC784321', '', 0, 1489824737, 1496522352, 2),
(48, 35, 12222, 12222, 'alipay', 'GB262163', '', 0, 1492011443, 1492011485, 2),
(49, 35, 12222, 12222, 'alipay', 'HR877555', '', 0, 1492011464, 1492011483, 2),
(50, 36, 5000, 5000, 'weixin', 'JH687159', '', 0, 1496499004, 1496499084, 2),
(51, 38, 100, 100, 'alipay', 'GD696436', '', 0, 1496521264, 1496522363, 2),
(52, 38, 100, 0, 'weixin', 'YF746269', '', 0, 1496522279, 0, 3),
(53, 38, 100, 0, 'alipay', 'AI652317', '', 0, 1496522406, 0, 0),
(54, 38, 100, 0, 'weixin', 'XZ387251', '', 0, 1496522441, 0, 0),
(55, 38, 100, 0, 'weixin', 'RA496627', '', 0, 1496522520, 0, 0),
(56, 38, 100, 0, 'weixin', 'TU294585', '', 0, 1496522628, 0, 0),
(57, 40, 1111, 0, 'alipay', 'AD733154', '', 0, 1499568546, 0, 0),
(58, 40, 1111, 0, 'weixin', 'MT655867', '', 0, 1499568558, 0, 0),
(59, 42, 100, 0, 'alipay', 'BV684953', '', 0, 1500358615, 0, 0),
(60, 42, 100, 0, 'weixin', 'RA334921', '', 0, 1500358654, 0, 0),
(61, 42, 100, 0, 'weixin', 'HU895248', '', 0, 1500358654, 0, 0),
(62, 44, 800, 0, 'alipay', 'XV292984', '', 0, 1502243493, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_mycz_invit`
--

CREATE TABLE IF NOT EXISTS `btchanges_mycz_invit` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `userid` int(11) unsigned NOT NULL COMMENT '用户id',
  `invitid` int(11) unsigned NOT NULL COMMENT '推荐人id',
  `num` decimal(20,2) unsigned NOT NULL COMMENT '操作金额',
  `fee` decimal(20,8) unsigned NOT NULL COMMENT '赠送金额',
  `coinname` varchar(50) NOT NULL COMMENT '赠送币种',
  `mum` decimal(20,8) unsigned NOT NULL COMMENT '到账金额',
  `remark` varchar(250) NOT NULL COMMENT '备注',
  `sort` int(11) unsigned NOT NULL COMMENT '排序',
  `addtime` int(11) unsigned NOT NULL COMMENT '添加时间',
  `endtime` int(11) unsigned NOT NULL COMMENT '编辑时间',
  `status` tinyint(4) NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充值赠送' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_mycz_type`
--

CREATE TABLE IF NOT EXISTS `btchanges_mycz_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `max` varchar(200) NOT NULL COMMENT '名称',
  `min` varchar(200) NOT NULL COMMENT '名称',
  `kaihu` varchar(200) NOT NULL COMMENT '名称',
  `truename` varchar(200) NOT NULL COMMENT '名称',
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `img` varchar(50) NOT NULL,
  `extra` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='充值类型' AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `btchanges_mycz_type`
--

INSERT INTO `btchanges_mycz_type` (`id`, `max`, `min`, `kaihu`, `truename`, `name`, `title`, `url`, `username`, `password`, `img`, `extra`, `remark`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, '100000', '1', '', '支付宝', 'alipay', '支付宝转账支付', '', '填写您的支付宝收款帐号', '', '59331f5229fba.jpg', '', '需要在联系方式里面设置支付宝账号', 0, 0, 0, 1),
(2, '10000', '1', '', '腾讯微信支付', 'weixin', '微信转账支付', '', '填写您的微信收款帐号', '', '59331f634f54f.jpg', '', '需要在联系方式里面设置微信账号', 0, 0, 0, 1),
(3, '10000', '100', '', '', 'bank', '网银转账支付', '', '', '', '57de3a186ea05.jpg', '', '需要在联系方式里面按照格式天数收款银行账号', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_mytx`
--

CREATE TABLE IF NOT EXISTS `btchanges_mytx` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `fee` decimal(20,2) unsigned NOT NULL,
  `mum` decimal(20,2) unsigned NOT NULL,
  `truename` varchar(32) NOT NULL,
  `name` varchar(32) NOT NULL,
  `bank` varchar(250) NOT NULL,
  `bankprov` varchar(50) NOT NULL,
  `bankcity` varchar(50) NOT NULL,
  `bankaddr` varchar(50) NOT NULL,
  `bankcard` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='提现记录表' AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `btchanges_mytx`
--

INSERT INTO `btchanges_mytx` (`id`, `userid`, `num`, `fee`, `mum`, `truename`, `name`, `bank`, `bankprov`, `bankcity`, `bankaddr`, `bankcard`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 1, 100, '2.33', '97.67', '谷嘉伟', 'test', '农业银行', '测试', '测试', 'test', '13736491494', 0, 1486358183, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_myzc`
--

CREATE TABLE IF NOT EXISTS `btchanges_myzc` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `txid` varchar(200) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`),
  KEY `coinname` (`coinname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `btchanges_myzc`
--

INSERT INTO `btchanges_myzc` (`id`, `userid`, `username`, `coinname`, `txid`, `num`, `fee`, `mum`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 17, ' FbdmnAiA5uCQg5NhHvotCQrHb2iUGYAVr2', 'fc', '', '1000000.00000000', '12330.00000000', '987670.00000000', 0, 1486810636, 0, 0),
(2, 17, 'Fi3MuqYSiZhLDPNND6VDM1HjbY6TsW3BeD', 'fc', '6d88a93aa2cdb9f544ff3701ed956775', '1000000.00000000', '12330.00000000', '987670.00000000', 0, 1486816088, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_myzc_fee`
--

CREATE TABLE IF NOT EXISTS `btchanges_myzc_fee` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `coinname` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `txid` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `fee` decimal(20,8) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `btchanges_myzc_fee`
--

INSERT INTO `btchanges_myzc_fee` (`id`, `userid`, `username`, `coinname`, `txid`, `type`, `fee`, `num`, `mum`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 102, '', 'fc', 'd86a16e040aab3f381891b747060ac58', '1', '12330.00000000', '1000000.00000000', '987670.00000000', 0, 1486816088, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_myzr`
--

CREATE TABLE IF NOT EXISTS `btchanges_myzr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `username` varchar(200) NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `txid` varchar(200) NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;

--
-- 转存表中的数据 `btchanges_myzr`
--

INSERT INTO `btchanges_myzr` (`id`, `userid`, `username`, `coinname`, `txid`, `num`, `mum`, `fee`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 1, 'FXRhjgyU6g8TkeDSnRpNsDsQPJWFutLi5S', 'fc', '80f84b9d3518a1d4be8d9eb24498cb6c20dba94a7e5707be7938ee641eae0dc6', '1000000.00000000', '1000100.00000000', '100.00000000', 0, 1486644995, 0, 1),
(2, 8, 'FZhAGwsw691sG24XFuXafAFbPR7vZkhgtX', 'fc', '8c5439b20c77e4e1f6a938284c3420fe481f6c14552df8cf985fd18ac4026aba', '50000000.00000000', '50005000.00000000', '5000.00000000', 0, 1486692159, 0, 1),
(3, 8, 'FZhAGwsw691sG24XFuXafAFbPR7vZkhgtX', 'fc', '9729a9446eb54843e0b97e3bdd73db659d9c9f382181776f343178c13c100025', '50000000.00000000', '50005000.00000000', '5000.00000000', 0, 1486692219, 0, 1),
(4, 8, 'FZhAGwsw691sG24XFuXafAFbPR7vZkhgtX', 'fc', 'fc083ddc862e0f9936628e49439b8cd05ae7e358717048fb60d40e7d11c90331', '50000000.00000000', '50005000.00000000', '5000.00000000', 0, 1486692699, 0, 1),
(5, 8, 'FZhAGwsw691sG24XFuXafAFbPR7vZkhgtX', 'fc', '54e9670f9192d76302da13946c497dd6af93e36f54775a7c8cbf82b060fce519', '50000000.00000000', '50005000.00000000', '5000.00000000', 0, 1486692699, 0, 1),
(6, 8, 'FZhAGwsw691sG24XFuXafAFbPR7vZkhgtX', 'fc', '95d0d2d73528236a077a274a0636fb7b6c7104a742fe9332ffc4a92e068f1b6d', '50000000.00000000', '50005000.00000000', '5000.00000000', 0, 1486692819, 0, 1),
(7, 8, 'FZhAGwsw691sG24XFuXafAFbPR7vZkhgtX', 'fc', '621e8a270cf6af8d5e73c6628afe7ca5397f979665716a9eb53ca66a2c300ccf', '50000000.00000000', '50005000.00000000', '5000.00000000', 0, 1486693059, 0, 1),
(8, 8, 'FZhAGwsw691sG24XFuXafAFbPR7vZkhgtX', 'fc', 'ca7e9ea8e77358f6b54baf6a94bd140129c1f748cf435dc037fb6dc219d2ce84', '50000000.00000000', '50005000.00000000', '5000.00000000', 0, 1486693240, 0, 1),
(9, 19, 'Fi3MuqYSiZhLDPNND6VDM1HjbY6TsW3BeD', 'fc', '3dfd493069343ff05db3885a2f39c35e82a72b1c1624c85799f0bc6944467508', '400000.00000000', '400040.00000000', '40.00000000', 0, 1486694499, 0, 1),
(10, 19, 'Fi3MuqYSiZhLDPNND6VDM1HjbY6TsW3BeD', 'fc', 'cfdb46d3e8066f7d4f118e49713615dbf8b3e0a46f8042637d683eb5c698fb2a', '26175.98000000', '26178.59759800', '2.61759800', 0, 1486695460, 0, 1),
(11, 17, 'FtJVoFtCoEygjKkGR5QtzwM5mDHBXDtQh1', 'fc', '61e031a2384023a34d0dbf8e6a779959988094efa6cb6d4a52cff136bbc440de', '1000000.00000000', '1000100.00000000', '100.00000000', 0, 1486698820, 0, 1),
(12, 17, 'FtJVoFtCoEygjKkGR5QtzwM5mDHBXDtQh1', 'fc', '28419bb52ad3217025cdd76ab0e05b61f833b9f3875eeb0aae01b29ebf434d9d', '40000000.00000000', '40004000.00000000', '4000.00000000', 0, 1486699060, 0, 1),
(13, 19, 'Fi3MuqYSiZhLDPNND6VDM1HjbY6TsW3BeD', 'fc', '80907fb94f9d9453b15b78c6562a9bb9250002e075e5a2ad996767256a381db2', '106543.99000000', '106554.64439900', '10.65439900', 0, 1486700680, 0, 1),
(14, 19, 'Fi3MuqYSiZhLDPNND6VDM1HjbY6TsW3BeD', 'fc', '176b2b142393bcaf060d7e9fdd9f02e818d0400ef8d88147bda96b430db9f539', '0.95899900', '0.95909490', '0.00009590', 0, 1486702600, 0, 1),
(15, 19, 'Fi3MuqYSiZhLDPNND6VDM1HjbY6TsW3BeD', 'fc', '26048759f8d9a250af9e051b01fdaddea2d132137b07bdfeebe30bae67a52fca', '1000.00000000', '1000.10000000', '0.10000000', 0, 1486702960, 0, 1),
(16, 19, 'Fi3MuqYSiZhLDPNND6VDM1HjbY6TsW3BeD', 'fc', 'e446de17c3fa1c62bd06681c741e3eef49da9f51bd3fbc9a23103331ddd2af9e', '1995.99000000', '1996.18959900', '0.19959900', 0, 1486702960, 0, 1),
(17, 1, 'FXRhjgyU6g8TkeDSnRpNsDsQPJWFutLi5S', 'fc', '928cb4f3e08f1cc9e60bb9ca711d8f8bb1737c8f5aac5462df03a220aebd187e', '80000000.00000000', '80008000.00000000', '8000.00000000', 0, 1486705960, 0, 1),
(18, 21, 'FcLAppK2ZdLz5LbgHo8VZD19vsreUfFy7t', 'fc', '7cc6e029915ee3c2e4c32d4c203ecbb41762c58bb9a3f66d64f67fe273436293', '65524559.01000000', '65531111.46590100', '6552.45590100', 0, 1486707100, 0, 1),
(19, 19, 'Fi3MuqYSiZhLDPNND6VDM1HjbY6TsW3BeD', 'fc', 'd5f32a73777a04c5d1a8cbd3737db4e0d3eadc0299e7f26c3ba9356fdcef684d', '106539.99000000', '106550.64399900', '10.65399900', 0, 1486712321, 0, 1),
(20, 21, 'FcLAppK2ZdLz5LbgHo8VZD19vsreUfFy7t', 'fc', 'adb49740d21d7a976690c0b0ebbd6dd8f422e15c68d9c360a35520ca3bc12ac3', '46453183.00000000', '46457828.31830000', '4645.31830000', 0, 1486722342, 0, 1),
(21, 23, 'FbdmnAiA5uCQg5NhHvotCQrHb2iUGYAVr2', 'fc', 'dc153b10ac6926e8467925c38033b57a91fb9692e909994e7b428e70ef03e273', '1000000.00000000', '1000100.00000000', '100.00000000', 0, 1486722402, 0, 1),
(22, 19, 'Fi3MuqYSiZhLDPNND6VDM1HjbY6TsW3BeD', 'fc', '986c65af425c9273d4680ce6c4769c8557b3d65315ca8110b04e55023c1f5de7', '3.99000000', '3.99039900', '0.00039900', 0, 1486723662, 0, 1),
(23, 19, 'Fi3MuqYSiZhLDPNND6VDM1HjbY6TsW3BeD', 'fc', 'ca5531ac2d92c7388b3742eb433239a09b26e13cadd437d6eaa7810c87067fe5', '745800.00000000', '745874.58000000', '74.58000000', 0, 1486724382, 0, 1),
(24, 19, 'Fi3MuqYSiZhLDPNND6VDM1HjbY6TsW3BeD', 'fc', 'b1d5f540346cb2d619bd2f885b9bef9fc954ac6b8b55d92b24d1ffe473c1213d', '639271.99000000', '639335.91719900', '63.92719900', 0, 1486732122, 0, 1),
(25, 25, 'FoiaUW73kZX9U4BQqmT7XhBz9pcHqzELHu', 'fc', '81ac3e638d8bd34ded760eaa377ca598ce6f3b05116aa495c2ffbf176024493c', '0.00100000', '0.00100010', '0.00000010', 0, 1486800538, 0, 1),
(26, 25, 'FoiaUW73kZX9U4BQqmT7XhBz9pcHqzELHu', 'fc', '5461c96077c2c7ab69d318848d365b840bd585e17f15d9b92ef02d3f1c933907', '0.00200000', '0.00200020', '0.00000020', 0, 1486800718, 0, 1),
(27, 25, 'FoiaUW73kZX9U4BQqmT7XhBz9pcHqzELHu', 'fc', '5578c5fea343b5c0b9ccf9206b80e7697d8c4155c63fe3df2307067427e5811d', '150000.00000000', '150015.00000000', '15.00000000', 0, 1486802219, 0, 1),
(28, 23, 'FbdmnAiA5uCQg5NhHvotCQrHb2iUGYAVr2', 'fc', '696d4edfc4e3e611bf0021f4427fe4cdac61db81610d38abd5f36d77ee11ac9c', '10000.00000000', '10001.00000000', '1.00000000', 0, 1486809908, 0, 1),
(29, 23, 'FbdmnAiA5uCQg5NhHvotCQrHb2iUGYAVr2', 'fc', '24b6d2ad38f7064164e1f1061e99acc5842a76e7528f1b71c059cbbb8187bb02', '0.01000000', '0.01000100', '0.00000100', 0, 1486809908, 0, 1),
(30, 23, 'FbdmnAiA5uCQg5NhHvotCQrHb2iUGYAVr2', 'fc', '3770f4fca53a919f1aa15e65a8fa15e3357617c2e4caca2bbe2c65e783d5492a', '100000.00000000', '100010.00000000', '10.00000000', 0, 1486809908, 0, 1),
(31, 23, 'FbdmnAiA5uCQg5NhHvotCQrHb2iUGYAVr2', 'fc', '79a8065f1a6ccc362193769e57d5aadb145b3423867aaa9f09bdd2d4b9da3e8a', '10000.00000000', '10001.00000000', '1.00000000', 0, 1486809908, 0, 1),
(32, 23, 'FbdmnAiA5uCQg5NhHvotCQrHb2iUGYAVr2', 'fc', 'fef1f9186fdc29acea268d116277bcaae8f42383c797b32c3e21cb653e68ee64', '106544.00000000', '106554.65440000', '10.65440000', 0, 1486809968, 0, 1),
(33, 23, 'FbdmnAiA5uCQg5NhHvotCQrHb2iUGYAVr2', 'fc', '75d476ad0b2e1ad387ee6cf75bfa59733df9fef53b3dac77cfde9f4b7485fb1a', '93087.00000000', '93096.30870000', '9.30870000', 0, 1486809968, 0, 1),
(34, 17, 'FtJVoFtCoEygjKkGR5QtzwM5mDHBXDtQh1', 'fc', '1bfcf6cbef57e02da353e911176ea2dd202a233a229c0fe665ca5862b98f9bb6', '60000000.00000000', '60006000.00000000', '6000.00000000', 0, 1486810449, 0, 1),
(35, 12, 'FewPPSgDxMm9jwrFpYBtiueUz433nGvnE5', 'fc', 'be1c8c2a0e0a090fcc0b5cdce22b8b407fdb9c1f40d2473a3a0e2f0644e440dd', '60000000.00000000', '60006000.00000000', '6000.00000000', 0, 1486811350, 0, 1),
(36, 19, 'FtJVoFtCoEygjKkGR5QtzwM5mDHBXDtQh1', 'fc', '5bfd3a429e4bc5b12fef8e7af1d6e032', '1000000.00000000', '987670.00000000', '12330.00000000', 0, 1486816088, 0, 1),
(37, 5, 'FhLXNbphGbLjNfRMmmA74WuWhx76bHn8Yf', 'fc', '444ed711a8cddce3a4e33dc6943ef8cec05cd1829be42d6a9128336c7e40f89f', '10000.00000000', '10001.00000000', '1.00000000', 0, 1486816394, 0, 1),
(38, 5, 'FhLXNbphGbLjNfRMmmA74WuWhx76bHn8Yf', 'fc', '14da76ad49fe2fa42223b28c9cf22c3abff6c1d9fe4ac2fc4166ffc2698e8980', '90000000.00000000', '90009000.00000000', '9000.00000000', 0, 1486816453, 0, 1),
(39, 5, 'FhLXNbphGbLjNfRMmmA74WuWhx76bHn8Yf', 'fc', '6095e0d4571982325c8e8304b66879d65d4b04ab56f16538b73a88dd3b655126', '90000000.00000000', '90009000.00000000', '9000.00000000', 0, 1486816814, 0, 1),
(40, 5, 'FhLXNbphGbLjNfRMmmA74WuWhx76bHn8Yf', 'fc', '1a75310983b350fec7ece14ba3a96584f67a6c22b5d77443bcd2bd47433390d9', '90000000.00000000', '90009000.00000000', '9000.00000000', 0, 1486816814, 0, 1),
(41, 5, 'FhLXNbphGbLjNfRMmmA74WuWhx76bHn8Yf', 'fc', '5cf2c1dcd16d98a534db1015d22756fd5904d9f70b96d3b3a1f3e5391dea2361', '49425691.00000000', '49430633.56910000', '4942.56910000', 0, 1486816873, 0, 1),
(42, 8, 'FZhAGwsw691sG24XFuXafAFbPR7vZkhgtX', 'fc', '62f4a359c8fbe912ba01c487096a60f49340bb3eae171f84113f1b26db508b42', '50000000.00000000', '50005000.00000000', '5000.00000000', 0, 1486869577, 0, 1),
(43, 7, 'FeXRB3FYDRPrQqd58QKkzuoVAahw8RAFvf', 'fc', 'eca104617eec3c9fd1ac90ecb71dc06d46eac85368b91b414c9c1a4ea5831789', '1000.00000000', '1000.10000000', '0.10000000', 0, 1487001184, 0, 1),
(44, 7, 'FeXRB3FYDRPrQqd58QKkzuoVAahw8RAFvf', 'fc', '2f255983f069948a28d0fe1bd311e1565bf7ea810d6a89c6e38f2ad75c06f2ec', '25000000.00000000', '25002500.00000000', '2500.00000000', 0, 1487001484, 0, 1),
(45, 12, 'FewPPSgDxMm9jwrFpYBtiueUz433nGvnE5', 'fc', '906cdc072458638325e81ff6ddbd7054a6da0ac06d4eb4b510c3c5f1c0329479', '48842080.00000000', '48846964.20800000', '4884.20800000', 0, 1487042827, 0, 1),
(46, 25, 'FoiaUW73kZX9U4BQqmT7XhBz9pcHqzELHu', 'fc', 'bc79059dfa4850fa81252c071eb94e5fb1d03cb3a08c4b79f8829e08ef07eb8a', '2000000.00000000', '2000200.00000000', '200.00000000', 0, 1487387013, 0, 1),
(47, 21, 'FcLAppK2ZdLz5LbgHo8VZD19vsreUfFy7t', 'fc', '96a95c592de0fa7d2bd0c38a602461db958e1c377dbbf57f5a3a984671f91282', '90000000.00000000', '90009000.00000000', '9000.00000000', 0, 1487463039, 0, 1),
(48, 21, 'FcLAppK2ZdLz5LbgHo8VZD19vsreUfFy7t', 'fc', '4223cc03cedc6b50cb993433ce5a7c1fe506c4a3e3ab908d66f7cf67235c5179', '90000000.00000000', '90009000.00000000', '9000.00000000', 0, 1487463039, 0, 1),
(49, 21, 'FcLAppK2ZdLz5LbgHo8VZD19vsreUfFy7t', 'fc', '4c0d513496c926adc1d859eb2c5041bb71c50cf7a73085c417ec0a9d21753f00', '90000000.00000000', '90009000.00000000', '9000.00000000', 0, 1487463220, 0, 1),
(50, 21, 'FcLAppK2ZdLz5LbgHo8VZD19vsreUfFy7t', 'fc', '903974aaf6fda24dc6fd75d9e65c84d6bdd7940790a904e879c60e7c7dd68ea7', '90000000.00000000', '90009000.00000000', '9000.00000000', 0, 1487463159, 0, 1),
(51, 21, 'FcLAppK2ZdLz5LbgHo8VZD19vsreUfFy7t', 'fc', '56a8500dacd1e78a06325211a471da1a9df8aa21b1a8a787ca5e751a1a15e844', '90000000.00000000', '90009000.00000000', '9000.00000000', 0, 1487463279, 0, 1),
(52, 21, 'FcLAppK2ZdLz5LbgHo8VZD19vsreUfFy7t', 'fc', 'ad435e8c49396e311fabfa6dddc1edd206d092477c4446f525553e003fdac5ec', '90000000.00000000', '90009000.00000000', '9000.00000000', 0, 1487463459, 0, 1),
(53, 12, 'FewPPSgDxMm9jwrFpYBtiueUz433nGvnE5', 'fc', 'a2ad48a651a287812f2ee4af915b48f8cb613032e4aa07bcff18a7d0db7ced6e', '5327200.00000000', '5327732.72000000', '532.72000000', 0, 1487499702, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_pool`
--

CREATE TABLE IF NOT EXISTS `btchanges_pool` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `ico` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `tian` int(11) unsigned NOT NULL,
  `limit` varchar(50) NOT NULL,
  `power` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='矿机类型表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_pool_log`
--

CREATE TABLE IF NOT EXISTS `btchanges_pool_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ico` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `tian` int(11) unsigned NOT NULL,
  `limit` varchar(50) NOT NULL,
  `power` varchar(50) NOT NULL,
  `num` int(11) unsigned NOT NULL,
  `use` int(11) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='矿机管理' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_prompt`
--

CREATE TABLE IF NOT EXISTS `btchanges_prompt` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_shop`
--

CREATE TABLE IF NOT EXISTS `btchanges_shop` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `coinlist` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `num` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `deal` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `content` text NOT NULL,
  `max` varchar(255) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `market_price` decimal(20,2) unsigned NOT NULL COMMENT '市场价',
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`),
  KEY `deal` (`deal`),
  KEY `price` (`price`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='商城商品表' AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `btchanges_shop`
--

INSERT INTO `btchanges_shop` (`id`, `name`, `coinlist`, `img`, `type`, `price`, `num`, `deal`, `content`, `max`, `sort`, `addtime`, `endtime`, `status`, `market_price`) VALUES
(5, '抱枕', '', '/Upload/shop/598a4021105de.jpg', 'ryp', '50.00000000', '1000.00000000', '20.00000000', '抱枕（pillow）是家居生活中常见用品，类似枕头，常见的仅有一般枕头的一半大小，抱在怀中可以起到保暖和一定的保护作用。给人温馨的感觉，如今成为家居使用和装饰的常见饰物和车饰必备物品。<br />\r\n在有条件的家庭在沙发上闲着无聊，看电视时抱着玩玩，随着国人生活水平的提高，抱枕越来越多的接近人们的生活，成为家居生活、办公白领、车内装饰等等不可缺少的装饰物。<br />', '', 1, 1487520000, 1487557032, 1, '80.00'),
(6, '阿胶', '', '/Upload/shop/598a419a67e96.jpg', 'bjp', '300.00000000', '1000.00000000', '20.00000000', '阿胶', '', 7, 1502121600, 1502208000, 1, '600.00'),
(7, '抱枕', '', '/Upload/shop/598a436378cad.jpg', 'ryp', '60.00000000', '100.00000000', '20.00000000', '抱枕（pillow）是家居生活中常见用品，类似枕头，常见的仅有一般枕头的一半大小，抱在怀中可以起到保暖和一定的保护作用。给人温馨的感觉，如今成为家居使用和装饰的常见饰物和车饰必备物品。<br />\r\n在有条件的家庭在沙发上闲着无聊，看电视时抱着玩玩，随着国人生活水平的提高，抱枕越来越多的接近人们的生活，成为家居生活、办公白领、车内装饰等等不可缺少的装饰物。<br />', '', 7, 1501516800, 1502208000, 1, '80.00'),
(8, '苹果13.3英寸宽屏笔记本电脑', '', '/Upload/shop/598a6093b6d80.png', 'ryp', '8888.00000000', '1000.00000000', '1000.00000000', '<p font-size:55px;text-align:center;"="" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: tahoma; line-height: 28px; color: rgb(102, 102, 102); white-space: normal;">MacBook Pro\r\n	</p>\r\n<p font-size:24px;text-align:center;"="" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: tahoma; line-height: 28px; color: rgb(102, 102, 102); white-space: normal;">配备Retina 显示屏\r\n</p>\r\n<p font-size:26px;text-align:center;"="" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: tahoma; line-height: 28px; color: rgb(102, 102, 102); white-space: normal;">每一像素颗粒，尽显澎湃动力。\r\n	</p>\r\n<p font-size:26px;text-align:center;"="" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: tahoma; line-height: 28px; color: rgb(102, 102, 102); white-space: normal;"><img src="/Upload/shop/598a5f8621153.jpg" alt="" /> \r\n</p>\r\n<p font-size:30px;text-align:center;"="" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: tahoma; line-height: 28px; color: rgb(102, 102, 102); white-space: normal;">绚丽夺目的 Retina 显示屏\r\n	</p>\r\n<p font-size:26px;text-align:center;"="" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: tahoma; line-height: 28px; color: rgb(102, 102, 102); white-space: normal;">领先于时代好几百万像素\r\n</p>\r\n<p font-size:14px;text-align:center;"="" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: tahoma; line-height: 28px; color: rgb(102, 102, 102); white-space: normal;">15 英寸机型拥有超过 500 万像素，13 英寸机型拥有超过 400 万像素。因此，无论你是在润饰照片还是剪辑 HD高清家庭影片，都能获得令人震撼的清晰度。文字也锐利清晰，让浏览网页和修改文档这些日常之事都变得比以往更加赏心悦目。这样的显示屏方能配得上这款极为先进的笔记本电脑。\r\n	</p>\r\n<p font-size:14px;text-align:center;"="" style="margin-top: 0px; margin-bottom: 0px; padding: 0px; font-family: tahoma; line-height: 28px; color: rgb(102, 102, 102); white-space: normal;"><img src="/Upload/shop/598a5ff3eeb7d.jpg" alt="" /> \r\n</p>', '', 1, 1501516800, 1501603200, 1, '9000.00'),
(9, 'Apple iPhone 6s Plus 32G 金色 移动联通电信4G手机', '', '/Upload/shop/598a6438be41e.png', 'ryp', '3880.00000000', '500.00000000', '500.00000000', '<h1 style="font-size:16px;color:#5E5E5E;font-family:arial, ''Microsoft YaHei'';">\r\n	Apple iPhone 6s Plus 32G 金色 移动联通电信4G手机\r\n</h1>\r\n<p>\r\n	<img src="/Upload/shop/598a64343ec0b.png" alt="" />\r\n</p>', '', 1, 1501516800, 1501603200, 1, '4890.00'),
(10, 'Midea/美的 FZ4082 4L IH磁热智能电饭煲', '', '/Upload/shop/598a650471060.jpg', 'ryp', '1099.00000000', '300.00000000', '300.00000000', '<p>\r\n	<b id="prodNameStr">Midea/美的 FZ4082 4L IH磁热智能电饭煲</b>\r\n</p>\r\n<p>\r\n	<b><img src="/Upload/shop/598a6510b510e.jpg" alt="" /><br />\r\n</b>\r\n</p>', '', 1, 1501516800, 1501689600, 1, '1800.00'),
(11, '相机', '', '/Upload/shop/598a659ccacc3.jpg', 'ryp', '8000.00000000', '500.00000000', '500.00000000', '<p style="text-align:left;font-size:18px;color:#333333;font-family:simsun, arial, ''microsoft yahei'';">\r\n	相机\r\n</p>\r\n<p style="text-align:left;font-size:18px;color:#333333;font-family:simsun, arial, ''microsoft yahei'';">\r\n	<img src="/Upload/shop/598a65c1473a0.jpg" alt="" />\r\n</p>', '', 1, 1501516800, 1501603200, 1, '9800.00'),
(12, '2017韩版女装夏装新款宽松流苏圆领条纹显瘦T恤ONW7797(绿色 L)', '', '/Upload/shop/598a6798b0afd.jpg', 'ryp', '82.00000000', '600.00000000', '600.00000000', '<p style="font-size:16px;color:#5E5E5E;font-family:arial, ''Microsoft YaHei'';">\r\n	2017韩版女装夏装新款宽松流苏圆领条纹显瘦T恤ONW7797(绿色 L)\r\n</p>\r\n<p style="font-size:16px;color:#5E5E5E;font-family:arial, ''Microsoft YaHei'';">\r\n	<img src="/Upload/shop/598a679451692.jpg" alt="" />\r\n</p>', '', 1, 1501516800, 1501603200, 1, '102.00');

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_shop_addr`
--

CREATE TABLE IF NOT EXISTS `btchanges_shop_addr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(50) NOT NULL DEFAULT '0',
  `moble` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_shop_coin`
--

CREATE TABLE IF NOT EXISTS `btchanges_shop_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `zyc` varchar(200) NOT NULL COMMENT '付款',
  `dc` varchar(200) NOT NULL COMMENT '付款',
  `zh` varchar(200) NOT NULL COMMENT '付款',
  `dog` varchar(200) NOT NULL COMMENT '付款',
  `shopid` int(11) unsigned NOT NULL COMMENT '商品id',
  `cny` varchar(50) NOT NULL COMMENT '人民币',
  PRIMARY KEY (`id`),
  KEY `shopid` (`shopid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='商品付款方式表' AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `btchanges_shop_coin`
--

INSERT INTO `btchanges_shop_coin` (`id`, `zyc`, `dc`, `zh`, `dog`, `shopid`, `cny`) VALUES
(5, '', '', '', '', 5, '1'),
(6, '', '', '', '', 6, '1'),
(7, '', '', '', '', 7, '1'),
(8, '', '', '', '', 8, '1'),
(9, '', '', '', '', 9, '1'),
(10, '', '', '', '', 10, '1'),
(11, '', '', '', '', 11, '1'),
(12, '', '', '', '', 12, '1');

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_shop_log`
--

CREATE TABLE IF NOT EXISTS `btchanges_shop_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` varchar(255) NOT NULL,
  `shopid` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `coinname` varchar(50) NOT NULL DEFAULT '0.00',
  `num` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `mum` decimal(20,8) unsigned NOT NULL DEFAULT '0.00000000',
  `addr` varchar(50) NOT NULL DEFAULT '0.0000',
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `xuyao` decimal(20,8) unsigned NOT NULL COMMENT '价',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='购物记录表' AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_shop_type`
--

CREATE TABLE IF NOT EXISTS `btchanges_shop_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `name` (`name`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='商品分类' AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `btchanges_shop_type`
--

INSERT INTO `btchanges_shop_type` (`id`, `name`, `title`, `remark`, `sort`, `endtime`, `addtime`, `status`) VALUES
(1, 'bjp', '保健品', '保健品', 1, 1475942400, 1475942400, 1),
(2, 'ryp', '日用品', '日用品', 2, 1476115200, 1476115200, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_text`
--

CREATE TABLE IF NOT EXISTS `btchanges_text` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- 转存表中的数据 `btchanges_text`
--

INSERT INTO `btchanges_text` (`id`, `name`, `title`, `content`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 'game_vote', '37', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>37请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1469733741, 0, 1),
(2, 'finance_index', '36', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>您好，有任何错误请立即与客服反应，希望滑稽君为您带来快乐&lt;</span></span>', 0, 1475325266, 0, 1),
(3, 'finance_myzr', '34', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>34请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1475325312, 0, 1),
(4, 'finance_myzc', '33', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>审核较慢请耐心等待，滑稽兽呼噜噜~</span></span><span style="color:#0096E0;line-height:21px;font-family:&quot;Microsoft Yahei&quot;, &quot;Sim sun&quot;, tahoma, &quot;Helvetica,Neue&quot;, Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;"><span style="color:#EE33EE;"></span></span>', 0, 1475325321, 0, 1),
(5, 'finance_mywt', '32', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>哇，你已经这么滑稽了呢~</span></span><span style="color:#0096E0;line-height:21px;font-family:&quot;Microsoft Yahei&quot;, &quot;Sim sun&quot;, tahoma, &quot;Helvetica,Neue&quot;, Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;"><span style="color:#EE33EE;"></span></span>', 0, 1475325496, 0, 1),
(6, 'finance_mycj', '30成交查询', '<span style="color:#9933E5;font-size:14px;"><span style="line-height:21px;color:#9933E5;font-size:14px;background-color:#FFFFFF;">查询全部买入卖出的成交记录</span></span>', 0, 1475325508, 0, 1),
(7, 'finance_mycz', '29人民币充值', '<span style="color:#9933E5;line-height:21px;"><span style="color:#9933E5;"><span style="color:#9933E5;font-family:''Microsoft YaHei'';font-size:14px;line-height:34px;">只允许使用本人的支付宝进行</span></span></span><span style="color:#0096E0;line-height:21px;"><span><span style="color:#FF0D00;font-family:''Microsoft YaHei'';font-size:14px;line-height:34px;"><span style="color:#9933E5;"></span><span style="color:#9933E5;">转账充值，请确保汇款人姓名与注册一致</span></span></span></span>', 0, 1475325515, 0, 1),
(8, 'user_index', '28', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>哼&nbsp;守护滑稽的安全，义不容辞！ </span></span><span style="color: rgb(0, 150, 224); line-height: 21px; font-family:;" sans-serif;background-color:#ffffff;"="" arial,="" stheiti,="" helvetica,="" "helvetica,neue",="" tahoma,="" sun",="" "sim="" yahei",="" microsoft=""><span style="color:#EE33EE;"></span></span>', 0, 1475325658, 0, 1),
(9, 'finance_mytx', '27人民币提现', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>\r\n<h3 style="font-family:''Microsoft YaHei'';font-weight:500;font-size:24px;background-color:#FFFFFF;">\r\n	<span style="color:#9933E5;">提现须知</span>\r\n</h3>\r\n<p style="color:#999999;font-family:''Microsoft YaHei'';font-size:14px;background-color:#FFFFFF;">\r\n	1. 提现手续费率1％，每笔提现最低收费2元 。\r\n</p>\r\n<p style="color:#999999;font-family:''Microsoft YaHei'';font-size:14px;background-color:#FFFFFF;">\r\n	2. 单笔提现限额100元——50000元。\r\n</p>\r\n<p style="color:#999999;font-family:''Microsoft YaHei'';font-size:14px;background-color:#FFFFFF;">\r\n	3. 银行卡提现24小时内到帐，在已汇出24小时后 仍未收到款项，请联系客服。\r\n</p>\r\n</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;"><span style="color:#EE33EE;"></span></span>', 0, 1475325679, 0, 1),
(10, 'user_moble', '26手机绑定', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span> \r\n<h1 style="font-weight:normal;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;">\r\n	<span style="color:#9933E5;">请绑行定您的手机方便进行充值与提现</span> \r\n</h1>\r\n</span></span>', 0, 1475351892, 0, 1),
(11, 'finance_mytj', '25推荐用户', '<span style="color:#9933E5;line-height:21px;font-size:14px;background-color:#FFFFFF;"><span style="color:#9933E5;font-size:14px;"><span style="color:#9933E5;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;line-height:30.8px;font-size:14px;background-color:#FFFFFF;">这是您的专用邀请码：<span style="color:#666666;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:14px;line-height:normal;background-color:#FFFFFF;">奖励下线金额三级分红:一代0.3% 二代0.2% 三代0.1</span></span></span></span>', 0, 1475352280, 0, 1),
(12, 'finance_mywd', '24', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>把滑稽传向世界吧！滑稽兽会亲亲你呢 </span></span>', 0, 1475352284, 0, 1),
(13, 'finance_myjp', '23', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>呐呐，收取滑稽兽的福利吧 </span></span><span style="color: rgb(0, 150, 224); line-height: 21px; font-family:;" sans-serif;background-color:#ffffff;"="" arial,="" stheiti,="" helvetica,="" "helvetica,neue",="" tahoma,="" sun",="" "sim="" yahei",="" microsoft=""><span style="color:#EE33EE;"></span></span>', 0, 1475352285, 0, 1),
(14, 'game_issue', '22', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>欢迎认购！上市前较低价格</span></span><span style="color:#0096E0;line-height:21px;font-family:&quot;Microsoft Yahei&quot;, &quot;Sim sun&quot;, tahoma, &quot;Helvetica,Neue&quot;, Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;"><span style="color:#EE33EE;"></span></span>', 0, 1475352288, 0, 1),
(15, 'game_issue_log', '21', '<p>\r\n	<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>滑稽币，传播快乐！</span></span>\r\n</p>', 0, 1475352293, 0, 1),
(16, 'game_fenhong', '20', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>分红周期短，持币数大分红多</span></span><span style="color:#0096E0;line-height:21px;font-family:&quot;Microsoft Yahei&quot;, &quot;Sim sun&quot;, tahoma, &quot;Helvetica,Neue&quot;, Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;"><span style="color:#EE33EE;"></span></span>', 0, 1475352294, 0, 1),
(17, 'game_fenhong_log', '19', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>。。</span></span><span style="color: rgb(0, 150, 224); line-height: 21px; font-family:;" helvetica,="" arial,="" yahei",="" microsoft="" sans-serif;background-color:#ffffff;"="" stheiti,="" "helvetica,neue",="" tahoma,="" sun",="" "sim=""><span style="color:#EE33EE;"></span></span>', 0, 1475352296, 0, 1),
(18, 'game_money', '18', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>滑稽滑稽欢迎您~<img alt="" src="http://114.215.40.96/Public/kindeditor/plugins/emoticons/images/44.gif" border="0" /></span></span><span style="color:#0096E0;line-height:21px;font-family:&quot;Microsoft Yahei&quot;, &quot;Sim sun&quot;, tahoma, &quot;Helvetica,Neue&quot;, Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;"><span style="color:#EE33EE;"></span></span>', 0, 1475352297, 0, 1),
(19, 'game_money_log', '17', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>听说足够滑稽的人，能获得一个滑稽抱枕哦~ </span></span><span style="color: rgb(0, 150, 224); line-height: 21px; font-family:;" sans-serif;background-color:#ffffff;"="" arial,="" stheiti,="" helvetica,="" "helvetica,neue",="" tahoma,="" sun",="" "sim="" yahei",="" microsoft=""><span style="color:#EE33EE;"></span></span>', 0, 1475352298, 0, 1),
(20, 'user_paypassword', '16修改交易密码', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span> \r\n<h1 style="font-weight:normal;font-family:tahoma, ''Microsoft YaHei'', Arial, Helvetica, sans-serif;font-size:20px;color:#333333;background-color:#FFFFFF;">\r\n	<span style="color:#9933E5;">请在下面修改您的交易密码</span> \r\n</h1>\r\n</span></span>', 0, 1475352694, 0, 1),
(21, 'user_password', '', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>请在下面修改您的登录密码 </span></span><span style="color: rgb(0, 150, 224); line-height: 21px; font-family:;" sans-serif;background-color:#ffffff;"="" arial,="" stheiti,="" helvetica,="" "helvetica,neue",="" tahoma,="" sun",="" "sim="" yahei",="" microsoft=""><span style="color:#EE33EE;"></span></span>', 0, 1475352695, 0, 1),
(22, 'user_nameauth', '15实名认证', '<span style="color:#9933E5;"><span style="line-height:21px;color:#9933E5;background-color:#FFFFFF;">请您实名注册如有错误请联系客服进行修改</span></span>', 0, 1475352696, 0, 1),
(23, 'user_tpwdset', '14', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>这是你的交易密码，不要被别人偷看了噢</span></span>', 0, 1475352698, 0, 1),
(24, 'game_shop', '13', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>13请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1475352702, 0, 1),
(25, 'game_issue_buy', '12', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>12请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1475352722, 0, 1),
(26, 'game_huafei', '11', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>话费充值未即时到账请等待，可能是被滑稽怪吃了哦~</span></span>', 0, 1475359119, 0, 1),
(27, 'user_bank', '10', '<p>\r\n	<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span></span></span><span style="color:#0096E0;line-height:21px;font-family:"Microsoft Yahei", "Sim sun", tahoma, "Helvetica,Neue", Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;"><span style="color:#EE33EE;">感觉支付宝被掏空。。。</span></span>\r\n</p>', 0, 1475359192, 0, 1),
(28, 'user_qianbao', '9', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>请添加真实钱包地址，错误钱包地址导致的充值出金异常平台概不负责 </span></span>', 0, 1475359195, 0, 1),
(29, 'user_log', '8', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>登陆地址异常请及时联系客服</span></span><span style="color:#0096E0;line-height:21px;font-family:&quot;Microsoft Yahei&quot;, &quot;Sim sun&quot;, tahoma, &quot;Helvetica,Neue&quot;, Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;"><span style="color:#EE33EE;"></span></span>', 0, 1475359241, 0, 1),
(30, 'user_ga', '7', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>7请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1475395398, 0, 1),
(31, 'user_alipay', '6', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>6请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1475395410, 0, 1),
(32, 'user_goods', '5', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>地址可以用于奖品的邮寄哦！</span></span>', 0, 1475395413, 0, 1),
(33, 'game_shop_view', '3', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>3请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1476000366, 0, 1),
(34, 'game_shop_log', '2', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>2请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1476002906, 0, 1),
(35, 'game_shop_goods', '1', '<span style="color:#0096E0;line-height:21px;background-color:#FFFFFF;"><span>1请在后台修改此处内容</span></span><span style="color:#0096E0;line-height:21px;font-family:''Microsoft Yahei'', ''Sim sun'', tahoma, ''Helvetica,Neue'', Helvetica, STHeiTi, Arial, sans-serif;background-color:#FFFFFF;">,<span style="color:#EE33EE;">详细信息</span></span>', 0, 1476002907, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_trade`
--

CREATE TABLE IF NOT EXISTS `btchanges_trade` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `market` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `deal` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee` decimal(20,8) unsigned NOT NULL,
  `type` tinyint(2) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `market` (`market`,`type`,`status`),
  KEY `num` (`num`,`deal`),
  KEY `status` (`status`),
  KEY `market_2` (`market`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='交易下单表' AUTO_INCREMENT=63 ;

--
-- 转存表中的数据 `btchanges_trade`
--

INSERT INTO `btchanges_trade` (`id`, `userid`, `market`, `price`, `num`, `deal`, `mum`, `fee`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 20, 'thc_cny', '0.10000000', '100.00000000', '30.00000000', '10.00000000', '0.00000000', 1, 0, 1480488331, 0, 2),
(2, 20, 'thc_cny', '0.10000000', '30.00000000', '30.00000000', '2.99400000', '0.00600000', 2, 0, 1480488356, 0, 1),
(3, 1, 'fc_cny', '1.00000000', '20.00000000', '0.00000000', '19.88000000', '0.12000000', 2, 0, 1486356142, 0, 2),
(4, 1, 'fc_cny', '0.00100000', '10000.00000000', '0.00000000', '9.94000000', '0.06000000', 2, 0, 1486356325, 0, 2),
(5, 1, 'fc_cny', '0.00000100', '10.00000000', '0.00000000', '0.00000994', '0.00000006', 2, 0, 1486356462, 0, 2),
(6, 1, 'fc_cny', '0.00000100', '800000.00000000', '800000.00000000', '0.79200000', '0.00800000', 2, 0, 1486376940, 0, 1),
(7, 1, 'fc_cny', '0.00000100', '100000.00000000', '100000.00000000', '0.10000000', '0.00000000', 1, 0, 1486376993, 0, 1),
(8, 1, 'fc_cny', '0.00000100', '10000.00000000', '10000.00000000', '0.01000000', '0.00000000', 1, 0, 1486377127, 0, 1),
(9, 1, 'fc_cny', '0.00000100', '2974199673.00000000', '690000.00000000', '2974.19967300', '0.00000000', 1, 0, 1486377475, 0, 2),
(10, 1, 'fc_cny', '0.00000100', '10000.00000000', '10000.00000000', '0.01000000', '0.00000000', 1, 0, 1486382248, 0, 1),
(11, 1, 'fc_cny', '0.00000200', '100000.00000000', '10000.00000000', '0.19800000', '0.00200000', 2, 0, 1486451770, 0, 2),
(12, 1, 'fc_cny', '0.00000200', '10000.00000000', '10000.00000000', '0.02000000', '0.00000000', 1, 0, 1486451816, 0, 1),
(13, 1, 'fc_cny', '0.00000100', '24666.87000000', '24666.87000000', '0.02436273', '0.00030414', 2, 0, 1486484538, 0, 1),
(14, 1, 'fc_cny', '0.00000100', '32600.24000000', '32600.24000000', '0.03219828', '0.00040196', 2, 0, 1486484569, 0, 1),
(15, 1, 'fc_cny', '0.00000100', '22820.17000000', '22820.17000000', '0.02253880', '0.00028137', 2, 0, 1486484617, 0, 1),
(16, 1, 'fc_cny', '0.00000100', '70000.00000000', '70000.00000000', '0.07000000', '0.00000000', 1, 0, 1486643544, 0, 1),
(17, 1, 'fc_cny', '0.00000100', '1000000.00000000', '1000000.00000000', '0.98767000', '0.01233000', 2, 0, 1486643630, 0, 1),
(18, 1, 'fc_cny', '0.00000100', '250000.00000000', '250000.00000000', '0.25000000', '0.00000000', 1, 0, 1486643653, 0, 1),
(19, 1, 'fc_cny', '0.00000100', '130000.00000000', '130000.00000000', '0.13000000', '0.00000000', 1, 0, 1486643779, 0, 1),
(20, 17, 'fc_cny', '0.00000100', '750000.00000000', '750000.00000000', '0.75000000', '0.00000000', 1, 0, 1486643817, 0, 1),
(21, 5, 'fc_cny', '0.00000100', '2000000.00000000', '2000000.00000000', '2.00000000', '0.00000000', 1, 0, 1486643964, 0, 1),
(22, 1, 'fc_cny', '0.00000100', '310000.00000000', '310000.00000000', '0.30617770', '0.00382230', 2, 0, 1486644070, 0, 1),
(23, 1, 'fc_cny', '0.00000100', '1810000.00000000', '1810000.00000000', '1.78768270', '0.02231730', 2, 0, 1486645637, 0, 1),
(24, 1, 'fc_cny', '0.00000100', '10000000.00000000', '1519912.72000000', '9.87670000', '0.12330000', 2, 0, 1486652378, 0, 2),
(25, 8, 'fc_cny', '0.00000100', '1000000.00000000', '1000000.00000000', '0.98767000', '0.01233000', 2, 0, 1486693193, 0, 1),
(26, 8, 'fc_cny', '0.00000100', '1000000.00000000', '1000000.00000000', '0.98767000', '0.01233000', 2, 0, 1486693651, 0, 1),
(27, 8, 'fc_cny', '0.00000100', '1000000.00000000', '1000000.00000000', '0.98767000', '0.01233000', 2, 0, 1486695618, 0, 1),
(28, 8, 'fc_cny', '0.00000100', '1000000.00000000', '1000000.00000000', '0.98767000', '0.01233000', 2, 0, 1486695636, 0, 1),
(29, 8, 'fc_cny', '0.00000100', '1000000.00000000', '1000000.00000000', '0.98767000', '0.01233000', 2, 0, 1486695656, 0, 1),
(30, 1, 'fc_cny', '0.00000100', '10000.00000000', '10000.00000000', '0.01000000', '0.00000000', 1, 0, 1486697937, 0, 1),
(31, 1, 'fc_cny', '0.00000100', '1500000.00000000', '1500000.00000000', '1.50000000', '0.00000000', 1, 0, 1486697978, 0, 1),
(32, 1, 'fc_cny', '0.00000100', '2000000.00000000', '2000000.00000000', '2.00000000', '0.00000000', 1, 0, 1486698031, 0, 1),
(33, 1, 'fc_cny', '0.00000100', '3000000.00000000', '3000000.00000000', '3.00000000', '0.00000000', 1, 0, 1486698235, 0, 1),
(34, 1, 'fc_cny', '0.00000100', '14000000.00000000', '5000000.00000000', '13.82738000', '0.17262000', 2, 0, 1486698298, 0, 2),
(35, 17, 'fc_cny', '0.00000100', '30000000.00000000', '0.00000000', '29.63010000', '0.36990000', 2, 0, 1486699405, 0, 2),
(36, 1, 'fc_cny', '0.00000100', '5000000.00000000', '5000000.00000000', '5.00000000', '0.00000000', 1, 0, 1486706161, 0, 1),
(37, 23, 'fc_cny', '0.00000200', '500050.00000000', '0.00000000', '0.98776877', '0.01233123', 2, 0, 1486723160, 0, 2),
(38, 21, 'fc_cny', '0.00000100', '89500000.00000000', '1997668.21000000', '88.39646500', '1.10353500', 2, 0, 1486723166, 0, 2),
(39, 24, 'fc_cny', '0.00000100', '1000000.00000000', '1000000.00000000', '1.00000000', '0.00000000', 1, 0, 1486728252, 0, 1),
(40, 8, 'fc_cny', '0.00000200', '1000000.00000000', '0.00000000', '1.97534000', '0.02466000', 2, 0, 1486728568, 0, 2),
(41, 24, 'fc_cny', '0.00000100', '500000.00000000', '500000.00000000', '0.50116500', '0.00116500', 1, 0, 1486777111, 0, 1),
(42, 24, 'fc_cny', '0.00000100', '100000.00000000', '100000.00000000', '0.10023300', '0.00023300', 1, 0, 1486791840, 0, 1),
(43, 24, 'fc_cny', '0.00000100', '300000.00000000', '300000.00000000', '0.30069900', '0.00069900', 1, 0, 1486791892, 0, 1),
(44, 24, 'fc_cny', '0.00000100', '90000.00000000', '90000.00000000', '0.09020970', '0.00020970', 1, 0, 1486792050, 0, 1),
(45, 24, 'fc_cny', '0.00000100', '6923.96000000', '6923.96000000', '0.00694009', '0.00001613', 1, 0, 1486792077, 0, 1),
(46, 24, 'fc_cny', '0.00000100', '677.88000000', '677.88000000', '0.00067946', '0.00000158', 1, 0, 1486792110, 0, 1),
(47, 24, 'fc_cny', '0.00000100', '66.37000000', '66.37000000', '0.00006652', '0.00000015', 1, 0, 1486792126, 0, 1),
(48, 8, 'fc_cny', '0.00000100', '1000000.00000000', '0.00000000', '0.98767000', '0.01233000', 2, 0, 1486804672, 0, 2),
(49, 5, 'fc_cny', '0.00000100', '1000000.00000000', '0.00000000', '0.98767000', '0.01233000', 2, 0, 1486816989, 0, 2),
(50, 7, 'fc_cny', '0.00000100', '20012664.08000000', '0.00000000', '19.76590793', '0.24675615', 2, 0, 1487001728, 0, 2),
(51, 5, 'fc_cny', '0.00000100', '4000000.00000000', '0.00000000', '3.95068000', '0.04932000', 2, 0, 1487842178, 0, 0),
(52, 21, 'fc_cny', '0.00000100', '8000000.00000000', '0.00000000', '7.90136000', '0.09864000', 2, 0, 1488710603, 0, 0),
(53, 36, 'fc_cny', '0.00000100', '2000.00000000', '0.00000000', '0.00197534', '0.00002466', 2, 0, 1496507448, 0, 0),
(54, 39, 'hjc_cny', '890.00000000', '100.00000000', '100.00000000', '88555.00000000', '445.00000000', 2, 0, 1498821796, 0, 1),
(55, 38, 'hjc_cny', '890.00000000', '100.00000000', '100.00000000', '89000.00000000', '0.00000000', 1, 0, 1498821889, 0, 1),
(56, 38, 'hjc_cny', '891.50000000', '500.00000000', '500.00000000', '445750.00000000', '0.00000000', 1, 0, 1498821913, 0, 1),
(57, 39, 'hjc_cny', '891.00000000', '800.00000000', '501.00000000', '709236.00000000', '3564.00000000', 2, 0, 1498821988, 0, 0),
(58, 39, 'ydc_cny', '65.00000000', '5000.00000000', '5000.00000000', '323375.00000000', '1625.00000000', 2, 0, 1498822033, 0, 1),
(59, 38, 'ydc_cny', '65.00000000', '8000.00000000', '5000.00000000', '520000.00000000', '0.00000000', 1, 0, 1498822054, 0, 0),
(60, 38, 'ydc_cny', '66.00000000', '500.00000000', '200.00000000', '33000.00000000', '0.00000000', 1, 0, 1498822069, 0, 2),
(61, 39, 'ydc_cny', '66.00000000', '200.00000000', '200.00000000', '13134.00000000', '66.00000000', 2, 0, 1498822100, 0, 1),
(62, 39, 'hjc_cny', '900.00000000', '1.00000000', '1.00000000', '900.00000000', '0.00000000', 1, 0, 1499654370, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_trade_json`
--

CREATE TABLE IF NOT EXISTS `btchanges_trade_json` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `market` varchar(100) NOT NULL,
  `data` varchar(500) NOT NULL,
  `type` varchar(100) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `market` (`market`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='交易图表表' AUTO_INCREMENT=39097 ;

--
-- 转存表中的数据 `btchanges_trade_json`
--

INSERT INTO `btchanges_trade_json` (`id`, `market`, `data`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 'thc_cny', '[1480488356,"30.00000000","0.10000000","0.10000000","0.10000000","0.10000000"]', '1', 0, 1480488356, 0, 0),
(2, 'thc_cny', '[1480488300,"30.00000000","0.10000000","0.10000000","0.10000000","0.10000000"]', '3', 0, 1480488300, 0, 0),
(3, 'thc_cny', '[1480488300,"30.00000000","0.10000000","0.10000000","0.10000000","0.10000000"]', '5', 0, 1480488300, 0, 0),
(4, 'thc_cny', '[1480488000,"30.00000000","0.10000000","0.10000000","0.10000000","0.10000000"]', '10', 0, 1480488000, 0, 0),
(5, 'thc_cny', '[1480488300,"30.00000000","0.10000000","0.10000000","0.10000000","0.10000000"]', '15', 0, 1480488300, 0, 0),
(6, 'thc_cny', '[1480487400,"30.00000000","0.10000000","0.10000000","0.10000000","0.10000000"]', '30', 0, 1480487400, 0, 0),
(7, 'thc_cny', '[1480485600,"30.00000000","0.10000000","0.10000000","0.10000000","0.10000000"]', '60', 0, 1480485600, 0, 0),
(8, 'thc_cny', '[1480485600,"30.00000000","0.10000000","0.10000000","0.10000000","0.10000000"]', '120', 0, 1480485600, 0, 0),
(9, 'thc_cny', '[1480485600,"30.00000000","0.10000000","0.10000000","0.10000000","0.10000000"]', '240', 0, 1480485600, 0, 0),
(10, 'thc_cny', '[1480485600,"30.00000000","0.10000000","0.10000000","0.10000000","0.10000000"]', '360', 0, 1480485600, 0, 0),
(11, 'thc_cny', '[1480485600,"30.00000000","0.10000000","0.10000000","0.10000000","0.10000000"]', '720', 0, 1480485600, 0, 0),
(12, 'thc_cny', '[1480485600,"30.00000000","0.10000000","0.10000000","0.10000000","0.10000000"]', '1440', 0, 1480485600, 0, 0),
(13, 'thc_cny', '[1480485600,"30.00000000","0.10000000","0.10000000","0.10000000","0.10000000"]', '10080', 0, 1480485600, 0, 0),
(14, 'thc_cny', '', '1', 0, 1480488416, 0, 0),
(15, 'thc_cny', '', '3', 0, 1480488480, 0, 0),
(16, 'thc_cny', '', '5', 0, 1480488600, 0, 0),
(17, 'thc_cny', '', '10', 0, 1480488600, 0, 0),
(18, 'thc_cny', '', '15', 0, 1480489200, 0, 0),
(19, 'thc_cny', '', '30', 0, 1480489200, 0, 0),
(20, 'thc_cny', '', '60', 0, 1480489200, 0, 0),
(21, 'thc_cny', '', '120', 0, 1480492800, 0, 0),
(22, 'thc_cny', '', '240', 0, 1480500000, 0, 0),
(23, 'thc_cny', '', '360', 0, 1480507200, 0, 0),
(24, 'thc_cny', '', '720', 0, 1480528800, 0, 0),
(25, 'thc_cny', '', '1440', 0, 1480572000, 0, 0),
(26, 'thc_cny', '', '10080', 0, 1481090400, 0, 0),
(27, 'fc_cny', '[1486376993,"100000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486376993, 0, 0),
(28, 'fc_cny', '[1486376820,"100000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486376820, 0, 0),
(29, 'fc_cny', '[1486377000,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486377000, 0, 0),
(30, 'fc_cny', '[1486376700,"100000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486376700, 0, 0),
(31, 'fc_cny', '[1486377000,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486377000, 0, 0),
(32, 'fc_cny', '[1486376400,"100000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '10', 0, 1486376400, 0, 0),
(33, 'fc_cny', '[1486377000,"700000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '10', 0, 1486377000, 0, 0),
(34, 'fc_cny', '[1486376100,"100000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '15', 0, 1486376100, 0, 0),
(35, 'fc_cny', '[1486377000,"700000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '15', 0, 1486377000, 0, 0),
(36, 'fc_cny', '[1486375200,"100000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '30', 0, 1486375200, 0, 0),
(37, 'fc_cny', '[1486377000,"700000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '30', 0, 1486377000, 0, 0),
(38, 'fc_cny', '[1486375200,"800000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '60', 0, 1486375200, 0, 0),
(39, 'fc_cny', '[1486375200,"800000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '120', 0, 1486375200, 0, 0),
(40, 'fc_cny', '[1486375200,"800000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '240', 0, 1486375200, 0, 0),
(41, 'fc_cny', '[1486375200,"800000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '360', 0, 1486375200, 0, 0),
(42, 'fc_cny', '[1486375200,"800000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '720', 0, 1486375200, 0, 0),
(43, 'fc_cny', '[1486375200,"810000.00000000","0.00000100","0.00000200","0.00000100","0.00000200"]', '1440', 0, 1486375200, 0, 0),
(44, 'fc_cny', '[1486375200,"17527668.21000000","0.00000100","0.00000200","0.00000100","0.00000100"]', '10080', 0, 1486375200, 0, 0),
(47, 'fc_cny', '[1486377113,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486377113, 0, 0),
(50, 'fc_cny', '[1486377300,"690000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486377300, 0, 0),
(56, 'fc_cny', '[1486377473,"690000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486377473, 0, 0),
(58, 'fc_cny', '[1486377360,"690000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486377360, 0, 0),
(69, 'fc_cny', '[1486418400,"10000.00000000","0.00000200","0.00000200","0.00000200","0.00000200"]', '720', 0, 1486418400, 0, 0),
(216, 'fc_cny', '[1486450800,"10000.00000000","0.00000200","0.00000200","0.00000200","0.00000200"]', '60', 0, 1486450800, 0, 0),
(226, 'fc_cny', '[1486447200,"10000.00000000","0.00000200","0.00000200","0.00000200","0.00000200"]', '120', 0, 1486447200, 0, 0),
(231, 'fc_cny', '[1486447200,"10000.00000000","0.00000200","0.00000200","0.00000200","0.00000200"]', '240', 0, 1486447200, 0, 0),
(234, 'fc_cny', '[1486440000,"10000.00000000","0.00000200","0.00000200","0.00000200","0.00000200"]', '360', 0, 1486440000, 0, 0),
(360, 'fc_cny', '[1486450800,"10000.00000000","0.00000200","0.00000200","0.00000200","0.00000200"]', '30', 0, 1486450800, 0, 0),
(657, 'fc_cny', '[1486451700,"10000.00000000","0.00000200","0.00000200","0.00000200","0.00000200"]', '15', 0, 1486451700, 0, 0),
(808, 'fc_cny', '[1486451400,"10000.00000000","0.00000200","0.00000200","0.00000200","0.00000200"]', '10', 0, 1486451400, 0, 0),
(1174, 'fc_cny', '[1486451700,"10000.00000000","0.00000200","0.00000200","0.00000200","0.00000200"]', '5', 0, 1486451700, 0, 0),
(1506, 'fc_cny', '[1486451700,"10000.00000000","0.00000200","0.00000200","0.00000200","0.00000200"]', '3', 0, 1486451700, 0, 0),
(2373, 'fc_cny', '[1486451813,"10000.00000000","0.00000200","0.00000200","0.00000200","0.00000200"]', '1', 0, 1486451813, 0, 0),
(2378, 'fc_cny', '[1486461600,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '720', 0, 1486461600, 0, 0),
(2379, 'fc_cny', '[1486461600,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1440', 0, 1486461600, 0, 0),
(2502, 'fc_cny', '[1486483200,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '30', 0, 1486483200, 0, 0),
(2511, 'fc_cny', '[1486483200,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '60', 0, 1486483200, 0, 0),
(2516, 'fc_cny', '[1486483200,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '120', 0, 1486483200, 0, 0),
(2518, 'fc_cny', '[1486476000,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '240', 0, 1486476000, 0, 0),
(2520, 'fc_cny', '[1486483200,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '360', 0, 1486483200, 0, 0),
(2620, 'fc_cny', '[1486484100,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '15', 0, 1486484100, 0, 0),
(2698, 'fc_cny', '[1486484400,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '10', 0, 1486484400, 0, 0),
(2874, 'fc_cny', '[1486484400,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486484400, 0, 0),
(2996, 'fc_cny', '[1486484460,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486484460, 0, 0),
(3383, 'fc_cny', '[1486484513,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486484513, 0, 0),
(3578, 'fc_cny', '[1486634400,"3190087.28000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '240', 0, 1486634400, 0, 0),
(3585, 'fc_cny', '[1486634400,"3200000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '360', 0, 1486634400, 0, 0),
(3589, 'fc_cny', '[1486634400,"3200000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '720', 0, 1486634400, 0, 0),
(3591, 'fc_cny', '[1486634400,"14710000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1440', 0, 1486634400, 0, 0),
(3740, 'fc_cny', '[1486641600,"3190087.28000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '120', 0, 1486641600, 0, 0),
(3870, 'fc_cny', '[1486641600,"1380087.28000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '60', 0, 1486641600, 0, 0),
(4110, 'fc_cny', '[1486643400,"1380087.28000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '30', 0, 1486643400, 0, 0),
(4526, 'fc_cny', '[1486643400,"1380087.28000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '15', 0, 1486643400, 0, 0),
(4930, 'fc_cny', '[1486643400,"1070087.28000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '10', 0, 1486643400, 0, 0),
(5738, 'fc_cny', '[1486643400,"320000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486643400, 0, 0),
(5739, 'fc_cny', '[1486643700,"750087.28000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486643700, 0, 0),
(6477, 'fc_cny', '[1486643400,"70000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486643400, 0, 0),
(6478, 'fc_cny', '[1486643580,"250000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486643580, 0, 0),
(6479, 'fc_cny', '[1486643760,"750087.28000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486643760, 0, 0),
(6648, 'fc_cny', '[1486643940,"310000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486643940, 0, 0),
(6985, 'fc_cny', '[1486644000,"310000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486644000, 0, 0),
(6986, 'fc_cny', '[1486644000,"310000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '10', 0, 1486644000, 0, 0),
(8337, 'fc_cny', '[1486643513,"70000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486643513, 0, 0),
(8339, 'fc_cny', '[1486643633,"250000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486643633, 0, 0),
(8341, 'fc_cny', '[1486643753,"130000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486643753, 0, 0),
(8342, 'fc_cny', '[1486643813,"620087.28000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486643813, 0, 0),
(8346, 'fc_cny', '[1486644053,"310000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486644053, 0, 0),
(8351, 'fc_cny', '[1486645200,"1810000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '30', 0, 1486645200, 0, 0),
(8352, 'fc_cny', '[1486645200,"1810000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '60', 0, 1486645200, 0, 0),
(8382, 'fc_cny', '[1486645560,"1810000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486645560, 0, 0),
(8387, 'fc_cny', '[1486645500,"1810000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486645500, 0, 0),
(8389, 'fc_cny', '[1486645200,"1810000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '10', 0, 1486645200, 0, 0),
(8391, 'fc_cny', '[1486645200,"1810000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '15', 0, 1486645200, 0, 0),
(8397, 'fc_cny', '[1486645613,"1810000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486645613, 0, 0),
(8404, 'fc_cny', '[1486648800,"9912.72000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '60', 0, 1486648800, 0, 0),
(8405, 'fc_cny', '[1486648800,"9912.72000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '120', 0, 1486648800, 0, 0),
(8406, 'fc_cny', '[1486648800,"9912.72000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '240', 0, 1486648800, 0, 0),
(8480, 'fc_cny', '[1486651800,"9912.72000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '10', 0, 1486651800, 0, 0),
(8488, 'fc_cny', '[1486651500,"9912.72000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '15', 0, 1486651500, 0, 0),
(8492, 'fc_cny', '[1486650600,"9912.72000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '30', 0, 1486650600, 0, 0),
(8532, 'fc_cny', '[1486652220,"9912.72000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486652220, 0, 0),
(8535, 'fc_cny', '[1486652100,"9912.72000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486652100, 0, 0),
(8611, 'fc_cny', '[1486652333,"9912.72000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486652333, 0, 0),
(8621, 'fc_cny', '[1486677600,"11510000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '720', 0, 1486677600, 0, 0),
(8760, 'fc_cny', '[1486695600,"6510000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '60', 0, 1486695600, 0, 0),
(8766, 'fc_cny', '[1486692000,"6510000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '120', 0, 1486692000, 0, 0),
(8769, 'fc_cny', '[1486692000,"11510000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '240', 0, 1486692000, 0, 0),
(8771, 'fc_cny', '[1486677600,"6510000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '360', 0, 1486677600, 0, 0),
(8882, 'fc_cny', '[1486697400,"6510000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '30', 0, 1486697400, 0, 0),
(8977, 'fc_cny', '[1486697400,"6510000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '15', 0, 1486697400, 0, 0),
(9056, 'fc_cny', '[1486697400,"1510000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '10', 0, 1486697400, 0, 0),
(9299, 'fc_cny', '[1486697700,"1510000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486697700, 0, 0),
(9426, 'fc_cny', '[1486698000,"5000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486698000, 0, 0),
(9427, 'fc_cny', '[1486698000,"5000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '10', 0, 1486698000, 0, 0),
(9503, 'fc_cny', '[1486697760,"10000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486697760, 0, 0),
(9504, 'fc_cny', '[1486697940,"3500000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486697940, 0, 0),
(9631, 'fc_cny', '[1486698120,"3000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486698120, 0, 0),
(10024, 'fc_cny', '[1486697933,"1510000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486697933, 0, 0),
(10025, 'fc_cny', '[1486697993,"2000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486697993, 0, 0),
(10029, 'fc_cny', '[1486698233,"3000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486698233, 0, 0),
(10037, 'fc_cny', '[1486699200,"5000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '120', 0, 1486699200, 0, 0),
(10038, 'fc_cny', '[1486699200,"5000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '360', 0, 1486699200, 0, 0),
(10114, 'fc_cny', '[1486705800,"5000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '10', 0, 1486705800, 0, 0),
(10123, 'fc_cny', '[1486705500,"5000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '15', 0, 1486705500, 0, 0),
(10127, 'fc_cny', '[1486704600,"5000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '30', 0, 1486704600, 0, 0),
(10129, 'fc_cny', '[1486702800,"5000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '60', 0, 1486702800, 0, 0),
(10178, 'fc_cny', '[1486706100,"5000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486706100, 0, 0),
(10203, 'fc_cny', '[1486706040,"5000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486706040, 0, 0),
(10278, 'fc_cny', '[1486706153,"5000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486706153, 0, 0),
(10288, 'fc_cny', '[1486720800,"1000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '360', 0, 1486720800, 0, 0),
(10289, 'fc_cny', '[1486720800,"1000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '720', 0, 1486720800, 0, 0),
(10290, 'fc_cny', '[1486720800,"1997668.21000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1440', 0, 1486720800, 0, 0),
(10408, 'fc_cny', '[1486728000,"1000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '30', 0, 1486728000, 0, 0),
(10415, 'fc_cny', '[1486728000,"1000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '60', 0, 1486728000, 0, 0),
(10419, 'fc_cny', '[1486728000,"1000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '120', 0, 1486728000, 0, 0),
(10421, 'fc_cny', '[1486720800,"1000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '240', 0, 1486720800, 0, 0),
(10501, 'fc_cny', '[1486728000,"1000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '10', 0, 1486728000, 0, 0),
(10506, 'fc_cny', '[1486728000,"1000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '15', 0, 1486728000, 0, 0),
(10624, 'fc_cny', '[1486728000,"1000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486728000, 0, 0),
(10733, 'fc_cny', '[1486728180,"1000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486728180, 0, 0),
(10973, 'fc_cny', '[1486728233,"1000000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486728233, 0, 0),
(10986, 'fc_cny', '[1486764000,"997668.21000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '720', 0, 1486764000, 0, 0),
(11125, 'fc_cny', '[1486774800,"500000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '60', 0, 1486774800, 0, 0),
(11131, 'fc_cny', '[1486771200,"500000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '120', 0, 1486771200, 0, 0),
(11134, 'fc_cny', '[1486764000,"500000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '240', 0, 1486764000, 0, 0),
(11136, 'fc_cny', '[1486764000,"500000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '360', 0, 1486764000, 0, 0),
(11248, 'fc_cny', '[1486776600,"500000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '30', 0, 1486776600, 0, 0),
(11346, 'fc_cny', '[1486776600,"500000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '15', 0, 1486776600, 0, 0),
(11430, 'fc_cny', '[1486776600,"500000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '10', 0, 1486776600, 0, 0),
(11728, 'fc_cny', '[1486776900,"500000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486776900, 0, 0),
(11930, 'fc_cny', '[1486776960,"500000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486776960, 0, 0),
(12169, 'fc_cny', '[1486778400,"497668.21000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '240', 0, 1486778400, 0, 0),
(12494, 'fc_cny', '[1486777073,"500000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486777073, 0, 0),
(12506, 'fc_cny', '[1486785600,"497668.21000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '360', 0, 1486785600, 0, 0),
(12606, 'fc_cny', '[1486791000,"400000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '15', 0, 1486791000, 0, 0),
(12614, 'fc_cny', '[1486791000,"497668.21000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '30', 0, 1486791000, 0, 0),
(12618, 'fc_cny', '[1486789200,"497668.21000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '60', 0, 1486789200, 0, 0),
(12620, 'fc_cny', '[1486785600,"497668.21000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '120', 0, 1486785600, 0, 0),
(12688, 'fc_cny', '[1486791600,"497668.21000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '10', 0, 1486791600, 0, 0),
(12739, 'fc_cny', '[1486791600,"400000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486791600, 0, 0),
(12779, 'fc_cny', '[1486791720,"400000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486791720, 0, 0),
(12906, 'fc_cny', '[1486791900,"96923.96000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486791900, 0, 0),
(12907, 'fc_cny', '[1486791900,"97668.21000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '5', 0, 1486791900, 0, 0),
(12908, 'fc_cny', '[1486791900,"97668.21000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '15', 0, 1486791900, 0, 0),
(12945, 'fc_cny', '[1486791833,"400000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486791833, 0, 0),
(12949, 'fc_cny', '[1486792013,"90000.00000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486792013, 0, 0),
(12950, 'fc_cny', '[1486792073,"7668.21000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '1', 0, 1486792073, 0, 0),
(12951, 'fc_cny', '[1486792080,"744.25000000","0.00000100","0.00000100","0.00000100","0.00000100"]', '3', 0, 1486792080, 0, 0),
(12952, 'fc_cny', '', '1', 0, 1486792133, 0, 0),
(12953, 'fc_cny', '', '5', 0, 1486792200, 0, 0),
(12954, 'fc_cny', '', '10', 0, 1486792200, 0, 0),
(12955, 'fc_cny', '', '3', 0, 1486792260, 0, 0),
(12956, 'fc_cny', '', '15', 0, 1486792800, 0, 0),
(12957, 'fc_cny', '', '30', 0, 1486792800, 0, 0),
(12958, 'fc_cny', '', '60', 0, 1486792800, 0, 0),
(12959, 'fc_cny', '', '120', 0, 1486792800, 0, 0),
(12960, 'fc_cny', '', '240', 0, 1486792800, 0, 0),
(12961, 'fc_cny', '', '360', 0, 1486807200, 0, 0),
(12962, 'fc_cny', '', '720', 0, 1486807200, 0, 0),
(12963, 'fc_cny', '', '1440', 0, 1486807200, 0, 0),
(12964, 'fc_cny', '', '10080', 0, 1486980000, 0, 0),
(12965, 'hjc_cny', '[1498821889,"100.00000000","890.00000000","890.00000000","890.00000000","890.00000000"]', '1', 0, 1498821889, 0, 0),
(12966, 'hjc_cny', '[1498821840,"600.00000000","890.00000000","891.50000000","890.00000000","891.50000000"]', '3', 0, 1498821840, 0, 0),
(12967, 'hjc_cny', '[1498821600,"100.00000000","890.00000000","890.00000000","890.00000000","890.00000000"]', '5', 0, 1498821600, 0, 0),
(12968, 'hjc_cny', '[1498821600,"600.00000000","890.00000000","891.50000000","890.00000000","891.50000000"]', '10', 0, 1498821600, 0, 0),
(12969, 'hjc_cny', '[1498821300,"600.00000000","890.00000000","891.50000000","890.00000000","891.50000000"]', '15', 0, 1498821300, 0, 0),
(12970, 'hjc_cny', '[1498820400,"600.00000000","890.00000000","891.50000000","890.00000000","891.50000000"]', '30', 0, 1498820400, 0, 0),
(12971, 'hjc_cny', '[1498820400,"600.00000000","890.00000000","891.50000000","890.00000000","891.50000000"]', '60', 0, 1498820400, 0, 0),
(12972, 'hjc_cny', '[1498820400,"600.00000000","890.00000000","891.50000000","890.00000000","891.50000000"]', '120', 0, 1498820400, 0, 0),
(12973, 'hjc_cny', '[1498820400,"600.00000000","890.00000000","891.50000000","890.00000000","891.50000000"]', '240', 0, 1498820400, 0, 0),
(12974, 'hjc_cny', '[1498820400,"600.00000000","890.00000000","891.50000000","890.00000000","891.50000000"]', '360', 0, 1498820400, 0, 0),
(12975, 'hjc_cny', '[1498820400,"600.00000000","890.00000000","891.50000000","890.00000000","891.50000000"]', '720', 0, 1498820400, 0, 0),
(12976, 'hjc_cny', '[1498820400,"600.00000000","890.00000000","891.50000000","890.00000000","891.50000000"]', '1440', 0, 1498820400, 0, 0),
(12977, 'hjc_cny', '[1498820400,"600.00000000","890.00000000","891.50000000","890.00000000","891.50000000"]', '10080', 0, 1498820400, 0, 0),
(12978, 'hjc_cny', '[1498821900,"500.00000000","891.50000000","891.50000000","891.50000000","891.50000000"]', '5', 0, 1498821900, 0, 0),
(12979, 'hjc_cny', '[1498821949,"500.00000000","891.50000000","891.50000000","891.50000000","891.50000000"]', '1', 0, 1498821949, 0, 0),
(12982, 'ydc_cny', '[1498820400,"5200.00000000","65.00000000","66.00000000","65.00000000","66.00000000"]', '60', 0, 1498820400, 0, 0),
(12983, 'ydc_cny', '[1498820400,"5200.00000000","65.00000000","66.00000000","65.00000000","66.00000000"]', '120', 0, 1498820400, 0, 0),
(12984, 'ydc_cny', '[1498820400,"5200.00000000","65.00000000","66.00000000","65.00000000","66.00000000"]', '240', 0, 1498820400, 0, 0),
(12985, 'ydc_cny', '[1498820400,"5200.00000000","65.00000000","66.00000000","65.00000000","66.00000000"]', '360', 0, 1498820400, 0, 0),
(12986, 'ydc_cny', '[1498820400,"5200.00000000","65.00000000","66.00000000","65.00000000","66.00000000"]', '720', 0, 1498820400, 0, 0),
(12987, 'ydc_cny', '[1498820400,"5200.00000000","65.00000000","66.00000000","65.00000000","66.00000000"]', '1440', 0, 1498820400, 0, 0),
(12988, 'ydc_cny', '[1498820400,"5200.00000000","65.00000000","66.00000000","65.00000000","66.00000000"]', '10080', 0, 1498820400, 0, 0),
(12989, 'ydc_cny', '[1498822054,"5200.00000000","65.00000000","66.00000000","65.00000000","66.00000000"]', '1', 0, 1498822054, 0, 0),
(12990, 'ydc_cny', '[1498822020,"5200.00000000","65.00000000","66.00000000","65.00000000","66.00000000"]', '3', 0, 1498822020, 0, 0),
(12991, 'ydc_cny', '[1498821900,"5200.00000000","65.00000000","66.00000000","65.00000000","66.00000000"]', '5', 0, 1498821900, 0, 0),
(12992, 'ydc_cny', '[1498821600,"5200.00000000","65.00000000","66.00000000","65.00000000","66.00000000"]', '10', 0, 1498821600, 0, 0),
(12993, 'ydc_cny', '[1498821300,"5200.00000000","65.00000000","66.00000000","65.00000000","66.00000000"]', '15', 0, 1498821300, 0, 0),
(12994, 'ydc_cny', '[1498820400,"5200.00000000","65.00000000","66.00000000","65.00000000","66.00000000"]', '30', 0, 1498820400, 0, 0),
(12995, 'ydc_cny', '', '1', 0, 1498822114, 0, 0),
(13099, 'hjc_cny', '[1499425200,"1.00000000","891.00000000","891.00000000","891.00000000","891.00000000"]', '10080', 0, 1499425200, 0, 0),
(13100, 'ydc_cny', '', '3', 0, 1498822200, 0, 0),
(13101, 'ydc_cny', '', '3', 0, 1498822380, 0, 0),
(13102, 'ydc_cny', '', '3', 0, 1498822560, 0, 0),
(13103, 'ydc_cny', '', '3', 0, 1498822740, 0, 0),
(13104, 'ydc_cny', '', '3', 0, 1498822920, 0, 0),
(13105, 'ydc_cny', '', '3', 0, 1498823100, 0, 0),
(13106, 'ydc_cny', '', '3', 0, 1498823280, 0, 0),
(13107, 'ydc_cny', '', '3', 0, 1498823460, 0, 0),
(13108, 'ydc_cny', '', '3', 0, 1498823640, 0, 0),
(13109, 'ydc_cny', '', '3', 0, 1498823820, 0, 0),
(13110, 'ydc_cny', '', '3', 0, 1498824000, 0, 0),
(13111, 'ydc_cny', '', '3', 0, 1498824180, 0, 0),
(13112, 'ydc_cny', '', '3', 0, 1498824360, 0, 0),
(13113, 'ydc_cny', '', '3', 0, 1498824540, 0, 0),
(13114, 'ydc_cny', '', '3', 0, 1498824720, 0, 0),
(13115, 'ydc_cny', '', '3', 0, 1498824900, 0, 0),
(13116, 'ydc_cny', '', '3', 0, 1498825080, 0, 0),
(13117, 'ydc_cny', '', '3', 0, 1498825260, 0, 0),
(13118, 'ydc_cny', '', '3', 0, 1498825440, 0, 0),
(13119, 'ydc_cny', '', '3', 0, 1498825620, 0, 0),
(13120, 'ydc_cny', '', '5', 0, 1498822200, 0, 0),
(13121, 'ydc_cny', '', '5', 0, 1498822500, 0, 0),
(13122, 'ydc_cny', '', '5', 0, 1498822800, 0, 0),
(13123, 'ydc_cny', '', '5', 0, 1498823100, 0, 0),
(13124, 'ydc_cny', '', '5', 0, 1498823400, 0, 0),
(13125, 'ydc_cny', '', '5', 0, 1498823700, 0, 0),
(13126, 'ydc_cny', '', '5', 0, 1498824000, 0, 0),
(13127, 'ydc_cny', '', '5', 0, 1498824300, 0, 0),
(13128, 'ydc_cny', '', '5', 0, 1498824600, 0, 0),
(13129, 'ydc_cny', '', '5', 0, 1498824900, 0, 0),
(13130, 'ydc_cny', '', '5', 0, 1498825200, 0, 0),
(13131, 'ydc_cny', '', '5', 0, 1498825500, 0, 0),
(13132, 'ydc_cny', '', '5', 0, 1498825800, 0, 0),
(13133, 'ydc_cny', '', '5', 0, 1498826100, 0, 0),
(13134, 'ydc_cny', '', '5', 0, 1498826400, 0, 0),
(13135, 'ydc_cny', '', '5', 0, 1498826700, 0, 0),
(13136, 'ydc_cny', '', '5', 0, 1498827000, 0, 0),
(13137, 'ydc_cny', '', '5', 0, 1498827300, 0, 0),
(13138, 'ydc_cny', '', '5', 0, 1498827600, 0, 0),
(13139, 'ydc_cny', '', '5', 0, 1498827900, 0, 0),
(13140, 'ydc_cny', '', '10', 0, 1498822200, 0, 0),
(13141, 'ydc_cny', '', '10', 0, 1498822800, 0, 0),
(13142, 'ydc_cny', '', '10', 0, 1498823400, 0, 0),
(13143, 'ydc_cny', '', '10', 0, 1498824000, 0, 0),
(13144, 'ydc_cny', '', '10', 0, 1498824600, 0, 0),
(13145, 'ydc_cny', '', '10', 0, 1498825200, 0, 0),
(13146, 'ydc_cny', '', '10', 0, 1498825800, 0, 0),
(13147, 'ydc_cny', '', '10', 0, 1498826400, 0, 0),
(13148, 'ydc_cny', '', '10', 0, 1498827000, 0, 0),
(13149, 'ydc_cny', '', '10', 0, 1498827600, 0, 0),
(13150, 'ydc_cny', '', '10', 0, 1498828200, 0, 0),
(13151, 'ydc_cny', '', '10', 0, 1498828800, 0, 0),
(13152, 'ydc_cny', '', '10', 0, 1498829400, 0, 0),
(13153, 'ydc_cny', '', '10', 0, 1498830000, 0, 0),
(13154, 'ydc_cny', '', '10', 0, 1498830600, 0, 0),
(13155, 'ydc_cny', '', '10', 0, 1498831200, 0, 0),
(13156, 'ydc_cny', '', '10', 0, 1498831800, 0, 0),
(13157, 'ydc_cny', '', '10', 0, 1498832400, 0, 0),
(13158, 'ydc_cny', '', '10', 0, 1498833000, 0, 0),
(13159, 'ydc_cny', '', '10', 0, 1498833600, 0, 0),
(13160, 'ydc_cny', '', '15', 0, 1498822200, 0, 0),
(13161, 'ydc_cny', '', '15', 0, 1498823100, 0, 0),
(13162, 'ydc_cny', '', '15', 0, 1498824000, 0, 0),
(13163, 'ydc_cny', '', '15', 0, 1498824900, 0, 0),
(13164, 'ydc_cny', '', '15', 0, 1498825800, 0, 0),
(13165, 'ydc_cny', '', '15', 0, 1498826700, 0, 0),
(13166, 'ydc_cny', '', '15', 0, 1498827600, 0, 0),
(13167, 'ydc_cny', '', '15', 0, 1498828500, 0, 0),
(13168, 'ydc_cny', '', '15', 0, 1498829400, 0, 0),
(13169, 'ydc_cny', '', '15', 0, 1498830300, 0, 0),
(13170, 'ydc_cny', '', '15', 0, 1498831200, 0, 0),
(13171, 'ydc_cny', '', '15', 0, 1498832100, 0, 0),
(13172, 'ydc_cny', '', '15', 0, 1498833000, 0, 0),
(13173, 'ydc_cny', '', '15', 0, 1498833900, 0, 0),
(13174, 'ydc_cny', '', '15', 0, 1498834800, 0, 0),
(13175, 'ydc_cny', '', '15', 0, 1498835700, 0, 0),
(13176, 'ydc_cny', '', '15', 0, 1498836600, 0, 0),
(13177, 'ydc_cny', '', '15', 0, 1498837500, 0, 0),
(13178, 'ydc_cny', '', '15', 0, 1498838400, 0, 0),
(13179, 'ydc_cny', '', '15', 0, 1498839300, 0, 0),
(13180, 'ydc_cny', '', '30', 0, 1498822200, 0, 0),
(13181, 'ydc_cny', '', '30', 0, 1498824000, 0, 0),
(13182, 'ydc_cny', '', '30', 0, 1498825800, 0, 0),
(13183, 'ydc_cny', '', '30', 0, 1498827600, 0, 0),
(13184, 'ydc_cny', '', '30', 0, 1498829400, 0, 0),
(13185, 'ydc_cny', '', '30', 0, 1498831200, 0, 0),
(13186, 'ydc_cny', '', '30', 0, 1498833000, 0, 0),
(13187, 'ydc_cny', '', '30', 0, 1498834800, 0, 0),
(13188, 'ydc_cny', '', '30', 0, 1498836600, 0, 0),
(13189, 'ydc_cny', '', '30', 0, 1498838400, 0, 0),
(13190, 'ydc_cny', '', '30', 0, 1498840200, 0, 0),
(13191, 'ydc_cny', '', '30', 0, 1498842000, 0, 0),
(13192, 'ydc_cny', '', '30', 0, 1498843800, 0, 0),
(13193, 'ydc_cny', '', '30', 0, 1498845600, 0, 0),
(13194, 'ydc_cny', '', '30', 0, 1498847400, 0, 0),
(13195, 'ydc_cny', '', '30', 0, 1498849200, 0, 0),
(13196, 'ydc_cny', '', '30', 0, 1498851000, 0, 0),
(13197, 'ydc_cny', '', '30', 0, 1498852800, 0, 0),
(13198, 'ydc_cny', '', '30', 0, 1498854600, 0, 0),
(13199, 'ydc_cny', '', '30', 0, 1498856400, 0, 0),
(13200, 'ydc_cny', '', '60', 0, 1498824000, 0, 0),
(13201, 'ydc_cny', '', '60', 0, 1498827600, 0, 0),
(13202, 'ydc_cny', '', '60', 0, 1498831200, 0, 0),
(13203, 'ydc_cny', '', '60', 0, 1498834800, 0, 0),
(13204, 'ydc_cny', '', '60', 0, 1498838400, 0, 0),
(13205, 'ydc_cny', '', '60', 0, 1498842000, 0, 0),
(13206, 'ydc_cny', '', '60', 0, 1498845600, 0, 0),
(13207, 'ydc_cny', '', '60', 0, 1498849200, 0, 0),
(13208, 'ydc_cny', '', '60', 0, 1498852800, 0, 0),
(13209, 'ydc_cny', '', '60', 0, 1498856400, 0, 0),
(13210, 'ydc_cny', '', '60', 0, 1498860000, 0, 0),
(13211, 'ydc_cny', '', '60', 0, 1498863600, 0, 0),
(13212, 'ydc_cny', '', '60', 0, 1498867200, 0, 0),
(13213, 'ydc_cny', '', '60', 0, 1498870800, 0, 0),
(13214, 'ydc_cny', '', '60', 0, 1498874400, 0, 0),
(13215, 'ydc_cny', '', '60', 0, 1498878000, 0, 0),
(13216, 'ydc_cny', '', '60', 0, 1498881600, 0, 0),
(13217, 'ydc_cny', '', '60', 0, 1498885200, 0, 0),
(13218, 'ydc_cny', '', '60', 0, 1498888800, 0, 0),
(13219, 'ydc_cny', '', '60', 0, 1498892400, 0, 0),
(13220, 'ydc_cny', '', '120', 0, 1498827600, 0, 0),
(13221, 'ydc_cny', '', '120', 0, 1498834800, 0, 0),
(13222, 'ydc_cny', '', '120', 0, 1498842000, 0, 0),
(13223, 'ydc_cny', '', '120', 0, 1498849200, 0, 0),
(13224, 'ydc_cny', '', '120', 0, 1498856400, 0, 0),
(13225, 'ydc_cny', '', '120', 0, 1498863600, 0, 0),
(13226, 'ydc_cny', '', '120', 0, 1498870800, 0, 0),
(13227, 'ydc_cny', '', '120', 0, 1498878000, 0, 0),
(13228, 'ydc_cny', '', '120', 0, 1498885200, 0, 0),
(13229, 'ydc_cny', '', '120', 0, 1498892400, 0, 0),
(13230, 'ydc_cny', '', '120', 0, 1498899600, 0, 0),
(13231, 'ydc_cny', '', '120', 0, 1498906800, 0, 0),
(13232, 'ydc_cny', '', '120', 0, 1498914000, 0, 0),
(13233, 'ydc_cny', '', '120', 0, 1498921200, 0, 0),
(13234, 'ydc_cny', '', '120', 0, 1498928400, 0, 0),
(13235, 'ydc_cny', '', '120', 0, 1498935600, 0, 0),
(13236, 'ydc_cny', '', '120', 0, 1498942800, 0, 0),
(13237, 'ydc_cny', '', '120', 0, 1498950000, 0, 0),
(13238, 'ydc_cny', '', '120', 0, 1498957200, 0, 0),
(13239, 'ydc_cny', '', '120', 0, 1498964400, 0, 0),
(13240, 'ydc_cny', '', '240', 0, 1498834800, 0, 0),
(13241, 'ydc_cny', '', '240', 0, 1498849200, 0, 0),
(13242, 'ydc_cny', '', '240', 0, 1498863600, 0, 0),
(13243, 'ydc_cny', '', '240', 0, 1498878000, 0, 0),
(13244, 'ydc_cny', '', '240', 0, 1498892400, 0, 0),
(13245, 'ydc_cny', '', '240', 0, 1498906800, 0, 0),
(13246, 'ydc_cny', '', '240', 0, 1498921200, 0, 0),
(13247, 'ydc_cny', '', '240', 0, 1498935600, 0, 0),
(13248, 'ydc_cny', '', '240', 0, 1498950000, 0, 0),
(13249, 'ydc_cny', '', '240', 0, 1498964400, 0, 0),
(13250, 'ydc_cny', '', '240', 0, 1498978800, 0, 0),
(13251, 'ydc_cny', '', '240', 0, 1498993200, 0, 0),
(13252, 'ydc_cny', '', '240', 0, 1499007600, 0, 0),
(13253, 'ydc_cny', '', '240', 0, 1499022000, 0, 0),
(13254, 'ydc_cny', '', '240', 0, 1499036400, 0, 0),
(13255, 'ydc_cny', '', '240', 0, 1499050800, 0, 0),
(13256, 'ydc_cny', '', '240', 0, 1499065200, 0, 0),
(13257, 'ydc_cny', '', '240', 0, 1499079600, 0, 0),
(13258, 'ydc_cny', '', '240', 0, 1499094000, 0, 0),
(13259, 'ydc_cny', '', '240', 0, 1499108400, 0, 0),
(13260, 'ydc_cny', '', '360', 0, 1498842000, 0, 0),
(13261, 'ydc_cny', '', '360', 0, 1498863600, 0, 0),
(13262, 'ydc_cny', '', '360', 0, 1498885200, 0, 0),
(13263, 'ydc_cny', '', '360', 0, 1498906800, 0, 0),
(13264, 'ydc_cny', '', '360', 0, 1498928400, 0, 0),
(13265, 'ydc_cny', '', '360', 0, 1498950000, 0, 0),
(13266, 'ydc_cny', '', '360', 0, 1498971600, 0, 0),
(13267, 'ydc_cny', '', '360', 0, 1498993200, 0, 0),
(13268, 'ydc_cny', '', '360', 0, 1499014800, 0, 0),
(13269, 'ydc_cny', '', '360', 0, 1499036400, 0, 0),
(13270, 'ydc_cny', '', '360', 0, 1499058000, 0, 0),
(13271, 'ydc_cny', '', '360', 0, 1499079600, 0, 0),
(13272, 'ydc_cny', '', '360', 0, 1499101200, 0, 0),
(13273, 'ydc_cny', '', '360', 0, 1499122800, 0, 0),
(13274, 'ydc_cny', '', '360', 0, 1499144400, 0, 0),
(13275, 'ydc_cny', '', '360', 0, 1499166000, 0, 0),
(13276, 'ydc_cny', '', '360', 0, 1499187600, 0, 0),
(13277, 'ydc_cny', '', '360', 0, 1499209200, 0, 0),
(13278, 'ydc_cny', '', '360', 0, 1499230800, 0, 0),
(13279, 'ydc_cny', '', '360', 0, 1499252400, 0, 0),
(13280, 'ydc_cny', '', '720', 0, 1498863600, 0, 0),
(13281, 'ydc_cny', '', '720', 0, 1498906800, 0, 0),
(13282, 'ydc_cny', '', '720', 0, 1498950000, 0, 0),
(13283, 'ydc_cny', '', '720', 0, 1498993200, 0, 0),
(13284, 'ydc_cny', '', '720', 0, 1499036400, 0, 0),
(13285, 'ydc_cny', '', '720', 0, 1499079600, 0, 0),
(13286, 'ydc_cny', '', '720', 0, 1499122800, 0, 0),
(13287, 'ydc_cny', '', '720', 0, 1499166000, 0, 0),
(13288, 'ydc_cny', '', '720', 0, 1499209200, 0, 0),
(13289, 'ydc_cny', '', '720', 0, 1499252400, 0, 0),
(13290, 'ydc_cny', '', '720', 0, 1499295600, 0, 0),
(13291, 'ydc_cny', '', '720', 0, 1499338800, 0, 0),
(13292, 'ydc_cny', '', '720', 0, 1499382000, 0, 0),
(13293, 'ydc_cny', '', '720', 0, 1499425200, 0, 0),
(13294, 'ydc_cny', '', '720', 0, 1499468400, 0, 0),
(13295, 'ydc_cny', '', '720', 0, 1499511600, 0, 0),
(13296, 'ydc_cny', '', '720', 0, 1499554800, 0, 0),
(13297, 'ydc_cny', '', '1440', 0, 1498906800, 0, 0),
(13298, 'ydc_cny', '', '1440', 0, 1498993200, 0, 0),
(13299, 'ydc_cny', '', '1440', 0, 1499079600, 0, 0),
(13300, 'ydc_cny', '', '1440', 0, 1499166000, 0, 0),
(13301, 'ydc_cny', '', '1440', 0, 1499252400, 0, 0),
(13302, 'ydc_cny', '', '1440', 0, 1499338800, 0, 0),
(13303, 'ydc_cny', '', '1440', 0, 1499425200, 0, 0),
(13304, 'ydc_cny', '', '1440', 0, 1499511600, 0, 0),
(13305, 'ydc_cny', '', '10080', 0, 1499425200, 0, 0),
(13513, 'hjc_cny', '[1499641200,"1.00000000","891.00000000","891.00000000","891.00000000","891.00000000"]', '360', 0, 1499641200, 0, 0),
(13520, 'hjc_cny', '[1499641200,"1.00000000","891.00000000","891.00000000","891.00000000","891.00000000"]', '720', 0, 1499641200, 0, 0),
(13524, 'hjc_cny', '[1499598000,"1.00000000","891.00000000","891.00000000","891.00000000","891.00000000"]', '1440', 0, 1499598000, 0, 0),
(13710, 'hjc_cny', '[1499641200,"1.00000000","891.00000000","891.00000000","891.00000000","891.00000000"]', '240', 0, 1499641200, 0, 0),
(14209, 'hjc_cny', '[1499648400,"1.00000000","891.00000000","891.00000000","891.00000000","891.00000000"]', '120', 0, 1499648400, 0, 0),
(15082, 'hjc_cny', '[1499652000,"1.00000000","891.00000000","891.00000000","891.00000000","891.00000000"]', '60', 0, 1499652000, 0, 0),
(16702, 'hjc_cny', '[1499653800,"1.00000000","891.00000000","891.00000000","891.00000000","891.00000000"]', '30', 0, 1499653800, 0, 0),
(19101, 'hjc_cny', '[1499653800,"1.00000000","891.00000000","891.00000000","891.00000000","891.00000000"]', '15', 0, 1499653800, 0, 0),
(19774, 'hjc_cny', '', '15', 0, 1499654700, 0, 0),
(21020, 'hjc_cny', '[1499653800,"1.00000000","891.00000000","891.00000000","891.00000000","891.00000000"]', '10', 0, 1499653800, 0, 0),
(21021, 'hjc_cny', '', '10', 0, 1499654400, 0, 0),
(25361, 'hjc_cny', '[1499654100,"1.00000000","891.00000000","891.00000000","891.00000000","891.00000000"]', '5', 0, 1499654100, 0, 0),
(25362, 'hjc_cny', '', '5', 0, 1499654400, 0, 0),
(25363, 'hjc_cny', '', '5', 0, 1499654700, 0, 0),
(25364, 'hjc_cny', '', '5', 0, 1499655000, 0, 0),
(28137, 'hjc_cny', '', '30', 0, 1499655600, 0, 0),
(28138, 'hjc_cny', '', '60', 0, 1499655600, 0, 0),
(28139, 'hjc_cny', '', '120', 0, 1499655600, 0, 0),
(28140, 'hjc_cny', '', '240', 0, 1499655600, 0, 0),
(29258, 'hjc_cny', '[1499654340,"1.00000000","891.00000000","891.00000000","891.00000000","891.00000000"]', '3', 0, 1499654340, 0, 0),
(29259, 'hjc_cny', '', '3', 0, 1499654520, 0, 0),
(29260, 'hjc_cny', '', '3', 0, 1499654700, 0, 0),
(29261, 'hjc_cny', '', '3', 0, 1499654880, 0, 0),
(29262, 'hjc_cny', '', '3', 0, 1499655060, 0, 0),
(29263, 'hjc_cny', '', '3', 0, 1499655240, 0, 0),
(29264, 'hjc_cny', '', '3', 0, 1499655420, 0, 0),
(29265, 'hjc_cny', '', '3', 0, 1499655600, 0, 0),
(39063, 'hjc_cny', '[1499654329,"1.00000000","891.00000000","891.00000000","891.00000000","891.00000000"]', '1', 0, 1499654329, 0, 0),
(39064, 'hjc_cny', '', '1', 0, 1499654389, 0, 0),
(39065, 'hjc_cny', '', '1', 0, 1499654449, 0, 0),
(39066, 'hjc_cny', '', '1', 0, 1499654389, 0, 0),
(39067, 'hjc_cny', '', '1', 0, 1499654509, 0, 0),
(39068, 'hjc_cny', '', '1', 0, 1499654449, 0, 0),
(39069, 'hjc_cny', '', '1', 0, 1499654569, 0, 0),
(39070, 'hjc_cny', '', '1', 0, 1499654509, 0, 0),
(39071, 'hjc_cny', '', '1', 0, 1499654629, 0, 0),
(39072, 'hjc_cny', '', '1', 0, 1499654569, 0, 0),
(39073, 'hjc_cny', '', '1', 0, 1499654689, 0, 0),
(39074, 'hjc_cny', '', '1', 0, 1499654629, 0, 0),
(39075, 'hjc_cny', '', '1', 0, 1499654749, 0, 0),
(39076, 'hjc_cny', '', '1', 0, 1499654689, 0, 0),
(39077, 'hjc_cny', '', '1', 0, 1499654809, 0, 0),
(39078, 'hjc_cny', '', '1', 0, 1499654749, 0, 0),
(39079, 'hjc_cny', '', '1', 0, 1499654869, 0, 0),
(39080, 'hjc_cny', '', '1', 0, 1499654809, 0, 0),
(39081, 'hjc_cny', '', '1', 0, 1499654869, 0, 0),
(39082, 'hjc_cny', '', '1', 0, 1499654929, 0, 0),
(39083, 'hjc_cny', '', '1', 0, 1499654989, 0, 0),
(39084, 'hjc_cny', '', '1', 0, 1499655049, 0, 0),
(39085, 'hjc_cny', '', '1', 0, 1499655109, 0, 0),
(39086, 'hjc_cny', '', '1', 0, 1499655169, 0, 0),
(39087, 'hjc_cny', '', '1', 0, 1499655229, 0, 0),
(39088, 'hjc_cny', '', '1', 0, 1499655289, 0, 0),
(39089, 'hjc_cny', '', '1', 0, 1499655349, 0, 0),
(39090, 'hjc_cny', '', '1', 0, 1499655409, 0, 0),
(39091, 'hjc_cny', '', '1', 0, 1499655469, 0, 0),
(39092, 'hjc_cny', '', '1', 0, 1499655529, 0, 0),
(39093, 'hjc_cny', '', '360', 0, 1499662800, 0, 0),
(39094, 'hjc_cny', '', '720', 0, 1499684400, 0, 0),
(39095, 'hjc_cny', '', '1440', 0, 1499684400, 0, 0),
(39096, 'hjc_cny', '', '10080', 0, 1500030000, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_trade_log`
--

CREATE TABLE IF NOT EXISTS `btchanges_trade_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `peerid` int(11) unsigned NOT NULL,
  `market` varchar(50) NOT NULL,
  `price` decimal(20,8) unsigned NOT NULL,
  `num` decimal(20,8) unsigned NOT NULL,
  `mum` decimal(20,8) unsigned NOT NULL,
  `fee_buy` decimal(20,8) unsigned NOT NULL,
  `fee_sell` decimal(20,8) unsigned NOT NULL,
  `type` tinyint(2) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `peerid` (`peerid`),
  KEY `main` (`market`,`status`,`addtime`) USING BTREE
) ENGINE=InnoDB  DEFAULT CHARSET=gbk AUTO_INCREMENT=39 ;

--
-- 转存表中的数据 `btchanges_trade_log`
--

INSERT INTO `btchanges_trade_log` (`id`, `userid`, `peerid`, `market`, `price`, `num`, `mum`, `fee_buy`, `fee_sell`, `type`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 20, 20, 'thc_cny', '0.10000000', '30.00000000', '3.00000000', '0.00000000', '0.00600000', 2, 0, 1480488356, 0, 1),
(2, 1, 1, 'fc_cny', '0.00000100', '100000.00000000', '0.10000000', '0.00000000', '0.00100000', 1, 0, 1486376993, 0, 1),
(3, 1, 1, 'fc_cny', '0.00000100', '10000.00000000', '0.01000000', '0.00000000', '0.00010000', 1, 0, 1486377127, 0, 1),
(4, 1, 1, 'fc_cny', '0.00000100', '690000.00000000', '0.69000000', '0.00000000', '0.00690000', 1, 0, 1486377476, 0, 1),
(5, 1, 1, 'fc_cny', '0.00000200', '10000.00000000', '0.02000000', '0.00000000', '0.00020000', 1, 0, 1486451816, 0, 1),
(6, 1, 1, 'fc_cny', '0.00000100', '10000.00000000', '0.01000000', '0.00000000', '0.00012330', 2, 0, 1486484538, 0, 1),
(7, 1, 1, 'fc_cny', '0.00000100', '14666.87000000', '0.01466687', '0.00000000', '0.00018084', 1, 0, 1486643544, 0, 1),
(8, 1, 1, 'fc_cny', '0.00000100', '32600.24000000', '0.03260024', '0.00000000', '0.00040196', 1, 0, 1486643544, 0, 1),
(9, 1, 1, 'fc_cny', '0.00000100', '22732.89000000', '0.02273289', '0.00000000', '0.00028030', 1, 0, 1486643545, 0, 1),
(10, 1, 1, 'fc_cny', '0.00000100', '87.28000000', '0.00008728', '0.00000000', '0.00000108', 1, 0, 1486643653, 0, 1),
(11, 1, 1, 'fc_cny', '0.00000100', '249912.72000000', '0.24991272', '0.00000000', '0.00308142', 1, 0, 1486643653, 0, 1),
(12, 1, 1, 'fc_cny', '0.00000100', '130000.00000000', '0.13000000', '0.00000000', '0.00160290', 1, 0, 1486643779, 0, 1),
(13, 17, 1, 'fc_cny', '0.00000100', '620087.28000000', '0.62008728', '0.00000000', '0.00764568', 1, 0, 1486643817, 0, 1),
(14, 17, 1, 'fc_cny', '0.00000100', '129912.72000000', '0.12991272', '0.00000000', '0.00160182', 2, 0, 1486644070, 0, 1),
(15, 5, 1, 'fc_cny', '0.00000100', '180087.28000000', '0.18008728', '0.00000000', '0.00222048', 2, 0, 1486644070, 0, 1),
(16, 5, 1, 'fc_cny', '0.00000100', '1810000.00000000', '1.81000000', '0.00000000', '0.02231730', 2, 0, 1486645637, 0, 1),
(17, 5, 1, 'fc_cny', '0.00000100', '9912.72000000', '0.00991272', '0.00000000', '0.00012222', 2, 0, 1486652378, 0, 1),
(18, 1, 1, 'fc_cny', '0.00000100', '10000.00000000', '0.01000000', '0.00000000', '0.00012330', 1, 0, 1486697937, 0, 1),
(19, 1, 1, 'fc_cny', '0.00000100', '1500000.00000000', '1.50000000', '0.00000000', '0.01849500', 1, 0, 1486697978, 0, 1),
(20, 1, 8, 'fc_cny', '0.00000100', '1000000.00000000', '1.00000000', '0.00000000', '0.01233000', 1, 0, 1486698031, 0, 1),
(21, 1, 8, 'fc_cny', '0.00000100', '1000000.00000000', '1.00000000', '0.00000000', '0.01233000', 1, 0, 1486698031, 0, 1),
(22, 1, 8, 'fc_cny', '0.00000100', '1000000.00000000', '1.00000000', '0.00000000', '0.01233000', 1, 0, 1486698235, 0, 1),
(23, 1, 8, 'fc_cny', '0.00000100', '1000000.00000000', '1.00000000', '0.00000000', '0.01233000', 1, 0, 1486698235, 0, 1),
(24, 1, 8, 'fc_cny', '0.00000100', '1000000.00000000', '1.00000000', '0.00000000', '0.01233000', 1, 0, 1486698235, 0, 1),
(25, 1, 1, 'fc_cny', '0.00000100', '5000000.00000000', '5.00000000', '0.00000000', '0.06165000', 1, 0, 1486706161, 0, 1),
(26, 24, 21, 'fc_cny', '0.00000100', '1000000.00000000', '1.00000000', '0.00000000', '0.01233000', 1, 0, 1486728252, 0, 1),
(27, 24, 21, 'fc_cny', '0.00000100', '500000.00000000', '0.50000000', '0.00116500', '0.00616500', 1, 0, 1486777111, 0, 1),
(28, 24, 21, 'fc_cny', '0.00000100', '100000.00000000', '0.10000000', '0.00023300', '0.00123300', 1, 0, 1486791840, 0, 1),
(29, 24, 21, 'fc_cny', '0.00000100', '300000.00000000', '0.30000000', '0.00069900', '0.00369900', 1, 0, 1486791892, 0, 1),
(30, 24, 21, 'fc_cny', '0.00000100', '90000.00000000', '0.09000000', '0.00020970', '0.00110970', 1, 0, 1486792050, 0, 1),
(31, 24, 21, 'fc_cny', '0.00000100', '6923.96000000', '0.00692396', '0.00001613', '0.00008537', 1, 0, 1486792077, 0, 1),
(32, 24, 21, 'fc_cny', '0.00000100', '677.88000000', '0.00067788', '0.00000158', '0.00000836', 1, 0, 1486792110, 0, 1),
(33, 24, 21, 'fc_cny', '0.00000100', '66.37000000', '0.00006637', '0.00000015', '0.00000082', 1, 0, 1486792126, 0, 1),
(34, 38, 39, 'hjc_cny', '890.00000000', '100.00000000', '89000.00000000', '0.00000000', '445.00000000', 1, 0, 1498821889, 0, 1),
(35, 38, 39, 'hjc_cny', '891.50000000', '500.00000000', '445750.00000000', '0.00000000', '2228.75000000', 2, 0, 1498821988, 0, 1),
(36, 38, 39, 'ydc_cny', '65.00000000', '5000.00000000', '325000.00000000', '0.00000000', '1625.00000000', 1, 0, 1498822054, 0, 1),
(37, 38, 39, 'ydc_cny', '66.00000000', '200.00000000', '13200.00000000', '0.00000000', '66.00000000', 2, 0, 1498822100, 0, 1),
(38, 39, 39, 'hjc_cny', '891.00000000', '1.00000000', '891.00000000', '0.00000000', '4.45500000', 1, 0, 1499654371, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_ucenter_member`
--

CREATE TABLE IF NOT EXISTS `btchanges_ucenter_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `last_login_time` datetime DEFAULT NULL,
  `last_login_ip` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=gbk AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_user`
--

CREATE TABLE IF NOT EXISTS `btchanges_user` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `moble` varchar(50) NOT NULL,
  `mobletime` int(11) unsigned NOT NULL,
  `password` varchar(32) NOT NULL,
  `tpwdsetting` varchar(32) NOT NULL,
  `paypassword` varchar(32) NOT NULL,
  `invit_1` varchar(50) NOT NULL,
  `invit_2` varchar(50) NOT NULL,
  `invit_3` varchar(50) NOT NULL,
  `truename` varchar(32) NOT NULL,
  `idcard` varchar(32) NOT NULL,
  `logins` int(11) unsigned NOT NULL,
  `ga` varchar(50) NOT NULL,
  `addip` varchar(50) NOT NULL,
  `addr` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `alipay` varchar(200) DEFAULT NULL COMMENT '支付宝',
  `invit` varchar(50) NOT NULL,
  `token` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户信息表' AUTO_INCREMENT=45 ;

--
-- 转存表中的数据 `btchanges_user`
--

INSERT INTO `btchanges_user` (`id`, `username`, `moble`, `mobletime`, `password`, `tpwdsetting`, `paypassword`, `invit_1`, `invit_2`, `invit_3`, `truename`, `idcard`, `logins`, `ga`, `addip`, `addr`, `sort`, `addtime`, `endtime`, `status`, `email`, `alipay`, `invit`, `token`) VALUES
(1, 'jw1203', '15611811882', 1486351562, '21218cca77804d2ba1922c33e0151105', '1', '98142492b9236b8c1fe2a59f4d080e40', '0', '0', '0', '谷嘉伟', '330324199912035754', 38, '', '113.214.206.223', '未分配或者内网IP', 0, 1486350592, 0, 1, '', '', 'AXSGBL', ''),
(2, 'LuvLetter', '', 0, '3c8dcf88578bd1475709e7c49a0603fc', '1', '70c0b5e5b68e41888d6b236481f6e86b', '1', '0', '0', '吴国荣', '452133199712045226', 0, '', '117.181.108.188', '未分配或者内网IP', 0, 1486357610, 0, 1, '', '', 'BLSIGJ', ''),
(3, 'syz98810', '', 0, 'c428b5bfca4d793bcbfaf110d13425f1', '1', 'e473b0e779507c5520a2eb604992db35', '1', '0', '0', '沈宇哲', '330402199808101210', 0, '', '125.124.10.92', '未分配或者内网IP', 0, 1486374650, 0, 1, '', '', 'VRQAJW', ''),
(4, 'Ending', '', 0, '9e86b324d70f429d7f0c68be19c5b089', '1', 'b458314add1ad2741b0ae28db4b273c9', '1', '0', '0', '刘伟', '34240119970620817X', 1, '', '117.136.103.229', '未分配或者内网IP', 0, 1486382339, 0, 1, '', '', 'UMDIEC', ''),
(5, 'reptilier', '13251930165', 1486383814, '0c0e91faac7f7160ed47c89b344851b5', '1', 'bc772372a7bc9f64f64aea3d4e6723ca', '1', '0', '0', '马哲铖', '330402199804281218', 8, '', '115.229.84.103', '未分配或者内网IP', 0, 1486383733, 0, 1, '', '', 'WTKAXJ', ''),
(6, 'guge23', '', 0, 'e10adc3949ba59abbe56e057f20f883e', '1', '26d48793ea0006b6bd6c4628b886109d', '1', '0', '0', '谷明仕', '330324197609015751', 0, '', '113.214.206.223', '未分配或者内网IP', 0, 1486387002, 0, 1, '', '', 'YLQKST', ''),
(7, 'jingruichen', '', 0, '4054f6b9082941e7b7092342eb88b192', '1', 'a3e8c7aab72556286c5846acb98a856c', '1', '0', '0', '陈镜睿', '360702199808180635', 2, '', '106.226.10.81', '未分配或者内网IP', 0, 1486388709, 0, 1, '', '', 'UZWADP', ''),
(8, 'peterfsk', '18157316153', 1486392712, '88ea69907c11a2e59e864600cebd41c8', '1', 'c399416bbea447fbc6be5ca37dfad85d', '1', '0', '0', '范孙恺', '33040219980209091X', 17, '', '106.39.190.44', '未分配或者内网IP', 0, 1486392364, 0, 1, '', '', 'MJSRIX', ''),
(9, 'HDDDDD', '', 0, '6ec17775157f0d60b27134becf288a05', '1', 'd0c0975d29a8c02ae5b74e5930b92554', '1', '0', '0', '贺丹', '330402199810210643', 0, '', '112.17.247.253', '未分配或者内网IP', 0, 1486396563, 0, 1, '', '', 'ISTJDY', ''),
(10, 'aq505151976', '', 0, 'f906a19cf15e50743db14e32cb7e25a8', '1', 'ec84dad650cf1d1a02f8b82ebfa91907', '1', '0', '0', '章奇妙', '330381199808172211', 0, '', '60.180.71.153', '未分配或者内网IP', 0, 1486397039, 0, 1, '', '', 'USCFKR', ''),
(11, 'bigbigbig', '13040689766', 1486446994, '6b0c8624d4ab5d35f08e89a76550ea0f', '1', '19174d664671c953d840f7a0052d7441', '1', '0', '0', '丁绵勇', '342423199710211775', 6, '', '140.206.89.82', '未分配或者内网IP', 0, 1486446517, 0, 1, '', '', 'MQFVWN', ''),
(12, 'Darkness', '15979197685', 1486811320, 'cc33e4800ad415eab404f97599cd460f', '1', '9a4c0d79d7b0e9bf36dbabe850eda23e', '1', '0', '0', '刘洋', '360702199812240012', 14, '', '106.226.4.29', '未分配或者内网IP', 0, 1486482799, 0, 1, '', '', 'XZFDBP', ''),
(13, 'Lucifer', '18358337665', 1486484344, '7309b2ecf953eb53b58c505be56cf980', '1', '669e834f744d25d0f1b733d4cb7fde23', '1', '0', '0', '阮宇成', '330402199804130612', 3, '', '112.17.239.80', '未分配或者内网IP', 0, 1486484260, 0, 1, '', '', 'LPHUVD', ''),
(14, 'sdtc155433', '', 0, '0a6093fba14c1db5fe4e3bc3cf2c07af', '1', '2cf56dde48418a64f487a5e84792c010', '1', '0', '0', '侯章辉', '371322199510155433', 3, '', '117.136.93.200', '未分配或者内网IP', 0, 1486530430, 0, 1, '', '', 'CHIJNQ', ''),
(15, 'myc1159394940', '', 0, '78ae6683859bff9ff25fc719507880a5', '1', 'ca0e2e33f38bbb6a9d3fa713199a56b6', '1', '0', '0', '莫怡超', '330411199808196017', 0, '', '183.140.195.134', '未分配或者内网IP', 0, 1486534090, 0, 1, '', '', 'EHJFDR', ''),
(16, 'huangxin198211', '', 0, 'db4c7ad8d50e3655296ff972ee23d601', '1', 'b5a747937aec219a7a9b1cdf4293d663', '0', '0', '0', '黄星星', '42100419820113201X', 0, '', '43.227.137.216', '未分配或者内网IP', 0, 1486551319, 0, 1, '', '', 'TEKBWS', ''),
(17, 'aw1355605638', '18126780907', 1486712685, 'd251aefa1238e38c749ba098bf22e9ac', '1', 'c8837b23ff8aaa8a2dde915473ce0991', '1', '0', '0', '唐炫辉', '430502200206051038', 16, '', '58.248.146.191', '未分配或者内网IP', 0, 1486570336, 0, 1, '', '', 'UCEJSK', ''),
(18, 'zyq19980523', '', 0, '45e573c2dcda0b944f9847d14f06f5da', '1', 'd3b9f9c2efecadc951c89fc432a8ff2e', '0', '0', '0', '周颖倩', '330411199805235420', 0, '', '113.214.206.198', '未分配或者内网IP', 0, 1486650542, 0, 1, '', '', 'HLXBZM', ''),
(19, 'Laozhaoyi', '17666894181', 1486694685, 'b0f01673191645c887086a7c1c30561d', '1', 'c9cf7b139ec7ce0dcc58e5c7cbd6a465', '1', '0', '0', '劳钊溢', '440881200604010032', 6, '', '183.0.91.215', '未分配或者内网IP', 0, 1486694092, 0, 1, '', '', 'AQSKFH', ''),
(21, 'aidmong', '13736471419', 1487463612, 'f39e7d658f9a91031413c543eedc8baa', '1', '316c4881faa758c78bf697d08a598c46', '1', '0', '0', '计廷禹', '330411199808265457', 8, '', '112.17.243.137', '未分配或者内网IP', 0, 1486705609, 0, 1, '', '', 'WYXPTI', ''),
(22, 'lanlanlu', '', 0, 'a5706bbdb85a4676e1663a6796bfe09a', '1', 'fb0b32aeafac4591c7ae6d5e58308344', '19', '1', '0', '黄民昆', '440881200603025910', 1, '', '183.44.167.136', '未分配或者内网IP', 0, 1486711596, 0, 1, '', '', 'NYQWRL', ''),
(23, 'xiaoguaibao', '18056039681', 1487925282, 'd5d95c28d54866641de28fc507cf4de7', '1', '392e39a9a96030483ec8b426c39ba744', '1', '0', '0', '许鹏举', '340121200010235818', 25, '', '183.160.91.132', '未分配或者内网IP', 0, 1486715496, 0, 1, '', '', 'VIASCZ', ''),
(24, 'launch', '13862733266', 1486727313, '922105f6960a4b789444dedab38e48d2', '1', '26404b56bf4ed9eace12aa7d967e92b4', '1', '0', '0', '张顾皓', '320682200503290010', 10, '', '180.98.99.230', '未分配或者内网IP', 0, 1486726307, 0, 1, '', '', 'AGTYHS', ''),
(25, 'a1073951', '', 0, 'e17c31370c906d54b7d9a8a5720929c2', '1', 'e430586b6f3b1f0aa17e6dd5aac25283', '0', '0', '0', '汪泓玉', '340121200107265829', 1, '', '183.160.90.171', '未分配或者内网IP', 0, 1486798864, 0, 1, '', '', 'XJPIAU', ''),
(26, 'gujie58518', '13862733675', 1486816963, 'ca3520985ed29aea87ef2d0dc0f232ed', '1', '2e2e5530dd65fc61edb4a69af154f8ec', '24', '1', '0', '顾杰', '320682198510170033', 0, '', '180.121.137.127', '未分配或者内网IP', 0, 1486816911, 0, 1, '', '', 'QZNULE', ''),
(27, 'YAL1314', '18737476867', 1486865040, '667c69e42ec31cb36d9753ca3732bd1d', '2', '138b41fdc3448b47969f52ddc55b078b', '0', '0', '0', '杨帆', '411082199908037210', 0, '', '123.161.131.99', '未分配或者内网IP', 0, 1486864902, 0, 1, '', '', 'RUJWHE', ''),
(29, 'jiajin', '', 0, 'bfd59291e825b5f2bbf1eb76569f8fe7', '1', '67f25e32a1f618784c7ca83b982148cb', '1', '0', '0', '农谨毓', '450104199801032017', 1, '', '113.12.126.98', '未分配或者内网IP', 0, 1486868274, 0, 1, '', '', 'TEJWAV', ''),
(31, 'taupo22333', '', 0, '25f9e794323b453885f5181f1b624d0b', '1', '94e7e84260b7a892cd844b1f89ac112f', '23', '1', '0', '吴高军', '411722197508214014', 0, '', '120.209.199.176', '未分配或者内网IP', 0, 1487229974, 0, 1, '', '', 'JEUTRF', ''),
(32, 'YanLong', '', 0, '94cd798a2f0e404afc6ad04a7be0d070', '1', '7660c706ee531a7ec62424ba78370583', '0', '0', '0', '', '', 0, '', '119.44.13.86', '未分配或者内网IP', 0, 1487826143, 0, 1, '', '', 'FUMCKN', ''),
(33, 'HJH201314', '15625397127', 1488092597, 'ef725fcfaad11737497918ecc80e86ca', '1', 'dc5bbbc0cb308f31a8ab93aab500aee7', '1', '0', '0', '黄伟文', '44200019740730765X', 0, '', '183.31.130.131', '未分配或者内网IP', 0, 1488092493, 0, 1, '', '', 'PITQFL', ''),
(34, 'cy3329660', '', 0, '2322877d7ee6c2fb0e49df8fce32d19a', '1', 'd28618e8ef27702ddcb1ce6323ad8028', '0', '0', '0', '陈云', '360313198503174771', 0, '', '14.112.230.0', '未分配或者内网IP', 0, 1489824264, 0, 1, '', '', 'EARBSG', ''),
(35, 'herochao', '15577744683', 0, 'e10adc3949ba59abbe56e057f20f883e', '3', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '0', '国际经', '452745159863254118', 2, '', '183.204.66.91', '未分配或者内网IP', 0, 1491997482, 0, 1, '', '', 'EKJSUM', ''),
(36, 'q123456', '18936300521', 1496498954, '96e79218965eb72c92a549dd5a330112', '1', '96e79218965eb72c92a549dd5a330112', '0', '0', '0', '露露', '230101198808081231', 3, '', '192.168.2.247', '未分配或者内网IP', 0, 1496498696, 0, 1, NULL, NULL, 'MJTKYR', NULL),
(37, 'wqqmao', '', 0, '8a6f2805b4515ac12058e79e66539be9', '1', '0ab44bd43d6b18fcd5cd928d6faab1b8', '0', '0', '0', '是是', '123456789012345678', 0, '', '192.168.2.247', '未分配或者内网IP', 0, 1496503673, 0, 1, NULL, NULL, 'HCQETY', NULL),
(38, 'qwer1234', '13800138000', 1497369600, '5d93ceb70e2bf5daa84ec3d0cd2c731a', '1', '8ed45061473a93b127e27c3a56ab9fb1', '0', '0', '0', '外网', '123456789012345679', 4, '', '192.168.2.99', '未分配或者内网IP', 0, 1496519462, 0, 1, NULL, NULL, 'MCLWAH', NULL),
(39, 'fhyyh123', '13650066005', 1497283200, '96e79218965eb72c92a549dd5a330112', '1', '96e79218965eb72c92a549dd5a330112', '0', '0', '0', '王大拿', '422135198802225517', 7, '', '14.116.38.66', '未分配或者内网IP', 0, 1497719582, 0, 1, NULL, NULL, 'GSCMHP', NULL),
(40, 'lingcheng', '', 0, '0cb5b6aa47456bff8f05fd7854065f60', '1', 'e10adc3949ba59abbe56e057f20f883e', '0', '0', '0', '王泽鑫', '330782828282828282', 0, '', '112.17.238.158', '未分配或者内网IP', 0, 1499568143, 0, 1, NULL, NULL, 'NXCLDV', NULL),
(41, 'grch2005', '', 0, '52340708c6c8990f1917e2c222bc0a36', '1', 'fa0bba2897f537d06f4e55967222d3a5', '0', '0', '0', '郭人', '330329199009121231', 0, '', '60.181.71.112', '未分配或者内网IP', 0, 1499622288, 0, 1, NULL, NULL, 'FGIMVE', NULL),
(42, 'hailong', '15855919992', 1500358916, '670b14728ad9902aecba32e22fa4f6bd', '1', '96e79218965eb72c92a549dd5a330112', '0', '0', '0', '吴海风', '342423198402180693', 1, '', '114.103.5.135', '未分配或者内网IP', 0, 1500358535, 0, 1, NULL, NULL, 'KUGBIF', NULL),
(43, 'huangkui1689', '', 0, 'e10adc3949ba59abbe56e057f20f883e', '1', '25f9e794323b453885f5181f1b624d0b', '0', '0', '0', '刘子军', '142711197021027403', 0, '', '113.24.17.34', '未分配或者内网IP', 0, 1500391124, 0, 1, NULL, NULL, 'QJMWBZ', NULL),
(44, 'h4828816', '15305433462', 0, '96e79218965eb72c92a549dd5a330112', '1', 'e3ceb5881a0a1fdaad01296d7554868d', '0', '0', '0', '小小酥', '512141548458748458', 3, '', '61.166.183.71', '未分配或者内网IP', 0, 1501408092, 0, 1, NULL, NULL, 'MJQLRW', NULL);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_user_bank`
--

CREATE TABLE IF NOT EXISTS `btchanges_user_bank` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `bank` varchar(200) NOT NULL,
  `bankprov` varchar(200) NOT NULL,
  `bankcity` varchar(200) NOT NULL,
  `bankaddr` varchar(200) NOT NULL,
  `bankcard` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- 转存表中的数据 `btchanges_user_bank`
--

INSERT INTO `btchanges_user_bank` (`id`, `userid`, `name`, `bank`, `bankprov`, `bankcity`, `bankaddr`, `bankcard`, `sort`, `addtime`, `endtime`, `status`) VALUES
(7, 1, 'test', '农业银行', '测试', '测试', 'test', '13736491494', 0, 1486358110, 0, 1),
(8, 8, 'test', '农业银行', '测试', '测试', 'test', '18157316153', 0, 1486693294, 0, 1),
(9, 17, 'test', '农业银行', '测试', '测试', 'test', '1355605638@qq.com', 0, 1486711501, 0, 1),
(10, 24, 'test', '农业银行', '测试', '测试', 'test', '13862733266', 0, 1486727833, 0, 1),
(11, 33, 'test', '农业银行', '测试', '测试', 'test', '2927867547@qq.com', 0, 1488092988, 0, 1),
(12, 39, 'test', '农业银行', '测试', '测试', 'test', '13192286981', 0, 1497719914, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_user_bank_type`
--

CREATE TABLE IF NOT EXISTS `btchanges_user_bank_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `url` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `mytx` varchar(200) NOT NULL,
  `remark` varchar(50) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='常用银行地址' AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `btchanges_user_bank_type`
--

INSERT INTO `btchanges_user_bank_type` (`id`, `name`, `title`, `url`, `img`, `mytx`, `remark`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 'boc', '中国银行', 'http://www.boc.cn/', 'img_56937003683ce.jpg', '', '', 0, 1452503043, 0, 1),
(2, 'abc', '农业银行', 'http://www.abchina.com/cn/', 'img_569370458b18d.jpg', '', '', 0, 1452503109, 0, 1),
(3, 'bccb', '北京银行', 'http://www.bankofbeijing.com.cn/', 'img_569370588dcdc.jpg', '', '', 0, 1452503128, 0, 1),
(4, 'ccb', '建设银行', 'http://www.ccb.com/', 'img_5693709bbd20f.jpg', '', '', 0, 1452503195, 0, 1),
(5, 'ceb', '光大银行', 'http://www.bankofbeijing.com.cn/', 'img_569370b207cc8.jpg', '', '', 0, 1452503218, 0, 1),
(6, 'cib', '兴业银行', 'http://www.cib.com.cn/cn/index.html', 'img_569370d29bf59.jpg', '', '', 0, 1452503250, 0, 1),
(7, 'citic', '中信银行', 'http://www.ecitic.com/', 'img_569370fb7a1b3.jpg', '', '', 0, 1452503291, 0, 1),
(8, 'cmb', '招商银行', 'http://www.cmbchina.com/', 'img_5693710a9ac9c.jpg', '', '', 0, 1452503306, 0, 1),
(9, 'cmbc', '民生银行', 'http://www.cmbchina.com/', 'img_5693711f97a9d.jpg', '', '', 0, 1452503327, 0, 1),
(10, 'comm', '交通银行', 'http://www.bankcomm.com/BankCommSite/default.shtml', 'img_5693713076351.jpg', '', '', 0, 1452503344, 0, 1),
(11, 'gdb', '广发银行', 'http://www.cgbchina.com.cn/', 'img_56937154bebc5.jpg', '', '', 0, 1452503380, 0, 1),
(12, 'icbc', '工商银行', 'http://www.icbc.com.cn/icbc/', 'img_56937162db7f5.jpg', '', '', 0, 1452503394, 0, 1),
(13, 'psbc', '邮政银行', 'http://www.psbc.com/portal/zh_CN/index.html', 'img_5693717eefaa3.jpg', '', '', 0, 1452503422, 0, 1),
(14, 'spdb', '浦发银行', 'http://www.spdb.com.cn/chpage/c1/', 'img_5693718f1d70e.jpg', '', '', 0, 1452503439, 0, 1),
(15, 'szpab', '平安银行', 'http://bank.pingan.com/', '56c2e4c9aff85.jpg', '', '', 0, 1455613129, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_user_coin`
--

CREATE TABLE IF NOT EXISTS `btchanges_user_coin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `cny` decimal(20,8) unsigned NOT NULL,
  `cnyd` decimal(20,8) unsigned NOT NULL,
  `sad` decimal(20,8) unsigned NOT NULL,
  `sadd` decimal(20,8) unsigned NOT NULL,
  `sadb` varchar(200) NOT NULL,
  `hjc` decimal(20,8) unsigned NOT NULL,
  `hjcd` decimal(20,8) unsigned NOT NULL,
  `hjcb` varchar(200) NOT NULL,
  `ydc` decimal(20,8) unsigned NOT NULL,
  `ydcd` decimal(20,8) unsigned NOT NULL,
  `ydcb` varchar(200) NOT NULL,
  `ltc` decimal(20,8) unsigned NOT NULL,
  `ltcd` decimal(20,8) unsigned NOT NULL,
  `ltcb` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户币种表' AUTO_INCREMENT=147 ;

--
-- 转存表中的数据 `btchanges_user_coin`
--

INSERT INTO `btchanges_user_coin` (`id`, `userid`, `cny`, `cnyd`, `sad`, `sadd`, `sadb`, `hjc`, `hjcd`, `hjcb`, `ydc`, `ydcd`, `ydcb`, `ltc`, `ltcd`, `ltcb`) VALUES
(102, 102, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(103, 1, '100.00300000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(104, 2, '1000.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(105, 3, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(106, 4, '10.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(107, 5, '4.60000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(108, 6, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(109, 7, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(110, 8, '0.85835000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(111, 9, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(112, 10, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(113, 11, '10.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(114, 12, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(115, 13, '0.10000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(116, 14, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(117, 15, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(118, 16, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(119, 17, '4.30000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(120, 18, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(121, 19, '0.20000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(123, 21, '1.97303696', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(124, 22, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(125, 23, '1.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(126, 24, '0.00000723', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(127, 25, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(128, 26, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(129, 27, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(131, 29, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(133, 31, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(134, 32, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(135, 33, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(136, 34, '100.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(137, 35, '24444.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(138, 36, '3400.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(139, 37, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(140, 38, '999998932056.49999999', '195000.00000000', '0.00000000', '0.00000000', '', '600.00000000', '0.00000000', '', '5200.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(141, 39, '923600968574.29499999', '0.00000000', '0.00000000', '0.00000000', '', '79999101.00000000', '299.00000000', '', '79994800.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(142, 40, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(143, 41, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '1a5d8b5e45a351de7f0c901aaa248143', '0.00000000', '0.00000000', 'cb4f8c94f343a40f87fab778b763580a', '0.00000000', '0.00000000', ''),
(144, 42, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', 'afb011150302fdc0f2b248389d06bb12', '0.00000000', '0.00000000', 'ad3b3dc76566a0dec207c0604253b6be', '0.00000000', '0.00000000', ''),
(145, 43, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', ''),
(146, 44, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', 'ae52797b8b6f88860a393c8dca7b53da', '0.00000000', '0.00000000', '', '0.00000000', '0.00000000', '');

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_user_goods`
--

CREATE TABLE IF NOT EXISTS `btchanges_user_goods` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `name` varchar(200) NOT NULL,
  `truename` varchar(200) NOT NULL,
  `idcard` varchar(200) NOT NULL,
  `moble` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `btchanges_user_goods`
--

INSERT INTO `btchanges_user_goods` (`id`, `userid`, `name`, `truename`, `idcard`, `moble`, `addr`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 2, 'a', '啊啊', '511126199252584441', '15212541251', '阿贾克斯', 0, 1476005605, 0, 1),
(2, 2, '北京市东城区1号', '张三', '360323197803122346', '13958800000', '北京市东城区1号', 0, 1476005700, 0, 1),
(3, 7, 'a', '李四', '360434197701123456', '13958844789', 'a', 0, 1476020478, 0, 1),
(4, 36, '北京', '问问', '123456789012345678', '18912345678', '北京市', 0, 1496504547, 0, 1),
(5, 44, '北京市', '张湾', '372323186401620633', '15698745689', '北京市', 0, 1502204891, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_user_log`
--

CREATE TABLE IF NOT EXISTS `btchanges_user_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(10) unsigned NOT NULL,
  `type` varchar(200) NOT NULL,
  `remark` varchar(200) NOT NULL,
  `addip` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(10) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`),
  KEY `status` (`status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户记录表' AUTO_INCREMENT=316 ;

--
-- 转存表中的数据 `btchanges_user_log`
--

INSERT INTO `btchanges_user_log` (`id`, `userid`, `type`, `remark`, `addip`, `addr`, `sort`, `addtime`, `endtime`, `status`) VALUES
(136, 1, '登录', '通过用户名登录', '113.214.206.223', '未分配或者内网IP', 0, 1486355739, 0, 1),
(137, 1, '登录', '通过用户名登录', '113.214.206.223', '未分配或者内网IP', 0, 1486357115, 0, 1),
(138, 1, '登录', '通过用户名登录', '113.214.206.223', '未分配或者内网IP', 0, 1486362498, 0, 1),
(139, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486369187, 0, 1),
(140, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486372311, 0, 1),
(141, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486374453, 0, 1),
(142, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486381196, 0, 1),
(143, 4, '登录', '通过用户名登录', '117.136.103.229', '未分配或者内网IP', 0, 1486382441, 0, 1),
(144, 5, '登录', '通过手机号登录', '115.229.84.103', '未分配或者内网IP', 0, 1486384510, 0, 1),
(145, 8, '登录', '通过用户名登录', '125.124.161.237', '未分配或者内网IP', 0, 1486392510, 0, 1),
(146, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486395837, 0, 1),
(147, 8, '登录', '通过用户名登录', '125.124.161.237', '未分配或者内网IP', 0, 1486441802, 0, 1),
(148, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486446232, 0, 1),
(149, 11, '登录', '通过用户名登录', '58.40.186.43', '未分配或者内网IP', 0, 1486446927, 0, 1),
(150, 1, '登录', '通过手机号登录', '61.148.242.216', '未分配或者内网IP', 0, 1486451443, 0, 1),
(151, 1, '登录', '通过手机号登录', '114.242.250.30', '未分配或者内网IP', 0, 1486464037, 0, 1),
(152, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486476692, 0, 1),
(153, 11, '登录', '通过用户名登录', '58.40.186.43', '未分配或者内网IP', 0, 1486478850, 0, 1),
(154, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486479769, 0, 1),
(155, 8, '登录', '通过用户名登录', '125.124.161.237', '未分配或者内网IP', 0, 1486482768, 0, 1),
(156, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486483478, 0, 1),
(157, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486484485, 0, 1),
(158, 5, '登录', '通过用户名登录', '115.239.67.70', '未分配或者内网IP', 0, 1486484991, 0, 1),
(159, 5, '登录', '通过用户名登录', '115.239.67.70', '未分配或者内网IP', 0, 1486485061, 0, 1),
(160, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486494959, 0, 1),
(161, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486527806, 0, 1),
(162, 14, '登录', '通过用户名登录', '117.136.93.200', '未分配或者内网IP', 0, 1486530595, 0, 1),
(163, 13, '登录', '通过手机号登录', '115.239.71.2', '未分配或者内网IP', 0, 1486531972, 0, 1),
(164, 13, '登录', '通过手机号登录', '115.239.71.2', '未分配或者内网IP', 0, 1486537933, 0, 1),
(165, 13, '登录', '通过手机号登录', '115.239.71.2', '未分配或者内网IP', 0, 1486538546, 0, 1),
(166, 8, '登录', '通过用户名登录', '125.124.161.237', '未分配或者内网IP', 0, 1486540608, 0, 1),
(167, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486545052, 0, 1),
(168, 14, '登录', '通过用户名登录', '117.136.93.200', '未分配或者内网IP', 0, 1486550272, 0, 1),
(169, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486563616, 0, 1),
(170, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486570991, 0, 1),
(171, 17, '登录', '通过用户名登录', '58.248.146.191', '未分配或者内网IP', 0, 1486572150, 0, 1),
(172, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486578913, 0, 1),
(173, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486629904, 0, 1),
(174, 1, '登录', '通过手机号登录', '61.148.243.112', '未分配或者内网IP', 0, 1486634270, 0, 1),
(175, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486643530, 0, 1),
(176, 17, '登录', '通过用户名登录', '220.198.245.194', '未分配或者内网IP', 0, 1486643713, 0, 1),
(177, 5, '登录', '通过用户名登录', '115.239.67.70', '未分配或者内网IP', 0, 1486643858, 0, 1),
(178, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486644741, 0, 1),
(179, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486645250, 0, 1),
(180, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486645250, 0, 1),
(181, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486645265, 0, 1),
(182, 11, '登录', '通过用户名登录', '58.40.186.43', '未分配或者内网IP', 0, 1486645861, 0, 1),
(183, 5, '登录', '通过用户名登录', '115.239.67.70', '未分配或者内网IP', 0, 1486646363, 0, 1),
(184, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486652165, 0, 1),
(185, 17, '登录', '通过用户名登录', '220.198.245.194', '未分配或者内网IP', 0, 1486652546, 0, 1),
(186, 17, '登录', '通过用户名登录', '220.198.245.194', '未分配或者内网IP', 0, 1486662830, 0, 1),
(187, 8, '登录', '通过用户名登录', '60.163.88.247', '未分配或者内网IP', 0, 1486691840, 0, 1),
(188, 8, '登录', '通过用户名登录', '106.39.190.102', '未分配或者内网IP', 0, 1486695564, 0, 1),
(189, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486697889, 0, 1),
(190, 17, '登录', '通过用户名登录', '220.198.240.212', '未分配或者内网IP', 0, 1486698571, 0, 1),
(191, 19, '登录', '通过用户名登录', '183.0.91.215', '未分配或者内网IP', 0, 1486700588, 0, 1),
(192, 19, '登录', '通过用户名登录', '112.96.106.130', '未分配或者内网IP', 0, 1486700919, 0, 1),
(193, 8, '登录', '通过用户名登录', '112.17.247.195', '未分配或者内网IP', 0, 1486703087, 0, 1),
(194, 1, '登录', '通过手机号登录', '113.214.206.223', '未分配或者内网IP', 0, 1486705845, 0, 1),
(195, 19, '登录', '通过用户名登录', '183.0.91.215', '未分配或者内网IP', 0, 1486710911, 0, 1),
(196, 17, '登录', '通过用户名登录', '220.198.240.212', '未分配或者内网IP', 0, 1486711470, 0, 1),
(197, 23, '登录', '通过用户名登录', '183.160.91.132', '未分配或者内网IP', 0, 1486716829, 0, 1),
(198, 22, '登录', '通过用户名登录', '183.44.167.136', '未分配或者内网IP', 0, 1486717903, 0, 1),
(199, 23, '登录', '通过用户名登录', '183.160.91.132', '未分配或者内网IP', 0, 1486721727, 0, 1),
(200, 21, '登录', '通过用户名登录', '118.89.142.103', '未分配或者内网IP', 0, 1486722133, 0, 1),
(201, 23, '登录', '通过用户名登录', '183.160.91.132', '未分配或者内网IP', 0, 1486722153, 0, 1),
(202, 21, '登录', '通过用户名登录', '112.11.146.137', '未分配或者内网IP', 0, 1486722938, 0, 1),
(203, 19, '登录', '通过用户名登录', '183.0.91.215', '未分配或者内网IP', 0, 1486724417, 0, 1),
(204, 19, '登录', '通过用户名登录', '183.0.91.215', '未分配或者内网IP', 0, 1486726104, 0, 1),
(205, 24, '登录', '通过用户名登录', '180.98.99.230', '未分配或者内网IP', 0, 1486727194, 0, 1),
(206, 19, '登录', '通过用户名登录', '183.0.91.215', '未分配或者内网IP', 0, 1486727269, 0, 1),
(207, 8, '登录', '通过用户名登录', '60.163.88.247', '未分配或者内网IP', 0, 1486728248, 0, 1),
(208, 23, '登录', '通过用户名登录', '183.160.91.132', '未分配或者内网IP', 0, 1486728466, 0, 1),
(209, 8, '登录', '通过用户名登录', '60.163.88.247', '未分配或者内网IP', 0, 1486732144, 0, 1),
(210, 23, '登录', '通过用户名登录', '183.160.91.132', '未分配或者内网IP', 0, 1486735621, 0, 1),
(211, 24, '登录', '通过用户名登录', '49.95.44.175', '未分配或者内网IP', 0, 1486735777, 0, 1),
(212, 17, '登录', '通过用户名登录', '58.249.13.75', '未分配或者内网IP', 0, 1486736495, 0, 1),
(213, 24, '登录', '通过用户名登录', '180.121.223.43', '未分配或者内网IP', 0, 1486736926, 0, 1),
(214, 21, '登录', '通过用户名登录', '112.11.146.137', '未分配或者内网IP', 0, 1486745248, 0, 1),
(215, 17, '登录', '通过用户名登录', '58.249.13.75', '未分配或者内网IP', 0, 1486746998, 0, 1),
(216, 17, '登录', '通过用户名登录', '58.249.13.75', '未分配或者内网IP', 0, 1486747137, 0, 1),
(217, 24, '登录', '通过用户名登录', '180.121.223.43', '未分配或者内网IP', 0, 1486776768, 0, 1),
(218, 24, '登录', '通过用户名登录', '180.121.223.43', '未分配或者内网IP', 0, 1486777026, 0, 1),
(219, 23, '登录', '通过用户名登录', '183.160.91.132', '未分配或者内网IP', 0, 1486780781, 0, 1),
(220, 21, '登录', '通过用户名登录', '112.17.243.137', '未分配或者内网IP', 0, 1486781123, 0, 1),
(221, 23, '登录', '通过用户名登录', '183.160.91.132', '未分配或者内网IP', 0, 1486788758, 0, 1),
(222, 24, '登录', '通过用户名登录', '180.121.223.43', '未分配或者内网IP', 0, 1486791781, 0, 1),
(223, 23, '登录', '通过用户名登录', '183.160.91.132', '未分配或者内网IP', 0, 1486792346, 0, 1),
(224, 23, '登录', '通过用户名登录', '36.60.17.146', '未分配或者内网IP', 0, 1486798350, 0, 1),
(225, 23, '登录', '通过用户名登录', '36.5.0.131', '未分配或者内网IP', 0, 1486799404, 0, 1),
(226, 8, '登录', '通过用户名登录', '183.247.174.106', '未分配或者内网IP', 0, 1486804194, 0, 1),
(227, 23, '登录', '通过用户名登录', '36.5.0.131', '未分配或者内网IP', 0, 1486805468, 0, 1),
(228, 17, '登录', '通过用户名登录', '183.43.248.80', '未分配或者内网IP', 0, 1486805933, 0, 1),
(229, 17, '登录', '通过用户名登录', '183.43.248.80', '未分配或者内网IP', 0, 1486805939, 0, 1),
(230, 17, '登录', '通过用户名登录', '183.43.248.80', '未分配或者内网IP', 0, 1486805958, 0, 1),
(231, 24, '登录', '通过用户名登录', '180.98.80.71', '未分配或者内网IP', 0, 1486806030, 0, 1),
(232, 23, '登录', '通过用户名登录', '36.5.0.131', '未分配或者内网IP', 0, 1486806952, 0, 1),
(233, 14, '登录', '通过用户名登录', '117.136.94.60', '未分配或者内网IP', 0, 1486807561, 0, 1),
(234, 23, '登录', '通过用户名登录', '36.5.0.131', '未分配或者内网IP', 0, 1486809737, 0, 1),
(235, 17, '登录', '通过用户名登录', '120.85.209.191', '未分配或者内网IP', 0, 1486810300, 0, 1),
(236, 12, '登录', '通过用户名登录', '106.226.198.72', '未分配或者内网IP', 0, 1486811140, 0, 1),
(237, 23, '登录', '通过用户名登录', '36.5.0.131', '未分配或者内网IP', 0, 1486811153, 0, 1),
(238, 23, '登录', '通过用户名登录', '36.5.0.131', '未分配或者内网IP', 0, 1486811201, 0, 1),
(239, 17, '登录', '通过用户名登录', '120.85.209.191', '未分配或者内网IP', 0, 1486812445, 0, 1),
(240, 23, '登录', '通过用户名登录', '36.5.0.131', '未分配或者内网IP', 0, 1486813787, 0, 1),
(241, 5, '登录', '通过用户名登录', '115.239.47.51', '未分配或者内网IP', 0, 1486816043, 0, 1),
(242, 24, '登录', '通过用户名登录', '180.121.223.43', '未分配或者内网IP', 0, 1486816273, 0, 1),
(243, 17, '登录', '通过用户名登录', '120.85.209.191', '未分配或者内网IP', 0, 1486828376, 0, 1),
(244, 21, '登录', '通过用户名登录', '58.215.136.238', '未分配或者内网IP', 0, 1486860178, 0, 1),
(245, 29, '登录', '通过用户名登录', '113.12.126.98', '未分配或者内网IP', 0, 1486868468, 0, 1),
(246, 8, '登录', '通过用户名登录', '183.247.174.106', '未分配或者内网IP', 0, 1486869371, 0, 1),
(247, 8, '登录', '通过用户名登录', '183.247.174.106', '未分配或者内网IP', 0, 1486870997, 0, 1),
(248, 23, '登录', '通过用户名登录', '36.5.0.192', '未分配或者内网IP', 0, 1486877432, 0, 1),
(249, 11, '登录', '通过用户名登录', '202.116.191.15', '未分配或者内网IP', 0, 1486906291, 0, 1),
(250, 11, '登录', '通过用户名登录', '117.136.32.59', '未分配或者内网IP', 0, 1486953363, 0, 1),
(251, 11, '登录', '通过用户名登录', '202.116.191.7', '未分配或者内网IP', 0, 1486994570, 0, 1),
(252, 12, '登录', '通过用户名登录', '220.176.52.213', '未分配或者内网IP', 0, 1486997576, 0, 1),
(253, 8, '登录', '通过用户名登录', '183.247.174.106', '未分配或者内网IP', 0, 1486998651, 0, 1),
(254, 7, '登录', '通过用户名登录', '124.207.38.13', '未分配或者内网IP', 0, 1487000870, 0, 1),
(255, 7, '登录', '通过用户名登录', '124.207.38.13', '未分配或者内网IP', 0, 1487002345, 0, 1),
(256, 12, '登录', '通过手机号登录', '220.176.52.213', '未分配或者内网IP', 0, 1487042627, 0, 1),
(257, 12, '登录', '通过手机号登录', '106.226.4.19', '未分配或者内网IP', 0, 1487133003, 0, 1),
(258, 12, '登录', '通过手机号登录', '182.97.244.204', '未分配或者内网IP', 0, 1487162246, 0, 1),
(259, 12, '登录', '通过手机号登录', '182.97.244.204', '未分配或者内网IP', 0, 1487173703, 0, 1),
(260, 23, '登录', '通过用户名登录', '120.209.199.176', '未分配或者内网IP', 0, 1487229616, 0, 1),
(261, 23, '登录', '通过用户名登录', '120.209.199.176', '未分配或者内网IP', 0, 1487229796, 0, 1),
(262, 23, '登录', '通过用户名登录', '120.209.199.176', '未分配或者内网IP', 0, 1487230166, 0, 1),
(263, 12, '登录', '通过手机号登录', '182.97.61.89', '未分配或者内网IP', 0, 1487248184, 0, 1),
(264, 8, '登录', '通过用户名登录', '115.198.208.180', '未分配或者内网IP', 0, 1487248771, 0, 1),
(265, 12, '登录', '通过手机号登录', '182.97.61.89', '未分配或者内网IP', 0, 1487311500, 0, 1),
(266, 1, '登录', '通过手机号登录', '223.71.209.218', '未分配或者内网IP', 0, 1487313938, 0, 1),
(267, 25, '登录', '通过用户名登录', '183.160.89.128', '未分配或者内网IP', 0, 1487386773, 0, 1),
(268, 21, '登录', '通过用户名登录', '121.196.192.132', '未分配或者内网IP', 0, 1487462497, 0, 1),
(269, 21, '登录', '通过用户名登录', '106.39.189.169', '未分配或者内网IP', 0, 1487463450, 0, 1),
(270, 12, '登录', '通过手机号登录', '182.97.242.166', '未分配或者内网IP', 0, 1487475182, 0, 1),
(271, 12, '登录', '通过手机号登录', '182.97.242.166', '未分配或者内网IP', 0, 1487499699, 0, 1),
(272, 5, '登录', '通过用户名登录', '183.245.171.132', '未分配或者内网IP', 0, 1487555138, 0, 1),
(273, 1, '登录', '通过手机号登录', '114.242.250.19', '未分配或者内网IP', 0, 1487558213, 0, 1),
(274, 8, '登录', '通过用户名登录', '183.247.174.106', '未分配或者内网IP', 0, 1487561094, 0, 1),
(275, 23, '登录', '通过用户名登录', '36.5.2.4', '未分配或者内网IP', 0, 1487565469, 0, 1),
(276, 23, '登录', '通过用户名登录', '36.5.2.4', '未分配或者内网IP', 0, 1487567592, 0, 1),
(277, 1, '登录', '通过手机号登录', '114.242.250.19', '未分配或者内网IP', 0, 1487567878, 0, 1),
(278, 12, '登录', '通过手机号登录', '182.97.187.34', '未分配或者内网IP', 0, 1487586571, 0, 1),
(279, 12, '登录', '通过手机号登录', '182.97.187.34', '未分配或者内网IP', 0, 1487647894, 0, 1),
(280, 8, '登录', '通过用户名登录', '183.247.174.106', '未分配或者内网IP', 0, 1487742838, 0, 1),
(281, 24, '登录', '通过用户名登录', '180.120.4.253', '未分配或者内网IP', 0, 1487837743, 0, 1),
(282, 5, '登录', '通过用户名登录', '223.93.242.216', '未分配或者内网IP', 0, 1487841733, 0, 1),
(283, 8, '登录', '通过用户名登录', '183.247.174.106', '未分配或者内网IP', 0, 1487905672, 0, 1),
(284, 23, '登录', '通过用户名登录', '36.5.2.178', '未分配或者内网IP', 0, 1487910768, 0, 1),
(285, 23, '登录', '通过用户名登录', '36.5.2.178', '未分配或者内网IP', 0, 1487924966, 0, 1),
(286, 23, '登录', '通过用户名登录', '36.5.3.230', '未分配或者内网IP', 0, 1488002926, 0, 1),
(287, 1, '登录', '通过手机号登录', '121.69.33.186', '未分配或者内网IP', 0, 1488037178, 0, 1),
(288, 12, '登录', '通过手机号登录', '182.97.210.103', '未分配或者内网IP', 0, 1488108469, 0, 1),
(289, 12, '登录', '通过手机号登录', '223.104.10.199', '未分配或者内网IP', 0, 1488284964, 0, 1),
(290, 1, '登录', '通过手机号登录', '121.69.8.250', '未分配或者内网IP', 0, 1488609367, 0, 1),
(291, 17, '登录', '通过用户名登录', '61.242.56.238', '未分配或者内网IP', 0, 1488618376, 0, 1),
(292, 21, '登录', '通过手机号登录', '14.215.161.195', '未分配或者内网IP', 0, 1488710425, 0, 1),
(293, 1, '登录', '通过手机号登录', '61.148.244.208', '未分配或者内网IP', 0, 1489658937, 0, 1),
(294, 24, '登录', '通过用户名登录', '183.207.217.247', '未分配或者内网IP', 0, 1489670773, 0, 1),
(295, 1, '登录', '通过手机号登录', '114.216.115.101', '未分配或者内网IP', 0, 1489995133, 0, 1),
(296, 35, '登录', '通过手机号登录', '183.204.66.91', '未分配或者内网IP', 0, 1492010849, 0, 1),
(297, 35, '登录', '通过用户名登录', '61.158.152.230', '未分配或者内网IP', 0, 1492015644, 0, 1),
(298, 36, '登录', '通过用户名登录', '192.168.2.99', '未分配或者内网IP', 0, 1496519290, 0, 1),
(299, 38, '登录', '通过用户名登录', '192.168.2.99', '未分配或者内网IP', 0, 1496520120, 0, 1),
(300, 38, '登录', '通过用户名登录', '59.37.204.223', '未分配或者内网IP', 0, 1497719521, 0, 1),
(301, 39, '登录', '通过用户名登录', '', '未分配或者内网IP', 0, 1497720825, 0, 1),
(302, 39, '登录', '通过用户名登录', '192.168.86.108', '未分配或者内网IP', 0, 1498745462, 0, 1),
(303, 39, '登录', '通过用户名登录', '192.168.86.108', '未分配或者内网IP', 0, 1498821714, 0, 1),
(304, 38, '登录', '通过用户名登录', '192.168.86.108', '未分配或者内网IP', 0, 1498821851, 0, 1),
(305, 39, '登录', '通过用户名登录', '192.168.86.108', '未分配或者内网IP', 0, 1498821947, 0, 1),
(306, 38, '登录', '通过用户名登录', '192.168.86.108', '未分配或者内网IP', 0, 1498827546, 0, 1),
(307, 39, '登录', '通过用户名登录', '49.35.5.203', '未分配或者内网IP', 0, 1499400079, 0, 1),
(308, 39, '登录', '通过用户名登录', '113.56.201.102', '未分配或者内网IP', 0, 1499568003, 0, 1),
(309, 39, '登录', '通过用户名登录', '210.12.133.35', '未分配或者内网IP', 0, 1499653522, 0, 1),
(310, 36, '登录', '通过用户名登录', '113.56.206.14', '未分配或者内网IP', 0, 1499999805, 0, 1),
(311, 36, '登录', '通过用户名登录', '113.56.206.14', '未分配或者内网IP', 0, 1499999874, 0, 1),
(312, 42, '登录', '通过用户名登录', '61.166.183.71', '未分配或者内网IP', 0, 1501405030, 0, 1),
(313, 44, '登录', '通过用户名登录', '0.0.0.0', '未分配或者内网IP', 0, 1502204760, 0, 1),
(314, 44, '登录', '通过用户名登录', '0.0.0.0', '未分配或者内网IP', 0, 1502233739, 0, 1),
(315, 44, '登录', '通过用户名登录', '0.0.0.0', '未分配或者内网IP', 0, 1502243358, 0, 1);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_user_qianbao`
--

CREATE TABLE IF NOT EXISTS `btchanges_user_qianbao` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `addr` varchar(200) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `coinname` (`coinname`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COMMENT='用户钱包表' AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `btchanges_user_qianbao`
--

INSERT INTO `btchanges_user_qianbao` (`id`, `userid`, `coinname`, `name`, `addr`, `sort`, `addtime`, `endtime`, `status`) VALUES
(1, 8, 'fc', 'ASUS', 'Fpd26h6rDotzdcAJAkreb24qnMYADbqcjH', 0, 1486693424, 0, 0),
(2, 23, 'fc', '滑稽1', 'Fgqm6YF4DGzDtYao8EgyF8fZwjxQiXSWmk', 0, 1486781252, 0, 0),
(3, 17, 'fc', '一个逗比', ' FbdmnAiA5uCQg5NhHvotCQrHb2iUGYAVr2', 0, 1486810588, 0, 0),
(4, 17, 'fc', '两个逗比', 'Fi3MuqYSiZhLDPNND6VDM1HjbY6TsW3BeD', 0, 1486816045, 0, 0),
(6, 27, 'fc', '家', 'FhQqqmGkMBqAnuRELSDQo7WpyaVJJZ5aSA', 0, 1486865349, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_user_shopaddr`
--

CREATE TABLE IF NOT EXISTS `btchanges_user_shopaddr` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL DEFAULT '0',
  `truename` varchar(200) NOT NULL DEFAULT '0',
  `moble` varchar(500) NOT NULL,
  `name` varchar(500) NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_version`
--

CREATE TABLE IF NOT EXISTS `btchanges_version` (
  `name` varchar(50) NOT NULL COMMENT '版本号',
  `number` int(11) NOT NULL COMMENT '序列号，一般用日期数字标示',
  `title` varchar(50) NOT NULL COMMENT '版本名',
  `create_time` int(11) NOT NULL COMMENT '发布时间',
  `update_time` int(11) NOT NULL COMMENT '更新的时间',
  `log` text NOT NULL COMMENT '更新日志',
  `url` varchar(150) NOT NULL COMMENT '链接到的远程文章',
  `is_current` tinyint(4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`name`),
  KEY `id` (`number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='自动更新表';

--
-- 转存表中的数据 `btchanges_version`
--

INSERT INTO `btchanges_version` (`name`, `number`, `title`, `create_time`, `update_time`, `log`, `url`, `is_current`, `status`) VALUES
('2.3.7', 10015, '修复更新', 1466394377, 0, '修复首页下拉导航条显示bug\r\n修复交易界面导航条下拉bug', 'http://101.201.199.224/Update/download/2.3.7.zip', 0, 0),
('2.3.8', 10016, '更新权限', 1467096687, 0, '更新权限部分（还未完善）', 'http://101.201.199.224/Update/download/2.3.8.zip', 0, 0),
('2.3.9', 10017, '更新后台内容管理', 1467105573, 0, '更新后台内容管理', 'http://101.201.199.224/Update/download/2.3.9.zip', 0, 0),
('2.4.0', 10018, '更新后台用户管理部分', 1467111754, 0, '更新后台用户管理部分', 'http://101.201.199.224/Update/download/2.4.0.zip', 0, 0),
('2.4.1', 10019, '优化扩展功能', 1467119925, 0, '优化扩展功能', 'http://101.201.199.224/Update/download/2.4.1.zip', 0, 0),
('2.4.2', 10020, '优化后台用户编辑', 1467185261, 0, '优化后台用户编辑', 'http://101.201.199.224/Update/download/2.4.2.zip', 0, 0),
('2.4.3', 10021, '优化后台菜单部分', 1467265786, 0, '优化后台菜单部分', 'http://101.201.199.224/Update/download/2.4.3.zip', 0, 0),
('2.4.4', 10022, '更新后台交易管理部分', 1467266348, 0, '更新后台交易管理部分', 'http://101.201.199.224/Update/download/2.4.4.zip', 0, 0),
('2.4.5', 10023, '优化财务部分', 1467270688, 0, '优化人民币充值 提现\r\n优化虚拟币转入 转出\r\n\r\n需要重新配置充值方式', 'http://101.201.199.224/Update/download/2.4.5.zip', 0, 0),
('2.4.6', 10024, '优化财务部分', 1467346688, 0, '优化充值提现转入转出', 'http://101.201.199.224/Update/download/2.4.6.zip', 0, 0),
('2.4.7', 10025, '更新人民币充值功能', 1467352025, 0, '更新人民币充值功能\r\n优化软件不能自动到账\r\n优化前台充值弹窗的状态', 'http://101.201.199.224/Update/download/2.4.7.zip', 0, 0),
('2.4.8', 10026, '优化自动更新功能', 1467361623, 0, '优化自动更新功能', 'http://101.201.199.224/Update/download/2.4.8.zip', 0, 0),
('2.4.9', 10027, '优化后台首页', 1467362093, 0, '优化后台首页\r\n增加扩展 -客服代码  可以更换钱袋客服代码 \r\n更新之后，需要清理缓存', 'http://os.movesay.com/Auth/upFile/version/2.4.9', 0, 0),
('2.5.0', 10028, '优化所有后台功能', 1467601458, 0, '优化所有后台功能但不包括应用部分\r\n在设置里面增加了导航设置可以控制前台导航了\r\n扩展里面增加客服代码可以更新客服代码了\r\n应用管理里面支持已经购买的 应用安装和卸载了\r\n增加有新的升级所有后台页面都会提示\r\n及时更新修复漏洞能使网站更安全\r\n更新人民币充值方式需要重新配置\r\n优化大部分后台授权可能有个别没有添加授权后期完善\r\n优化整个后台样式让您看着更舒服\r\n优化认购中心需要重新安装卸载如果提示没有授权请联系我们', 'http://os.movesay.com/Auth/upFile/version/2.5.0', 0, 0),
('2.5.1', 10029, '模板更新  更新之后在扩展里面主题设置一下 不然前台打不开不了', 1467685524, 0, '支持客服代码定制\r\n扩展里面增加模板切换支持定制\r\n设置其他设置里面取消模板切换\r\n优化应用管理支持新应用预定\r\n优化用户管理搜索用户名不能用\r\n优化后台提现不能导出选中\r\n优化认购详情界面换成币种图标\r\n\r\n\r\n\r\n\r\n\r\n', 'http://os.movesay.com/Auth/upFile/version/2.5.1', 0, 0),
('2.5.2', 10030, '优化超级管理员功能', 1467714463, 0, '优化只有超级管理员才能看到升级提示\r\n优化只有超级管理员才能升级系统\r\n优化只有超级管理员才能切换模板\r\n优化只有超级管理员才能切换客服代码\r\n', 'http://os.movesay.com/Auth/upFile/version/2.5.2', 0, 0),
('2.5.3', 10031, '更新底部和文章部分', 1467785561, 0, '更新底部新样式\r\n更新文章部分具体效果可以看我们的演示网站\r\n优化首页文章部分\r\n优化交易中心拉100%不能交易\r\n优化后台撤销有时候会出现失败', 'http://os.movesay.com/Auth/upFile/version/2.5.3', 0, 0),
('2.5.4', 10032, '优化文章时间文字', 1467795268, 0, '优化文章时间不能修改的问题', 'http://os.movesay.com/Auth/upFile/version/2.5.4', 0, 0),
('2.5.5', 10033, '优化后台核心', 1467856087, 0, '优化后台核心', 'http://os.movesay.com/Auth/upFile/version/2.5.5', 0, 0),
('2.5.6', 10034, '升级系统文件部分过期的问题', 1469073091, 0, '升级系统文件部分过期的问题', 'http://os.movesay.com/Auth/upFile/version/2.5.6', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_version_game`
--

CREATE TABLE IF NOT EXISTS `btchanges_version_game` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `gongsi` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `shuoming` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `class` varchar(200) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `number` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC COMMENT='应用管理表' AUTO_INCREMENT=16 ;

--
-- 转存表中的数据 `btchanges_version_game`
--

INSERT INTO `btchanges_version_game` (`id`, `gongsi`, `shuoming`, `class`, `name`, `title`, `status`) VALUES
(1, '武汉动说科技有限公司', '支持虚拟币的购物商城', '#F1AB0F', 'shop', '云购商城', 1),
(2, '武汉动说科技有限公司', '支持对用户进行持币比例分红', '#C53CE7', 'fenhong', '分红中心', 1),
(3, '武汉动说科技有限公司', '支持用虚拟币充值手机话费', '#428bca', 'huafei', '话费充值', 1),
(4, '武汉动说科技有限公司', '可以发行虚拟币让用户认购', '#e74c3c', 'issue', '认购中心', 1),
(5, '武汉动说科技有限公司', '可以对要生效的新币进行投票', '#1abc9c', 'vote', '新币投票', 1),
(6, '武汉动说科技有限公司', '存币涨利息类型于存在钱到银行涨利息', '#f1c40f', 'money', '理财中心', 1),
(7, '武汉动说科技有限公司', '支持单对单交易', '#3c763d', 'bazaar', '集市交易', 0),
(8, '武汉动说科技有限公司', '<span style="color: #e74c3c;">支持预定(8折优惠)原价3000元</span>', '', 'pool', '矿机工厂', 0),
(9, '武汉动说科技有限公司', '<span style="color: #e74c3c;">支持预定(8折优惠)原价3000元</span>', '', 'crowd', '众筹中心', 0),
(10, '武汉动说科技有限公司', '<span style="color: #e74c3c;">支持预定(8折优惠)原价2000元</span>', '', 'qiandao', '签到功能', 0),
(11, '武汉动说科技有限公司', '<span style="color: #e74c3c;">支持预定(8折优惠)原价2000元</span>', '', 'hongbao', '人人红包', 0),
(12, '武汉动说科技有限公司', '<span style="color: #e74c3c;">支持预定(8折优惠)原价3000元</span>', '', 'weike', '威客任务', 0),
(13, '武汉动说科技有限公司', '<span style="color: #e74c3c;">支持预定(8折优惠)原价2000元</span>', '', 'duihuan', '币币兑换', 0),
(14, '武汉动说科技有限公司', '<span style="color: #e74c3c;">支持预定(8折优惠)原价2000元</span>', '', 'shoujiang', '幸运抽奖', 0),
(15, '武汉动说科技有限公司', '<span style="color: #e74c3c;">支持预定(8折优惠)原价3000元</span>', '', 'duobao', '一元夺宝', 0);

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_vote`
--

CREATE TABLE IF NOT EXISTS `btchanges_vote` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `userid` int(11) unsigned NOT NULL,
  `coinname` varchar(50) NOT NULL,
  `type` int(20) unsigned NOT NULL,
  `sort` int(11) unsigned NOT NULL,
  `addtime` int(11) unsigned NOT NULL,
  `endtime` int(11) unsigned NOT NULL,
  `status` int(4) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `btchanges_vote_type`
--

CREATE TABLE IF NOT EXISTS `btchanges_vote_type` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `coinname` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL COMMENT '状态',
  `img` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `zhichi` bigint(20) unsigned DEFAULT '0',
  `fandui` bigint(20) unsigned DEFAULT '0',
  `zongji` bigint(20) unsigned DEFAULT '0',
  `bili` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=gbk ROW_FORMAT=DYNAMIC AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `btchanges_vote_type`
--

INSERT INTO `btchanges_vote_type` (`id`, `coinname`, `title`, `status`, `img`, `zhichi`, `fandui`, `zongji`, `bili`) VALUES
(1, 'bcg', 'bcg', 1, '', 0, 0, 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
