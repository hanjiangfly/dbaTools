-- MySQL dump 10.13  Distrib 5.6.25, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: db_normal_log
-- ------------------------------------------------------
-- Server version	5.6.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `del_t_log_ad`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `del_t_log_ad` (
  `Id` int(11) NOT NULL DEFAULT '0' COMMENT '编号',
  `AdId` int(11) NOT NULL COMMENT '广告id',
  `UserName` varchar(100) NOT NULL COMMENT '游戏用户名',
  `PlatformUserName` varchar(100) NOT NULL COMMENT '平台用户名',
  `Site` varchar(30) NOT NULL COMMENT '登陆站点',
  `CreateDate` datetime NOT NULL COMMENT '创建时间',
  `ClickTime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '点击时间',
  `RegTime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_active`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_active` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` date NOT NULL COMMENT '操作时间',
  `Day1` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day1',
  `Day2` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day2',
  `Day3` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day3',
  `Day4` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day4',
  `Day5` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day5',
  `Day6` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day6',
  `Day7` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day7',
  `Day8` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day8',
  `Day9` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day9',
  `Day10` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day10',
  `Day11` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day11',
  `Day12` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day12',
  `Day13` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day13',
  `Day14` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day14',
  `Day15` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day15',
  `Day16` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day16',
  `Day17` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day17',
  `Day18` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day18',
  `Day19` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day19',
  `Day20` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day20',
  `Day21` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day21',
  `Day22` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day22',
  `Day23` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day23',
  `Day24` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day24',
  `Day25` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day25',
  `Day26` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day26',
  `Day27` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day27',
  `Day28` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day28',
  `Day29` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day29',
  `Day30` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day30',
  `Day31` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day31',
  PRIMARY KEY (`CurrentDate`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户每日活跃度';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_ad`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_ad` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `AdId` int(11) NOT NULL COMMENT '广告id',
  `UserName` varchar(100) NOT NULL COMMENT '游戏用户名',
  `PlatformUserName` varchar(100) NOT NULL COMMENT '平台用户名',
  `Site` varchar(30) NOT NULL COMMENT '登陆站点',
  `CreateDate` datetime NOT NULL COMMENT '创建时间',
  `ClickTime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '点击时间',
  `RegTime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '注册时间',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Index_1` (`UserName`,`Site`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告统计记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_alarm`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_alarm` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `Gold` int(11) NOT NULL DEFAULT '0' COMMENT '黄金',
  `Strategy` int(11) NOT NULL DEFAULT '0' COMMENT '战魂',
  `WaterCrystal` int(11) NOT NULL DEFAULT '0' COMMENT '光晶',
  `GP` int(11) NOT NULL DEFAULT '0' COMMENT '经验',
  `FightTime` int(11) NOT NULL DEFAULT '0' COMMENT '战斗场数',
  `ItemCount` int(11) NOT NULL DEFAULT '0' COMMENT '获取物品次数',
  KEY `UserId` (`UserId`),
  KEY `CurrentDate` (`CurrentDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户报警日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_answerquestion`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_answerquestion` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `NickName` varchar(50) NOT NULL COMMENT '昵称',
  `CurOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前积分排名',
  `CurrentScore` int(11) NOT NULL DEFAULT '0' COMMENT '当前积分',
  `Curnum` int(11) NOT NULL DEFAULT '0' COMMENT '答题数目',
  `doublebless` int(11) NOT NULL DEFAULT '0' COMMENT '双倍祝福剩余次数',
  `wsisdomheart` int(11) NOT NULL DEFAULT '0' COMMENT '智慧之心剩余次数',
  `choiceeyes` int(11) NOT NULL DEFAULT '0' COMMENT '抉择之眼剩余次数',
  `AQDate` datetime DEFAULT NULL COMMENT '答题时间',
  `AQnum` int(11) NOT NULL DEFAULT '0' COMMENT '参与答题人数',
  KEY `Index_1` (`UserId`,`AQDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='答题记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_bag`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_bag` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `free` tinyint(4) NOT NULL COMMENT '0没有免费格子1有免费格子',
  `count` tinyint(4) DEFAULT NULL COMMENT '付费格子的数量',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`,`CurrentDate`)
) ENGINE=InnoDB AUTO_INCREMENT=593 DEFAULT CHARSET=utf8 COMMENT='用户开背包格子日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_bloodybattle`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_bloodybattle` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `NodeId` int(11) NOT NULL COMMENT '节点Id',
  `Type` tinyint(4) NOT NULL COMMENT '战斗类型(1,挑战;2,占领)',
  `Attacker` int(11) NOT NULL COMMENT '攻击方userId',
  `Defencer` int(11) NOT NULL COMMENT '防御方userId',
  `BattleResult` tinyint(4) NOT NULL COMMENT '战斗结果(1,胜利)',
  `OccupySuccess` tinyint(4) DEFAULT '0' COMMENT '是否成功占领',
  `ChallengeScore` int(11) DEFAULT '0' COMMENT '挑战评分',
  `CurrentDate` datetime NOT NULL COMMENT '战斗日期',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`Attacker`,`CurrentDate`),
  KEY `Index_2` (`NodeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='血战灵鹫日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_boss`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_boss` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `UserId` int(11) DEFAULT NULL COMMENT ' 用户ID',
  `CampaignId` int(11) DEFAULT NULL COMMENT '副本ID',
  `Type` tinyint(11) DEFAULT NULL COMMENT '类型（1为使用擂鼓符2为复活3为时间消耗）',
  `CurrentDate` datetime DEFAULT NULL COMMENT '当前时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=496 DEFAULT CHARSET=utf8 COMMENT='江湖boss日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_bottle`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_bottle` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '键主ID',
  `UserId` int(11) DEFAULT NULL COMMENT '用户ID',
  `Type` int(11) DEFAULT NULL COMMENT '类型(1为单次砸罐2为批量砸罐3全部出售4全部拾取6打开界面请求数据7今日排行)',
  `CurrentDate` datetime DEFAULT NULL COMMENT '当前时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4471 DEFAULT CHARSET=utf8 COMMENT='幸运魔罐日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_building`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_building` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `BuildingId` int(11) NOT NULL COMMENT '建筑模版ID',
  `Grade` int(11) NOT NULL DEFAULT '0' COMMENT '等级',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`),
  KEY `Index_2` (`CurrentDate`)
) ENGINE=InnoDB AUTO_INCREMENT=16995 DEFAULT CHARSET=utf8 COMMENT='用户建筑升级日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_campaign`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_campaign` (
  `CampaignId` int(11) NOT NULL COMMENT '副本ID',
  `CampaignName` varchar(20) DEFAULT NULL COMMENT '副本名称',
  `IsFirst` tinyint(1) NOT NULL COMMENT '是否第一次',
  `IsPass` tinyint(1) NOT NULL COMMENT '是否通过',
  `OpenTime` datetime NOT NULL COMMENT '开始时间',
  `StopTime` datetime NOT NULL COMMENT '结束时间',
  `CostTime` int(11) NOT NULL COMMENT '持续时间',
  `PlayerCount` smallint(6) NOT NULL COMMENT '玩家数量',
  `Capaity` smallint(6) NOT NULL COMMENT '容量',
  `Remarks` varchar(100) DEFAULT NULL COMMENT '备注',
  `IsCross` tinyint(1) NOT NULL COMMENT '是否跨服',
  KEY `Index_1` (`CampaignId`,`OpenTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='参与剧情副本日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_challenge`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_challenge` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `TarUserId` int(11) DEFAULT NULL,
  `TarNickName` varchar(50) DEFAULT NULL,
  `IsAttack` tinyint(4) DEFAULT NULL COMMENT '是否被攻击(1是，0否)',
  `CurRank` smallint(6) DEFAULT NULL,
  `Grades` smallint(6) DEFAULT NULL,
  `GpOrder` int(11) DEFAULT NULL,
  `Gp` bigint(20) DEFAULT NULL,
  `Job` tinyint(4) DEFAULT NULL,
  `Forward` tinyint(4) DEFAULT NULL COMMENT '排名是否向前',
  `LogDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1951 DEFAULT CHARSET=utf8 COMMENT='单人挑战日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_channel`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_channel` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `UserId` int(11) DEFAULT NULL COMMENT '用户ID',
  `MasterType` int(11) DEFAULT NULL COMMENT '脉经主类型',
  `CurSonType` int(11) DEFAULT NULL COMMENT '子类型',
  `BlessValue` int(11) DEFAULT NULL COMMENT '祝福值',
  `MasterGrade` int(11) DEFAULT NULL COMMENT '最大等级',
  `CurrentDate` datetime DEFAULT NULL COMMENT '前当时间',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`,`CurrentDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='经脉修炼日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_chargetreasure`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_chargetreasure` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `Types` tinyint(4) NOT NULL DEFAULT '0' COMMENT '类型(1充值增加，2道具增加，3寻宝消耗)',
  `Count` int(11) NOT NULL DEFAULT '0' COMMENT '数量',
  `LogTime` datetime DEFAULT NULL COMMENT '创建时间',
  KEY `Index_1` (`UserId`,`LogTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='七星寻宝日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_charm`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_charm` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `SendId` int(11) NOT NULL COMMENT '发送ID',
  `ReceiveId` int(11) NOT NULL COMMENT '接收ID',
  `ItemId` int(11) NOT NULL COMMENT '模版ID',
  `Count` smallint(6) NOT NULL COMMENT '数量',
  PRIMARY KEY (`Id`),
  KEY `Index_2` (`CurrentDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='魅力值日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_chat`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_chat` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL COMMENT '发送者',
  `ToUserId` int(11) DEFAULT NULL COMMENT '接收者',
  `ChannelType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '1千里传音 4私聊 5帮会 6队伍 8当前 10江湖',
  `Content` varchar(1000) DEFAULT NULL COMMENT '聊天内容',
  `CurrentDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`CurrentDate`)
) ENGINE=InnoDB AUTO_INCREMENT=5588 DEFAULT CHARSET=utf8 COMMENT='聊天记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_collect`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_collect` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `UserId` int(11) DEFAULT NULL COMMENT '用户ID',
  `TemplateId` int(11) DEFAULT NULL COMMENT '道具Id',
  `CurrentDate` datetime DEFAULT NULL COMMENT '当前日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COMMENT='采集任务(在任务中每采集一次就记录一次)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_consortiaaltar`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_consortiaaltar` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `ConsortiaID` int(11) NOT NULL COMMENT '公会编号',
  `AltarType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '祭坛类型',
  `WaveNum` tinyint(4) NOT NULL DEFAULT '0' COMMENT '波数',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`CurrentDate`,`ConsortiaID`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COMMENT='魔神祭坛日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_consortiaboxinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_consortiaboxinfo` (
  `UserId` int(11) NOT NULL COMMENT '分配的玩家ID',
  `TemplateId` int(11) NOT NULL COMMENT '分配的物品模板ID',
  `ConsortiaId` int(11) NOT NULL COMMENT '分配宝箱的公会ID',
  `Count` int(11) NOT NULL COMMENT ' 分配数量',
  `Time` datetime NOT NULL COMMENT '分配时间',
  KEY `Index_1` (`UserId`,`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公会宝箱分配日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_consortiafaminfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_consortiafaminfo` (
  `Time` datetime NOT NULL COMMENT '时间',
  `ConsortiaId` int(11) NOT NULL COMMENT ' 公会ID',
  `IsPick` tinyint(2) NOT NULL COMMENT '当天是否收获（0：未收获，1：已收获）',
  `Contribute` int(11) NOT NULL COMMENT '当天收获贡献总量',
  `Amount` tinyint(4) unsigned NOT NULL COMMENT '当天消灭入侵者个数',
  KEY `Index_1` (`Time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='公会秘境日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_consortiaoffer`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_consortiaoffer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `ConsortiaId` int(11) NOT NULL COMMENT '公会ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `OfferType` int(11) NOT NULL DEFAULT '0' COMMENT '财富类型（1、公会贡献2、公会活跃度）',
  `Count` int(11) NOT NULL COMMENT '财富数量',
  `LeftCount` int(11) NOT NULL COMMENT '剩余财富数量',
  `MastrType` tinyint(4) NOT NULL COMMENT '主类型',
  `SonType` tinyint(4) NOT NULL COMMENT '子类型',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`ConsortiaId`),
  KEY `Index_2` (`CurrentDate`)
) ENGINE=InnoDB AUTO_INCREMENT=3817 DEFAULT CHARSET=utf8 COMMENT='公会财富日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_controlop`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_controlop` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `MasterType` int(11) NOT NULL COMMENT '主类',
  `SonType` int(11) NOT NULL COMMENT '子类',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `Param1` int(11) NOT NULL DEFAULT '0' COMMENT '参数1',
  `Param2` int(11) NOT NULL DEFAULT '0' COMMENT '参数2',
  `Param3` int(11) NOT NULL DEFAULT '0' COMMENT '参数3',
  `Param4` int(11) NOT NULL DEFAULT '0' COMMENT '参数4',
  `Param5` int(11) NOT NULL DEFAULT '0' COMMENT '参数5',
  KEY `AK_Key_1` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='中控操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_creditscore`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_creditscore` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `ChangeType` int(11) NOT NULL COMMENT '消费子类型',
  `Score` int(11) NOT NULL COMMENT '消费信用点',
  `SpareScore` int(11) NOT NULL COMMENT '结余信用点',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=809 DEFAULT CHARSET=utf8 COMMENT='用户信用点日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_crossmirror`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_crossmirror` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `mirrorIndex` int(11) NOT NULL COMMENT '镜像索引',
  `mirrorLevel` tinyint(4) NOT NULL COMMENT '镜像层级',
  `IsSuccessLevel` tinyint(1) NOT NULL COMMENT '是否完成当前层',
  `BattleResult` tinyint(4) NOT NULL COMMENT '挑战结果(1胜利,2失败)',
  `BattleTime` datetime NOT NULL COMMENT '挑战时间',
  PRIMARY KEY (`Id`),
  KEY `idx` (`UserId`,`BattleTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='镜像挑战日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_day_active`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_day_active` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `UserID` int(11) DEFAULT NULL COMMENT '用户ID',
  `ConsortiaId` int(11) DEFAULT NULL COMMENT '帮会ID',
  `ActiveValue` int(11) DEFAULT NULL COMMENT '活跃值',
  `CurrentDate` datetime DEFAULT NULL COMMENT '创建日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2009 DEFAULT CHARSET=utf8 COMMENT='玩家活跃值日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_dayreward`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_dayreward` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `UserId` int(11) DEFAULT NULL COMMENT '用户ID',
  `CurrentDate` datetime DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1068 DEFAULT CHARSET=utf8 COMMENT='奖励大厅日志表(每抽奖一次有一条记录)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_drop`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_drop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `ItemId` int(11) NOT NULL COMMENT '物品Id',
  `TemplateId` int(11) NOT NULL COMMENT '物品模板Id',
  `ItemAddType` int(11) NOT NULL COMMENT '掉落来源类型',
  `Count` int(11) NOT NULL COMMENT '数量',
  `Para1` int(11) NOT NULL COMMENT '扩展参数',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`UserId`,`CurrentDate`)
) ENGINE=InnoDB AUTO_INCREMENT=38671 DEFAULT CHARSET=utf8 COMMENT='物品掉落日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_dungeon`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_dungeon` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增id',
  `CreateTime` datetime NOT NULL COMMENT '创建日期',
  `UpdateTime` datetime NOT NULL COMMENT '更新时间',
  `ScoreSession1` int(11) NOT NULL COMMENT '分数段1人数（0分到第一点）',
  `ScoreSession2` int(11) NOT NULL COMMENT '分数段2人数',
  `ScoreSession3` int(11) NOT NULL COMMENT '分数段3人数',
  `ScoreSession4` int(11) NOT NULL COMMENT '分数段4人数',
  `ScoreSession5` int(11) NOT NULL COMMENT '分数段5人数',
  `ScoreSession6` int(11) NOT NULL COMMENT '分数段6人数（超过最高）',
  `BuyStepCount` int(11) NOT NULL COMMENT '购买步数次数',
  `BuyStepDiamond` int(11) NOT NULL COMMENT '购买步数消耗钻石',
  `BuyReviveCount` int(11) NOT NULL COMMENT '购买复活次数',
  `BuyReviveDiamond` int(11) NOT NULL COMMENT '购买复活消耗钻石',
  `BuySkipParalysisCount` int(11) NOT NULL COMMENT '购买跳过麻痹次数',
  `BuySkipParalysisDiamond` int(11) NOT NULL COMMENT '购买跳过麻痹消耗钻石',
  `ReviveSelfCount` int(11) NOT NULL COMMENT '复活自己次数',
  `TreasureCount` int(11) NOT NULL COMMENT '藏宝次数',
  `SearchTreasureCount` int(11) NOT NULL COMMENT '搜索藏宝次数',
  PRIMARY KEY (`Id`),
  KEY `index_createTime` (`CreateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8 COMMENT='珍珑棋局';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_farm`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_farm` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `FriendId` int(11) NOT NULL COMMENT '好友ID',
  `Pos` smallint(6) NOT NULL DEFAULT '-1' COMMENT '位置',
  `OpType` int(11) NOT NULL COMMENT '操作类型',
  `ItemTemplateID` int(11) NOT NULL DEFAULT '0' COMMENT '农作物模板ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `BeforeGrades` int(11) NOT NULL DEFAULT '0' COMMENT '升级前等级',
  `AfterGrades` int(11) NOT NULL DEFAULT '0' COMMENT '升级之后等级',
  `ReapItemTemplateID` int(11) NOT NULL DEFAULT '0' COMMENT '收获的物品模板ID',
  `ReapCount` int(11) NOT NULL DEFAULT '0' COMMENT '收获的物品数量',
  KEY `AK_Key_1` (`Id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=517 DEFAULT CHARSET=utf8 COMMENT='用户农场日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_fashion`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_fashion` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `OpType` tinyint(1) DEFAULT NULL COMMENT '操作类型',
  `TemplateId` int(11) DEFAULT NULL COMMENT '时装模版id',
  `CurrentDate` datetime DEFAULT NULL,
  `Level` int(3) DEFAULT NULL COMMENT '时装星级',
  `count` int(2) DEFAULT NULL COMMENT '消耗星魂',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='时装操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_fight`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_fight` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `FightType` int(11) NOT NULL COMMENT '战斗类型',
  `FightCount` int(11) NOT NULL COMMENT '战斗场数',
  `DayTime` date NOT NULL COMMENT '时间',
  KEY `Index_1` (`DayTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户战斗记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_fish`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_fish` (
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `attemptCount` int(4) NOT NULL DEFAULT '0' COMMENT '钓鱼次数',
  `invitCount` int(4) NOT NULL DEFAULT '0' COMMENT '邀请次数',
  `invitSuccCount` int(4) NOT NULL DEFAULT '0' COMMENT '邀请成功次数',
  `awardCount` int(4) NOT NULL DEFAULT '0' COMMENT '获得奖励次数',
  `bigCount` int(4) NOT NULL DEFAULT '0' COMMENT '狂暴鱼触发次数',
  `bigSuccCount` int(4) NOT NULL DEFAULT '0' COMMENT '成功获得狂暴鱼次数',
  `clearCD` int(4) NOT NULL DEFAULT '0' COMMENT '清除CD次数',
  `playTime` datetime NOT NULL COMMENT '操作时间',
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户捕鱼日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_force`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_force` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `OpType` tinyint(4) NOT NULL COMMENT '操作类型(1进入,2离开,3战斗结束,4运输,5恢复血量,6战场结束时结算,7清除跨服链接,8信息更新,9任务更新,10buffer更新)',
  `OpTime` datetime NOT NULL COMMENT '操作时间',
  `Params` varchar(100) NOT NULL COMMENT '日志参数',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='蓬莱岛日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_gemmaze`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_gemmaze` (
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `movedCount` int(4) NOT NULL DEFAULT '0' COMMENT '移动宝石次数',
  `invitCount` int(4) NOT NULL DEFAULT '0' COMMENT '邀请次数',
  `invitSuccCount` int(4) NOT NULL DEFAULT '0' COMMENT '邀请成功次数',
  `awardCount` int(4) NOT NULL DEFAULT '0' COMMENT '获得奖励次数',
  `awardHelpCount` int(4) NOT NULL DEFAULT '0' COMMENT '获得协助奖励次数',
  `buyAttempts` int(4) NOT NULL DEFAULT '0' COMMENT '购买可移动次数',
  `playTime` datetime NOT NULL COMMENT '操作时间',
  KEY `userId` (`userId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户夺宝达人日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_gemmaze_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_gemmaze_item` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `UserId` int(11) DEFAULT NULL COMMENT '户用ID',
  `TemplateId` int(11) DEFAULT NULL COMMENT '道具id',
  `Count` int(11) DEFAULT NULL COMMENT '数量',
  `CurrentDate` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_geste`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_geste` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `ChangeType` int(11) NOT NULL COMMENT '消费子类型',
  `Geste` int(11) NOT NULL COMMENT '消费荣誉',
  `SpareGeste` int(11) NOT NULL COMMENT '结余荣誉',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=2643 DEFAULT CHARSET=utf8 COMMENT='用户荣誉日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_gifttoken`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_gifttoken` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` date NOT NULL COMMENT '操作时间',
  `Pay1` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay1',
  `Current1` int(11) NOT NULL DEFAULT '0' COMMENT 'Current1',
  `Pay2` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay2',
  `Current2` int(11) NOT NULL DEFAULT '0' COMMENT 'Current2',
  `Pay3` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay3',
  `Current3` int(11) NOT NULL DEFAULT '0' COMMENT 'Current3',
  `Pay4` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay4',
  `Current4` int(11) NOT NULL DEFAULT '0' COMMENT 'Current4',
  `Pay5` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay5',
  `Current5` int(11) NOT NULL DEFAULT '0' COMMENT 'Current5',
  `Pay6` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay6',
  `Current6` int(11) NOT NULL DEFAULT '0' COMMENT 'Current6',
  `Pay7` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay7',
  `Current7` int(11) NOT NULL DEFAULT '0' COMMENT 'Current7',
  `Pay8` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay8',
  `Current8` int(11) NOT NULL DEFAULT '0' COMMENT 'Current8',
  `Pay9` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay9',
  `Current9` int(11) NOT NULL DEFAULT '0' COMMENT 'Current9',
  `Pay10` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay10',
  `Current10` int(11) NOT NULL DEFAULT '0' COMMENT 'Current10',
  `Pay11` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay11',
  `Current11` int(11) NOT NULL DEFAULT '0' COMMENT 'Current11',
  `Pay12` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay12',
  `Current12` int(11) NOT NULL DEFAULT '0' COMMENT 'Current12',
  `Pay13` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay13',
  `Current13` int(11) NOT NULL DEFAULT '0' COMMENT 'Current13',
  `Pay14` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay14',
  `Current14` int(11) NOT NULL DEFAULT '0' COMMENT 'Current14',
  `Pay15` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay15',
  `Current15` int(11) NOT NULL DEFAULT '0' COMMENT 'Current15',
  `Pay16` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay16',
  `Current16` int(11) NOT NULL DEFAULT '0' COMMENT 'Current16',
  `Pay17` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay17',
  `Current17` int(11) NOT NULL DEFAULT '0' COMMENT 'Current17',
  `Pay18` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay18',
  `Current18` int(11) NOT NULL DEFAULT '0' COMMENT 'Current18',
  `Pay19` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay19',
  `Current19` int(11) NOT NULL DEFAULT '0' COMMENT 'Current19',
  `Pay20` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay20',
  `Current20` int(11) NOT NULL DEFAULT '0' COMMENT 'Current20',
  `Pay21` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay21',
  `Current21` int(11) NOT NULL DEFAULT '0' COMMENT 'Current21',
  `Pay22` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay22',
  `Current22` int(11) NOT NULL DEFAULT '0' COMMENT 'Current22',
  `Pay23` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay23',
  `Current23` int(11) NOT NULL DEFAULT '0' COMMENT 'Current23',
  `Pay24` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay24',
  `Current24` int(11) NOT NULL DEFAULT '0' COMMENT 'Current24',
  `Pay25` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay25',
  `Current25` int(11) NOT NULL DEFAULT '0' COMMENT 'Current25',
  `Pay26` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay26',
  `Current26` int(11) NOT NULL DEFAULT '0' COMMENT 'Current26',
  `Pay27` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay27',
  `Current27` int(11) NOT NULL DEFAULT '0' COMMENT 'Current27',
  `Pay28` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay28',
  `Current28` int(11) NOT NULL DEFAULT '0' COMMENT 'Current28',
  `Pay29` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay29',
  `Current29` int(11) NOT NULL DEFAULT '0' COMMENT 'Current29',
  `Pay30` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay30',
  `Current30` int(11) NOT NULL DEFAULT '0' COMMENT 'Current30',
  `Pay31` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay31',
  `Current31` int(11) NOT NULL DEFAULT '0' COMMENT 'Current31',
  PRIMARY KEY (`CurrentDate`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户一个月内每日消费绑定元宝';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_gifttokendata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_gifttokendata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `ChangeType` smallint(6) NOT NULL COMMENT '消费子类型',
  `GiftToken` int(11) NOT NULL COMMENT '消费礼金',
  `SpareGiftToken` int(11) NOT NULL COMMENT '结余礼金',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=6572 DEFAULT CHARSET=utf8 COMMENT='用户定绑元宝日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_gold`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_gold` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` date NOT NULL COMMENT '操作时间',
  `Pay1` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay1',
  `Current1` int(11) NOT NULL DEFAULT '0' COMMENT 'Current1',
  `Pay2` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay2',
  `Current2` int(11) NOT NULL DEFAULT '0' COMMENT 'Current2',
  `Pay3` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay3',
  `Current3` int(11) NOT NULL DEFAULT '0' COMMENT 'Current3',
  `Pay4` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay4',
  `Current4` int(11) NOT NULL DEFAULT '0' COMMENT 'Current4',
  `Pay5` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay5',
  `Current5` int(11) NOT NULL DEFAULT '0' COMMENT 'Current5',
  `Pay6` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay6',
  `Current6` int(11) NOT NULL DEFAULT '0' COMMENT 'Current6',
  `Pay7` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay7',
  `Current7` int(11) NOT NULL DEFAULT '0' COMMENT 'Current7',
  `Pay8` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay8',
  `Current8` int(11) NOT NULL DEFAULT '0' COMMENT 'Current8',
  `Pay9` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay9',
  `Current9` int(11) NOT NULL DEFAULT '0' COMMENT 'Current9',
  `Pay10` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay10',
  `Current10` int(11) NOT NULL DEFAULT '0' COMMENT 'Current10',
  `Pay11` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay11',
  `Current11` int(11) NOT NULL DEFAULT '0' COMMENT 'Current11',
  `Pay12` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay12',
  `Current12` int(11) NOT NULL DEFAULT '0' COMMENT 'Current12',
  `Pay13` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay13',
  `Current13` int(11) NOT NULL DEFAULT '0' COMMENT 'Current13',
  `Pay14` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay14',
  `Current14` int(11) NOT NULL DEFAULT '0' COMMENT 'Current14',
  `Pay15` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay15',
  `Current15` int(11) NOT NULL DEFAULT '0' COMMENT 'Current15',
  `Pay16` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay16',
  `Current16` int(11) NOT NULL DEFAULT '0' COMMENT 'Current16',
  `Pay17` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay17',
  `Current17` int(11) NOT NULL DEFAULT '0' COMMENT 'Current17',
  `Pay18` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay18',
  `Current18` int(11) NOT NULL DEFAULT '0' COMMENT 'Current18',
  `Pay19` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay19',
  `Current19` int(11) NOT NULL DEFAULT '0' COMMENT 'Current19',
  `Pay20` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay20',
  `Current20` int(11) NOT NULL DEFAULT '0' COMMENT 'Current20',
  `Pay21` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay21',
  `Current21` int(11) NOT NULL DEFAULT '0' COMMENT 'Current21',
  `Pay22` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay22',
  `Current22` int(11) NOT NULL DEFAULT '0' COMMENT 'Current22',
  `Pay23` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay23',
  `Current23` int(11) NOT NULL DEFAULT '0' COMMENT 'Current23',
  `Pay24` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay24',
  `Current24` int(11) NOT NULL DEFAULT '0' COMMENT 'Current24',
  `Pay25` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay25',
  `Current25` int(11) NOT NULL DEFAULT '0' COMMENT 'Current25',
  `Pay26` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay26',
  `Current26` int(11) NOT NULL DEFAULT '0' COMMENT 'Current26',
  `Pay27` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay27',
  `Current27` int(11) NOT NULL DEFAULT '0' COMMENT 'Current27',
  `Pay28` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay28',
  `Current28` int(11) NOT NULL DEFAULT '0' COMMENT 'Current28',
  `Pay29` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay29',
  `Current29` int(11) NOT NULL DEFAULT '0' COMMENT 'Current29',
  `Pay30` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay30',
  `Current30` int(11) NOT NULL DEFAULT '0' COMMENT 'Current30',
  `Pay31` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay31',
  `Current31` int(11) NOT NULL DEFAULT '0' COMMENT 'Current31',
  PRIMARY KEY (`CurrentDate`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户消费黄金';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_grade`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_grade` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` date NOT NULL COMMENT '操作时间',
  `Day1` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day1',
  `Day2` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day2',
  `Day3` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day3',
  `Day4` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day4',
  `Day5` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day5',
  `Day6` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day6',
  `Day7` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day7',
  `Day8` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day8',
  `Day9` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day9',
  `Day10` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day10',
  `Day11` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day11',
  `Day12` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day12',
  `Day13` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day13',
  `Day14` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day14',
  `Day15` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day15',
  `Day16` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day16',
  `Day17` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day17',
  `Day18` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day18',
  `Day19` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day19',
  `Day20` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day20',
  `Day21` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day21',
  `Day22` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day22',
  `Day23` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day23',
  `Day24` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day24',
  `Day25` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day25',
  `Day26` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day26',
  `Day27` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day27',
  `Day28` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day28',
  `Day29` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day29',
  `Day30` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day30',
  `Day31` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day31',
  PRIMARY KEY (`CurrentDate`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户每日等级日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_guildwarinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_guildwarinfo` (
  `StartTime` datetime NOT NULL COMMENT '开始时间',
  `OverTime` datetime NOT NULL COMMENT '结束时间',
  `WinConsortiaId` int(11) NOT NULL COMMENT '胜方公会ID',
  `LoseConsortiaId` int(11) NOT NULL COMMENT '败方公会ID',
  `WinSidePeople` tinyint(4) unsigned NOT NULL COMMENT '结束时胜方人数',
  `LoseSidePeople` tinyint(4) unsigned NOT NULL COMMENT '结束时败方人数',
  `WinType` tinyint(4) NOT NULL COMMENT '战胜方式（0：时间到，1：攻破主图腾）',
  `WinScore` smallint(6) unsigned NOT NULL COMMENT '结束时胜方积分',
  `LoseScore` smallint(6) unsigned NOT NULL COMMENT '结束时败方积分',
  `SuccUserId` varchar(500) DEFAULT NULL COMMENT '胜方获得奖励玩家ID',
  `LostUserId` varchar(500) DEFAULT NULL COMMENT '败方获得奖励玩家ID',
  KEY `StartTime` (`StartTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公会战日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_hangup`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_hangup` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `UserId` int(11) DEFAULT NULL COMMENT '用户ID',
  `RewardSecond` int(11) DEFAULT NULL COMMENT '修行时间',
  `IsDouble` tinyint(11) DEFAULT NULL COMMENT '是否有双倍(0不是双倍修行1双倍修行)',
  `CurrentDate` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=24298 DEFAULT CHARSET=utf8 COMMENT='修行崖日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_horcrux`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_horcrux` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `UserId` int(11) DEFAULT NULL COMMENT '用户ID',
  `Op` tinyint(4) DEFAULT NULL COMMENT '操作类型（0：查看魂器列表，1：激活魂器，2：进阶魂器）',
  `Type` tinyint(4) DEFAULT NULL COMMENT '进阶类型（0：进阶，1：自动进阶）',
  `TemplateId` int(11) DEFAULT NULL COMMENT '器魂ID',
  `Auto` tinyint(4) DEFAULT '0' COMMENT '是否自动购买(0:不，1：自动购买)',
  `NeedItem` int(11) DEFAULT '0' COMMENT '耗消昆仑魂数量',
  `CurrentDate` datetime DEFAULT NULL COMMENT '当前日期',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`,`CurrentDate`)
) ENGINE=InnoDB AUTO_INCREMENT=10111 DEFAULT CHARSET=utf8 COMMENT='魂器日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_interface`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_interface` (
  `interfaceName` varchar(100) NOT NULL COMMENT '接口名',
  `update_date` datetime NOT NULL COMMENT '时间戳'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='趣游接口表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_interface_int`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_interface_int` (
  `interfaceName` varchar(100) NOT NULL COMMENT '接口名',
  `primaryId` int(11) NOT NULL COMMENT '主键读取ID',
  `update_date` datetime NOT NULL COMMENT '时间戳'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='趣游接口表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_iteminfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_iteminfo` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `ItemId` int(11) NOT NULL COMMENT '物品编号',
  `TempId` int(11) NOT NULL COMMENT '模板编号',
  `OldCount` int(11) NOT NULL COMMENT '以前数量',
  `NowCount` int(11) NOT NULL COMMENT '当前数量',
  `OldBind` int(11) NOT NULL DEFAULT '0' COMMENT '以前绑定类型',
  `NowBind` int(11) NOT NULL DEFAULT '0' COMMENT '当前绑定类型',
  `ChangeType` int(11) NOT NULL COMMENT '改变方式',
  `Grades` smallint(6) NOT NULL DEFAULT '0' COMMENT '最后等级',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=1634315 DEFAULT CHARSET=utf8 COMMENT='物品操作日志'
/*!50100 PARTITION BY RANGE (to_days(CurrentDate))
(PARTITION p_735107 VALUES LESS THAN (735108) ENGINE = InnoDB,
 PARTITION p_735108 VALUES LESS THAN (735109) ENGINE = InnoDB,
 PARTITION p_735109 VALUES LESS THAN (735110) ENGINE = InnoDB,
 PARTITION p_735110 VALUES LESS THAN (735111) ENGINE = InnoDB,
 PARTITION p_735111 VALUES LESS THAN (735112) ENGINE = InnoDB,
 PARTITION p_735112 VALUES LESS THAN (735113) ENGINE = InnoDB,
 PARTITION p_735113 VALUES LESS THAN (735114) ENGINE = InnoDB,
 PARTITION p_735114 VALUES LESS THAN (735115) ENGINE = InnoDB,
 PARTITION p_735115 VALUES LESS THAN (735116) ENGINE = InnoDB,
 PARTITION p_735116 VALUES LESS THAN (735117) ENGINE = InnoDB,
 PARTITION p_735117 VALUES LESS THAN (735118) ENGINE = InnoDB,
 PARTITION p_735118 VALUES LESS THAN (735119) ENGINE = InnoDB,
 PARTITION p_735119 VALUES LESS THAN (735120) ENGINE = InnoDB,
 PARTITION p_735120 VALUES LESS THAN (735121) ENGINE = InnoDB,
 PARTITION p_735121 VALUES LESS THAN (735122) ENGINE = InnoDB,
 PARTITION p_735122 VALUES LESS THAN (735123) ENGINE = InnoDB,
 PARTITION p_735123 VALUES LESS THAN (735124) ENGINE = InnoDB,
 PARTITION p_735124 VALUES LESS THAN (735125) ENGINE = InnoDB,
 PARTITION p_735125 VALUES LESS THAN (735126) ENGINE = InnoDB,
 PARTITION p_735126 VALUES LESS THAN (735127) ENGINE = InnoDB,
 PARTITION p_735127 VALUES LESS THAN (735128) ENGINE = InnoDB,
 PARTITION p_735128 VALUES LESS THAN (735129) ENGINE = InnoDB,
 PARTITION p_735129 VALUES LESS THAN (735130) ENGINE = InnoDB,
 PARTITION p_735130 VALUES LESS THAN (735131) ENGINE = InnoDB,
 PARTITION p_735131 VALUES LESS THAN (735132) ENGINE = InnoDB,
 PARTITION p_735132 VALUES LESS THAN (735133) ENGINE = InnoDB,
 PARTITION p_735133 VALUES LESS THAN (735134) ENGINE = InnoDB,
 PARTITION p_735134 VALUES LESS THAN (735135) ENGINE = InnoDB,
 PARTITION p_735135 VALUES LESS THAN (735136) ENGINE = InnoDB,
 PARTITION p_735136 VALUES LESS THAN (735137) ENGINE = InnoDB,
 PARTITION p_735137 VALUES LESS THAN (735138) ENGINE = InnoDB,
 PARTITION p_735138 VALUES LESS THAN (735139) ENGINE = InnoDB,
 PARTITION p_735139 VALUES LESS THAN (735140) ENGINE = InnoDB,
 PARTITION p_735140 VALUES LESS THAN (735141) ENGINE = InnoDB,
 PARTITION p_735141 VALUES LESS THAN (735142) ENGINE = InnoDB,
 PARTITION p_735142 VALUES LESS THAN (735143) ENGINE = InnoDB,
 PARTITION p_735143 VALUES LESS THAN (735144) ENGINE = InnoDB,
 PARTITION p_735144 VALUES LESS THAN (735145) ENGINE = InnoDB,
 PARTITION p_735145 VALUES LESS THAN (735146) ENGINE = InnoDB,
 PARTITION p_735146 VALUES LESS THAN (735147) ENGINE = InnoDB,
 PARTITION p_735147 VALUES LESS THAN (735148) ENGINE = InnoDB,
 PARTITION p_735148 VALUES LESS THAN (735149) ENGINE = InnoDB,
 PARTITION p_735149 VALUES LESS THAN (735150) ENGINE = InnoDB,
 PARTITION p_735150 VALUES LESS THAN (735151) ENGINE = InnoDB,
 PARTITION p_735151 VALUES LESS THAN (735152) ENGINE = InnoDB,
 PARTITION p_735152 VALUES LESS THAN (735153) ENGINE = InnoDB,
 PARTITION p_735153 VALUES LESS THAN (735154) ENGINE = InnoDB,
 PARTITION p_735154 VALUES LESS THAN (735155) ENGINE = InnoDB,
 PARTITION p_735155 VALUES LESS THAN (735156) ENGINE = InnoDB,
 PARTITION p_735156 VALUES LESS THAN (735157) ENGINE = InnoDB,
 PARTITION p_735157 VALUES LESS THAN (735158) ENGINE = InnoDB,
 PARTITION p_735158 VALUES LESS THAN (735159) ENGINE = InnoDB,
 PARTITION p_735159 VALUES LESS THAN (735160) ENGINE = InnoDB,
 PARTITION p_735160 VALUES LESS THAN (735161) ENGINE = InnoDB,
 PARTITION p_735161 VALUES LESS THAN (735162) ENGINE = InnoDB,
 PARTITION p_735162 VALUES LESS THAN (735163) ENGINE = InnoDB,
 PARTITION p_735163 VALUES LESS THAN (735164) ENGINE = InnoDB,
 PARTITION p_735164 VALUES LESS THAN (735165) ENGINE = InnoDB,
 PARTITION p_735165 VALUES LESS THAN (735166) ENGINE = InnoDB,
 PARTITION p_735166 VALUES LESS THAN (735167) ENGINE = InnoDB,
 PARTITION p_735167 VALUES LESS THAN (735168) ENGINE = InnoDB,
 PARTITION p_735168 VALUES LESS THAN (735169) ENGINE = InnoDB,
 PARTITION p_735169 VALUES LESS THAN (735170) ENGINE = InnoDB,
 PARTITION p_735170 VALUES LESS THAN (735171) ENGINE = InnoDB,
 PARTITION p_735171 VALUES LESS THAN (735172) ENGINE = InnoDB,
 PARTITION p_735172 VALUES LESS THAN (735173) ENGINE = InnoDB,
 PARTITION p_735173 VALUES LESS THAN (735174) ENGINE = InnoDB,
 PARTITION p_735174 VALUES LESS THAN (735175) ENGINE = InnoDB,
 PARTITION p_735175 VALUES LESS THAN (735176) ENGINE = InnoDB,
 PARTITION p_735176 VALUES LESS THAN (735177) ENGINE = InnoDB,
 PARTITION p_735177 VALUES LESS THAN (735178) ENGINE = InnoDB,
 PARTITION p_735178 VALUES LESS THAN (735179) ENGINE = InnoDB,
 PARTITION p_735179 VALUES LESS THAN (735180) ENGINE = InnoDB,
 PARTITION p_735180 VALUES LESS THAN (735181) ENGINE = InnoDB,
 PARTITION p_735181 VALUES LESS THAN (735182) ENGINE = InnoDB,
 PARTITION p_735182 VALUES LESS THAN (735183) ENGINE = InnoDB,
 PARTITION p_735183 VALUES LESS THAN (735184) ENGINE = InnoDB,
 PARTITION p_735184 VALUES LESS THAN (735185) ENGINE = InnoDB,
 PARTITION p_735185 VALUES LESS THAN (735186) ENGINE = InnoDB,
 PARTITION p_735186 VALUES LESS THAN (735187) ENGINE = InnoDB,
 PARTITION p_735187 VALUES LESS THAN (735188) ENGINE = InnoDB,
 PARTITION p_735188 VALUES LESS THAN (735189) ENGINE = InnoDB,
 PARTITION p_735189 VALUES LESS THAN (735190) ENGINE = InnoDB,
 PARTITION p_735190 VALUES LESS THAN (735191) ENGINE = InnoDB,
 PARTITION p_735191 VALUES LESS THAN (735192) ENGINE = InnoDB,
 PARTITION p_735192 VALUES LESS THAN (735193) ENGINE = InnoDB,
 PARTITION p_735193 VALUES LESS THAN (735194) ENGINE = InnoDB,
 PARTITION p_735194 VALUES LESS THAN (735195) ENGINE = InnoDB,
 PARTITION p_735195 VALUES LESS THAN (735196) ENGINE = InnoDB,
 PARTITION p_735196 VALUES LESS THAN (735197) ENGINE = InnoDB,
 PARTITION p_735197 VALUES LESS THAN (735198) ENGINE = InnoDB,
 PARTITION p_735198 VALUES LESS THAN (735199) ENGINE = InnoDB,
 PARTITION p_735199 VALUES LESS THAN (735200) ENGINE = InnoDB,
 PARTITION p_735200 VALUES LESS THAN (735201) ENGINE = InnoDB,
 PARTITION p_735201 VALUES LESS THAN (735202) ENGINE = InnoDB,
 PARTITION p_735202 VALUES LESS THAN (735203) ENGINE = InnoDB,
 PARTITION p_735203 VALUES LESS THAN (735204) ENGINE = InnoDB,
 PARTITION p_735204 VALUES LESS THAN (735205) ENGINE = InnoDB,
 PARTITION p_735205 VALUES LESS THAN (735206) ENGINE = InnoDB,
 PARTITION p_735206 VALUES LESS THAN (735207) ENGINE = InnoDB,
 PARTITION p_735207 VALUES LESS THAN (735208) ENGINE = InnoDB,
 PARTITION p_catch_all VALUES LESS THAN MAXVALUE ENGINE = InnoDB) */;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_kingtowerinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_kingtowerinfo` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `Grades` smallint(6) NOT NULL DEFAULT '0' COMMENT '等级',
  `FightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力',
  `DifficultyGrade` smallint(6) DEFAULT '0' COMMENT '进入难度',
  `LastIndex` smallint(6) DEFAULT '0' COMMENT '最高层数',
  `EnterDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`EnterDate`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='王者之塔用户行为日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_knight`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_knight` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `UserId` int(11) DEFAULT NULL COMMENT '用户ID',
  `Type` int(11) DEFAULT NULL COMMENT '类型',
  `CurrentDate` datetime DEFAULT NULL COMMENT '当前日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=352194 DEFAULT CHARSET=utf8 COMMENT='侠客操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_knight_compose`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_knight_compose` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键Id',
  `UserId` int(11) DEFAULT '0' COMMENT '用户ID',
  `ComposeTempId` int(11) DEFAULT NULL COMMENT '侠客组合ID',
  `CurrentDate` datetime DEFAULT NULL COMMENT '当前时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=702 DEFAULT CHARSET=utf8 COMMENT='侠客图鉴日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_knight_drop`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_knight_drop` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键Id',
  `UserId` int(11) DEFAULT NULL COMMENT '用户ID',
  `DropIndex` int(11) DEFAULT NULL COMMENT '掉落引索',
  `Count` int(11) DEFAULT '1' COMMENT '落掉次数',
  `CurrentDate` datetime DEFAULT NULL COMMENT '当前时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=379016 DEFAULT CHARSET=utf8 COMMENT='侠客各项礼物出现日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_knight_hunt`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_knight_hunt` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `UserId` int(11) DEFAULT NULL COMMENT '用户ID',
  `TabId` int(11) DEFAULT NULL COMMENT '阶段ID（1为初入江湖2为一代宗师3为威震武林）',
  `Type` int(11) DEFAULT NULL COMMENT '类型（1为追捕2为一键追捕3为千里追凶）',
  `CurrentDate` datetime DEFAULT NULL COMMENT '当前时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客侠客行日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_knight_recruit`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_knight_recruit` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT '0' COMMENT '用户ID',
  `Type` int(11) DEFAULT NULL COMMENT '类型',
  `TemplateId` int(11) DEFAULT NULL COMMENT '拜访模板ID',
  `CurrentDate` date DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2172 DEFAULT CHARSET=latin1 COMMENT='神秘侠客操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_knightinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_knightinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `TemplateId` int(11) DEFAULT NULL COMMENT '侠客模版id ',
  `OpType` tinyint(1) DEFAULT NULL COMMENT '侠客操作类型',
  `LookTime` int(2) DEFAULT NULL COMMENT '查看次数',
  `Soul1` int(11) DEFAULT NULL COMMENT '侠魂1',
  `Soul2` int(11) DEFAULT NULL COMMENT '侠魂2',
  `Soul3` int(11) DEFAULT NULL COMMENT '侠魂3',
  `Soul4` int(11) DEFAULT NULL COMMENT '侠魂4',
  `CurrentDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=799 DEFAULT CHARSET=utf8 COMMENT='侠客日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_logintime`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_logintime` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` date NOT NULL COMMENT '操作时间',
  `Day1` int(11) NOT NULL DEFAULT '0' COMMENT 'Day1',
  `Day2` int(11) NOT NULL DEFAULT '0' COMMENT 'Day2',
  `Day3` int(11) NOT NULL DEFAULT '0' COMMENT 'Day3',
  `Day4` int(11) NOT NULL DEFAULT '0' COMMENT 'Day4',
  `Day5` int(11) NOT NULL DEFAULT '0' COMMENT 'Day5',
  `Day6` int(11) NOT NULL DEFAULT '0' COMMENT 'Day6',
  `Day7` int(11) NOT NULL DEFAULT '0' COMMENT 'Day7',
  `Day8` int(11) NOT NULL DEFAULT '0' COMMENT 'Day8',
  `Day9` int(11) NOT NULL DEFAULT '0' COMMENT 'Day9',
  `Day10` int(11) NOT NULL DEFAULT '0' COMMENT 'Day10',
  `Day11` int(11) NOT NULL DEFAULT '0' COMMENT 'Day11',
  `Day12` int(11) NOT NULL DEFAULT '0' COMMENT 'Day12',
  `Day13` int(11) NOT NULL DEFAULT '0' COMMENT 'Day13',
  `Day14` int(11) NOT NULL DEFAULT '0' COMMENT 'Day14',
  `Day15` int(11) NOT NULL DEFAULT '0' COMMENT 'Day15',
  `Day16` int(11) NOT NULL DEFAULT '0' COMMENT 'Day16',
  `Day17` int(11) NOT NULL DEFAULT '0' COMMENT 'Day17',
  `Day18` int(11) NOT NULL DEFAULT '0' COMMENT 'Day18',
  `Day19` int(11) NOT NULL DEFAULT '0' COMMENT 'Day19',
  `Day20` int(11) NOT NULL DEFAULT '0' COMMENT 'Day20',
  `Day21` int(11) NOT NULL DEFAULT '0' COMMENT 'Day21',
  `Day22` int(11) NOT NULL DEFAULT '0' COMMENT 'Day22',
  `Day23` int(11) NOT NULL DEFAULT '0' COMMENT 'Day23',
  `Day24` int(11) NOT NULL DEFAULT '0' COMMENT 'Day24',
  `Day25` int(11) NOT NULL DEFAULT '0' COMMENT 'Day25',
  `Day26` int(11) NOT NULL DEFAULT '0' COMMENT 'Day26',
  `Day27` int(11) NOT NULL DEFAULT '0' COMMENT 'Day27',
  `Day28` int(11) NOT NULL DEFAULT '0' COMMENT 'Day28',
  `Day29` int(11) NOT NULL DEFAULT '0' COMMENT 'Day29',
  `Day30` int(11) NOT NULL DEFAULT '0' COMMENT 'Day30',
  `Day31` int(11) NOT NULL DEFAULT '0' COMMENT 'Day31',
  PRIMARY KEY (`CurrentDate`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户每日登陆器日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_mail`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_mail` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `MailId` int(11) NOT NULL COMMENT '邮件ID',
  `Point` int(11) NOT NULL COMMENT '点券',
  `Gold` int(11) NOT NULL COMMENT '金币',
  `GiftToken` int(11) NOT NULL COMMENT '礼券',
  `Annex1` int(11) NOT NULL COMMENT '附件1',
  `Annex1Count` int(11) NOT NULL COMMENT '附件1数量',
  `Annex2` int(11) NOT NULL COMMENT '附件2',
  `Annex2Count` int(11) NOT NULL COMMENT '附件2数量',
  `Annex3` int(11) NOT NULL COMMENT '附件3',
  `Annex3Count` int(11) NOT NULL COMMENT '附件3数量',
  `Annex4` int(11) NOT NULL COMMENT '附件4',
  `Annex4Count` int(11) NOT NULL COMMENT '附件4数量',
  `Annex5` int(11) NOT NULL COMMENT '附件5',
  `Annex5Count` int(11) NOT NULL COMMENT '附件5数量',
  `DelDate` datetime NOT NULL COMMENT '删除时间',
  KEY `AK_Key_1` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34304 DEFAULT CHARSET=utf8 COMMENT='删除邮件记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_maindiscount`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_maindiscount` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `GoodId` int(11) NOT NULL COMMENT '礼包ID',
  `GoodName` varchar(100) NOT NULL COMMENT '礼包名',
  `Point` int(11) NOT NULL COMMENT '售价',
  `Count` int(11) NOT NULL COMMENT '数量',
  `BuyDate` datetime NOT NULL COMMENT '购买时间',
  `Grades` int(11) NOT NULL DEFAULT '0' COMMENT '玩家等级',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`BuyDate`)
) ENGINE=InnoDB AUTO_INCREMENT=320 DEFAULT CHARSET=utf8 COMMENT='商城礼包销售日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_master`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_master` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `Type` smallint(6) NOT NULL COMMENT '来源类型',
  `Data` int(11) NOT NULL COMMENT '数量',
  KEY `Index_1` (`UserId`,`CurrentDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户主要日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_mountstar`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_mountstar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `Type` tinyint(4) NOT NULL COMMENT '升星类型（0：升星，1：自动升星）',
  `TemplateId` int(11) NOT NULL COMMENT '坐骑模板id',
  `Auto` tinyint(4) NOT NULL COMMENT '是否自动购买(0:不，1：自动购买)',
  `NeedItem` int(11) NOT NULL COMMENT '耗消升星材料数量',
  `Gold` int(11) NOT NULL COMMENT '耗消元宝数量',
  `CurrentDate` datetime NOT NULL COMMENT '当前日期',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`,`CurrentDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='坐骑升星日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_mysteryfresh`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_mysteryfresh` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `IsButton` tinyint(4) NOT NULL DEFAULT '0' COMMENT '刷新方式（0：自动，1：手动）',
  `Item1` int(11) NOT NULL COMMENT '物品ID1',
  `Item2` int(11) NOT NULL COMMENT '物品ID2',
  `Item3` int(11) NOT NULL COMMENT '物品ID3',
  `Item4` int(11) NOT NULL COMMENT '物品ID4',
  `Item5` int(11) NOT NULL COMMENT '物品ID5',
  `Item6` int(11) NOT NULL COMMENT '物品ID6',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`),
  KEY `Index_2` (`CurrentDate`)
) ENGINE=InnoDB AUTO_INCREMENT=14364 DEFAULT CHARSET=utf8 COMMENT='用户神秘商店刷新日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_noviceprocess`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_noviceprocess` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `NoviceProcess` int(11) DEFAULT NULL COMMENT '新手进度',
  `CurrentDate` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`NoviceProcess`)
) ENGINE=InnoDB AUTO_INCREMENT=117490 DEFAULT CHARSET=utf8 COMMENT='新手进度';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_offer`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_offer` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `Type` int(11) NOT NULL DEFAULT '0' COMMENT '贡献类型（1、帮会贡献；2、帮会活跃值）',
  `ChangeType` int(11) NOT NULL COMMENT '消费子类型',
  `Offer` int(11) NOT NULL COMMENT '消费贡献',
  `SpareOffer` int(11) NOT NULL COMMENT '结余贡献',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=8859 DEFAULT CHARSET=utf8 COMMENT='用户贡献日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_official`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_official` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT '0' COMMENT '用户ID',
  `OfficialId` int(11) DEFAULT NULL COMMENT '官职ID',
  `CurrentDate` date DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='玩家官衔更改记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_onlineinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_onlineinfo` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `Time` datetime NOT NULL COMMENT '上下线时间',
  `Type` tinyint(1) NOT NULL COMMENT '在线类型(0:上线，1:下线)',
  `OnlineTime` int(11) NOT NULL COMMENT '在线时长',
  `OneDay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否跨天(0:跨天)',
  `LoginIp` varchar(30) NOT NULL COMMENT '登录IP',
  `Grades` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'çŽ©å®¶ç­‰çº§',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`Time`)
) ENGINE=InnoDB AUTO_INCREMENT=56126 DEFAULT CHARSET=utf8 COMMENT='用户在线信息记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_onlinetime`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_onlinetime` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` date NOT NULL COMMENT '操作时间',
  `Day1` int(11) NOT NULL DEFAULT '0' COMMENT 'Day1',
  `Day2` int(11) NOT NULL DEFAULT '0' COMMENT 'Day2',
  `Day3` int(11) NOT NULL DEFAULT '0' COMMENT 'Day3',
  `Day4` int(11) NOT NULL DEFAULT '0' COMMENT 'Day4',
  `Day5` int(11) NOT NULL DEFAULT '0' COMMENT 'Day5',
  `Day6` int(11) NOT NULL DEFAULT '0' COMMENT 'Day6',
  `Day7` int(11) NOT NULL DEFAULT '0' COMMENT 'Day7',
  `Day8` int(11) NOT NULL DEFAULT '0' COMMENT 'Day8',
  `Day9` int(11) NOT NULL DEFAULT '0' COMMENT 'Day9',
  `Day10` int(11) NOT NULL DEFAULT '0' COMMENT 'Day10',
  `Day11` int(11) NOT NULL DEFAULT '0' COMMENT 'Day11',
  `Day12` int(11) NOT NULL DEFAULT '0' COMMENT 'Day12',
  `Day13` int(11) NOT NULL DEFAULT '0' COMMENT 'Day13',
  `Day14` int(11) NOT NULL DEFAULT '0' COMMENT 'Day14',
  `Day15` int(11) NOT NULL DEFAULT '0' COMMENT 'Day15',
  `Day16` int(11) NOT NULL DEFAULT '0' COMMENT 'Day16',
  `Day17` int(11) NOT NULL DEFAULT '0' COMMENT 'Day17',
  `Day18` int(11) NOT NULL DEFAULT '0' COMMENT 'Day18',
  `Day19` int(11) NOT NULL DEFAULT '0' COMMENT 'Day19',
  `Day20` int(11) NOT NULL DEFAULT '0' COMMENT 'Day20',
  `Day21` int(11) NOT NULL DEFAULT '0' COMMENT 'Day21',
  `Day22` int(11) NOT NULL DEFAULT '0' COMMENT 'Day22',
  `Day23` int(11) NOT NULL DEFAULT '0' COMMENT 'Day23',
  `Day24` int(11) NOT NULL DEFAULT '0' COMMENT 'Day24',
  `Day25` int(11) NOT NULL DEFAULT '0' COMMENT 'Day25',
  `Day26` int(11) NOT NULL DEFAULT '0' COMMENT 'Day26',
  `Day27` int(11) NOT NULL DEFAULT '0' COMMENT 'Day27',
  `Day28` int(11) NOT NULL DEFAULT '0' COMMENT 'Day28',
  `Day29` int(11) NOT NULL DEFAULT '0' COMMENT 'Day29',
  `Day30` int(11) NOT NULL DEFAULT '0' COMMENT 'Day30',
  `Day31` int(11) NOT NULL DEFAULT '0' COMMENT 'Day31',
  PRIMARY KEY (`CurrentDate`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户每日登陆在线日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_opgold`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_opgold` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT ' 玩家ID',
  `UpdateTime` datetime NOT NULL COMMENT '更新时间',
  `SumAdd` int(11) NOT NULL DEFAULT '0' COMMENT '增加数量',
  `SumLess` int(11) NOT NULL DEFAULT '0' COMMENT '消耗总和',
  `Gold` bigint(20) NOT NULL DEFAULT '0' COMMENT '剩余数量',
  PRIMARY KEY (`Id`),
  KEY `index_time` (`UpdateTime`)
) ENGINE=InnoDB AUTO_INCREMENT=34416 DEFAULT CHARSET=utf8 COMMENT='黄金消耗日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_order`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`UserId`,`CurrentDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='名人堂排名日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_outside`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_outside` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `OpType` tinyint(1) DEFAULT NULL COMMENT '玩家操作类型(0进入江湖,1击杀山贼,2掠夺,3马贼)',
  `CurrentDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=19789 DEFAULT CHARSET=utf8 COMMENT='外城操作记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_point`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_point` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` date NOT NULL COMMENT '操作时间',
  `Pay1` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay1',
  `Current1` int(11) NOT NULL DEFAULT '0' COMMENT 'Current1',
  `Pay2` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay2',
  `Current2` int(11) NOT NULL DEFAULT '0' COMMENT 'Current2',
  `Pay3` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay3',
  `Current3` int(11) NOT NULL DEFAULT '0' COMMENT 'Current3',
  `Pay4` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay4',
  `Current4` int(11) NOT NULL DEFAULT '0' COMMENT 'Current4',
  `Pay5` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay5',
  `Current5` int(11) NOT NULL DEFAULT '0' COMMENT 'Current5',
  `Pay6` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay6',
  `Current6` int(11) NOT NULL DEFAULT '0' COMMENT 'Current6',
  `Pay7` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay7',
  `Current7` int(11) NOT NULL DEFAULT '0' COMMENT 'Current7',
  `Pay8` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay8',
  `Current8` int(11) NOT NULL DEFAULT '0' COMMENT 'Current8',
  `Pay9` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay9',
  `Current9` int(11) NOT NULL DEFAULT '0' COMMENT 'Current9',
  `Pay10` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay10',
  `Current10` int(11) NOT NULL DEFAULT '0' COMMENT 'Current10',
  `Pay11` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay11',
  `Current11` int(11) NOT NULL DEFAULT '0' COMMENT 'Current11',
  `Pay12` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay12',
  `Current12` int(11) NOT NULL DEFAULT '0' COMMENT 'Current12',
  `Pay13` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay13',
  `Current13` int(11) NOT NULL DEFAULT '0' COMMENT 'Current13',
  `Pay14` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay14',
  `Current14` int(11) NOT NULL DEFAULT '0' COMMENT 'Current14',
  `Pay15` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay15',
  `Current15` int(11) NOT NULL DEFAULT '0' COMMENT 'Current15',
  `Pay16` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay16',
  `Current16` int(11) NOT NULL DEFAULT '0' COMMENT 'Current16',
  `Pay17` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay17',
  `Current17` int(11) NOT NULL DEFAULT '0' COMMENT 'Current17',
  `Pay18` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay18',
  `Current18` int(11) NOT NULL DEFAULT '0' COMMENT 'Current18',
  `Pay19` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay19',
  `Current19` int(11) NOT NULL DEFAULT '0' COMMENT 'Current19',
  `Pay20` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay20',
  `Current20` int(11) NOT NULL DEFAULT '0' COMMENT 'Current20',
  `Pay21` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay21',
  `Current21` int(11) NOT NULL DEFAULT '0' COMMENT 'Current21',
  `Pay22` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay22',
  `Current22` int(11) NOT NULL DEFAULT '0' COMMENT 'Current22',
  `Pay23` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay23',
  `Current23` int(11) NOT NULL DEFAULT '0' COMMENT 'Current23',
  `Pay24` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay24',
  `Current24` int(11) NOT NULL DEFAULT '0' COMMENT 'Current24',
  `Pay25` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay25',
  `Current25` int(11) NOT NULL DEFAULT '0' COMMENT 'Current25',
  `Pay26` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay26',
  `Current26` int(11) NOT NULL DEFAULT '0' COMMENT 'Current26',
  `Pay27` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay27',
  `Current27` int(11) NOT NULL DEFAULT '0' COMMENT 'Current27',
  `Pay28` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay28',
  `Current28` int(11) NOT NULL DEFAULT '0' COMMENT 'Current28',
  `Pay29` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay29',
  `Current29` int(11) NOT NULL DEFAULT '0' COMMENT 'Current29',
  `Pay30` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay30',
  `Current30` int(11) NOT NULL DEFAULT '0' COMMENT 'Current30',
  `Pay31` int(11) NOT NULL DEFAULT '0' COMMENT 'Pay31',
  `Current31` int(11) NOT NULL DEFAULT '0' COMMENT 'Current31',
  PRIMARY KEY (`CurrentDate`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户一个月内每日元宝消费日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_property`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_property` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT '0' COMMENT '玩家id',
  `PropertyType` int(11) DEFAULT '0' COMMENT '属性类型 1-历练值',
  `ChangeValue` int(11) DEFAULT '0' COMMENT '变化值',
  `OperationType` int(11) DEFAULT '0' COMMENT '操作类型',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=36424 DEFAULT CHARSET=utf8 COMMENT='个人属性值变化日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_quest`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_quest` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `QuesType` tinyint(4) NOT NULL COMMENT '任务类型(1:普通任务,2:悬赏任务)',
  `TemplateId` int(11) NOT NULL COMMENT '任务编号',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=24668 DEFAULT CHARSET=utf8 COMMENT='任务完成日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_recover`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_recover` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `UserId` int(11) DEFAULT NULL COMMENT '用户ID',
  `Op` tinyint(11) DEFAULT NULL COMMENT '操作(1为普通找回2为高级找回3为普通一键找回4为高级一键找回）',
  `TempId` int(11) DEFAULT NULL COMMENT '模块ID',
  `CurrentDate` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=316 DEFAULT CHARSET=utf8 COMMENT='资源追回日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_redbag`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_redbag` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `RedBagId` int(11) NOT NULL COMMENT '红包ID',
  `Type` tinyint(4) NOT NULL COMMENT '类型1为发送2为领取',
  `Point` int(11) NOT NULL DEFAULT '0' COMMENT '领取到的元宝数',
  `CurrentDate` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '领取时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8 COMMENT='用户红包信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_rename`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_rename` (
  `UserId` int(11) NOT NULL COMMENT '用户Id',
  `Type` tinyint(4) NOT NULL COMMENT '改名类型（1改名卡，2合区，3GM）',
  `Time` datetime NOT NULL COMMENT '改名时间',
  `OldName` varchar(50) NOT NULL COMMENT '改名之前的昵称',
  `NewName` varchar(50) NOT NULL COMMENT '改名之后的昵称',
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='改名日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_runeinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_runeinfo` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `PreRuneId` int(11) NOT NULL DEFAULT '0' COMMENT '上一个符文ID',
  `PreGp` int(11) NOT NULL COMMENT '上一个符文GP',
  `CurRuneId` int(11) NOT NULL DEFAULT '0' COMMENT '当前符文ID',
  `CurGp` int(11) NOT NULL COMMENT '当前符文GP',
  `ItemIds` varchar(120) NOT NULL COMMENT '物品ID、数量',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='符文系统日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_sacred`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_sacred` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `SacredTempId` int(11) NOT NULL COMMENT '神兽模板ID',
  `OpType` tinyint(4) NOT NULL COMMENT '操作类型',
  `OpTime` datetime NOT NULL COMMENT '操作时间',
  `Params` varchar(50) NOT NULL COMMENT '日志参数',
  PRIMARY KEY (`Id`),
  KEY `idx` (`UserId`,`OpType`,`OpTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='神兽日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_server`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_server` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `Online` int(11) NOT NULL COMMENT '在线人数',
  `Regedit` int(11) NOT NULL COMMENT '注册人数',
  `SystemDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '系统当前时间',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`CurrentDate`)
) ENGINE=InnoDB AUTO_INCREMENT=271571 DEFAULT CHARSET=utf8 COMMENT='服务器注册在线人数';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_shop`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_shop` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `Point` int(11) NOT NULL COMMENT '消耗点券',
  `RemainPoint` int(11) NOT NULL DEFAULT '0' COMMENT 'å‰©ä½™å…ƒå®',
  `Gold` int(11) NOT NULL COMMENT '消耗黄金',
  `Crystals` int(11) NOT NULL COMMENT '消耗水晶',
  `GiftToken` int(11) NOT NULL COMMENT '消耗礼金',
  `MazeCoin` int(11) NOT NULL DEFAULT '0' COMMENT '消耗迷宫硬币',
  `Honor` int(11) NOT NULL COMMENT '消耗勋章',
  `ConsortiaOff` int(11) NOT NULL DEFAULT '0' COMMENT '消耗公会贡献',
  `ItemId` int(11) NOT NULL COMMENT '物品模板',
  `ShopId` int(11) NOT NULL COMMENT '商店模板Id',
  `BuyCount` int(11) NOT NULL COMMENT '购买数量',
  `RemainCount` int(11) NOT NULL DEFAULT '0' COMMENT '背包中当前剩余数量',
  `Grades` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '玩家等级',
  `ReceiveId` int(11) NOT NULL DEFAULT '0' COMMENT '物品接收人ID',
  `Score` int(11) NOT NULL DEFAULT '0' COMMENT '耗消积分',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`UserId`,`CurrentDate`)
) ENGINE=InnoDB AUTO_INCREMENT=6796 DEFAULT CHARSET=utf8 COMMENT='商店购买记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_singletoncampaign`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_singletoncampaign` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `OpType` tinyint(1) DEFAULT NULL COMMENT '操作类型',
  `CampaignId` int(11) DEFAULT NULL COMMENT '战役id',
  `Grades` tinyint(3) DEFAULT NULL COMMENT '玩家等级',
  `CurrentDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6898 DEFAULT CHARSET=utf8 COMMENT='剧情副本操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_smithy`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_smithy` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `Operation` int(11) NOT NULL COMMENT '操作类型',
  `ItemName` varchar(50) NOT NULL COMMENT '物品名',
  `ItemId` int(11) NOT NULL COMMENT '物品Id',
  `TemplateId` int(11) NOT NULL COMMENT '模板Id',
  `AddItem` varchar(400) DEFAULT NULL COMMENT '附加物品',
  `BeginProperty` varchar(200) NOT NULL COMMENT '开始属性',
  `EndProperty` varchar(200) NOT NULL COMMENT '结束属性',
  `Result` int(11) NOT NULL COMMENT '结果',
  `Money` int(11) NOT NULL DEFAULT '0' COMMENT '花费钱',
  `Point` int(11) NOT NULL DEFAULT '0' COMMENT '花费钱',
  KEY `AK_Key_1` (`Id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=15854 DEFAULT CHARSET=utf8 COMMENT='铁匠铺日记';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_sms`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_sms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  KEY `AK_Key_1` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户短信日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_soul`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_soul` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `ChangeType` smallint(6) NOT NULL DEFAULT '0' COMMENT '消费子类型(1战斗获得2运输3战场结束时结算4公会战5侠客行6侠魂转换7邮件获得10侠客招募消耗11侠魂转换12侠客技能升级20中控调整)',
  `SoulType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '侠魂品质类型(1蓝色侠魂2紫色侠魂3橙色侠魂4红色侠魂)',
  `Soul` int(11) NOT NULL COMMENT '消费侠魂',
  `SpareSoul` int(11) NOT NULL COMMENT '结余侠魂',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=8409 DEFAULT CHARSET=utf8 COMMENT='用户侠魂日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_star`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_star` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `SiteId` smallint(6) NOT NULL COMMENT '位置',
  `CurrentDate` date NOT NULL COMMENT '操作时间',
  `Day1` int(11) NOT NULL DEFAULT '0' COMMENT 'Day1',
  `Day2` int(11) NOT NULL DEFAULT '0' COMMENT 'Day2',
  `Day3` int(11) NOT NULL DEFAULT '0' COMMENT 'Day3',
  `Day4` int(11) NOT NULL DEFAULT '0' COMMENT 'Day4',
  `Day5` int(11) NOT NULL DEFAULT '0' COMMENT 'Day5',
  `Day6` int(11) NOT NULL DEFAULT '0' COMMENT 'Day6',
  `Day7` int(11) NOT NULL DEFAULT '0' COMMENT 'Day7',
  `Day8` int(11) NOT NULL DEFAULT '0' COMMENT 'Day8',
  `Day9` int(11) NOT NULL DEFAULT '0' COMMENT 'Day9',
  `Day10` int(11) NOT NULL DEFAULT '0' COMMENT 'Day10',
  `Day11` int(11) NOT NULL DEFAULT '0' COMMENT 'Day11',
  `Day12` int(11) NOT NULL DEFAULT '0' COMMENT 'Day12',
  `Day13` int(11) NOT NULL DEFAULT '0' COMMENT 'Day13',
  `Day14` int(11) NOT NULL DEFAULT '0' COMMENT 'Day14',
  `Day15` int(11) NOT NULL DEFAULT '0' COMMENT 'Day15',
  `Day16` int(11) NOT NULL DEFAULT '0' COMMENT 'Day16',
  `Day17` int(11) NOT NULL DEFAULT '0' COMMENT 'Day17',
  `Day18` int(11) NOT NULL DEFAULT '0' COMMENT 'Day18',
  `Day19` int(11) NOT NULL DEFAULT '0' COMMENT 'Day19',
  `Day20` int(11) NOT NULL DEFAULT '0' COMMENT 'Day20',
  `Day21` int(11) NOT NULL DEFAULT '0' COMMENT 'Day21',
  `Day22` int(11) NOT NULL DEFAULT '0' COMMENT 'Day22',
  `Day23` int(11) NOT NULL DEFAULT '0' COMMENT 'Day23',
  `Day24` int(11) NOT NULL DEFAULT '0' COMMENT 'Day24',
  `Day25` int(11) NOT NULL DEFAULT '0' COMMENT 'Day25',
  `Day26` int(11) NOT NULL DEFAULT '0' COMMENT 'Day26',
  `Day27` int(11) NOT NULL DEFAULT '0' COMMENT 'Day27',
  `Day28` int(11) NOT NULL DEFAULT '0' COMMENT 'Day28',
  `Day29` int(11) NOT NULL DEFAULT '0' COMMENT 'Day29',
  `Day30` int(11) NOT NULL DEFAULT '0' COMMENT 'Day30',
  `Day31` int(11) NOT NULL DEFAULT '0' COMMENT 'Day31',
  PRIMARY KEY (`UserId`,`CurrentDate`,`SiteId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户占星日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_stardata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_stardata` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `StarId` int(11) NOT NULL COMMENT '星运编号',
  `TempId` int(11) NOT NULL COMMENT '模板编号',
  `OldGrade` int(11) NOT NULL COMMENT '之前等级',
  `NowGrade` int(11) NOT NULL COMMENT '当前等级',
  `ChangeType` int(11) NOT NULL COMMENT '改变方式',
  `OldGp` int(11) NOT NULL COMMENT '之前经验',
  `NowGp` int(11) NOT NULL COMMENT '当前经验',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`UserId`,`CurrentDate`,`StarId`,`TempId`)
) ENGINE=InnoDB AUTO_INCREMENT=1578152 DEFAULT CHARSET=utf8 COMMENT='占星操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_starpoint`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_starpoint` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `AddStarPoint` int(11) NOT NULL COMMENT '添加',
  `DecStarPoint` int(11) NOT NULL COMMENT '减少',
  `SpareStarPoint` int(11) NOT NULL COMMENT '结余星运',
  KEY `AK_Key_1` (`Id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=440 DEFAULT CHARSET=utf8 COMMENT='用户星运日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_starshop`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_starshop` (
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `CurrentPoint` int(11) NOT NULL DEFAULT '0' COMMENT '剩余积分',
  `PayPoint` int(11) NOT NULL DEFAULT '0' COMMENT '消费积分',
  `TemplateId` int(11) NOT NULL COMMENT '物品模板Id',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  KEY `Index_1` (`UserId`,`CurrentDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='星运商店物品购买记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_store_upgrade`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_store_upgrade` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT 'Id',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '当前日期',
  `OldGrade` int(11) NOT NULL COMMENT '之前等级',
  `NowGrade` int(11) NOT NULL COMMENT '当前等级',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='宝石升级日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_strategy`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_strategy` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `ChangeType` int(11) NOT NULL COMMENT '消费子类型',
  `Strategy` bigint(20) DEFAULT '0' COMMENT '消费战魂',
  `SpareStrategy` bigint(20) DEFAULT '0' COMMENT '结余战魂',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=347697 DEFAULT CHARSET=utf8 COMMENT='用户战魂日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_strength`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_strength` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` date NOT NULL COMMENT '操作时间',
  `Day1` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day1',
  `Day2` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day2',
  `Day3` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day3',
  `Day4` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day4',
  `Day5` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day5',
  `Day6` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day6',
  `Day7` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day7',
  `Day8` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day8',
  `Day9` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day9',
  `Day10` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day10',
  `Day11` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day11',
  `Day12` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day12',
  `Day13` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day13',
  `Day14` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day14',
  `Day15` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day15',
  `Day16` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day16',
  `Day17` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day17',
  `Day18` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day18',
  `Day19` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day19',
  `Day20` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day20',
  `Day21` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day21',
  `Day22` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day22',
  `Day23` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day23',
  `Day24` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day24',
  `Day25` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day25',
  `Day26` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day26',
  `Day27` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day27',
  `Day28` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day28',
  `Day29` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day29',
  `Day30` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day30',
  `Day31` smallint(6) NOT NULL DEFAULT '0' COMMENT 'Day31',
  PRIMARY KEY (`CurrentDate`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户每日体力值';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_talentinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_talentinfo` (
  `UserId` int(11) NOT NULL COMMENT '英雄ID',
  `Time` datetime NOT NULL COMMENT '升级时间',
  `OldGrade` tinyint(4) unsigned NOT NULL COMMENT '旧天赋等级',
  `NewGrade` tinyint(4) unsigned NOT NULL COMMENT '新天赋等级',
  `Gp` bigint(20) NOT NULL COMMENT '扣除经验',
  `Gold` int(11) NOT NULL COMMENT '扣除黄金',
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='天赋升级日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_towergp`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_towergp` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `CurrentDate` datetime NOT NULL COMMENT '日期',
  `CampainId` int(11) NOT NULL COMMENT '副本ID',
  `Index` tinyint(4) NOT NULL COMMENT '层数',
  `TotalGp` int(11) NOT NULL COMMENT '迷宫总经验',
  KEY `Index_1` (`UserId`),
  KEY `Index_2` (`CurrentDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='迷宫经验日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_towertime`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_towertime` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `CampainId` int(11) NOT NULL COMMENT '副本ID',
  `Index` int(4) NOT NULL COMMENT '层数',
  `CurrentDate` datetime NOT NULL COMMENT '当前时间',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`),
  KEY `Index_2` (`CurrentDate`)
) ENGINE=InnoDB AUTO_INCREMENT=2425 DEFAULT CHARSET=utf8 COMMENT='迷宫过关时间记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_tree`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_tree` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `MeCount` smallint(6) NOT NULL COMMENT '自己给树浇水数量',
  `FriendCount` smallint(6) NOT NULL COMMENT '为好友树浇水数量',
  `LogTime` datetime NOT NULL COMMENT '记录时间',
  KEY `Index_1` (`UserId`,`LogTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='浇水日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_trialtower`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_trialtower` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `Layer` smallint(6) NOT NULL DEFAULT '0' COMMENT '当前层数',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试炼之塔日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_type_item`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_type_item` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `UserId` int(11) DEFAULT NULL COMMENT '户用ID',
  `TemplateId` int(11) DEFAULT NULL COMMENT '道具id',
  `Type` tinyint(11) DEFAULT NULL COMMENT '型类',
  `Count` int(11) DEFAULT NULL COMMENT '数量',
  `CurrentDate` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=4354 DEFAULT CHARSET=utf8 COMMENT='道具产出日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_upgrade`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_upgrade` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `OldGrade` smallint(6) NOT NULL DEFAULT '0' COMMENT '之前等级',
  `NowGrade` smallint(6) NOT NULL DEFAULT '0' COMMENT '现在等级',
  KEY `AK_Key_1` (`Id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=7347 DEFAULT CHARSET=utf8 COMMENT='用户升级日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_useplue`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_useplue` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `Type` smallint(6) NOT NULL COMMENT '外挂类型',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  KEY `AK_Key_1` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='外挂用户数据统计表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_uservalue`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_uservalue` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `ChangeType` int(11) NOT NULL COMMENT '来源类型',
  `Gold` int(11) NOT NULL COMMENT '黄金',
  KEY `AK_Key_1` (`Id`),
  KEY `Index_1` (`UserId`),
  KEY `Index_2` (`CurrentDate`)
) ENGINE=InnoDB AUTO_INCREMENT=2668 DEFAULT CHARSET=utf8 COMMENT='用户数值来源表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_version`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `currentdate` datetime NOT NULL COMMENT '发布日期',
  `version` varchar(100) NOT NULL COMMENT '版本号',
  `patch` varchar(100) NOT NULL COMMENT '补丁号',
  `state` tinyint(4) NOT NULL COMMENT '状态 -1失败 0过期 1正常',
  `description` varchar(1000) NOT NULL DEFAULT '' COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志版本';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_vip`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_vip` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `Days` int(11) NOT NULL COMMENT '续费天数',
  `Point` int(11) NOT NULL COMMENT '所需点卷',
  `vipGrades` int(2) NOT NULL DEFAULT '0' COMMENT '当前vip等级',
  `Types` int(11) NOT NULL COMMENT '续费类型',
  `ActiveUserId` int(11) NOT NULL COMMENT '续费人',
  `CreateDate` datetime NOT NULL COMMENT '续费时间',
  KEY `Index_1` (`CreateDate`),
  KEY `Index_2` (`ActiveUserId`),
  KEY `Index_3` (`Days`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='vip续费日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_warfield`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_warfield` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) DEFAULT NULL,
  `Type` tinyint(1) DEFAULT NULL COMMENT '战场操作日志',
  `CurrentDate` datetime DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8 COMMENT='战场操作日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_warinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_warinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `CampaignId` int(11) NOT NULL COMMENT '战场ID',
  `OpenTime` datetime NOT NULL COMMENT '开始时间',
  `StopTime` datetime NOT NULL COMMENT '结束时间',
  `WinTeamId` int(11) NOT NULL COMMENT '胜利阵营',
  `RedTeamCount` int(11) NOT NULL COMMENT '红队人数',
  `BlueTeamCount` int(11) NOT NULL COMMENT '蓝队人数',
  `RedScore` int(11) NOT NULL COMMENT '红队分数',
  `BlueScore` int(11) NOT NULL COMMENT '蓝队分数',
  `Param1` varchar(2000) NOT NULL COMMENT '红队用户ID表',
  `Param2` varchar(2000) NOT NULL COMMENT '蓝队用户ID列表',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`OpenTime`)
) ENGINE=InnoDB AUTO_INCREMENT=3768 DEFAULT CHARSET=utf8 COMMENT='战场日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_watercrystal`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_watercrystal` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `ChangeType` int(11) NOT NULL COMMENT '消费子类型',
  `WaterCrystal` int(11) NOT NULL COMMENT '消费光晶',
  `SpareWaterCrystal` int(11) NOT NULL COMMENT '结余光晶',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`CurrentDate`,`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=10103 DEFAULT CHARSET=utf8 COMMENT='用户水晶日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_wealth`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_wealth` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `Grades` smallint(6) NOT NULL DEFAULT '0' COMMENT '等级',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  `MastType` int(11) NOT NULL COMMENT '消费主类型',
  `SonType` int(11) NOT NULL COMMENT '消费子类型',
  `Point` int(11) NOT NULL COMMENT '消费点券',
  `SparePoint` int(11) NOT NULL COMMENT '结余点券',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`CurrentDate`,`UserId`),
  KEY `Index_2` (`SonType`)
) ENGINE=InnoDB AUTO_INCREMENT=653626 DEFAULT CHARSET=utf8 COMMENT='用户元宝消费日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_weay`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_weay` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CurrentDate` datetime NOT NULL COMMENT '当前时间',
  `ChangeType` int(11) NOT NULL COMMENT '类型',
  `Weay` int(11) NOT NULL COMMENT '消费体力值',
  `SpareWeay` int(11) NOT NULL COMMENT '剩余体力值',
  KEY `AK_Key_1` (`id`),
  KEY `Index_1` (`CurrentDate`),
  KEY `UserId` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=6584 DEFAULT CHARSET=utf8 COMMENT='用户体力日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_worldboss`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_worldboss` (
  `CampaignId` int(11) NOT NULL COMMENT 'BOSSID',
  `PlayerCount` int(11) NOT NULL COMMENT '参与人数',
  `StartTime` datetime NOT NULL COMMENT '开始时间',
  `OverTime` datetime NOT NULL COMMENT '结束时间',
  `IsWin` int(11) NOT NULL COMMENT '结果',
  `LastHitUserId` int(11) NOT NULL COMMENT '最后一击用户',
  `OrderUserIds` varchar(5000) DEFAULT NULL COMMENT '玩家伤害排名',
  KEY `Index_1` (`CampaignId`,`StartTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='世界BOSS';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_log_worldmap`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_log_worldmap` (
  `MapId` int(11) NOT NULL,
  `MapName` varchar(255) NOT NULL,
  `PlayerCount` smallint(11) NOT NULL DEFAULT '0' COMMENT '当前人数',
  `OccpCount` smallint(11) NOT NULL DEFAULT '0' COMMENT '当前占领野地数量',
  `WildLandCount` smallint(11) NOT NULL DEFAULT '0' COMMENT '野地总数量',
  `LogTime` datetime NOT NULL COMMENT '日志时间',
  KEY `Index_1` (`MapId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='世界大地图日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_version`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_version` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `currentdate` datetime NOT NULL COMMENT '发布日期',
  `version` varchar(100) NOT NULL COMMENT '版本号',
  `patch` varchar(100) NOT NULL COMMENT '补丁号',
  `state` tinyint(4) NOT NULL COMMENT '状态 -1失败 0过期 1正常',
  `description` varchar(1000) NOT NULL DEFAULT '' COMMENT '说明',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏版本';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping events for database 'db_normal_log'
--

--
-- Dumping routines for database 'db_normal_log'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-13  1:34:15
