# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.6.38)
# Database: spat_project
# Generation Time: 2018-01-12 19:19:54 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table FormData
# ------------------------------------------------------------

DROP TABLE IF EXISTS `FormData`;

CREATE TABLE `FormData` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `idFormField` int(10) unsigned NOT NULL,
  `idPlatform` int(10) unsigned NOT NULL,
  `idReview` int(10) unsigned DEFAULT NULL,
  `name` varchar(450) NOT NULL DEFAULT '',
  `deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `FK_form_field_id_idx` (`idFormField`),
  KEY `FK_platform_id_idx` (`idPlatform`),
  KEY `FK_review_id_idx` (`idReview`),
  CONSTRAINT `FK_form_field_id` FOREIGN KEY (`idFormField`) REFERENCES `FormFields` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_platform_id` FOREIGN KEY (`idPlatform`) REFERENCES `Platforms` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `FK_review_id` FOREIGN KEY (`idReview`) REFERENCES `FormData` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=692 DEFAULT CHARSET=utf8;

LOCK TABLES `FormData` WRITE;
/*!40000 ALTER TABLE `FormData` DISABLE KEYS */;

INSERT INTO `FormData` (`id`, `idFormField`, `idPlatform`, `idReview`, `name`, `deleted`)
VALUES
	(1,1,1,NULL,'4',0),
	(2,2,1,1,'100',0),
	(3,3,1,1,'60',0),
	(4,4,1,1,'40',0),
	(5,5,1,1,'80',0),
	(6,6,1,1,'100',0),
	(7,7,1,1,'Current ',0),
	(8,8,1,1,' &ndash;  San Francisco, CA &ndash;',0),
	(9,9,1,1,'June 24 2016',0),
	(10,10,1,1,'I get to set my own schedule, and work wherever I want with no supervision. I am entirely responsible for my workday. The only downfalls are that I don&#39;t get benefits, or retirement. Also, it&#39;s not quite as reliable a paycheck as I would like. I&#39;m looking for something I can settle into for the next 25 years.',0),
	(11,11,1,1,'Total Freedom, Setting my own schedule, Working remotely, Ability to travel, Variety, Ability to learn about multiple industries',0),
	(12,12,1,1,'unreliable compensation, no benefits, no retirement',0),
	(13,1,1,NULL,'5',0),
	(14,2,1,13,'100',0),
	(15,3,1,13,'100',0),
	(16,4,1,13,'100',0),
	(17,5,1,13,'100',0),
	(18,6,1,13,'100',0),
	(19,7,1,13,'Current ',0),
	(20,8,1,13,' &ndash;  online &ndash;',0),
	(21,9,1,13,'December 5 2017',0),
	(22,10,1,13,'Human Intelligent Task ',0),
	(23,11,1,13,'called HIT&#39;s) is doing a task that Artificial Intelligent has not learned how to do as of yet.  It&#39;s fun and it&#39;s exciting and you get to work at your own pace and do whatever assignments you wish to sit and complete.  It&#39;s good if you are a housewife with no children and love to work on the computer all day. You can make a couple hundred bucks a month.',0),
	(24,12,1,13,'Work at Home',0),
	(25,1,1,NULL,'5',0),
	(26,2,1,25,'100',0),
	(27,3,1,25,'100',0),
	(28,4,1,25,'100',0),
	(29,5,1,25,'100',0),
	(30,6,1,25,'100',0),
	(31,7,1,25,'Current ',0),
	(32,8,1,25,' &ndash;  Carmel, IN &ndash;',0),
	(33,9,1,25,'December 2 2017',0),
	(34,10,1,25,'Different varieties of work.  Work at your own pace, and on your own schedule.  Fair pay.  You absolutely get out of it what you put into it.  Dont plan on leaving.',0),
	(35,11,1,25,'Work when you want',0),
	(36,12,1,25,'No benefits',0),
	(37,1,1,NULL,'4',0),
	(38,2,1,37,'80',0),
	(39,3,1,37,'40',0),
	(40,4,1,37,'40',0),
	(41,5,1,37,'100',0),
	(42,6,1,37,'60',0),
	(43,7,1,37,'Current ',0),
	(44,8,1,37,' &ndash;  Anywhere &ndash;',0),
	(45,9,1,37,'November 26 2017',0),
	(46,10,1,37,'turking is easy work to do while sitting at home, it is basically a part time thing for pocket change ,BUT if you work alot and build up hits you can make 300-500 a week earning a basic paycheck',0),
	(47,1,1,NULL,'3',0),
	(48,2,1,47,'60',0),
	(49,3,1,47,'20',0),
	(50,4,1,47,'20',0),
	(51,5,1,47,'60',0),
	(52,6,1,47,'60',0),
	(53,7,1,47,'Current ',0),
	(54,8,1,47,' &ndash;  York, PA &ndash;',0),
	(55,9,1,47,'November 13 2017',0),
	(56,10,1,47,'A typical day on mturk consists of getting online, and using scripts to find freelance work.  some days are better than others.  good for stay at home mom, or pt work.',0),
	(57,11,1,47,'freedom',0),
	(58,12,1,47,'pay',0),
	(59,1,1,NULL,'5',0),
	(60,2,1,59,'60',0),
	(61,3,1,59,'40',0),
	(62,4,1,59,'20',0),
	(63,5,1,59,'100',0),
	(64,6,1,59,'100',0),
	(65,7,1,59,'Current ',0),
	(66,8,1,59,' &ndash;  at home &ndash;',0),
	(67,9,1,59,'October 30 2017',0),
	(68,10,1,59,'Amazon is a great company but this is more of a part time online job. It is not really possible to make a living wage and there are no benefits. I am my own boss and can work from home',0),
	(69,1,1,NULL,'2',0),
	(70,2,1,69,'40',0),
	(71,3,1,69,'20',0),
	(72,4,1,69,'20',0),
	(73,5,1,69,'20',0),
	(74,6,1,69,'40',0),
	(75,7,1,69,'Current ',0),
	(76,8,1,69,' &ndash;  Internet &ndash;',0),
	(77,9,1,69,'September 25 2017',0),
	(78,10,1,69,'better requester and pay needed, good for extra pocket money, not to live on. there are hundreds of jobs available, but the pay is merely a couple of cents per hour.',0),
	(79,1,1,NULL,'3',0),
	(80,2,1,79,'80',0),
	(81,3,1,79,'40',0),
	(82,4,1,79,'20',0),
	(83,5,1,79,'40',0),
	(84,6,1,79,'40',0),
	(85,7,1,79,'Current ',0),
	(86,8,1,79,' &ndash;  Seattle, WA &ndash;',0),
	(87,9,1,79,'August 27 2017',0),
	(88,10,1,79,'Amazon Mechanical Turk is a pay per HIT, like finding an email, writing a web description. So don&#39;t expect big bucks, just nice pocket money. HITS start as low as a penny and go all the way up to $10+.',0),
	(89,1,1,NULL,'4',0),
	(90,2,1,89,'100',0),
	(91,3,1,89,'20',0),
	(92,4,1,89,'60',0),
	(93,5,1,89,'60',0),
	(94,6,1,89,'60',0),
	(95,7,1,89,'Current ',0),
	(96,8,1,89,' &ndash;  Mascoutah, IL &ndash;',0),
	(97,9,1,89,'August 24 2017',0),
	(98,10,1,89,'The money you make is entirely dependent on how much you want to work. Amazon is simply a tool the provides you with jobs to do, you can do as many as you want but you will not make money very quickly.',0),
	(99,11,1,89,'Work any hours, work anywhere',0),
	(100,12,1,89,'Very low pay, no social environment, no promotions',0),
	(101,1,1,NULL,'5',0),
	(102,2,1,101,'100',0),
	(103,3,1,101,'60',0),
	(104,4,1,101,'0',0),
	(105,5,1,101,'0',0),
	(106,6,1,101,'0',0),
	(107,7,1,101,'Current ',0),
	(108,8,1,101,' &ndash;  Pittsburgh, PA &ndash;',0),
	(109,9,1,101,'August 16 2017',0),
	(110,10,1,101,'This is a great way to earn some extra cash. You can work as little or as much as you want at any time of the day or night. There are a lot of very low paying HIT&#39;s that only pay pennies that are fairly brainless but there are some higher paying opportunities of several dollars for a couple minutes. Personally I work a few hours a week and always reach my $100/month goal, many months breaking $150-$250 dependent on work availability and how m',0),
	(111,11,1,101,'Work from Home, Work at your own pace',0),
	(112,12,1,101,'Some HIT&#39;s are very low pay',0),
	(113,1,1,NULL,'3',0),
	(114,2,1,113,'60',0),
	(115,3,1,113,'60',0),
	(116,4,1,113,'60',0),
	(117,5,1,113,'60',0),
	(118,6,1,113,'60',0),
	(119,7,1,113,'Current ',0),
	(120,8,1,113,' &ndash;  Work at home &ndash;',0),
	(121,9,1,113,'August 2 2017',0),
	(122,10,1,113,'Never managed to invest enough time, find the right group of hits, much less get a Master&#39;s rating with possibly the first reason why, but doing online tasks has paid for a phone, tablet and several PC upgrades.',0),
	(123,1,1,NULL,'3',0),
	(124,2,1,123,'80',0),
	(125,3,1,123,'20',0),
	(126,4,1,123,'60',0),
	(127,5,1,123,'60',0),
	(128,6,1,123,'60',0),
	(129,7,1,123,'Current ',0),
	(130,8,1,123,' &ndash;  North East, PA &ndash;',0),
	(131,9,1,123,'July 28 2017',0),
	(132,10,1,123,'The HIT&#39;s are plentiful and fairly easy.  They do not pay very well, but the convenience of being able to make a few extra dollars from home for very little of your time is nice.  However, this is not a full or even part-time sustainable job.  Just a nice little way of making a few extra dollars a day if you are a go-getter such as myself.',0),
	(133,11,1,123,'Work from home',0),
	(134,12,1,123,'Does not compensate well',0),
	(135,1,1,NULL,'1',0),
	(136,2,1,135,'20',0),
	(137,3,1,135,'20',0),
	(138,4,1,135,'20',0),
	(139,5,1,135,'80',0),
	(140,6,1,135,'20',0),
	(141,7,1,135,'Current ',0),
	(142,8,1,135,' &ndash;  Brooklyn, NY &ndash;',0),
	(143,9,1,135,'July 27 2017',0),
	(144,10,1,135,'Amazon Mechanical Turk is a very slow, extremely boring way to make money. You make 20-75 cents an hour. I only recommend this cite to desperate people.',0),
	(145,11,1,135,'You make some kind of money.',0),
	(146,12,1,135,'You barely make any progress.',0),
	(147,1,1,NULL,'5',0),
	(148,2,1,147,'100',0),
	(149,3,1,147,'100',0),
	(150,4,1,147,'100',0),
	(151,5,1,147,'100',0),
	(152,6,1,147,'100',0),
	(153,7,1,147,'Current ',0),
	(154,8,1,147,' &ndash;  Home Based &ndash;',0),
	(155,9,1,147,'June 14 2017',0),
	(156,10,1,147,'Very convenient and pleasant work environment. Great work from home opportunities. Must be willing to put in the work to earn qualifications and advance.',0),
	(157,1,1,NULL,'4',0),
	(158,2,1,157,'100',0),
	(159,3,1,157,'60',0),
	(160,4,1,157,'60',0),
	(161,5,1,157,'60',0),
	(162,6,1,157,'100',0),
	(163,7,1,157,'Current ',0),
	(164,8,1,157,' &ndash;  At home. &ndash;',0),
	(165,9,1,157,'May 30 2017',0),
	(166,10,1,157,'Amazon Mechanical Turk has been helpful in having some legit extra cash coming in. There are so many scam websites and some take a  long time to cashout. With Mechanical Turk, they do pay right away and there is usually something to do, to earn.',0),
	(167,11,1,157,'Is 24 X 7 and they pay reliably.',0),
	(168,12,1,157,'None.',0),
	(169,1,1,NULL,'5',0),
	(170,2,1,169,'60',0),
	(171,3,1,169,'20',0),
	(172,4,1,169,'20',0),
	(173,5,1,169,'20',0),
	(174,6,1,169,'80',0),
	(175,7,1,169,'Current ',0),
	(176,8,1,169,' &ndash;  Alton, IL &ndash;',0),
	(177,9,1,169,'May 24 2017',0),
	(178,10,1,169,'Great for a little extra income for stay at home moms/dads. During the summer work is slower since college is out and more people use this for income.',0),
	(179,11,1,169,'Work whenever you want.',0),
	(180,12,1,169,'Inconsistent pay.',0),
	(181,1,1,NULL,'3',0),
	(182,2,1,181,'60',0),
	(183,3,1,181,'40',0),
	(184,4,1,181,'40',0),
	(185,5,1,181,'80',0),
	(186,6,1,181,'60',0),
	(187,7,1,181,'Former ',0),
	(188,8,1,181,' &ndash;  Home &ndash;',0),
	(189,9,1,181,'March 16 2017',0),
	(190,10,1,181,'Was a great way to instantly get work from home. Setup an account and was able to get to work. There&#39;s thousands of small job listings each day that you can pick and choose from. No boss. No face to face customer support. Carried a ton of perks with working from home with the flexibility along with the downsides of inconstant earnings from month to month.',0),
	(191,1,1,NULL,'5',0),
	(192,2,1,191,'0',0),
	(193,3,1,191,'0',0),
	(194,4,1,191,'0',0),
	(195,5,1,191,'0',0),
	(196,6,1,191,'0',0),
	(197,7,1,191,'Current ',0),
	(198,8,1,191,' &ndash;  Seattle, WA &ndash;',0),
	(199,9,1,191,'March 16 2017',0),
	(200,10,1,191,'Work at your own pace, there more you put in the more money you can make. Some days it can be slow so you must have some other form of income. Remember to save enough for taxes at the end of the year.',0),
	(201,1,1,NULL,'5',0),
	(202,2,1,201,'100',0),
	(203,3,1,201,'20',0),
	(204,4,1,201,'20',0),
	(205,5,1,201,'20',0),
	(206,6,1,201,'20',0),
	(207,7,1,201,'Current ',0),
	(208,8,1,201,' &ndash;  work fro home &ndash;',0),
	(209,9,1,201,'December 21 2016',0),
	(210,10,1,201,'you work from home, you choose what tasks you want, if you qualify, and can be easy supplement income. you don&#39;t have a schedule, you work when you want. you have no boss, or coworkers.',0),
	(211,11,1,201,'you get your money immediately',0),
	(212,12,1,201,'some tasks are too hard to qualify for',0),
	(213,1,1,NULL,'5',0),
	(214,2,1,213,'100',0),
	(215,3,1,213,'100',0),
	(216,4,1,213,'60',0),
	(217,5,1,213,'100',0),
	(218,6,1,213,'100',0),
	(219,7,1,213,'Current ',0),
	(220,8,1,213,' &ndash;  Woodbine, GA &ndash;',0),
	(221,9,1,213,'August 18 2016',0),
	(222,10,1,213,'The job is perfect for a little extra cash, or to supplement your paycheck. I like that I can chose the kind of work I do and shake it up to do different things at times.',0),
	(223,11,1,213,'Work at Home, Work=pay',0),
	(224,12,1,213,'No guaranteed money. Competing with others for the same jobs.',0),
	(225,1,1,NULL,'3',0),
	(226,2,1,225,'80',0),
	(227,3,1,225,'60',0),
	(228,4,1,225,'20',0),
	(229,5,1,225,'20',0),
	(230,6,1,225,'60',0),
	(231,7,1,225,'Current ',0),
	(232,8,1,225,' &ndash;  Online &ndash;',0),
	(233,9,1,225,'November 11 2015',0),
	(234,10,1,225,'A microtasking environment can not be easily rated. It has both benefits and negatives. Being in control of my own time and schedule was the best aspect. Inconsistent posting of work was the biggest negative.',0),
	(235,1,2,NULL,'5',0),
	(236,2,2,235,'100',0),
	(237,3,2,235,'80',0),
	(238,4,2,235,'80',0),
	(239,5,2,235,'80',0),
	(240,6,2,235,'80',0),
	(241,7,2,235,'Former ',0),
	(242,8,2,235,' &ndash;  Remote &ndash;',0),
	(243,9,2,235,'December 20 2017',0),
	(244,10,2,235,'Low barrier to get your first freelancing gig as compared to other professional freelancing websites. Good income per month as one starts to earn reputation doing gigs on Fiverr.',0),
	(245,1,2,NULL,'3',0),
	(246,2,2,245,'80',0),
	(247,3,2,245,'60',0),
	(248,4,2,245,'60',0),
	(249,5,2,245,'100',0),
	(250,6,2,245,'40',0),
	(251,7,2,245,'Current ',0),
	(252,8,2,245,' &ndash;  pakisan &ndash;',0),
	(253,9,2,245,'December 29 2017',0),
	(254,10,2,245,'You get the projects thats good but you dont get the projects that sucks if someone will go for only fiverr as his/her earning one day the projects will not be given and he she would have no else where to earn money',0),
	(255,1,2,NULL,'4',0),
	(256,2,2,255,'80',0),
	(257,3,2,255,'80',0),
	(258,4,2,255,'80',0),
	(259,5,2,255,'60',0),
	(260,6,2,255,'60',0),
	(261,7,2,255,'Current ',0),
	(262,8,2,255,' &ndash;  Campbell Hall, NY &ndash;',0),
	(263,9,2,255,'December 17 2017',0),
	(264,10,2,255,'Fiverr is a work for hire so you get what you give. I love the hustle of looking for people that need use of my abilities and it&#39;s fun to be creative/innovative.',0),
	(265,11,2,255,'Unlimited work time',0),
	(266,12,2,255,'Surcharges',0),
	(267,1,2,NULL,'3',0),
	(268,2,2,267,'80',0),
	(269,3,2,267,'20',0),
	(270,4,2,267,'60',0),
	(271,5,2,267,'80',0),
	(272,6,2,267,'40',0),
	(273,7,2,267,'Current ',0),
	(274,8,2,267,' &ndash;  Freelancing &ndash;',0),
	(275,9,2,267,'November 14 2017',0),
	(276,10,2,267,'I would say that fiverr is a freelancing site and there are no special benefits. If you do not meet a target, you could get no or little chance of success or earnings.',0),
	(277,1,2,NULL,'5',0),
	(278,2,2,277,'60',0),
	(279,3,2,277,'60',0),
	(280,4,2,277,'40',0),
	(281,5,2,277,'60',0),
	(282,6,2,277,'100',0),
	(283,7,2,277,'Former ',0),
	(284,8,2,277,' &ndash;  El Paso, TX &ndash;',0),
	(285,9,2,277,'November 7 2017',0),
	(286,10,2,277,'Fiverr is a great place for beginning entrepreneurs, but not for a full time job. My work consisted of only digital artwork and photo editing, so my days working were spent in front of a computer. My clients would message me, describing what they wanted and I would ask them any questions about details that I had. I needed to be very thorough with them in order to get the artwork as close to perfect as I I could. Many of my clients were extremely ',0),
	(287,11,2,277,'Great clients',0),
	(288,12,2,277,'Long hours, little pay',0),
	(289,1,2,NULL,'2',0),
	(290,2,2,289,'40',0),
	(291,3,2,289,'40',0),
	(292,4,2,289,'40',0),
	(293,5,2,289,'40',0),
	(294,6,2,289,'40',0),
	(295,7,2,289,'Current ',0),
	(296,8,2,289,' &ndash;  Online &ndash;',0),
	(297,9,2,289,'October 28 2017',0),
	(298,10,2,289,'It&#39;s a platform for skill-based service seller.It&#39;s a good opportunity for most of the service provider.It&#39;s very competitive and it&#39;s cheap and fake service provider are available.',0),
	(299,1,2,NULL,'5',0),
	(300,2,2,299,'100',0),
	(301,3,2,299,'100',0),
	(302,4,2,299,'100',0),
	(303,5,2,299,'100',0),
	(304,6,2,299,'100',0),
	(305,7,2,299,'Former ',0),
	(306,8,2,299,' &ndash;  Virginia &ndash;',0),
	(307,9,2,299,'October 9 2017',0),
	(308,10,2,299,'Fiverr provides freelancers for the tools necessary for finding and providing specialized products and services for clients. It is a very beneficial platform for freelancers to work off of.',0),
	(309,1,2,NULL,'5',0),
	(310,2,2,309,'100',0),
	(311,3,2,309,'100',0),
	(312,4,2,309,'100',0),
	(313,5,2,309,'100',0),
	(314,6,2,309,'100',0),
	(315,7,2,309,'Former ',0),
	(316,8,2,309,' &ndash;  Los Angeles, CA &ndash;',0),
	(317,9,2,309,'September 10 2017',0),
	(318,10,2,309,'A fun and professional experience, which helped me to increase my professionalism and the freelancer industry, and improve my artistic skills, and understand customers.',0),
	(319,11,2,309,'Work at home',0),
	(320,12,2,309,'A lot of competition',0),
	(321,1,2,NULL,'5',0),
	(322,2,2,321,'100',0),
	(323,3,2,321,'100',0),
	(324,4,2,321,'100',0),
	(325,5,2,321,'100',0),
	(326,6,2,321,'100',0),
	(327,7,2,321,'Current ',0),
	(328,8,2,321,' &ndash;  Ruse &ndash;',0),
	(329,9,2,321,'August 21 2017',0),
	(330,10,2,321,'Every day is a new adventure for me with new clients.The hardest part is when you get too much orders and you should end them till the end of the day.The most enjoyable is when the clients are satisfied.',0),
	(331,11,2,321,'freelance, good experience',0),
	(332,12,2,321,'small profit',0),
	(333,1,2,NULL,'4',0),
	(334,2,2,333,'80',0),
	(335,3,2,333,'80',0),
	(336,4,2,333,'80',0),
	(337,5,2,333,'80',0),
	(338,6,2,333,'80',0),
	(339,7,2,333,'Current ',0),
	(340,8,2,333,' &ndash;  Online &ndash;',0),
	(341,9,2,333,'July 29 2017',0),
	(342,10,2,333,'Gives you an opportunity to work from home.Fiverr is a global online marketplace offering tasks and services, beginning at a cost of $5 per job performed, from which it gets its name. The site is primarily used by freelancers who use Fiverr to offer services to customers worldwide.[2] Currently, Fiverr lists more than three million services on the site that range between $5 and $500.',0),
	(343,1,2,NULL,'5',0),
	(344,2,2,343,'100',0),
	(345,3,2,343,'100',0),
	(346,4,2,343,'100',0),
	(347,5,2,343,'100',0),
	(348,6,2,343,'100',0),
	(349,7,2,343,'Former ',0),
	(350,8,2,343,' &ndash;  Dallas, TX &ndash;',0),
	(351,9,2,343,'July 20 2017',0),
	(352,10,2,343,'You get to meet great new people as you find new opportunities and just a great experience to have and get your negotiation skills from working with people there is great',0),
	(353,1,2,NULL,'4',0),
	(354,2,2,353,'80',0),
	(355,3,2,353,'80',0),
	(356,4,2,353,'80',0),
	(357,5,2,353,'80',0),
	(358,6,2,353,'60',0),
	(359,7,2,353,'Former ',0),
	(360,8,2,353,' &ndash;  US Based company &ndash;',0),
	(361,9,2,353,'June 21 2017',0),
	(362,10,2,353,'Since this is a freelance work, it helps me to gain extra money without leaving my house. Was able to meet different race of people and learned how to deal with them, and also how to adjust on their timeline.',0),
	(363,1,2,NULL,'5',0),
	(364,2,2,363,'100',0),
	(365,3,2,363,'40',0),
	(366,4,2,363,'40',0),
	(367,5,2,363,'100',0),
	(368,6,2,363,'100',0),
	(369,7,2,363,'Current ',0),
	(370,8,2,363,' &ndash;  online &ndash;',0),
	(371,9,2,363,'June 19 2017',0),
	(372,10,2,363,'Working in fiverr was really awesome because of my passion in producing music. I don&#39;t have to worry about the schedule because you can do your job anytime you want, anytime that you have a customer and you can even manipulate the price of the product, depending on the client&#39;s needs.',0),
	(373,11,2,363,'Be able to work anytime you want',0),
	(374,12,2,363,'Clients aren&#39;t very often',0),
	(375,1,2,NULL,'4',0),
	(376,2,2,375,'100',0),
	(377,3,2,375,'80',0),
	(378,4,2,375,'60',0),
	(379,5,2,375,'80',0),
	(380,6,2,375,'80',0),
	(381,7,2,375,'Current ',0),
	(382,8,2,375,' &ndash;  USA &ndash;',0),
	(383,9,2,375,'June 6 2017',0),
	(384,10,2,375,'I am a go- getter, and I would work for Fiverr again, as a side gig. I like the competitive environment, although if I were to do another gig for them I would consider their promotion options.',0),
	(385,11,2,375,'Set your own pay.',0),
	(386,12,2,375,'0',0),
	(387,1,2,NULL,'2',0),
	(388,2,2,387,'60',0),
	(389,3,2,387,'40',0),
	(390,4,2,387,'20',0),
	(391,5,2,387,'20',0),
	(392,6,2,387,'20',0),
	(393,7,2,387,'Former ',0),
	(394,8,2,387,' &ndash;  online &ndash;',0),
	(395,9,2,387,'June 6 2017',0),
	(396,10,2,387,'Freelance didn&#39;t work out for me. Hard to find real work and good pay. The whole Fiverr model is messed up, at least when I was there. Asking for essentially $3 for 500 words after fees is ridiculous',0),
	(397,1,2,NULL,'5',0),
	(398,2,2,397,'80',0),
	(399,3,2,397,'80',0),
	(400,4,2,397,'100',0),
	(401,5,2,397,'100',0),
	(402,6,2,397,'80',0),
	(403,7,2,397,'Former ',0),
	(404,8,2,397,' &ndash;  New York, NY &ndash;',0),
	(405,9,2,397,'April 22 2017',0),
	(406,10,2,397,'I am a professional writer with a passion for extensive writing. I have over 7years experience in helping companies and firms write highly SEO article',0),
	(407,1,2,NULL,'5',0),
	(408,2,2,407,'100',0),
	(409,3,2,407,'20',0),
	(410,4,2,407,'20',0),
	(411,5,2,407,'20',0),
	(412,6,2,407,'60',0),
	(413,7,2,407,'Former ',0),
	(414,8,2,407,' &ndash;  online &ndash;',0),
	(415,9,2,407,'February 8 2017',0),
	(416,10,2,407,'This is not a job for advancement but more a job for earning some cash on the side. It can be turned into a full-time job but would take great effort. There are many options of work to choose from',0),
	(417,1,2,NULL,'5',0),
	(418,2,2,417,'100',0),
	(419,3,2,417,'60',0),
	(420,4,2,417,'60',0),
	(421,5,2,417,'60',0),
	(422,6,2,417,'60',0),
	(423,7,2,417,'Current ',0),
	(424,8,2,417,' &ndash;  Utah &ndash;',0),
	(425,9,2,417,'December 19 2016',0),
	(426,10,2,417,'The freedom Fiverr gives you is really phenomenal. You can sell literally any services you would like, for whatever price you choose. The rating and review system is well thought out and implemented. Overall, a fantastic option for anyone with a desire to freelance',0),
	(427,1,2,NULL,'5',0),
	(428,2,2,427,'100',0),
	(429,3,2,427,'100',0),
	(430,4,2,427,'100',0),
	(431,5,2,427,'100',0),
	(432,6,2,427,'100',0),
	(433,7,2,427,'Former ',0),
	(434,8,2,427,' &ndash;  united states of america &ndash;',0),
	(435,9,2,427,'December 15 2016',0),
	(436,10,2,427,'awesome experience...good platform to show your skills and earn money...nice experience...it was simply awesome to work with them...one could earn as much as one wanted,without nay limitations...',0),
	(437,1,2,NULL,'5',0),
	(438,2,2,437,'100',0),
	(439,3,2,437,'100',0),
	(440,4,2,437,'100',0),
	(441,5,2,437,'100',0),
	(442,6,2,437,'100',0),
	(443,7,2,437,'Current ',0),
	(444,8,2,437,' &ndash;  Work at Home &ndash;',0),
	(445,9,2,437,'December 10 2016',0),
	(446,10,2,437,'Free working time',0),
	(447,11,2,437,'decide your own working time)Work from the comfort of homeDecide you payBuilds commitment towards job completionHelps starters develop a good attitude to career building',0),
	(448,1,2,NULL,'5',0),
	(449,2,2,448,'100',0),
	(450,3,2,448,'100',0),
	(451,4,2,448,'100',0),
	(452,5,2,448,'100',0),
	(453,6,2,448,'100',0),
	(454,7,2,448,'Current ',0),
	(455,8,2,448,' &ndash;  Work at Home &ndash;',0),
	(456,9,2,448,'October 3 2016',0),
	(457,10,2,448,'working with fiverr always a great time to spend working with fiverr customer and providing them satisfactions from my work.',0),
	(458,11,2,448,'good platform',0),
	(459,12,2,448,'good platform',0),
	(460,1,3,NULL,'5',0),
	(461,2,3,460,'100',0),
	(462,3,3,460,'100',0),
	(463,4,3,460,'100',0),
	(464,5,3,460,'100',0),
	(465,6,3,460,'100',0),
	(466,7,3,460,'Current ',0),
	(467,8,3,460,' &ndash;  San Francisco, CA &ndash;',0),
	(468,9,3,460,'June 10 2016',0),
	(469,10,3,460,'Typical day work is everyday and I work 40+ hours per week and The management system of Upwork is awesome there is no problem with money security and all the clients of upwork are honest and helpful and I always like to work with different clients come from different parts of the world.',0),
	(470,1,3,NULL,'4',0),
	(471,2,3,470,'80',0),
	(472,3,3,470,'80',0),
	(473,4,3,470,'80',0),
	(474,5,3,470,'80',0),
	(475,6,3,470,'80',0),
	(476,7,3,470,'Current ',0),
	(477,8,3,470,' &ndash;  United States &ndash;',0),
	(478,9,3,470,'January 10 2018',0),
	(479,10,3,470,'It was my first online job so I enjoyed it very much. It is a good and reliable platform for the beginners. I will enjoy working in upwork as a full-time worker in near future.',0),
	(480,1,3,NULL,'5',0),
	(481,2,3,480,'100',0),
	(482,3,3,480,'80',0),
	(483,4,3,480,'60',0),
	(484,5,3,480,'60',0),
	(485,6,3,480,'60',0),
	(486,7,3,480,'Virtual Store Management) ',0),
	(487,8,3,480,'Former ',0),
	(488,9,3,480,' &ndash;  Santa Clara County, CA &ndash;',0),
	(489,10,3,480,'January 8 2018',0),
	(490,11,3,480,'Your opportunity to earn more is unlimited but the job security is very low since it was freelancing. Your client can cancel your contract anytime, but the Upwork customer service are always there to help you.',0),
	(491,1,3,NULL,'4',0),
	(492,2,3,491,'100',0),
	(493,3,3,491,'60',0),
	(494,4,3,491,'60',0),
	(495,5,3,491,'80',0),
	(496,6,3,491,'80',0),
	(497,7,3,491,'Current ',0),
	(498,8,3,491,' &ndash;  Melbourne, FL &ndash;',0),
	(499,9,3,491,'January 6 2018',0),
	(500,10,3,491,'I would recommend Upwork for someone who wants convenience ',0),
	(501,11,3,491,'home-based), flexible ',0),
	(502,12,3,491,'set your availability) and stress-free ',0),
	(503,1,3,NULL,'5',0),
	(504,2,3,503,'0',0),
	(505,3,3,503,'0',0),
	(506,4,3,503,'0',0),
	(507,5,3,503,'0',0),
	(508,6,3,503,'0',0),
	(509,7,3,503,'Current ',0),
	(510,8,3,503,' &ndash;  Brentwood, CA &ndash;',0),
	(511,9,3,503,'January 5 2018',0),
	(512,10,3,503,'It is very helpful and easy to use. It assists you in connecting with the people you need to. I enjoy being able to set my own hours and desired salvery.',0),
	(513,1,3,NULL,'5',0),
	(514,2,3,513,'100',0),
	(515,3,3,513,'100',0),
	(516,4,3,513,'100',0),
	(517,5,3,513,'100',0),
	(518,6,3,513,'100',0),
	(519,7,3,513,'Former ',0),
	(520,8,3,513,' &ndash;  Remote &ndash;',0),
	(521,9,3,513,'January 4 2018',0),
	(522,10,3,513,'It is cool to work flexible as a freelancer, you can do what you want, you are the boss, but in my opinion it is better to work in the company to learn faster.',0),
	(523,1,3,NULL,'5',0),
	(524,2,3,523,'100',0),
	(525,3,3,523,'20',0),
	(526,4,3,523,'60',0),
	(527,5,3,523,'80',0),
	(528,6,3,523,'100',0),
	(529,7,3,523,'Former ',0),
	(530,8,3,523,' &ndash;  Wichita, KS &ndash;',0),
	(531,9,3,523,'January 4 2018',0),
	(532,10,3,523,'Upwork is an online work site that allows you to freelance.  I like the jobs offered and the ease as which to apply.  Sometimes, though, I can go weeks without a contract.',0),
	(533,11,3,523,'At-Work Home Environment',0),
	(534,12,3,523,'Competitive Job Applications',0),
	(535,1,3,NULL,'5',0),
	(536,2,3,535,'100',0),
	(537,3,3,535,'20',0),
	(538,4,3,535,'100',0),
	(539,5,3,535,'100',0),
	(540,6,3,535,'100',0),
	(541,7,3,535,'Current ',0),
	(542,8,3,535,' &ndash;  New York, NY &ndash;',0),
	(543,9,3,535,'December 27 2017',0),
	(544,10,3,535,'Working from home, Waiting for a client to choose if they want to work with you makes you pretty anxious but, it&#39;s worth it. definitely a job for those who want something to do in their spare time',0),
	(545,11,3,535,'Pay, Get to do what you love to do',0),
	(546,12,3,535,'clients can be pushy',0),
	(547,1,3,NULL,'5',0),
	(548,2,3,547,'100',0),
	(549,3,3,547,'100',0),
	(550,4,3,547,'100',0),
	(551,5,3,547,'100',0),
	(552,6,3,547,'100',0),
	(553,7,3,547,'Current ',0),
	(554,8,3,547,' &ndash;  Online &ndash;',0),
	(555,9,3,547,'December 26 2017',0),
	(556,10,3,547,'Provides good platform in acquiring online jobs that will support the employee and its family. I have learned a lot of new things most especially in Graphic Designing where I have molded my talent in such platform.',0),
	(557,11,3,547,'Good Pay Rate',0),
	(558,12,3,547,'Limited Connects',0),
	(559,1,3,NULL,'4',0),
	(560,2,3,559,'80',0),
	(561,3,3,559,'80',0),
	(562,4,3,559,'80',0),
	(563,5,3,559,'80',0),
	(564,6,3,559,'80',0),
	(565,7,3,559,'Current ',0),
	(566,8,3,559,' &ndash;  Bridgeport, CT &ndash;',0),
	(567,9,3,559,'December 22 2017',0),
	(568,10,3,559,'As a side job, it was very good. When I had down time, I would pick up a job and keep myself busy on another task/job.  The clients I worked with were very good to, they knew exactly what they wanted.',0),
	(569,11,3,559,'Unless you are constantly working/applying your account goes private',0),
	(570,1,3,NULL,'4',0),
	(571,2,3,570,'80',0),
	(572,3,3,570,'80',0),
	(573,4,3,570,'80',0),
	(574,5,3,570,'0',0),
	(575,6,3,570,'80',0),
	(576,7,3,570,'Former ',0),
	(577,8,3,570,' &ndash;  Santa Ana, CA &ndash;',0),
	(578,9,3,570,'December 14 2017',0),
	(579,10,3,570,'0',0),
	(580,11,3,570,'can get a real job',0),
	(581,12,3,570,'too high a percentage',0),
	(582,1,3,NULL,'5',0),
	(583,2,3,582,'100',0),
	(584,3,3,582,'20',0),
	(585,4,3,582,'40',0),
	(586,5,3,582,'100',0),
	(587,6,3,582,'60',0),
	(588,7,3,582,'Current ',0),
	(589,8,3,582,' &ndash;  TX UK &ndash;',0),
	(590,9,3,582,'December 1 2017',0),
	(591,10,3,582,'Fair enough.Worklifebalancesecured paymentwith options to withdraw or continue contract or projectcan work flexibleno boss physicallygreat fr those who have regular jobs',0),
	(592,11,3,582,'Part time homebased',0),
	(593,12,3,582,'Fees are too high',0),
	(594,1,3,NULL,'5',0),
	(595,2,3,594,'100',0),
	(596,3,3,594,'20',0),
	(597,4,3,594,'20',0),
	(598,5,3,594,'20',0),
	(599,6,3,594,'60',0),
	(600,7,3,594,'Current ',0),
	(601,8,3,594,' &ndash;  Chicago, IL &ndash;',0),
	(602,9,3,594,'November 30 2017',0),
	(603,10,3,594,'Upwork is a freelance organization that allows you to pick your own hours. It is very helpful for freelancers but it is also extremely competitive. It is tough to find clients at first but the more quality work you complete the better business gets.',0),
	(604,1,3,NULL,'5',0),
	(605,2,3,604,'100',0),
	(606,3,3,604,'100',0),
	(607,4,3,604,'100',0),
	(608,5,3,604,'100',0),
	(609,6,3,604,'100',0),
	(610,7,3,604,'Current ',0),
	(611,8,3,604,' &ndash;  Dinajpur &ndash;',0),
	(612,9,3,604,'November 28 2017',0),
	(613,10,3,604,'I am very happy to work with Upwork.com. Upwork is the very good marketplace. Their clients are very good and friendly behaviors. Upwork payment system also very good. I am appreciated.',0),
	(614,1,3,NULL,'5',0),
	(615,2,3,614,'80',0),
	(616,3,3,614,'80',0),
	(617,4,3,614,'60',0),
	(618,5,3,614,'100',0),
	(619,6,3,614,'80',0),
	(620,7,3,614,'Former ',0),
	(621,8,3,614,' &ndash;  Bitola &ndash;',0),
	(622,9,3,614,'November 27 2017',0),
	(623,10,3,614,'All an all it was awesome working for someone! I was working with a director, and the communication was crucial for the job success. We did that part smooth and it was fun',0),
	(624,1,3,NULL,'5',0),
	(625,2,3,624,'100',0),
	(626,3,3,624,'100',0),
	(627,4,3,624,'100',0),
	(628,5,3,624,'100',0),
	(629,6,3,624,'100',0),
	(630,7,3,624,'Current ',0),
	(631,8,3,624,' &ndash;  San Diego, CA &ndash;',0),
	(632,9,3,624,'November 25 2017',0),
	(633,10,3,624,'You can work any time you wont on project you think fit best to your skills. Great workspase to start growing yourself. Communicate with different professionals',0),
	(634,1,3,NULL,'5',0),
	(635,2,3,634,'100',0),
	(636,3,3,634,'100',0),
	(637,4,3,634,'100',0),
	(638,5,3,634,'100',0),
	(639,6,3,634,'100',0),
	(640,7,3,634,'Current ',0),
	(641,8,3,634,' &ndash;  Houston, TX &ndash;',0),
	(642,9,3,634,'November 15 2017',0),
	(643,10,3,634,'It&#39;s basic freelance work. You source out a potential client, or are searched by. Your review the required work, if acceptable, you set some terms and a offered rate. If client accepts, you begin work as required. If work is acceptable, you received payment immediately. Very easy system with open communication. I highly recommend it.',0),
	(644,1,3,NULL,'5',0),
	(645,2,3,644,'100',0),
	(646,3,3,644,'100',0),
	(647,4,3,644,'100',0),
	(648,5,3,644,'100',0),
	(649,6,3,644,'100',0),
	(650,7,3,644,'Current ',0),
	(651,8,3,644,' &ndash;  Mullica Hill, NJ &ndash;',0),
	(652,9,3,644,'November 14 2017',0),
	(653,10,3,644,'There are great opportunities to freelance but many people are using the service to hire at a lower rate and there are people willing to work for less money so it is hard to get a fair price for your work,',0),
	(654,11,3,644,'Easy to start',0),
	(655,12,3,644,'Difficult to find clients willing to pay competitive price',0),
	(656,1,3,NULL,'4',0),
	(657,2,3,656,'80',0),
	(658,3,3,656,'80',0),
	(659,4,3,656,'80',0),
	(660,5,3,656,'80',0),
	(661,6,3,656,'80',0),
	(662,7,3,656,'Former ',0),
	(663,8,3,656,' &ndash;  Remote &ndash;',0),
	(664,9,3,656,'November 13 2017',0),
	(665,10,3,656,'I can meet clients from different countries and a lot of projects in different stack.To meet US client and have long-term relation ship, this is one of the reasons I worked in Upwork and I am registering here.',0),
	(666,11,3,656,'Lots of job postings',0),
	(667,12,3,656,'Fake clients',0),
	(668,1,3,NULL,'1',0),
	(669,2,3,668,'20',0),
	(670,3,3,668,'20',0),
	(671,4,3,668,'20',0),
	(672,5,3,668,'20',0),
	(673,6,3,668,'20',0),
	(674,7,3,668,'Former ',0),
	(675,8,3,668,' &ndash;  San Francisco, CA &ndash;',0),
	(676,9,3,668,'November 11 2017',0),
	(677,10,3,668,'0',0),
	(678,11,3,668,'A way to find cheap work',0),
	(679,12,3,668,'A false promise of opportunity - run',0),
	(680,1,3,NULL,'4',0),
	(681,2,3,680,'60',0),
	(682,3,3,680,'80',0),
	(683,4,3,680,'80',0),
	(684,5,3,680,'80',0),
	(685,6,3,680,'80',0),
	(686,7,3,680,'Former ',0),
	(687,8,3,680,' &ndash;  Remote &ndash;',0),
	(688,9,3,680,'November 10 2017',0),
	(689,10,3,680,'While I was sad to part ways, I will say that Upwork provided a great place for anyone to develop as a Customer Support Rep. The job was a bit fast paced but the staff is one of the most supportive staffs I have ever been apart of, specifically a manager I was under during my entire tenure with the company. I would recommend them to anyone who is serious about advancing in Customer Service and looking to enhance their support abilities.',0),
	(690,11,3,680,'Great pay, Supportive enviornment',0),
	(691,12,3,680,'Time consuming, stressful',0);

/*!40000 ALTER TABLE `FormData` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table FormFields
# ------------------------------------------------------------

DROP TABLE IF EXISTS `FormFields`;

CREATE TABLE `FormFields` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

LOCK TABLES `FormFields` WRITE;
/*!40000 ALTER TABLE `FormFields` DISABLE KEYS */;

INSERT INTO `FormFields` (`id`, `name`, `deleted`)
VALUES
	(1,'rating',0),
	(2,'worklife_balance',0),
	(3,'benefits',0),
	(4,'job_security',0),
	(5,'management',0),
	(6,'culture',0),
	(7,'former_employee',0),
	(8,'location',0),
	(9,'date',0),
	(10,'review',0),
	(11,'pros',0),
	(12,'cons',0);

/*!40000 ALTER TABLE `FormFields` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table Platforms
# ------------------------------------------------------------

DROP TABLE IF EXISTS `Platforms`;

CREATE TABLE `Platforms` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `deleted` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

LOCK TABLES `Platforms` WRITE;
/*!40000 ALTER TABLE `Platforms` DISABLE KEYS */;

INSERT INTO `Platforms` (`id`, `name`, `deleted`)
VALUES
	(1,'Amazon Mechanical Turk',0),
	(2,'Fiverr',0),
	(3,'Upwork',0);

/*!40000 ALTER TABLE `Platforms` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;