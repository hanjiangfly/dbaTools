-- MySQL dump 10.13  Distrib 5.6.25, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: db_normal
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
-- Table structure for table `del_crystal_proc`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `del_crystal_proc` (
  `theId` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `delTime` datetime DEFAULT NULL,
  `delCountplan` int(11) DEFAULT NULL COMMENT '要删除的数目',
  `delCount` int(11) DEFAULT NULL COMMENT '该步删除的数目',
  `delleave` int(11) DEFAULT NULL COMMENT '剩下多少没删',
  `delType` int(11) DEFAULT NULL COMMENT '删除类型',
  PRIMARY KEY (`theId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `del_t_u_playerinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `del_t_u_playerinfo` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `NickName` varchar(50) NOT NULL COMMENT '昵称',
  `IsExist` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效',
  `Sexs` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别(0女 1男)',
  `Pics` smallint(6) NOT NULL COMMENT '肖像',
  `Camp` smallint(6) NOT NULL DEFAULT '0' COMMENT '阵营',
  `Point` int(11) NOT NULL DEFAULT '0' COMMENT '点券',
  `GiftToken` int(11) NOT NULL DEFAULT '0' COMMENT '礼劵',
  `Gold` int(11) NOT NULL DEFAULT '0' COMMENT '黄金',
  `State` smallint(6) NOT NULL DEFAULT '0' COMMENT '状态',
  `KnightSite` binary(20) DEFAULT NULL COMMENT '侠客组合标志位',
  `QuestSite` binary(200) DEFAULT NULL COMMENT '任务标志',
  `ConsortiaID` int(11) NOT NULL DEFAULT '0' COMMENT '公会编号',
  `ConsortiaName` varchar(50) DEFAULT NULL COMMENT '公会名称',
  `ConsortiaOutAttack` smallint(6) DEFAULT '0' COMMENT '公会技能外攻提升',
  `ConsortiaInAttack` smallint(6) DEFAULT '0' COMMENT '公会技能内攻提升',
  `ConsortiaLive` smallint(6) DEFAULT '0' COMMENT '公会技能生命提升',
  `ConsortiaOutDefense` smallint(6) DEFAULT '0' COMMENT '公会技能外防提升',
  `ConsortiaInDefense` smallint(6) DEFAULT '0' COMMENT '公会技能内防提升',
  `ConsortiaForcehit` smallint(6) DEFAULT '0' COMMENT '公会技能暴击提升',
  `ConsortiaRecrit` smallint(6) DEFAULT '0' COMMENT '公会技能抗暴提升',
  `ConsortiaParry` smallint(6) DEFAULT '0' COMMENT '公会技能招架提升',
  `ConsortiaWerck` smallint(6) DEFAULT '0' COMMENT '公会技能破击提升',
  `ConsortiaOffer` int(11) NOT NULL DEFAULT '0' COMMENT '公会贡献',
  `ConsortiaTotalOffer` int(11) NOT NULL DEFAULT '0' COMMENT '公会历史捐献',
  `ConsortiaActiveValue` int(11) NOT NULL DEFAULT '0' COMMENT '公会活跃度',
  `Renames` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否重命名',
  `ClaimId` smallint(6) NOT NULL DEFAULT '0' COMMENT '头衔',
  `ClaimName` varchar(50) DEFAULT NULL COMMENT '头衔名称',
  `Grades` smallint(6) NOT NULL DEFAULT '0' COMMENT '等级',
  `GP` int(11) NOT NULL DEFAULT '0' COMMENT '当前等级经验',
  `TotalGP` bigint(20) NOT NULL DEFAULT '0' COMMENT '总经验',
  `Repute` int(11) NOT NULL DEFAULT '0' COMMENT '声望',
  `Strategy` int(11) NOT NULL DEFAULT '0' COMMENT '战魂',
  `CampaignSite` varchar(3000) DEFAULT NULL COMMENT '战役标志',
  `ResourceMax` int(11) NOT NULL DEFAULT '0' COMMENT '资源上限',
  `LogOutTime` datetime DEFAULT NULL COMMENT '用户下线时间',
  `CastleOrder` int(11) NOT NULL DEFAULT '0' COMMENT '用户扩展升级队列数',
  `BagCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '扩展背包',
  `HeroCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '扩展英雄数量',
  `Weary` int(11) DEFAULT '0' COMMENT '疲劳值',
  `NoviceProcess` smallint(6) DEFAULT '0' COMMENT '新手进度',
  `GradeProcess` bigint(20) DEFAULT '0' COMMENT '新手等级宝箱',
  `TimeProcess` int(11) DEFAULT '0' COMMENT '新手时间宝箱(分钟单位)',
  `TimeRun` int(11) NOT NULL DEFAULT '0' COMMENT '新手时间宝箱运行时长',
  `TimeGet` tinyint(1) DEFAULT '0' COMMENT '新手时间宝箱是否领取',
  `AttackCount` int(11) DEFAULT '0' COMMENT '攻击次数',
  `FightingCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力',
  `TotalFightingCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '玩家和出战侠客总战力',
  `KnightFightingCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '侠客总战力',
  `MatchWin` int(11) NOT NULL DEFAULT '0' COMMENT '竞技胜利场数',
  `MatchFailed` int(11) NOT NULL DEFAULT '0' COMMENT '竞技失败场数',
  `RavenCount` int(11) NOT NULL DEFAULT '0' COMMENT '攻击次数',
  `Right` smallint(6) NOT NULL DEFAULT '1' COMMENT '普通玩家',
  `Job` smallint(6) DEFAULT '0' COMMENT '职业',
  `LeedProcess` int(11) NOT NULL DEFAULT '0' COMMENT '每日引导完成状态',
  `SignDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '上次签到时间',
  `SignTimes` int(11) NOT NULL DEFAULT '0' COMMENT '签到次数',
  `SignSite` int(11) NOT NULL DEFAULT '0' COMMENT '领奖阶段',
  `StarCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '扩展星格',
  `StartDate` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '上一次占星时间',
  `GpLastDate` date DEFAULT '2000-01-01',
  `Flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '禁言标志位',
  `BeginTime` datetime NOT NULL COMMENT '禁言开始时间',
  `EndTime` datetime NOT NULL COMMENT '禁言结束时间',
  `Reason` varchar(20) NOT NULL COMMENT '禁言原因',
  `LeedDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '每日引导时间',
  `RefuseFriend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允许添加好友',
  `RefuseInvite` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允许房间邀请',
  `VersionId` int(11) NOT NULL DEFAULT '0' COMMENT '版本ID',
  `LuckyCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '当前炼金次数',
  `RefiningSoulCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '当前炼魂次数',
  `WaterRefineCount` int(11) DEFAULT '0' COMMENT '炼化光晶',
  `MultiCampaignCount` int(11) NOT NULL DEFAULT '0' COMMENT '进入多人副本次数',
  `WaterCrystal` int(11) NOT NULL DEFAULT '0' COMMENT '水晶',
  `StartFree` smallint(6) NOT NULL DEFAULT '0' COMMENT '免费占星次数',
  `StarPoint` int(11) NOT NULL DEFAULT '0' COMMENT '星运积分',
  `QTEGuide` int(11) DEFAULT '0' COMMENT 'QTE引导标记',
  `Geste` int(11) NOT NULL DEFAULT '0' COMMENT '荣誉',
  `StoreGrade` int(11) NOT NULL DEFAULT '0' COMMENT '宝石等级',
  `StoreGp` int(11) NOT NULL DEFAULT '0' COMMENT '宝石经验',
  `ReloginProcess` int(11) NOT NULL DEFAULT '0' COMMENT '多次登录进程',
  `ReloginCount` int(11) NOT NULL DEFAULT '0' COMMENT '多次登录次数',
  `ReloginDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '登录时间',
  `BlessingCount` int(11) NOT NULL DEFAULT '0' COMMENT '祝福轮盘启用次数',
  `BlessingBuff` int(11) NOT NULL DEFAULT '0' COMMENT '祝福轮盘buff效果',
  `FirstCharge` tinyint(1) NOT NULL DEFAULT '0' COMMENT '玩家是否首次充值（0：非首次充值，1：首次充值）',
  `Charm` int(11) NOT NULL DEFAULT '0' COMMENT '魅力值',
  `MatchRoomCount` tinyint(4) NOT NULL DEFAULT '0' COMMENT '竞技场次数',
  `KingBuff` tinyint(4) NOT NULL DEFAULT '0' COMMENT '专属BUFF领取状态',
  `LeaveGp` int(11) NOT NULL DEFAULT '0' COMMENT '离线经验',
  `WarFieldCount` tinyint(4) NOT NULL DEFAULT '0' COMMENT '跨服战场进入次数',
  `EnterTrialCount` tinyint(4) NOT NULL DEFAULT '0' COMMENT '进入试炼之塔次数',
  `CrossScore` int(11) NOT NULL DEFAULT '0' COMMENT '跨服积分',
  `MysteryScore` int(11) NOT NULL DEFAULT '0' COMMENT '玩家积分商城总积分',
  `AppellId` int(11) NOT NULL DEFAULT '0' COMMENT '称号ID',
  `LordsScore` int(11) NOT NULL DEFAULT '0' COMMENT '荣耀水晶',
  `Soul1` int(11) NOT NULL DEFAULT '0' COMMENT '侠魂1',
  `Soul2` int(11) NOT NULL DEFAULT '0' COMMENT '侠魂2',
  `Soul3` int(11) NOT NULL DEFAULT '0' COMMENT '侠魂3',
  `Soul4` int(11) NOT NULL DEFAULT '0' COMMENT '侠魂4',
  `KnightRewardSite` int(11) NOT NULL DEFAULT '0' COMMENT '侠客招募领奖进度',
  `DragonSoulId` int(11) NOT NULL DEFAULT '0' COMMENT '当前龙魂模板ID',
  `Vital` int(11) DEFAULT '0' COMMENT '真气',
  `ChargeRewardNum` int(11) DEFAULT '0' COMMENT '充值返利的充值点数',
  `ChargeRewardFlag` int(11) DEFAULT '0' COMMENT '充值返利领取标志'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
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
-- Table structure for table `t_s_action`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_action` (
  `ActionId` int(11) DEFAULT NULL COMMENT '编号',
  `ActionType` int(11) DEFAULT NULL COMMENT '动作类型',
  `Frame` int(11) DEFAULT NULL COMMENT '帧数',
  `Para` varchar(200) DEFAULT NULL COMMENT '参数',
  `Sex` smallint(6) DEFAULT '2' COMMENT '性别'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='新技能动作模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_actiontemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_actiontemplate` (
  `ActionId` int(11) NOT NULL COMMENT '模板编号',
  `ActionName` varchar(200) DEFAULT NULL COMMENT '动作名称',
  `AttackTimes` int(11) NOT NULL COMMENT '攻击次数',
  `FrameNum` int(11) NOT NULL COMMENT '动作帧数',
  `AttackType` int(11) DEFAULT '0' COMMENT '远程攻击(1表示近程2远程)',
  PRIMARY KEY (`ActionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='技能动作模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_active`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_active` (
  `ActiveId` varchar(36) NOT NULL COMMENT '活动编号',
  `Title` varchar(200) NOT NULL COMMENT '标题',
  `Description` varchar(2000) NOT NULL COMMENT '描述',
  `Contents` varchar(2000) NOT NULL COMMENT '内容',
  `AwardContent` varchar(2000) NOT NULL COMMENT '奖励物品',
  `HasKey` int(11) NOT NULL COMMENT '是否需要Key',
  `MoreKey` tinyint(1) NOT NULL COMMENT '是否允许多个Key',
  `StartDate` datetime NOT NULL COMMENT '开始时间',
  `EndDate` datetime NOT NULL COMMENT '结束时间',
  `ActionTimeContent` varchar(200) NOT NULL COMMENT '描述时间',
  `Grades` int(11) NOT NULL DEFAULT '0' COMMENT '玩家等级限制',
  `Consortia` int(11) NOT NULL DEFAULT '0' COMMENT '公会等级限制',
  `Sort` int(11) NOT NULL COMMENT '排序',
  PRIMARY KEY (`ActiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_activeitem`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_activeitem` (
  `ActiveId` varchar(36) NOT NULL COMMENT '活动编号',
  `TemplateId` int(11) NOT NULL COMMENT '物品模板',
  `Counts` int(11) NOT NULL COMMENT '数量',
  `Jobs` int(11) NOT NULL COMMENT '职业',
  `IsBind` tinyint(1) NOT NULL COMMENT '是否绑定',
  `TemplateType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '模版类型（0：物品，1：星运）'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_activenumber`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_activenumber` (
  `ActiveId` varchar(36) NOT NULL,
  `AwardID` char(36) NOT NULL,
  `PullDown` tinyint(1) NOT NULL,
  `GetDate` datetime NOT NULL,
  `UserID` int(11) NOT NULL,
  PRIMARY KEY (`AwardID`),
  KEY `Index_1` (`ActiveId`,`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='游戏奖励条件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_activetemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_activetemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板Id',
  `ActiveType` tinyint(4) DEFAULT '0' COMMENT '活动类型',
  `Sort` smallint(4) NOT NULL COMMENT '排序',
  `ActiveName` varchar(200) NOT NULL COMMENT '活动名称',
  `ActiveTime` varchar(100) NOT NULL COMMENT '活动时间',
  `StartTimerScript` varchar(100) DEFAULT NULL COMMENT '开始时间',
  `Detail` varchar(200) DEFAULT NULL COMMENT '活动描述',
  `MaxCount` smallint(4) DEFAULT '0' COMMENT '最大次数',
  `Levels` smallint(4) NOT NULL COMMENT '推荐等级',
  `Icon` varchar(200) NOT NULL DEFAULT ' ' COMMENT '活动图标',
  `Title` varchar(200) NOT NULL DEFAULT ' ' COMMENT '活动标题图片',
  `Description` varchar(200) NOT NULL DEFAULT '  ' COMMENT '活动描述信息',
  `Reward` varchar(200) NOT NULL DEFAULT '  ' COMMENT '活动奖励',
  `RewardDetail` varchar(200) DEFAULT NULL COMMENT '奖励描述',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_answerquestioninfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_answerquestioninfo` (
  `Id` int(11) NOT NULL DEFAULT '0' COMMENT '编号',
  `Question` varchar(300) NOT NULL COMMENT '问题',
  `Option1` varchar(100) DEFAULT NULL COMMENT '选项1',
  `Option2` varchar(100) DEFAULT NULL COMMENT '选项2',
  `Option3` varchar(100) DEFAULT NULL COMMENT '选项3',
  `Option4` varchar(100) DEFAULT NULL COMMENT '选项4',
  `Result` smallint(6) NOT NULL DEFAULT '0' COMMENT '正确答案索引',
  `Property1` int(11) NOT NULL DEFAULT '0' COMMENT '属性一',
  `Property2` int(11) NOT NULL DEFAULT '0' COMMENT '属性二',
  `Property3` int(11) NOT NULL DEFAULT '0' COMMENT '属性三',
  `Property4` int(11) NOT NULL DEFAULT '0' COMMENT '属性四',
  `Otherid` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='答题题库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_appell`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_appell` (
  `TemplateId` int(11) NOT NULL COMMENT '模版ID',
  `Type` tinyint(4) unsigned NOT NULL COMMENT '类型',
  `Title` varchar(50) NOT NULL COMMENT '名字',
  `Descript` varchar(255) NOT NULL COMMENT '描述',
  `Quality` tinyint(4) unsigned NOT NULL COMMENT '品质',
  `Notice` tinyint(4) NOT NULL COMMENT '提示',
  `Perfix` varchar(50) NOT NULL COMMENT '前缀',
  `Sort` tinyint(4) NOT NULL COMMENT '排序',
  `IsLong` tinyint(4) NOT NULL COMMENT '时效',
  `TimeDes` varchar(50) DEFAULT NULL COMMENT '时效描述',
  `CondtionType` tinyint(4) NOT NULL COMMENT '条件类型',
  `Para` varchar(50) NOT NULL DEFAULT '0' COMMENT '参数',
  `Job` tinyint(4) NOT NULL DEFAULT '0' COMMENT '职业',
  `IsAuto` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否为自动领取(1是，0否)',
  `OutAttack` int(11) NOT NULL DEFAULT '0' COMMENT '外功攻击',
  `OutDefence` int(11) NOT NULL DEFAULT '0' COMMENT '外功防御',
  `InAttack` int(11) NOT NULL DEFAULT '0' COMMENT '内功攻击',
  `InDefence` int(11) NOT NULL DEFAULT '0' COMMENT '内功防御',
  `ForceHit` int(11) NOT NULL DEFAULT '0' COMMENT '暴击值',
  `ReCrit` int(11) NOT NULL DEFAULT '0' COMMENT '抗暴击值',
  `Wreck` int(11) NOT NULL DEFAULT '0' COMMENT '破击值',
  `Live` int(11) NOT NULL DEFAULT '0' COMMENT '生命',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '抗破击值',
  `ShowParameter` varchar(100) DEFAULT NULL COMMENT '展示参数',
  `IsShowProgress` tinyint(4) DEFAULT '0' COMMENT '是否显示进度（0不显示1显示）',
  `ShowSite` varchar(100) NOT NULL COMMENT '显示的站点,空为都不显示,All为都显示',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='称号模版';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_avataorder`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_avataorder` (
  `Order` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '常用avata排名',
  `Avata` varchar(255) NOT NULL DEFAULT '' COMMENT 'avata路径',
  PRIMARY KEY (`Order`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='常用avata统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_backcondition`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_backcondition` (
  `Id` varchar(36) NOT NULL COMMENT '编号',
  `IsOpen` tinyint(1) NOT NULL COMMENT '开关',
  `Grade` int(11) NOT NULL COMMENT '玩家等级',
  `LostDays` int(11) NOT NULL COMMENT '玩家离线天数',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='老玩家返回活动条件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_backitem`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_backitem` (
  `Id` varchar(36) NOT NULL COMMENT '编号',
  `ItemTemplateid` int(11) NOT NULL COMMENT '物品ID',
  `Count` int(11) NOT NULL COMMENT '物品数量',
  `Job` int(11) NOT NULL COMMENT '职业',
  PRIMARY KEY (`Id`,`ItemTemplateid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='老玩家返回活动物品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_bloodybattletemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_bloodybattletemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板ID',
  `Index` int(11) NOT NULL COMMENT '关卡索引',
  `PreTempId` int(11) DEFAULT NULL COMMENT '前置关卡ID',
  `NextTempId` int(11) DEFAULT NULL COMMENT '后置关卡ID',
  `TemplateName` varchar(20) NOT NULL COMMENT '模板名称',
  `HeroTempId` int(11) NOT NULL COMMENT 'BOSS模板ID',
  `ArmyTempIds` varchar(50) NOT NULL COMMENT '战斗部队ID',
  `Items` varchar(50) DEFAULT NULL COMMENT '掉落物品ID',
  `OccupyRewards` varchar(500) DEFAULT NULL COMMENT '占领奖励',
  `Needfightcapacity` int(11) DEFAULT NULL COMMENT '推荐战斗力',
  `MapId` int(11) DEFAULT NULL COMMENT '地图ID',
  `IsChange` tinyint(4) DEFAULT '0' COMMENT '是否转换战斗背景',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='血战灵鹫关卡模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_bookupgrade`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_bookupgrade` (
  `TemplateId` int(11) NOT NULL COMMENT '模板ID',
  `NeedItemId` int(11) NOT NULL COMMENT ' 进阶所需物品',
  `Count` int(11) NOT NULL COMMENT '数量',
  `Description` varchar(20) DEFAULT NULL COMMENT '技能名',
  KEY `idx` (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='藏经阁升阶模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_buildingres`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_buildingres` (
  `SonType` int(11) NOT NULL COMMENT '建筑模板编号',
  `Grades` int(11) NOT NULL COMMENT '建筑等级',
  `SortId` int(11) NOT NULL COMMENT '排列序号',
  `PosX` int(11) DEFAULT NULL COMMENT '图标X坐标',
  `PosY` int(11) DEFAULT NULL COMMENT '图标Y坐标',
  `TitleX` int(11) DEFAULT NULL COMMENT '标题X坐标',
  `TitleY` int(11) DEFAULT NULL COMMENT '标题Y坐标',
  `PicPath` varchar(200) DEFAULT NULL COMMENT '图片路径',
  `FlashPath` varchar(200) DEFAULT NULL COMMENT '动画路径',
  `Depth` int(11) NOT NULL DEFAULT '0' COMMENT '建筑深度',
  PRIMARY KEY (`SonType`,`Grades`,`SortId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='建筑资源';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_buildingtemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_buildingtemplate` (
  `TemplateId` int(11) NOT NULL AUTO_INCREMENT COMMENT '建筑模板编号',
  `Camp` int(11) NOT NULL COMMENT '阵营',
  `BuildingName` varchar(200) NOT NULL COMMENT '建筑名称',
  `MasterType` int(11) NOT NULL COMMENT '建筑主类型',
  `SonType` int(11) NOT NULL COMMENT '建筑子类型',
  `BuildingGrade` int(11) NOT NULL COMMENT '等级',
  `PreTemplateId` varchar(50) DEFAULT NULL COMMENT '前置建筑',
  `NextGradeTemplateId` int(11) NOT NULL DEFAULT '0' COMMENT '下一等级',
  `NextTemplateId` varchar(50) DEFAULT NULL COMMENT '后置建筑',
  `PlayerGrades` int(11) NOT NULL DEFAULT '0' COMMENT '领主等级',
  `CrystalsConsume` int(11) NOT NULL DEFAULT '0' COMMENT '魔晶消耗量',
  `GoldConsume` int(11) NOT NULL DEFAULT '0' COMMENT '黄金消耗量',
  `Reputation` int(11) NOT NULL DEFAULT '0' COMMENT '声望',
  `UpgradeTime` int(11) NOT NULL DEFAULT '0' COMMENT '升级所需时间(秒)',
  `Property1` int(11) NOT NULL DEFAULT '0' COMMENT '属性一',
  `Property2` int(11) NOT NULL DEFAULT '0' COMMENT '属性二',
  `Property3` int(11) NOT NULL COMMENT '属性三',
  `Property4` int(11) NOT NULL COMMENT '属性四',
  `Property5` int(11) NOT NULL COMMENT '属性五',
  `Property6` int(11) NOT NULL COMMENT '属性六',
  `Description` varchar(500) DEFAULT NULL COMMENT '描述',
  `Icon` varchar(200) DEFAULT NULL COMMENT '路径',
  `Activity` varchar(500) DEFAULT NULL COMMENT '作用',
  `PosX` int(11) DEFAULT NULL COMMENT 'X坐标',
  `PosY` int(11) DEFAULT NULL COMMENT 'Y坐标',
  `TitleX` int(11) DEFAULT NULL COMMENT '名称X坐标',
  `TitleY` int(11) DEFAULT NULL COMMENT '名称Y坐标',
  `PicPath` varchar(100) DEFAULT NULL COMMENT '资源路径',
  `SkillId` int(11) DEFAULT '0' COMMENT '技能ID',
  `UpgradeEffect` varchar(50) DEFAULT '0' COMMENT '补遗效果',
  `NextSkillId` int(11) DEFAULT NULL COMMENT '下一个技能ID',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB AUTO_INCREMENT=1476401 DEFAULT CHARSET=utf8 COMMENT='建筑模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_buybag`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_buybag` (
  `lineIndex` int(11) NOT NULL AUTO_INCREMENT COMMENT '背包行数，从1开始算，最多18行',
  `currCost` int(11) NOT NULL COMMENT '当前行每格消耗的元宝数',
  `currTime` int(11) NOT NULL COMMENT '当前行每格自动开启所需要的分钟数',
  PRIMARY KEY (`lineIndex`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='背包解锁模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_campaign`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_campaign` (
  `CampaignId` int(11) NOT NULL COMMENT '副本编号',
  `CampaignName` varchar(200) DEFAULT NULL COMMENT '副本名称',
  `Types` int(11) DEFAULT NULL COMMENT '类型',
  `SonTypes` int(11) DEFAULT NULL COMMENT '子类型',
  `MapIds` varchar(20) DEFAULT NULL COMMENT '地图集合',
  `LandId` int(11) DEFAULT NULL COMMENT '大陆ID',
  `DungeonId` int(11) DEFAULT NULL COMMENT '章节ID',
  `AreaId` int(11) DEFAULT NULL COMMENT '区域ID',
  `MinLevel` int(11) DEFAULT NULL COMMENT '最低等级',
  `MaxLevel` int(11) DEFAULT NULL COMMENT '最高等级',
  `Needfightcapacity` int(11) DEFAULT '0' COMMENT '所需战斗力',
  `PreCampaignId` int(11) NOT NULL COMMENT '置前副本',
  `NextCampaignId` int(11) NOT NULL COMMENT '后置副本',
  `Capacity` int(11) DEFAULT NULL COMMENT '人数',
  `DifficutlyGrade` int(11) DEFAULT NULL COMMENT '难度等级',
  `CardPayment` int(11) DEFAULT NULL COMMENT '翻牌付费',
  `PosX` int(11) DEFAULT NULL COMMENT 'PosX',
  `PosY` int(11) DEFAULT NULL COMMENT 'PosY',
  `Item` varchar(200) DEFAULT NULL COMMENT '掉落预览',
  `StandSecond` int(11) DEFAULT NULL COMMENT '通关标准时间',
  `StandardDamage` int(11) NOT NULL DEFAULT '0' COMMENT '通关标准伤害',
  `StandardHurt` int(11) NOT NULL DEFAULT '0' COMMENT '通关标准受到伤害',
  `BaseGp` int(11) DEFAULT NULL COMMENT '基础经验',
  `Description` varchar(200) DEFAULT NULL COMMENT '描述',
  `OpenTime` varchar(10) DEFAULT NULL COMMENT '开放时间',
  `StopTime` varchar(10) DEFAULT NULL COMMENT '关闭时间',
  `Appraisal` varchar(50) NOT NULL DEFAULT '10|20|30|40|100' COMMENT '战役评分规则，评分为s,a,b,c,d所对应的回合数',
  PRIMARY KEY (`CampaignId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='战役表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_campaignbuffer`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_campaignbuffer` (
  `TemplateId` int(11) NOT NULL COMMENT '编号',
  `TemplateName` varchar(200) NOT NULL COMMENT '名称',
  `Icon` varchar(100) NOT NULL COMMENT '图标路径',
  `Types` int(11) NOT NULL COMMENT 'Buffer类型',
  `Grades` int(11) NOT NULL COMMENT '等级',
  `Attack` int(11) NOT NULL COMMENT '攻击',
  `Defence` int(11) NOT NULL COMMENT '防御',
  `MagicAttack` int(11) NOT NULL COMMENT '魔法攻击',
  `MagicDefence` int(11) NOT NULL COMMENT '魔法防御',
  `LeadPawn` int(11) NOT NULL COMMENT '带兵数量',
  `Live` int(11) NOT NULL COMMENT '生命',
  `Crit` int(11) NOT NULL COMMENT '暴击',
  `Block` int(11) NOT NULL COMMENT '格挡',
  `Angry` int(11) NOT NULL COMMENT '怒气',
  `DataType` int(11) NOT NULL COMMENT '数据类型',
  `Description` varchar(200) NOT NULL COMMENT '描述',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='战役Buffer模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_campaigndata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_campaigndata` (
  `Id` int(11) NOT NULL COMMENT '序号',
  `CampaignId` int(11) NOT NULL COMMENT '役战id',
  `NodeName` varchar(200) DEFAULT NULL COMMENT '点节名字',
  `MasterType` int(11) DEFAULT NULL COMMENT '主类型',
  `SonType` int(11) DEFAULT NULL COMMENT '子类型',
  `RefreshSpeed` int(11) NOT NULL COMMENT '恢复速度',
  `PreNodeIds` varchar(200) DEFAULT NULL COMMENT '前置节点',
  `Heros` varchar(200) DEFAULT NULL COMMENT '英雄模板',
  `Soldiers` varchar(200) DEFAULT NULL COMMENT 'Soldiers',
  `AI` varchar(1000) DEFAULT NULL COMMENT 'AI',
  `Property1` int(11) NOT NULL COMMENT '属性一',
  `Property2` int(11) NOT NULL COMMENT '属性二',
  `Property3` int(11) DEFAULT '0' COMMENT '属性三',
  `Property4` int(11) DEFAULT '0' COMMENT '属性四',
  `HeroGP` int(11) NOT NULL COMMENT '英雄获得经验',
  `Level` int(11) DEFAULT NULL COMMENT '等级',
  `NextNodeIds` varchar(100) NOT NULL COMMENT '下一节点',
  `BattleType` int(11) NOT NULL COMMENT '战斗类型',
  `StyleType` int(11) NOT NULL COMMENT '样式类型',
  `MoveToNodeIds` varchar(100) DEFAULT NULL COMMENT '传送目标点',
  `Formation` int(11) DEFAULT NULL COMMENT '部队的阵型',
  `PatrolPos` varchar(100) DEFAULT NULL COMMENT '巡逻范围',
  `AttackTypes` int(11) NOT NULL DEFAULT '0' COMMENT '攻击类型',
  `NameColor` int(11) DEFAULT '0' COMMENT '名称颜色',
  `SizeType` int(11) NOT NULL DEFAULT '0' COMMENT '大小',
  `Toward` int(11) DEFAULT NULL COMMENT '朝向',
  `Resource` int(11) DEFAULT NULL COMMENT '资源类型',
  `BornPoints` varchar(100) DEFAULT NULL COMMENT '出生点集合',
  `FixX` int(11) DEFAULT '0',
  `FixY` int(11) DEFAULT '0',
  `Param1` int(11) NOT NULL DEFAULT '0' COMMENT '参数1',
  `Param2` int(11) NOT NULL DEFAULT '0' COMMENT '参数2',
  `Param3` varchar(255) DEFAULT NULL COMMENT '参数3',
  `Param4` varchar(255) DEFAULT NULL COMMENT '参数4',
  `Param5` varchar(255) DEFAULT NULL COMMENT '参数5',
  `Param6` varchar(255) DEFAULT NULL COMMENT '参数6',
  `IsReport` tinyint(4) DEFAULT '0' COMMENT '是否可重复触发',
  `NodeState` int(11) NOT NULL DEFAULT '1' COMMENT '节点状态',
  `HandlerRange` int(11) NOT NULL DEFAULT '0' COMMENT '攻击范围',
  `IsChange` tinyint(4) DEFAULT '0' COMMENT '是否转换战斗背景',
  `CrossAi` varchar(1000) DEFAULT NULL COMMENT '跨服ai',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_castletemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_castletemplate` (
  `CastleId` int(11) NOT NULL AUTO_INCREMENT COMMENT '城堡编号',
  `CastleName` varchar(200) NOT NULL COMMENT '城堡名称',
  `Feature` varchar(200) DEFAULT NULL COMMENT '特色',
  `Pos` varchar(30) DEFAULT NULL COMMENT '位置',
  `DamageDegree` int(11) DEFAULT NULL COMMENT '破坏度',
  PRIMARY KEY (`CastleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='城堡模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_channeltemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_channeltemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板ID',
  `TemplateName` varchar(20) DEFAULT NULL COMMENT '模板名称',
  `MasterType` int(11) NOT NULL DEFAULT '0' COMMENT '主类型',
  `SonType` int(11) NOT NULL DEFAULT '0' COMMENT '子类型',
  `Value` int(11) NOT NULL DEFAULT '0' COMMENT '加成值',
  `Description` varchar(200) DEFAULT NULL COMMENT '描述',
  `Param1` int(11) DEFAULT '0' COMMENT '参数1',
  `Param2` int(11) DEFAULT '0' COMMENT '参数2',
  `Param3` int(11) DEFAULT '0' COMMENT '参数3',
  `Param4` int(11) DEFAULT '0' COMMENT '参数4',
  `Param5` int(11) DEFAULT '0' COMMENT '参数5',
  `Param6` int(11) DEFAULT '0' COMMENT '参数6',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='经脉模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_chargereward`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_chargereward` (
  `templateId` int(11) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `stepId` int(11) NOT NULL COMMENT '充值的阶段',
  `chargePoint` int(11) NOT NULL COMMENT '充值点数',
  `showRewardPoint` int(11) NOT NULL COMMENT '显示的返利点数',
  `itemId` int(11) NOT NULL COMMENT '奖励的物品id',
  `itemCount` int(11) NOT NULL COMMENT '奖励的物品个数',
  `showItem` smallint(6) NOT NULL COMMENT '是否显示在奖励界面上',
  `activeId` varchar(36) NOT NULL DEFAULT '000000' COMMENT '活动id',
  `packgeId` varchar(36) NOT NULL DEFAULT '000000' COMMENT '礼包id',
  `order` int(11) NOT NULL DEFAULT '0' COMMENT '礼包排序',
  PRIMARY KEY (`templateId`)
) ENGINE=InnoDB AUTO_INCREMENT=505 DEFAULT CHARSET=utf8 COMMENT='充值返利表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_checkcodequestion`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_checkcodequestion` (
  `Id` varchar(36) NOT NULL COMMENT '编号',
  `Question` varchar(300) NOT NULL COMMENT '问题',
  `Option1` varchar(100) DEFAULT NULL COMMENT '选项1',
  `Option2` varchar(100) DEFAULT NULL COMMENT '选项2',
  `Option3` varchar(100) DEFAULT NULL COMMENT '选项3',
  `Option4` varchar(100) DEFAULT NULL COMMENT '选项4',
  `Result` smallint(6) NOT NULL DEFAULT '0' COMMENT '正确答案索引',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='验证码题库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_checkplugconfig`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_checkplugconfig` (
  `Id` varchar(36) NOT NULL COMMENT '编号',
  `ClassName` varchar(300) NOT NULL COMMENT '类名',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='检测外挂类名配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_cleandbinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_cleandbinfo` (
  `DBName` varchar(100) NOT NULL COMMENT '数据库名称',
  `openTime` datetime DEFAULT NULL COMMENT '搭服时间',
  `cleanTime` datetime DEFAULT NULL COMMENT '清档时间',
  `canCleanDB` int(11) DEFAULT '1' COMMENT '1：可以清档 0：不可以清档',
  PRIMARY KEY (`DBName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='清档日志表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_compose`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_compose` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `Types` int(11) NOT NULL COMMENT '分类',
  `TempName` varchar(50) DEFAULT NULL COMMENT '名称',
  `CurrentTempId` int(10) NOT NULL DEFAULT '0' COMMENT '当前物品模板Id',
  `Steps` smallint(6) NOT NULL DEFAULT '0' COMMENT '当前物品阶',
  `Grades` smallint(6) NOT NULL DEFAULT '0' COMMENT '当前物品等级',
  `Material1` int(11) NOT NULL COMMENT '材料1',
  `Count1` int(11) NOT NULL COMMENT '数量1',
  `Material2` int(11) NOT NULL COMMENT '材料2',
  `Count2` int(11) NOT NULL COMMENT '数量2',
  `Material3` int(11) NOT NULL COMMENT '材料3',
  `Count3` int(11) NOT NULL COMMENT '数量3',
  `Material4` int(11) NOT NULL COMMENT '材料4',
  `Count4` int(11) NOT NULL COMMENT '数量4',
  `NeedMinLevel` int(11) NOT NULL COMMENT '需要玩家等级',
  `NeedBuildingTemp` int(11) NOT NULL COMMENT '需要建筑',
  `NewMaterial` int(11) NOT NULL COMMENT '成品',
  `Counts` int(11) NOT NULL COMMENT '成品数量',
  `NeedGold` int(11) NOT NULL DEFAULT '0' COMMENT '所需黄金',
  `IsLog` tinyint(1) NOT NULL DEFAULT '0' COMMENT '掉落提示',
  `Property` varchar(200) NOT NULL DEFAULT ' ' COMMENT '扩展属性',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品合成';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_config`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_config` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `ConfigName` varchar(200) NOT NULL COMMENT '名称',
  `ConfigValue` varchar(2000) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `IsClient` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1客户端可见 0不可见',
  UNIQUE KEY `Index_1` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_consortialevel`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_consortialevel` (
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `Types` int(11) DEFAULT NULL COMMENT '类型',
  `Levels` int(11) DEFAULT NULL COMMENT '等级',
  `LevelName` varchar(50) DEFAULT NULL COMMENT '名称',
  `PreTemplateId` int(11) DEFAULT NULL COMMENT '前置序号',
  `NextTemplateId` varchar(50) DEFAULT NULL COMMENT '后置序号',
  `NeedOffer` int(11) DEFAULT NULL COMMENT '所需公会贡献值',
  `CodeTime` int(11) DEFAULT NULL COMMENT '冷却时间',
  `Property1` int(11) DEFAULT NULL COMMENT '参数一',
  `Property2` int(11) DEFAULT NULL COMMENT '参数二',
  `Property3` int(11) DEFAULT NULL COMMENT '参数三',
  `Icon` varchar(50) DEFAULT NULL,
  `Description` varchar(200) DEFAULT NULL,
  `IsBuilding` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公会升级表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_convertcode`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_convertcode` (
  `Id` int(11) NOT NULL DEFAULT '0' COMMENT '编号',
  `ActiveId` varchar(16) NOT NULL COMMENT '激活码',
  `Title` varchar(200) NOT NULL COMMENT '标题',
  `Description` varchar(2000) NOT NULL COMMENT '描述',
  `AwardContent` varchar(2000) NOT NULL COMMENT '奖励物品',
  `Property1` int(11) NOT NULL DEFAULT '0' COMMENT '属性一',
  `Property2` int(11) NOT NULL DEFAULT '0' COMMENT '属性二',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代理商兑换激活码';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_crossmirrorconfig`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_crossmirrorconfig` (
  `Id` int(11) NOT NULL COMMENT '主键编号',
  `StartFight` int(11) NOT NULL COMMENT '开始战斗力',
  `EndFight` int(11) NOT NULL COMMENT '最后战斗力',
  `Type` tinyint(4) NOT NULL COMMENT '类型',
  `FirstFloor` float NOT NULL COMMENT '第一层',
  `SecondFloor` float NOT NULL COMMENT '第二层',
  `ThirdFloor` float NOT NULL COMMENT '第三层',
  `FourFloor` float NOT NULL COMMENT '第四层',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_crossmirrorheroinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_crossmirrorheroinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `Site` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力排名',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `NickName` varchar(50) NOT NULL COMMENT '用户昵称',
  `Grades` smallint(6) NOT NULL DEFAULT '0' COMMENT '等级',
  `Job` smallint(6) NOT NULL DEFAULT '0' COMMENT '英雄职业',
  `TemplateId` int(6) DEFAULT NULL COMMENT '英雄模板编号',
  `FightPos` smallint(6) DEFAULT NULL,
  `TotalFightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力',
  `TotalPhyAttack` int(11) DEFAULT NULL COMMENT '物理攻击',
  `TotalPhyDefence` int(11) DEFAULT NULL COMMENT '物理防御',
  `TotalMagicAttack` int(11) DEFAULT NULL COMMENT '魔法攻击',
  `TotalMagicDefence` int(11) DEFAULT NULL COMMENT '魔法防御',
  `TotalForceHit` int(11) DEFAULT NULL COMMENT '暴击值',
  `TotalRecit` int(11) DEFAULT NULL COMMENT '抗暴',
  `TotalParry` int(11) NOT NULL DEFAULT '0' COMMENT '招架',
  `TotalWreck` int(11) NOT NULL DEFAULT '0' COMMENT '破击',
  `Live` int(11) DEFAULT NULL COMMENT '生命',
  `SkillScript` varchar(500) DEFAULT NULL COMMENT '星运技能列表',
  `HideFashion` tinyint(1) DEFAULT '0' COMMENT '隐藏时装（1隐藏0显示）',
  `ItemTemplateId` varchar(200) DEFAULT NULL COMMENT '物品模板编号列表',
  `ItemPos` varchar(200) DEFAULT NULL COMMENT '物品位置列表',
  `ItemBagType` varchar(50) DEFAULT NULL COMMENT '物品背包类型列表',
  `SuiteSkill` varchar(100) DEFAULT NULL COMMENT '套装技能列表',
  `Avata` varchar(1500) DEFAULT NULL COMMENT '形象列表',
  `FasionAvata` varchar(500) DEFAULT NULL COMMENT '时装形象列表',
  `StarTemplateId` varchar(50) DEFAULT NULL COMMENT '星运ID列表',
  `StarGrade` varchar(50) DEFAULT NULL COMMENT '星运等级列表',
  `StarDefaultSkill` varchar(200) DEFAULT NULL COMMENT '星运技能列表',
  `Type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '跨服镜像类型(0风云际会,1琅环秘境)',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=4164 DEFAULT CHARSET=utf8 COMMENT='跨服玩家战斗力排行榜';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_crossmirrorknightinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_crossmirrorknightinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `KnightTempId` int(11) NOT NULL COMMENT '侠客ID',
  `FightPos` smallint(6) NOT NULL DEFAULT '0' COMMENT '战斗位置',
  `TotalPhyAttack` int(11) DEFAULT NULL COMMENT '物理攻击',
  `TotalPhyDefence` int(11) DEFAULT NULL COMMENT '物理防御',
  `TotalMagicAttack` int(11) DEFAULT NULL COMMENT '魔法攻击',
  `TotalMagicDefence` int(11) DEFAULT NULL COMMENT '魔法防御',
  `TotalForceHit` int(11) DEFAULT NULL COMMENT '暴击值',
  `TotalRecit` int(11) DEFAULT NULL COMMENT '抗暴',
  `TotalParry` int(11) NOT NULL DEFAULT '0' COMMENT '招架',
  `TotalWreck` int(11) NOT NULL DEFAULT '0' COMMENT '破击',
  `Live` int(11) DEFAULT NULL COMMENT '生命',
  `SkillScript` varchar(200) DEFAULT NULL COMMENT '技能列表',
  `Type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '跨服镜像类型(0风云际会,1琅环秘境)',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=16569 DEFAULT CHARSET=utf8 COMMENT='跨服玩家出战侠客信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_crossmirrorsacredinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_crossmirrorsacredinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `SacredTempId` int(11) NOT NULL COMMENT '神兽模板ID',
  `Grades` int(11) DEFAULT '1' COMMENT '神兽等级',
  `Star` int(11) DEFAULT '1' COMMENT '神兽星级',
  `SkillScript` varchar(200) DEFAULT NULL COMMENT '技能列表',
  `CurrentFightCapacity` int(11) DEFAULT '0' COMMENT '神兽战斗力',
  `TotalDecianti` int(11) DEFAULT '0' COMMENT '减抗',
  `TotalAttack` int(11) DEFAULT '0' COMMENT '攻击',
  `TotalAntiDark` int(11) DEFAULT '0' COMMENT '暗抗',
  `TotalAntiFire` int(11) DEFAULT '0' COMMENT '火抗',
  `TotalAntiLight` int(11) DEFAULT '0' COMMENT '光抗',
  `TotalAntiWater` int(11) DEFAULT '0' COMMENT '水抗',
  `TotalAntiWood` int(11) DEFAULT '0' COMMENT '木抗',
  `TotalBaseSp` int(11) DEFAULT '0' COMMENT '初始灵气',
  `TotalBackSp` int(11) DEFAULT '0' COMMENT '回复灵气速度',
  `TotalForcehit` int(11) DEFAULT '0' COMMENT '暴击',
  `Type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '跨服镜像类型(0风云际会,1琅环秘境)',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=4201 DEFAULT CHARSET=utf8 COMMENT='跨服玩家出战神兽信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_dayactive`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_dayactive` (
  `ActionTimeContent` varchar(200) NOT NULL COMMENT '描述时间',
  `ActiveId` varchar(36) NOT NULL COMMENT '活动编号',
  `AwardContent` varchar(2000) NOT NULL COMMENT '奖励物品',
  `Contents` varchar(2000) NOT NULL COMMENT '内容',
  `Description` varchar(2000) NOT NULL COMMENT '描述',
  `EndDate` datetime NOT NULL COMMENT '结束时间',
  `Sort` int(11) NOT NULL COMMENT '排序',
  `StartDate` datetime NOT NULL COMMENT '开始时间',
  `Title` varchar(200) NOT NULL COMMENT '标题',
  PRIMARY KEY (`ActiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日常活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_daygoal`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_daygoal` (
  `Id` int(11) NOT NULL COMMENT '活动Id',
  `GoalType` int(11) NOT NULL COMMENT '目标类型',
  `GoalName` varchar(50) NOT NULL DEFAULT '无' COMMENT '目标名称',
  `GoalArg` int(11) NOT NULL DEFAULT '0' COMMENT '目标参数',
  `RewardDopId` int(11) NOT NULL DEFAULT '0' COMMENT '完成目标的普通奖励',
  `RankReward` varchar(200) NOT NULL DEFAULT ' ' COMMENT '排名奖励',
  `SpecialDropId` int(11) NOT NULL COMMENT '特别大奖',
  `SpecialTarget` int(11) NOT NULL COMMENT '特别大奖目标',
  PRIMARY KEY (`GoalType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开服七日乐活动目标';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_desc`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_desc` (
  `Id` int(11) NOT NULL COMMENT '对应游戏中的各种类型',
  `Types` int(11) NOT NULL COMMENT '1为钻石消费类型,2为物品添加类型,3为物品消耗类型',
  `Descr` varchar(50) NOT NULL COMMENT '描述',
  PRIMARY KEY (`Id`,`Types`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='各类型描述表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_dirty`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_dirty` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Dirty` varchar(50) DEFAULT NULL,
  `State` tinyint(4) DEFAULT NULL,
  `Num` int(11) DEFAULT '0' COMMENT '限制次数',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='手动设置脏字符';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_discoverycondition`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_discoverycondition` (
  `TemplateId` int(11) NOT NULL,
  `DiscoveryId` int(11) NOT NULL DEFAULT '0' COMMENT '所属任务',
  `TemplateName` varchar(200) NOT NULL,
  `Sontype` int(11) NOT NULL COMMENT '条件类型(1普通2中级3高级)',
  `CondictionType` int(11) NOT NULL COMMENT '条件类型',
  `Param1` int(11) DEFAULT NULL COMMENT '参数一',
  `Param2` int(11) DEFAULT NULL COMMENT '参数二'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='探索条件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_discoveryreward`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_discoveryreward` (
  `TemplateId` int(11) NOT NULL,
  `Sontype` int(11) NOT NULL COMMENT '是否绑定条件（1绑定,2不绑定）',
  `Rewards` varchar(500) NOT NULL COMMENT '奖励',
  `ConditionId` int(11) NOT NULL DEFAULT '0' COMMENT '所属条件模板id'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='探索奖励';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_discoverytemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_discoverytemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板id',
  `TemplateName` varchar(50) NOT NULL COMMENT '模板名称',
  `BattleId` int(11) NOT NULL COMMENT '开启的战役id',
  `DiscoveryTime` int(11) NOT NULL COMMENT '探索时长'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='探索任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_dragonsoultemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_dragonsoultemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板ID',
  `TemplateName` varchar(20) NOT NULL COMMENT '模板名称',
  `NextTempId` int(11) NOT NULL COMMENT '下级模板ID',
  `Grade1` int(11) NOT NULL COMMENT '等级1',
  `Grade2` int(11) NOT NULL COMMENT '等级2',
  `Grade3` int(11) NOT NULL COMMENT '等级3',
  `NeedGrade` int(11) NOT NULL COMMENT '所需等级',
  `NeedGeste` int(11) NOT NULL COMMENT '所需声望',
  `OutAttack` int(11) NOT NULL DEFAULT '0' COMMENT '外功攻击',
  `OutDefence` int(11) NOT NULL DEFAULT '0' COMMENT '外功防御',
  `InAttack` int(11) NOT NULL DEFAULT '0' COMMENT '内功攻击',
  `InDefence` int(11) NOT NULL DEFAULT '0' COMMENT '内功防御',
  `ForceHit` int(11) NOT NULL DEFAULT '0' COMMENT '暴击值',
  `ReCrit` int(11) NOT NULL DEFAULT '0' COMMENT '抗暴击值',
  `Wreck` int(11) NOT NULL DEFAULT '0' COMMENT '破击值',
  `Live` int(11) NOT NULL DEFAULT '0' COMMENT '生命',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '抗破击值',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='龙魂模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_dropcondition`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_dropcondition` (
  `DropId` int(11) NOT NULL COMMENT '掉落编号',
  `CondictionType` int(11) NOT NULL COMMENT '条件类型',
  `Para1` varchar(200) DEFAULT NULL COMMENT '参数一',
  `Para2` varchar(200) DEFAULT NULL COMMENT '参数二',
  PRIMARY KEY (`DropId`,`CondictionType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='掉落条件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_dropitem`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_dropitem` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `DropId` int(11) NOT NULL COMMENT '掉落编号',
  `ItemId` int(11) NOT NULL COMMENT '掉落物品',
  `AppearType` int(11) NOT NULL COMMENT '出现方式',
  `IsBind` tinyint(1) NOT NULL COMMENT '是否绑定',
  `Random` int(11) NOT NULL COMMENT '随机',
  `Data` int(11) NOT NULL COMMENT '物品数量',
  `IsTips` tinyint(1) NOT NULL COMMENT '是否需要提示',
  `IsLogs` tinyint(1) NOT NULL COMMENT '是否记录日志',
  `ValidDate` int(11) NOT NULL COMMENT '有效期(分钟)',
  `IsNewItems` tinyint(1) NOT NULL COMMENT '是否是新物品',
  `IsShow` tinyint(1) NOT NULL COMMENT '是否显示（魔罐使用）',
  `Property1` varchar(50) DEFAULT '0' COMMENT '属性1',
  `Property2` varchar(50) DEFAULT '0' COMMENT '属性2',
  `Property3` varchar(50) DEFAULT '0' COMMENT '属性3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='掉落物品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_dropmacro`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_dropmacro` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `ItemTemplateId` int(11) NOT NULL COMMENT '物品模板',
  `HourInterval` int(11) NOT NULL COMMENT '时间间隔',
  `MaxCount` int(11) NOT NULL COMMENT '最大掉落数量',
  PRIMARY KEY (`ItemTemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='宏观掉落';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_dropview`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_dropview` (
  `CondictionType` int(11) NOT NULL COMMENT '掉落条件',
  `Site` int(11) NOT NULL COMMENT '位置',
  `Names` varchar(200) DEFAULT NULL COMMENT '名称',
  `Res` varchar(200) DEFAULT NULL COMMENT '资源路径',
  PRIMARY KEY (`CondictionType`,`Site`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='掉落预览表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_dungeonevent`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_dungeonevent` (
  `Id` int(11) NOT NULL COMMENT '事件id',
  `EventTitle` varchar(100) DEFAULT NULL COMMENT '事件标题',
  `EventMsg` varchar(500) DEFAULT NULL COMMENT '事件信息',
  `SonType` int(11) NOT NULL DEFAULT '0' COMMENT '事件类型',
  `OccurPlace` varchar(200) NOT NULL COMMENT '可出现位置',
  `Score` int(11) DEFAULT NULL COMMENT '积分',
  `HeroTemplateId` int(11) DEFAULT '0' COMMENT '怪物模板id',
  `Param1` varchar(100) DEFAULT NULL COMMENT '参数1',
  `Param2` varchar(100) DEFAULT NULL COMMENT '参数2',
  `Param3` varchar(100) DEFAULT NULL COMMENT '参数3',
  `Param4` varchar(100) DEFAULT NULL COMMENT '参数4',
  `Param5` varchar(100) DEFAULT NULL COMMENT '参数5',
  `Param6` varchar(100) DEFAULT NULL COMMENT '参数6',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地宫事件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_dungeonmap`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_dungeonmap` (
  `DungeonId` int(11) NOT NULL COMMENT '棋局id',
  `DungeonName` varchar(20) DEFAULT NULL COMMENT '棋局名',
  `SonType` tinyint(4) NOT NULL COMMENT '类型',
  `Score` tinyint(4) NOT NULL COMMENT '每一步积分',
  `Param1` varchar(100) DEFAULT NULL,
  `Param2` varchar(100) DEFAULT NULL,
  `Param3` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`DungeonId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_effecttemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_effecttemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `Camp` int(11) NOT NULL COMMENT '阵营',
  `EffectName` varchar(200) NOT NULL COMMENT '名称',
  `OwnTypes` int(11) NOT NULL COMMENT '所属效果(天赋+科技+Buffer)',
  `MaxGrade` int(11) NOT NULL COMMENT '最高等级',
  `PlayerGrade` int(11) NOT NULL COMMENT '领主级别',
  `PreBuildingtemplateId` varchar(50) NOT NULL COMMENT '前置建筑模板',
  `PreTemplateId` varchar(50) NOT NULL COMMENT '前置模板',
  `UseType` int(11) NOT NULL COMMENT '效果类型',
  `PropertyType1` int(11) NOT NULL COMMENT '属性一类型',
  `Property1` int(11) NOT NULL COMMENT '属性一',
  `PropertyType2` int(11) NOT NULL COMMENT '属性二类型',
  `Property2` int(11) NOT NULL COMMENT '属性二',
  `PropertyType3` int(11) NOT NULL COMMENT '属性三类型',
  `Property3` int(11) NOT NULL COMMENT '属性三',
  `Description` varchar(500) NOT NULL COMMENT '说明',
  `Icon` varchar(500) NOT NULL DEFAULT '',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='效果模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_eldership`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_eldership` (
  `TemplateId` int(11) NOT NULL COMMENT '模板ID',
  `NextId` int(11) NOT NULL COMMENT '下一层模板ID',
  `Name` varchar(20) NOT NULL COMMENT '辈分名',
  `NeedExperience` int(11) NOT NULL COMMENT '激活需要的阅历',
  `Attack` int(11) NOT NULL COMMENT '攻击(内/外)',
  `OutDefence` int(11) NOT NULL COMMENT '外功防御',
  `InDefence` int(11) NOT NULL COMMENT '内功防御',
  `ForceHit` int(11) NOT NULL COMMENT '暴击率',
  `ReCrit` int(11) NOT NULL COMMENT '抗暴击率',
  `Wreck` int(11) NOT NULL COMMENT '破击率',
  `Live` int(11) NOT NULL COMMENT '生命值',
  `Parry` int(11) NOT NULL COMMENT '抗破击率'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_equipexptemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_equipexptemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `TemplateName` varchar(200) DEFAULT NULL COMMENT '名称',
  `Types` int(11) NOT NULL COMMENT '类型',
  `Step` int(11) NOT NULL DEFAULT '0' COMMENT '品阶',
  `Condition` int(11) NOT NULL COMMENT '条件',
  `Property1` int(11) NOT NULL COMMENT '加成技能1',
  `Property2` int(11) NOT NULL COMMENT '加成技能2',
  `Property3` int(11) NOT NULL COMMENT '加成技能3',
  `Property4` int(11) DEFAULT '0' COMMENT '加成技能4',
  `Property5` int(11) DEFAULT '0' COMMENT '加成技能5',
  `Property6` int(11) DEFAULT '0' COMMENT '加成技能6',
  `NextTemplateId` int(11) NOT NULL DEFAULT '0' COMMENT '下阶装备效果模板Id',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='装备额外属性加成模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_fashiontemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_fashiontemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '编号',
  `Type` int(11) NOT NULL COMMENT '1帽子 2武器 3衣服 4翅膀 5徽章',
  `TemplateName` varchar(50) DEFAULT NULL COMMENT '名称',
  `NeedItemId` int(11) NOT NULL DEFAULT '0' COMMENT '所需物品Id',
  `NeedGrade` int(11) NOT NULL DEFAULT '0' COMMENT '所需玩家等级',
  `Profile` int(11) NOT NULL DEFAULT '0' COMMENT '品质',
  `MaxLevel` int(11) NOT NULL DEFAULT '0' COMMENT '最大星级',
  `Description` varchar(200) DEFAULT NULL COMMENT '描述',
  `Avatar` varchar(50) DEFAULT NULL COMMENT 'avatar资源路径',
  `FiveStarAvatar` varchar(50) DEFAULT '0' COMMENT '5星avatar资源路径',
  `Icon` varchar(50) DEFAULT NULL COMMENT 'Icon资源路径',
  `OutAttack` int(11) NOT NULL DEFAULT '0' COMMENT '外功攻击',
  `OutDefence` int(11) NOT NULL DEFAULT '0' COMMENT '外功防御',
  `InAttack` int(11) NOT NULL DEFAULT '0' COMMENT '内功攻击',
  `InDefence` int(11) NOT NULL DEFAULT '0' COMMENT '内功防御',
  `ForceHit` int(11) NOT NULL DEFAULT '0' COMMENT '暴击值',
  `ReCrit` int(11) NOT NULL DEFAULT '0' COMMENT '抗暴击值',
  `Wreck` int(11) NOT NULL DEFAULT '0' COMMENT '破击值',
  `Live` int(11) NOT NULL DEFAULT '0' COMMENT '生命',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '抗破击值',
  `HarmRates` int(11) NOT NULL DEFAULT '0' COMMENT '伤害率',
  `ReharmRates` int(11) NOT NULL DEFAULT '0' COMMENT '免伤率',
  `AddOutAttack` int(11) DEFAULT '0' COMMENT '5星额外增加外功攻击',
  `AddOutDefence` int(11) DEFAULT '0' COMMENT '5星额外增加外功防御',
  `AddInAttack` int(11) DEFAULT '0' COMMENT '5星额外增加内功攻击',
  `AddInDefence` int(11) DEFAULT '0' COMMENT ' 5星额外增加内功防御',
  `AddForceHit` int(11) DEFAULT '0' COMMENT '5星额外增加暴击值',
  `AddReCrit` int(11) DEFAULT '0' COMMENT '5星额外增加 抗暴击值',
  `AddWreck` int(11) DEFAULT '0' COMMENT '5星额外增加破击值',
  `AddLive` int(11) DEFAULT '0' COMMENT '5星额外增加生命',
  `AddParry` int(11) DEFAULT '0' COMMENT '5星额外增加抗破击值',
  `ShowSite` varchar(100) NOT NULL COMMENT '显示的站点,空为都不显示,All为都显示',
  `Quality` varchar(10) DEFAULT NULL COMMENT '品质',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='时装模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_fashionupgrade`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_fashionupgrade` (
  `TemplateId` int(11) NOT NULL COMMENT '编号',
  `FashionTempId` int(11) NOT NULL COMMENT '时装模板Id',
  `StarLevel` int(11) NOT NULL COMMENT '星级',
  `Material` int(11) NOT NULL COMMENT '升星所需物品',
  `NeedCount` int(11) NOT NULL COMMENT '升星所需数量',
  `Live` int(11) NOT NULL COMMENT '生命',
  `OutAttack` int(11) NOT NULL COMMENT '外功攻击',
  `InAttack` int(11) NOT NULL COMMENT '内功攻击',
  `OutDefence` int(11) NOT NULL COMMENT '外功防御',
  `InDefence` int(11) NOT NULL COMMENT '内功防御',
  `ForceHit` int(11) NOT NULL COMMENT '暴击',
  `Parry` int(11) NOT NULL COMMENT '格挡',
  `ReCrit` int(11) NOT NULL COMMENT '抗暴',
  `Wreck` int(11) NOT NULL COMMENT '破击',
  `HarmRates` int(11) NOT NULL DEFAULT '0' COMMENT '伤害率',
  `ReharmRates` int(11) NOT NULL DEFAULT '0' COMMENT '免伤率',
  PRIMARY KEY (`TemplateId`,`StarLevel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='时装升级模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_fbinvite`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_fbinvite` (
  `TemplateId` int(11) NOT NULL COMMENT '模板id',
  `InviteType` smallint(6) NOT NULL COMMENT '目标类型',
  `Description` varchar(200) NOT NULL DEFAULT '无' COMMENT '描述',
  `InviteArg` int(11) NOT NULL DEFAULT '0' COMMENT '目标参数',
  `RewardDopId` int(11) NOT NULL DEFAULT '0' COMMENT '完成目标的奖励',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FB邀请配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_fbshare`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_fbshare` (
  `TemplateId` int(11) NOT NULL COMMENT '模板id',
  `Type` tinyint(4) NOT NULL COMMENT '分享类型',
  `LimitType` tinyint(4) NOT NULL COMMENT '分享限制:1无限制，2每日一次，3终生一次',
  `Target` varchar(100) NOT NULL DEFAULT '' COMMENT '目标',
  `GameTitle` varchar(100) NOT NULL DEFAULT '' COMMENT '游戏标题',
  `OutSideTitle` varchar(100) NOT NULL DEFAULT '' COMMENT '外部标题',
  `Desc1` varchar(200) NOT NULL DEFAULT '' COMMENT '内容描述1',
  `Desc2` varchar(500) NOT NULL DEFAULT '' COMMENT '内容描述2',
  `ImageRes` varchar(200) NOT NULL DEFAULT '' COMMENT '图标资源',
  `RewardStr` varchar(200) NOT NULL DEFAULT '' COMMENT '分享奖励',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FB分享事件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_fishtemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_fishtemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模版ID',
  `TemplateName` varchar(20) DEFAULT NULL,
  `Type` tinyint(4) DEFAULT NULL COMMENT '种类',
  `Channels` varchar(10) DEFAULT NULL COMMENT '所属通道',
  `Level` int(11) DEFAULT NULL COMMENT '等级',
  `Gp` int(11) DEFAULT NULL COMMENT '奖励经验',
  `Score` int(11) DEFAULT NULL COMMENT '奖励积分',
  `Speed` int(11) DEFAULT NULL COMMENT '游动速度',
  `Length` int(11) DEFAULT NULL COMMENT '鱼长',
  `IsBlock` tinyint(4) DEFAULT NULL COMMENT '是否为障碍物',
  `Path` varchar(30) DEFAULT NULL COMMENT '资源路径',
  `RewardId` int(11) DEFAULT NULL COMMENT '奖励ID',
  `RewardCount` int(11) DEFAULT NULL COMMENT '奖励数量',
  `RageId1` int(11) DEFAULT NULL COMMENT '狂暴奖励（玩家）',
  `RageCount1` int(11) DEFAULT NULL COMMENT '狂暴数量',
  `RageId2` int(11) DEFAULT NULL COMMENT '狂暴奖励（协助者）',
  `RageCount2` int(11) DEFAULT NULL COMMENT '狂暴数量',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='钓鱼模版表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_forceladdergrade`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_forceladdergrade` (
  `LadderGrade` int(11) NOT NULL COMMENT '段位等级',
  `GradeName` varchar(20) NOT NULL COMMENT '段位名称',
  `OrderDatas1` double(18,2) NOT NULL COMMENT '第一名系数',
  `OrderDatas2` double(18,2) NOT NULL COMMENT '第二名系数',
  `OrderDatas3` double(18,2) NOT NULL COMMENT '第三名系数',
  `LadderScore` int(11) NOT NULL COMMENT '天梯积分',
  PRIMARY KEY (`LadderGrade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='蓬莱岛天梯段位表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_forcereward`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_forcereward` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `RewardType` int(11) NOT NULL COMMENT '奖励类型',
  `RewardLevel` int(11) NOT NULL COMMENT '奖励等级',
  `ForceHonor` int(11) NOT NULL COMMENT '个人荣誉',
  `ForceScore` int(11) NOT NULL COMMENT '势力积分',
  `ForceMedal` int(11) NOT NULL COMMENT '军务经验',
  `DropId` int(11) NOT NULL COMMENT '掉落ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='蓬莱岛奖励表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_forcetasktemp`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_forcetasktemp` (
  `TaskId` int(11) NOT NULL COMMENT '任务ID',
  `Groups` tinyint(4) NOT NULL COMMENT '任务组(1势力任务,2个人任务)',
  `Types` int(11) NOT NULL COMMENT '任务类型',
  `param1` int(11) NOT NULL COMMENT '任务参数1',
  `param2` int(11) NOT NULL COMMENT '任务参数2',
  `filterTeam` tinyint(4) NOT NULL COMMENT '过滤Team',
  `MaxCounts` int(11) NOT NULL COMMENT '次数上限',
  `NodePos` int(11) NOT NULL COMMENT '节点位置',
  `Title` varchar(20) NOT NULL COMMENT '任务标题',
  `Desc` varchar(50) NOT NULL COMMENT '任务描述',
  PRIMARY KEY (`TaskId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='蓬莱岛任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_gameid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_gameid` (
  `GameZoneId` int(11) NOT NULL COMMENT '游戏区ID',
  `SiteId` varchar(20) NOT NULL COMMENT '游戏区标识',
  `GameName` varchar(100) NOT NULL COMMENT '游戏区名称',
  `InsertTime` datetime NOT NULL COMMENT '记录插入时间',
  `combineTime` datetime DEFAULT NULL COMMENT '合区时间',
  `GameStatus` tinyint(4) NOT NULL COMMENT '游戏区状态（1：正常，0：合区）',
  PRIMARY KEY (`GameZoneId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='全局唯一ID服务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_gemmazehelp`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_gemmazehelp` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '标识',
  `HelpNum` int(11) NOT NULL COMMENT '消除个数',
  `Rate` int(11) NOT NULL COMMENT '概率',
  `Reward` int(32) NOT NULL COMMENT '奖励物品',
  `RewardNum` int(11) NOT NULL COMMENT '奖励物品数量',
  `Exp` int(32) NOT NULL COMMENT '奖励经验',
  `Score` int(32) NOT NULL COMMENT '奖励积分',
  `HelpReward` int(32) NOT NULL COMMENT '协助奖励物品',
  `HelpRewardNum` int(11) NOT NULL COMMENT '协助奖励物品数量',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8 COMMENT='邀请协助信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_giftactivegoods`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_giftactivegoods` (
  `ActiveId` varchar(36) NOT NULL COMMENT '活动Id',
  `Counts` int(11) NOT NULL COMMENT '数量',
  `IsBind` tinyint(1) NOT NULL COMMENT '是否绑定',
  `Jobs` int(11) NOT NULL COMMENT '职业',
  `TemplateId` int(11) NOT NULL DEFAULT '0' COMMENT '模板Id',
  `TemplateType` int(11) NOT NULL DEFAULT '1' COMMENT '模版类型 1：物品；2：星运',
  PRIMARY KEY (`ActiveId`,`TemplateId`,`TemplateType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='赠送活动奖品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_giftactiverule`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_giftactiverule` (
  `ActiveId` varchar(36) NOT NULL COMMENT '活动Id',
  `ActiveType` int(11) NOT NULL DEFAULT '0' COMMENT '活动类型',
  `ActiveName` varchar(50) NOT NULL COMMENT '活动名称',
  `ActiveRuleType` int(11) NOT NULL DEFAULT '0' COMMENT '活动规则类型',
  `Money` int(11) NOT NULL DEFAULT '0' COMMENT '金额',
  `EndMoney` int(11) DEFAULT '0' COMMENT '金额结束范围',
  `StartTime` datetime NOT NULL COMMENT '开始时间',
  `EndTime` datetime NOT NULL COMMENT '结束时间',
  PRIMARY KEY (`ActiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='赠送活动规则表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_hangupevent`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_hangupevent` (
  `TemplateId` int(11) NOT NULL COMMENT '模板ID',
  `Content` varchar(500) NOT NULL COMMENT '事件内容',
  `Option1` varchar(100) NOT NULL COMMENT '选项1',
  `Option2` varchar(100) NOT NULL COMMENT '选项2',
  `Param1` varchar(50) NOT NULL COMMENT '选项1奖励参数',
  `Param2` varchar(50) NOT NULL COMMENT '选项2奖励参数',
  `Param3` varchar(50) NOT NULL COMMENT '选项1额外奖励参数',
  `Param4` varchar(50) NOT NULL COMMENT '选项2额外奖励参数',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='挂机事件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_heroai`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_heroai` (
  `Id` int(11) NOT NULL COMMENT '序号',
  `Skills` varchar(200) DEFAULT NULL COMMENT '施放技能的列表',
  `SkillMode` int(11) NOT NULL COMMENT '1//随机施放 2//顺序施放',
  `CrazyTurn` int(11) NOT NULL COMMENT '行动回合到了会进入狂暴模式，会施放某个技能（只施放一次）\r\n            ',
  `CrazySkill` int(11) NOT NULL COMMENT '狂暴时施放的技能ID（主动技能）',
  `BottomHp` int(11) NOT NULL COMMENT '血量到了某个百分比后，会对自己施放某个BUFF类技能（只施放一次），并改变攻击模式与使用技能',
  `BottomSkill` int(11) NOT NULL COMMENT '血量达到底力血量时施放的技能ID（主动技能）\r\n            ',
  `BottomSkills` varchar(200) DEFAULT NULL COMMENT '施放底力技能之后的技能库',
  `BottomSkillMode` int(11) NOT NULL COMMENT '施放底力技能之后的技能模式\r\n            ',
  `DeadSkill` int(11) NOT NULL COMMENT '死亡但仍有队友存在时施放的技能\r\n            ',
  `AngrySkill` int(11) NOT NULL COMMENT '有队友死亡时施放的技能',
  `AwakenSkill` int(11) DEFAULT '0' COMMENT '召唤技能',
  `AwakenNum` int(11) DEFAULT '0' COMMENT '每次召唤数量',
  `Soldiers` varchar(200) DEFAULT NULL COMMENT 'Soldiers',
  `LessHp` int(11) NOT NULL DEFAULT '0' COMMENT '玩家英雄血量低于多少百分比',
  `LessHpSkill` int(11) NOT NULL DEFAULT '0' COMMENT '血量低于指定百分比时触发技能',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_herobaseproperty`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_herobaseproperty` (
  `TemplateId` int(11) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `HeroId` int(11) NOT NULL DEFAULT '0' COMMENT '侠客模板ID',
  `HeroLevel` int(11) NOT NULL DEFAULT '0' COMMENT '等级',
  `OutAttack` int(11) NOT NULL DEFAULT '0' COMMENT '外攻',
  `OutDefence` int(11) NOT NULL DEFAULT '0' COMMENT '外防',
  `InAttack` int(11) NOT NULL DEFAULT '0' COMMENT '内攻',
  `InDefence` int(11) NOT NULL DEFAULT '0' COMMENT '内防',
  `Live` int(11) NOT NULL DEFAULT '0' COMMENT '生命',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '招架',
  `ForceHit` int(11) NOT NULL DEFAULT '0' COMMENT '暴击',
  `Recrit` int(11) NOT NULL DEFAULT '0' COMMENT '抗暴击',
  `Wreck` int(11) NOT NULL DEFAULT '0' COMMENT '破击',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB AUTO_INCREMENT=3925 DEFAULT CHARSET=utf8 COMMENT='侠客基础属性';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_herocooperation`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_herocooperation` (
  `TemplateId` int(11) NOT NULL COMMENT '雄英组合模板ID',
  `Step` int(11) DEFAULT '0' COMMENT '等阶',
  `HeroId` int(11) DEFAULT NULL COMMENT '英雄ID',
  `Timing` int(11) DEFAULT NULL COMMENT '作用时机(0为永久1为角色死亡)',
  `EffectHeroId` varchar(100) DEFAULT NULL COMMENT '连带英雄ID',
  `Direction` int(11) DEFAULT NULL COMMENT '作用方向(1敌方2己方)',
  `SkillBufferId` varchar(100) DEFAULT '' COMMENT '技能BufferID',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_herostep`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_herostep` (
  `TemplateId` int(11) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `HeroId` int(11) NOT NULL DEFAULT '0' COMMENT '侠客模板ID',
  `Step` int(11) NOT NULL DEFAULT '0' COMMENT '阶',
  `OutAttack` int(11) NOT NULL DEFAULT '0' COMMENT '外攻',
  `OutDefence` int(11) NOT NULL DEFAULT '0' COMMENT '外防',
  `InAttack` int(11) NOT NULL DEFAULT '0' COMMENT '内攻',
  `InDefence` int(11) NOT NULL DEFAULT '0' COMMENT '内防',
  `Live` int(11) NOT NULL DEFAULT '0' COMMENT '生命',
  `AppellShowParam` varchar(100) DEFAULT NULL COMMENT '展示参数',
  `ForceHit` int(11) DEFAULT '0' COMMENT '暴击',
  `Parry` int(11) DEFAULT '0' COMMENT '招架',
  `Recrit` int(11) DEFAULT '0' COMMENT '抗暴',
  `Wreck` int(11) DEFAULT '0' COMMENT '破击',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB AUTO_INCREMENT=584 DEFAULT CHARSET=utf8 COMMENT='侠客进阶增加属性表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_herotemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_herotemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '英雄ID',
  `TemplateName` varchar(500) NOT NULL COMMENT '英雄名',
  `Sexs` tinyint(1) NOT NULL COMMENT '性别',
  `Icon` varchar(500) DEFAULT NULL COMMENT '图标',
  `HeroType` int(11) NOT NULL COMMENT '类型',
  `Job` int(11) NOT NULL COMMENT '英雄职业',
  `Power` int(11) NOT NULL COMMENT '基础力量',
  `Agility` int(11) NOT NULL COMMENT '基础敏捷',
  `Intellect` int(11) NOT NULL COMMENT '基础智力',
  `Captain` int(11) NOT NULL COMMENT '基础统帅',
  `Physique` int(11) NOT NULL COMMENT '基础体质',
  `Attack` int(11) NOT NULL COMMENT '物理攻击',
  `Defence` int(11) NOT NULL COMMENT '物理防御',
  `MagicAttack` int(11) NOT NULL COMMENT '魔法攻击',
  `MagicDefence` int(11) NOT NULL COMMENT '魔法防御',
  `Live` int(11) NOT NULL COMMENT '生命',
  `CampaignResId` int(11) NOT NULL COMMENT '副本资源ID，关联侠客在副本中的显示',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '格挡',
  `ForceHit` int(11) NOT NULL COMMENT '暴击值',
  `ReCrit` int(11) NOT NULL COMMENT '抗暴击值',
  `Wreck` int(11) NOT NULL COMMENT '破击值',
  `HarmRates` int(11) NOT NULL COMMENT '伤害率',
  `ReharmRates` int(11) NOT NULL COMMENT '免伤率',
  `DefaultSkill` int(11) NOT NULL COMMENT '默认技能',
  `Grades` int(11) NOT NULL COMMENT '英雄默认等级',
  `AI` int(11) NOT NULL COMMENT 'AI配置',
  `ResPath` varchar(50) NOT NULL COMMENT '资源路径',
  `SkillScript` varchar(200) DEFAULT NULL COMMENT '携带技能',
  `ArmPath` varchar(50) DEFAULT NULL COMMENT '武器avater',
  `ClothPath` varchar(50) DEFAULT NULL COMMENT '衣服avater',
  `CloakPath` varchar(50) DEFAULT NULL COMMENT '披风cloak',
  `HairPath` varchar(50) DEFAULT NULL COMMENT '头发hair',
  `RejectType` varchar(50) DEFAULT NULL COMMENT '免役Buffer类型',
  `AddName` varchar(50) DEFAULT NULL COMMENT 'BOSS附加名字',
  `Quality` smallint(4) DEFAULT '0' COMMENT '侠客品质',
  `Floors` smallint(4) DEFAULT '0' COMMENT '所属楼层',
  `NeedGrades` int(11) DEFAULT '0' COMMENT '招募所需等级',
  `NeedSoul` int(11) DEFAULT '0' COMMENT '招募所需武魂',
  `NeedFame` int(11) DEFAULT '0' COMMENT '招募所需声望',
  `NeedItem` int(11) DEFAULT '0' COMMENT '所需材料物品id',
  `NeedItemCount` int(11) DEFAULT '0' COMMENT '所需物品数量',
  `AttackAptitude` int(11) DEFAULT '0' COMMENT '攻击资质',
  `LiveAptitude` int(11) DEFAULT '0' COMMENT '生命资质',
  `OutDefAptitude` int(11) DEFAULT '0' COMMENT '功外防御资质',
  `InDefAptitude` int(11) DEFAULT '0' COMMENT '内功防御资质',
  `Description1` varchar(200) DEFAULT NULL COMMENT '描述1',
  `Description2` varchar(200) DEFAULT NULL COMMENT '描述2',
  `SacredTempID` int(11) DEFAULT '0' COMMENT '上阵的神兽id',
  `DungeonHeroType` int(11) DEFAULT NULL COMMENT '珍珑棋局怪的id',
  `HomeId` smallint(11) DEFAULT '0' COMMENT '侠客家乡ID',
  `ActiveDropId` int(11) DEFAULT '0' COMMENT '激活奖励ID',
  `MaxFavor` int(11) DEFAULT '0' COMMENT '招募好感度',
  `TaskIds` varchar(200) DEFAULT NULL COMMENT '关联任务ID列表',
  `DescInfo` varchar(300) DEFAULT NULL COMMENT '描述',
  `IsOwn` tinyint(4) DEFAULT '0' COMMENT '是否激活',
  `OutPutSource` tinyint(4) DEFAULT NULL COMMENT '侠客出处',
  `IsActivation` int(11) DEFAULT '1' COMMENT '1：激活，0：未激活'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_horcrux`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_horcrux` (
  `TemplateId` int(11) NOT NULL COMMENT '魂器模版ID',
  `TemplateName` varchar(50) NOT NULL COMMENT '魂器名称',
  `SonType` tinyint(4) NOT NULL COMMENT '子类型',
  `Grades` tinyint(4) NOT NULL COMMENT '魂器阶数',
  `Detail` varchar(200) NOT NULL COMMENT '魂器描述',
  `NeedItem` int(11) NOT NULL COMMENT '激活所需物品ID',
  `FeedItemCount` int(11) NOT NULL COMMENT '升级所需材料数量',
  `Source` varchar(50) NOT NULL COMMENT '魂器来源',
  `Pic` varchar(50) NOT NULL COMMENT '资源路径',
  `SkillId` int(11) NOT NULL COMMENT '魂器携带技能ID',
  `OutAttack` int(11) NOT NULL DEFAULT '0' COMMENT '外功攻击',
  `OutDefence` int(11) NOT NULL DEFAULT '0' COMMENT '外功防御',
  `InAttack` int(11) NOT NULL DEFAULT '0' COMMENT '内功攻击',
  `InDefence` int(11) NOT NULL DEFAULT '0' COMMENT '内功防御',
  `ForceHit` int(11) NOT NULL DEFAULT '0' COMMENT '暴击值',
  `ReCrit` int(11) NOT NULL DEFAULT '0' COMMENT '抗暴击值',
  `Wreck` int(11) NOT NULL DEFAULT '0' COMMENT '破击值',
  `Live` int(11) NOT NULL DEFAULT '0' COMMENT '生命',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '抗破击值',
  `FrontBlessGP` int(11) NOT NULL DEFAULT '10' COMMENT '前置祝福值',
  `LastBlessGP` int(11) NOT NULL DEFAULT '50' COMMENT '后置祝福值',
  `Probability` int(11) NOT NULL DEFAULT '50' COMMENT '前置祝福值与后置祝福值之间进阶成功的概率',
  `MaxBlessGP` int(11) NOT NULL DEFAULT '100' COMMENT '最大值祝值',
  `SourceTips` varchar(200) DEFAULT NULL COMMENT '魂器来源描述',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='魂器模版';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_horcrux_jade`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_horcrux_jade` (
  `TemplateId` int(11) NOT NULL DEFAULT '0' COMMENT '魂玉模板id',
  `TemplateName` varchar(50) DEFAULT NULL COMMENT '魂玉名称',
  `MasterType` tinyint(11) NOT NULL COMMENT '魂玉主类型(1为普通2为金刚3为修罗4为妙法5为济世)',
  `SonType` tinyint(4) NOT NULL COMMENT '魂玉子类型(1为天魂2为地魂3为玄魂4为黄魂)',
  `Step` tinyint(4) NOT NULL DEFAULT '0' COMMENT '等阶',
  `MinValue` int(11) NOT NULL DEFAULT '0' COMMENT '最小属性值',
  `MaxValue` int(11) NOT NULL DEFAULT '0' COMMENT '最大属性值',
  `AddValue` int(11) NOT NULL DEFAULT '0' COMMENT '增加属性值',
  `ResolveItem` int(11) NOT NULL COMMENT '分解获得道具',
  `ResolveValue` int(11) NOT NULL DEFAULT '0' COMMENT '分解获得道具数量',
  `UpgradeValue` int(11) NOT NULL DEFAULT '0' COMMENT '升级消耗道具数量',
  `Icon` varchar(50) DEFAULT NULL COMMENT '魂玉icon',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='魂玉模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_investreward`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_investreward` (
  `InvestType` int(1) NOT NULL DEFAULT '1' COMMENT '投资类型，1：周卡，2：月卡',
  `DayIndex` int(11) NOT NULL DEFAULT '0' COMMENT '第几天',
  `RewardItem1` int(11) NOT NULL DEFAULT '0' COMMENT '奖励物品id1',
  `ItemCount1` int(11) NOT NULL DEFAULT '0' COMMENT '奖励物品数量',
  `RewardItem2` int(11) NOT NULL DEFAULT '0' COMMENT '奖励物品id2',
  `ItemCount2` int(11) NOT NULL DEFAULT '0' COMMENT '奖励物品数量',
  `RewardItem3` int(11) NOT NULL DEFAULT '0' COMMENT '奖励物品id3',
  `ItemCount3` int(11) NOT NULL DEFAULT '0' COMMENT '奖励物品数量',
  `RewardItem4` int(11) DEFAULT '0' COMMENT '奖励物品id4',
  `ItemCount4` int(11) DEFAULT '0' COMMENT '奖励物品数量',
  `RewardItem5` int(11) DEFAULT '0' COMMENT '奖励物品id5',
  `ItemCount5` int(11) DEFAULT '0' COMMENT '奖励物品数量',
  PRIMARY KEY (`InvestType`,`DayIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='天龙钱庄投资返利表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_ip`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_ip` (
  `BeginIp` bigint(20) unsigned NOT NULL COMMENT '起始ip',
  `EndIp` bigint(20) unsigned NOT NULL COMMENT '结束ip',
  `Address` varchar(500) DEFAULT NULL COMMENT '所属地址',
  `Way` varchar(50) DEFAULT NULL COMMENT '来源方式'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='IP信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_itemtemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_itemtemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `MasterType` int(11) NOT NULL COMMENT '主类',
  `SonType` int(11) NOT NULL COMMENT '子类',
  `Step` int(11) NOT NULL DEFAULT '0' COMMENT '阶',
  `Sexs` int(11) NOT NULL COMMENT '性别',
  `NeedGrades` int(11) NOT NULL DEFAULT '0' COMMENT '所需最小等级',
  `MaxCount` int(11) NOT NULL COMMENT '最大叠加数',
  `TemplateName` varchar(200) NOT NULL COMMENT '物品名称',
  `Job` varchar(20) NOT NULL DEFAULT '0' COMMENT '职业',
  `Power` int(11) NOT NULL COMMENT '力量',
  `Agility` int(11) NOT NULL COMMENT '敏捷',
  `Intellect` int(11) NOT NULL COMMENT '智力',
  `Physique` int(11) NOT NULL COMMENT '体质',
  `Captain` int(11) NOT NULL COMMENT '统帅',
  `Attack` int(11) NOT NULL COMMENT '物理攻击',
  `Defence` int(11) NOT NULL COMMENT '物理防御',
  `MagicAttack` int(11) NOT NULL COMMENT '魔法攻击',
  `MagicDefence` int(11) NOT NULL COMMENT '魔法防御',
  `ForceHit` int(11) NOT NULL COMMENT '暴击值',
  `ReCrit` int(11) NOT NULL COMMENT '抗暴击值',
  `Wreck` int(11) NOT NULL COMMENT '破击值',
  `HarmRates` int(11) NOT NULL COMMENT '伤害率',
  `ReharmRates` int(11) NOT NULL COMMENT '免伤率',
  `Live` int(11) NOT NULL COMMENT '生命',
  `Conat` int(11) NOT NULL COMMENT '带兵上限',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '格挡',
  `Refresh` int(11) NOT NULL DEFAULT '0' COMMENT '洗练所需物品',
  `RefreshCount` int(11) DEFAULT '0' COMMENT '所需洗炼数量',
  `Property1` int(11) NOT NULL DEFAULT '0' COMMENT '属性一',
  `Property2` int(11) NOT NULL DEFAULT '0' COMMENT '属性二',
  `Property3` int(11) NOT NULL DEFAULT '0' COMMENT '属性三',
  `Property4` int(11) NOT NULL DEFAULT '0' COMMENT '属性四',
  `Property5` int(11) NOT NULL DEFAULT '0' COMMENT '属性五',
  `Property6` int(11) NOT NULL DEFAULT '0' COMMENT '属性六',
  `Property7` varchar(100) DEFAULT NULL COMMENT '属性七',
  `Icon` varchar(200) DEFAULT NULL COMMENT '资源路径',
  `Description` varchar(500) DEFAULT NULL COMMENT '物品描述',
  `OutPutSource` varchar(200) DEFAULT NULL COMMENT '产出',
  `Profile` int(11) NOT NULL COMMENT '物品品质',
  `SellGold` int(11) NOT NULL COMMENT '出售黄金价格',
  `DefaultSkill` varchar(200) NOT NULL COMMENT '默认技能',
  `Avata` varchar(200) DEFAULT NULL COMMENT '形象',
  `StrengthenMax` int(11) NOT NULL COMMENT '强化等级上限',
  `RandomSkillCount` int(11) NOT NULL DEFAULT '0' COMMENT '随机技能数量',
  `SuiteId` int(11) NOT NULL DEFAULT '0' COMMENT '所属套装',
  `StartingPrice` int(11) NOT NULL DEFAULT '0' COMMENT '起拍价格',
  `TransformId` int(11) NOT NULL DEFAULT '0' COMMENT '物品转换模板ID',
  `CHName` varchar(255) NOT NULL DEFAULT '' COMMENT '中文备注',
  `IsCanBatch` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可批量使用，0:不可以，1：可以',
  `Controlled` tinyint(1) DEFAULT NULL COMMENT '是否允许中控配置掉落 1 允许  0 不允许',
  `Sort` int(11) NOT NULL DEFAULT '0' COMMENT '背包排序字段',
  `DeciAnti` int(11) DEFAULT '0' COMMENT '减抗性',
  `AntiWater` int(11) DEFAULT '0' COMMENT '水抗性',
  `AntiFire` int(11) DEFAULT '0' COMMENT '火抗性',
  `AntiWood` int(11) DEFAULT '0' COMMENT '木抗性',
  `AntiLight` int(11) DEFAULT '0' COMMENT '光抗性',
  `AntiDark` int(11) DEFAULT '0' COMMENT '暗抗性',
  `AntiAttack` int(11) DEFAULT '0' COMMENT '神兽攻击',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_job`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_job` (
  `JobName` varchar(200) NOT NULL COMMENT '作业名',
  `IntervalUnit` int(11) DEFAULT NULL COMMENT '单位',
  `IntervalData` int(11) DEFAULT NULL COMMENT '间隔时长',
  `IntervalBegin` int(11) DEFAULT NULL COMMENT '指定几点开始',
  `UpdateTime` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  `Desc` varchar(200) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`JobName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统作业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_kingcontract`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_kingcontract` (
  `Id` int(11) NOT NULL COMMENT '契约ID',
  `Name` varchar(30) NOT NULL COMMENT '契约名',
  `Description` varchar(255) NOT NULL COMMENT '契约描述',
  `Duration` int(11) NOT NULL COMMENT '契约有效时间',
  `NeedPoint` int(11) NOT NULL COMMENT '购买所需钻石',
  `CanAdd` tinyint(4) NOT NULL COMMENT '效果是否可以叠加(1为可叠加)',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='霸王契约表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_kingtowerboss`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_kingtowerboss` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `OrderId` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力排名',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `NickName` varchar(50) NOT NULL COMMENT '用户昵称',
  `Grades` smallint(6) NOT NULL DEFAULT '0' COMMENT '等级',
  `Job` smallint(6) NOT NULL DEFAULT '0' COMMENT '英雄职业',
  `FightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力',
  `TotalPhyAttack` int(11) DEFAULT NULL COMMENT '物理攻击',
  `TotalPhyDefence` int(11) DEFAULT NULL COMMENT '物理防御',
  `TotalMagicAttack` int(11) DEFAULT NULL COMMENT '魔法攻击',
  `TotalMagicDefence` int(11) DEFAULT NULL COMMENT '魔法防御',
  `TotalForceHit` int(11) DEFAULT NULL COMMENT '暴击值',
  `TotalConatArmy` int(11) DEFAULT NULL COMMENT '带兵上限',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '格档',
  `Live` int(11) DEFAULT NULL COMMENT '生命',
  `HideFashion` tinyint(1) DEFAULT '0' COMMENT '隐藏时装（1隐藏0显示）',
  `ItemTemplateId` varchar(200) DEFAULT NULL COMMENT '物品模板编号列表',
  `ItemPos` varchar(200) DEFAULT NULL COMMENT '物品位置列表',
  `ItemBagType` varchar(50) DEFAULT NULL COMMENT '物品背包类型列表',
  `SuiteSkill` varchar(100) DEFAULT NULL COMMENT '套装技能列表',
  `Avata` varchar(1500) DEFAULT NULL COMMENT '形象列表',
  `StarTemplateId` varchar(50) DEFAULT NULL COMMENT '星运ID列表',
  `StarGrade` varchar(50) DEFAULT NULL COMMENT '星运等级列表',
  `StarDefaultSkill` varchar(200) DEFAULT NULL COMMENT '星运技能列表',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=698 DEFAULT CHARSET=utf8 COMMENT='王者之塔BOSS模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_knight_battle`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_knight_battle` (
  `TemplateId` int(11) NOT NULL COMMENT '战役id',
  `BattleName` varchar(50) NOT NULL COMMENT '战役名',
  `Page` int(11) NOT NULL COMMENT '章节id',
  `PageName` varchar(50) NOT NULL COMMENT '章节名',
  `ReinforceNum` int(11) NOT NULL COMMENT '增援数量',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客闯关-战役配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_knight_card`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_knight_card` (
  `TemplateId` int(11) NOT NULL COMMENT '关卡id',
  `BattleId` int(11) NOT NULL COMMENT '战役id',
  `CardName` varchar(50) NOT NULL COMMENT '关卡名',
  `Description` varchar(100) NOT NULL COMMENT '关卡描述',
  `Award` varchar(100) NOT NULL COMMENT '关卡奖励，格式：道具id,数量|道具id,数量|道具id,数量',
  `MainKnightJob` varchar(50) NOT NULL COMMENT '主将职业（1-修罗 2-金刚 3-妙法 4-济世）,格式：1,2,3,4',
  `MainKnightSeat` int(11) NOT NULL COMMENT '主将位置 从0开始',
  `SkillId` int(11) NOT NULL COMMENT '技能id（主将增加的buff对应的技能)',
  `ArmyTempIds` varchar(100) NOT NULL COMMENT '战斗部队id列表',
  `fightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '推荐战斗力',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='''侠客闯关-关卡配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_knight_poten_consume`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_knight_poten_consume` (
  `Grade` int(11) NOT NULL COMMENT '培养等级',
  `Consume` varchar(50) NOT NULL COMMENT '消耗材料，格式：材料id,材料数量｜材料id,材料数量',
  PRIMARY KEY (`Grade`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客养成系统-升级材料消耗';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_knight_poten_skill`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_knight_poten_skill` (
  `TemplateId` int(11) NOT NULL COMMENT '主键id',
  `KnightId` int(11) NOT NULL COMMENT '侠客Id',
  `Type` int(11) NOT NULL COMMENT '类型 1-血脉 2-斩佛 3-降魔 4-灭谛 5-外道 6-无相',
  `SkillSonType` int(11) NOT NULL COMMENT '技能类型',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客养成系统-不同侠客潜能对应技能表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_knight_promote`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_knight_promote` (
  `TemplateId` int(11) NOT NULL COMMENT '晋升id',
  `Job` int(11) NOT NULL COMMENT '职业',
  `Page` int(11) NOT NULL COMMENT '页数(从1开始)',
  `Consume` varchar(50) NOT NULL COMMENT '道具消耗，格式:道具id,数量｜道具id,数量',
  `NeedKnightGrades` int(11) NOT NULL COMMENT '需要侠客的进阶等级',
  `MainPropertyType` int(11) NOT NULL DEFAULT '0' COMMENT '主属性类型',
  `MainPropertyValue` int(11) NOT NULL COMMENT '主属性值',
  `PropertyType` int(11) NOT NULL DEFAULT '0' COMMENT '属性类型',
  `PropertyValue` int(11) NOT NULL COMMENT '属性值',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_knightcompose`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_knightcompose` (
  `TemplateId` int(11) NOT NULL DEFAULT '0' COMMENT '组合模板Id',
  `ComposeType` tinyint(4) DEFAULT '0' COMMENT '组合类型（0显示豪侠录1不显示豪侠录）',
  `OwnKnight` int(11) DEFAULT '0' COMMENT '侠客组合技能拥有侠客',
  `TemplateName` varchar(50) NOT NULL DEFAULT '' COMMENT '组合名称',
  `Icon` varchar(50) NOT NULL DEFAULT '' COMMENT '名称图标路径',
  `KnightSet` varchar(100) NOT NULL DEFAULT '' COMMENT '侠客组合模板Id字符串',
  `OpenGrade` int(11) NOT NULL DEFAULT '0' COMMENT '开启等级',
  `OutAttack` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄外攻',
  `OutDefence` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄外防',
  `InAttack` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄内攻',
  `InDefence` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄内防',
  `Live` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄生命',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄招架',
  `ForceHit` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄暴击',
  `Recrit` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄抗暴击',
  `Wreck` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄破击',
  `Property1` int(11) NOT NULL DEFAULT '0' COMMENT '功能参数1',
  `ComposeSkill` int(11) DEFAULT NULL COMMENT '侠客组合技能',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客组合表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_knighthunttab`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_knighthunttab` (
  `TemplateId` int(11) NOT NULL COMMENT '模板ID',
  `TemplateName` varchar(20) NOT NULL COMMENT '模板名称',
  `NeedGrade` int(11) NOT NULL DEFAULT '0' COMMENT '开启所需等级',
  `HuntExpend` varchar(30) NOT NULL COMMENT '追捕消耗(格式:TempId1,Count1|TempId2,Count2)',
  `SpecialHuntExpend` varchar(30) NOT NULL COMMENT '千里追凶消耗(格式:TempId1,Count1|TempId2,Count2)',
  `RewardTemp1` int(11) NOT NULL COMMENT '产出模板ID1',
  `RewardTemp2` int(11) NOT NULL COMMENT '产出模板ID2',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客行页签表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_knighthunttemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_knighthunttemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板ID',
  `TemplateName` varchar(20) NOT NULL COMMENT '模板名称',
  `TabId` int(11) NOT NULL COMMENT '所属页签ID',
  `Quality` int(11) NOT NULL COMMENT '品质',
  `Random` int(11) NOT NULL COMMENT '追捕概率',
  `RewardTempId` varchar(20) NOT NULL COMMENT '奖励模板ID',
  `RewardCount` varchar(20) NOT NULL COMMENT '奖励数量(随机多种数量用逗号隔开)',
  `PicPath` varchar(100) DEFAULT NULL COMMENT '资源路径',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客行目标卡模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_knightpotential`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_knightpotential` (
  `Id` int(11) NOT NULL DEFAULT '0' COMMENT '编号ID',
  `Type` int(11) NOT NULL DEFAULT '0' COMMENT '属性类型',
  `Level` int(11) NOT NULL DEFAULT '0' COMMENT '境界阶数',
  `Count` int(11) NOT NULL DEFAULT '0' COMMENT '属性等级数',
  `Data` int(11) NOT NULL DEFAULT '0' COMMENT '属性系数',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客境界模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_knightrecruitcondition`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_knightrecruitcondition` (
  `id` int(11) NOT NULL COMMENT '条件ID',
  `heroId` int(11) NOT NULL COMMENT '侠客ID',
  `type` int(4) NOT NULL COMMENT '条件类型（1：物品收集，2：侠客解锁，3：主角等级，4：消耗货币，5：副本关卡）',
  `para1` varchar(200) DEFAULT NULL COMMENT '参数1',
  `para2` varchar(200) DEFAULT NULL COMMENT '参数2',
  `para3` varchar(200) DEFAULT NULL COMMENT '参数3',
  `para4` varchar(200) DEFAULT NULL COMMENT '参数4',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奇侠志条件模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_knightupgrade`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_knightupgrade` (
  `TemplateId` int(11) NOT NULL COMMENT '模板id',
  `NeedGp` int(11) NOT NULL COMMENT '所需经验值',
  `Level` smallint(6) NOT NULL COMMENT '侠客等级',
  `SingleNeedValue` int(11) NOT NULL COMMENT '单次操作所需材料数量',
  `SingleAddValue` int(11) NOT NULL COMMENT '单次操作增加经验值',
  `CritRand` varchar(50) NOT NULL COMMENT '暴击倍率',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客升级表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_knightwushustate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_knightwushustate` (
  `TemplateId` int(11) NOT NULL COMMENT '武术境界编号Id',
  `KnightTempId` int(11) NOT NULL COMMENT '侠客ID',
  `Grades` int(11) NOT NULL COMMENT '武境等级',
  `RandomNum` int(11) NOT NULL COMMENT '武境修炼成功概率',
  `Property1` int(11) NOT NULL COMMENT '武境加成属性1(攻击属性)',
  `NeedMaterial1` varchar(50) NOT NULL COMMENT '属性1所需材料',
  `Property2` int(11) NOT NULL COMMENT '武境加成属性2(防御属性)',
  `NeedMaterial2` varchar(50) NOT NULL COMMENT '属性2所需材料',
  `Property3` int(11) NOT NULL COMMENT '武境加成属性3(生命属性)',
  `NeedMaterial3` varchar(50) NOT NULL COMMENT '属性3所需材料',
  `BreakNeedMaterial` varchar(50) NOT NULL COMMENT '突破所需材料',
  `SkillScripts` varchar(50) NOT NULL COMMENT '武境技能',
  `BreakConf` varchar(50) NOT NULL COMMENT '突破配置',
  `BlessConf` varchar(50) NOT NULL COMMENT '祝福配置',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客武境配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_leedtemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_leedtemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板Id',
  `Title` varchar(200) DEFAULT NULL COMMENT '名称',
  `PassCount` int(11) DEFAULT NULL COMMENT '次数',
  `Num` int(11) DEFAULT NULL COMMENT '分数',
  `sort` tinyint(4) NOT NULL DEFAULT '0' COMMENT '排序',
  `CountLimit` int(11) NOT NULL DEFAULT '9999' COMMENT '完成次数限制',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='每日引导模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_maindiscount`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_maindiscount` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `ActiveId` varchar(36) NOT NULL COMMENT '活动编号',
  `Site` int(11) DEFAULT NULL COMMENT '位置',
  `ShopId` int(11) NOT NULL COMMENT '商城id',
  `TemplateId` int(11) NOT NULL COMMENT '物品模板id',
  `Counts` int(11) NOT NULL COMMENT '数量',
  `ShopId1` int(11) NOT NULL COMMENT '商城id',
  `TemplateId1` int(11) NOT NULL COMMENT '物品模板id',
  `Count1` int(11) NOT NULL COMMENT '数量',
  `ShopId2` int(11) NOT NULL COMMENT '商城id',
  `TemplateId2` int(11) NOT NULL COMMENT '物品模板id',
  `Count2` int(11) NOT NULL COMMENT '数量',
  `ShopId3` int(11) NOT NULL COMMENT '商城id',
  `TemplateId3` int(11) NOT NULL COMMENT '物品模板id',
  `Count3` int(11) NOT NULL COMMENT '数量',
  `ShopId4` int(11) NOT NULL COMMENT '商城id',
  `TemplateId4` int(11) NOT NULL COMMENT '物品模板id',
  `Count4` int(11) NOT NULL COMMENT '数量',
  `ShopId5` int(11) NOT NULL COMMENT '商城id',
  `TemplateId5` int(11) NOT NULL COMMENT '物品模板id',
  `Count5` int(11) NOT NULL COMMENT '数量',
  `ShopId6` int(11) NOT NULL COMMENT '商城id',
  `TemplateId6` int(11) NOT NULL COMMENT '物品模板id',
  `Count6` int(11) NOT NULL COMMENT '数量',
  `ShopId7` int(11) NOT NULL COMMENT '商城id',
  `TemplateId7` int(11) NOT NULL COMMENT '物品模板id',
  `Count7` int(11) NOT NULL COMMENT '数量',
  `ShopId8` int(11) NOT NULL COMMENT '商城id',
  `TemplateId8` int(11) NOT NULL COMMENT '物品模板id',
  `Count8` int(11) NOT NULL COMMENT '数量',
  `OneDayCount` int(11) DEFAULT NULL COMMENT '一天限购数量/人',
  `MaxCount` int(11) DEFAULT NULL COMMENT '限量',
  `CurrentCount` int(11) DEFAULT NULL COMMENT '当前数量',
  `MaxCurrentDate` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '当前限量日期',
  `IsGift` tinyint(1) DEFAULT '0' COMMENT '是否礼包',
  `Url` varchar(200) DEFAULT ' ' COMMENT '图片地址',
  `Names` varchar(200) DEFAULT ' ' COMMENT '名称',
  `SortId` int(11) NOT NULL COMMENT '排序',
  `Discount` int(11) NOT NULL COMMENT '折扣',
  `BeginDate` datetime NOT NULL COMMENT '开始时间',
  `EndDate` datetime NOT NULL COMMENT '结束时间',
  `CustomPrice` int(11) NOT NULL DEFAULT '0' COMMENT '礼包自定义价格',
  `CostPrice` int(11) DEFAULT NULL COMMENT '售价',
  `DiscountType` int(11) DEFAULT NULL COMMENT '打折类型（1为打折商城2为1元宝商城）',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8 COMMENT='商城折扣表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_maingood`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_maingood` (
  `Id` int(11) NOT NULL COMMENT '序号',
  `ActiveId` varchar(36) NOT NULL COMMENT '活动编号',
  `ShopId` int(11) NOT NULL COMMENT '商品ID',
  `TemplateId` int(11) NOT NULL COMMENT '物品模板Id',
  `SortId` int(11) NOT NULL COMMENT '排序',
  `Types` int(11) NOT NULL COMMENT '类型',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商城产品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_mainpurl`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_mainpurl` (
  `Id` int(11) NOT NULL COMMENT '序号',
  `ActiveId` varchar(36) NOT NULL COMMENT '活动编号',
  `Url` varchar(200) NOT NULL COMMENT '图片地址',
  `Site` int(11) NOT NULL COMMENT '索引位置',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_map`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_map` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模板编号',
  `CampaignId` int(11) NOT NULL COMMENT '副本ID',
  `MapName` varchar(200) DEFAULT NULL COMMENT '地图名称',
  `Types` int(11) DEFAULT NULL COMMENT '类型',
  `MinLevel` int(11) NOT NULL COMMENT '用户最小等级',
  `MaxLevel` int(11) NOT NULL COMMENT '用户最大等级',
  `Width` int(11) DEFAULT NULL COMMENT '宽',
  `Height` int(11) DEFAULT NULL COMMENT '高',
  `MapFileId` int(11) DEFAULT NULL,
  `AI` varchar(2000) DEFAULT NULL,
  `WildLandCount` varchar(200) DEFAULT NULL COMMENT '资源类部队数量',
  `BattleGround` int(11) DEFAULT NULL COMMENT '战斗地图',
  `BattleGround2` int(11) DEFAULT NULL COMMENT '战斗场景2-切换战斗场景',
  `MusicPath` varchar(200) DEFAULT NULL COMMENT '音乐路径',
  `Description` varchar(200) DEFAULT NULL COMMENT '说明',
  `BornPoints` varchar(200) DEFAULT NULL COMMENT '出生点',
  `Index` int(11) DEFAULT NULL COMMENT '小地图索引位置',
  `SmallMapIcon` int(11) DEFAULT NULL COMMENT '小地图样式',
  `Param1` varchar(200) DEFAULT NULL COMMENT '参数一',
  `Param2` varchar(200) DEFAULT NULL COMMENT '参数二',
  `MapEffect` int(11) NOT NULL DEFAULT '0' COMMENT '特效',
  `CrossAi` varchar(2000) DEFAULT NULL COMMENT '跨服ai',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=10003 DEFAULT CHARSET=utf8 COMMENT='地图模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_mapnode`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_mapnode` (
  `TemplateId` int(11) NOT NULL COMMENT '点节模板Id',
  `Types` int(11) DEFAULT NULL COMMENT '节点类型',
  `NodeName` varchar(200) DEFAULT NULL COMMENT '节点名称',
  `PlayerGrade` int(11) DEFAULT NULL COMMENT '进入等级',
  `Icon` varchar(200) CHARACTER SET latin1 DEFAULT NULL COMMENT '图片路径',
  `PicPath` varchar(200) CHARACTER SET latin1 DEFAULT NULL COMMENT '图片路径',
  `PosX` int(11) NOT NULL COMMENT 'X坐标',
  `PosY` int(11) NOT NULL COMMENT 'Y坐标',
  `TitleX` int(11) DEFAULT NULL COMMENT '字名X坐标',
  `TitleY` int(11) DEFAULT NULL COMMENT '字名Y坐标',
  `Param1` int(11) DEFAULT NULL COMMENT '功能字段（1进入场景、2待定）',
  `Param2` int(11) DEFAULT NULL COMMENT '场景地图Id',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='大地图节点模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_mapphysicstemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_mapphysicstemplate` (
  `TemplateId` int(11) NOT NULL AUTO_INCREMENT COMMENT '模板编号',
  `MapPhysicsTempName` varchar(200) NOT NULL COMMENT '野地名称',
  `MasterType` int(11) NOT NULL COMMENT '主类',
  `SonType` int(11) NOT NULL COMMENT '子类',
  `Grades` int(11) NOT NULL COMMENT '等级',
  `RefreshTime` int(11) NOT NULL COMMENT '刷新时间',
  `Heros` varchar(200) DEFAULT NULL COMMENT '英雄模板',
  `Soldiers` varchar(200) DEFAULT NULL COMMENT '兵种',
  `Property1` int(11) NOT NULL COMMENT '属性一',
  `Property2` int(11) NOT NULL COMMENT '属性二',
  `Property3` int(11) NOT NULL COMMENT '属性三',
  `Property4` int(11) NOT NULL COMMENT '属性四',
  `Property5` int(11) NOT NULL COMMENT '属性五',
  `Property6` int(11) NOT NULL COMMENT '属性六',
  `Description` varchar(500) DEFAULT NULL COMMENT '说明',
  `HeroGP` int(11) NOT NULL COMMENT '英雄获得经验',
  `BattleType` int(11) NOT NULL COMMENT '战役类型',
  `Random` int(11) DEFAULT '0' COMMENT '宝箱掉落概率',
  `DropBoxId` int(11) DEFAULT '0' COMMENT '宝箱掉落ID',
  `Param1` varchar(30) DEFAULT NULL COMMENT '马贼产出系数',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB AUTO_INCREMENT=210504 DEFAULT CHARSET=utf8 COMMENT='野矿模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_maproute`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_maproute` (
  `MapId` int(11) NOT NULL COMMENT '地图编号',
  `StartPos` varchar(20) NOT NULL COMMENT '起始点',
  `NextPos` varchar(20) NOT NULL COMMENT '下一点',
  `Distance` int(11) NOT NULL COMMENT '距离'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地图路径';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_mountstar`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_mountstar` (
  `Id` int(11) NOT NULL,
  `TemplateId` int(11) NOT NULL COMMENT '坐骑升星模板id',
  `Star` int(11) NOT NULL COMMENT '坐骑星级',
  `LestLucky` int(11) NOT NULL COMMENT '前置幸运值',
  `LastLucky` int(11) NOT NULL COMMENT '后置祝福值',
  `MaxLucky` int(11) NOT NULL COMMENT '最大幸运值',
  `AddLucky` int(11) NOT NULL COMMENT '每次培养增加的幸运值',
  `SuccessPercent` int(11) NOT NULL COMMENT '成功概率（xx/100）',
  `ItemNum` int(11) NOT NULL COMMENT '每次升星的消耗',
  `Power` int(11) NOT NULL COMMENT '攻击',
  `Intellect` int(11) NOT NULL COMMENT '外防',
  `Physique` int(11) NOT NULL COMMENT '气血',
  `Agility` int(11) NOT NULL COMMENT '内防',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='坐骑升星配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_mounttemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_mounttemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板ID',
  `TemplateName` varchar(50) NOT NULL COMMENT '模板名称',
  `MountType` int(11) DEFAULT NULL COMMENT '坐骑avatar类型(0普通,1特殊)',
  `Power` int(11) NOT NULL COMMENT '力量',
  `Intellect` int(11) NOT NULL COMMENT '智力',
  `Physique` int(11) NOT NULL COMMENT '体质',
  `Agility` int(11) NOT NULL COMMENT '护甲',
  `Speed` int(11) NOT NULL COMMENT '速度',
  `ExpandLevel` int(11) NOT NULL COMMENT '可扩展等级',
  `AvatarPath` varchar(200) NOT NULL COMMENT '资源入径',
  `NeedItemId` int(11) DEFAULT NULL COMMENT '激活该avatar所需物品模板ID',
  `Property1` int(11) DEFAULT NULL COMMENT '扩展属性1',
  `Property2` int(11) DEFAULT NULL COMMENT '扩展属性2',
  `NeedMountGrade` int(11) NOT NULL COMMENT '所需坐骑等级',
  `Description` varchar(200) NOT NULL COMMENT '描述',
  `SoulScore` int(11) NOT NULL DEFAULT '0' COMMENT '魂兽积分',
  `Sort` int(11) NOT NULL DEFAULT '0' COMMENT '坐骑排序',
  `Profile` int(11) DEFAULT NULL COMMENT '品级',
  `IconPath` varchar(200) DEFAULT NULL COMMENT '展示图标',
  `OutPutSource` varchar(500) DEFAULT NULL COMMENT '来源',
  `Quality` varchar(10) DEFAULT NULL COMMENT '品质',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='坐骑模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_nickname`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_nickname` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `NickName` varchar(50) NOT NULL COMMENT '昵称',
  `Sexs` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别(0女 1男)',
  `isUsed` tinyint(4) DEFAULT '0' COMMENT '是否被使用',
  PRIMARY KEY (`id`),
  UNIQUE KEY `NickName` (`NickName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_npctemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_npctemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `MasterType` int(11) NOT NULL COMMENT '主类',
  `SonType` int(11) NOT NULL COMMENT '从类',
  `Camp` int(11) NOT NULL COMMENT '阵营',
  `Grades` int(11) DEFAULT NULL COMMENT '等级',
  `NPCName` varchar(200) DEFAULT NULL COMMENT '名称',
  `Icon` varchar(200) DEFAULT NULL COMMENT '头像',
  `Description` varchar(500) DEFAULT NULL COMMENT '描述',
  `NeedPopulation` int(11) NOT NULL COMMENT '占用人口',
  `Live` int(11) NOT NULL COMMENT '生命',
  `Attack` int(11) NOT NULL COMMENT '攻击',
  `Defence` int(11) NOT NULL COMMENT '防御',
  `Speed` int(11) NOT NULL COMMENT '速度',
  `Mind` int(11) NOT NULL COMMENT '精神',
  `Skill` int(11) NOT NULL COMMENT '技能',
  `Swf` varchar(200) DEFAULT NULL COMMENT '动画资源',
  `AttackType` int(11) NOT NULL COMMENT '攻击类型',
  `DefaultSkill` int(11) DEFAULT '0' COMMENT '默认技能',
  `HighSkill` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='NPC兵种模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_official`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_official` (
  `TemplateId` int(11) NOT NULL COMMENT '模版ID',
  `Type` tinyint(4) unsigned NOT NULL COMMENT '类型',
  `Title` varchar(50) NOT NULL COMMENT '名字',
  `Descript` varchar(255) NOT NULL COMMENT '描述',
  `Quality` tinyint(4) unsigned NOT NULL COMMENT '品质',
  `Sort` tinyint(4) NOT NULL COMMENT '排序',
  `Experience` int(11) NOT NULL DEFAULT '0' COMMENT '升级经验',
  `Attack` int(11) NOT NULL DEFAULT '0' COMMENT '攻击',
  `OutDefence` int(11) NOT NULL DEFAULT '0' COMMENT '外功防御',
  `InDefence` int(11) NOT NULL DEFAULT '0' COMMENT '内功防御',
  `Live` int(11) NOT NULL DEFAULT '0' COMMENT '生命',
  `PrivilegeIds` varchar(50) DEFAULT NULL COMMENT '特权集合，多个以,号隔开',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='官衔模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_pawntemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_pawntemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `MasterType` int(11) NOT NULL COMMENT '主类',
  `SonType` int(11) NOT NULL COMMENT '从类',
  `Camp` int(11) NOT NULL COMMENT '阵营',
  `Level` int(11) NOT NULL DEFAULT '0' COMMENT '等级',
  `NextLevelTemplateId` int(11) DEFAULT NULL COMMENT '下一等级',
  `PawnName` varchar(200) DEFAULT NULL COMMENT '名称',
  `Description` varchar(500) DEFAULT NULL COMMENT '描述',
  `CrystalsConsume` int(11) DEFAULT NULL COMMENT '消耗魔晶',
  `GoldConsume` int(11) DEFAULT NULL COMMENT '消耗金币',
  `NeedBuilding` int(11) NOT NULL COMMENT '所需建筑',
  `NeedTime` int(11) DEFAULT '0' COMMENT '所需时间/秒',
  `NeedPopulation` int(11) NOT NULL COMMENT '占用人口',
  `Live` int(11) NOT NULL COMMENT '生命值',
  `Attack` int(11) NOT NULL COMMENT '理物攻击',
  `Defence` int(11) NOT NULL COMMENT '理物防御',
  `MagicAttack` int(11) NOT NULL COMMENT '魔法攻击',
  `MagicDefence` int(11) NOT NULL COMMENT '魔法防御',
  `ForceHit` int(11) NOT NULL COMMENT '击暴值',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '格挡',
  `Swf` varchar(200) NOT NULL DEFAULT '007' COMMENT '动画资源',
  `AttackType` int(11) NOT NULL DEFAULT '0',
  `DefaultSkill` int(11) NOT NULL,
  `Icon` varchar(200) DEFAULT NULL COMMENT '图标',
  `HighSkill` varchar(200) DEFAULT NULL COMMENT '高级技能',
  `HeroSkill` varchar(200) DEFAULT NULL COMMENT '给英雄加成技能',
  `AI` int(11) DEFAULT '0' COMMENT 'AI配置',
  `RejectType` varchar(50) DEFAULT NULL COMMENT '免疫Buffer类型',
  `DefaultSpecialTemps` varchar(50) DEFAULT NULL COMMENT '默认特性',
  `Job` smallint(6) NOT NULL DEFAULT '1' COMMENT '职业',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='兵种模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_physic`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_physic` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '节点编号',
  `MapId` int(11) NOT NULL COMMENT '所属地图id',
  `Grade` int(11) NOT NULL DEFAULT '0',
  `PosY` int(11) NOT NULL DEFAULT '0' COMMENT '坐标Y',
  `PosX` int(11) NOT NULL DEFAULT '0' COMMENT '坐标X',
  `Types` int(11) NOT NULL DEFAULT '0',
  `Names` varchar(200) NOT NULL,
  `Descrption` varchar(200) DEFAULT NULL COMMENT '描述',
  `State` int(11) DEFAULT NULL COMMENT '状态',
  `CanOccupied` tinyint(1) DEFAULT NULL COMMENT '是否允许占领',
  `OccupyPlayerId` int(11) NOT NULL DEFAULT '0',
  `OccupyPlayerGrade` int(11) DEFAULT '0' COMMENT '占领者等级',
  `OccupyPlayerName` varchar(200) DEFAULT NULL COMMENT '占领玩家昵称',
  `OccupyLeagueName` varchar(200) DEFAULT NULL COMMENT '占领玩家联盟',
  `CrystalsYield` int(11) NOT NULL DEFAULT '0',
  `GoldYield` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Id`)
) ENGINE=MyISAM AUTO_INCREMENT=106266 DEFAULT CHARSET=utf8 COMMENT='系统节点数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_pointinvest`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_pointinvest` (
  `TemplateId` int(11) NOT NULL COMMENT '投资档次',
  `PointNeed` int(11) NOT NULL DEFAULT '0' COMMENT '投入的元宝数',
  `PointShow` int(11) NOT NULL DEFAULT '0' COMMENT '显示的最少返利数',
  `Return1` int(11) NOT NULL DEFAULT '0' COMMENT '第一种返利',
  `Return1MaxRandom` int(11) NOT NULL DEFAULT '0' COMMENT '小于等于该随机数时，就使用第一种返利',
  `Return2` int(11) NOT NULL DEFAULT '0' COMMENT '第二种返利',
  `Return2MaxRandom` int(11) NOT NULL DEFAULT '0' COMMENT '小于等于该随机数时，就使用第二种返利',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='元宝投资返利';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_privilege`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_privilege` (
  `PrivilegeId` int(11) NOT NULL COMMENT '特权ID',
  `Type` int(11) DEFAULT NULL COMMENT '类型',
  `SonType` int(11) DEFAULT NULL COMMENT '子类型',
  `Descript` varchar(255) DEFAULT NULL COMMENT '描述',
  `Para1` varchar(20) DEFAULT NULL COMMENT '参数1',
  `Para2` varchar(255) DEFAULT NULL COMMENT '参数2',
  `Para3` varchar(255) DEFAULT NULL COMMENT '参数3',
  `Para4` varchar(255) DEFAULT NULL COMMENT '参数4',
  PRIMARY KEY (`PrivilegeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='特权表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_proxy`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_proxy` (
  `Id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `Name` varchar(32) NOT NULL COMMENT '代理商Site',
  `ServerName` varchar(64) NOT NULL COMMENT '代理商名称',
  `DeptId` int(11) NOT NULL DEFAULT '0' COMMENT '代理商平台ID',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='跨服代理商列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_proxykeypair`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_proxykeypair` (
  `PublicModulus` varchar(250) NOT NULL COMMENT '公钥模数',
  `PublicExponent` varchar(20) NOT NULL COMMENT '公钥指数',
  `PrivateModulus` varchar(250) NOT NULL COMMENT '私钥模数',
  `PrivateExponent` varchar(250) NOT NULL COMMENT '私钥指数',
  `Site` varchar(30) NOT NULL DEFAULT '' COMMENT '登陆站点',
  `CreateDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '生成时间',
  PRIMARY KEY (`Site`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='代理商登陆密钥表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_questcondiction`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_questcondiction` (
  `TemplateId` int(11) DEFAULT NULL COMMENT '任务编号',
  `CondictionID` int(11) DEFAULT NULL COMMENT '任务条件',
  `CondictionType` int(11) DEFAULT NULL COMMENT '任务条件类型',
  `CondictionTitle` varchar(200) DEFAULT NULL COMMENT '任务条件标题',
  `Para1` varchar(200) DEFAULT NULL COMMENT '参数1',
  `Para2` int(11) DEFAULT NULL COMMENT '参数2',
  `Para3` int(11) DEFAULT NULL COMMENT '参数3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务完成条件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_questgood`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_questgood` (
  `TemplateId` int(11) DEFAULT NULL COMMENT '任务编号',
  `RewardItemID` int(11) DEFAULT NULL COMMENT '奖励物品编号',
  `IsSelect` tinyint(1) DEFAULT NULL COMMENT '是否可选',
  `RewardItemCount` int(11) DEFAULT NULL COMMENT '物品数量',
  `ToJob` int(11) DEFAULT NULL COMMENT '发放职业',
  `ValidDate` int(11) NOT NULL COMMENT '有效期(分钟)',
  `RewardType` smallint(4) NOT NULL DEFAULT '0' COMMENT '奖励类型'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务奖励物品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_questionnaire`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_questionnaire` (
  `Id` varchar(50) NOT NULL DEFAULT '' COMMENT '问卷ID',
  `OrderId` tinyint(4) NOT NULL COMMENT '题号',
  `Title` varchar(200) NOT NULL COMMENT '标题',
  `Type` tinyint(4) NOT NULL COMMENT '类型(0:单选;1:多选)',
  `OptionA` varchar(100) NOT NULL DEFAULT '' COMMENT 'A选项',
  `OptionB` varchar(100) NOT NULL DEFAULT '' COMMENT 'B选项',
  `OptionC` varchar(100) NOT NULL DEFAULT '' COMMENT 'C选项',
  `OptionD` varchar(100) NOT NULL DEFAULT '' COMMENT 'D选项',
  `OptionE` varchar(100) NOT NULL DEFAULT '' COMMENT 'E选项',
  `OptionF` varchar(100) NOT NULL DEFAULT '' COMMENT 'F选项',
  `OptionG` varchar(100) NOT NULL DEFAULT '' COMMENT 'G选项',
  `OptionH` varchar(100) NOT NULL DEFAULT '' COMMENT 'H选项',
  `OptionI` varchar(100) NOT NULL DEFAULT '' COMMENT 'I选项',
  `OptionJ` varchar(100) NOT NULL COMMENT '有无其他（0:无，1:有）',
  `ContenType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '问题内容类型',
  `Page` tinyint(4) NOT NULL DEFAULT '0' COMMENT '页号',
  PRIMARY KEY (`Id`,`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='问卷调查题目列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_questtemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_questtemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '任务编号',
  `TemplateType` int(11) NOT NULL COMMENT '任务类型',
  `ChapterId` int(11) NOT NULL DEFAULT '0' COMMENT '章节id',
  `Title` varchar(200) NOT NULL COMMENT '标题',
  `Detail` varchar(2000) NOT NULL COMMENT '详细说明',
  `Objective` varchar(2000) NOT NULL COMMENT '任务目标',
  `NeedFightId` varchar(200) NOT NULL COMMENT '所需战役关卡',
  `NeedBuildingTemp` int(11) NOT NULL COMMENT '所需建筑模板',
  `NeedItemTemp` int(11) NOT NULL COMMENT '所需物品模板',
  `NeedPos` varchar(200) NOT NULL COMMENT '所需坐标',
  `NeedMinLevel` int(11) NOT NULL COMMENT '所需领主最小等级',
  `NeedMaxLevel` int(11) NOT NULL COMMENT '接受领主最高等级',
  `PreQuestId` varchar(100) NOT NULL COMMENT '前置任务',
  `IsLeague` tinyint(1) NOT NULL COMMENT '是否需要公会',
  `IsAuto` tinyint(1) NOT NULL COMMENT '是否自动接受',
  `IsRepeat` tinyint(1) NOT NULL COMMENT '是否可以重复',
  `IsLost` tinyint(1) NOT NULL COMMENT '是否允许放弃(自动接受不允许放弃)',
  `RepeatInterval` int(11) NOT NULL COMMENT '是否可重复间隔',
  `RepeatMax` int(11) NOT NULL COMMENT '在一段时间间隔内可重复提交的任务的次数',
  `RewardPlayGP` int(11) NOT NULL COMMENT '奖励领主经验',
  `RewardHeroGP` int(11) NOT NULL COMMENT '奖励英雄经验',
  `RewardGold` int(11) NOT NULL COMMENT '奖励黄金',
  `RewardCrystal` int(11) NOT NULL COMMENT '奖励魔晶',
  `RewardDower` varchar(200) NOT NULL COMMENT '奖励天赋模板',
  `RewardMoney` int(11) NOT NULL COMMENT '任务奖励的点券',
  `RewardStrategy` int(11) NOT NULL COMMENT '奖励战魂',
  `RewardPlayerOffer` int(11) NOT NULL DEFAULT '0' COMMENT '奖励个人贡献',
  `RewardConsortiaOffer` int(11) NOT NULL DEFAULT '0' COMMENT '奖励公会财富',
  `RewardHunt` int(11) NOT NULL DEFAULT '0' COMMENT '奖励结义令',
  `RewardExperience` int(11) NOT NULL DEFAULT '0' COMMENT '奖励阅历',
  `StartDate` datetime NOT NULL COMMENT '起始时间',
  `EndDate` datetime NOT NULL COMMENT '结束时间',
  `WeekSpace` varchar(200) NOT NULL COMMENT '星期设定',
  `HourSpace` varchar(200) NOT NULL COMMENT '小时设定',
  `Sort` decimal(11,4) DEFAULT '0.0000' COMMENT '排序',
  `ShowType` int(11) NOT NULL DEFAULT '0' COMMENT '显示类型',
  `ActiveObject` int(11) NOT NULL DEFAULT '0' COMMENT '任务激活建筑',
  `Icon` varchar(50) DEFAULT '' COMMENT '图标',
  `TipNeedGrades` int(11) DEFAULT NULL COMMENT '功能提示的等级限制',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务系统模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_rate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_rate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `BeginDay` date NOT NULL COMMENT '开始日期-含当天',
  `EndDay` date NOT NULL COMMENT '结束日期-含当天',
  `BeginTime` time NOT NULL COMMENT '开始时间',
  `EndTime` time NOT NULL COMMENT '结束时间',
  `Rate` int(11) NOT NULL COMMENT '经验比例',
  `Key` varchar(36) NOT NULL DEFAULT 'A' COMMENT '标识',
  `RateName` varchar(50) DEFAULT NULL COMMENT '称名',
  `RateDesc` varchar(200) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统经验模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_rebate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_rebate` (
  `Id` varchar(36) NOT NULL COMMENT 'ID',
  `BeginTime` datetime NOT NULL COMMENT '开始时间',
  `EndTime` datetime NOT NULL COMMENT '结束时间',
  `Type` tinyint(4) NOT NULL COMMENT '活动类型（1：充值，2：消费）',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充值、消费回馈活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_rebateitems`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_rebateitems` (
  `Id` varchar(36) NOT NULL COMMENT 'ID',
  `PackageId` varchar(36) NOT NULL COMMENT '礼包ID',
  `Order` tinyint(4) NOT NULL COMMENT '礼包排序',
  `Point` int(11) NOT NULL COMMENT '钻石',
  `Price` int(11) NOT NULL COMMENT '礼包价值',
  `ItemId1` int(11) NOT NULL DEFAULT '0' COMMENT '物品ID1',
  `Count1` int(11) NOT NULL DEFAULT '0' COMMENT '数量1',
  `ItemId2` int(11) NOT NULL DEFAULT '0' COMMENT '物品ID2',
  `Count2` int(11) NOT NULL DEFAULT '0' COMMENT '数量2',
  `ItemId3` int(11) NOT NULL DEFAULT '0' COMMENT '物品ID3',
  `Count3` int(11) NOT NULL DEFAULT '0' COMMENT '数量2',
  `ItemId4` int(11) NOT NULL DEFAULT '0' COMMENT '物品ID4',
  `Count4` int(11) NOT NULL DEFAULT '0' COMMENT '数量4',
  `ItemId5` int(11) NOT NULL DEFAULT '0' COMMENT '物品ID5',
  `Count5` int(11) NOT NULL DEFAULT '0' COMMENT '数量5',
  `ItemId6` int(11) NOT NULL DEFAULT '0' COMMENT '物品ID6',
  `Count6` int(11) NOT NULL DEFAULT '0' COMMENT '数量6',
  `ItemId7` int(11) NOT NULL DEFAULT '0' COMMENT '物品ID7',
  `Count7` int(11) NOT NULL DEFAULT '0' COMMENT '数量7',
  `ItemId8` int(11) NOT NULL DEFAULT '0' COMMENT '物品ID8',
  `Count8` int(11) NOT NULL DEFAULT '0' COMMENT '数量8',
  PRIMARY KEY (`Id`,`PackageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充值、消费回馈活动奖励';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_recovertemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_recovertemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板ID',
  `Type` int(11) NOT NULL COMMENT '找回类型',
  `Title` varchar(20) NOT NULL COMMENT '标题',
  `DayMaxCount` int(11) NOT NULL COMMENT '每日最大找回次数',
  `ExpendCount` int(11) NOT NULL COMMENT '消耗道具数量',
  `Param1` int(11) DEFAULT '0' COMMENT '参数1',
  `Param2` int(11) DEFAULT '0' COMMENT '参数2',
  `Param3` int(11) DEFAULT '0' COMMENT '参数3',
  `Param4` int(11) DEFAULT '0' COMMENT '参数4',
  `Param5` int(11) DEFAULT '0' COMMENT '参数5',
  `Param6` int(11) DEFAULT '0' COMMENT '参数6',
  `Icon` varchar(200) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='找回模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_relationarea`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_relationarea` (
  `Id` int(11) NOT NULL DEFAULT '0' COMMENT 'ID',
  `AreaId` int(11) NOT NULL DEFAULT '0' COMMENT '区域ID',
  `AreaName` varchar(50) NOT NULL DEFAULT '' COMMENT '区名称',
  `CityId` int(11) NOT NULL DEFAULT '0' COMMENT '所属城市',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='区域关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_relationcity`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_relationcity` (
  `Id` int(11) NOT NULL DEFAULT '0' COMMENT 'ID',
  `CityId` int(11) NOT NULL DEFAULT '0' COMMENT '城市ID',
  `CityName` varchar(50) NOT NULL COMMENT '城市名称',
  `ProvinceId` int(11) NOT NULL DEFAULT '0' COMMENT '所属省份',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='城市关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_relationcountry`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_relationcountry` (
  `Id` int(11) NOT NULL DEFAULT '0' COMMENT 'ID',
  `CountryName` varchar(50) NOT NULL DEFAULT '' COMMENT '城市名称',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='国家关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_relationprovince`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_relationprovince` (
  `Id` int(11) NOT NULL DEFAULT '0' COMMENT 'ID',
  `ProvinceId` int(11) NOT NULL DEFAULT '0' COMMENT '省份ID',
  `Province` varchar(40) NOT NULL COMMENT '指定几点开始',
  `CountryId` int(11) NOT NULL DEFAULT '1' COMMENT '国家ID',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='省关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_relationstar`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_relationstar` (
  `Id` int(11) NOT NULL DEFAULT '0' COMMENT 'ID',
  `StarName` varchar(50) NOT NULL DEFAULT '' COMMENT '星座名称',
  `MonthStart` int(11) NOT NULL DEFAULT '0' COMMENT '月份开始',
  `DayStart` int(11) NOT NULL DEFAULT '0' COMMENT '天数开始',
  `MonthEnd` int(11) NOT NULL DEFAULT '0' COMMENT '月份结束',
  `DayEnd` int(11) NOT NULL DEFAULT '0' COMMENT '天数结束',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='星座关系表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_rewardcondiction`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_rewardcondiction` (
  `TemplateId` int(11) DEFAULT NULL COMMENT '任务编号',
  `CondictionId` int(11) DEFAULT NULL COMMENT '任务条件',
  `CondictionType` int(11) DEFAULT NULL COMMENT '任务条件类型',
  `CondictionTitle` varchar(200) DEFAULT NULL COMMENT '任务条件标题',
  `Para1` int(11) DEFAULT NULL COMMENT '参数1',
  `Para2` int(11) DEFAULT NULL COMMENT '参数2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='悬赏完成条件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_rewardgood`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_rewardgood` (
  `TemplateId` int(11) DEFAULT NULL COMMENT '任务编号',
  `RewardItemId` int(11) DEFAULT NULL COMMENT '奖励物品编号',
  `RewardItemCount` int(11) DEFAULT NULL COMMENT '物品数量'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='悬赏奖励物品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_rewardtemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_rewardtemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '编号',
  `Title` varchar(200) NOT NULL COMMENT '标题',
  `Detail` varchar(2000) NOT NULL COMMENT '详细说明',
  `NeedFightId` int(11) NOT NULL COMMENT '所需战役关卡',
  `NeedMinLevel` int(11) NOT NULL COMMENT '所需领主最小等级',
  `NeedMaxLevel` int(11) NOT NULL COMMENT '接受领主最高等级',
  `IsLeague` tinyint(1) NOT NULL COMMENT '是否需要公会',
  `RewardPlayGP` int(11) NOT NULL COMMENT '奖励领主经验',
  `RewardGold` int(11) NOT NULL COMMENT '奖励黄金',
  `RewardStrategy` int(11) NOT NULL COMMENT '奖励战魂',
  `Rands` int(11) DEFAULT NULL COMMENT '机率',
  `ShowType` int(11) NOT NULL DEFAULT '0' COMMENT '显示类型',
  `StartDate` datetime NOT NULL COMMENT '起始时间',
  `EndDate` datetime NOT NULL COMMENT '结束时间',
  `Icon` varchar(50) NOT NULL COMMENT '图标路径',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='悬赏系统模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_richmanactive`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_richmanactive` (
  `TemplateId` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增无意义主键',
  `ActiveId` varchar(100) NOT NULL COMMENT '活动id唯一标识',
  `ActiveName` varchar(100) DEFAULT NULL COMMENT '活动名称',
  `ActiveDesc` varchar(1000) DEFAULT NULL COMMENT '活动描述',
  `ActiveType` int(11) NOT NULL COMMENT '活动类型',
  `BeginDate` datetime NOT NULL COMMENT '活动开启时间',
  `EndDate` datetime NOT NULL COMMENT '活动结束时间',
  `ShowBeginDate` datetime NOT NULL COMMENT '活动展示时间',
  `ShowEndDate` datetime NOT NULL COMMENT '活动展示结束时间',
  `Sort` int(11) DEFAULT NULL COMMENT '排序字段',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='富甲天下活动表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_richmancondition`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_richmancondition` (
  `TemplateId` int(11) NOT NULL COMMENT '自增无意义主键',
  `PackageId` varchar(100) NOT NULL COMMENT '礼包条件',
  `ActiveId` varchar(100) NOT NULL COMMENT '活动id',
  `DropId` int(11) NOT NULL COMMENT '掉落id',
  `Bak1` int(11) NOT NULL DEFAULT '0' COMMENT '通用参数',
  `Bak2` int(11) NOT NULL DEFAULT '0',
  `Bak3` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='富甲天下礼包表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_richmanjob`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_richmanjob` (
  `JobName` varchar(200) NOT NULL COMMENT '定时任务',
  `IntervalUnit` int(11) DEFAULT NULL COMMENT '单位',
  `IntervalData` int(11) DEFAULT NULL COMMENT '间隔时长',
  `IntervalBegin` int(11) DEFAULT NULL COMMENT '指定几点开始',
  `UpdateTime` datetime DEFAULT NULL COMMENT '最后一次更新时间',
  `Desc` varchar(200) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`JobName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='富甲天下作业';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_robotname`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_robotname` (
  `NickName` varchar(50) NOT NULL COMMENT '昵称',
  `Type` int(11) NOT NULL COMMENT '类型',
  `IsExist` tinyint(1) DEFAULT NULL COMMENT '是否有效',
  PRIMARY KEY (`NickName`,`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公会机器人昵称';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_robottemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_robottemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '编号',
  `NickName` varchar(50) NOT NULL COMMENT '昵称',
  `Sexs` tinyint(1) NOT NULL COMMENT '性别',
  `Grades` int(11) NOT NULL COMMENT '等级',
  `Heros` varchar(200) DEFAULT NULL COMMENT '英雄模板ID',
  `Soldiers` varchar(200) DEFAULT NULL COMMENT '所带兵种列表',
  `Knights` varchar(200) DEFAULT NULL COMMENT '侠客列表',
  `Type` int(11) NOT NULL COMMENT '机器人类型',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='机器人';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_runetemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_runetemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '符文ID',
  `TemplateName` varchar(255) NOT NULL COMMENT '名称',
  `RuneType` int(4) NOT NULL DEFAULT '0' COMMENT '类型',
  `SonType` int(11) NOT NULL DEFAULT '0' COMMENT '子类型',
  `Job` varchar(50) NOT NULL DEFAULT '-1' COMMENT '职业',
  `RuneGrade` tinyint(4) NOT NULL DEFAULT '0' COMMENT '符文等级',
  `SkillTemplateId` int(11) NOT NULL DEFAULT '0' COMMENT '技能模板ID',
  `RuneIndex` tinyint(4) NOT NULL COMMENT '索引',
  `Icon` varchar(255) NOT NULL DEFAULT '' COMMENT '图标',
  `NextRuneId` int(11) NOT NULL DEFAULT '0' COMMENT '下一个符文ID',
  `NeedGp` int(11) NOT NULL DEFAULT '0' COMMENT '升级所需的经验',
  `UseCount` int(11) NOT NULL DEFAULT '0' COMMENT '使用次数',
  `NeedGrade` int(11) NOT NULL COMMENT '所需玩家等级',
  `Description` varchar(255) NOT NULL COMMENT '描述',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='创建符文模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_sacred_field_upgrade`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_sacred_field_upgrade` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `Pos` smallint(6) NOT NULL COMMENT '幻灵位置 0-灵首 1-灵镜 2-灵心 3-灵识',
  `Grades` smallint(6) NOT NULL COMMENT '阶数',
  `ConsumeId` int(11) NOT NULL COMMENT '消耗ID',
  `ConsumeNum` int(11) NOT NULL COMMENT '消耗数量',
  `BaseExp` int(11) NOT NULL COMMENT '基础经验',
  `MaxExp` int(11) NOT NULL COMMENT '最大经验（升级经验）',
  `AddRate` float(11,3) NOT NULL COMMENT '加成百分比',
  `AddPropertyType` smallint(11) NOT NULL COMMENT '加成属性类型（固值）',
  `AddPropertyValue` int(11) NOT NULL COMMENT '加成属性值（固值）',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COMMENT='神兽幻灵-栏位升级';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_sacredposline`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_sacredposline` (
  `PosLineID` int(11) NOT NULL COMMENT '光环id',
  `PosLineName` varchar(20) NOT NULL DEFAULT ' ' COMMENT '光环名称',
  `Level` int(11) NOT NULL COMMENT '光环等级',
  `Pos1` int(11) NOT NULL COMMENT '加成位置1',
  `PropertyType1` int(11) NOT NULL COMMENT '加成属性1类型',
  `PropertyNum1` int(11) NOT NULL COMMENT '增加属性值1',
  `Pos2` int(11) NOT NULL COMMENT '加成位置2',
  `PropertyType2` int(11) NOT NULL COMMENT '加成属性2类型',
  `PropertyNum2` int(11) NOT NULL COMMENT '增加属性值2',
  `Pos3` int(11) NOT NULL COMMENT '加成位置3',
  `PropertyType3` int(11) NOT NULL COMMENT '加成属性3类型',
  `PropertyNum3` int(11) NOT NULL COMMENT '增加属性值3',
  `Pos4` int(11) NOT NULL COMMENT '加成位置4',
  `PropertyType4` int(11) NOT NULL COMMENT '加成属性4类型',
  `PropertyNum4` int(11) NOT NULL COMMENT '增加属性值4',
  `Pos5` int(11) NOT NULL COMMENT '加成位置5',
  `PropertyType5` int(11) NOT NULL COMMENT '加成属性5类型',
  `PropertyNum5` int(11) NOT NULL COMMENT '增加属性值5',
  `Pos6` int(11) NOT NULL COMMENT '加成位置6',
  `PropertyType6` int(11) NOT NULL COMMENT '加成属性6类型',
  `PropertyNum6` int(11) NOT NULL COMMENT '增加属性值6',
  `Tips` varchar(50) NOT NULL COMMENT '光环tooltip',
  `Icon` varchar(50) DEFAULT NULL COMMENT '光环图标',
  PRIMARY KEY (`PosLineID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='神兽光环模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_sacredrefine`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_sacredrefine` (
  `Id` int(11) NOT NULL COMMENT '主键，供编辑器使用',
  `TemplateID` int(11) NOT NULL COMMENT '神兽模板ID',
  `Step` int(11) NOT NULL COMMENT '阶段',
  `SonStep` int(11) NOT NULL COMMENT '星数',
  `MinGrade` int(11) NOT NULL DEFAULT '0' COMMENT '神炼到下阶所需的最小等级',
  `Costs` varchar(50) NOT NULL COMMENT '神炼消耗',
  `InAttack` int(11) NOT NULL COMMENT '内攻',
  `OutAttack` int(11) NOT NULL COMMENT '外攻',
  `InDefence` int(11) NOT NULL COMMENT '内防',
  `OutDefence` int(11) NOT NULL COMMENT '外防',
  `Live` int(11) NOT NULL COMMENT '生命',
  `ForceHit` int(11) NOT NULL COMMENT '暴击',
  `Wreck` int(11) NOT NULL COMMENT '破击',
  `Parry` int(11) NOT NULL COMMENT '招架',
  `ReCrit` int(11) NOT NULL COMMENT '韧性',
  `Random` int(11) NOT NULL COMMENT '成功概率，万分制',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='神兽神炼';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_sacredstartemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_sacredstartemplate` (
  `Id` int(11) NOT NULL COMMENT '主键，供编辑器使用',
  `TemplateID` int(11) NOT NULL COMMENT '神兽模板id',
  `Star` int(11) NOT NULL COMMENT '星级',
  `MinGrade` int(11) NOT NULL COMMENT '所需神兽的最小等级',
  `Costs` varchar(50) NOT NULL COMMENT '所需物品',
  `SkillScript` varchar(50) NOT NULL COMMENT '技能',
  `Hit` int(11) NOT NULL COMMENT '攻击',
  `ForceHit` int(11) NOT NULL COMMENT '暴击',
  `SmallIcon` varchar(50) DEFAULT NULL COMMENT '小图标',
  `BigIcon` varchar(50) DEFAULT NULL COMMENT '大图标',
  `Avatar` varchar(50) DEFAULT NULL COMMENT 'avatar信息',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='神兽升星模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_sacredtemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_sacredtemplate` (
  `TemplateID` int(11) NOT NULL COMMENT '神兽模板id',
  `TemplateName` varchar(20) NOT NULL COMMENT '神兽名称',
  `SacredType` smallint(6) NOT NULL DEFAULT '1' COMMENT '神兽类型，1为玩家神兽，2为系统神兽',
  `PropertyType` int(11) NOT NULL DEFAULT '1' COMMENT '神兽攻击属性类型',
  `DeciAnti` int(11) NOT NULL DEFAULT '0' COMMENT '减抗性',
  `AntiWater` int(11) NOT NULL DEFAULT '0' COMMENT '水抗性',
  `AntiFire` int(11) NOT NULL DEFAULT '0' COMMENT '火抗性',
  `AntiWood` int(11) NOT NULL DEFAULT '0' COMMENT '木抗性',
  `AntiLight` int(11) NOT NULL DEFAULT '0' COMMENT '光抗性',
  `AntiDark` int(11) NOT NULL DEFAULT '0' COMMENT '暗抗性',
  `SkillSonTypes` varchar(50) DEFAULT NULL COMMENT '神兽的被动技能',
  `ActiveCondition` varchar(100) DEFAULT '' COMMENT '激活条件',
  `OpenLevels` varchar(50) NOT NULL COMMENT '神兽光圈开放等级',
  PRIMARY KEY (`TemplateID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='神兽属性模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_sacredupgrade`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_sacredupgrade` (
  `Id` int(11) NOT NULL COMMENT '主键，供编辑器使用',
  `TemplateID` int(11) NOT NULL COMMENT '神兽模板id',
  `Grade` int(11) NOT NULL COMMENT '等级',
  `Hit` int(11) NOT NULL COMMENT '攻击',
  `ForceHit` int(11) NOT NULL COMMENT '暴击',
  `PosLineID` int(11) NOT NULL COMMENT '光环ID',
  `NextGP` int(11) NOT NULL COMMENT '升到下级所需经验',
  `Costs` varchar(50) NOT NULL COMMENT '升级所需物品',
  `GPAdd` int(11) NOT NULL COMMENT '每次培养增加的经验',
  `Random` int(11) NOT NULL DEFAULT '0' COMMENT '培养暴击概率(百分制)',
  `RandomAdd` int(11) NOT NULL DEFAULT '0' COMMENT '暴击增加经验',
  `ExRandom` int(11) NOT NULL DEFAULT '0' COMMENT '额外暴击的概率，增加更多的经验',
  `ExRandomAdd` int(11) NOT NULL DEFAULT '0' COMMENT '额外暴击增加的经验',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='神兽升级模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_shop`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_shop` (
  `Id` int(11) NOT NULL COMMENT '序号',
  `ShopType` int(11) NOT NULL COMMENT '(普通商店、市场)',
  `Area` int(11) NOT NULL COMMENT '商品区域（点劵区）',
  `ItemId` int(11) NOT NULL COMMENT '物品模板编号',
  `Point` int(11) NOT NULL COMMENT '点劵',
  `GiftToken` int(11) NOT NULL COMMENT '礼劵',
  `Gold` int(11) NOT NULL COMMENT '黄金',
  `ConsortiaOffer` int(11) NOT NULL COMMENT '购买所需贡献值',
  `Honor` int(11) NOT NULL COMMENT '勋章',
  `NeedGeste` int(11) NOT NULL DEFAULT '0' COMMENT '所需荣誉',
  `MazeCoin` int(11) NOT NULL DEFAULT '0' COMMENT '迷宫硬币',
  `MazeLayers` int(11) NOT NULL DEFAULT '0' COMMENT '所需迷宫层数',
  `MazeLayers2` int(11) NOT NULL DEFAULT '0' COMMENT '所需深渊迷宫层数',
  `NeedGrades` int(11) NOT NULL COMMENT '最小领主等级',
  `NeedConsortiaLevels` int(11) NOT NULL COMMENT '所需公会商城等级',
  `NeedMinVip` int(11) NOT NULL COMMENT '最小VIP等级',
  `VIP0Count` int(11) NOT NULL COMMENT 'VIP0上限数量',
  `VIP1Count` int(11) NOT NULL COMMENT 'VIP1上限数量',
  `VIP2Count` int(11) NOT NULL COMMENT 'VIP2上限数量',
  `VIP3Count` int(11) NOT NULL COMMENT 'VIP3上限数量',
  `VIP4Count` int(11) NOT NULL COMMENT 'VIP4上限数量',
  `VIP5Count` int(11) NOT NULL COMMENT 'VIP5上限数量',
  `VIP6Count` int(11) NOT NULL COMMENT 'VIP6上限数量',
  `FirstPrice` int(11) NOT NULL COMMENT '原价',
  `Discount` int(11) NOT NULL COMMENT '折扣',
  `Price` int(11) NOT NULL COMMENT '现价',
  `Sort` int(11) NOT NULL COMMENT '排序',
  `IsHot` tinyint(1) NOT NULL COMMENT '是否热销(1表示热销)',
  `Labels` int(11) NOT NULL COMMENT '标签',
  `ValidDate` int(11) NOT NULL COMMENT '有效期(分钟)',
  `SellMaxCount` int(11) NOT NULL DEFAULT '0' COMMENT '出售上限 0表示没有限制',
  `Rands` int(11) NOT NULL DEFAULT '0' COMMENT '几率',
  `NeedMaxGrade` int(11) NOT NULL DEFAULT '80' COMMENT '可购买该物品最大等级',
  `IsNeedPoint` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否需要花费钻石才可刷出(0不需要钻石,1需要钻石)',
  `Score` int(11) NOT NULL DEFAULT '0' COMMENT '购买物品 所需积分',
  `NeedMinGrade` int(11) NOT NULL DEFAULT '0' COMMENT '可购买该物品最小等级',
  `LordsScore` int(11) NOT NULL DEFAULT '0' COMMENT '所需荣耀水晶',
  `MirrorCoin` int(11) DEFAULT '0' COMMENT '风云令',
  `Interfax` int(11) DEFAULT '0' COMMENT '龙鳞',
  `ShowSite` varchar(100) NOT NULL COMMENT '显示的站点,空为都不显示,All为都显示',
  `KnightScore` int(11) DEFAULT '0' COMMENT '侠义值',
  `CreditScore` int(11) NOT NULL DEFAULT '0' COMMENT '所需信用额度',
  `DayMaxBuyCount` int(11) NOT NULL DEFAULT '0' COMMENT '单日最大购买数量，0表示不限制',
  `SumMaxBuyCount` int(11) NOT NULL DEFAULT '0' COMMENT '总最大购买数量，0表示不限制',
  `CreditGrade` int(11) NOT NULL DEFAULT '0' COMMENT '信用等级限制，0表示不限制',
  `VisiteScore` int(11) DEFAULT '0' COMMENT '侠客寻访积分',
  `SacredScore` int(11) DEFAULT '0' COMMENT '神兽砸蛋积分',
  `ForceHonor` int(11) NOT NULL COMMENT '势力荣誉',
  `NeedForceMedal` int(11) NOT NULL COMMENT '所需蓬莱岛军功',
  `LuckyWheelScore` int(11) NOT NULL DEFAULT '0' COMMENT '幸运转盘积分消耗',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商店模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_siteconfig`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_siteconfig` (
  `SiteName` varchar(50) NOT NULL COMMENT '编号',
  `TimeDealy` smallint(6) NOT NULL DEFAULT '0' COMMENT '类型',
  PRIMARY KEY (`SiteName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='站点配置';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_skillbuffertemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_skillbuffertemplate` (
  `Id` int(11) NOT NULL COMMENT 'Id',
  `BufferName` varchar(200) NOT NULL COMMENT '名称',
  `AttackData` int(11) DEFAULT NULL COMMENT '攻击目标类型(增益/减益)',
  `AttackType` int(11) DEFAULT NULL COMMENT '伤害类型(英雄五个属性)',
  `AttackObject` int(11) DEFAULT NULL COMMENT '作用对象(单体/群体)',
  `ValidCount` int(11) DEFAULT NULL COMMENT '有效时间(回合数为单位)',
  `AttackWay` int(11) DEFAULT NULL COMMENT 'buffer作用时机',
  `AttackValue` int(11) DEFAULT NULL,
  `Icon` varchar(200) DEFAULT NULL,
  `ValuePercent` int(11) NOT NULL DEFAULT '0',
  `Random` int(11) NOT NULL DEFAULT '0' COMMENT 'buffer产生几率',
  `AddWay` int(11) DEFAULT NULL COMMENT 'buffer添加时机',
  `CountWay` int(11) DEFAULT '1' COMMENT '统计方式1-按回合,2-按作用次数',
  `AddEffect` varchar(200) DEFAULT NULL COMMENT 'buff添加时特效',
  `ActionEffect` varchar(200) DEFAULT NULL COMMENT 'buff作用时特效',
  `LastEffect` varchar(200) DEFAULT NULL COMMENT 'buff持续时特效',
  `Dispel` int(11) DEFAULT '0' COMMENT '是否可以被驱散0可以驱散1不能驱散',
  `PressCount` int(11) NOT NULL DEFAULT '0' COMMENT '最大叠加次数',
  `TargetType` int(11) DEFAULT '1' COMMENT '1-技能目标,2-BUFFER自己目标',
  `AppearTime` int(11) DEFAULT '0' COMMENT 'BUFFER选择目标使用',
  `AcceptObject` int(11) DEFAULT '0' COMMENT 'BUFFER选择目标使用',
  `TalentEffIds` varchar(100) NOT NULL COMMENT '天赋影响ID',
  `BufferCd` int(11) NOT NULL DEFAULT '0' COMMENT 'BUFF冷却时间',
  `LimitValue` int(11) NOT NULL COMMENT '上限值',
  `BufferEffCd` int(11) NOT NULL DEFAULT '0' COMMENT 'Buffer作用冷却时间',
  `CanEffect` tinyint(4) DEFAULT '0' COMMENT '是否生效0生效1推迟生效',
  `SkillBufferTips` varchar(100) DEFAULT NULL COMMENT '技能tips',
  `CanCover` tinyint(4) DEFAULT '0' COMMENT '是否能覆盖',
  `EffectCount` int(11) DEFAULT '0' COMMENT '影响方式',
  `EffectParam` int(11) DEFAULT '0' COMMENT '影响参数',
  `BufferDes` int(11) DEFAULT NULL COMMENT 'buffer描述UI',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='t_s_skillbuffertemplate';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_skillpropertytemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_skillpropertytemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `AddType` tinyint(1) NOT NULL COMMENT '加成类型',
  `Power` int(11) DEFAULT NULL COMMENT '力量',
  `Agility` int(11) DEFAULT NULL COMMENT '敏捷',
  `Intellect` int(11) DEFAULT NULL COMMENT '智力',
  `Captain` int(11) DEFAULT NULL COMMENT '统帅',
  `Physique` int(11) DEFAULT NULL COMMENT '体质',
  `Attack` int(11) DEFAULT NULL COMMENT '物理攻击',
  `Defence` int(11) DEFAULT NULL COMMENT '物理防御',
  `MagicAttack` int(11) DEFAULT NULL COMMENT '魔法攻击',
  `MagicDefence` int(11) DEFAULT NULL COMMENT '魔法防御',
  `ForceHit` int(11) DEFAULT NULL COMMENT '暴击值',
  `ReCrit` int(11) NOT NULL COMMENT '抗暴击值',
  `Wreck` int(11) NOT NULL COMMENT '破击值',
  `HarmRates` int(11) NOT NULL COMMENT '伤害率',
  `ReharmRates` int(11) NOT NULL COMMENT '免伤率',
  `Live` int(11) DEFAULT NULL COMMENT '生命',
  `Conat` int(11) DEFAULT NULL COMMENT '带兵数量',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '格挡',
  `BaseSp` int(11) DEFAULT '0' COMMENT '初始怒气',
  `BackSp` int(11) DEFAULT '0' COMMENT '怒气回复速度',
  `Decanti` int(11) DEFAULT '0' COMMENT '神兽减抗',
  `Antiwater` int(11) DEFAULT '0' COMMENT '神兽水抗',
  `Antiwood` int(11) DEFAULT '0' COMMENT '神兽木抗',
  `Antifire` int(11) DEFAULT '0' COMMENT '神兽火抗',
  `Antilight` int(11) DEFAULT '0' COMMENT '神兽金抗',
  `Antidark` int(11) DEFAULT '0' COMMENT '神兽土抗',
  `Antiattack` int(11) DEFAULT '0' COMMENT '神兽攻击',
  PRIMARY KEY (`TemplateId`,`AddType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='技能属性加成';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_skilltemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_skilltemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `TemplateName` varchar(200) DEFAULT NULL COMMENT '技能名称',
  `Icons` varchar(200) DEFAULT NULL,
  `MasterType` int(11) NOT NULL,
  `SonType` int(11) NOT NULL,
  `Grades` int(11) NOT NULL,
  `PreTemplateId` varchar(100) DEFAULT NULL,
  `PreGradeCount` int(11) NOT NULL DEFAULT '0' COMMENT '前置技能等级总和',
  `NextTemplateId` int(11) NOT NULL,
  `NeedPlayerGrade` int(11) NOT NULL,
  `Index` int(11) NOT NULL,
  `UseWay` int(11) NOT NULL COMMENT '作用方式（主动/被动/天生技能）',
  `AppearTime` int(11) NOT NULL COMMENT '起效方式（主动攻击时/被动受创时）',
  `AcceptObject` int(11) NOT NULL COMMENT '作用范围（单人/十字/整排/整列）',
  `ActionId` int(11) NOT NULL COMMENT '动作模板',
  `Cost` int(11) NOT NULL COMMENT '消耗',
  `Parameter1` int(11) NOT NULL COMMENT '参数一',
  `Parameter2` int(11) NOT NULL COMMENT '参数二',
  `Parameter3` int(11) NOT NULL COMMENT '参数三',
  `Parameter4` varchar(50) DEFAULT '' COMMENT '参数4',
  `Parameter5` varchar(50) DEFAULT '' COMMENT '参数5',
  `Parameter6` varchar(50) DEFAULT '' COMMENT '参数6',
  `BufferIds` varchar(100) NOT NULL COMMENT '技能Buffer编号',
  `CountWay` int(11) NOT NULL COMMENT '计算方式',
  `SkillRandom` int(11) NOT NULL COMMENT '技能触发机率',
  `Crucial` int(11) DEFAULT NULL COMMENT '暴击率',
  `Priority` int(11) DEFAULT NULL COMMENT '优先权',
  `CastTime` int(11) DEFAULT NULL COMMENT '投掷时间',
  `DefaultTarget` int(11) DEFAULT NULL COMMENT '默认兵种',
  `OwnRequirements` varchar(200) DEFAULT NULL COMMENT '自身要求',
  `EnemyRequirements` varchar(200) DEFAULT NULL COMMENT '敌方要求',
  `QteTime` int(11) DEFAULT '0' COMMENT 'QTE释放最大时间',
  `CoolDown` int(11) NOT NULL DEFAULT '0' COMMENT '冷却时间',
  `Description` varchar(2000) DEFAULT NULL COMMENT '技能描述',
  `ProperType` int(11) NOT NULL DEFAULT '0' COMMENT '属性类型(0表示全部,1表pvp,2表示pve)',
  `IsUseOnDead` tinyint(4) NOT NULL DEFAULT '0' COMMENT '死亡是否可使用0:不可用 1:可用',
  `SkillItem` int(11) DEFAULT NULL COMMENT '绝技激活消耗道具',
  `SkillCount` int(11) DEFAULT NULL COMMENT '绝技使用次数',
  `NextSkillTemplateId` int(11) DEFAULT NULL COMMENT '下一个必出技能',
  `FightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '技能增加战力',
  `ExtraDesc` varchar(100) NOT NULL DEFAULT '' COMMENT '额外描述',
  PRIMARY KEY (`TemplateId`),
  KEY `AK_Key_1` (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='技能模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_specialdrop`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_specialdrop` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增长ID',
  `Uid` varchar(255) DEFAULT NULL COMMENT 'Uid,中控判定标志',
  `ActiveId` varchar(36) DEFAULT NULL COMMENT '掉落对应活动ID',
  `ItemTemplateId` int(11) DEFAULT NULL COMMENT '掉落物品模板ID',
  `CampaignIds` varchar(2550) DEFAULT NULL COMMENT '符合副本ID集',
  `NpcGrade` int(11) DEFAULT NULL COMMENT 'NPC等级限制',
  `NpcFilter` varchar(255) DEFAULT NULL COMMENT 'NPC过滤，过滤某些特殊NPC',
  `ValidDate` int(11) DEFAULT NULL COMMENT '掉落物品有效期(分钟)',
  `Count` int(11) DEFAULT NULL COMMENT '掉落数量',
  `Probability` int(11) DEFAULT NULL COMMENT '掉落概率 x/1000000',
  `IsBind` tinyint(1) DEFAULT NULL COMMENT '是否绑定 1:绑定 0:非绑定',
  `IsLogs` tinyint(1) DEFAULT NULL COMMENT '是否记录日志 1:记录 0:不记录',
  `IsTips` tinyint(4) DEFAULT '0' COMMENT '是否需要提示',
  `BeginDate` datetime NOT NULL COMMENT '掉落开始时间',
  `EndDate` datetime NOT NULL COMMENT '掉落结束时间',
  `Param1` varchar(255) DEFAULT NULL COMMENT '扩展字段1',
  `Param2` varchar(255) DEFAULT NULL COMMENT '扩展字段2',
  `Param3` varchar(255) DEFAULT NULL COMMENT '扩展字段3',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='活动特殊掉落物品模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_specialtemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_specialtemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '编号',
  `TemplateName` varchar(255) NOT NULL COMMENT '名称',
  `MasterType` int(11) NOT NULL COMMENT '类型',
  `Grades` int(11) NOT NULL COMMENT '等级',
  `CurProperty` int(11) NOT NULL COMMENT '原属性',
  `TarProperty` int(11) NOT NULL COMMENT '目标属性',
  `ChangeRandom` int(11) NOT NULL COMMENT '转换率',
  `ChangeNumber` int(11) NOT NULL COMMENT '转换值',
  `PawnMasterType` int(11) NOT NULL COMMENT '所需兵种主类型',
  `TakeRandom` int(11) NOT NULL COMMENT '领悟概率',
  `ResPath` varchar(255) NOT NULL COMMENT '资源入径',
  `Description` varchar(255) NOT NULL COMMENT '描述',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='兵种特性模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_startemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_startemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `MasterType` int(11) NOT NULL COMMENT '主类',
  `SonType` int(11) NOT NULL COMMENT '子类',
  `NeedGrades` int(11) NOT NULL DEFAULT '0' COMMENT '所需最小等级',
  `TemplateName` varchar(200) NOT NULL COMMENT '物品名称',
  `Job` varchar(20) NOT NULL DEFAULT '0' COMMENT '职业',
  `Icon` varchar(200) DEFAULT NULL COMMENT '资源路径',
  `Description` varchar(500) DEFAULT NULL COMMENT '物品描述',
  `Profile` int(11) NOT NULL COMMENT '物品品质',
  `SellGold` int(11) NOT NULL COMMENT '出售黄金价格',
  `StarPoint` int(11) NOT NULL DEFAULT '0' COMMENT '星运积分',
  `SellGp` int(11) NOT NULL COMMENT '出售经验',
  `Power` int(11) NOT NULL COMMENT '力量',
  `Agility` int(11) NOT NULL COMMENT '敏捷',
  `Intellect` int(11) NOT NULL COMMENT '智力',
  `Physique` int(11) NOT NULL COMMENT '体质',
  `Captain` int(11) NOT NULL COMMENT '统帅',
  `Attack` int(11) NOT NULL COMMENT '物理攻击',
  `Defence` int(11) NOT NULL COMMENT '物理防御',
  `MagicAttack` int(11) NOT NULL COMMENT '魔法攻击',
  `MagicDefence` int(11) NOT NULL COMMENT '魔法防御',
  `ForceHit` int(11) NOT NULL COMMENT '暴击值',
  `ReCrit` int(11) NOT NULL COMMENT '抗暴击值',
  `Wreck` int(11) NOT NULL COMMENT '破击值',
  `HarmRates` int(11) NOT NULL COMMENT '伤害率',
  `ReharmRates` int(11) NOT NULL COMMENT '免伤率',
  `Live` int(11) NOT NULL COMMENT '生命',
  `Conat` int(11) NOT NULL COMMENT '带兵上限',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '格挡',
  `DefaultSkill` varchar(200) NOT NULL COMMENT '默认技能',
  `CHName` varchar(255) NOT NULL DEFAULT '' COMMENT '中文备注',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_suitetemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_suitetemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `TemplateName` varchar(200) DEFAULT NULL COMMENT '名称',
  `Template1` int(11) NOT NULL COMMENT '装备1',
  `Template2` int(11) NOT NULL COMMENT '装备2',
  `Template3` int(11) NOT NULL COMMENT '装备3',
  `Template4` int(11) NOT NULL COMMENT '装备4',
  `Template5` int(11) NOT NULL COMMENT '装备5',
  `Template6` int(11) NOT NULL COMMENT '装备6',
  `Template7` int(11) NOT NULL COMMENT '装备7',
  `Template8` int(11) NOT NULL COMMENT '装备8',
  `Template1S` int(11) NOT NULL COMMENT '史诗装备1',
  `Template2S` int(11) NOT NULL COMMENT '史诗装备2',
  `Template3S` int(11) NOT NULL COMMENT '史诗装备3',
  `Template4S` int(11) NOT NULL COMMENT '史诗装备4',
  `Template5S` int(11) NOT NULL COMMENT '史诗装备5',
  `Template6S` int(11) NOT NULL COMMENT '史诗装备6',
  `Template7S` int(11) NOT NULL COMMENT '史诗装备7',
  `Template8S` int(11) NOT NULL COMMENT '史诗装备8',
  `Property1` int(11) NOT NULL COMMENT '套装属性1',
  `Property2` int(11) NOT NULL COMMENT '套装属性2',
  `Property3` int(11) NOT NULL COMMENT '套装属性3',
  `Property4` int(11) NOT NULL COMMENT '套装属性4',
  `Property5` int(11) NOT NULL COMMENT '套装属性5',
  `Property6` int(11) NOT NULL COMMENT '套装属性6',
  `Property7` int(11) NOT NULL COMMENT '套装属性7',
  `Property8` int(11) NOT NULL COMMENT '套装属性8',
  `NextTemplateId` int(11) NOT NULL DEFAULT '0' COMMENT '下阶套装模板Id',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='套装模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_sumactive`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_sumactive` (
  `ActiveId` varchar(36) NOT NULL COMMENT '活动ID',
  `ActiveType` smallint(6) NOT NULL COMMENT '活动类型',
  `MainType` int(11) NOT NULL DEFAULT '0' COMMENT '活动主类型',
  `ShowType` smallint(6) DEFAULT '2' COMMENT '显示类型(1为图片显示2为黄色显示3绿色)',
  `BeginDate` datetime NOT NULL COMMENT '开始时间',
  `EndDate` datetime NOT NULL COMMENT '结束时间',
  `Title` varchar(50) NOT NULL COMMENT '活动标题',
  `Detail` varchar(1024) NOT NULL COMMENT '活动描述',
  `ConditionDetail` varchar(512) NOT NULL COMMENT '条件描述',
  `GetWay` tinyint(4) NOT NULL COMMENT '领取方式',
  `StartTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '活动开始显示时间',
  `StopTime` datetime NOT NULL DEFAULT '2999-01-01 00:00:00' COMMENT '活动结束显示时间',
  `params` text COMMENT '中控参数',
  `sort` smallint(6) NOT NULL DEFAULT '0' COMMENT '排序序号',
  `InValid` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否有效',
  PRIMARY KEY (`ActiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='精彩活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_sumactivecondition`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_sumactivecondition` (
  `PackageId` varchar(36) NOT NULL COMMENT '礼包ID',
  `ConditionId` smallint(6) NOT NULL COMMENT '条件ID',
  `Target` int(11) NOT NULL COMMENT '目标',
  `Bak` int(11) NOT NULL COMMENT '附加条件',
  `Bak2` int(11) NOT NULL DEFAULT '0' COMMENT '附加条件2',
  `Bak3` int(11) NOT NULL DEFAULT '0' COMMENT '附加条件3',
  `Bak4` int(11) NOT NULL DEFAULT '0' COMMENT '附加条件4'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='精彩活动礼包条件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_sumactiveitem`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_sumactiveitem` (
  `PackageId` varchar(36) NOT NULL COMMENT '礼包ID',
  `TemplateId` int(11) NOT NULL COMMENT '模版ID',
  `TemplateType` tinyint(4) NOT NULL COMMENT '模版类型',
  `Count` int(11) NOT NULL COMMENT '数量',
  `IsBind` tinyint(4) NOT NULL COMMENT '是否绑定',
  `Length` tinyint(4) NOT NULL COMMENT '强化等级',
  `Job` tinyint(4) NOT NULL COMMENT '职业',
  `exp` int(11) NOT NULL DEFAULT '0' COMMENT '经验',
  `Order1` int(11) NOT NULL COMMENT '序号'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='精彩活动礼包奖励';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_sumactivepackage`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_sumactivepackage` (
  `ActiveId` varchar(36) NOT NULL COMMENT '活动ID',
  `PackageId` varchar(36) NOT NULL COMMENT '礼包ID',
  `Order` tinyint(4) NOT NULL COMMENT '排序',
  PRIMARY KEY (`ActiveId`,`PackageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='精彩活动礼包';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_supervip`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_supervip` (
  `Id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `ProxySiteName` varchar(32) NOT NULL COMMENT '代理商Site',
  `ProxyServerId` smallint(6) NOT NULL DEFAULT '0' COMMENT '区服ID',
  `SuperVipQQ` varchar(32) NOT NULL COMMENT 'vipQQ',
  `GovQQ` varchar(32) NOT NULL COMMENT '官方QQ',
  `HeadPath` varchar(64) NOT NULL DEFAULT '' COMMENT '美女头像Path',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='超级VIP';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_supervip_config`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_supervip_config` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `ConfigName` varchar(200) NOT NULL COMMENT '名称',
  `ConfigValue` varchar(2000) NOT NULL,
  `Description` varchar(200) NOT NULL,
  `IsClient` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1客户端可见 0不可见',
  UNIQUE KEY `Index_1` (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='超级vip配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_switch`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_switch` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `Type` int(11) NOT NULL COMMENT '类型',
  `Descript` varchar(50) NOT NULL COMMENT '描述',
  `IsOpen` tinyint(4) NOT NULL COMMENT '是否开启(1:开启)',
  `BeginTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '开始时间',
  `EndTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '结束时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1000 DEFAULT CHARSET=utf8 COMMENT='开关表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_swornjoin`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_swornjoin` (
  `TemplateId` int(11) NOT NULL DEFAULT '0' COMMENT '模板Id',
  `KnightTempId` int(11) NOT NULL DEFAULT '0' COMMENT '侠客模板Id',
  `SwornLevel` int(11) NOT NULL DEFAULT '0' COMMENT '好感度等级',
  `SwornStep` int(11) NOT NULL DEFAULT '0' COMMENT '好感度阶段',
  `APOutAttack` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄外攻',
  `APOutDefence` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄外防',
  `APInAttack` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄内攻',
  `APInDefence` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄内防',
  `APLive` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄生命',
  `APParry` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄招架',
  `APForceHit` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄暴击',
  `APRecrit` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄抗暴击',
  `APWreck` int(11) NOT NULL DEFAULT '0' COMMENT '增加玩家英雄破击',
  `AKOutAttack` int(11) NOT NULL DEFAULT '0' COMMENT '增加侠客外攻',
  `AKOutDefence` int(11) NOT NULL DEFAULT '0' COMMENT '增加侠客外防',
  `AKInAttack` int(11) NOT NULL DEFAULT '0' COMMENT '增加侠客内攻',
  `AKInDefence` int(11) NOT NULL DEFAULT '0' COMMENT '增加侠客内防',
  `AKLive` int(11) NOT NULL DEFAULT '0' COMMENT '增加侠客生命',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='结义加成';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_sysactive`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_sysactive` (
  `Id` varchar(36) NOT NULL COMMENT '活动ID',
  `ActiveType` int(11) NOT NULL COMMENT '活动类型',
  `Title` varchar(50) NOT NULL COMMENT '活动标题',
  `BeginDay` date NOT NULL COMMENT '开始日期',
  `EndDay` date NOT NULL COMMENT '结束日期',
  `BeginTime` time NOT NULL COMMENT '开始时间',
  `EndTime` time NOT NULL COMMENT '结束时间',
  `Param1` int(11) NOT NULL DEFAULT '0' COMMENT '参数1',
  `Param2` int(11) NOT NULL DEFAULT '0' COMMENT '参数2',
  `params` text COMMENT '中控参数',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='无限塔活动表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_sysarmytemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_sysarmytemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板ID',
  `TemplateName` varchar(20) NOT NULL COMMENT '模板名称',
  `Type` smallint(4) NOT NULL COMMENT '系统部队类型',
  `Heros` varchar(50) DEFAULT NULL COMMENT '英雄模板ID及站位',
  `Soldiers` varchar(50) DEFAULT NULL COMMENT '士兵模板ID及站位',
  `Knights` varchar(50) DEFAULT NULL COMMENT '侠客模板ID及站位',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统部队模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_sysnotice`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_sysnotice` (
  `noticeId` varchar(36) NOT NULL COMMENT '公告ID',
  `title` varchar(50) NOT NULL COMMENT '公告标题',
  `content` varchar(1024) NOT NULL COMMENT '公告内容',
  `type` tinyint(4) NOT NULL COMMENT '公告类型',
  `startTime` datetime NOT NULL COMMENT '开始时间',
  `endTime` datetime NOT NULL COMMENT '结束时间',
  `interval` int(11) NOT NULL COMMENT '时间间隔(分)',
  `sender` varchar(36) NOT NULL COMMENT '发送人',
  `status` tinyint(4) NOT NULL COMMENT '状态(1:激活 0:停用)',
  PRIMARY KEY (`noticeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统公告表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_talenteffecttemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_talenteffecttemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `EffSkillType` int(11) NOT NULL COMMENT '影响指定类型技能 -1：影响所有技能 非0：影响指定sonType类型技能',
  `EffSpPercent` int(11) NOT NULL COMMENT '影响怒气的消耗百分比',
  `EffSpValue` int(11) NOT NULL COMMENT '影响怒气的消耗固定值',
  `EffDamPercent` int(11) NOT NULL COMMENT '影响技能伤害值百分比',
  `EffDamValue` int(11) NOT NULL COMMENT '影响技能伤害固定值',
  `EffCdPercent` int(11) NOT NULL COMMENT '影响技能的冷却时间百分比',
  `EffCdValue` int(11) NOT NULL COMMENT '影响技能的冷却时间固定值',
  `EffCtPercent` int(11) NOT NULL COMMENT '影响技能施法时间百分比',
  `EffCtValue` int(11) NOT NULL COMMENT '影响技能施法时间固定值',
  `EffCriValue` int(11) NOT NULL COMMENT '影响技能的暴击率',
  `EffAttackObject` int(11) NOT NULL COMMENT '影响技能的攻击对象 (单体 全体 随机) -1:不影响攻击对象',
  `EffBuffer` int(11) NOT NULL COMMENT '影响携带Buffer 0：代表直接加	1：代表替换',
  `EffBufferIds` varchar(100) NOT NULL COMMENT '影响携带Buffer的ID	一个或多个',
  `EffBufferType` int(11) NOT NULL COMMENT '影响指定类型BUFF	0：代表不影响战斗Buffer 非0：指定Buffer的类型',
  `EffBuffPercent` int(11) NOT NULL COMMENT '影响作用效果值：百分比',
  `EffBuffValue` int(11) NOT NULL COMMENT '影响作用效果值：具体数值',
  `EffRandPercent` int(11) NOT NULL COMMENT '影响Buffer的触发机率百分比',
  `EffRandValue` int(11) NOT NULL COMMENT '影响Buffer的触发机率固定值',
  `EffCountPercent` int(11) NOT NULL COMMENT '影响Buffer的持续时间百分比',
  `EffCountValue` int(11) NOT NULL COMMENT '影响Buffer的持续时间固定值',
  `EffIsActive` int(11) NOT NULL COMMENT '影响玩家产生或受到的指定BUFF类型 0：玩家产生 1：玩家受到',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='技能模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_transformtemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_transformtemplate` (
  `TransformId` int(11) NOT NULL COMMENT '转换编号',
  `Material1` int(11) NOT NULL COMMENT '材料1',
  `Material2` int(11) NOT NULL COMMENT '材料2',
  `Material3` int(11) NOT NULL COMMENT '材料3',
  `Material4` int(11) NOT NULL COMMENT '材料4',
  `Material5` int(11) NOT NULL COMMENT '材料5',
  `Material6` int(11) NOT NULL COMMENT '材料6',
  `Material7` int(11) NOT NULL COMMENT '材料7',
  `Material8` int(11) NOT NULL COMMENT '材料8',
  `Material9` int(11) DEFAULT NULL COMMENT '材料9',
  `CostGold` int(11) NOT NULL COMMENT '转换花费金币',
  PRIMARY KEY (`TransformId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品转换模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_universalactive`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_universalactive` (
  `ActiveId` int(11) NOT NULL AUTO_INCREMENT COMMENT '活动ID',
  `StartTime` datetime NOT NULL COMMENT '活动开始时间',
  `EndTime` datetime NOT NULL COMMENT '活动结束',
  `ActiveType` int(11) NOT NULL COMMENT '活动类型',
  `ActiveName` varchar(50) NOT NULL COMMENT '活动名称',
  `ActiveContent` varchar(300) NOT NULL DEFAULT '' COMMENT '活动内容',
  `Field1` int(11) DEFAULT '0' COMMENT '规则字段1',
  `Field2` int(11) DEFAULT '0' COMMENT '规则字段2',
  `Field3` int(11) DEFAULT '0' COMMENT '规则字段3',
  `Field4` int(11) DEFAULT '0' COMMENT '规则字段4',
  `Field5` int(11) DEFAULT '0' COMMENT '规则字段5',
  `Field6` int(11) DEFAULT '0' COMMENT '规则字段6',
  `Field7` int(11) DEFAULT '0' COMMENT '规则字段7',
  `Field8` int(11) DEFAULT '0' COMMENT '规则字段8',
  `Field9` int(11) DEFAULT '0' COMMENT '规则字段9',
  `Field10` int(11) DEFAULT '0' COMMENT '规则字段10',
  `Field11` int(11) DEFAULT '0' COMMENT '规则字段11',
  `Field12` int(11) DEFAULT '0' COMMENT '规则字段12',
  `Field13` int(11) DEFAULT '0' COMMENT '规则字段13',
  `Field14` varchar(50) NOT NULL DEFAULT '' COMMENT '问卷ID',
  PRIMARY KEY (`ActiveId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='通用活动表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_universalreward`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_universalreward` (
  `templateId` int(11) NOT NULL AUTO_INCREMENT COMMENT '模板ID',
  `itemId` int(11) NOT NULL COMMENT '奖励的物品id',
  `itemCount` int(11) NOT NULL COMMENT '奖励数量',
  `itemName` varchar(50) DEFAULT NULL COMMENT '奖励名称',
  `type` tinyint(4) NOT NULL COMMENT '物品类型',
  `activeId` varchar(36) NOT NULL DEFAULT '000000' COMMENT '活动id',
  PRIMARY KEY (`templateId`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8 COMMENT='问卷奖励表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_upgradetemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_upgradetemplate` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `Types` int(11) NOT NULL COMMENT '类型',
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `Grades` int(11) NOT NULL COMMENT '等级',
  `Data` varchar(20) NOT NULL COMMENT '数值',
  `TemplateName` varchar(50) DEFAULT NULL COMMENT '模板名称',
  `ActiveObject` int(11) NOT NULL COMMENT '激活对象',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='兵种升级模板';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_vehiclebufftemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_vehiclebufftemplate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'buff模版Id',
  `EffectType` tinyint(4) NOT NULL COMMENT '效果类型',
  `EffectValue` int(11) NOT NULL COMMENT '效果威力',
  `EffectPercent` int(11) NOT NULL COMMENT '效果威力（百分比）',
  `TogglePercent` int(11) NOT NULL COMMENT '触发几率(有一定的几率触发效果)',
  `Duration` int(11) DEFAULT NULL COMMENT '持续时间',
  `Description` varchar(255) NOT NULL COMMENT '描述',
  `Name` varchar(255) NOT NULL COMMENT '名称',
  `Icon` varchar(255) NOT NULL,
  `PrepareTime` int(11) DEFAULT NULL,
  `Interval` int(11) DEFAULT NULL,
  `LastEffect` varchar(255) NOT NULL COMMENT '效果资源路径',
  `SonType` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='载具buff 模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_vehicleobjecttemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_vehicleobjecttemplate` (
  `Id` int(11) NOT NULL COMMENT '载具模版id',
  `Name` varchar(500) NOT NULL COMMENT '载具名',
  `Attack` int(11) NOT NULL COMMENT '攻击力',
  `Defence` int(11) NOT NULL COMMENT '防御力',
  `Hp` int(11) NOT NULL COMMENT '生命值',
  `Avatar` varchar(200) DEFAULT NULL COMMENT '载具形象',
  `Dodge` int(6) NOT NULL COMMENT '闪避',
  `Description` varchar(255) DEFAULT NULL COMMENT '载具描述',
  `NormalSkill` int(11) NOT NULL COMMENT '普通技能',
  `GeniusSkill` int(11) NOT NULL COMMENT '天赋技能',
  `Speed` int(11) NOT NULL COMMENT '移动速度',
  `NeedDiamond` int(11) DEFAULT NULL COMMENT '钻石购价',
  `NeedGrades` int(11) NOT NULL COMMENT '所需等级',
  `Sort` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地图对象模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_vehicleskilltemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_vehicleskilltemplate` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '模板编号',
  `Name` varchar(200) DEFAULT NULL COMMENT '技能名称',
  `Icons` varchar(200) DEFAULT NULL COMMENT '图标',
  `ActionId` int(11) DEFAULT NULL COMMENT '技能释放光效',
  `CastTime` int(11) NOT NULL DEFAULT '0' COMMENT '释放时间(毫秒)',
  `CoolDown` int(11) NOT NULL DEFAULT '0' COMMENT '冷却时间(毫秒)',
  `Power` int(11) NOT NULL DEFAULT '0' COMMENT '技能威力',
  `Power2` int(11) NOT NULL COMMENT '技能威力2',
  `Buffs` varchar(11) NOT NULL DEFAULT '0' COMMENT '附加buff',
  `Description` varchar(2000) DEFAULT NULL COMMENT '技能描述',
  `AttackRange` smallint(6) NOT NULL DEFAULT '0' COMMENT '攻击距离(格子数)',
  `DamageCoverage` smallint(6) NOT NULL DEFAULT '0' COMMENT '伤害范围(单位:圆半径)',
  `Maximum` int(11) NOT NULL COMMENT '最大使用次数',
  `InjuryEffect` smallint(6) NOT NULL DEFAULT '0' COMMENT '伤害效果(0:单体1:范围)',
  `IFF` tinyint(4) NOT NULL COMMENT '敌我识别（1 - 敌方  2 - 友军）',
  `SonType` int(11) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=1005 DEFAULT CHARSET=utf8 COMMENT='载具技能模板表';
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
-- Table structure for table `t_s_vipprerogativetemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_vipprerogativetemplate` (
  `Id` int(11) NOT NULL COMMENT 'vip编号',
  `Name` varchar(50) NOT NULL COMMENT 'vip特权名称',
  `Type` int(11) NOT NULL COMMENT 'vip特权类型',
  `Grade` int(11) NOT NULL COMMENT 'vip等级',
  `Para1` int(11) NOT NULL DEFAULT '0' COMMENT '预留1',
  `Para2` int(11) NOT NULL DEFAULT '0' COMMENT '预留2',
  `Para3` varchar(50) NOT NULL DEFAULT '' COMMENT '预留3',
  `Icon` varchar(100) DEFAULT NULL COMMENT '图标',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Vip模版表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_visitetemplate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_visitetemplate` (
  `TemplateId` int(11) NOT NULL COMMENT '寻访模板ID',
  `TemplateName` varchar(50) NOT NULL COMMENT '模板名称',
  `DropId` int(11) NOT NULL COMMENT '掉落ID',
  `Icon` varchar(100) DEFAULT NULL COMMENT '图标'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='寻访地点配置表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_whitelist`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_whitelist` (
  `Ip` varchar(15) NOT NULL COMMENT '白名单IP',
  `Adder` varchar(15) DEFAULT NULL COMMENT '添加人',
  `Addtime` datetime DEFAULT NULL COMMENT '添加时间',
  PRIMARY KEY (`Ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='IP白名单';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_s_worldbossactive`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_s_worldbossactive` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `Title` varchar(200) NOT NULL COMMENT '标题',
  `Detail` varchar(2000) NOT NULL COMMENT '详细说明',
  `Type` int(11) NOT NULL COMMENT '类型',
  `NeedWoundPercent` smallint(11) NOT NULL DEFAULT '0' COMMENT '所需伤害百分比',
  `NeedWoundValue` int(11) NOT NULL DEFAULT '0' COMMENT '所需伤害值',
  `IsOpen` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否打开',
  `RewardCrystal` int(11) NOT NULL DEFAULT '0' COMMENT '奖励光晶',
  `RewardGold` int(11) NOT NULL DEFAULT '0' COMMENT '奖励黄金',
  `RewardStrategy` int(11) NOT NULL DEFAULT '0' COMMENT '奖励战魂',
  `RewardGifts` int(11) NOT NULL DEFAULT '0' COMMENT '奖励礼金',
  `RewardGiftBagId` int(11) NOT NULL DEFAULT '0' COMMENT '奖励礼包id',
  `Param1` int(11) NOT NULL COMMENT '参数（世界boss副本id）',
  `Param2` varchar(200) DEFAULT NULL COMMENT '奖励集合',
  `BeginDay` date NOT NULL DEFAULT '2000-01-01' COMMENT '开始日期',
  `EndDay` date NOT NULL DEFAULT '2000-01-01' COMMENT '结束日期',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='世界Boss活动';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_achieve`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_achieve` (
  `UserId` int(11) NOT NULL COMMENT '用户id',
  `Type` int(11) NOT NULL COMMENT '成就类型',
  `AchieveName` varchar(200) NOT NULL COMMENT '成就名称',
  `AchieveValue` int(11) NOT NULL COMMENT '成就值',
  PRIMARY KEY (`UserId`,`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='成就表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_activerecord`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_activerecord` (
  `ActiveId` varchar(36) NOT NULL COMMENT '活动Id',
  `UserId` int(11) DEFAULT NULL COMMENT '用户Id',
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户活动记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_advertise`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_advertise` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL COMMENT '帐号',
  `Site` varchar(30) DEFAULT NULL COMMENT '登录站点',
  `AdvertiseFrom` varchar(30) DEFAULT NULL COMMENT '广告渠道',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='广告渠道';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_answerquestionorder`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_answerquestionorder` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `NickName` varchar(50) NOT NULL COMMENT '昵称',
  `CurOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前积分排名',
  `CurrentScore` int(11) NOT NULL DEFAULT '0' COMMENT '当前积分',
  `AQDate` varchar(50) NOT NULL COMMENT '答题时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='答题排行榜';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_appellrecord`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_appellrecord` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `TemplateId` int(11) NOT NULL COMMENT '称号ID',
  `IsComplete` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否完成',
  `Value` varchar(255) NOT NULL DEFAULT '' COMMENT '进度',
  `Getted` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否已手动领取(1是，0否)',
  `ExpirtDate` datetime NOT NULL DEFAULT '2999-01-01 00:00:00' COMMENT '称号过期时间',
  PRIMARY KEY (`UserId`,`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户称号记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_army`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_army` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `NickName` varchar(50) DEFAULT NULL COMMENT '所属领主',
  `UserId` int(11) NOT NULL DEFAULT '0' COMMENT '所属用户',
  `IsExist` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否存在',
  `HeroId` int(11) NOT NULL DEFAULT '0' COMMENT '英雄',
  `CreateDate` datetime NOT NULL COMMENT '创建日期',
  `Typs` smallint(6) NOT NULL DEFAULT '0' COMMENT '部队类型',
  `UpdateDate` datetime NOT NULL COMMENT '更新时间',
  `MapId` int(11) NOT NULL COMMENT '地图编号',
  `StartPosX` int(11) NOT NULL DEFAULT '0' COMMENT '起点X坐标',
  `StartPosY` int(11) NOT NULL DEFAULT '0' COMMENT '起点Y坐标',
  `CurPosX` int(11) NOT NULL DEFAULT '0' COMMENT '当前X坐标',
  `CurPosY` int(11) NOT NULL DEFAULT '0' COMMENT '当前Y坐标',
  `IsSupport` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否自动补兵',
  `EndPosX` int(11) NOT NULL DEFAULT '0' COMMENT '结束X坐标',
  `EndPosY` int(11) NOT NULL DEFAULT '0' COMMENT '结束Y坐标',
  `ChargeSharpId` int(11) NOT NULL DEFAULT '0' COMMENT '变身ID',
  `MountTempId` int(11) DEFAULT NULL COMMENT '坐骑avatarID',
  `KnightTempId` int(11) DEFAULT NULL COMMENT '跟随侠客模板id',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部队';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_armypawn`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_armypawn` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '所属用户',
  `ArmyId` int(11) NOT NULL COMMENT '所属部队',
  `TemplateId` int(11) NOT NULL COMMENT '兵种模板',
  `OwnPawns` int(11) NOT NULL COMMENT '兵种数量',
  `CreateDate` datetime NOT NULL COMMENT '创建日期',
  `IsExist` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否存在',
  `Sites` smallint(6) NOT NULL COMMENT '存放位置',
  `FightPos` int(11) NOT NULL DEFAULT '2' COMMENT '站位',
  `SpecialTempIds` varchar(100) DEFAULT NULL COMMENT '兵种特性',
  `ComprehendTempIds` varchar(100) DEFAULT NULL COMMENT '领悟特性',
  `BlessNum` int(11) NOT NULL DEFAULT '0' COMMENT '祝福值',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`,`ArmyId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部队名细';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_bloodybattle`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_bloodybattle` (
  `TemplateId` int(11) NOT NULL COMMENT '关卡模板ID',
  `OccupyUserId` int(11) DEFAULT '0' COMMENT '占领顽疾ID',
  `OccupyTime` datetime DEFAULT NULL COMMENT '占领开始时间',
  `FirstDownUserId` int(11) DEFAULT '0' COMMENT '首杀玩家',
  `FirstDownNickName` varchar(50) DEFAULT NULL COMMENT '首杀玩家昵称',
  `BestUserId` int(11) DEFAULT '0' COMMENT '最佳击杀玩家ID',
  `BestNickName` varchar(50) DEFAULT NULL COMMENT '最佳击杀玩家昵称',
  `BestScore` int(11) DEFAULT '0' COMMENT '最佳击杀评分',
  PRIMARY KEY (`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='血战灵鹫关卡记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_bottlepass`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_bottlepass` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `Msg` varchar(255) NOT NULL DEFAULT '' COMMENT '递传信息',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6710 DEFAULT CHARSET=utf8 COMMENT='魔罐信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_buffer`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_buffer` (
  `UserId` int(11) NOT NULL COMMENT '用户Id',
  `CampaignId` int(11) NOT NULL COMMENT '副本id',
  `BufferId` int(11) DEFAULT NULL COMMENT '增益id',
  `LastUpdateTime` datetime DEFAULT NULL COMMENT '上次更新时间',
  `IsExist` tinyint(1) DEFAULT NULL COMMENT '是否存在',
  PRIMARY KEY (`UserId`,`CampaignId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='世界BossBuffer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_building`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_building` (
  `BuildingId` int(11) NOT NULL COMMENT '建筑编号',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `CastleId` int(11) DEFAULT NULL COMMENT '城堡编号',
  `TemplateId` int(11) NOT NULL COMMENT '建筑模板编号',
  `CreateDate` datetime NOT NULL COMMENT '创建时间',
  `IsExist` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否存在',
  `Property1` int(11) NOT NULL DEFAULT '0' COMMENT '属性一',
  `Property2` int(11) NOT NULL DEFAULT '0' COMMENT '属性二',
  PRIMARY KEY (`BuildingId`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户建筑';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_buildingorder`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_buildingorder` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `OrderId` int(11) NOT NULL COMMENT '队列编号',
  `OrderType` int(11) NOT NULL COMMENT '队列类型',
  `BeginTime` datetime NOT NULL COMMENT '开始时间',
  `NeedTime` int(11) NOT NULL COMMENT '所需时间',
  `RemainTime` int(11) NOT NULL COMMENT '剩余时间',
  PRIMARY KEY (`UserId`,`OrderId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户建筑队列';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_buydata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_buydata` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `ItemId` int(11) NOT NULL COMMENT '商城编号',
  `Counts` int(11) NOT NULL COMMENT '购买数量',
  `BuyDate` date NOT NULL COMMENT '日期',
  `IsDiscount` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否打折商城',
  KEY `UserId` (`BuyDate`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户购买历史记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_campaignsweep`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_campaignsweep` (
  `UserId` int(11) NOT NULL COMMENT '所属用户',
  `CampaignId` int(11) NOT NULL COMMENT '副本ID',
  `Count` tinyint(4) DEFAULT '0' COMMENT '扫荡次数',
  `FinishCount` int(11) DEFAULT '0' COMMENT '完成次数',
  `StartTime` datetime NOT NULL COMMENT '开始时间',
  `EndTime` datetime NOT NULL COMMENT '结束时间',
  `SweepType` tinyint(4) NOT NULL COMMENT '扫荡类型',
  `EIndex` tinyint(4) unsigned DEFAULT '0' COMMENT '结束层数',
  `TotalGp` int(11) NOT NULL DEFAULT '0' COMMENT '累计经验',
  `DropItems` varchar(500) DEFAULT NULL COMMENT '掉落记录',
  `StartWeary` tinyint(4) unsigned DEFAULT NULL COMMENT '点击扫荡后当前体力值',
  `FlagTime` datetime NOT NULL COMMENT '标识时间',
  `OpenSilverBox` tinyint(4) NOT NULL DEFAULT '0' COMMENT '开启白银宝箱',
  `OpenSecretBox` tinyint(4) NOT NULL DEFAULT '0' COMMENT '开启神秘宝箱',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户扫荡信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_castles`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_castles` (
  `CastleId` int(11) NOT NULL COMMENT '城堡编号',
  `NodeId` int(11) DEFAULT NULL COMMENT '节点编号',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `CastleName` varchar(200) NOT NULL COMMENT '城堡名称',
  `IsExist` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否存在',
  `Occupant` int(11) NOT NULL DEFAULT '0' COMMENT '占领方',
  `FlagName` varchar(50) DEFAULT NULL COMMENT '插旗玩家昵称',
  `Population` int(11) NOT NULL DEFAULT '0' COMMENT '人口',
  `MaxPopulation` int(11) NOT NULL DEFAULT '0' COMMENT '人口上限',
  `IsDisable` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否禁城',
  `DisableDate` datetime DEFAULT NULL COMMENT '禁城时间',
  `Types` smallint(6) NOT NULL DEFAULT '0' COMMENT '类型。村庄，城堡，要塞，中立城',
  `CrystalsYield` int(11) NOT NULL DEFAULT '0' COMMENT '魔晶基础产量',
  `GoldYield` int(11) NOT NULL DEFAULT '0' COMMENT '黄金基础产量',
  `LastCalcTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后一次计算资源的时间',
  `AlehouseTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '酒馆上次刷新时间',
  `MoveTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '乔迁开始时间',
  `ConsortiaId` int(11) NOT NULL DEFAULT '0',
  `ConsortiaName` varchar(50) DEFAULT NULL,
  `CostEnergy` int(11) NOT NULL DEFAULT '0' COMMENT '当前使用的能量值',
  `VipCastleView` int(11) NOT NULL COMMENT 'vip样式',
  `VipType` int(11) NOT NULL COMMENT 'vip类型(0:普通,1:紫金)',
  `ExpairDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '免战过期时间',
  `FlagTime` int(11) DEFAULT '0' COMMENT '插旗时间',
  `FlagPosX` int(11) NOT NULL DEFAULT '0' COMMENT '插旗者的x坐标',
  `FlagPosY` int(11) NOT NULL DEFAULT '0' COMMENT '插旗者的y坐标',
  `FlagGrade` int(11) NOT NULL DEFAULT '0' COMMENT '插旗者的等级',
  `FlagFightPower` int(11) NOT NULL DEFAULT '0' COMMENT '插旗者的战力',
  `FlagPicId` int(11) NOT NULL DEFAULT '0' COMMENT '插旗者的头像id',
  `FlagUserId` int(11) NOT NULL DEFAULT '0' COMMENT '插旗者的userid',
  PRIMARY KEY (`CastleId`),
  KEY `Index_1` (`NodeId`),
  KEY `indx1` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户城堡';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_cdkeyrecord`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_cdkeyrecord` (
  `CDKey` varchar(255) NOT NULL COMMENT '万能码key',
  `ActiveType` int(11) NOT NULL COMMENT ' 活动类型',
  `UseCount` int(11) NOT NULL DEFAULT '0' COMMENT '使用次数',
  `InValid` int(11) NOT NULL DEFAULT '0' COMMENT '是否有效',
  PRIMARY KEY (`CDKey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='万能码使用记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_channel`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_channel` (
  `UserId` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `MasterType` int(11) NOT NULL DEFAULT '0' COMMENT '主类型',
  `CurSonType` int(11) DEFAULT NULL COMMENT '当前子类型',
  `BlessValue` int(11) DEFAULT NULL COMMENT '当前祝福值',
  `MasterGrade` int(11) DEFAULT NULL COMMENT '经脉等级',
  PRIMARY KEY (`UserId`,`MasterType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户经脉表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_chargetreasure`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_chargetreasure` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `PosStatus` int(11) NOT NULL COMMENT '位置状态(25个位置)',
  `PosIndex` tinyint(4) NOT NULL COMMENT '当时位置索引',
  `Count` int(11) NOT NULL COMMENT '剩余寻宝次数',
  `NeedPoint` int(11) NOT NULL COMMENT '增加次数需要充值元宝数',
  `LastTime` datetime NOT NULL COMMENT '上次寻宝时间 ',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='充值寻宝';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_clickdata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_clickdata` (
  `UserId` int(11) NOT NULL COMMENT '用户id',
  `Keys` varchar(50) NOT NULL COMMENT 'key',
  `KeyData` int(11) DEFAULT NULL COMMENT 'key值',
  `ChangeTime` datetime NOT NULL COMMENT '改变时间',
  PRIMARY KEY (`UserId`,`Keys`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户点击行为表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_consortia`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_consortia` (
  `ConsortiaID` int(11) NOT NULL COMMENT '公会编号',
  `ConsortiaName` varchar(50) NOT NULL COMMENT '公会名称',
  `CreatorID` int(11) NOT NULL COMMENT '创建者',
  `CreatorName` varchar(50) DEFAULT '0' COMMENT '创建人',
  `CreateDate` datetime DEFAULT NULL COMMENT '创建日期',
  `ChairmanID` int(11) NOT NULL DEFAULT '0' COMMENT '会长编号',
  `ChairmanName` varchar(50) DEFAULT NULL COMMENT '会长昵称',
  `Description` varchar(300) DEFAULT NULL COMMENT '会公描述',
  `Placard` varchar(300) DEFAULT NULL COMMENT '公会公告',
  `Levels` smallint(6) NOT NULL DEFAULT '0' COMMENT '等级',
  `AddCount` smallint(6) NOT NULL COMMENT '公会上限扩展人数',
  `CurrentCount` smallint(6) NOT NULL COMMENT '公会当前人数',
  `Offer` int(11) NOT NULL COMMENT '公会贡献值',
  `TotalOffer` int(11) NOT NULL COMMENT '公会累计贡献值',
  `ActiveValue` int(11) NOT NULL DEFAULT '0' COMMENT '会公活跃度',
  `Honor` int(11) NOT NULL COMMENT '公会荣誉',
  `OpenApp` tinyint(1) NOT NULL COMMENT '是否开放加入公会',
  `KickDate` datetime NOT NULL COMMENT '最近踢人时间',
  `KickCount` smallint(6) NOT NULL COMMENT '最近踢人数量',
  `FightPower` int(11) NOT NULL COMMENT '战斗力',
  `ShopLevel` smallint(6) NOT NULL DEFAULT '0' COMMENT '商城等级',
  `StoreLevel` smallint(6) NOT NULL DEFAULT '0' COMMENT '保管箱等级',
  `AltarLevel` smallint(6) NOT NULL DEFAULT '0' COMMENT '祭坛等级',
  `SchoolLevel` smallint(6) NOT NULL DEFAULT '0' COMMENT '技能研究所等级',
  `OutAttackLevel` smallint(6) NOT NULL DEFAULT '0' COMMENT '外攻等级',
  `OutDefenceLevel` smallint(6) NOT NULL DEFAULT '0' COMMENT '外防等级',
  `InAttackLevel` smallint(6) NOT NULL DEFAULT '0' COMMENT '内攻等级',
  `InDefenseLevel` smallint(6) NOT NULL DEFAULT '0' COMMENT '内防等级',
  `ActiveData` int(11) NOT NULL DEFAULT '0' COMMENT '公会活跃度',
  `LiveLevel` smallint(6) NOT NULL DEFAULT '0' COMMENT '生命等级',
  `ForcehitLevel` smallint(6) NOT NULL DEFAULT '0' COMMENT '暴击等级',
  `RecritLevel` smallint(6) NOT NULL DEFAULT '0' COMMENT '抗暴等级',
  `ParryLevel` smallint(6) NOT NULL DEFAULT '0' COMMENT '招架等级',
  `WreckLevel` smallint(6) NOT NULL DEFAULT '0' COMMENT '破击等级',
  `OwnWildlands` smallint(6) NOT NULL COMMENT '当前占领矿场数',
  `DeductDate` datetime NOT NULL COMMENT '扣费日期',
  `WarnDate` datetime NOT NULL COMMENT '警告日期',
  `CodeType` smallint(6) NOT NULL COMMENT '冷却类型',
  `CodeBeginDate` datetime NOT NULL COMMENT '冷却开始时间',
  `CodeNeedDate` bigint(20) NOT NULL COMMENT '冷却所需时间',
  `QuitDate` datetime NOT NULL COMMENT '公会解散时间',
  `QuitResult` varchar(50) NOT NULL COMMENT '解散原因',
  `IsRobot` tinyint(1) NOT NULL COMMENT '机器人工会',
  `IsExist` tinyint(1) NOT NULL COMMENT '是否存在',
  `VotingDate` datetime NOT NULL DEFAULT '2999-01-01 00:00:00' COMMENT '投票开始时间',
  `VotingId` int(11) NOT NULL DEFAULT '0' COMMENT '投票序号',
  `VotingStatic` smallint(6) NOT NULL DEFAULT '0' COMMENT '投票',
  `Death` int(11) NOT NULL DEFAULT '0' COMMENT '死亡次数',
  `GroupPlacard` varchar(70) DEFAULT NULL COMMENT '公会群公告',
  `AltarDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '祭坛开始时间',
  `AltarState` smallint(6) NOT NULL DEFAULT '0' COMMENT '祭坛状态',
  `AltarMaxWaveNum` smallint(6) NOT NULL DEFAULT '0' COMMENT '祭坛最高到达波数',
  `ConsortiaType` tinyint(4) NOT NULL DEFAULT '0' COMMENT '帮会类型（0普通1vip）',
  PRIMARY KEY (`ConsortiaID`),
  UNIQUE KEY `Index_1` (`ConsortiaName`),
  KEY `Index_2` (`Levels`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公会表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_consortiabox`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_consortiabox` (
  `TemplateId` int(11) NOT NULL COMMENT '物品模板ID',
  `ConsortiaId` int(11) NOT NULL COMMENT '所属公会ID',
  `Count` int(11) NOT NULL COMMENT '该物品当前数量',
  `AddTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后添加时间',
  `RemoveTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后分配时间',
  KEY `Index_1` (`TemplateId`,`ConsortiaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公会宝箱物品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_consortiaduty`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_consortiaduty` (
  `ConsortiaId` int(11) NOT NULL COMMENT '公会编号',
  `Levels` tinyint(4) NOT NULL COMMENT '等级',
  `DutyName` varchar(100) NOT NULL COMMENT '职责名称',
  `Rights` binary(200) NOT NULL COMMENT '权限',
  `IsExist` tinyint(1) NOT NULL COMMENT '是否存在',
  PRIMARY KEY (`ConsortiaId`,`Levels`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公会职责';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_consortiaevent`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_consortiaevent` (
  `Id` int(11) NOT NULL COMMENT '序号',
  `ConsortiaId` int(11) DEFAULT NULL COMMENT '公会编号',
  `Remark` varchar(200) DEFAULT NULL COMMENT '备注',
  `CreateDate` datetime DEFAULT NULL COMMENT '创建日期',
  `Types` smallint(6) DEFAULT NULL COMMENT '事件类型',
  `IsExist` tinyint(1) DEFAULT NULL COMMENT '是否存在',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`ConsortiaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公会事件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_consortiafam`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_consortiafam` (
  `ConsortiaId` int(11) NOT NULL COMMENT '公会ID',
  `FamTreeGrades` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '秘境神树等级',
  `FamTreeGp` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '秘境神树经验',
  `WaterCount` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '能量值',
  `State` smallint(4) NOT NULL DEFAULT '0' COMMENT '神树状态',
  `IsExist` tinyint(4) NOT NULL DEFAULT '1' COMMENT '是否存在',
  `PickTime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '收获时间',
  PRIMARY KEY (`ConsortiaId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公会秘境神树';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_consortiainvite`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_consortiainvite` (
  `Id` int(11) NOT NULL COMMENT '序号',
  `ConsortiaId` int(11) DEFAULT NULL COMMENT '公会编号',
  `ConsortiaName` varchar(100) DEFAULT NULL COMMENT '公会名称',
  `ChairmanName` varchar(100) DEFAULT NULL COMMENT '会长昵称',
  `CreateDate` datetime DEFAULT NULL COMMENT '申请时间',
  `UserId` int(11) DEFAULT NULL COMMENT '用户编号',
  `UserNickName` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `InviteId` int(11) DEFAULT NULL COMMENT '批准人编号',
  `InviteNickName` varchar(50) DEFAULT NULL COMMENT '批准人昵称',
  `InviteDate` datetime DEFAULT NULL COMMENT '批准时间',
  `FromType` tinyint(1) DEFAULT NULL COMMENT '申请来源(0表示用户申请公会/1表示公会向用户申请)',
  `IsExist` tinyint(1) DEFAULT NULL COMMENT '是否存在',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`ConsortiaId`),
  KEY `Index_2` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公会申请表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_consortiaorder`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_consortiaorder` (
  `ConsortiaID` int(11) NOT NULL COMMENT '用户编号',
  `GradeOrder` int(11) NOT NULL DEFAULT '0' COMMENT '等级排名',
  `CurrentLevels` int(11) NOT NULL DEFAULT '0' COMMENT '当前等级',
  `CurrentFightPower` int(11) NOT NULL DEFAULT '0' COMMENT '当前战斗力',
  `CurrentOffer` int(11) NOT NULL DEFAULT '0' COMMENT '当前建设值',
  `FightPowerOrder` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力排名',
  `WarOrder` int(11) DEFAULT '0' COMMENT '公会战排名',
  `Offer` int(11) NOT NULL DEFAULT '0' COMMENT '建设值',
  `LastDayOffer` int(11) NOT NULL DEFAULT '0' COMMENT '上次建设值',
  `LastDayDate` date DEFAULT '2000-01-01' COMMENT '上次建设值日期',
  `LastDayOrder` int(11) NOT NULL DEFAULT '0' COMMENT '日增建设值排名',
  `LastWeekOffer` int(11) NOT NULL DEFAULT '0' COMMENT '上周建设值',
  `LastWeekDate` date DEFAULT '2000-01-01' COMMENT '上周建设值日期',
  `LastWeekOrder` int(11) NOT NULL DEFAULT '0' COMMENT '周增建设值排名',
  `ChangeGradeOrder` int(11) NOT NULL DEFAULT '0' COMMENT '公会等级排名改变值',
  `ChangeFightPowerOrder` int(11) NOT NULL DEFAULT '0' COMMENT '公会战斗力排名',
  PRIMARY KEY (`ConsortiaID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户排名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_consortiarename`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_consortiarename` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `ConsortiaId` int(11) DEFAULT NULL COMMENT '改名编号',
  `OperatorName` varchar(50) NOT NULL COMMENT '操作者名称',
  `BeforeNickName` varchar(50) DEFAULT NULL COMMENT '改名前名称',
  `EndNickName` varchar(50) DEFAULT NULL COMMENT '改名后名称',
  `ChangeDate` datetime DEFAULT NULL COMMENT '修改时间',
  `IsExist` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `EndNickName` (`EndNickName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公会改名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_consortiauser`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_consortiauser` (
  `ConsortiaId` int(11) NOT NULL COMMENT '公会编号',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `NickName` varchar(50) DEFAULT NULL COMMENT '用户昵称',
  `RatifierUserId` int(11) NOT NULL DEFAULT '0' COMMENT '批准人',
  `RatifierNickName` varchar(50) DEFAULT NULL COMMENT '批准人昵称',
  `DutyID` smallint(6) NOT NULL COMMENT '职责',
  `ExistDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '退出公会时间',
  `DayOffer` int(11) NOT NULL DEFAULT '0' COMMENT '当天捐献',
  `LastDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最近捐献日期',
  `TotalOffer` int(11) NOT NULL DEFAULT '0' COMMENT '历史捐献',
  `IsExist` tinyint(1) DEFAULT NULL COMMENT '是否存在',
  `IsVotingMan` tinyint(1) NOT NULL DEFAULT '0' COMMENT '会长候选人',
  `FightPower` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力',
  `VotingData` int(11) NOT NULL DEFAULT '0' COMMENT '获取投票数量',
  `VotingId` int(11) NOT NULL DEFAULT '0' COMMENT '投票序号',
  `VotingTime` int(11) NOT NULL DEFAULT '0' COMMENT '参与投票序号',
  `ActiveDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '最近活跃时间',
  `IsTeamPlayer` tinyint(4) DEFAULT '0' COMMENT '是否为公会战成员',
  `DayGoldOffer` int(11) DEFAULT '0' COMMENT '每日黄金捐献',
  `LastGoldOfferDate` date DEFAULT '2000-01-01' COMMENT '最近黄金捐献日期',
  KEY `Index_1` (`ConsortiaId`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公会用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_contractdata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_contractdata` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `ContractId` int(11) NOT NULL COMMENT '契约ID',
  `EndDate` datetime NOT NULL COMMENT '结束时间',
  `Param1` int(11) DEFAULT '0' COMMENT '参数1',
  PRIMARY KEY (`UserId`,`ContractId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户霸王契约表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_creditshopdata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_creditshopdata` (
  `UserId` int(11) NOT NULL COMMENT '用户userid',
  `ItemId` int(11) NOT NULL COMMENT '物品id',
  `DayCount` int(11) NOT NULL DEFAULT '0' COMMENT '单日购买数量',
  `SumCount` int(11) NOT NULL DEFAULT '0' COMMENT '累计购买数量',
  `LastBuyDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '最后一次购买日期',
  PRIMARY KEY (`UserId`,`ItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='信用积分商店购买记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_crossmirrorheroinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_crossmirrorheroinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `Site` int(11) NOT NULL DEFAULT '0' COMMENT '区号',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `NickName` varchar(50) NOT NULL COMMENT '用户昵称',
  `Grades` smallint(6) NOT NULL DEFAULT '0' COMMENT '等级',
  `Job` smallint(6) NOT NULL DEFAULT '0' COMMENT '英雄职业',
  `TemplateId` int(11) NOT NULL COMMENT '英雄模板编号',
  `FightPos` smallint(6) NOT NULL DEFAULT '0' COMMENT '战斗位置',
  `TotalFightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力',
  `TotalPhyAttack` int(11) DEFAULT NULL COMMENT '物理攻击',
  `TotalPhyDefence` int(11) DEFAULT NULL COMMENT '物理防御',
  `TotalMagicAttack` int(11) DEFAULT NULL COMMENT '魔法攻击',
  `TotalMagicDefence` int(11) DEFAULT NULL COMMENT '魔法防御',
  `TotalForceHit` int(11) DEFAULT NULL COMMENT '暴击值',
  `TotalRecit` int(11) DEFAULT NULL COMMENT '抗暴',
  `TotalParry` int(11) NOT NULL DEFAULT '0' COMMENT '招架',
  `TotalWreck` int(11) NOT NULL DEFAULT '0' COMMENT '破击',
  `Live` int(11) DEFAULT NULL COMMENT '生命',
  `SkillScript` varchar(500) DEFAULT NULL COMMENT '星运技能列表',
  `HideFashion` tinyint(1) DEFAULT '0' COMMENT '隐藏时装（1隐藏0显示）',
  `ItemTemplateId` varchar(200) DEFAULT NULL COMMENT '物品模板编号列表',
  `ItemPos` varchar(200) DEFAULT NULL COMMENT '物品位置列表',
  `ItemBagType` varchar(50) DEFAULT NULL COMMENT '物品背包类型列表',
  `SuiteSkill` varchar(100) DEFAULT NULL COMMENT '套装技能列表',
  `Avata` varchar(1500) DEFAULT NULL COMMENT '形象列表',
  `FasionAvata` varchar(500) DEFAULT NULL COMMENT '时装形象列表',
  `StarTemplateId` varchar(50) DEFAULT NULL COMMENT '星运ID列表',
  `StarGrade` varchar(50) DEFAULT NULL COMMENT '星运等级列表',
  `StarDefaultSkill` varchar(200) DEFAULT NULL COMMENT '星运技能列表',
  `Type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '跨服镜像类型(0风云际会,1琅环秘境)',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=14592 DEFAULT CHARSET=utf8 COMMENT='跨服玩家战斗力排行榜';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_crossmirrorinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_crossmirrorinfo` (
  `Id` int(11) NOT NULL COMMENT '主键编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `MirrorUserId` int(11) NOT NULL COMMENT '镜像用户ID',
  `MirrorNickName` varchar(100) NOT NULL COMMENT '镜像用户ID',
  `FightingCapacity` int(11) NOT NULL COMMENT '镜像用户战斗力',
  `Job` int(11) NOT NULL COMMENT '镜像用户职业',
  `Site` int(11) NOT NULL COMMENT '区号',
  `IndexNum` tinyint(4) NOT NULL COMMENT '索引',
  `IsSuccess` tinyint(4) NOT NULL COMMENT '是否胜利',
  `Side` tinyint(4) DEFAULT '0' COMMENT '区间1为上区间2为下区间',
  KEY `Index_1` (`Id`),
  KEY `Index_2` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家跨服镜像信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_crossmirrorknightinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_crossmirrorknightinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `KnightTempId` int(11) NOT NULL COMMENT '侠客ID',
  `FightPos` smallint(6) NOT NULL DEFAULT '0' COMMENT '战斗位置',
  `TotalPhyAttack` int(11) DEFAULT NULL COMMENT '物理攻击',
  `TotalPhyDefence` int(11) DEFAULT NULL COMMENT '物理防御',
  `TotalMagicAttack` int(11) DEFAULT NULL COMMENT '魔法攻击',
  `TotalMagicDefence` int(11) DEFAULT NULL COMMENT '魔法防御',
  `TotalForceHit` int(11) DEFAULT NULL COMMENT '暴击值',
  `TotalRecit` int(11) DEFAULT NULL COMMENT '抗暴',
  `TotalParry` int(11) NOT NULL DEFAULT '0' COMMENT '招架',
  `TotalWreck` int(11) NOT NULL DEFAULT '0' COMMENT '破击',
  `Live` int(11) DEFAULT NULL COMMENT '生命',
  `SkillScript` varchar(300) DEFAULT NULL COMMENT '技能列表',
  `Type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '跨服镜像类型(0风云际会,1琅环秘境)',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=50280 DEFAULT CHARSET=utf8 COMMENT='跨服玩家出战侠客信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_crossmirrorsacredinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_crossmirrorsacredinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `SacredTempId` int(11) NOT NULL COMMENT '神兽模板ID',
  `Grades` int(11) DEFAULT '1' COMMENT '神兽等级',
  `Star` int(11) DEFAULT '1' COMMENT '神兽星级',
  `SkillScript` varchar(200) DEFAULT NULL COMMENT '技能列表',
  `CurrentFightCapacity` int(11) DEFAULT '0' COMMENT '神兽战斗力',
  `TotalDecianti` int(11) DEFAULT '0' COMMENT '减抗',
  `TotalAttack` int(11) DEFAULT '0' COMMENT '攻击',
  `TotalAntiDark` int(11) DEFAULT '0' COMMENT '暗抗',
  `TotalAntiFire` int(11) DEFAULT '0' COMMENT '火抗',
  `TotalAntiLight` int(11) DEFAULT '0' COMMENT '光抗',
  `TotalAntiWater` int(11) DEFAULT '0' COMMENT '水抗',
  `TotalAntiWood` int(11) DEFAULT '0' COMMENT '木抗',
  `TotalBaseSp` int(11) DEFAULT '0' COMMENT '初始灵气',
  `TotalBackSp` int(11) DEFAULT '0' COMMENT '回复灵气速度',
  `TotalForcehit` int(11) DEFAULT '0' COMMENT '暴击',
  `Type` tinyint(4) NOT NULL DEFAULT '0' COMMENT '跨服镜像类型(0风云际会,1琅环秘境)',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=9526 DEFAULT CHARSET=utf8 COMMENT='跨服玩家出战神兽信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_crossmirrorscore`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_crossmirrorscore` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `OrderScore` int(11) NOT NULL DEFAULT '0' COMMENT '排名积分',
  `CurrentOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前排名',
  `WeekScore` int(11) NOT NULL DEFAULT '0' COMMENT '上周积分',
  `WeekOrder` int(11) NOT NULL DEFAULT '0' COMMENT '上周排名',
  `LastResetTime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '上次重置时间',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='风云际会积分排名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_daygoalrecord`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_daygoalrecord` (
  `DayIndex` int(11) NOT NULL DEFAULT '0' COMMENT '活动天数',
  `Rank` int(11) NOT NULL COMMENT '排名',
  `PlayerId` int(11) NOT NULL COMMENT '玩家id',
  `GoalArg` int(11) NOT NULL DEFAULT '0' COMMENT '目标参数',
  `ExArg` bigint(20) NOT NULL DEFAULT '0' COMMENT '目标的附加参数',
  `NickName` varchar(50) NOT NULL DEFAULT '无' COMMENT '玩家昵称',
  `CanReward` tinyint(1) NOT NULL DEFAULT '0' COMMENT '能否领奖',
  `GenerateTime` datetime NOT NULL COMMENT '记录生成时间',
  `SpecialRewardFlag` int(11) NOT NULL COMMENT '特别大奖标志',
  PRIMARY KEY (`DayIndex`,`Rank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='开服七日乐活动记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_delitem`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_delitem` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '删除ID',
  `templateId` int(11) DEFAULT NULL COMMENT '物品模板ID',
  `userId` int(11) DEFAULT NULL COMMENT '用户ID',
  `delTime` datetime DEFAULT NULL COMMENT '删除时间',
  `delCountplan` int(11) DEFAULT NULL COMMENT '要删除的数目',
  `delCount` int(11) DEFAULT NULL COMMENT '该步删除的数目',
  `delleave` int(11) DEFAULT NULL COMMENT '剩下多少没删',
  `delType` smallint(6) DEFAULT NULL COMMENT '删除类型，100为自定义',
  `IsBinds` tinyint(1) DEFAULT NULL COMMENT '是否绑定',
  `Pos` smallint(6) DEFAULT NULL COMMENT '位置',
  `AddType` smallint(6) DEFAULT NULL COMMENT '最后添加类型',
  `AddDate` datetime DEFAULT NULL COMMENT '最近添加时间',
  PRIMARY KEY (`id`),
  KEY `delTime` (`delTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品删除记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_discoverydata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_discoverydata` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `DiscoveryId` int(11) NOT NULL COMMENT '探索模板Id',
  `ConditionId1` int(11) NOT NULL COMMENT '条件1',
  `RewardId1` int(11) NOT NULL COMMENT '奖励1',
  `ConditionId2` int(11) NOT NULL COMMENT '条件2',
  `RewardId2` int(11) NOT NULL COMMENT '奖励2',
  `ConditionId3` int(11) NOT NULL COMMENT '条件3',
  `RewardId3` int(11) NOT NULL COMMENT '奖励3',
  `State` tinyint(4) NOT NULL COMMENT '任务状态',
  `ReceiveTime` datetime DEFAULT NULL COMMENT '接受时间',
  `FinishTime` datetime DEFAULT NULL COMMENT '结束时间',
  `KnightIds` varchar(500) DEFAULT NULL COMMENT '探索侠客',
  `RewardState1` tinyint(4) DEFAULT '0' COMMENT '达成状态',
  `RewardState2` tinyint(4) DEFAULT '0' COMMENT '达成状态',
  `RewardState3` tinyint(4) DEFAULT '0' COMMENT '达成状态',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Index_1` (`UserId`,`DiscoveryId`)
) ENGINE=InnoDB AUTO_INCREMENT=1877 DEFAULT CHARSET=utf8 COMMENT='探索用户数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_dungeon`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_dungeon` (
  `Id` int(11) NOT NULL COMMENT '主键',
  `Userid` int(11) NOT NULL COMMENT '用户ID',
  `EventId` int(11) NOT NULL DEFAULT '0' COMMENT '当前事件id',
  `Eventparam` varchar(400) DEFAULT NULL COMMENT '事件参数',
  `IsDead` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否死亡',
  `Score` int(11) NOT NULL DEFAULT '0' COMMENT '当前积分',
  `ScoreBoxState` int(11) NOT NULL DEFAULT '0' COMMENT '积分宝箱是否已领取，每一位对应宝箱一个分数段宝箱',
  `StepLeft` int(11) NOT NULL DEFAULT '0' COMMENT '剩余步数',
  `ReviveLeft` int(11) NOT NULL DEFAULT '0' COMMENT '剩余复活次数',
  `ParalysisEndTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '麻痹结束时间',
  `Mapid` int(11) NOT NULL COMMENT '玩家所在地图id',
  `PosX` int(11) NOT NULL COMMENT 'x坐标',
  `PosY` int(11) NOT NULL COMMENT 'y坐标',
  `LastResetTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '上次重置时间',
  `WeekScore` int(11) NOT NULL DEFAULT '0' COMMENT '周累计积分',
  `CurrentOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前排名',
  `OrderScore` int(11) NOT NULL DEFAULT '0' COMMENT '排名积分',
  `WeekOrder` int(11) NOT NULL DEFAULT '0' COMMENT '周排名',
  `CurrentTypes` varchar(255) DEFAULT NULL COMMENT '当天出现过的类型',
  `InviteTimes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '当天的邀请次数',
  `HelpTimes` tinyint(4) NOT NULL DEFAULT '0' COMMENT '协助次数',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家地宫数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_dungeonmap`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_dungeonmap` (
  `Mapid` int(11) NOT NULL COMMENT '地图id',
  `Type` int(11) NOT NULL DEFAULT '1' COMMENT '地宫类型',
  `Layer` int(11) NOT NULL COMMENT '地宫层数',
  `MapEvent` varchar(500) NOT NULL COMMENT '地图事件（生成后固定）',
  `MapState` varchar(500) NOT NULL COMMENT '地图状态',
  `IsExtraScoreGet` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已经获得额外积分',
  `MapColor` varchar(500) NOT NULL COMMENT '黑白子颜色',
  `ExChess` varchar(500) DEFAULT NULL COMMENT '前面踩过的棋子',
  `FinishEventCount` varchar(500) DEFAULT NULL COMMENT '完成目标的进度',
  PRIMARY KEY (`Mapid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地宫探险地图数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_effect`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_effect` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `OwnType` smallint(6) DEFAULT NULL COMMENT '主分类',
  `OwnTemplateId` int(11) NOT NULL DEFAULT '0' COMMENT '分类模板',
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `ValidityDate` int(11) NOT NULL COMMENT '有效期',
  `Grades` smallint(6) NOT NULL COMMENT '等级',
  `IsExist` tinyint(1) NOT NULL COMMENT '是否有效',
  `BeginTime` datetime NOT NULL DEFAULT '2012-01-01 00:00:00' COMMENT 'BUFF开始时间',
  UNIQUE KEY `Index_1` (`UserId`,`OwnType`,`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='效果数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_exchangedata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_exchangedata` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `ActiveId` int(11) NOT NULL COMMENT '物品兑换活动ID',
  `Counts` smallint(6) NOT NULL DEFAULT '0' COMMENT '兑换次数',
  PRIMARY KEY (`UserId`,`ActiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户物品兑换活动次数';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_farm`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_farm` (
  `UserID` int(11) NOT NULL COMMENT '用户ID',
  `NickName` varchar(50) NOT NULL COMMENT '昵称',
  `Grades` smallint(6) NOT NULL DEFAULT '1' COMMENT '等级',
  `LandGrades` smallint(6) NOT NULL DEFAULT '1' COMMENT '土地等级',
  `GP` int(11) NOT NULL DEFAULT '0' COMMENT '当前等级经验',
  `TotalGP` int(11) NOT NULL DEFAULT '0' COMMENT '总经验',
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='农场表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_farmland`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_farmland` (
  `UserID` int(11) NOT NULL COMMENT '用户ID',
  `Type` smallint(6) NOT NULL DEFAULT '0' COMMENT '类型',
  `Pos` smallint(6) NOT NULL DEFAULT '-1' COMMENT '位置',
  `ItemTemplateID` int(11) NOT NULL DEFAULT '0' COMMENT '种植的农作物ID(物品ID)',
  `PlantingTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '种植日期',
  `MatureTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '成熟日期',
  `CropState` smallint(6) NOT NULL DEFAULT '0' COMMENT '农作物状态(0:正常 1：枯萎)',
  `AccelerateCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '加速次数',
  `StolenCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '被偷次数',
  `isWormParam1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '阶段一是否长虫',
  `IsWormParam2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '阶段二是否长虫',
  `IsGrassParam1` tinyint(1) NOT NULL DEFAULT '0' COMMENT '阶段一是否长草',
  `IsGrassParam2` tinyint(1) NOT NULL DEFAULT '0' COMMENT '阶段二是否长草',
  PRIMARY KEY (`UserID`,`Pos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='土地';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_fashioninfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_fashioninfo` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `FashionTempId` int(11) NOT NULL COMMENT '时装模板ID',
  `StarLevel` smallint(6) NOT NULL DEFAULT '0' COMMENT '时装星级',
  `IsDress` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否穿戴 1:是 0:否',
  `ActiveDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '激活时间',
  PRIMARY KEY (`UserId`,`FashionTempId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户时装图鉴表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_fate`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_fate` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `TemplateId` int(11) NOT NULL COMMENT '技能模板ID',
  `FateTypes` int(11) NOT NULL COMMENT '技能模板对应SonType',
  `TotalGp` int(11) NOT NULL COMMENT '总经验',
  `Grades` int(11) NOT NULL COMMENT '等级',
  `TurnCount` int(11) NOT NULL COMMENT '转盘次数',
  `Property1` varchar(100) DEFAULT NULL COMMENT '扩展1',
  `Property2` varchar(100) DEFAULT NULL COMMENT '扩展2',
  KEY `Index_1` (`UserId`,`FateTypes`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='命运守护';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_fbinvite`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_fbinvite` (
  `UserId` int(11) NOT NULL COMMENT '模板id',
  `InviteId` int(11) NOT NULL COMMENT '邀请者Id',
  `InviteCount` int(11) NOT NULL DEFAULT '0' COMMENT '邀请数量',
  `NumRewardArg` varchar(200) NOT NULL DEFAULT '' COMMENT '领取奖励记录',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户Fb邀请信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_fbinvitereward`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_fbinvitereward` (
  `UserId` int(11) NOT NULL COMMENT '用户Id',
  `InviteTempId` int(11) NOT NULL COMMENT '奖励模板Id',
  `RewardCount` int(11) NOT NULL DEFAULT '0' COMMENT '可领取份数',
  PRIMARY KEY (`UserId`,`InviteTempId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户Fb邀请领奖信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_fbsharerecord`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_fbsharerecord` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `LimitType` tinyint(4) NOT NULL COMMENT '分享限制:1无限制，2每日一次，3终生一次',
  `TemplateId` int(11) NOT NULL COMMENT '事件模板ID',
  `ShareStatus` tinyint(4) NOT NULL COMMENT '状态:0初始状态，1可以分享，2可以领奖，3已领奖',
  `UpdateTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后更新时间',
  PRIMARY KEY (`UserId`,`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='FB分享记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_fishdata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_fishdata` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `Level` int(11) DEFAULT NULL COMMENT '鱼池等级',
  `Gp` int(11) DEFAULT NULL COMMENT '鱼池当前经验',
  `Cd` datetime DEFAULT NULL COMMENT '冷却时间',
  `Count` tinyint(4) DEFAULT NULL COMMENT '当天钓鱼次数',
  `Tool1` int(11) DEFAULT NULL COMMENT '道具1的数量',
  `Tool2` int(11) DEFAULT NULL,
  `Tool2State` tinyint(4) DEFAULT NULL,
  `Tool3` int(11) DEFAULT NULL,
  `Tool3State` tinyint(4) DEFAULT NULL,
  `Tool4` int(11) DEFAULT NULL,
  `HelpCount` tinyint(4) DEFAULT '0' COMMENT '协助次数',
  `ExtraCount` tinyint(4) DEFAULT '0' COMMENT '额外增加次数（道具或者直接购买的次数）',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家钓鱼数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_flashversion`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_flashversion` (
  `Date` date NOT NULL COMMENT '日期',
  `Version` varchar(50) NOT NULL COMMENT '版本',
  `Count` int(11) NOT NULL COMMENT '数量',
  PRIMARY KEY (`Date`,`Version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Flash版本统计';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_forcecommander`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_forcecommander` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `Type` tinyint(4) NOT NULL COMMENT '指挥官类型：1天狼,2北斗,3破军',
  `job` tinyint(4) NOT NULL COMMENT '玩家职业',
  `nickName` varchar(50) NOT NULL COMMENT '玩家昵称',
  `ServerName` varchar(50) NOT NULL COMMENT '服务器名',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='指挥官信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_forceorder`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_forceorder` (
  `OrderId` int(11) NOT NULL COMMENT '排名ID',
  `OrderType` tinyint(4) NOT NULL COMMENT '排名类型(1势力，2玩家)',
  `OrderName` varchar(20) NOT NULL COMMENT '对象名称',
  `OrderData` int(11) NOT NULL COMMENT '排名数据',
  `KillCount` int(11) NOT NULL DEFAULT '0' COMMENT '杀人数',
  `LastKillCount` int(11) NOT NULL DEFAULT '0' COMMENT '昨日杀人数',
  `TeamId` tinyint(4) NOT NULL COMMENT '队伍ID(势力ID)',
  `Params` int(11) NOT NULL COMMENT '参数',
  `Site` varchar(30) NOT NULL COMMENT '站点',
  PRIMARY KEY (`OrderId`,`OrderType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='蓬莱岛排名表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_forcetask`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_forcetask` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `TaskId` int(11) NOT NULL COMMENT '任务ID',
  `Values` int(11) NOT NULL COMMENT '任务进度',
  `IsCompleted` tinyint(1) NOT NULL COMMENT '是否完成',
  `CompleteCount` int(11) NOT NULL COMMENT '每日完成次数',
  `IsExist` tinyint(1) NOT NULL COMMENT '是否存在',
  PRIMARY KEY (`UserId`,`TaskId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家蓬莱岛任务表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_friend`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_friend` (
  `UserKey` varchar(25) NOT NULL COMMENT 'AB组合',
  `UserIdA` int(11) NOT NULL COMMENT '帐号A',
  `UserIdB` int(11) NOT NULL COMMENT '帐号B',
  `RelationA` smallint(6) NOT NULL COMMENT 'A添加B好友关系类别',
  `RelationB` smallint(6) NOT NULL COMMENT 'B添加A好友关系类别',
  `GP` int(11) NOT NULL DEFAULT '0' COMMENT '好感度经验',
  `Grade` smallint(6) NOT NULL DEFAULT '0' COMMENT '好感度等级',
  `InGroupA` int(11) DEFAULT '1' COMMENT '好友A分组',
  `InGroupB` int(11) DEFAULT '1' COMMENT '好友B分组',
  `ALastDate` datetime DEFAULT NULL COMMENT 'A最近登录',
  `BLastDate` datetime DEFAULT NULL COMMENT 'B最近登录',
  `LastDecDate` datetime DEFAULT NULL COMMENT '上次扣除时间',
  PRIMARY KEY (`UserKey`),
  KEY `Index_1` (`UserIdA`),
  KEY `Index_2` (`UserIdB`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户好友表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_friendgroup`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_friendgroup` (
  `Id` int(11) NOT NULL DEFAULT '0' COMMENT 'ID',
  `UserId` int(11) NOT NULL DEFAULT '0' COMMENT '玩家ID',
  `GroupBody` varchar(255) NOT NULL COMMENT '分组',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户好友组表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_gemmazeinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_gemmazeinfo` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `GemLevel` int(11) NOT NULL DEFAULT '0' COMMENT '宝石等级',
  `GemScore` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `CurExp` int(11) NOT NULL DEFAULT '0' COMMENT '当前总经验',
  `MoveTimes` int(11) NOT NULL DEFAULT '20' COMMENT '移动次数',
  `HelpTimes` int(11) NOT NULL DEFAULT '5' COMMENT '协助次数',
  `InviteTimes` int(11) NOT NULL DEFAULT '1' COMMENT '邀请协助次数',
  `BoxMark` int(11) NOT NULL DEFAULT '0' COMMENT '宝箱领取标识',
  `GemGirdInfo` varchar(100) NOT NULL DEFAULT '' COMMENT '宝石格子信息',
  `ScoreMark` int(11) NOT NULL DEFAULT '0' COMMENT '积分宝箱领取状态',
  `ScoreRewardDate` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '上一次宝箱领取时间',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='宝石迷阵信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getarmyid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getarmyid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=95256 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getarmypawnid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getarmypawnid` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=94065 DEFAULT CHARSET=utf8 COMMENT='部队兵种ID';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getbuildingid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getbuildingid` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44868 DEFAULT CHARSET=utf8 COMMENT='建筑Id';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getcastleid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getcastleid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11867 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getconsortiaid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getconsortiaid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=697 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getconsortiarenameid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getconsortiarenameid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getcrossmirrorid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getcrossmirrorid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8779 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getdungeonid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getdungeonid` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '地宫id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=413 DEFAULT CHARSET=utf8 COMMENT='获取自增地宫id';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getdungeonmapid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getdungeonmapid` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '地宫地图id',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=utf8 COMMENT='获取自增地宫地图id';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_geteventid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_geteventid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19276 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getfightid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getfightid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=261 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getfriendgroupid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getfriendgroupid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='生成好友分组ID';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getguildwarid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getguildwarid` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '公会战ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1009 DEFAULT CHARSET=utf8 COMMENT='获取公会战ID';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getheroid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getheroid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11749 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_gethorcruxjadeid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_gethorcruxjadeid` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5142 DEFAULT CHARSET=utf8 COMMENT='魂玉主键表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getinviteid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getinviteid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10478 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getitemid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getitemid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1970339 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getknightid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getknightid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8159 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getmailid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getmailid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=963028 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getmallitembuyid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getmallitembuyid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COMMENT='拍卖场竞拍记录ID';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getmallitemid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getmallitemid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8 COMMENT='拍卖场出售物品ID';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getredbagid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getredbagid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=417 DEFAULT CHARSET=utf8 COMMENT='红包主键ID';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getruneid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getruneid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='获取玩家符文信息表的ID';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getskillid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getskillid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getsnsid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getsnsid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1515 DEFAULT CHARSET=utf8 ROW_FORMAT=FIXED COMMENT='自增列ID';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getstarid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getstarid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=335174 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getuserid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getuserid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17166 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_getvotingid`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_getvotingid` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_groupbuydata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_groupbuydata` (
  `ActiveId` varchar(36) NOT NULL COMMENT '团购礼包id',
  `Counts` int(11) NOT NULL COMMENT '购买数量',
  `BuyDate` date NOT NULL COMMENT '日期',
  KEY `Index_activeId` (`ActiveId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='团购购买表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_guildwarinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_guildwarinfo` (
  `Id` int(11) NOT NULL COMMENT 'ID',
  `ConsortiaId` int(11) NOT NULL COMMENT '公会ID',
  `Group1` tinyint(4) NOT NULL COMMENT '第1场',
  `Group2` tinyint(4) NOT NULL COMMENT '第2场',
  `Group3` tinyint(4) NOT NULL COMMENT '第3场',
  `Group4` tinyint(4) NOT NULL COMMENT '第4场',
  `Result1` tinyint(4) NOT NULL COMMENT '第1场结果',
  `Result2` tinyint(4) NOT NULL COMMENT '第2场结果',
  `Result3` tinyint(4) NOT NULL COMMENT '第3场结果',
  `Result4` tinyint(4) NOT NULL COMMENT '第4场结果',
  `Score` tinyint(4) NOT NULL COMMENT '分数',
  `Order` tinyint(4) NOT NULL COMMENT '排名',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `UpdateTime` datetime NOT NULL COMMENT '更新时间',
  `IsExist` tinyint(4) NOT NULL COMMENT '是否存在',
  `IsReward` tinyint(4) NOT NULL COMMENT '是否发送奖励',
  `FightPower` int(11) NOT NULL DEFAULT '0' COMMENT '会公战斗力',
  KEY `Index_1` (`Id`,`IsExist`),
  KEY `Index_2` (`ConsortiaId`,`Id`),
  KEY `Index_3` (`IsExist`,`IsReward`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='公会战赛事信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_heroinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_heroinfo` (
  `Id` int(11) NOT NULL COMMENT '英雄ID',
  `NickName` varchar(50) NOT NULL COMMENT '昵称',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `TemplateId` int(11) NOT NULL COMMENT '英雄模板编号',
  `PowerPoint` int(11) NOT NULL COMMENT '力量增长点',
  `AgilityPoint` int(11) NOT NULL COMMENT '敏捷增长点',
  `IntellectPoint` int(11) NOT NULL COMMENT '智力增长点',
  `CaptainPoint` int(11) NOT NULL COMMENT '统帅增长点',
  `PhysiquePoint` int(11) NOT NULL COMMENT '体质',
  `RemainPoint` int(11) NOT NULL COMMENT '剩余点',
  `SkillPoint` int(11) NOT NULL COMMENT '技能点',
  `SkillScript` varchar(1000) NOT NULL COMMENT '技能脚本',
  `FastKey` varchar(40) DEFAULT NULL COMMENT '技能快捷键',
  `Hp` int(11) NOT NULL COMMENT '当前血量',
  `Blood` int(11) NOT NULL COMMENT '血包',
  `BloodId` int(11) DEFAULT '0' COMMENT '血包ID',
  `Active` tinyint(1) DEFAULT NULL COMMENT '是否激活',
  `FightPos` int(11) NOT NULL DEFAULT '3' COMMENT '站位',
  `SecondPoint` int(11) NOT NULL COMMENT '二套技能点',
  `SecondScript` varchar(1000) DEFAULT NULL COMMENT '二套技能列表',
  `SecondKey` varchar(40) DEFAULT NULL COMMENT '二套技能快捷键',
  `SkillIndex` int(11) NOT NULL DEFAULT '0' COMMENT '当前使用的技能',
  `IsActiveSecond` tinyint(4) NOT NULL DEFAULT '0' COMMENT '是否激活第二套技能',
  `HeadId` int(11) NOT NULL DEFAULT '0' COMMENT '头像',
  `RuneKey` varchar(50) DEFAULT NULL COMMENT '英雄携带符文ID列表',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='英雄表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_heroorder`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_heroorder` (
  `HeroId` int(11) NOT NULL COMMENT '英雄编号',
  `GradeOrder` int(11) NOT NULL DEFAULT '0' COMMENT '等级排名',
  PRIMARY KEY (`HeroId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='英雄排名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_horcrux`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_horcrux` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `SonType` int(11) NOT NULL DEFAULT '0' COMMENT '魂器id',
  `Level` tinyint(4) NOT NULL COMMENT '魂器等级',
  `Bless` int(11) NOT NULL COMMENT '当前祝福值',
  `KnightTempId` int(11) NOT NULL DEFAULT '-1' COMMENT '对应的侠客id，-1表示没有，0表示主角',
  `Pos` tinyint(4) NOT NULL COMMENT '魂器装备的位置,-1表示未装备',
  `Potential_1` int(11) NOT NULL DEFAULT '0' COMMENT '潜能丹',
  `Potential_2` int(11) NOT NULL DEFAULT '0' COMMENT '造化丹',
  `HorcruxJadeSite` tinyint(4) DEFAULT '0' COMMENT '开启魂玉孔标志位',
  PRIMARY KEY (`UserId`,`SonType`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家魂器数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_horcrux_jade`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_horcrux_jade` (
  `Id` int(11) NOT NULL COMMENT '主键Id',
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `TemplateId` int(11) NOT NULL DEFAULT '0' COMMENT '魂玉模板id',
  `Step` tinyint(4) NOT NULL COMMENT '魂玉等阶',
  `HorcruxSonType` int(11) NOT NULL DEFAULT '-1' COMMENT '对应的魂器id，-1表示没有',
  `Pos` tinyint(4) NOT NULL COMMENT '魂器装备的位置,-1表示未装备',
  `BaseVaue` int(11) NOT NULL DEFAULT '0' COMMENT '基础生命',
  `CurrentValue` int(11) NOT NULL DEFAULT '0' COMMENT '当前生命',
  `SkillId1` int(11) NOT NULL DEFAULT '0' COMMENT '技能id1',
  `SkillId2` int(11) NOT NULL DEFAULT '0' COMMENT '技能id2',
  `SkillId3` int(11) NOT NULL DEFAULT '0' COMMENT '技能id3',
  `SkillId4` int(11) NOT NULL DEFAULT '0' COMMENT '技能id4',
  `SpecialSkillId` int(11) NOT NULL DEFAULT '0' COMMENT '侠客专属技能id',
  `IsExist` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否存在0不存在1存在',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家魂玉数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_ipfilter`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_ipfilter` (
  `Ip` varchar(20) NOT NULL COMMENT 'IP',
  PRIMARY KEY (`Ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='IP过滤表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_iteminfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_iteminfo` (
  `Id` int(11) NOT NULL COMMENT '物品编号',
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `UserId` int(11) NOT NULL COMMENT '所属用户',
  `Pos` smallint(6) NOT NULL COMMENT '位置',
  `IsExist` tinyint(1) NOT NULL COMMENT '是否存在',
  `ObjectId` int(11) NOT NULL COMMENT '所属目标ID',
  `BagType` smallint(6) NOT NULL COMMENT '背包类型',
  `IsBinds` tinyint(1) NOT NULL COMMENT '是否绑定',
  `IsUsed` tinyint(1) NOT NULL COMMENT '是否激活',
  `ValidDate` int(11) NOT NULL COMMENT '有效期',
  `BeginDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '开始使用时间',
  `Count` int(11) NOT NULL COMMENT '当前数量',
  `RemoveType` smallint(6) NOT NULL COMMENT '最后移除类型',
  `RemoveDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最后移除时间',
  `AddType` smallint(6) NOT NULL COMMENT '最后添加类型',
  `AddDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '最近添加时间',
  `UseCount` smallint(6) DEFAULT '0' COMMENT '使用次数',
  `UseDate` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '使用次数',
  `StrengthenGrade` smallint(6) NOT NULL COMMENT '强化等级',
  `MarkGrade` smallint(6) NOT NULL DEFAULT '0' COMMENT '刻印等级',
  `MarkPrecent` int(11) NOT NULL DEFAULT '0' COMMENT '刻印进度千分比',
  `Join1` int(11) NOT NULL COMMENT '镶嵌1',
  `Join2` int(11) NOT NULL COMMENT '镶嵌2',
  `Join3` int(11) NOT NULL COMMENT '镶嵌3',
  `Join4` int(11) NOT NULL DEFAULT '-1' COMMENT '镶嵌4',
  `Join5` int(11) NOT NULL DEFAULT '-1' COMMENT '嵌镶5',
  `RandomSkill1` int(11) NOT NULL DEFAULT '0' COMMENT '随机技能1',
  `RandomSkill2` int(11) NOT NULL DEFAULT '0' COMMENT '随机技能2',
  `RandomSkill3` int(11) NOT NULL DEFAULT '0' COMMENT '随机技能3',
  `RandomSkill4` int(11) NOT NULL DEFAULT '0' COMMENT '随机技能4',
  `RandomSkill5` int(11) NOT NULL DEFAULT '0' COMMENT '随机技能5',
  PRIMARY KEY (`Id`),
  KEY `UserId_ObjectId` (`UserId`,`ObjectId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_kingtowerboss`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_kingtowerboss` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `OrderId` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力排名',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `NickName` varchar(50) NOT NULL COMMENT '用户昵称',
  `Grades` smallint(6) NOT NULL DEFAULT '0' COMMENT '等级',
  `Job` smallint(6) NOT NULL DEFAULT '0' COMMENT '英雄职业',
  `FightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力',
  `TotalPhyAttack` int(11) DEFAULT NULL COMMENT '物理攻击',
  `TotalPhyDefence` int(11) DEFAULT NULL COMMENT '物理防御',
  `TotalMagicAttack` int(11) DEFAULT NULL COMMENT '魔法攻击',
  `TotalMagicDefence` int(11) DEFAULT NULL COMMENT '魔法防御',
  `TotalForceHit` int(11) DEFAULT NULL COMMENT '暴击值',
  `TotalConatArmy` int(11) DEFAULT NULL COMMENT '带兵上限',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '格档',
  `Live` int(11) DEFAULT NULL COMMENT '生命',
  `HideFashion` tinyint(1) DEFAULT '0' COMMENT '隐藏时装（1隐藏0显示）',
  `ItemTemplateId` varchar(200) DEFAULT NULL COMMENT '物品模板编号列表',
  `ItemPos` varchar(200) DEFAULT NULL COMMENT '物品位置列表',
  `ItemBagType` varchar(50) DEFAULT NULL COMMENT '物品背包类型列表',
  `SuiteSkill` varchar(100) DEFAULT NULL COMMENT '套装技能列表',
  `Avata` varchar(1500) DEFAULT NULL COMMENT '形象列表',
  `StarTemplateId` varchar(50) DEFAULT NULL COMMENT '星运ID列表',
  `StarGrade` varchar(50) DEFAULT NULL COMMENT '星运等级列表',
  `StarDefaultSkill` varchar(200) DEFAULT NULL COMMENT '星运技能列表',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=5994 DEFAULT CHARSET=utf8 COMMENT='跨服战斗力排行榜（前20）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_kingtowerinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_kingtowerinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户id',
  `MaxIndex` smallint(6) DEFAULT '0' COMMENT '最高难度',
  `EnterCount` smallint(6) DEFAULT '0' COMMENT '当天已进入次数',
  `LastUpdateTime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '最后更新时间',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=2186 DEFAULT CHARSET=utf8 COMMENT='王者之塔用户挑战记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_knight_battle`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_knight_battle` (
  `UserId` int(11) NOT NULL COMMENT '用户id',
  `BattleId` int(11) NOT NULL COMMENT '战役id',
  `Page` int(11) NOT NULL COMMENT '章节id',
  `PassCardId` int(11) NOT NULL COMMENT '通过关卡的id',
  `DayAwardStatus` varchar(20) DEFAULT NULL COMMENT '战役宝箱领取状态',
  `FirstAward` smallint(6) NOT NULL DEFAULT '0' COMMENT '第一次通关奖励领取状态 0-未领取 1-已领取',
  PRIMARY KEY (`UserId`,`BattleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客闯关-玩家个人战役信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_knight_card`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_knight_card` (
  `UserId` int(11) NOT NULL COMMENT '用户id',
  `CardId` int(11) NOT NULL COMMENT '通过的最大关卡id',
  `AwardStatus` smallint(6) NOT NULL COMMENT '奖励领取状态 0-未领取 1-已领取',
  `StarNum` int(11) NOT NULL COMMENT '星星数',
  PRIMARY KEY (`UserId`,`CardId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客闯关-玩家个人关卡信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_knight_pos`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_knight_pos` (
  `UserId` int(11) NOT NULL COMMENT '玩家id',
  `KnightId` int(11) NOT NULL COMMENT '侠客id',
  `Type` tinyint(6) NOT NULL COMMENT '位置类型：0-战场位置 1-增员位置',
  `Pos` tinyint(11) NOT NULL COMMENT '位置',
  PRIMARY KEY (`UserId`,`KnightId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客闯关-玩家侠客位置信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_knightinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_knightinfo` (
  `Id` int(11) NOT NULL COMMENT '侠客ID',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `NickName` varchar(50) NOT NULL COMMENT '侠客昵称',
  `TemplateId` int(11) NOT NULL COMMENT '侠客英雄模板编号',
  `Grades` smallint(6) NOT NULL DEFAULT '0' COMMENT '等级',
  `GradeGp` int(11) NOT NULL DEFAULT '0' COMMENT '等级经验',
  `SwornGrade` smallint(6) NOT NULL DEFAULT '0' COMMENT '好感度等级',
  `SwornGp` int(11) NOT NULL DEFAULT '0' COMMENT '好感度经验',
  `StageGrade` smallint(6) NOT NULL DEFAULT '0' COMMENT '进阶级',
  `StageGp` int(11) NOT NULL DEFAULT '0' COMMENT '进阶祝福值',
  `Hp` int(11) NOT NULL COMMENT '当前血量',
  `FightPos` int(11) NOT NULL DEFAULT '-1' COMMENT '站位',
  `CurrentFightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '当前总战斗力',
  `IsTeam` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否在队伍中',
  `SkillScript` varchar(300) DEFAULT '' COMMENT '技能',
  `IsHelp` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否助阵',
  `HelpPos` int(11) NOT NULL DEFAULT '-1' COMMENT '助阵位置',
  `TotalOutAttack` int(11) DEFAULT '0' COMMENT '外攻',
  `TotalInAttack` int(11) DEFAULT '0' COMMENT '内攻',
  `TotalOutDefense` int(11) DEFAULT '0' COMMENT '外防',
  `TotalInDefense` int(11) DEFAULT '0' COMMENT '内防',
  `TotalForcehit` int(11) DEFAULT '0' COMMENT '暴击',
  `TotalRecit` int(11) DEFAULT '0' COMMENT '抗暴',
  `TotalParry` int(11) DEFAULT '0' COMMENT '招架',
  `TotalWreck` int(11) DEFAULT '0' COMMENT '破击',
  `TotalLive` int(11) DEFAULT '0' COMMENT '生命',
  `Favor` int(11) DEFAULT '0' COMMENT '好感度',
  `HorcruxCount` tinyint(4) NOT NULL DEFAULT '1' COMMENT '可装备的魂器个数',
  `HorcruxFightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '侠客魂器战斗力',
  `PotenGrade` int(11) DEFAULT '0' COMMENT '潜能等级',
  `PotenLiveGrade` int(11) DEFAULT '0' COMMENT '血脉等级',
  `PotenRestrainGrade1` int(11) DEFAULT '0' COMMENT '斩佛等级',
  `PotenRestrainGrade2` int(11) DEFAULT '0' COMMENT '降魔等级',
  `PotenRestrainGrade3` int(11) DEFAULT '0' COMMENT '灭谛等级',
  `PotenRestrainGrade4` int(11) DEFAULT '0' COMMENT '外道等级',
  `PotenSkillGrade` int(11) DEFAULT '0' COMMENT '无相等级',
  `WSStateGrade` smallint(6) NOT NULL DEFAULT '0' COMMENT '武境等级',
  `WSStateGradeGp` int(11) NOT NULL DEFAULT '0' COMMENT '武境等级祝福值',
  `WSStateP1Grade` smallint(6) NOT NULL DEFAULT '0' COMMENT '武境阶段1等级',
  `WSStateP2Grade` smallint(6) NOT NULL DEFAULT '0' COMMENT '武境阶段2等级',
  `WSStateP3Grade` smallint(6) NOT NULL DEFAULT '0' COMMENT '武境阶段2等级',
  `WSStateP1GradeGp` int(11) NOT NULL DEFAULT '0' COMMENT '武境阶段1等级祝福值',
  `WSStateP2GradeGp` int(11) NOT NULL DEFAULT '0' COMMENT '武境阶段2等级祝福值',
  `WSStateP3GradeGp` int(11) NOT NULL DEFAULT '0' COMMENT '武境阶段3等级祝福值',
  `PotenRestrainItem1` int(11) NOT NULL DEFAULT '0' COMMENT '斩佛道具数',
  `PotenRestrainItem2` int(11) NOT NULL DEFAULT '0' COMMENT '降魔道具数',
  `PotenRestrainItem3` int(11) NOT NULL DEFAULT '0' COMMENT '灭谛道具数',
  `PotenRestrainItem4` int(11) NOT NULL DEFAULT '0' COMMENT '外道道具数',
  `PotenSkillItem` int(11) NOT NULL DEFAULT '0' COMMENT '无相道具数',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户侠客表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_knightorder`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_knightorder` (
  `UserId` int(11) DEFAULT NULL COMMENT '玩家ID',
  `type` int(11) DEFAULT '0' COMMENT '类型（0为侠客1为神兽）',
  `KnightId` int(11) DEFAULT NULL COMMENT '侠客ID',
  `Grade` int(11) DEFAULT '0' COMMENT '等级',
  `CapacityOrder` int(11) NOT NULL DEFAULT '0' COMMENT '排名',
  `Capacity` int(11) DEFAULT '0' COMMENT '战斗力',
  `CreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  KEY `Index_1` (`CapacityOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客战斗力排行';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_knightpotential`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_knightpotential` (
  `UserId` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID',
  `KnightTempId` int(11) NOT NULL DEFAULT '0' COMMENT '侠客模板ID',
  `Level` int(11) NOT NULL DEFAULT '0' COMMENT '境界阶数',
  `CurType1` int(11) NOT NULL DEFAULT '0' COMMENT '当前属性类型1',
  `CurGrade1` int(11) NOT NULL DEFAULT '0' COMMENT '当前属性等级1',
  `CurType2` tinyint(4) NOT NULL DEFAULT '0' COMMENT '当前属性类型2',
  `CurGrade2` int(11) NOT NULL DEFAULT '0' COMMENT '当前属性等级2',
  `CurType3` tinyint(4) NOT NULL DEFAULT '0' COMMENT '当前属性类型3',
  `CurGrade3` int(11) NOT NULL DEFAULT '0' COMMENT '当前属性等级3',
  `CurType4` tinyint(4) NOT NULL DEFAULT '0' COMMENT '当前属性类型4',
  `CurGrade4` int(11) NOT NULL DEFAULT '0' COMMENT '当前属性等级4',
  PRIMARY KEY (`UserId`,`KnightTempId`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='侠客境界用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_knightrecruitcondition`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_knightrecruitcondition` (
  `userId` int(11) NOT NULL COMMENT '用户ID',
  `recruitId` int(11) NOT NULL COMMENT '条件模板ID',
  `isComplete` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否完成',
  `value` varchar(255) NOT NULL DEFAULT '' COMMENT '完成进度',
  `completeTime` datetime NOT NULL COMMENT '完成时间',
  PRIMARY KEY (`userId`,`recruitId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='奇侠志完成进度';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_leeddata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_leeddata` (
  `TemplateId` int(11) NOT NULL COMMENT '模板Id',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `CurrentCount` int(11) DEFAULT NULL COMMENT '通过次数',
  `FinishCount` int(11) NOT NULL DEFAULT '0' COMMENT '完成的次数',
  `BeginDate` datetime DEFAULT NULL COMMENT '开始时间',
  `IsComplete` tinyint(1) DEFAULT NULL COMMENT '是否完成',
  `Percent` int(11) NOT NULL DEFAULT '0' COMMENT '完成的百分比',
  PRIMARY KEY (`UserId`,`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='每日引导模板表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_lords`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_lords` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `ServerName` varchar(20) NOT NULL COMMENT '服务器名称',
  `NickName` varchar(20) NOT NULL COMMENT '昵称',
  `UserKeys` varchar(40) NOT NULL COMMENT '用户唯一键',
  `Job` int(11) NOT NULL COMMENT '职业(只有1,2,3)',
  `SexJob` int(11) NOT NULL COMMENT '性别职业(有1,2,3,4,5,6)',
  `Grades` int(11) NOT NULL COMMENT '等级',
  `FashionArm` varchar(100) DEFAULT NULL,
  `FashionWing` varchar(100) DEFAULT NULL,
  `FashionCloth` varchar(100) DEFAULT NULL,
  `FashionHair` varchar(100) DEFAULT NULL,
  `FashionHat` varchar(100) DEFAULT NULL,
  `Arm` varchar(100) DEFAULT NULL,
  `IsVip` tinyint(4) NOT NULL COMMENT '是否VIP',
  `FightPower` int(11) NOT NULL COMMENT '战斗力',
  `ReadyScore` int(11) NOT NULL COMMENT '预赛积分',
  `ReadyOrder` int(11) NOT NULL COMMENT '预赛排名',
  `FinalScore` int(11) NOT NULL COMMENT '决赛积分',
  `FinalOrder` int(11) NOT NULL COMMENT '决赛排名',
  `ReadyRewad` int(11) NOT NULL COMMENT '预赛奖励获得状态',
  `FinalRewad` int(11) NOT NULL COMMENT '决赛奖励获得状态',
  `ReadyTurn` int(11) NOT NULL COMMENT '预赛回合数',
  `FinalTurn` int(11) NOT NULL COMMENT '决赛回合数',
  `ReadyWinCount` int(11) NOT NULL COMMENT '预赛胜利场数',
  `FinalWinCount` int(11) NOT NULL COMMENT '决赛胜利场数',
  `ReadyTakeTime` datetime NOT NULL COMMENT '预赛奖励领取时间',
  `FinalTakeTime` datetime NOT NULL COMMENT '决赛奖励领取时间',
  `IsExist` tinyint(4) NOT NULL COMMENT '是否存在',
  `CreateDate` datetime NOT NULL COMMENT '创建时间',
  `Property1` varchar(100) DEFAULT NULL COMMENT '属性1',
  `Property2` varchar(100) DEFAULT NULL COMMENT '属性2',
  `LordsIndex` int(11) NOT NULL DEFAULT '0',
  `FightPowerOrder` int(11) NOT NULL DEFAULT '0' COMMENT '战力排名',
  PRIMARY KEY (`UserKeys`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='众神之战预赛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_lordsbet`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_lordsbet` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `BetCount` int(11) NOT NULL COMMENT '押注数量',
  `BetPoint` int(11) NOT NULL COMMENT '押注元宝',
  `First` varchar(50) NOT NULL COMMENT '押注第一名',
  `Second` varchar(50) NOT NULL COMMENT '押注第二名',
  `Third` varchar(50) NOT NULL COMMENT '押注第三名',
  `Property1` varchar(50) DEFAULT NULL COMMENT '扩展1',
  `Property2` varchar(50) DEFAULT NULL COMMENT '扩展2',
  `IsExist` tinyint(4) NOT NULL COMMENT '是否存在',
  `TakeRewardTime` datetime NOT NULL COMMENT '押注奖励领取时间',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `IsWin` tinyint(4) NOT NULL COMMENT '是否中奖',
  `Param1` int(11) NOT NULL COMMENT '参数1',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户押注表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_lordsbetrecord`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_lordsbetrecord` (
  `LordsIndex` int(11) NOT NULL COMMENT '活动届数',
  `BetCount` int(11) NOT NULL COMMENT '押注数量',
  `BetPoint` int(11) NOT NULL COMMENT '押注元宝',
  `NickName` varchar(50) NOT NULL COMMENT '押注人昵称',
  `RewardNum` int(11) NOT NULL COMMENT '获得荣耀水晶数量',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CreateTime` datetime NOT NULL COMMENT '创建时间',
  `Property1` varchar(200) DEFAULT NULL COMMENT '参数1',
  `Property2` varchar(200) DEFAULT NULL COMMENT '参数2',
  `Property3` varchar(200) DEFAULT NULL COMMENT '参数3',
  KEY `Index_1` (`LordsIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='押注记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_lordscross`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_lordscross` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `ServerName` varchar(20) NOT NULL COMMENT '服务器名称',
  `NickName` varchar(20) NOT NULL COMMENT '昵称',
  `UserKeys` varchar(40) NOT NULL COMMENT '用户唯一键',
  `Job` int(11) NOT NULL COMMENT '职业(只有1,2,3)',
  `SexJob` int(11) NOT NULL COMMENT '性别职业(有1,2,3,4,5,6)',
  `Grades` int(11) NOT NULL COMMENT '等级',
  `FashionArm` varchar(100) DEFAULT NULL,
  `FashionWing` varchar(100) DEFAULT NULL,
  `FashionCloth` varchar(100) DEFAULT NULL,
  `FashionHair` varchar(100) DEFAULT NULL,
  `FashionHat` varchar(100) DEFAULT NULL,
  `Arm` varchar(100) DEFAULT NULL,
  `IsVip` tinyint(4) NOT NULL COMMENT '是否VIP',
  `FightPower` int(11) NOT NULL COMMENT '战斗力',
  `ReadyScore` int(11) NOT NULL COMMENT '预赛积分',
  `ReadyOrder` int(11) NOT NULL COMMENT '预赛排名',
  `FinalScore` int(11) NOT NULL COMMENT '决赛积分',
  `FinalOrder` int(11) NOT NULL COMMENT '决赛排名',
  `ReadyRewad` int(11) NOT NULL COMMENT '预赛奖励获得状态',
  `FinalRewad` int(11) NOT NULL COMMENT '决赛奖励获得状态',
  `ReadyTurn` int(11) NOT NULL COMMENT '预赛回合数',
  `FinalTurn` int(11) NOT NULL COMMENT '决赛回合数',
  `ReadyWinCount` int(11) NOT NULL COMMENT '预赛胜利场数',
  `FinalWinCount` int(11) NOT NULL COMMENT '决赛胜利场数',
  `ReadyTakeTime` datetime NOT NULL COMMENT '预赛奖励领取时间',
  `FinalTakeTime` datetime NOT NULL COMMENT '决赛奖励领取时间',
  `IsExist` tinyint(4) NOT NULL COMMENT '是否存在',
  `CreateDate` datetime NOT NULL COMMENT '创建时间',
  `Property1` varchar(100) DEFAULT NULL COMMENT '属性1',
  `Property2` varchar(100) DEFAULT NULL COMMENT '属性2',
  `LordsIndex` int(11) NOT NULL DEFAULT '0',
  `FightPowerOrder` int(11) NOT NULL DEFAULT '0' COMMENT '战力排名',
  PRIMARY KEY (`UserKeys`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='众神之战跨服预赛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_lordsfinal`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_lordsfinal` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `ServerName` varchar(20) NOT NULL COMMENT '服务器名称',
  `NickName` varchar(20) NOT NULL COMMENT '昵称',
  `UserKeys` varchar(40) NOT NULL COMMENT '用户唯一键',
  `Job` int(11) NOT NULL COMMENT '职业(只有1,2,3)',
  `SexJob` int(11) NOT NULL COMMENT '性别职业(有1,2,3,4,5,6)',
  `Grades` int(11) NOT NULL COMMENT '等级',
  `FashionArm` varchar(100) DEFAULT NULL,
  `FashionWing` varchar(100) DEFAULT NULL,
  `FashionCloth` varchar(100) DEFAULT NULL,
  `FashionHair` varchar(100) DEFAULT NULL,
  `FashionHat` varchar(100) DEFAULT NULL,
  `Arm` varchar(100) DEFAULT NULL,
  `IsVip` tinyint(4) NOT NULL COMMENT '是否VIP',
  `FightPower` int(11) NOT NULL COMMENT '战斗力',
  `ReadyScore` int(11) NOT NULL COMMENT '预赛积分',
  `ReadyOrder` int(11) NOT NULL COMMENT '预赛排名',
  `FinalScore` int(11) NOT NULL COMMENT '决赛积分',
  `FinalOrder` int(11) NOT NULL COMMENT '决赛排名',
  `ReadyRewad` int(11) NOT NULL COMMENT '预赛奖励获得状态',
  `FinalRewad` int(11) NOT NULL COMMENT '决赛奖励获得状态',
  `ReadyTurn` int(11) NOT NULL COMMENT '预赛回合数',
  `FinalTurn` int(11) NOT NULL COMMENT '决赛回合数',
  `ReadyWinCount` int(11) NOT NULL COMMENT '预赛胜利场数',
  `FinalWinCount` int(11) NOT NULL COMMENT '决赛胜利场数',
  `ReadyTakeTime` datetime NOT NULL COMMENT '预赛奖励领取时间',
  `FinalTakeTime` datetime NOT NULL COMMENT '决赛奖励领取时间',
  `IsExist` tinyint(4) NOT NULL COMMENT '是否存在',
  `CreateDate` datetime NOT NULL COMMENT '创建时间',
  `Property1` varchar(100) DEFAULT NULL COMMENT '属性1',
  `Property2` varchar(100) DEFAULT NULL COMMENT '属性2',
  `LordsIndex` int(11) NOT NULL DEFAULT '0',
  `FightPowerOrder` int(11) NOT NULL DEFAULT '0' COMMENT '战力排名',
  PRIMARY KEY (`UserKeys`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='众神之战决赛表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_lordsrecord`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_lordsrecord` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `ServerName` varchar(20) NOT NULL COMMENT '服务器名称',
  `NickName` varchar(20) NOT NULL COMMENT '昵称',
  `UserKeys` varchar(40) NOT NULL COMMENT '用户唯一键',
  `Job` int(11) NOT NULL COMMENT '职业(只有1,2,3)',
  `SexJob` int(11) NOT NULL COMMENT '性别职业(有1,2,3,4,5,6)',
  `Grades` int(11) NOT NULL COMMENT '等级',
  `FashionArm` varchar(100) DEFAULT NULL,
  `FashionWing` varchar(100) DEFAULT NULL,
  `FashionCloth` varchar(100) DEFAULT NULL,
  `FashionHair` varchar(100) DEFAULT NULL,
  `FashionHat` varchar(100) DEFAULT NULL,
  `Arm` varchar(100) DEFAULT NULL,
  `IsVip` tinyint(4) NOT NULL COMMENT '是否VIP',
  `FightPower` int(11) NOT NULL COMMENT '战斗力',
  `ReadyScore` int(11) NOT NULL COMMENT '预赛积分',
  `ReadyOrder` int(11) NOT NULL COMMENT '预赛排名',
  `FinalScore` int(11) NOT NULL COMMENT '决赛积分',
  `FinalOrder` int(11) NOT NULL COMMENT '决赛排名',
  `ReadyRewad` int(11) NOT NULL COMMENT '预赛奖励获得状态',
  `FinalRewad` int(11) NOT NULL COMMENT '决赛奖励获得状态',
  `ReadyTurn` int(11) NOT NULL COMMENT '预赛回合数',
  `FinalTurn` int(11) NOT NULL COMMENT '决赛回合数',
  `ReadyWinCount` int(11) NOT NULL COMMENT '预赛胜利场数',
  `FinalWinCount` int(11) NOT NULL COMMENT '决赛胜利场数',
  `ReadyTakeTime` datetime NOT NULL COMMENT '预赛奖励领取时间',
  `FinalTakeTime` datetime NOT NULL COMMENT '决赛奖励领取时间',
  `IsExist` tinyint(4) NOT NULL COMMENT '是否存在',
  `CreateDate` datetime NOT NULL COMMENT '创建时间',
  `Property1` varchar(100) DEFAULT NULL COMMENT '属性1',
  `Property2` varchar(100) DEFAULT NULL COMMENT '属性2',
  `LordsIndex` int(11) NOT NULL DEFAULT '0',
  `FightPowerOrder` int(11) NOT NULL DEFAULT '0' COMMENT '战力排名',
  KEY `Index_1` (`FinalOrder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='众神之战决赛记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_luckywheel`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_luckywheel` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `Type` int(11) NOT NULL DEFAULT '0' COMMENT '类型:0,今日;1,昨日',
  `LuckyValue` int(11) NOT NULL DEFAULT '0' COMMENT '财富值',
  `RewardRecord` varchar(100) NOT NULL DEFAULT '' COMMENT '奖励记录',
  `Order` int(11) NOT NULL DEFAULT '0' COMMENT '当日排名',
  PRIMARY KEY (`UserId`,`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='玩家幸运转盘信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_luckywheelpass`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_luckywheelpass` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `Msg` varchar(255) NOT NULL DEFAULT '' COMMENT '递传信息',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='幸运转盘信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_mailinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_mailinfo` (
  `Id` int(11) NOT NULL COMMENT '邮件编号',
  `MailType` smallint(6) NOT NULL COMMENT '邮件类型',
  `SendType` smallint(6) NOT NULL DEFAULT '1' COMMENT '发送人权限1表示普通用户2表示gm 表示机器人',
  `SendId` int(11) NOT NULL COMMENT '发件人编号',
  `SendNickName` varchar(50) NOT NULL COMMENT '发件人昵称',
  `ReceiveId` int(11) NOT NULL COMMENT '收件人编号',
  `ReceiveNickName` varchar(50) NOT NULL COMMENT '收件人昵您',
  `SendDate` datetime NOT NULL COMMENT '发送时间',
  `ReadDate` datetime DEFAULT NULL COMMENT '阅读时间',
  `Title` varchar(200) DEFAULT NULL COMMENT '邮件标题',
  `Contents` varchar(1000) NOT NULL COMMENT '邮件内容',
  `RemoveDate` datetime DEFAULT NULL COMMENT '删除时间',
  `ValidityDate` smallint(6) NOT NULL COMMENT '有效期',
  `Annex1` int(11) NOT NULL COMMENT '附件一编号',
  `Annex1Name` int(11) DEFAULT NULL COMMENT '附件一名称',
  `Annex1Count` int(11) NOT NULL COMMENT '附件一数量',
  `IsAnnex1` tinyint(1) NOT NULL COMMENT '附件一是否领走（1表示已领取 0表示未领取）',
  `Annex2` int(11) NOT NULL COMMENT '附件二编号',
  `Annex2Name` int(11) DEFAULT NULL COMMENT '附件二名称',
  `Annex2Count` int(11) NOT NULL COMMENT '附件二数量',
  `IsAnnex2` tinyint(1) NOT NULL COMMENT '附件二是否领走',
  `Annex3` int(11) NOT NULL COMMENT '附件三编号',
  `Annex3Name` int(11) DEFAULT NULL COMMENT '附件三名称',
  `Annex3Count` int(11) NOT NULL COMMENT '附件三数量',
  `IsAnnex3` tinyint(1) NOT NULL COMMENT '附件三是否领走',
  `Annex4` int(11) NOT NULL COMMENT '附件四编号',
  `Annex4Name` int(11) DEFAULT NULL COMMENT '附件四名称',
  `Annex4Count` int(11) NOT NULL COMMENT '附件四数量',
  `IsAnnex4` tinyint(1) NOT NULL COMMENT '附件四是否领走',
  `Annex5` int(11) NOT NULL COMMENT '附件五编号',
  `Annex5Name` int(11) DEFAULT NULL COMMENT '附件五名称',
  `Annex5Count` int(11) NOT NULL COMMENT '附件五数量',
  `IsAnnex5` tinyint(1) NOT NULL COMMENT '附件五是否领走',
  `IsExist` tinyint(1) NOT NULL COMMENT '是否存在',
  `SendPlayerGrades` int(11) NOT NULL DEFAULT '0' COMMENT '发件人等级',
  PRIMARY KEY (`Id`),
  KEY `SendDate` (`SendDate`),
  KEY `ReadDate` (`ReadDate`),
  KEY `ReceiveId` (`ReceiveId`),
  KEY `SendId` (`SendId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户邮件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_mallbuy`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_mallbuy` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '所属用户',
  `MallItemId` int(11) NOT NULL COMMENT '拍卖物品ID',
  `BidupPoint` int(11) NOT NULL DEFAULT '1' COMMENT '竞拍出价',
  `BuyTime` datetime NOT NULL COMMENT '开拍时间',
  `IsExist` tinyint(1) NOT NULL COMMENT '是否存在',
  `FixPoint` int(11) NOT NULL DEFAULT '1' COMMENT '一口价',
  `UpdateTime` datetime DEFAULT NULL COMMENT '记录失效',
  `SellUserId` int(11) NOT NULL COMMENT '出售者ID',
  `IsSuccess` tinyint(4) DEFAULT '0' COMMENT '出售是否成功',
  `TemplateId` int(11) NOT NULL DEFAULT '0' COMMENT '物品模板id',
  `Count` smallint(6) NOT NULL DEFAULT '0' COMMENT '物品数量',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`BuyTime`,`UserId`),
  KEY `Index_2` (`MallItemId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品竞拍信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_mallitem`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_mallitem` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `UserId` int(11) NOT NULL COMMENT '所属用户',
  `NickName` varchar(50) NOT NULL COMMENT '昵称',
  `ItemId` int(11) NOT NULL COMMENT '物品ID',
  `Point` int(11) NOT NULL DEFAULT '1' COMMENT '当前价格',
  `FixPoint` int(11) NOT NULL DEFAULT '1' COMMENT '一口价',
  `ItemFrom` int(11) DEFAULT '1' COMMENT '品物来源1-玩家,2-系统',
  `MaxAuctionId` int(11) NOT NULL DEFAULT '0' COMMENT '出价最高的记录',
  `StartTime` datetime NOT NULL COMMENT '开始拍卖时间',
  `Hour` int(11) NOT NULL DEFAULT '4' COMMENT '默认拍卖4个小时',
  `IsExist` tinyint(1) NOT NULL COMMENT '是否存在',
  `UpdatedTime` datetime NOT NULL COMMENT '最近更新时间',
  `StartPoint` int(11) NOT NULL DEFAULT '1' COMMENT '起始价格',
  `count` smallint(6) NOT NULL DEFAULT '1' COMMENT '物品数量',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`StartTime`,`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='拍卖场物品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_mount`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_mount` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `MountTempId` int(11) NOT NULL COMMENT '坐骑模板',
  `PowerGp` int(11) NOT NULL COMMENT '力量经验',
  `IntellectGp` int(11) NOT NULL COMMENT '智力经验',
  `PhysiqueGp` int(11) NOT NULL COMMENT '体质经验',
  `AgilityGp` int(11) NOT NULL COMMENT '护甲经验',
  `MountTotalGp` int(11) NOT NULL COMMENT '坐骑总经验',
  `ExpandLevels` int(11) NOT NULL COMMENT '扩展等级',
  `SoulScore` smallint(6) NOT NULL DEFAULT '0' COMMENT '兽魂积分',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户坐骑';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_mountavatar`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_mountavatar` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `MountTempId` int(11) NOT NULL COMMENT '模板ID',
  `ExpairDate` datetime NOT NULL COMMENT '过期时间',
  `ActiveDate` datetime NOT NULL COMMENT '激活时间',
  `IsExist` tinyint(4) NOT NULL COMMENT '是否存在',
  PRIMARY KEY (`UserId`,`MountTempId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户坐骑avatar表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_mountstar`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_mountstar` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `TemplateId` int(11) NOT NULL COMMENT '坐骑id',
  `Star` int(11) NOT NULL DEFAULT '0' COMMENT '星级',
  `StarLucky` int(11) NOT NULL DEFAULT '0' COMMENT '星级幸运值',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=232 DEFAULT CHARSET=utf8 COMMENT='坐骑升星用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_mysterybuydata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_mysterybuydata` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `Index` tinyint(1) NOT NULL DEFAULT '0' COMMENT '位置',
  `ItemId` int(11) NOT NULL COMMENT '商品编号',
  `Counts` int(11) NOT NULL COMMENT '购买数量',
  `BuyDate` date NOT NULL COMMENT '日期',
  `IsBuy` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已购买',
  KEY `userid` (`UserId`,`Index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户购买数据（神秘商店）';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_mysteryevent`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_mysteryevent` (
  `Id` int(11) NOT NULL COMMENT '序号',
  `UserId` int(11) DEFAULT NULL COMMENT '玩家编号',
  `Remark` varchar(500) DEFAULT NULL COMMENT '备注',
  `CreateDate` datetime DEFAULT NULL COMMENT '创建日期',
  `IsExist` tinyint(1) DEFAULT NULL COMMENT '是否存在',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='神秘商店事件表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_playerbloodscore`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_playerbloodscore` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `BloodyTempId` int(11) NOT NULL COMMENT '关卡模板ID',
  `Score` int(11) DEFAULT '0' COMMENT '最佳击杀评分',
  `IsGet` tinyint(1) DEFAULT '0' COMMENT '是否领取奖品',
  `LastOccupyTime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '上次抢占时间',
  `LastStopOccupyTime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '上次被抢占时间',
  `StartOccupyTime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '初始抢占时间',
  KEY `Index_1` (`UserId`,`BloodyTempId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='血战灵鹫顽疾评分记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_playerbottle`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_playerbottle` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `Broken` smallint(4) NOT NULL DEFAULT '0' COMMENT '破罐子',
  `Score` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `Level` int(11) NOT NULL DEFAULT '0' COMMENT '魔罐等级',
  `Order` smallint(4) NOT NULL DEFAULT '0' COMMENT '排名',
  `Type` smallint(4) NOT NULL DEFAULT '0' COMMENT '类型:0,今日;1,昨日',
  KEY `Index_1` (`UserId`,`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户魔罐表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_playerext`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_playerext` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `WildLandGold` int(11) NOT NULL COMMENT '矿脉金币',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家信息扩展表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_playerforeverjoin`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_playerforeverjoin` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `Power` int(11) NOT NULL DEFAULT '0' COMMENT '力量',
  `Agility` int(11) NOT NULL DEFAULT '0' COMMENT '护甲',
  `Intellect` int(11) NOT NULL DEFAULT '0' COMMENT '智力',
  `Physique` int(11) NOT NULL DEFAULT '0' COMMENT '体质',
  `OutAttack` int(11) NOT NULL DEFAULT '0' COMMENT '外功攻击',
  `OutDefence` int(11) NOT NULL DEFAULT '0' COMMENT '外功防御',
  `InAttack` int(11) NOT NULL DEFAULT '0' COMMENT '内功攻击',
  `InDefence` int(11) NOT NULL DEFAULT '0' COMMENT '内功防御',
  `ForceHit` int(11) NOT NULL DEFAULT '0' COMMENT '暴击值',
  `ReCrit` int(11) NOT NULL DEFAULT '0' COMMENT '抗暴击值',
  `Wreck` int(11) NOT NULL DEFAULT '0' COMMENT '破击值',
  `HarmRates` int(11) NOT NULL DEFAULT '0' COMMENT '伤害率',
  `ReharmRates` int(11) NOT NULL DEFAULT '0' COMMENT '免伤率',
  `Live` int(11) NOT NULL DEFAULT '0' COMMENT '生命',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '格挡',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家永久属性加成';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_playerinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_playerinfo` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `NickName` varchar(50) NOT NULL COMMENT '昵称',
  `IsExist` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效',
  `Sexs` tinyint(1) NOT NULL DEFAULT '1' COMMENT '性别(0女 1男)',
  `Pics` smallint(6) NOT NULL COMMENT '肖像',
  `Camp` smallint(6) NOT NULL DEFAULT '0' COMMENT '阵营',
  `Point` int(11) NOT NULL DEFAULT '0' COMMENT '点券',
  `GiftToken` int(11) NOT NULL DEFAULT '0' COMMENT '礼劵',
  `Gold` int(11) NOT NULL DEFAULT '0' COMMENT '黄金',
  `State` smallint(6) NOT NULL DEFAULT '0' COMMENT '状态',
  `KnightSite` binary(20) DEFAULT NULL COMMENT '侠客组合标志位',
  `QuestSite` binary(200) DEFAULT NULL COMMENT '任务标志',
  `ConsortiaID` int(11) NOT NULL DEFAULT '0' COMMENT '公会编号',
  `ConsortiaName` varchar(50) DEFAULT NULL COMMENT '公会名称',
  `ConsortiaOutAttack` smallint(6) DEFAULT '0' COMMENT '公会技能外攻提升',
  `ConsortiaInAttack` smallint(6) DEFAULT '0' COMMENT '公会技能内攻提升',
  `ConsortiaLive` smallint(6) DEFAULT '0' COMMENT '公会技能生命提升',
  `ConsortiaOutDefense` smallint(6) DEFAULT '0' COMMENT '公会技能外防提升',
  `ConsortiaInDefense` smallint(6) DEFAULT '0' COMMENT '公会技能内防提升',
  `ConsortiaForcehit` smallint(6) DEFAULT '0' COMMENT '公会技能暴击提升',
  `ConsortiaRecrit` smallint(6) DEFAULT '0' COMMENT '公会技能抗暴提升',
  `ConsortiaParry` smallint(6) DEFAULT '0' COMMENT '公会技能招架提升',
  `ConsortiaWerck` smallint(6) DEFAULT '0' COMMENT '公会技能破击提升',
  `ConsortiaOffer` int(11) NOT NULL DEFAULT '0' COMMENT '公会贡献',
  `ConsortiaTotalOffer` int(11) NOT NULL DEFAULT '0' COMMENT '公会历史捐献',
  `ConsortiaActiveValue` int(11) NOT NULL DEFAULT '0' COMMENT '公会活跃度',
  `Renames` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否重命名',
  `ClaimId` smallint(6) NOT NULL DEFAULT '0' COMMENT '头衔',
  `ClaimName` varchar(50) DEFAULT NULL COMMENT '头衔名称',
  `Grades` smallint(6) NOT NULL DEFAULT '0' COMMENT '等级',
  `GP` bigint(20) NOT NULL DEFAULT '0' COMMENT '当前等级经验',
  `TotalGP` bigint(20) NOT NULL DEFAULT '0' COMMENT '总经验',
  `Repute` int(11) NOT NULL DEFAULT '0' COMMENT '声望',
  `Strategy` bigint(20) DEFAULT '0' COMMENT '武魂',
  `ResourceMax` int(11) NOT NULL DEFAULT '0' COMMENT '资源上限',
  `LogOutTime` datetime DEFAULT NULL COMMENT '用户下线时间',
  `CastleOrder` int(11) NOT NULL DEFAULT '0' COMMENT '用户扩展升级队列数',
  `BagCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '扩展背包',
  `HeroCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '扩展英雄数量',
  `Weary` int(11) DEFAULT '0' COMMENT '疲劳值',
  `NoviceProcess` smallint(6) DEFAULT '0' COMMENT '新手进度',
  `GradeProcess` bigint(20) DEFAULT '0' COMMENT '新手等级宝箱',
  `TimeProcess` int(11) DEFAULT '0' COMMENT '新手时间宝箱(分钟单位)',
  `TimeRun` int(11) NOT NULL DEFAULT '0' COMMENT '新手时间宝箱运行时长',
  `TimeGet` tinyint(1) DEFAULT '0' COMMENT '新手时间宝箱是否领取',
  `AttackCount` int(11) DEFAULT '0' COMMENT '攻击次数',
  `AttackItemCount` int(11) NOT NULL DEFAULT '0' COMMENT '掠夺山庄物品增加次数',
  `FightingCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力',
  `TotalFightingCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '玩家和出战侠客总战力',
  `MaxTotalFightingCapacity` int(11) DEFAULT '0' COMMENT '玩家历史最大战斗力',
  `KnightFightingCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '侠客总战力',
  `MatchWin` int(11) NOT NULL DEFAULT '0' COMMENT '竞技胜利场数',
  `MatchFailed` int(11) NOT NULL DEFAULT '0' COMMENT '竞技失败场数',
  `RavenCount` int(11) NOT NULL DEFAULT '0' COMMENT '攻击次数',
  `Right` smallint(6) NOT NULL DEFAULT '1' COMMENT '0：未创建、1：普通 、 2：GM、3：机器人、4：玩家指导员',
  `Job` smallint(6) DEFAULT '0' COMMENT '职业',
  `LeedProcess` int(11) NOT NULL DEFAULT '0' COMMENT '每日引导完成状态',
  `SignDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '上次签到时间',
  `SignTimes` int(11) NOT NULL DEFAULT '0' COMMENT '签到次数',
  `SignSite` int(11) NOT NULL DEFAULT '0' COMMENT '领奖阶段',
  `StarCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '扩展星格',
  `StartDate` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '上一次占星时间',
  `GpLastDate` date DEFAULT '2000-01-01',
  `Flag` tinyint(4) NOT NULL DEFAULT '0' COMMENT '禁言标志位',
  `BeginTime` datetime NOT NULL COMMENT '禁言开始时间',
  `EndTime` datetime NOT NULL COMMENT '禁言结束时间',
  `Reason` varchar(20) NOT NULL COMMENT '禁言原因',
  `LeedDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '每日引导时间',
  `RefuseFriend` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允许添加好友',
  `RefuseInvite` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否允许房间邀请',
  `VersionId` int(11) NOT NULL DEFAULT '0' COMMENT '版本ID',
  `LuckyCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '当前炼金次数',
  `RefiningSoulCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '当前炼魂次数',
  `WaterRefineCount` int(11) DEFAULT '0' COMMENT '炼化光晶',
  `MultiCampaignCount` int(11) NOT NULL DEFAULT '0' COMMENT '进入多人副本次数',
  `MultiCampaignItemCount` int(11) NOT NULL DEFAULT '0' COMMENT '已购买的多人副本次数',
  `WaterCrystal` int(11) NOT NULL DEFAULT '0' COMMENT '水晶',
  `StartFree` smallint(6) NOT NULL DEFAULT '0' COMMENT '免费占星次数',
  `StarPoint` int(11) NOT NULL DEFAULT '0' COMMENT '星运积分',
  `QTEGuide` int(11) DEFAULT '0' COMMENT 'QTE引导标记',
  `Geste` int(11) NOT NULL DEFAULT '0' COMMENT '荣誉',
  `StoreGrade` int(11) NOT NULL DEFAULT '0' COMMENT '宝石等级',
  `StoreGp` int(11) NOT NULL DEFAULT '0' COMMENT '宝石经验',
  `ReloginProcess` int(11) NOT NULL DEFAULT '0' COMMENT '多次登录进程',
  `ReloginCount` int(11) NOT NULL DEFAULT '0' COMMENT '多次登录次数',
  `ReloginDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '登录时间',
  `BlessingCount` int(11) NOT NULL DEFAULT '0' COMMENT '祝福轮盘启用次数',
  `BlessingBuff` int(11) NOT NULL DEFAULT '0' COMMENT '祝福轮盘buff效果',
  `FirstCharge` tinyint(1) NOT NULL DEFAULT '0' COMMENT '玩家是否首次充值（0：非首次充值，1：首次充值）',
  `Charm` int(11) NOT NULL DEFAULT '0' COMMENT '魅力值',
  `MatchRoomCount` tinyint(4) NOT NULL DEFAULT '0' COMMENT '竞技场次数',
  `KingBuff` tinyint(4) NOT NULL DEFAULT '0' COMMENT '专属BUFF领取状态',
  `LeaveGp` bigint(20) NOT NULL DEFAULT '0' COMMENT '离线经验',
  `WarFieldCount` tinyint(4) NOT NULL DEFAULT '0' COMMENT '跨服战场进入次数',
  `EnterTrialCount` tinyint(4) NOT NULL DEFAULT '0' COMMENT '进入试炼之塔次数',
  `CrossScore` int(11) NOT NULL DEFAULT '0' COMMENT '跨服积分',
  `MysteryScore` int(11) NOT NULL DEFAULT '0' COMMENT '玩家积分商城总积分',
  `AppellId` int(11) NOT NULL DEFAULT '0' COMMENT '称号ID',
  `LordsScore` int(11) NOT NULL DEFAULT '0' COMMENT '荣耀水晶',
  `Soul1` int(11) NOT NULL DEFAULT '0' COMMENT '侠魂1',
  `Soul2` int(11) NOT NULL DEFAULT '0' COMMENT '侠魂2',
  `Soul3` int(11) NOT NULL DEFAULT '0' COMMENT '侠魂3',
  `Soul4` int(11) NOT NULL DEFAULT '0' COMMENT '侠魂4',
  `KnightRewardSite` int(11) NOT NULL DEFAULT '0' COMMENT '侠客招募领奖进度',
  `DragonSoulId` int(11) NOT NULL DEFAULT '0' COMMENT '当前龙魂模板ID',
  `Vital` int(11) DEFAULT '0' COMMENT '真气',
  `ChargeRewardNum` int(11) DEFAULT '0' COMMENT '充值返利的充值点数',
  `ChargeRewardFlag` int(11) DEFAULT '0' COMMENT '充值返利领取标志',
  `KillCount` int(11) NOT NULL DEFAULT '0' COMMENT '玩家击杀野外怪次数',
  `LastKillTime` datetime NOT NULL DEFAULT '1970-01-01 00:00:00' COMMENT '玩家上次杀怪时间',
  `NewGradeProcess` double NOT NULL DEFAULT '0' COMMENT '新等级宝箱',
  `PointInvestFlag` int(11) NOT NULL DEFAULT '0' COMMENT '元宝投资标志',
  `DayGoalRewardFlag` int(11) NOT NULL DEFAULT '0' COMMENT '新手开服活动目标奖励领取情况',
  `ActivateSkillCount` tinyint(4) DEFAULT '0' COMMENT '激活技能数量',
  `Experience` int(11) NOT NULL DEFAULT '0' COMMENT '阅历',
  `EquipElderShip` int(11) NOT NULL DEFAULT '0' COMMENT '装备的辈分ID',
  `ActiveElderShip` int(11) NOT NULL DEFAULT '0' COMMENT '已激活的辈分',
  `ReadProgress` varchar(50) DEFAULT '' COMMENT '阅读进度',
  `FirstVisiteFlag` tinyint(11) DEFAULT '0' COMMENT '寻访标志位',
  `LastVisiteTime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '上次免费高级寻访时间',
  `HorcruxCount` tinyint(4) NOT NULL DEFAULT '1' COMMENT '可装备的魂器个数',
  `HorcruxFightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '魂器总战力',
  `HeroHorcruxFightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '主角魂器战斗力',
  `PlatType` tinyint(4) DEFAULT '0' COMMENT '会员类型 1Y:年费会员，2M:月费会员， 3E: 过期会员， 0N：非会员',
  `PlatLevel` tinyint(4) DEFAULT '-1' COMMENT '当前等级。非会员，为-1',
  `IsReceivePlat` tinyint(4) DEFAULT '0' COMMENT '是否领取平台新手礼包0未领取1已领取新手礼包2已领取年费礼包3以及领取新手礼包和年费礼包',
  `KnightScore` int(11) DEFAULT '0' COMMENT '侠义值',
  `CreditScore` int(11) NOT NULL DEFAULT '0' COMMENT '信用可用额度',
  `TotalCreditScore` double NOT NULL DEFAULT '0' COMMENT '总信用积分',
  `HasCreditRewardGrade` int(11) NOT NULL DEFAULT '0' COMMENT '已经领取的信用等级奖励',
  `OfficialId` int(11) NOT NULL DEFAULT '0' COMMENT '官衔ID',
  `PotenNum` int(11) NOT NULL DEFAULT '0' COMMENT '历练值',
  `TotalSendPoint` int(11) DEFAULT '0' COMMENT '红包发送元宝总数',
  `WheelScore` int(11) NOT NULL DEFAULT '0' COMMENT '幸运转盘积分',
  `TotalReceivePoint` int(11) DEFAULT '0' COMMENT '红包接收元宝总数',
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `Index_1` (`NickName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_playerjoin`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_playerjoin` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `Power` int(11) DEFAULT NULL COMMENT '力量',
  `Agility` int(11) DEFAULT NULL COMMENT '敏捷',
  `Intellect` int(11) DEFAULT NULL COMMENT '智力',
  `Captain` int(11) DEFAULT NULL COMMENT '统帅',
  `Physique` int(11) DEFAULT NULL COMMENT '体质',
  `Attack` int(11) DEFAULT NULL COMMENT '物理攻击',
  `Defence` int(11) DEFAULT NULL COMMENT '物理防御',
  `MagicAttack` int(11) DEFAULT NULL COMMENT '魔法攻击',
  `MagicDefence` int(11) DEFAULT NULL COMMENT '魔法防御',
  `Live` int(11) DEFAULT NULL COMMENT '生命',
  `Conat` int(11) DEFAULT NULL COMMENT '带兵上限',
  `ForceHit` int(11) DEFAULT NULL COMMENT '暴击值',
  `ReCrit` int(11) NOT NULL DEFAULT '0' COMMENT '抗暴击值',
  `Wreck` int(11) NOT NULL DEFAULT '0' COMMENT '破击值',
  `HarmRates` int(11) NOT NULL DEFAULT '0' COMMENT '伤害率',
  `ReharmRates` int(11) NOT NULL DEFAULT '0' COMMENT '免伤率',
  `CurArm` varchar(50) DEFAULT NULL COMMENT '武器',
  `CurCloth` varchar(50) DEFAULT NULL COMMENT '衣服',
  `Parry` int(11) NOT NULL DEFAULT '0' COMMENT '格档',
  `Wing` varchar(50) DEFAULT NULL COMMENT '翅膀',
  `BagSuitSkill` varchar(200) DEFAULT NULL COMMENT '套装技能',
  `HideFashion` int(11) DEFAULT '0' COMMENT '隐藏时装标志',
  `Hat` varchar(50) DEFAULT NULL COMMENT '帽子',
  `FashionArm` varchar(50) DEFAULT NULL COMMENT '时装武器',
  `FashionCloth` varchar(50) DEFAULT NULL COMMENT '时装衣服',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户加成属性';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_playertime`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_playertime` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `TransLastResetTime` datetime DEFAULT NULL COMMENT '传送阵能量重置时间',
  `WearyLastResetTime` datetime DEFAULT NULL COMMENT '体力值重置时间',
  `AtackLastResetTime` datetime DEFAULT NULL COMMENT '攻击次数重置时间',
  `TransNextMoveTime` datetime DEFAULT NULL COMMENT '下一次传送时间',
  `IsCloseAAS` tinyint(1) unsigned zerofill DEFAULT NULL COMMENT '是否开启防沉迷(true表示通过防沉迷)',
  `CardName` varchar(50) DEFAULT NULL COMMENT '身份证姓名',
  `CardId` varchar(25) DEFAULT NULL COMMENT '身份证ID',
  `AASOnlineTime` int(11) DEFAULT NULL COMMENT '当天在线时长',
  `AASBeginTime` datetime DEFAULT NULL COMMENT '防沉迷开始时间',
  `HangupTime` int(11) NOT NULL DEFAULT '0' COMMENT '在线挂机时长',
  `OfflineTime` int(11) NOT NULL DEFAULT '0' COMMENT '离线挂机时长',
  `RewardTimes` smallint(6) NOT NULL DEFAULT '0' COMMENT '每日悬赏次数',
  `RewardLastDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '上次悬赏时间',
  `RewardFree` smallint(6) NOT NULL DEFAULT '0' COMMENT '免费刷新次数',
  `BuyCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '每日购买神秘商店物品的次数',
  `MysteryLastDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '神秘商店上次刷新时间',
  `CheckCount` int(11) NOT NULL DEFAULT '0' COMMENT '验证次数',
  `IsFirst` tinyint(1) DEFAULT '0' COMMENT '是否第一次接受任务',
  `AltarCount` tinyint(4) unsigned NOT NULL DEFAULT '0' COMMENT '公会祈福次数',
  `AddTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '用户上次获得宝箱时间',
  `IsReceived` tinyint(1) NOT NULL DEFAULT '0' COMMENT ' 本周是否分配到宝箱',
  `LoginTimeRun` int(11) NOT NULL DEFAULT '0' COMMENT '玩家当天登录时长-活动专用',
  `BackBuffEndTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '英雄回归buff结束时间',
  `upRuneByPointTimes` mediumint(8) NOT NULL DEFAULT '0' COMMENT '玩家符文吞噬钻石培养次数',
  `SendGiftCount` tinyint(4) NOT NULL DEFAULT '0' COMMENT '侠客送礼次数',
  `GuildDayGoldOffer` int(11) DEFAULT '0' COMMENT '公会每日黄金捐献',
  `LastGuildGoldOfferDate` date DEFAULT '2000-01-01' COMMENT '最近公会黄金捐献日期',
  `IsFirstHunt` tinyint(1) DEFAULT '1' COMMENT '是否第一次进行侠客行',
  `LeftOpenCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '剩余每日抽奖次数',
  `EDayProcess` smallint(6) NOT NULL DEFAULT '0' COMMENT '每日抽奖增加次数进度',
  `EDayTimeRun` int(11) NOT NULL DEFAULT '0' COMMENT '每日抽奖在线时长',
  `EDayGet` tinyint(1) NOT NULL DEFAULT '0' COMMENT '每日抽奖赠送次数是否领取',
  `EDayOpenCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '每日抽奖次数（取距离5的次数）',
  `ChargeAdd` tinyint(1) NOT NULL DEFAULT '0' COMMENT '充值赠送次数是否已增加',
  `LastAddWearyTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '上次增加体力时间',
  `StageActiveFinishState` int(11) NOT NULL DEFAULT '0' COMMENT '阶段性活动完成状态',
  `StageActiveTakeState` int(11) NOT NULL DEFAULT '0' COMMENT '阶段性活动奖励领取状态',
  `StageActiveTakeTime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '首冲阶段奖励领取时间',
  `StageVIPFinishState` smallint(6) NOT NULL DEFAULT '0' COMMENT 'VIP阶段奖励完成状态',
  `StageVIPTakeState` smallint(6) NOT NULL DEFAULT '0' COMMENT 'VIP阶段性奖励领取状态',
  `InvestTime` datetime DEFAULT NULL COMMENT '投资时间',
  `InvestReward` int(11) DEFAULT '0' COMMENT '投资奖励标志',
  `UseCdkeyInfo` varchar(1024) DEFAULT '' COMMENT '使用激活码信息',
  `BuyBagTime` datetime DEFAULT '1970-01-01 00:00:00' COMMENT '购买背包时间',
  `CamDungeonRewardStatus` varchar(9000) DEFAULT NULL COMMENT '区域奖励是否领取（101,0|102,1|）',
  `CampaignSite` varchar(9000) DEFAULT NULL COMMENT '通过的区域',
  `SingleBossReward` varchar(1000) DEFAULT NULL COMMENT '精英副本区域奖励是否领取（101,0|102,1|）',
  `SingleBossTime` int(11) NOT NULL DEFAULT '0' COMMENT '精英副本当天击杀次数',
  `BottleCount` int(11) NOT NULL DEFAULT '0' COMMENT '砸魔罐次数',
  `SingleBossBuyCount` int(11) NOT NULL DEFAULT '0' COMMENT '购买精英副本的次数',
  `FreeUpgradeSacredTime` int(11) NOT NULL DEFAULT '0' COMMENT '当天已免费培养神兽的次数',
  `CollectionCount` int(11) NOT NULL DEFAULT '0' COMMENT '每日修行崖采集龙涎草次数',
  `ChapterReward` tinyint(4) NOT NULL DEFAULT '0' COMMENT '章节奖励状态',
  `DayOpenBoxCount` int(11) DEFAULT '0' COMMENT '今日开启宝箱数量',
  `DayFreeVisite` int(11) DEFAULT '0' COMMENT '每日免费寻访次数',
  `StarFreeLastDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '上次免费占卦的时间',
  `DayBloodyCount` tinyint(4) DEFAULT '0' COMMENT '每日血战灵鹫次数',
  `DayCrossCount` int(11) DEFAULT '0' COMMENT '每日免费跨服镜像战斗次数',
  `BuyCrossCount` int(11) DEFAULT '0' COMMENT '当日购买跨服挑战次数',
  `CurrentLevel` tinyint(4) DEFAULT '0' COMMENT '当日完成跨服战斗等级',
  `FirstHostDinner` tinyint(4) NOT NULL DEFAULT '0' COMMENT '首次设宴标记',
  `ItemCrossCount` int(11) DEFAULT NULL COMMENT '当日使用道具增加跨服次数',
  `ItemSingleBossTime` int(11) DEFAULT NULL COMMENT '使用道具增加精英副本的次数',
  `MonthGift` tinyint(4) DEFAULT '0' COMMENT '月费V计划礼包领取状态0未领取1已领取',
  `YearGift` tinyint(4) DEFAULT '0' COMMENT '年费V计划礼包领取状态0未领取1已领取',
  `VisiteScore` int(11) DEFAULT '0' COMMENT '侠客寻访积分',
  `SacredScore` int(11) DEFAULT '0' COMMENT '神兽砸蛋积分',
  `KnightChallengeNum` int(11) NOT NULL DEFAULT '0' COMMENT '侠客闯关次数',
  `FreeKnightTimes` int(11) DEFAULT '0' COMMENT '获取侠义值次数',
  `NewTimeRun` int(11) NOT NULL DEFAULT '0' COMMENT '新手玩家两小时累计时长',
  `NewTimeRewardCount` int(11) NOT NULL DEFAULT '0' COMMENT '新手两小时在线领取奖励',
  `RichManRewardTime` datetime DEFAULT NULL COMMENT '富甲天下活动领奖时间',
  `IsReceiveSalary` tinyint(4) DEFAULT '0' COMMENT '是否领取帮会工资',
  `RedBagCount` int(11) DEFAULT '0' COMMENT '发送红包次数',
  `InvestMonthTime` datetime DEFAULT NULL COMMENT '投资月卡时间',
  `InvestMonthReward` int(11) DEFAULT '0' COMMENT '投资月卡奖励标志',
  `HorcruxJadeSandCount` int(11) DEFAULT '0' COMMENT '焕魂砂数量',
  `InvestGradeTime` datetime DEFAULT NULL COMMENT '投资等级基金时间',
  `InvestGradeReward` tinyint(4) DEFAULT '0' COMMENT '投资等级基金奖励标志',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户时间表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_playorder`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_playorder` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `CurrentOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前GP排名',
  `CurrentGp` bigint(20) NOT NULL DEFAULT '0' COMMENT '当前GP值',
  `CurrentTotalGp` bigint(20) NOT NULL DEFAULT '0' COMMENT '当前总GP值',
  `CurrentGrades` int(11) NOT NULL DEFAULT '0' COMMENT '当前等级',
  `CurrentFightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '当前战斗力',
  `KnightFightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '侠客当前战斗力',
  `CurrentTotalFightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '当前玩家和出战侠客总战力',
  `CurrentGeste` int(11) NOT NULL DEFAULT '0' COMMENT '当前荣誉值',
  `LastDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '日增GP更新时间',
  `LastGP` bigint(20) NOT NULL DEFAULT '0' COMMENT '日增当前GP值',
  `LastAdd` int(11) NOT NULL DEFAULT '0' COMMENT '日增GP增加值',
  `LastOrder` int(11) NOT NULL DEFAULT '0' COMMENT '日增GP排名',
  `WeekGP` bigint(20) NOT NULL DEFAULT '0' COMMENT '周增当前GP值',
  `WeekAdd` int(11) NOT NULL DEFAULT '0' COMMENT '周增GP增加值',
  `WeekOrder` int(11) NOT NULL DEFAULT '0' COMMENT '周增GP排名',
  `FightCapacityOrder` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力',
  `KnightFightCapacityOrder` int(11) NOT NULL DEFAULT '0' COMMENT '侠客战力排名',
  `TotalFightCapacityOrder` int(11) NOT NULL DEFAULT '0' COMMENT '玩家和出战侠客总战力排名',
  `GesteOrder` int(11) NOT NULL DEFAULT '0' COMMENT '荣誉值排名',
  `WeekDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '周增GP更新时间',
  `LastWinCount` int(11) NOT NULL DEFAULT '0' COMMENT '持续胜利场数',
  `ChallengeCount` int(11) NOT NULL DEFAULT '0' COMMENT '挑战次数',
  `ChallengeItemCount` int(11) NOT NULL DEFAULT '0' COMMENT '已购买的挑战次数',
  `ChallengeBuyCount` int(11) NOT NULL DEFAULT '0' COMMENT '已购买的挑战次数',
  `CurRank` int(11) NOT NULL DEFAULT '0' COMMENT '当前排名',
  `TowerOrder` int(11) NOT NULL DEFAULT '0' COMMENT '无限塔排名',
  `TowerIndex` int(11) NOT NULL DEFAULT '0' COMMENT '当前层',
  `HistoryRank` int(11) NOT NULL DEFAULT '0' COMMENT '挑战赛历史排名',
  `TakeChallRewarDate` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '挑战赛挑领取时间',
  `TowerOrder2` int(11) NOT NULL DEFAULT '0' COMMENT '渊深迷宫排名',
  `TowerIndex2` int(11) NOT NULL DEFAULT '0' COMMENT '深渊迷宫当前层',
  `CurrentTotalCharm` int(11) NOT NULL DEFAULT '0' COMMENT '当前总魅力值',
  `CurrentTotalCharmOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前总魅力值排名',
  `LastCharm` int(11) NOT NULL DEFAULT '0' COMMENT '日增当前魅力值',
  `LastCharmAdd` int(11) NOT NULL DEFAULT '0' COMMENT '日增魅力增加值',
  `LastCharmOrder` int(11) NOT NULL DEFAULT '0' COMMENT '日增魅力排名',
  `WeekCharm` int(11) NOT NULL DEFAULT '0' COMMENT '周增当前魅力值',
  `WeekCharmAdd` int(11) NOT NULL DEFAULT '0' COMMENT '周增魅力增加值',
  `WeekCharmOrder` int(11) NOT NULL DEFAULT '0' COMMENT '周增魅力排名',
  `LastCharmDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '日增魅力更新时间',
  `WeekCharmDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '周增魅力更新时间',
  `SoulScoreOrder` int(11) DEFAULT '0' COMMENT '兽魂积分排名',
  `CurrentSoulScore` int(11) DEFAULT '0' COMMENT '当前兽魂积分',
  `CurrentTotalScore` int(11) NOT NULL DEFAULT '0' COMMENT '当前总积分',
  `WeekScore` int(11) NOT NULL DEFAULT '0' COMMENT '周增当前积分值',
  `WeekScoreAdd` int(11) NOT NULL DEFAULT '0' COMMENT '周增积分增加值',
  `WeekScoreOrder` int(11) NOT NULL DEFAULT '0' COMMENT '周增积分排名',
  `WeekScoreDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '周增积分更新时间',
  `WeekScoreHistoryRank` int(11) NOT NULL DEFAULT '0' COMMENT '跨服积分周排名',
  `TakeWeekScoreExpirtDate` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '领取称号过期日期',
  `JobFightOrder` int(11) NOT NULL DEFAULT '0' COMMENT '职业战力排名',
  `ChallengeOrder` int(11) NOT NULL DEFAULT '0' COMMENT 'JJC挑战排名',
  `ChangeCurrentOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前GP排名改变值',
  `ChangeLastOrder` int(11) NOT NULL DEFAULT '0' COMMENT '日增GP排名改变值',
  `ChangeWeekOrder` int(11) NOT NULL DEFAULT '0' COMMENT '周增GP排名改变值',
  `ChangeCurrentTotalCharmOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前总魅力值排名改变值',
  `ChangeLastCharmOrder` int(11) NOT NULL DEFAULT '0' COMMENT '日增魅力排名改变值',
  `ChangeWeekCharmOrder` int(11) NOT NULL DEFAULT '0' COMMENT '周增魅力排名改变值',
  `ChangeKnightFightCapacityOrder` int(11) NOT NULL DEFAULT '0' COMMENT '侠客战力排名改变值',
  `ChangeGesteOrder` int(11) NOT NULL DEFAULT '0' COMMENT '荣誉值排名改变值',
  `ChangeSoulScoreOrder` int(11) NOT NULL DEFAULT '0' COMMENT '兽魂积分排名改变值',
  `ChangeFightCapacityOrder` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力改变值',
  `FishScore` int(11) NOT NULL DEFAULT '0' COMMENT '钓鱼积分',
  `FishOrder` int(11) NOT NULL DEFAULT '0' COMMENT '日排名',
  `FishWeekScore` int(11) NOT NULL DEFAULT '0' COMMENT '周排名时间',
  `FishWeekOrder` int(11) NOT NULL DEFAULT '0' COMMENT '周排名',
  `GemMazeScore` int(11) NOT NULL DEFAULT '0' COMMENT '宝石迷阵积分',
  `GemMazeOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前排名',
  `GemMazeWeekScore` int(11) NOT NULL DEFAULT '0' COMMENT '周积分',
  `GemMazeWeekOrder` int(11) NOT NULL DEFAULT '0' COMMENT '宝石迷阵排名',
  `TodayFightCapacityOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当天玩家总战力排名',
  `TodayCharmOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当天魅力排名',
  `TodaySoulOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当天兽魂积分排名',
  `TodayGesteOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当天声望排名',
  `SendRedBagOrder` int(11) DEFAULT NULL COMMENT '发送红包宝元数排名',
  `SendPoint` int(11) DEFAULT NULL COMMENT '发送包红元宝数',
  `ReceiveRedBagOrder` int(11) DEFAULT NULL COMMENT '收接红包宝元数排名',
  `ReceivePoint` int(11) DEFAULT NULL COMMENT '领取红包元宝数',
  PRIMARY KEY (`UserId`),
  KEY `k_CurRank` (`CurRank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户排名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_playorder_history`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_playorder_history` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `CurrentOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前GP排名',
  `CurrentGp` bigint(20) NOT NULL DEFAULT '0' COMMENT '当前GP值',
  `CurrentTotalGp` bigint(20) NOT NULL DEFAULT '0' COMMENT '当前总GP值',
  `CurrentGrades` int(11) NOT NULL DEFAULT '0' COMMENT '当前等级',
  `CurrentFightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '当前战斗力',
  `KnightFightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '侠客当前战斗力',
  `CurrentTotalFightCapacity` int(11) NOT NULL DEFAULT '0' COMMENT '当前玩家和出战侠客总战力',
  `CurrentGeste` int(11) NOT NULL DEFAULT '0' COMMENT '当前荣誉值',
  `LastDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '日增GP更新时间',
  `LastGP` bigint(20) NOT NULL DEFAULT '0' COMMENT '日增当前GP值',
  `LastAdd` int(11) NOT NULL DEFAULT '0' COMMENT '日增GP增加值',
  `LastOrder` int(11) NOT NULL DEFAULT '0' COMMENT '日增GP排名',
  `WeekGP` bigint(20) NOT NULL DEFAULT '0' COMMENT '周增当前GP值',
  `WeekAdd` int(11) NOT NULL DEFAULT '0' COMMENT '周增GP增加值',
  `WeekOrder` int(11) NOT NULL DEFAULT '0' COMMENT '周增GP排名',
  `FightCapacityOrder` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力',
  `KnightFightCapacityOrder` int(11) NOT NULL DEFAULT '0' COMMENT '侠客战力排名',
  `TotalFightCapacityOrder` int(11) NOT NULL DEFAULT '0' COMMENT '玩家和出战侠客总战力排名',
  `GesteOrder` int(11) NOT NULL DEFAULT '0' COMMENT '荣誉值排名',
  `WeekDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '周增GP更新时间',
  `LastWinCount` int(11) NOT NULL DEFAULT '0' COMMENT '持续胜利场数',
  `ChallengeCount` int(11) NOT NULL DEFAULT '0' COMMENT '挑战次数',
  `ChallengeItemCount` int(11) NOT NULL DEFAULT '0' COMMENT '已购买的挑战次数',
  `ChallengeBuyCount` int(11) NOT NULL DEFAULT '0' COMMENT '已购买的挑战次数',
  `CurRank` int(11) NOT NULL DEFAULT '0' COMMENT '当前排名',
  `TowerOrder` int(11) NOT NULL DEFAULT '0' COMMENT '无限塔排名',
  `TowerIndex` int(11) NOT NULL DEFAULT '0' COMMENT '当前层',
  `HistoryRank` int(11) NOT NULL DEFAULT '0' COMMENT '挑战赛历史排名',
  `TakeChallRewarDate` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '挑战赛挑领取时间',
  `TowerOrder2` int(11) NOT NULL DEFAULT '0' COMMENT '渊深迷宫排名',
  `TowerIndex2` int(11) NOT NULL DEFAULT '0' COMMENT '深渊迷宫当前层',
  `CurrentTotalCharm` int(11) NOT NULL DEFAULT '0' COMMENT '当前总魅力值',
  `CurrentTotalCharmOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前总魅力值排名',
  `LastCharm` int(11) NOT NULL DEFAULT '0' COMMENT '日增当前魅力值',
  `LastCharmAdd` int(11) NOT NULL DEFAULT '0' COMMENT '日增魅力增加值',
  `LastCharmOrder` int(11) NOT NULL DEFAULT '0' COMMENT '日增魅力排名',
  `WeekCharm` int(11) NOT NULL DEFAULT '0' COMMENT '周增当前魅力值',
  `WeekCharmAdd` int(11) NOT NULL DEFAULT '0' COMMENT '周增魅力增加值',
  `WeekCharmOrder` int(11) NOT NULL DEFAULT '0' COMMENT '周增魅力排名',
  `LastCharmDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '日增魅力更新时间',
  `WeekCharmDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '周增魅力更新时间',
  `SoulScoreOrder` int(11) DEFAULT '0' COMMENT '兽魂积分排名',
  `CurrentSoulScore` int(11) DEFAULT '0' COMMENT '当前兽魂积分',
  `CurrentTotalScore` int(11) NOT NULL DEFAULT '0' COMMENT '当前总积分',
  `WeekScore` int(11) NOT NULL DEFAULT '0' COMMENT '周增当前积分值',
  `WeekScoreAdd` int(11) NOT NULL DEFAULT '0' COMMENT '周增积分增加值',
  `WeekScoreOrder` int(11) NOT NULL DEFAULT '0' COMMENT '周增积分排名',
  `WeekScoreDate` date NOT NULL DEFAULT '2000-01-01' COMMENT '周增积分更新时间',
  `WeekScoreHistoryRank` int(11) NOT NULL DEFAULT '0' COMMENT '跨服积分周排名',
  `TakeWeekScoreExpirtDate` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '领取称号过期日期',
  `JobFightOrder` int(11) NOT NULL DEFAULT '0' COMMENT '职业战力排名',
  `ChallengeOrder` int(11) NOT NULL DEFAULT '0' COMMENT 'JJC挑战排名',
  `ChangeCurrentOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前GP排名改变值',
  `ChangeLastOrder` int(11) NOT NULL DEFAULT '0' COMMENT '日增GP排名改变值',
  `ChangeWeekOrder` int(11) NOT NULL DEFAULT '0' COMMENT '周增GP排名改变值',
  `ChangeCurrentTotalCharmOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前总魅力值排名改变值',
  `ChangeLastCharmOrder` int(11) NOT NULL DEFAULT '0' COMMENT '日增魅力排名改变值',
  `ChangeWeekCharmOrder` int(11) NOT NULL DEFAULT '0' COMMENT '周增魅力排名改变值',
  `ChangeKnightFightCapacityOrder` int(11) NOT NULL DEFAULT '0' COMMENT '侠客战力排名改变值',
  `ChangeGesteOrder` int(11) NOT NULL DEFAULT '0' COMMENT '荣誉值排名改变值',
  `ChangeSoulScoreOrder` smallint(6) unsigned NOT NULL DEFAULT '0' COMMENT '兽魂积分排名改变值',
  `ChangeFightCapacityOrder` int(11) NOT NULL DEFAULT '0' COMMENT '战斗力改变值',
  `FishScore` int(11) NOT NULL DEFAULT '0' COMMENT '钓鱼积分',
  `FishOrder` int(11) NOT NULL DEFAULT '0' COMMENT '日排名',
  `FishWeekScore` int(11) NOT NULL DEFAULT '0' COMMENT '周排名时间',
  `FishWeekOrder` int(11) NOT NULL DEFAULT '0' COMMENT '周排名',
  `GemMazeScore` int(11) NOT NULL DEFAULT '0' COMMENT '宝石迷阵积分',
  `GemMazeOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前排名',
  `GemMazeWeekScore` int(11) NOT NULL DEFAULT '0' COMMENT '周积分',
  `GemMazeWeekOrder` int(11) NOT NULL DEFAULT '0' COMMENT '宝石迷阵排名',
  `TodayFightCapacityOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当天玩家总战力排名',
  `TodayCharmOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当天魅力排名',
  `TodaySoulOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当天兽魂积分排名',
  `TodayGesteOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当天声望排名',
  `SendRedBagOrder` int(11) DEFAULT NULL COMMENT '发送红包宝元数排名',
  `ReceiveRedBagOrder` int(11) DEFAULT NULL COMMENT '收接红包宝元数排名',
  `ReceivePoint` int(11) DEFAULT NULL COMMENT '领取红包元宝数',
  `SendPoint` int(11) DEFAULT NULL COMMENT '发送包红元宝数',
  PRIMARY KEY (`UserId`),
  KEY `k_CurRank` (`CurRank`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户排名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_privilegegift`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_privilegegift` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `RewardIds` varchar(200) DEFAULT NULL COMMENT '已领取礼包ID',
  `Property1` varchar(200) DEFAULT NULL,
  `Property2` varchar(200) DEFAULT NULL,
  `TakeDate` datetime DEFAULT NULL COMMENT '礼包领取时间',
  `IsGet` tinyint(4) DEFAULT '0' COMMENT '是否获得',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='360特权礼包领取记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_questdata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_questdata` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `TemplateId` int(11) NOT NULL COMMENT '任务编号',
  `IsComplete` tinyint(1) NOT NULL COMMENT '是否完成',
  `AddDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '接收日期',
  `CompletedDate` datetime NOT NULL COMMENT '完成日期',
  `Condition1` int(11) NOT NULL COMMENT '任务条件一',
  `Condition2` int(11) NOT NULL COMMENT '任务条件二',
  `Condition3` int(11) NOT NULL COMMENT '任务条件三',
  `Condition4` int(11) NOT NULL COMMENT '任务条件四',
  `RepeatFinish` int(11) NOT NULL COMMENT '重复完成次数',
  `IsSelect` tinyint(1) NOT NULL DEFAULT '1',
  `IsExist` tinyint(1) NOT NULL COMMENT '是否存在',
  `QuickReward` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否能领快速奖励',
  PRIMARY KEY (`UserId`,`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='任务奖励物品';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_question`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_question` (
  `QuestionId` varchar(50) NOT NULL COMMENT '问题Id',
  `QuestionType` int(11) NOT NULL COMMENT '问题类型',
  `UserId` int(11) NOT NULL COMMENT '用户id',
  `Site` varchar(50) NOT NULL COMMENT '站点名称',
  `Title` varchar(200) NOT NULL COMMENT '标题',
  `Content` varchar(1000) NOT NULL COMMENT '详细内容',
  `ReplayContent` varchar(1000) DEFAULT NULL COMMENT '回复内容',
  `ReplayUserName` varchar(50) DEFAULT NULL COMMENT '回复人',
  `CommitDate` datetime NOT NULL COMMENT '提交时间',
  `ReplayDate` datetime DEFAULT NULL COMMENT '回复时间',
  `IsRead` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否已经阅读',
  `Employ` int(11) DEFAULT NULL COMMENT '回复客服Id',
  `StopReply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否可以继续回复（0可以1否）',
  `IsReply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否回复',
  PRIMARY KEY (`QuestionId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='客服问题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_questionnarie`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_questionnarie` (
  `Userid` int(11) NOT NULL COMMENT '用户ID',
  `QuestionnarieId` varchar(50) NOT NULL COMMENT '问卷ID',
  `QuestionId` tinyint(4) unsigned NOT NULL COMMENT '题号',
  `Answer` varchar(200) NOT NULL COMMENT '对应答案',
  KEY `Userid` (`Userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户问卷答题记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_rank`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_rank` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `MapId` smallint(6) DEFAULT NULL COMMENT '地图编号',
  `Rank` smallint(6) DEFAULT NULL COMMENT '评价',
  `Star` smallint(6) DEFAULT NULL COMMENT '星级',
  `AttackTime` tinyint(4) DEFAULT '0' COMMENT '精英副本击杀次数',
  `BuyTime` tinyint(4) DEFAULT '0' COMMENT '精英副本购买次数',
  UNIQUE KEY `Index_1` (`UserId`,`MapId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='单人副本每张地图的通关评价';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_rebatedata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_rebatedata` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `Id` varchar(36) NOT NULL COMMENT 'ID',
  `ConsumPoint` int(11) NOT NULL DEFAULT '0' COMMENT '消费钻石',
  PRIMARY KEY (`UserId`,`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='消费回馈活动记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_recover`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_recover` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `TempId` smallint(4) NOT NULL COMMENT '模板ID',
  `Record` int(11) NOT NULL DEFAULT '0' COMMENT '找回记录(每个字节表示一天的剩余找回次数)',
  PRIMARY KEY (`UserId`,`TempId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户找回记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_redbag`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_redbag` (
  `RedBagId` int(11) NOT NULL COMMENT '主键ID',
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `Point` int(11) NOT NULL DEFAULT '0' COMMENT '排名积分',
  `Count` int(11) NOT NULL DEFAULT '0' COMMENT '当前排名',
  `Rewards` varchar(100) DEFAULT NULL COMMENT '红包领取信息',
  `CurrIndex` tinyint(4) DEFAULT '0' COMMENT '当前领取进度',
  `ReceiveUserIds` varchar(200) DEFAULT NULL COMMENT '当前已经领取用户',
  `ReceivePoint` int(11) DEFAULT '0' COMMENT '当前已经领取元宝',
  `IsExpire` tinyint(4) DEFAULT '0' COMMENT '是否过期0未过期1已经过期',
  `CreateTime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  PRIMARY KEY (`RedBagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户红包信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_redbag_receive`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_redbag_receive` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `RedBagId` int(11) NOT NULL COMMENT '红包ID',
  `Point` int(11) NOT NULL DEFAULT '0' COMMENT '领取到的元宝数',
  `CreateTime` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '领取时间',
  PRIMARY KEY (`UserId`,`RedBagId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户红包领取信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_rename`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_rename` (
  `ChangeId` int(11) DEFAULT NULL COMMENT '改名编号',
  `ClassType` int(11) DEFAULT NULL COMMENT '改名类型',
  `BeforeNickName` varchar(50) DEFAULT NULL COMMENT '改名前名称',
  `EndNickName` varchar(50) DEFAULT NULL COMMENT '改名后名称',
  `ChangeDate` datetime DEFAULT NULL COMMENT '修改时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户改名表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_replacement`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_replacement` (
  `UserId` int(11) NOT NULL COMMENT '户用Id',
  `CampaignId` int(11) NOT NULL COMMENT '副本Id',
  `BuyTime` datetime NOT NULL COMMENT '购买时间',
  `EndTime` datetime DEFAULT NULL COMMENT '结束时间',
  PRIMARY KEY (`UserId`,`CampaignId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='世界boss替身表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_rewarddata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_rewarddata` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `TemplateId` int(11) NOT NULL COMMENT '任务编号',
  `IsComplete` tinyint(1) NOT NULL COMMENT '是否完成',
  `CompletedDate` datetime NOT NULL COMMENT '完成日期',
  `Condition1` int(11) NOT NULL DEFAULT '0' COMMENT '任务条件一',
  `Condition2` int(11) NOT NULL DEFAULT '0' COMMENT '任务条件二',
  `Condition3` int(11) NOT NULL DEFAULT '0' COMMENT '任务条件三',
  `Condition4` int(11) NOT NULL DEFAULT '0' COMMENT '任务条件四',
  `RepeatFinish` int(11) NOT NULL DEFAULT '1' COMMENT '重复完成次数',
  `Quality` int(11) NOT NULL COMMENT '品质',
  `IsSelect` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否已选(1表示已选,0表示未选)',
  `IsExist` tinyint(1) NOT NULL COMMENT '是否存在',
  PRIMARY KEY (`UserId`,`TemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户悬赏记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_richman`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_richman` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `UserId` int(11) NOT NULL,
  `ValueType` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '积分类型',
  `ExValue` int(11) NOT NULL DEFAULT '0' COMMENT '剩余尾数',
  `Point` int(11) NOT NULL DEFAULT '0' COMMENT '积分',
  `LastDate` datetime NOT NULL,
  `TargetReward` tinyint(4) NOT NULL DEFAULT '0' COMMENT '达成奖励领取状态',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8 COMMENT='达成奖励领取状态';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_richmanorderinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_richmanorderinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ActiveType` int(11) NOT NULL COMMENT '活动类型',
  `UserId` int(11) NOT NULL,
  `ServerName` varchar(30) NOT NULL COMMENT '服务器名称',
  `NickName` varchar(50) NOT NULL COMMENT '昵称',
  `OrderId` int(11) NOT NULL COMMENT '排名',
  `Score` bigint(20) NOT NULL COMMENT '积分',
  `Pics` smallint(6) DEFAULT '1' COMMENT '肖像',
  `CreateTime` datetime DEFAULT NULL COMMENT '创建时间',
  `Site` varchar(30) NOT NULL COMMENT '站点',
  PRIMARY KEY (`Id`),
  KEY `Index_activeId` (`ActiveType`)
) ENGINE=InnoDB AUTO_INCREMENT=23061 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_runeinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_runeinfo` (
  `Id` int(11) NOT NULL COMMENT '编号ID',
  `UserId` int(11) NOT NULL DEFAULT '0' COMMENT '玩家ID',
  `RuneId` int(11) NOT NULL DEFAULT '0' COMMENT '玩家符文ID',
  `RuneCurGp` int(11) NOT NULL DEFAULT '0' COMMENT '玩家符文当前经验',
  `SwallowCount` int(11) NOT NULL DEFAULT '0' COMMENT '玩家符文吞噬符文书的数量',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='保存玩家符文信息表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_sacred`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_sacred` (
  `TemplateID` int(11) NOT NULL COMMENT '神兽模板id',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `Grades` smallint(6) NOT NULL DEFAULT '0' COMMENT '等级',
  `GP` int(11) NOT NULL COMMENT '经验值',
  `Star` int(11) NOT NULL COMMENT '星级',
  `IsOnTeam` smallint(6) NOT NULL COMMENT '是否上阵',
  `RefineStep` int(11) NOT NULL COMMENT '神兽神炼阶段',
  `SkillScript` varchar(200) DEFAULT NULL COMMENT '被动技能列表，主动技能是与星级相关的，不在这',
  `CurrentFightCapacity` int(11) DEFAULT '0' COMMENT '神兽战斗力',
  `IsActive` tinyint(4) DEFAULT '1' COMMENT '是否激活0未激活1激活',
  `TotalDecianti` int(11) DEFAULT '0' COMMENT '减抗',
  `TotalAttack` int(11) DEFAULT '0' COMMENT '攻击',
  `TotalAntiDark` int(11) DEFAULT '0' COMMENT '暗抗',
  `TotalAntiFire` int(11) DEFAULT '0' COMMENT '火抗',
  `TotalAntiLight` int(11) DEFAULT '0' COMMENT '光抗',
  `TotalAntiWater` int(11) DEFAULT '0' COMMENT '水抗',
  `TotalAntiWood` int(11) DEFAULT '0' COMMENT '木抗',
  `TotalBaseSp` int(11) DEFAULT '0' COMMENT '初始灵气',
  `TotalBackSp` int(11) DEFAULT '0' COMMENT '回复灵气速度',
  `TotalForcehit` int(11) DEFAULT '0' COMMENT '暴击',
  `BodyPos` int(11) NOT NULL DEFAULT '0' COMMENT '附体位置 1 2 3 4',
  `Potential1` int(11) NOT NULL DEFAULT '0' COMMENT '潜能丹',
  `Potential2` int(11) NOT NULL DEFAULT '0' COMMENT '造化丹',
  `BodySkillCount` tinyint(4) DEFAULT '0' COMMENT '体附技能数',
  `SacredTemp1` int(11) DEFAULT '0' COMMENT '兽神模板ID1',
  `BodySkillSonType1` int(11) DEFAULT '0' COMMENT '体附技能子类型',
  `SacredTemp2` int(11) DEFAULT '0' COMMENT '兽神模板ID2',
  `BodySkillSonType2` int(11) DEFAULT '0' COMMENT '兽神技能子类型',
  PRIMARY KEY (`TemplateID`,`UserId`),
  KEY `indx1` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家神兽数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_sacred_field`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_sacred_field` (
  `UserId` int(11) NOT NULL COMMENT '所属用户Id',
  `SacredId` int(11) NOT NULL COMMENT '所属神兽id',
  `Pos` int(11) NOT NULL COMMENT '栏位',
  `Grades` int(11) NOT NULL COMMENT '阶数',
  `Exp` int(11) NOT NULL COMMENT '经验值',
  PRIMARY KEY (`UserId`,`SacredId`,`Pos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='神兽幻灵-玩家栏位数据';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_serverforce`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_serverforce` (
  `ServerUid` varchar(36) NOT NULL COMMENT '服务器唯一标识',
  `ServerName` varchar(20) NOT NULL COMMENT '服务器名称',
  `ProxyName` varchar(20) NOT NULL COMMENT '代理名称',
  `CrossId` int(11) NOT NULL COMMENT '跨区服务器ID',
  `GroupId` int(11) NOT NULL COMMENT '跨区分组ID',
  `TeamId` int(11) NOT NULL COMMENT '队伍ID',
  `ForceScore` int(11) NOT NULL COMMENT '势力积分',
  `LadderGrade` tinyint(4) NOT NULL COMMENT '天梯段位',
  `LadderScore` int(11) NOT NULL COMMENT '天梯积分',
  `maxFightCapacity` int(11) NOT NULL COMMENT '玩家最高战力',
  `LastUpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `CrossOrder` int(11) NOT NULL COMMENT '跨服排名',
  PRIMARY KEY (`ServerUid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='服务器势力信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_smelte`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_smelte` (
  `UserId` int(11) NOT NULL COMMENT '编号',
  `ComposeId` int(11) NOT NULL COMMENT '分类',
  PRIMARY KEY (`UserId`,`ComposeId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户合成公式';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_sms`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_sms` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `UserPhone` varchar(21) DEFAULT NULL COMMENT '用户手机号码',
  `CurrentDate` datetime NOT NULL COMMENT '操作时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户短信日志';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_snsinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_snsinfo` (
  `Id` int(11) NOT NULL DEFAULT '0' COMMENT 'ID',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `RealName` varchar(50) NOT NULL DEFAULT '',
  `HeadId` int(11) NOT NULL DEFAULT '0' COMMENT '头像ID',
  `Sex` tinyint(1) DEFAULT '0' COMMENT '性别 1-男,2-女,0 保密',
  `BirthdayType` int(11) DEFAULT '1' COMMENT '生日类型1-公历,2-农历',
  `BirthYear` int(11) DEFAULT '0' COMMENT '年',
  `BirthMonth` int(11) DEFAULT '0' COMMENT '月',
  `BirthDay` int(11) DEFAULT '0' COMMENT '日',
  `StarId` int(11) DEFAULT '1' COMMENT '星座',
  `BloodType` int(11) DEFAULT '1' COMMENT '型血',
  `Country` int(11) DEFAULT '1' COMMENT '国家',
  `Province` int(11) DEFAULT '0' COMMENT '省份',
  `City` int(11) DEFAULT '0' COMMENT '城市',
  `CreateDate` datetime NOT NULL COMMENT '创建时间',
  `Desc` varchar(255) DEFAULT '' COMMENT '个性签名',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='角色信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_sortconsortiainfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_sortconsortiainfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '键主ID',
  `UserId` int(11) DEFAULT NULL COMMENT '用户ID',
  `ConsortiaId` int(11) DEFAULT NULL COMMENT '会公ID',
  `OrderId` int(11) DEFAULT NULL COMMENT '排名',
  `ActiveId` smallint(6) DEFAULT NULL COMMENT '活动ID',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_sortrecordinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_sortrecordinfo` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键ID',
  `activeId` int(11) NOT NULL COMMENT '动活ID',
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `NickName` varchar(50) NOT NULL COMMENT '昵称',
  `OrderId` int(11) NOT NULL COMMENT '排序ID',
  `Score` bigint(20) NOT NULL COMMENT '分数',
  `Pics` smallint(6) DEFAULT '1' COMMENT '肖像',
  `CreateTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`Id`),
  KEY `Index_activeId` (`activeId`)
) ENGINE=InnoDB AUTO_INCREMENT=4189785 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_starinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_starinfo` (
  `Id` int(11) NOT NULL COMMENT '编号',
  `UserId` int(11) NOT NULL COMMENT '所属用户',
  `BagType` smallint(6) NOT NULL COMMENT '背包类型',
  `Pos` smallint(6) NOT NULL COMMENT '位置',
  `TemplateId` int(11) NOT NULL COMMENT '模板编号',
  `IsExist` tinyint(1) NOT NULL COMMENT '是否存在',
  `Grade` int(11) NOT NULL COMMENT '等级',
  `Gp` int(11) NOT NULL COMMENT '经验',
  `AddDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '添加时间',
  `AddType` smallint(6) NOT NULL DEFAULT '0' COMMENT '添加来源',
  `RemoveDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '移除时间',
  `RemoveType` smallint(6) NOT NULL DEFAULT '0' COMMENT '移除来源',
  `IsLock` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否锁定',
  `KnightTempId` int(11) NOT NULL DEFAULT '0' COMMENT '所属侠客，为0表示玩家主角',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='物品信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_sumactivecondition`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_sumactivecondition` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID',
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `ConditionId` int(11) NOT NULL COMMENT '条件id',
  `Value` int(11) NOT NULL COMMENT '数值',
  `CurrentDate` datetime NOT NULL COMMENT '时间',
  `Bak` int(11) NOT NULL COMMENT '备注',
  `Bak1` int(11) NOT NULL DEFAULT '0' COMMENT '备注2',
  `SumactiveId` varchar(36) DEFAULT NULL COMMENT '活动ID',
  PRIMARY KEY (`Id`),
  KEY `indx1` (`UserId`)
) ENGINE=InnoDB AUTO_INCREMENT=525587 DEFAULT CHARSET=utf8 COMMENT='精彩活动条件记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_sumactivepackage`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_sumactivepackage` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `PackageId` varchar(36) NOT NULL COMMENT '礼包ID',
  `Num` int(11) NOT NULL DEFAULT '1' COMMENT '领取次数',
  `Current` datetime NOT NULL COMMENT '领取时间',
  PRIMARY KEY (`UserId`,`PackageId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='精彩活动礼包领取记录';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_talentinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_talentinfo` (
  `UserId` int(11) NOT NULL COMMENT '英雄编号',
  `Point` int(11) DEFAULT '0' COMMENT '天赋点',
  `Grade` smallint(6) unsigned DEFAULT NULL COMMENT '天赋等级',
  `SkillScript` varchar(300) DEFAULT NULL COMMENT '天赋技能',
  `FastKey` varchar(100) DEFAULT NULL COMMENT '出战技能',
  `StudySkillScript` varchar(255) DEFAULT NULL COMMENT '已经学过且需要技能书的技能',
  `ItemPoint` int(11) NOT NULL DEFAULT '0' COMMENT '道具增加的点数',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='天赋技能表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_temporder`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_temporder` (
  `Id` int(11) NOT NULL AUTO_INCREMENT COMMENT '序号',
  `ObjectId` int(11) NOT NULL DEFAULT '0' COMMENT '对象编号',
  `Para1` int(11) DEFAULT NULL COMMENT '参数1',
  PRIMARY KEY (`Id`),
  KEY `Index_1` (`ObjectId`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8 COMMENT='临时排名';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_towerhitinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_towerhitinfo` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `NickName` varchar(50) NOT NULL COMMENT '用户昵称',
  `CampaignId` int(11) NOT NULL COMMENT '副本ID',
  `TowerIndex` int(11) NOT NULL COMMENT '通过层数',
  `CreateDate` datetime NOT NULL COMMENT '创建日期',
  KEY `Index_1` (`UserId`,`TowerIndex`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地下迷宫首次击杀记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_towerinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_towerinfo` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `CampaignId` int(11) NOT NULL DEFAULT '8001' COMMENT '副本Id',
  `EnterCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '进入次数',
  `FreeLiveCount` smallint(6) NOT NULL DEFAULT '0' COMMENT '免费复活次数',
  `TotalGp` int(11) NOT NULL DEFAULT '0' COMMENT '累计经验',
  `TowerIndex` smallint(6) NOT NULL DEFAULT '0' COMMENT '当前层',
  `CurNodes` varchar(100) DEFAULT NULL COMMENT '当前击败节点',
  `MaxIndex` smallint(6) NOT NULL DEFAULT '0' COMMENT '最高纪录',
  `UpdateTime` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '更新时间',
  `DropItems` varchar(500) DEFAULT NULL COMMENT '掉落记录',
  `Index` tinyint(2) NOT NULL DEFAULT '0' COMMENT '排序',
  `EnterType` tinyint(2) NOT NULL DEFAULT '0' COMMENT '进入方式',
  PRIMARY KEY (`UserId`,`CampaignId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='无限塔';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_tree`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_tree` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `TreeGrades` smallint(6) NOT NULL COMMENT '用户树等级',
  `GP` int(11) NOT NULL COMMENT '树经验',
  `WaterCount` int(11) NOT NULL COMMENT '当前浇水数量',
  `FruitCount` int(11) NOT NULL COMMENT '果实数量',
  `NextPickTime` datetime NOT NULL COMMENT '上一次清理果实时间',
  `IsFirstFruit` tinyint(4) DEFAULT NULL COMMENT '是否为第一次结果',
  `Property1` smallint(6) NOT NULL COMMENT '扩展1',
  `Property2` smallint(6) NOT NULL COMMENT '扩展2',
  `NickName` varchar(50) DEFAULT NULL COMMENT '昵称',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户建筑';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_usercharge`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_usercharge` (
  `OrderId` varchar(200) NOT NULL COMMENT '订单编号',
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `UserName` varchar(100) NOT NULL COMMENT '用户名',
  `PlayGrade` int(11) NOT NULL COMMENT '当前领主等级',
  `Point` int(11) NOT NULL COMMENT '点卷',
  `NeedMoney` decimal(10,2) NOT NULL COMMENT '花费货币',
  `MoneyType` varchar(30) NOT NULL COMMENT '货币类型',
  `OrderDate` datetime NOT NULL COMMENT '充值日期',
  `GetDate` datetime DEFAULT NULL COMMENT '领取日期',
  `CanUse` tinyint(1) NOT NULL COMMENT '是否使用',
  `PayWay` varchar(30) DEFAULT NULL COMMENT '支付方式',
  `PayName` varchar(200) DEFAULT NULL COMMENT '支付方式名称',
  `ActiveIp` varchar(30) NOT NULL COMMENT '充值IP',
  `Site` varchar(30) NOT NULL COMMENT '充值站点',
  `Uuid` bigint(20) NOT NULL DEFAULT '0' COMMENT '全局唯一ID',
  PRIMARY KEY (`OrderId`,`Site`),
  KEY `UserId` (`UserId`,`CanUse`),
  KEY `OrderDate` (`OrderDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户充值表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_userforce`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_userforce` (
  `UserId` int(11) NOT NULL COMMENT '玩家ID',
  `DailyHonor` int(11) NOT NULL COMMENT '日个人荣誉',
  `TotalHonor` int(11) NOT NULL COMMENT '总个人荣誉',
  `DailyMedal` int(11) NOT NULL COMMENT '日军务经验',
  `LastKilled` int(11) NOT NULL DEFAULT '0' COMMENT '昨日杀人数',
  `DailyKilled` int(11) NOT NULL COMMENT '日击杀玩家数',
  `TotalMedal` int(11) NOT NULL COMMENT '总军务经验',
  `LadderScore` int(11) NOT NULL COMMENT '天梯积分',
  `ClearDebuff` int(11) NOT NULL COMMENT '清理Debuff次数',
  `DebuffTime` datetime NOT NULL COMMENT 'Debuff开始时间',
  `LastUpdateTime` datetime NOT NULL COMMENT '最后更新时间',
  `RewardStatus` tinyint(4) NOT NULL COMMENT '奖励状态',
  `CrossOrder` int(11) NOT NULL COMMENT '跨服排名',
  `CurrentOrder` int(11) NOT NULL DEFAULT '0' COMMENT '当前排名(存储过程生成本区排名，不能内存回写)',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='个人势力信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_userinfo`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_userinfo` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `UserName` varchar(100) NOT NULL COMMENT '用户名',
  `Passwords` varchar(50) DEFAULT NULL COMMENT '密码',
  `IsForbid` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否禁号',
  `LastLockoutDate` datetime DEFAULT NULL COMMENT '最后一次禁号时间',
  `ForbidReason` varchar(50) DEFAULT NULL COMMENT '禁号原因',
  `OpenDate` datetime DEFAULT NULL COMMENT '解禁时间',
  `OpenReason` varchar(50) DEFAULT NULL COMMENT '解禁原因',
  `CreateDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `ChargeDate` timestamp NULL DEFAULT '1999-12-31 16:00:00' COMMENT '最近充值时间',
  `LastLoginDate1` datetime DEFAULT NULL COMMENT '最后登陆时间1',
  `LastLoginDate2` datetime DEFAULT NULL COMMENT '最后登陆时间2',
  `LastLoginDate3` datetime DEFAULT NULL COMMENT '最后登陆时间3',
  `LoginCount` int(11) NOT NULL DEFAULT '0' COMMENT '总登陆次数',
  `LastLoginIp2` varchar(30) DEFAULT 'null' COMMENT '最后登陆IP2',
  `LastLoginIp1` varchar(30) DEFAULT 'null' COMMENT '最后登陆IP2',
  `ActiveIp` varchar(30) DEFAULT NULL COMMENT '登陆IP',
  `OnlineTime1` int(11) NOT NULL DEFAULT '0' COMMENT '在线时间1(分钟)',
  `OnlineTime2` int(11) NOT NULL DEFAULT '0' COMMENT '在线时间2',
  `OnlineTime3` int(11) NOT NULL DEFAULT '0' COMMENT '在线时间3',
  `Site` varchar(30) DEFAULT NULL COMMENT '登陆站点',
  `IsOnline` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否在线',
  `Active` tinyint(1) DEFAULT NULL COMMENT '是否激活角色',
  `LastLogOutDate` datetime DEFAULT '2000-01-01 00:00:00' COMMENT '最后离开时间',
  `IsClient` int(11) NOT NULL DEFAULT '0' COMMENT '登陆器登陆次数',
  `ClientWay` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否登陆器登陆',
  `IsExist` tinyint(1) NOT NULL DEFAULT '1' COMMENT '是否有效',
  `IsSkip` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否跳过新手',
  `ForbidExpirtDate` datetime DEFAULT NULL COMMENT '禁号过期时间',
  `IsInternal` tinyint(1) NOT NULL DEFAULT '0' COMMENT '玩家标识，0表示普通玩家，1表示内部玩家',
  `Uuid` bigint(20) NOT NULL DEFAULT '0' COMMENT '全局唯一ID',
  PRIMARY KEY (`UserId`),
  UNIQUE KEY `Index_3` (`UserName`,`Site`),
  KEY `CreateDate` (`CreateDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户资料';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_userinfo_del`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_userinfo_del` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `UserName` varchar(100) NOT NULL COMMENT '用户名',
  `NickName` varchar(50) NOT NULL COMMENT '昵称',
  `CreateDate` datetime NOT NULL DEFAULT '2000-01-01 00:00:00' COMMENT '创建时间',
  `LastLoginDate1` datetime DEFAULT NULL COMMENT '最后登陆时间1',
  `Grades` smallint(6) NOT NULL DEFAULT '0' COMMENT '等级',
  `Active` tinyint(1) DEFAULT NULL COMMENT '是否激活角色',
  `Site` varchar(30) DEFAULT NULL COMMENT '登陆站点',
  PRIMARY KEY (`UserId`),
  KEY `CreateDate` (`CreateDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_userphone`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_userphone` (
  `UserId` int(11) NOT NULL COMMENT '用户ID',
  `Phone` varchar(21) DEFAULT NULL COMMENT '手机号码',
  `Pin` int(11) NOT NULL COMMENT '验证码',
  `EnterTime` datetime NOT NULL COMMENT '输入时间',
  `Time` int(11) NOT NULL COMMENT '一天输入次数',
  `IsVerify` tinyint(1) NOT NULL COMMENT '是否验证通过',
  `Address` varchar(50) NOT NULL,
  PRIMARY KEY (`UserId`),
  KEY `Index_Phone` (`Phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户手机验证';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_usertimedata`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_usertimedata` (
  `UserId` int(11) NOT NULL COMMENT '用户id',
  `Type` int(11) NOT NULL COMMENT '时间类型(1、议事殿奖励)',
  `Time` datetime DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`UserId`,`Type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家时间数据表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_vehicle`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_vehicle` (
  `Id` int(11) NOT NULL COMMENT '玩家载具记录号',
  `UserId` int(11) NOT NULL COMMENT '玩家id',
  `VehicleTemplateId` int(11) NOT NULL COMMENT '载具模版id',
  PRIMARY KEY (`Id`),
  UNIQUE KEY `uniqueKey_1` (`UserId`,`VehicleTemplateId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家载具记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_vehicle_profile`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_vehicle_profile` (
  `UserId` int(11) NOT NULL COMMENT '玩家id',
  `VehicleExp` int(11) DEFAULT NULL COMMENT '载具操作经验',
  `VehicleScore` int(11) DEFAULT NULL COMMENT '载具活动积分',
  `DefaultVehicle` int(11) DEFAULT NULL COMMENT '默认载具id',
  `LastVehicleFinishedTime` int(11) NOT NULL DEFAULT '0' COMMENT '上次完成载具副本的时间',
  PRIMARY KEY (`UserId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家载具操作属性表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_vip`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_vip` (
  `UserId` int(11) NOT NULL COMMENT '用户编号',
  `VipGp` decimal(11,2) NOT NULL COMMENT 'vip 经验值',
  `VipType` int(11) NOT NULL COMMENT 'vip类型',
  `CreateDate` datetime DEFAULT NULL COMMENT '创建时间',
  `ExpirtDate` datetime DEFAULT NULL COMMENT 'vip过期日期',
  `WeekGiftDate` datetime DEFAULT NULL COMMENT '最后修改时间',
  `TakedGradeBox` int(11) NOT NULL DEFAULT '0' COMMENT '已领取的VIP等级宝箱',
  PRIMARY KEY (`UserId`),
  KEY `Index_2` (`CreateDate`),
  KEY `Index_3` (`ExpirtDate`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='vip用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_u_worldboss`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_u_worldboss` (
  `CampaignId` int(11) NOT NULL COMMENT '战役ID',
  `Grades` int(11) DEFAULT NULL COMMENT '等级',
  `States` int(11) DEFAULT NULL COMMENT '状态',
  `UpGradeTime` int(11) DEFAULT NULL COMMENT '升级时间',
  `LastUpdateTime` datetime DEFAULT NULL COMMENT '上次更新时间',
  PRIMARY KEY (`CampaignId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='地图路径';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `t_week_update`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_week_update` (
  `update_day` date NOT NULL COMMENT 'SP运行时间',
  `status` tinyint(4) NOT NULL COMMENT '状态：0是已运行，1是未运行，2重复运行'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `url_normal`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url_normal` (
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `url_order`
--

/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `url_order` (
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary view structure for view `view_u_consortia`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_u_consortia` AS SELECT 
 1 AS `ConsortiaID`,
 1 AS `ConsortiaName`,
 1 AS `CreatorID`,
 1 AS `CreatorName`,
 1 AS `CreateDate`,
 1 AS `ChairmanID`,
 1 AS `ChairmanName`,
 1 AS `Description`,
 1 AS `Placard`,
 1 AS `Levels`,
 1 AS `AddCount`,
 1 AS `CurrentCount`,
 1 AS `Offer`,
 1 AS `TotalOffer`,
 1 AS `Honor`,
 1 AS `OpenApp`,
 1 AS `KickDate`,
 1 AS `KickCount`,
 1 AS `FightPower`,
 1 AS `ShopLevel`,
 1 AS `StoreLevel`,
 1 AS `AltarLevel`,
 1 AS `SchoolLevel`,
 1 AS `OutAttackLevel`,
 1 AS `OutDefenceLevel`,
 1 AS `InAttackLevel`,
 1 AS `InDefenseLevel`,
 1 AS `LiveLevel`,
 1 AS `ForcehitLevel`,
 1 AS `RecritLevel`,
 1 AS `OwnWildlands`,
 1 AS `DeductDate`,
 1 AS `WarnDate`,
 1 AS `CodeType`,
 1 AS `CodeBeginDate`,
 1 AS `CodeNeedDate`,
 1 AS `IsExist`,
 1 AS `QuitDate`,
 1 AS `QuitResult`,
 1 AS `IsRobot`,
 1 AS `VotingDate`,
 1 AS `VotingStatic`,
 1 AS `VotingId`,
 1 AS `ActiveData`,
 1 AS `Death`,
 1 AS `GroupPlacard`,
 1 AS `AltarDate`,
 1 AS `AltarState`,
 1 AS `GradeOrder`,
 1 AS `CurrentLevels`,
 1 AS `CurrentFightPower`,
 1 AS `CurrentOffer`,
 1 AS `FightPowerOrder`,
 1 AS `LastDayOffer`,
 1 AS `LastDayDate`,
 1 AS `LastDayOrder`,
 1 AS `LastWeekOffer`,
 1 AS `LastWeekDate`,
 1 AS `LastWeekOrder`,
 1 AS `WarOrder`,
 1 AS `ChangeGradeOrder`,
 1 AS `ChangeFightPowerOrder`,
 1 AS `AltarMaxWaveNum`,
 1 AS `ActiveValue`,
 1 AS `ParryLevel`,
 1 AS `WreckLevel`,
 1 AS `ConsortiaType`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_u_playerinfo`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_u_playerinfo` AS SELECT 
 1 AS `UserId`,
 1 AS `NickName`,
 1 AS `IsExist`,
 1 AS `Sexs`,
 1 AS `Pics`,
 1 AS `Camp`,
 1 AS `Point`,
 1 AS `GiftToken`,
 1 AS `Gold`,
 1 AS `State`,
 1 AS `QuestSite`,
 1 AS `ConsortiaID`,
 1 AS `ConsortiaName`,
 1 AS `ConsortiaOutAttack`,
 1 AS `ConsortiaInAttack`,
 1 AS `ConsortiaLive`,
 1 AS `ConsortiaOutDefense`,
 1 AS `ConsortiaInDefense`,
 1 AS `ConsortiaForcehit`,
 1 AS `ConsortiaOffer`,
 1 AS `ConsortiaTotalOffer`,
 1 AS `Renames`,
 1 AS `ClaimId`,
 1 AS `ClaimName`,
 1 AS `Grades`,
 1 AS `GP`,
 1 AS `TotalGP`,
 1 AS `Repute`,
 1 AS `Strategy`,
 1 AS `ResourceMax`,
 1 AS `LogOutTime`,
 1 AS `CastleOrder`,
 1 AS `BagCount`,
 1 AS `HeroCount`,
 1 AS `Weary`,
 1 AS `NoviceProcess`,
 1 AS `GradeProcess`,
 1 AS `TimeProcess`,
 1 AS `TimeRun`,
 1 AS `TimeGet`,
 1 AS `AttackCount`,
 1 AS `FightingCapacity`,
 1 AS `MatchWin`,
 1 AS `MatchFailed`,
 1 AS `RavenCount`,
 1 AS `Right`,
 1 AS `Job`,
 1 AS `LeedProcess`,
 1 AS `LeedDate`,
 1 AS `SignDate`,
 1 AS `SignTimes`,
 1 AS `SignSite`,
 1 AS `StarCount`,
 1 AS `StartFree`,
 1 AS `StartDate`,
 1 AS `GpLastDate`,
 1 AS `Flag`,
 1 AS `VersionId`,
 1 AS `LuckyCount`,
 1 AS `RefiningSoulCount`,
 1 AS `BeginTime`,
 1 AS `EndTime`,
 1 AS `Reason`,
 1 AS `RefuseFriend`,
 1 AS `RefuseInvite`,
 1 AS `MultiCampaignCount`,
 1 AS `WaterCrystal`,
 1 AS `QTEGuide`,
 1 AS `StarPoint`,
 1 AS `Geste`,
 1 AS `StoreGrade`,
 1 AS `StoreGp`,
 1 AS `ReloginProcess`,
 1 AS `ReloginCount`,
 1 AS `ReloginDate`,
 1 AS `blessingCount`,
 1 AS `blessingBuff`,
 1 AS `FirstCharge`,
 1 AS `Charm`,
 1 AS `MatchRoomCount`,
 1 AS `KingBuff`,
 1 AS `LeaveGp`,
 1 AS `WarFieldCount`,
 1 AS `MysteryScore`,
 1 AS `EnterTrialCount`,
 1 AS `CrossScore`,
 1 AS `Appellid`,
 1 AS `OfficialId`,
 1 AS `CurrentOrder`,
 1 AS `CurrentGp`,
 1 AS `CurrentTotalGP`,
 1 AS `CurrentGrades`,
 1 AS `CurrentFightCapacity`,
 1 AS `LastDate`,
 1 AS `LastGP`,
 1 AS `LastAdd`,
 1 AS `LastOrder`,
 1 AS `WeekDate`,
 1 AS `WeekGP`,
 1 AS `WeekAdd`,
 1 AS `WeekOrder`,
 1 AS `FightCapacityOrder`,
 1 AS `LastWinCount`,
 1 AS `ChallengeCount`,
 1 AS `CurRank`,
 1 AS `TowerOrder`,
 1 AS `TowerIndex`,
 1 AS `HistoryRank`,
 1 AS `CurrentGeste`,
 1 AS `GesteOrder`,
 1 AS `TowerOrder2`,
 1 AS `CurrentTotalCharm`,
 1 AS `CurrentTotalCharmOrder`,
 1 AS `LastCharm`,
 1 AS `LastCharmAdd`,
 1 AS `LastCharmOrder`,
 1 AS `WeekCharm`,
 1 AS `WeekCharmAdd`,
 1 AS `WeekCharmOrder`,
 1 AS `LastCharmDate`,
 1 AS `WeekCharmDate`,
 1 AS `TowerIndex2`,
 1 AS `SoulScoreOrder`,
 1 AS `CurrentSoulScore`,
 1 AS `CurrentTotalScore`,
 1 AS `WeekScore`,
 1 AS `WeekScoreAdd`,
 1 AS `WeekScoreOrder`,
 1 AS `WeekScoreDate`,
 1 AS `WeekScoreHistoryRank`,
 1 AS `TakeWeekScoreExpirtDate`,
 1 AS `JobFightOrder`,
 1 AS `ChallengeOrder`,
 1 AS `TransLastResetTime`,
 1 AS `WearyLastResetTime`,
 1 AS `AtackLastResetTime`,
 1 AS `TransNextMoveTime`,
 1 AS `IsCloseAAS`,
 1 AS `AASOnlineTime`,
 1 AS `AASBeginTime`,
 1 AS `HangupTime`,
 1 AS `OfflineTime`,
 1 AS `RewardTimes`,
 1 AS `RewardLastDate`,
 1 AS `RewardFree`,
 1 AS `BuyCount`,
 1 AS `MysteryLastDate`,
 1 AS `CheckCount`,
 1 AS `IsFirst`,
 1 AS `AltarCount`,
 1 AS `AddTime`,
 1 AS `IsReceived`,
 1 AS `upRuneByPointTimes`,
 1 AS `Power`,
 1 AS `Agility`,
 1 AS `Intellect`,
 1 AS `Captain`,
 1 AS `Physique`,
 1 AS `Attack`,
 1 AS `Defence`,
 1 AS `MagicAttack`,
 1 AS `MagicDefence`,
 1 AS `Live`,
 1 AS `Conat`,
 1 AS `ForceHit`,
 1 AS `Parry`,
 1 AS `CurArm`,
 1 AS `CurCloth`,
 1 AS `Wing`,
 1 AS `BagSuitSkill`,
 1 AS `HideFashion`,
 1 AS `Hat`,
 1 AS `FashionArm`,
 1 AS `FashionCloth`,
 1 AS `LoginTimeRun`,
 1 AS `LordsScore`,
 1 AS `BackBuffEndTime`,
 1 AS `ReCrit`,
 1 AS `Wreck`,
 1 AS `HarmRates`,
 1 AS `ReharmRates`,
 1 AS `SendGiftCount`,
 1 AS `Soul1`,
 1 AS `Soul2`,
 1 AS `Soul3`,
 1 AS `Soul4`,
 1 AS `KnightFightCapacityOrder`,
 1 AS `KnightFightCapacity`,
 1 AS `KnightSite`,
 1 AS `KnightRewardSite`,
 1 AS `GuildDayGoldOffer`,
 1 AS `LastGuildGoldOfferDate`,
 1 AS `IsFirstHunt`,
 1 AS `DragonSoulId`,
 1 AS `LeftOpenCount`,
 1 AS `EDayProcess`,
 1 AS `EDayTimeRun`,
 1 AS `EDayGet`,
 1 AS `EDayOpenCount`,
 1 AS `ChargeAdd`,
 1 AS `LastAddWearyTime`,
 1 AS `StageActiveFinishState`,
 1 AS `StageActiveTakeState`,
 1 AS `WaterRefineCount`,
 1 AS `ChangeCurrentOrder`,
 1 AS `ChangeLastOrder`,
 1 AS `ChangeWeekOrder`,
 1 AS `ChangeCurrentTotalCharmOrder`,
 1 AS `ChangeLastCharmOrder`,
 1 AS `ChangeWeekCharmOrder`,
 1 AS `ChangeKnightFightCapacityOrder`,
 1 AS `ChangeGesteOrder`,
 1 AS `ChangeSoulScoreOrder`,
 1 AS `ChangeFightCapacityOrder`,
 1 AS `Vital`,
 1 AS `FishScore`,
 1 AS `FishOrder`,
 1 AS `FishWeekScore`,
 1 AS `FishWeekOrder`,
 1 AS `GemMazeScore`,
 1 AS `GemMazeOrder`,
 1 AS `GemMazeWeekScore`,
 1 AS `GemMazeWeekOrder`,
 1 AS `InvestTime`,
 1 AS `InvestReward`,
 1 AS `InvestMonthTime`,
 1 AS `InvestMonthReward`,
 1 AS `ConsortiaActiveValue`,
 1 AS `ChargeRewardNum`,
 1 AS `ChargeRewardFlag`,
 1 AS `TotalFightingCapacity`,
 1 AS `KnightFightingCapacity`,
 1 AS `CurrentTotalFightCapacity`,
 1 AS `TotalFightCapacityOrder`,
 1 AS `ConsortiaRecrit`,
 1 AS `ConsortiaParry`,
 1 AS `ConsortiaWerck`,
 1 AS `BuyBagTime`,
 1 AS `CamDungeonRewardStatus`,
 1 AS `CampaignSite`,
 1 AS `SingleBossReward`,
 1 AS `SingleBossTime`,
 1 AS `SingleBossBuyCount`,
 1 AS `ChapterReward`,
 1 AS `DayOpenBoxCount`,
 1 AS `DayFreeVisite`,
 1 AS `KillCount`,
 1 AS `LastKillTime`,
 1 AS `UseCdkeyInfo`,
 1 AS `NewGradeProcess`,
 1 AS `PointInvestFlag`,
 1 AS `DayGoalRewardFlag`,
 1 AS `BottleCount`,
 1 AS `FreeUpgradeSacredTime`,
 1 AS `ActivateSkillCount`,
 1 AS `CollectionCount`,
 1 AS `StageActiveTakeTime`,
 1 AS `StageVIPFinishState`,
 1 AS `StageVIPTakeState`,
 1 AS `Experience`,
 1 AS `EquipElderShip`,
 1 AS `ActiveElderShip`,
 1 AS `ReadProgress`,
 1 AS `FirstVisiteFlag`,
 1 AS `LastVisiteTime`,
 1 AS `StarFreeLastDate`,
 1 AS `DayBloodyCount`,
 1 AS `ChallengeBuyCount`,
 1 AS `MaxTotalFightingCapacity`,
 1 AS `DayCrossCount`,
 1 AS `BuyCrossCount`,
 1 AS `CurrentLevel`,
 1 AS `MultiCampaignItemCount`,
 1 AS `ChallengeItemCount`,
 1 AS `AttackItemCount`,
 1 AS `FirstHostDinner`,
 1 AS `TodayFightCapacityOrder`,
 1 AS `TodayCharmOrder`,
 1 AS `TodaySoulOrder`,
 1 AS `TodayGesteOrder`,
 1 AS `ItemCrossCount`,
 1 AS `ItemSingleBossTime`,
 1 AS `HorcruxCount`,
 1 AS `HorcruxFightCapacity`,
 1 AS `HeroHorcruxFightCapacity`,
 1 AS `PlatType`,
 1 AS `PlatLevel`,
 1 AS `IsReceivePlat`,
 1 AS `MonthGift`,
 1 AS `YearGift`,
 1 AS `KnightScore`,
 1 AS `VisiteScore`,
 1 AS `SacredScore`,
 1 AS `FreeKnightTimes`,
 1 AS `HasCreditRewardGrade`,
 1 AS `CreditScore`,
 1 AS `TotalCreditScore`,
 1 AS `NewTimeRun`,
 1 AS `NewTimeRewardCount`,
 1 AS `RichManRewardTime`,
 1 AS `PotenNum`,
 1 AS `KnightChallengeNum`,
 1 AS `SendRedBagOrder`,
 1 AS `SendPoint`,
 1 AS `ReceiveRedBagOrder`,
 1 AS `ReceivePoint`,
 1 AS `WheelScore`,
 1 AS `IsReceiveSalary`,
 1 AS `RedBagCount`,
 1 AS `TotalSendPoint`,
 1 AS `TotalReceivePoint`,
 1 AS `HorcruxJadeSandCount`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_u_simpleinfo`
--

SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `view_u_simpleinfo` AS SELECT 
 1 AS `userId`,
 1 AS `nickName`,
 1 AS `isExist`,
 1 AS `sexs`,
 1 AS `pics`,
 1 AS `camp`,
 1 AS `state`,
 1 AS `consortiaID`,
 1 AS `strategy`,
 1 AS `consortiaName`,
 1 AS `consortiaOffer`,
 1 AS `ConsortiaTotalOffer`,
 1 AS `claimId`,
 1 AS `claimName`,
 1 AS `repute`,
 1 AS `logOutTime`,
 1 AS `fightingCapacity`,
 1 AS `MatchWin`,
 1 AS `MatchFailed`,
 1 AS `GpOrder`,
 1 AS `Grades`,
 1 AS `GP`,
 1 AS `Right`,
 1 AS `Job`,
 1 AS `RefuseFriend`,
 1 AS `StoreGrade`,
 1 AS `StoreGp`,
 1 AS `CurRank`,
 1 AS `ChallengeCount`,
 1 AS `LastWinCount`,
 1 AS `TowerOrder`,
 1 AS `TowerIndex`,
 1 AS `TowerOrder2`,
 1 AS `TowerIndex2`,
 1 AS `TotalFightingCapacity`,
 1 AS `ConsortiaActiveValue`,
 1 AS `DragonSoulId`,
 1 AS `PSign`,
 1 AS `Point`,
 1 AS `Site`,
 1 AS `Uuid`,
 1 AS `UserName`,
 1 AS `EndTime`,
 1 AS `PlatType`,
 1 AS `PlatLevel`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping events for database 'db_normal'
--

--
-- Dumping routines for database 'db_normal'
--
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`7roaddba`@`localhost` PROCEDURE `proc_u_dungeon_update`()
begin
	drop temporary table if exists temp_order;
	create temporary table if not exists temp_order(objectid int primary key,orderid int);

	set session transaction isolation level read uncommitted;
	
	update t_u_dungeon set orderscore = weekscore ;
	
	set @i=0;
	insert into temp_order(objectid,orderid)
	select userid,@i:=@i+1 from
	(
		select d.userid as userid, d.orderscore as score, p.fightingcapacity as fight 
		from `t_u_dungeon` d join `t_u_playerinfo` p on d.userid=p.userid and p.grades>=30
		where d.orderscore>0
	) a order by score desc,fight desc ;

	update t_u_dungeon,temp_order set t_u_dungeon.currentorder=temp_order.orderid where t_u_dungeon.userid=temp_order.objectid ;
	
	set @i=0;
	truncate table temp_order;
	insert into temp_order(objectid,orderid)
	select userid,@i:=@i+1 from
	(
		select c.userid as userid, c.orderscore as score, p.fightingcapacity as fight 
		from `t_u_crossmirrorscore` c join `t_u_playerinfo` p on c.userid=p.userid and p.grades>=30
		where c.orderscore>0
	) a order by score desc,fight desc ;

	update t_u_crossmirrorscore,temp_order set t_u_crossmirrorscore.currentorder=temp_order.orderid where t_u_crossmirrorscore.userid=temp_order.objectid ;

	set session transaction isolation level repeatable read;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`7roaddba`@`localhost` PROCEDURE `proc_u_fish_update`()
begin

	drop temporary table if exists temp_order;
	create temporary table if not exists temp_order(objectid int primary key,orderid int);

	set session transaction isolation level read uncommitted;
	
	update t_u_playorder set fishweekscore = fishscore ;
	
	set @i=0;
	truncate table temp_order;
	insert into temp_order(objectid,orderid)
	select a.userid,@i:=@i+1 from
	(
		select p.userid,p.fishweekscore,f.level from t_u_playorder as p join t_u_fishdata as f on p.userid = f.userid
		where p.fishweekscore>0
	) a order by fishweekscore desc,`level` desc;

	update t_u_playorder,temp_order
	set t_u_playorder.fishorder=temp_order.orderid
	where t_u_playorder.userid=temp_order.objectid ;

	set session transaction isolation level repeatable read;

end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`7roaddba`@`localhost` PROCEDURE `proc_u_force_update`()
BEGIN
	 DECLARE v_now DATETIME DEFAULT NOW();
	 -- 每日凌晨3点执行,生成本区排名
	 IF DATE_FORMAT(v_now,'%h') = 3 THEN	 
		-- 个人天梯积分排序
		DROP TEMPORARY TABLE IF EXISTS temp_order;
		CREATE TEMPORARY TABLE IF NOT EXISTS temp_order(objectid INT PRIMARY KEY,orderid INT);
		SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
		
		SET @i=0;
		INSERT INTO temp_order(objectid,orderid)
		SELECT userid,@i:=@i+1 FROM
		(
			SELECT b.userid AS userid, b.ladderscore AS score, c.fightingcapacity AS fight 
			FROM `t_u_userforce` b JOIN `t_u_playerinfo` c ON b.userid=c.userid AND c.grades>=35
			WHERE b.LadderScore>0
		) a ORDER BY score DESC,fight DESC ;
		UPDATE t_u_userforce Set currentorder = 0;
		UPDATE t_u_userforce,temp_order SET t_u_userforce.currentorder=temp_order.orderid WHERE t_u_userforce.userid=temp_order.objectid ; 
		SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
	 END IF;
	
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`7roaddba`@`localhost` PROCEDURE `proc_u_gemmaze_update`()
begin
	 drop temporary table if exists temp_order;
	 create temporary table if not exists temp_order(objectid int primary key,orderid int);
	 set session transaction isolation level read uncommitted;

	 update t_u_playorder set gemmazescore = gemmazeweekscore;

	 set @i=0;
	 truncate table temp_order;
	 insert into temp_order(objectid,orderid)
	 select a.userid,@i:=@i+1 from
	 (
		select p.userid,p.gemmazeweekscore,g.gemlevel 
		from t_u_playorder as p join t_u_gemmazeinfo as g on p.userid = g.userid
		where  g.gemlevel>0
		  and  p.gemmazeweekscore>0
	 ) a order by gemmazeweekscore desc,gemlevel desc;

	 update t_u_playorder,temp_order
	 set t_u_playorder.gemmazeorder=temp_order.orderid
	 where t_u_playorder.userid=temp_order.objectid ;

	 set session transaction isolation level repeatable read;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`7roaddba`@`localhost` PROCEDURE `proc_u_knight_order_update`()
begin
	truncate table t_u_knightorder;
	set session transaction isolation level read uncommitted;
	begin
		set @i=0;
		insert into t_u_knightorder(userid,knightid,grade,capacityorder,capacity,createtime)
		select userid,id as knightid,grades as grade,@i:=@i+1,currentfightcapacity as capacity,now() 
		from
		(
			select a.userid,a.id,a.currentfightcapacity,a.grades 
			from t_u_knightinfo a join t_u_userinfo b on a.userid = b.userid 
					      join t_u_playerinfo c on a.userid=c.userid
			where a.currentfightcapacity>0
			  and b.isforbid = 0 
			  and b.isinternal!=10
			  and c.grades>=30
		) f order by capacity desc,grade desc,knightid desc;
	end;

	begin
		set @i=0;
		insert into t_u_knightorder(userid,type,knightid,grade,capacityorder,capacity,createtime)
		select userid,1,templateid as knightid,grades as grade,@i:=@i+1,currentfightcapacity as capacity,now() from
		(
			select a.userid,a.templateid,a.currentfightcapacity,a.grades 
			from t_u_sacred a join t_u_userinfo b on a.userid = b.userid
					  join t_u_playerinfo c on a.userid=c.userid 
			where a.currentfightcapacity>0 
			  and b.isforbid = 0 
			  and b.isinternal!=10
			  and c.grades>=30
		) f order by capacity desc,grade desc,knightid desc;
	end;
	set session transaction isolation level repeatable read;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`7roaddba`@`localhost` PROCEDURE `proc_u_orders_1_update`()
begin
	 drop temporary table if exists temp_order;
	 create temporary table if not exists temp_order
	 (	 objectid int primary key,
		 orderid int,
		 olddata bigint,
		 para1 int,
		 para2 int,
		 para3 int
	 );
	 set session transaction isolation level read uncommitted;
	 
	 update `t_u_playorder`
	 set	 currentorder=0,
		 lastorder=0,
		 weekorder=0,
		 totalfightcapacityorder=0,
		 gesteorder=0,
		 currenttotalcharmorder=0,
		 lastcharmorder=0,
		 weekcharmorder=0,
		 soulscoreorder=0,
		 weekscoreorder=0,
		 jobfightorder=0,
		 towerorder=0,
		 towerorder2=0
	 where `userid` in (select userid from t_u_userinfo where isforbid=1);

	 update `t_u_playorder`
	 set	 currentorder=0,
		 lastorder=0,
		 weekorder=0,
		 totalfightcapacityorder=0,
		 gesteorder=0,
		 currenttotalcharmorder=0,
		 lastcharmorder=0,
		 weekcharmorder=0,
		 soulscoreorder=0,
		 weekscoreorder=0,
		 jobfightorder=0,
		 towerorder=0,
		 towerorder2=0
	 where `userid` not in (select userid from t_u_userinfo);
	 
	 update `t_u_playorder` set soulscoreorder=0 where `userid` not in (select userid from t_u_mount);
	
	 insert into t_u_playorder(userid)
	   select userid from t_u_playerinfo 
	   where not exists(select userid from t_u_playorder a where t_u_playerinfo.userid=a.userid)
	     and grades>=30;
	
	 set @i=0;
	 truncate table temp_order;
	
	 insert into temp_order(objectid,orderid,olddata,para1,para2,para3)
	 select a.userid,@i:=@i+1,a.totalgp,a.grades,a.totalfightingcapacity,a.gp
	 from
	 (
		 select  p.userid,
			 p.totalgp,
			 p.grades,
			 p.totalfightingcapacity,
			 p.gp
		 from t_u_playerinfo as p join t_u_userinfo as u on p.userid = u.userid
		 where u.isforbid=0
		   and u.isinternal!=10
		   and p.grades>=30
		 order by p.grades desc,p.totalgp desc,p.gplastdate,p.userid
	 ) a;
	 update t_u_playorder,temp_order
	 set	 t_u_playorder.`currentorder`=temp_order.orderid,
		 t_u_playorder.`currentgp`=temp_order.para3,
		 t_u_playorder.`currenttotalgp`=temp_order.olddata,
		 t_u_playorder.`currentgrades`=temp_order.para1,
		 t_u_playorder.`currenttotalfightcapacity`=temp_order.para2
	 where t_u_playorder.userid=temp_order.objectid;

	 set session transaction isolation level repeatable read;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`7roaddba`@`localhost` PROCEDURE `proc_u_orders_2_update`()
begin
	 drop temporary table if exists temp_order;
	 create temporary table if not exists temp_order
	 (	 objectid int primary key,
		 orderid int,
		 olddata bigint,
		 para1 int,
		 para2 int,
		 para3 int
	 );
	 set session transaction isolation level read uncommitted;
	 set @i=0;
	 truncate table temp_order;
	 insert into temp_order(objectid,orderid)
	   select a.userid,@i:=@i+1 
	   from (
		  select p.userid from t_u_playerinfo as p join t_u_userinfo as u on(p.userid = u.userid) 
	          where u.isforbid=0
		    and u.isinternal!=10
		    and p.grades>=30
		  order by totalfightingcapacity desc
		) a;

	 update `t_u_playorder`,temp_order
	 set t_u_playorder.totalfightcapacityorder=temp_order.orderid
	 where t_u_playorder.userid=temp_order.objectid;

	 set @i=0;
	 truncate table temp_order;

	 insert into temp_order(objectid,orderid,olddata)
	 select a.userid,@i:=@i+1,a.geste from
	 (
		 select p.userid,geste
		 from t_u_playerinfo as p join t_u_userinfo as u on(p.userid = u.userid)
		 where u.isforbid=0
		   and u.isinternal!=10
		   and p.grades>=30
		 order by geste desc
	 ) a;
	 update `t_u_playorder`,temp_order
	 set t_u_playorder.gesteorder=temp_order.orderid,
	 t_u_playorder.currentgeste=temp_order.olddata
	 where t_u_playorder.userid=temp_order.objectid;

	 set session transaction isolation level repeatable read;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`7roaddba`@`localhost` PROCEDURE `proc_u_orders_3_update`()
begin
	 drop temporary table if exists temp_order;
	 create temporary table if not exists temp_order
	 (	 objectid int primary key,
		 orderid int,
		 olddata bigint,
		 para1 int,
		 para2 int,
		 para3 int
	 );
	 set session transaction isolation level read uncommitted;
	 insert into t_u_consortiaorder(consortiaid)
	 select consortiaid from t_u_consortia b where not exists(select consortiaid from t_u_consortiaorder a where b.consortiaid=a.consortiaid);

	 set @i=0;
	 insert into temp_order(objectid,orderid,olddata,para1)
	    select consortiaid,@i:=@i+1,totaloffer,levels 
	    from t_u_consortia 
	    where isexist=true 
	    order by levels desc,totaloffer desc;

	 update t_u_consortiaorder,temp_order
	 set t_u_consortiaorder.gradeorder=temp_order.orderid,
	     t_u_consortiaorder.currentlevels=temp_order.para1,
	     t_u_consortiaorder.`currentoffer`=temp_order.olddata
	 where t_u_consortiaorder.consortiaid=temp_order.objectid;

	 set @i=0;
	 truncate table temp_order;
	 update t_u_consortia a
	 set fightpower=(select ifnull(sum(fightpower),0)
			 from t_u_consortiauser b left join `t_u_playerinfo` c on c.userid=b.userid
			 where a.`isexist`=true
			 and c.`isexist`=true
			 and b.isexist=true
			 and a.consortiaid=b.consortiaid
			 and to_days(now())-to_days(c.logouttime)<=7
	 );

	 insert into temp_order(objectid,orderid,olddata)
	 select consortiaid,@i:=@i+1,fightpower from t_u_consortia order by fightpower desc;

	 update t_u_consortiaorder,temp_order
	 set t_u_consortiaorder.fightpowerorder=temp_order.orderid,
	 t_u_consortiaorder.currentfightpower=temp_order.olddata
	 where t_u_consortiaorder.consortiaid=temp_order.objectid;
	 set session transaction isolation level repeatable read;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`7roaddba`@`localhost` PROCEDURE `proc_u_orders_4_update`()
begin
	 drop temporary table if exists temp_order;
	 create temporary table if not exists temp_order
	 (	 objectid int primary key,
		 orderid int,
		 olddata bigint,
		 para1 int,
		 para2 int,
		 para3 int
	 );
	 set @i=0;
	 set session transaction isolation level read uncommitted;
	 insert into temp_order(objectid,orderid,olddata)
	 select a.userid,@i:=@i+1,a.charm from
	 (
		 select p.userid,charm from t_u_playerinfo as p join t_u_userinfo as u on(p.userid = u.userid)
		 where u.isforbid=0
		   and u.isinternal!=10
		   and p.grades>=30
		   and p.charm>0
		 order by charm desc
	 ) a;
	 update t_u_playorder,temp_order
	 set t_u_playorder.`currenttotalcharmorder`=temp_order.orderid,
	     t_u_playorder.`currenttotalcharm`=temp_order.olddata
	 where t_u_playorder.userid=temp_order.objectid;
	 set session transaction isolation level repeatable read;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`7roaddba`@`localhost` PROCEDURE `proc_u_orders_5_update`()
begin
	 declare _nowdate date default now();

	 drop temporary table if exists temp_order;
	 create temporary table if not exists temp_order
	 (	 objectid int primary key,
		 orderid int,
		 olddata bigint,
		 para1 int,
		 para2 int,
		 para3 int
	 );

	 set @i=0;
	 set session transaction isolation level read uncommitted;
	 insert into temp_order(objectid,orderid,olddata)
	 select a.userid,@i:=@i+1,a.soulscore from
	 (
		 select m.userid,m.soulscore
		 from t_u_mount as m join t_u_userinfo as u on m.userid = u.userid
				     join t_u_playerinfo b on m.userid=b.userid
		 where u.isforbid=0
		   and u.isinternal!=10
		   and m.soulscore>0
		   and b.grades>=30
		 order by m.soulscore desc
	 ) a;

	 update `t_u_playorder`,temp_order
	 set t_u_playorder.soulscoreorder=temp_order.orderid,
	     t_u_playorder.currentsoulscore=temp_order.olddata
	 where t_u_playorder.userid=temp_order.objectid;

	 set @i=0;
	 truncate table temp_order;

	 insert into temp_order(objectid,orderid,olddata,para1)
	 select userid,@i:=@i+1,totalscore,weekscoreadd
	 from (  
		 select p.userid,p.currenttotalscore as totalscore,p.currenttotalscore as weekscoreadd
		 from t_u_playorder as p left join t_u_userinfo as u on(p.userid = u.userid)
		 where p.weekscoredate<_nowdate
		   and u.isforbid=0
		   and u.isinternal!=10
	      ) x
	 order by (weekscoreadd) desc;

	 update t_u_playorder,temp_order
	 set t_u_playorder.weekscoreorder=temp_order.orderid,
	     t_u_playorder.weekscoreadd=temp_order.para1
	 where t_u_playorder.userid=temp_order.objectid;

	 if (dayofweek(date(now()))=7) then
		 update t_u_playorder,temp_order
		 set t_u_playorder.weekscoredate=_nowdate,
		     t_u_playorder.weekscore=temp_order.olddata
		 where t_u_playorder.userid=temp_order.objectid;

		 update t_u_playerinfo set t_u_playerinfo.crossscore=0;
	 end if;
	
	 set session transaction isolation level repeatable read;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`7roaddba`@`localhost` PROCEDURE `proc_u_orders_6_update`()
begin
	 drop temporary table if exists temp_order;
	 create temporary table if not exists temp_order
	 (	 objectid int primary key,
		 orderid int,
		 olddata bigint,
		 para1 int,
		 para2 int,
		 para3 int
	 );	
	 set @i=0;
	 set session transaction isolation level read uncommitted;
	 insert into temp_order(objectid,orderid)
	 select a.userid,@i:=@i+1 from
	 (
		 select p.userid
		 from t_u_playerinfo as p join t_u_userinfo as u on(p.userid = u.userid)
		 where job in (1,4)
		  and u.isforbid=0
		  and u.isinternal!=10
		  and p.grades>=30
		 order by p.totalfightingcapacity desc
	 ) a;
	 update `t_u_playorder`,temp_order
	    set t_u_playorder.jobfightorder=temp_order.orderid
	 where t_u_playorder.userid=temp_order.objectid;

	 set @i=0;
	 truncate table temp_order;
	 insert into temp_order(objectid,orderid)
	 select a.userid,@i:=@i+1 from
	 (
		 select p.userid
		 from t_u_playerinfo as p left join t_u_userinfo as u on(p.userid = u.userid)
		 where job in (2,5)
		 and u.isforbid=0
		 and u.isinternal!=10
		 order by p.totalfightingcapacity desc
	 ) a;

	 update `t_u_playorder`,temp_order
	    set t_u_playorder.jobfightorder=temp_order.orderid
	 where t_u_playorder.userid=temp_order.objectid;

	 set @i=0;
	 truncate table temp_order;
	 insert into temp_order(objectid,orderid)
	 select a.userid,@i:=@i+1 from
	 (
		 select p.userid
		 from t_u_playerinfo as p left join t_u_userinfo as u on(p.userid = u.userid)
		 where job in (3,6)
		 and u.isforbid=0
		 and u.isinternal!=10
		 order by p.totalfightingcapacity desc
	 ) a;

	 update `t_u_playorder`,temp_order
	   set t_u_playorder.jobfightorder=temp_order.orderid
	 where t_u_playorder.userid=temp_order.objectid;

	 update `t_u_playorder` set challengeorder = currank where currank>0;
	 drop table if exists temp_order;
	 set session transaction isolation level repeatable read;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_u_orders_change_update`()
begin
 set session transaction isolation level read uncommitted;
 truncate table t_u_playorder_history;
 insert into t_u_playorder_history select * from t_u_playorder;
 call `proc_u_orders_1_update`;
 call `proc_u_orders_2_update`;
 call `proc_u_orders_3_update`;
 call `proc_u_orders_4_update`;
 call `proc_u_orders_5_update`;

 update t_u_playorder_history a join t_u_playorder b on a.userid = b.userid
 set b.changecurrentorder = a.currentorder - b.currentorder,
 b.changelastorder = a.lastorder - b.lastorder,
 b.changeweekorder = a.weekorder - b.weekorder,
 b.changecurrenttotalcharmorder = a.currenttotalcharmorder - b.currenttotalcharmorder,
 b.changelastcharmorder = a.lastcharmorder - b.lastcharmorder,
 b.changeweekcharmorder = a.weekcharmorder - b.weekcharmorder,
 b.changeknightfightcapacityorder = a.knightfightcapacityorder - b.knightfightcapacityorder,
 b.changegesteorder = a.gesteorder - b.gesteorder,
 b.changesoulscoreorder = a.soulscoreorder - b.soulscoreorder,
 b.changefightcapacityorder = a.totalfightcapacityorder - b.totalfightcapacityorder;

 update t_u_playorder_history a join t_u_playorder b on a.userid = b.userid and a.currentorder = 0 and b.currentorder <> 0 set b.changecurrentorder = 99999999;
 update t_u_playorder_history a join t_u_playorder b on a.userid = b.userid and a.lastorder = 0 and b.lastorder <> 0 set b.changelastorder = 99999999;
 update t_u_playorder_history a join t_u_playorder b on a.userid = b.userid and a.weekorder = 0 and b.weekorder <> 0 set b.changeweekorder = 99999999;
 update t_u_playorder_history a join t_u_playorder b on a.userid = b.userid and a.currenttotalcharmorder = 0 and b.currenttotalcharmorder <> 0 set b.changecurrenttotalcharmorder = 99999999;
 update t_u_playorder_history a join t_u_playorder b on a.userid = b.userid and a.lastcharmorder = 0 and b.lastcharmorder <> 0 set b.changelastcharmorder = 99999999;
 update t_u_playorder_history a join t_u_playorder b on a.userid = b.userid and a.weekcharmorder = 0 and b.weekcharmorder <> 0 set b.changeweekcharmorder = 99999999;
 update t_u_playorder_history a join t_u_playorder b on a.userid = b.userid and a.knightfightcapacityorder = 0 and b.knightfightcapacityorder <> 0 set b.changeknightfightcapacityorder = 99999999;
 update t_u_playorder_history a join t_u_playorder b on a.userid = b.userid and a.gesteorder = 0 and b.gesteorder <> 0 set b.changegesteorder = 99999999;
 update t_u_playorder_history a join t_u_playorder b on a.userid = b.userid and a.soulscoreorder = 0 and b.soulscoreorder <> 0 set b.changesoulscoreorder = 99999999;
 update t_u_playorder_history a join t_u_playorder b on a.userid = b.userid and a.totalfightcapacityorder = 0 and b.totalfightcapacityorder <> 0 set b.changefightcapacityorder = 99999999;
 set session transaction isolation level repeatable read;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`7roaddba`@`%` PROCEDURE `proc_u_redbag_update`()
begin
	 drop temporary table if exists temp_order;
	 create temporary table if not exists temp_order
	 (	 objectid int primary key,
		 orderid int,
		 olddata bigint,
		 para1 int,
		 para2 int,
		 para3 int
	 );
	 set session transaction isolation level read uncommitted;
	 set @i=0;
	 truncate table temp_order;
	 insert into temp_order(objectid,orderid,olddata)
	 select userid,@i:=@i+1,point from
	  ( select userid,sum(point) point
	   from  t_u_redbag group by userId
		) a order by point desc;

	 update `t_u_playorder`,temp_order
	 set t_u_playorder.SendRedBagOrder=temp_order.orderid,
	  t_u_playorder.SendPoint=temp_order.olddata
	 where t_u_playorder.userid=temp_order.objectid;

	 set @i=0;
	 truncate table temp_order;

	 insert into temp_order(objectid,orderid,olddata)
		 select userid,@i:=@i+1,point from
	  ( select userid,sum(point) point
	   from  t_u_redbag_receive group by userId
		) a order by point desc;
	 update `t_u_playorder`,temp_order
	 set t_u_playorder.ReceiveRedBagOrder=temp_order.orderid,
	 t_u_playorder.ReceivePoint=temp_order.olddata
	 where t_u_playorder.userid=temp_order.objectid;

	 set session transaction isolation level repeatable read;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`7roaddba`@`localhost` PROCEDURE `proc_u_tower_update`()
BEGIN
	 CREATE TEMPORARY TABLE IF NOT EXISTS temp_tower
	 (	 objectId INT primary key,
		 orderId INT,
		 olddata INT
	 );

	 CREATE TEMPORARY TABLE IF NOT EXISTS temp_tower2
	 (       objectId INT primary key,
	         orderId INT,
	         olddata INT
	 );
	 SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED; 
	 INSERT INTO t_u_playorder(UserId) SELECT UserId FROM t_u_playerinfo WHERE NOT EXISTS(SELECT UserId FROM t_u_playorder A WHERE t_u_playerinfo.UserId=A.UserId);

	 SET @i=0;
	 TRUNCATE TABLE temp_tower;
	 INSERT INTO temp_tower(objectId,orderId,olddata)
	 SELECT t.UserId,@i:=@i+1,t.MaxIndex
	 FROM t_u_towerinfo AS t LEFT JOIN t_u_userinfo AS u ON(t.UserId = u.UserId)
	 WHERE t.CampaignId=8001
	   AND u.IsForbid=0
	 ORDER BY t.MaxIndex DESC, t.UpdateTime ASC;

	 SET @j=0;
	 TRUNCATE TABLE temp_tower2;

	 INSERT INTO temp_tower2(objectId,orderId,olddata)
	 SELECT t.UserId,@j:=@j+1,MaxIndex
	 FROM t_u_towerinfo AS t LEFT JOIN t_u_userinfo AS u ON(t.UserId = u.UserId)
	 WHERE t.CampaignId=8101
	 AND t.MaxIndex > 8100
	 AND u.IsForbid=0
	 ORDER BY t.MaxIndex DESC, t.UpdateTime ASC;

	 UPDATE t_u_playorder,temp_tower
	 SET t_u_playorder.`TowerOrder`=temp_tower.orderId,
	 t_u_playorder.`TowerIndex`=temp_tower.olddata
	 WHERE t_u_playorder.UserId=temp_tower.objectId;

	 UPDATE t_u_playorder,temp_tower2
	 SET t_u_playorder.`TowerOrder2`=temp_tower2.orderId,
	 t_u_playorder.`TowerIndex2`=temp_tower2.olddata
	 WHERE t_u_playorder.UserId=temp_tower2.objectId;
	 SET SESSION TRANSACTION ISOLATION LEVEL REPEATABLE READ;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `proc_u_week_update`()
BEGIN
         DECLARE _nowDate DATE DEFAULT NOW(); 
        
 declare v_status tinyint;
         
         
SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED; 
       
  IF (DAYOFWEEK(DATE(NOW()))=2) THEN 
            
    UPDATE t_u_dungeon SET weekOrder=currentOrder,OrderScore=0; 
      
   END IF; 


        
 DROP TEMPORARY TABLE IF EXISTS temp_order;
      
   CREATE TEMPORARY TABLE IF NOT EXISTS temp_order(objectId INT primary key,orderId INT);

       
  UPDATE t_u_playorder SET FishWeekScore = FishScore ;
         SET @i=0; 
         
INSERT INTO temp_order(objectId,orderId)
        
 SELECT A.UserId,@i:=@i+1 FROM 
         (
                 SELECT p.UserId,p.FishWeekScore,f.Level FROM t_u_playorder AS p JOIN t_u_fishdata AS f ON p.userId = f.userid
                 WHERE p.FishWeekScore>0
         ) A ORDER BY FishWeekScore DESC,`level` DESC;

         
IF (DAYOFWEEK(DATE(NOW()))=2) THEN 
              
   UPDATE t_u_playorder,temp_order
                
 SET t_u_playorder.FishScore=0,t_u_playorder.FishWeekOrder=temp_order.orderId
                 WHERE t_u_playorder.UserId=temp_order.objectId; 
        
 END IF; 
         
         
truncate table temp_order;
         
UPDATE t_u_playorder SET GemMazeScore = GemMazeWeekScore;
         SET @i=0;
         TRUNCATE TABLE temp_order;
         INSERT INTO temp_order(objectId,orderId)
         SELECT A.UserId,@i:=@i+1 FROM
         (
                SELECT p.UserId,p.GemMazeWeekScore,g.GemLevel FROM t_u_playorder AS p JOIN t_u_gemmazeinfo AS g ON p.userId = g.userid
         ) A ORDER BY GemMazeWeekScore DESC,GemLevel DESC;

         IF (DAYOFWEEK(DATE(NOW()))=2) THEN
                 UPDATE t_u_playorder,temp_order SET t_u_playorder.GemMazeWeekScore = 0,t_u_playorder.GemMazeWeekOrder=temp_order.orderId WHERE t_u_playorder.UserId=temp_order.objectId;
         END IF;
         
         
         DROP TEMPORARY TABLE IF EXISTS temp_order;
         CREATE TEMPORARY TABLE IF NOT EXISTS temp_order
         (       objectId INT primary key,
                 orderId INT,
                 olddata BIGINT,
                 para1 INT,
                 para2 INT,
                 para3 INT
         );
         
         SET @i=0;
         
         INSERT INTO temp_order(objectId,orderId,olddata,para1) 
         SELECT UserId,@i:=@i+1,TotalGP,DayAddGP 
         FROM (
                 SELECT o.UserId,o.CurrentTotalGp AS TotalGP,o.CurrentTotalGp-o.LastGP AS DayAddGP 
                 FROM t_u_playorder AS o LEFT JOIN t_u_userinfo AS u ON(o.UserId = u.UserId)
                 WHERE o.LastDate < _nowDate AND u.IsForbid=0
         ) X 
         ORDER BY (DayAddGP) DESC;
         
         UPDATE t_u_playorder,temp_order
         SET t_u_playorder.LastOrder=temp_order.orderId,
             t_u_playorder.LastAdd=temp_order.para1, 
             t_u_playorder.LastDate=_nowDate,
             t_u_playorder.LastGP=temp_order.olddata 
         WHERE t_u_playorder.UserId=temp_order.objectId ;

         SET @i=0;
         TRUNCATE TABLE temp_order;
         INSERT INTO temp_order(objectId,orderId,olddata,para1) 
         SELECT UserId,@i:=@i+1,TotalGP,WeekAddGP 
         FROM (
                 SELECT o.UserId,o.CurrentTotalGp AS TotalGP,o.CurrentTotalGp-o.WeekGP AS WeekAddGP 
                 FROM t_u_playorder AS o LEFT JOIN t_u_userinfo AS u ON(o.UserId = u.UserId)
                 WHERE o.WeekDate<_nowDate AND u.IsForbid=0 
         ) X 
         ORDER BY (WeekAddGP) DESC; 

         UPDATE t_u_playorder,temp_order
         SET t_u_playorder.WeekOrder=temp_order.orderId,
             t_u_playorder.WeekAdd=temp_order.para1
         WHERE t_u_playorder.UserId=temp_order.objectId ; 
         
         SET @i=0;
         TRUNCATE TABLE temp_order;
         INSERT INTO temp_order(objectId,orderId,olddata,para1) 
         SELECT UserId,@i:=@i+1,TotalGP,WeekAddGP 
         FROM (
                 SELECT o.UserId,o.CurrentTotalGp AS TotalGP,o.CurrentTotalGp-o.WeekGP AS WeekAddGP 
                 FROM t_u_playorder AS o LEFT JOIN t_u_userinfo AS u ON(o.UserId = u.UserId)
                 WHERE o.WeekDate<_nowDate AND u.IsForbid=0 
         ) X 
         ORDER BY (WeekAddGP) DESC; 
         
         IF (DAYOFWEEK(DATE(NOW()))=3) THEN 
                 UPDATE t_u_playorder,temp_order
                 SET t_u_playorder.WeekDate=_nowDate,
                     t_u_playorder.WeekGP=temp_order.olddata 
                 WHERE t_u_playorder.UserId=temp_order.objectId; 
         END IF; 
         
         TRUNCATE TABLE temp_order;
         
         SET @i=0;
         TRUNCATE TABLE temp_order;
         INSERT INTO temp_order(objectId,orderId,olddata,para1)
         SELECT UserId,@i:=@i+1,TotalCharm,DayAddCharm 
         FROM (
                 SELECT o.UserId,o.CurrentTotalCharm AS TotalCharm,o.CurrentTotalCharm-o.LastCharm AS DayAddCharm 
                 FROM t_u_playorder AS o LEFT JOIN t_u_userinfo AS u ON(o.UserId = u.UserId)
                 WHERE o.LastCharmDate < _nowDate 
                   AND u.IsForbid=0
                   and u.IsInternal!=10
         ) X
         ORDER BY (DayAddCharm) DESC;

         UPDATE t_u_playorder,temp_order
         SET t_u_playorder.`LastCharmOrder`=temp_order.orderId,
             t_u_playorder.`LastCharmAdd`=temp_order.para1,
             t_u_playorder.`LastCharmDate`=_nowDate,
             t_u_playorder.`LastCharm`=temp_order.olddata
         WHERE t_u_playorder.UserId=temp_order.objectId ;


         SET @i=0;
         TRUNCATE TABLE temp_order;
         INSERT INTO temp_order(objectId,orderId,olddata,para1)
         SELECT UserId,@i:=@i+1,TotalCharm,WeekCharmAdd 
         FROM (
                 SELECT o.UserId,o.CurrentTotalCharm AS TotalCharm,o.CurrentTotalCharm-o.WeekCharm AS WeekCharmAdd 
                 FROM t_u_playorder AS o LEFT JOIN t_u_userinfo AS u ON(o.UserId = u.UserId)
                 WHERE o.WeekCharmDate<_nowDate 
                 AND u.IsForbid=0
                 and u.IsInternal!=10
         ) X
         ORDER BY (WeekCharmAdd) DESC;
         
         UPDATE t_u_playorder,temp_order
         SET t_u_playorder.WeekCharmOrder=temp_order.orderId,
         t_u_playorder.WeekCharmAdd=temp_order.para1
         WHERE t_u_playorder.UserId=temp_order.objectId ;
         
         SET @i=0;
         TRUNCATE TABLE temp_order;
         INSERT INTO temp_order(objectId,orderId,olddata,para1)
                 SELECT UserId,@i:=@i+1,TotalCharm,WeekCharmAdd 
                 FROM (
                                 SELECT o.UserId,o.CurrentTotalCharm AS TotalCharm,o.CurrentTotalCharm-o.WeekCharm AS WeekCharmAdd 
                                 FROM t_u_playorder AS o LEFT JOIN t_u_userinfo AS u ON(o.UserId = u.UserId)
                                 WHERE o.WeekCharmDate<_nowDate 
                                 AND u.IsForbid=0
                                 and u.IsInternal!=10
                         ) X
                 ORDER BY (WeekCharmAdd) DESC;

         IF (DAYOFWEEK(DATE(NOW()))=3) THEN
                 UPDATE t_u_playorder,temp_order
                 SET t_u_playorder.WeekCharmDate=_nowDate,
                 t_u_playorder.WeekCharm=temp_order.olddata
                 WHERE t_u_playorder.UserId=temp_order.objectId;
         END IF;
         
         
         drop temporary TABLE IF EXISTS temp_order;
         CREATE temporary TABLE IF NOT EXISTS temp_order
         ( objectId INT,
                 orderId INT,
                 olddata BIGINT,
                 para1 INT,
                 para2 INT,
                 para3 INT
         );
         SET @i=0;
         TRUNCATE TABLE temp_order;
         INSERT INTO temp_order(objectId,orderId,olddata,para1)
                 SELECT UserId,@i:=@i+1,TotalScore,WeekScoreAdd 
                 FROM ( SELECT p.UserId,p.CurrentTotalScore AS TotalScore,p.CurrentTotalScore AS WeekScoreAdd 
                                 FROM t_u_playorder AS p LEFT JOIN t_u_userinfo AS u ON(p.UserId = u.UserId)
                                 WHERE p.WeekScoreDate<_nowDate 
                                 AND u.IsForbid=0
                                 and u.IsInternal!=10
                         ) X
                 ORDER BY (WeekScoreAdd) DESC;
         IF (DAYOFWEEK(DATE(NOW()))=7) THEN
         UPDATE t_u_playorder,temp_order SET t_u_playorder.WeekScoreDate=_nowDate,t_u_playorder.WeekScore=temp_order.olddata
         WHERE t_u_playorder.UserId=temp_order.objectId; 
         UPDATE t_u_playerinfo SET t_u_playerinfo.CrossScore=0;
         END IF;

    
     IF (DAYOFWEEK(DATE(NOW()))=2) THEN 
         
       SELECT status into v_status from t_week_update where update_day=curdate();
            
    if v_status is null then 
                    
    insert into t_week_update values (curdate(),1);
                      
  UPDATE t_u_crossmirrorscore SET WeekScore=OrderScore,weekOrder=CurrentOrder; 
                       
 UPDATE t_u_crossmirrorscore SET OrderScore=0,CurrentOrder=0; 
                     
   update t_week_update set status=0 where update_day=curdate();
              
  elseif v_status=1 then
                        
UPDATE t_u_crossmirrorscore SET WeekScore=OrderScore,weekOrder=CurrentOrder; 
                     
   UPDATE t_u_crossmirrorscore SET OrderScore=0,CurrentOrder=0; 
                       
 update t_week_update set status=0 where update_day=curdate();
            
    elseif v_status=0 then 
                      
  update t_week_update set status=2 where update_day=curdate();
                     

              
  end if;
         
END IF; 
       
  SET SESSION TRANSACTION ISOLATION LEVEL READ UNCOMMITTED; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`7roaddba`@`localhost` PROCEDURE `sp_update_chargereward`(IN v_stepid INT,IN v_sql VARCHAR(1000))
BEGIN
 DECLARE o_status INT;
 
 DECLARE EXIT HANDLER FOR SQLWARNING
 BEGIN
 SET o_status=11;
 ROLLBACK;
 END;
 
 DECLARE EXIT HANDLER FOR SQLEXCEPTION
 BEGIN
 SET o_status=12;
 ROLLBACK;
 END;
 
 SET o_status = -1;
 
 START TRANSACTION;
	DELETE FROM t_s_chargereward WHERE stepid=v_stepid;
	SET @SQL=CONCAT("insert into t_s_chargereward(stepid,chargePoint,showRewardPoint,itemId,itemCount,showItem,activeId,packgeId,`order`) ",v_sql);
	PREPARE cmdsql FROM @SQL;
	EXECUTE cmdsql;
	DEALLOCATE PREPARE cmdsql;
 COMMIT;
 SET o_status = 0;
 SELECT o_status;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_u_consortia`
--

/*!50001 DROP VIEW IF EXISTS `view_u_consortia`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`7roaddba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_u_consortia` AS select `a`.`ConsortiaID` AS `ConsortiaID`,`a`.`ConsortiaName` AS `ConsortiaName`,`a`.`CreatorID` AS `CreatorID`,`a`.`CreatorName` AS `CreatorName`,`a`.`CreateDate` AS `CreateDate`,`a`.`ChairmanID` AS `ChairmanID`,`a`.`ChairmanName` AS `ChairmanName`,`a`.`Description` AS `Description`,`a`.`Placard` AS `Placard`,`a`.`Levels` AS `Levels`,`a`.`AddCount` AS `AddCount`,`a`.`CurrentCount` AS `CurrentCount`,`a`.`Offer` AS `Offer`,`a`.`TotalOffer` AS `TotalOffer`,`a`.`Honor` AS `Honor`,`a`.`OpenApp` AS `OpenApp`,`a`.`KickDate` AS `KickDate`,`a`.`KickCount` AS `KickCount`,`a`.`FightPower` AS `FightPower`,`a`.`ShopLevel` AS `ShopLevel`,`a`.`StoreLevel` AS `StoreLevel`,`a`.`AltarLevel` AS `AltarLevel`,`a`.`SchoolLevel` AS `SchoolLevel`,`a`.`OutAttackLevel` AS `OutAttackLevel`,`a`.`OutDefenceLevel` AS `OutDefenceLevel`,`a`.`InAttackLevel` AS `InAttackLevel`,`a`.`InDefenseLevel` AS `InDefenseLevel`,`a`.`LiveLevel` AS `LiveLevel`,`a`.`ForcehitLevel` AS `ForcehitLevel`,`a`.`RecritLevel` AS `RecritLevel`,`a`.`OwnWildlands` AS `OwnWildlands`,`a`.`DeductDate` AS `DeductDate`,`a`.`WarnDate` AS `WarnDate`,`a`.`CodeType` AS `CodeType`,`a`.`CodeBeginDate` AS `CodeBeginDate`,`a`.`CodeNeedDate` AS `CodeNeedDate`,`a`.`IsExist` AS `IsExist`,`a`.`QuitDate` AS `QuitDate`,`a`.`QuitResult` AS `QuitResult`,`a`.`IsRobot` AS `IsRobot`,`a`.`VotingDate` AS `VotingDate`,`a`.`VotingStatic` AS `VotingStatic`,`a`.`VotingId` AS `VotingId`,`a`.`ActiveData` AS `ActiveData`,`a`.`Death` AS `Death`,`a`.`GroupPlacard` AS `GroupPlacard`,`a`.`AltarDate` AS `AltarDate`,`a`.`AltarState` AS `AltarState`,ifnull(`b`.`GradeOrder`,0) AS `GradeOrder`,ifnull(`b`.`CurrentLevels`,0) AS `CurrentLevels`,ifnull(`b`.`CurrentFightPower`,0) AS `CurrentFightPower`,ifnull(`b`.`CurrentOffer`,0) AS `CurrentOffer`,ifnull(`b`.`FightPowerOrder`,0) AS `FightPowerOrder`,ifnull(`b`.`LastDayOffer`,0) AS `LastDayOffer`,ifnull(convert(`b`.`LastDayDate` using utf8),_utf8'2000-01-01') AS `LastDayDate`,ifnull(`b`.`LastDayOrder`,0) AS `LastDayOrder`,ifnull(`b`.`LastWeekOffer`,0) AS `LastWeekOffer`,ifnull(convert(`b`.`LastWeekDate` using utf8),_utf8'2000-01-01') AS `LastWeekDate`,ifnull(`b`.`LastWeekOrder`,0) AS `LastWeekOrder`,ifnull(`b`.`WarOrder`,0) AS `WarOrder`,ifnull(`b`.`ChangeGradeOrder`,0) AS `ChangeGradeOrder`,ifnull(`b`.`ChangeFightPowerOrder`,0) AS `ChangeFightPowerOrder`,`a`.`AltarMaxWaveNum` AS `AltarMaxWaveNum`,`a`.`ActiveValue` AS `ActiveValue`,`a`.`ParryLevel` AS `ParryLevel`,`a`.`WreckLevel` AS `WreckLevel`,`a`.`ConsortiaType` AS `ConsortiaType` from (`t_u_consortia` `a` left join `t_u_consortiaorder` `b` on((`a`.`ConsortiaID` = `b`.`ConsortiaID`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_u_playerinfo`
--

/*!50001 DROP VIEW IF EXISTS `view_u_playerinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`7roaddba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_u_playerinfo` AS select `a`.`UserId` AS `UserId`,`a`.`NickName` AS `NickName`,`a`.`IsExist` AS `IsExist`,`a`.`Sexs` AS `Sexs`,`a`.`Pics` AS `Pics`,`a`.`Camp` AS `Camp`,`a`.`Point` AS `Point`,`a`.`GiftToken` AS `GiftToken`,`a`.`Gold` AS `Gold`,`a`.`State` AS `State`,`a`.`QuestSite` AS `QuestSite`,`a`.`ConsortiaID` AS `ConsortiaID`,`a`.`ConsortiaName` AS `ConsortiaName`,`a`.`ConsortiaOutAttack` AS `ConsortiaOutAttack`,`a`.`ConsortiaInAttack` AS `ConsortiaInAttack`,`a`.`ConsortiaLive` AS `ConsortiaLive`,`a`.`ConsortiaOutDefense` AS `ConsortiaOutDefense`,`a`.`ConsortiaInDefense` AS `ConsortiaInDefense`,`a`.`ConsortiaForcehit` AS `ConsortiaForcehit`,`a`.`ConsortiaOffer` AS `ConsortiaOffer`,`a`.`ConsortiaTotalOffer` AS `ConsortiaTotalOffer`,`a`.`Renames` AS `Renames`,`a`.`ClaimId` AS `ClaimId`,`a`.`ClaimName` AS `ClaimName`,`a`.`Grades` AS `Grades`,`a`.`GP` AS `GP`,`a`.`TotalGP` AS `TotalGP`,`a`.`Repute` AS `Repute`,`a`.`Strategy` AS `Strategy`,`a`.`ResourceMax` AS `ResourceMax`,`a`.`LogOutTime` AS `LogOutTime`,`a`.`CastleOrder` AS `CastleOrder`,`a`.`BagCount` AS `BagCount`,`a`.`HeroCount` AS `HeroCount`,`a`.`Weary` AS `Weary`,`a`.`NoviceProcess` AS `NoviceProcess`,`a`.`GradeProcess` AS `GradeProcess`,`a`.`TimeProcess` AS `TimeProcess`,`a`.`TimeRun` AS `TimeRun`,`a`.`TimeGet` AS `TimeGet`,`a`.`AttackCount` AS `AttackCount`,`a`.`FightingCapacity` AS `FightingCapacity`,`a`.`MatchWin` AS `MatchWin`,`a`.`MatchFailed` AS `MatchFailed`,`a`.`RavenCount` AS `RavenCount`,`a`.`Right` AS `Right`,`a`.`Job` AS `Job`,`a`.`LeedProcess` AS `LeedProcess`,`a`.`LeedDate` AS `LeedDate`,`a`.`SignDate` AS `SignDate`,`a`.`SignTimes` AS `SignTimes`,`a`.`SignSite` AS `SignSite`,`a`.`StarCount` AS `StarCount`,`a`.`StartFree` AS `StartFree`,`a`.`StartDate` AS `StartDate`,`a`.`GpLastDate` AS `GpLastDate`,`a`.`Flag` AS `Flag`,`a`.`VersionId` AS `VersionId`,`a`.`LuckyCount` AS `LuckyCount`,`a`.`RefiningSoulCount` AS `RefiningSoulCount`,ifnull(convert(`a`.`BeginTime` using utf8),_utf8'2000-01-01') AS `BeginTime`,ifnull(convert(`a`.`EndTime` using utf8),_utf8'2000-01-01') AS `EndTime`,`a`.`Reason` AS `Reason`,`a`.`RefuseFriend` AS `RefuseFriend`,`a`.`RefuseInvite` AS `RefuseInvite`,`a`.`MultiCampaignCount` AS `MultiCampaignCount`,`a`.`WaterCrystal` AS `WaterCrystal`,`a`.`QTEGuide` AS `QTEGuide`,`a`.`StarPoint` AS `StarPoint`,`a`.`Geste` AS `Geste`,`a`.`StoreGrade` AS `StoreGrade`,`a`.`StoreGp` AS `StoreGp`,`a`.`ReloginProcess` AS `ReloginProcess`,`a`.`ReloginCount` AS `ReloginCount`,`a`.`ReloginDate` AS `ReloginDate`,`a`.`BlessingCount` AS `blessingCount`,`a`.`BlessingBuff` AS `blessingBuff`,`a`.`FirstCharge` AS `FirstCharge`,`a`.`Charm` AS `Charm`,`a`.`MatchRoomCount` AS `MatchRoomCount`,`a`.`KingBuff` AS `KingBuff`,`a`.`LeaveGp` AS `LeaveGp`,`a`.`WarFieldCount` AS `WarFieldCount`,`a`.`MysteryScore` AS `MysteryScore`,`a`.`EnterTrialCount` AS `EnterTrialCount`,`a`.`CrossScore` AS `CrossScore`,`a`.`AppellId` AS `Appellid`,`a`.`OfficialId` AS `OfficialId`,`b`.`CurrentOrder` AS `CurrentOrder`,`b`.`CurrentGp` AS `CurrentGp`,`b`.`CurrentTotalGp` AS `CurrentTotalGP`,`b`.`CurrentGrades` AS `CurrentGrades`,`b`.`CurrentFightCapacity` AS `CurrentFightCapacity`,`b`.`LastDate` AS `LastDate`,`b`.`LastGP` AS `LastGP`,`b`.`LastAdd` AS `LastAdd`,`b`.`LastOrder` AS `LastOrder`,`b`.`WeekDate` AS `WeekDate`,`b`.`WeekGP` AS `WeekGP`,`b`.`WeekAdd` AS `WeekAdd`,`b`.`WeekOrder` AS `WeekOrder`,`b`.`FightCapacityOrder` AS `FightCapacityOrder`,`b`.`LastWinCount` AS `LastWinCount`,`b`.`ChallengeCount` AS `ChallengeCount`,`b`.`CurRank` AS `CurRank`,`b`.`TowerOrder` AS `TowerOrder`,`b`.`TowerIndex` AS `TowerIndex`,`b`.`HistoryRank` AS `HistoryRank`,`b`.`CurrentGeste` AS `CurrentGeste`,`b`.`GesteOrder` AS `GesteOrder`,`b`.`TowerOrder2` AS `TowerOrder2`,`b`.`CurrentTotalCharm` AS `CurrentTotalCharm`,`b`.`CurrentTotalCharmOrder` AS `CurrentTotalCharmOrder`,`b`.`LastCharm` AS `LastCharm`,`b`.`LastCharmAdd` AS `LastCharmAdd`,`b`.`LastCharmOrder` AS `LastCharmOrder`,`b`.`WeekCharm` AS `WeekCharm`,`b`.`WeekCharmAdd` AS `WeekCharmAdd`,`b`.`WeekCharmOrder` AS `WeekCharmOrder`,`b`.`LastCharmDate` AS `LastCharmDate`,`b`.`WeekCharmDate` AS `WeekCharmDate`,`b`.`TowerIndex2` AS `TowerIndex2`,`b`.`SoulScoreOrder` AS `SoulScoreOrder`,`b`.`CurrentSoulScore` AS `CurrentSoulScore`,`b`.`CurrentTotalScore` AS `CurrentTotalScore`,`b`.`WeekScore` AS `WeekScore`,`b`.`WeekScoreAdd` AS `WeekScoreAdd`,`b`.`WeekScoreOrder` AS `WeekScoreOrder`,`b`.`WeekScoreDate` AS `WeekScoreDate`,`b`.`WeekScoreHistoryRank` AS `WeekScoreHistoryRank`,`b`.`TakeWeekScoreExpirtDate` AS `TakeWeekScoreExpirtDate`,`b`.`JobFightOrder` AS `JobFightOrder`,`b`.`ChallengeOrder` AS `ChallengeOrder`,ifnull(convert(`c`.`TransLastResetTime` using utf8),_utf8'2000-01-01') AS `TransLastResetTime`,ifnull(convert(`c`.`WearyLastResetTime` using utf8),_utf8'2000-01-01') AS `WearyLastResetTime`,ifnull(convert(`c`.`AtackLastResetTime` using utf8),_utf8'2000-01-01') AS `AtackLastResetTime`,ifnull(convert(`c`.`TransNextMoveTime` using utf8),_utf8'2000-01-01') AS `TransNextMoveTime`,`c`.`IsCloseAAS` AS `IsCloseAAS`,`c`.`AASOnlineTime` AS `AASOnlineTime`,ifnull(convert(`c`.`AASBeginTime` using utf8),_utf8'2000-01-01') AS `AASBeginTime`,`c`.`HangupTime` AS `HangupTime`,`c`.`OfflineTime` AS `OfflineTime`,`c`.`RewardTimes` AS `RewardTimes`,`c`.`RewardLastDate` AS `RewardLastDate`,`c`.`RewardFree` AS `RewardFree`,`c`.`BuyCount` AS `BuyCount`,`c`.`MysteryLastDate` AS `MysteryLastDate`,`c`.`CheckCount` AS `CheckCount`,`c`.`IsFirst` AS `IsFirst`,`c`.`AltarCount` AS `AltarCount`,`c`.`AddTime` AS `AddTime`,`c`.`IsReceived` AS `IsReceived`,`c`.`upRuneByPointTimes` AS `upRuneByPointTimes`,`d`.`Power` AS `Power`,`d`.`Agility` AS `Agility`,`d`.`Intellect` AS `Intellect`,`d`.`Captain` AS `Captain`,`d`.`Physique` AS `Physique`,`d`.`Attack` AS `Attack`,`d`.`Defence` AS `Defence`,`d`.`MagicAttack` AS `MagicAttack`,`d`.`MagicDefence` AS `MagicDefence`,`d`.`Live` AS `Live`,`d`.`Conat` AS `Conat`,`d`.`ForceHit` AS `ForceHit`,`d`.`Parry` AS `Parry`,`d`.`CurArm` AS `CurArm`,`d`.`CurCloth` AS `CurCloth`,`d`.`Wing` AS `Wing`,`d`.`BagSuitSkill` AS `BagSuitSkill`,`d`.`HideFashion` AS `HideFashion`,`d`.`Hat` AS `Hat`,`d`.`FashionArm` AS `FashionArm`,`d`.`FashionCloth` AS `FashionCloth`,`c`.`LoginTimeRun` AS `LoginTimeRun`,`a`.`LordsScore` AS `LordsScore`,`c`.`BackBuffEndTime` AS `BackBuffEndTime`,`d`.`ReCrit` AS `ReCrit`,`d`.`Wreck` AS `Wreck`,`d`.`HarmRates` AS `HarmRates`,`d`.`ReharmRates` AS `ReharmRates`,`c`.`SendGiftCount` AS `SendGiftCount`,`a`.`Soul1` AS `Soul1`,`a`.`Soul2` AS `Soul2`,`a`.`Soul3` AS `Soul3`,`a`.`Soul4` AS `Soul4`,`b`.`KnightFightCapacityOrder` AS `KnightFightCapacityOrder`,`b`.`KnightFightCapacity` AS `KnightFightCapacity`,`a`.`KnightSite` AS `KnightSite`,`a`.`KnightRewardSite` AS `KnightRewardSite`,`c`.`GuildDayGoldOffer` AS `GuildDayGoldOffer`,`c`.`LastGuildGoldOfferDate` AS `LastGuildGoldOfferDate`,`c`.`IsFirstHunt` AS `IsFirstHunt`,`a`.`DragonSoulId` AS `DragonSoulId`,`c`.`LeftOpenCount` AS `LeftOpenCount`,`c`.`EDayProcess` AS `EDayProcess`,`c`.`EDayTimeRun` AS `EDayTimeRun`,`c`.`EDayGet` AS `EDayGet`,`c`.`EDayOpenCount` AS `EDayOpenCount`,`c`.`ChargeAdd` AS `ChargeAdd`,`c`.`LastAddWearyTime` AS `LastAddWearyTime`,`c`.`StageActiveFinishState` AS `StageActiveFinishState`,`c`.`StageActiveTakeState` AS `StageActiveTakeState`,`a`.`WaterRefineCount` AS `WaterRefineCount`,`b`.`ChangeCurrentOrder` AS `ChangeCurrentOrder`,`b`.`ChangeLastOrder` AS `ChangeLastOrder`,`b`.`ChangeWeekOrder` AS `ChangeWeekOrder`,`b`.`ChangeCurrentTotalCharmOrder` AS `ChangeCurrentTotalCharmOrder`,`b`.`ChangeLastCharmOrder` AS `ChangeLastCharmOrder`,`b`.`ChangeWeekCharmOrder` AS `ChangeWeekCharmOrder`,`b`.`ChangeKnightFightCapacityOrder` AS `ChangeKnightFightCapacityOrder`,`b`.`ChangeGesteOrder` AS `ChangeGesteOrder`,`b`.`ChangeSoulScoreOrder` AS `ChangeSoulScoreOrder`,`b`.`ChangeFightCapacityOrder` AS `ChangeFightCapacityOrder`,`a`.`Vital` AS `Vital`,`b`.`FishScore` AS `FishScore`,`b`.`FishOrder` AS `FishOrder`,`b`.`FishWeekScore` AS `FishWeekScore`,`b`.`FishWeekOrder` AS `FishWeekOrder`,`b`.`GemMazeScore` AS `GemMazeScore`,`b`.`GemMazeOrder` AS `GemMazeOrder`,`b`.`GemMazeWeekScore` AS `GemMazeWeekScore`,`b`.`GemMazeWeekOrder` AS `GemMazeWeekOrder`,`c`.`InvestTime` AS `InvestTime`,`c`.`InvestReward` AS `InvestReward`,`c`.`InvestMonthTime` AS `InvestMonthTime`,`c`.`InvestMonthReward` AS `InvestMonthReward`,`a`.`ConsortiaActiveValue` AS `ConsortiaActiveValue`,`a`.`ChargeRewardNum` AS `ChargeRewardNum`,`a`.`ChargeRewardFlag` AS `ChargeRewardFlag`,`a`.`TotalFightingCapacity` AS `TotalFightingCapacity`,`a`.`KnightFightingCapacity` AS `KnightFightingCapacity`,`b`.`CurrentTotalFightCapacity` AS `CurrentTotalFightCapacity`,`b`.`TotalFightCapacityOrder` AS `TotalFightCapacityOrder`,`a`.`ConsortiaRecrit` AS `ConsortiaRecrit`,`a`.`ConsortiaParry` AS `ConsortiaParry`,`a`.`ConsortiaWerck` AS `ConsortiaWerck`,`c`.`BuyBagTime` AS `BuyBagTime`,`c`.`CamDungeonRewardStatus` AS `CamDungeonRewardStatus`,`c`.`CampaignSite` AS `CampaignSite`,`c`.`SingleBossReward` AS `SingleBossReward`,`c`.`SingleBossTime` AS `SingleBossTime`,`c`.`SingleBossBuyCount` AS `SingleBossBuyCount`,`c`.`ChapterReward` AS `ChapterReward`,`c`.`DayOpenBoxCount` AS `DayOpenBoxCount`,`c`.`DayFreeVisite` AS `DayFreeVisite`,`a`.`KillCount` AS `KillCount`,`a`.`LastKillTime` AS `LastKillTime`,`c`.`UseCdkeyInfo` AS `UseCdkeyInfo`,`a`.`NewGradeProcess` AS `NewGradeProcess`,`a`.`PointInvestFlag` AS `PointInvestFlag`,`a`.`DayGoalRewardFlag` AS `DayGoalRewardFlag`,`c`.`BottleCount` AS `BottleCount`,`c`.`FreeUpgradeSacredTime` AS `FreeUpgradeSacredTime`,`a`.`ActivateSkillCount` AS `ActivateSkillCount`,`c`.`CollectionCount` AS `CollectionCount`,`c`.`StageActiveTakeTime` AS `StageActiveTakeTime`,`c`.`StageVIPFinishState` AS `StageVIPFinishState`,`c`.`StageVIPTakeState` AS `StageVIPTakeState`,`a`.`Experience` AS `Experience`,`a`.`EquipElderShip` AS `EquipElderShip`,`a`.`ActiveElderShip` AS `ActiveElderShip`,`a`.`ReadProgress` AS `ReadProgress`,`a`.`FirstVisiteFlag` AS `FirstVisiteFlag`,`a`.`LastVisiteTime` AS `LastVisiteTime`,`c`.`StarFreeLastDate` AS `StarFreeLastDate`,`c`.`DayBloodyCount` AS `DayBloodyCount`,`b`.`ChallengeBuyCount` AS `ChallengeBuyCount`,`a`.`MaxTotalFightingCapacity` AS `MaxTotalFightingCapacity`,`c`.`DayCrossCount` AS `DayCrossCount`,`c`.`BuyCrossCount` AS `BuyCrossCount`,`c`.`CurrentLevel` AS `CurrentLevel`,`a`.`MultiCampaignItemCount` AS `MultiCampaignItemCount`,`b`.`ChallengeItemCount` AS `ChallengeItemCount`,`a`.`AttackItemCount` AS `AttackItemCount`,`c`.`FirstHostDinner` AS `FirstHostDinner`,`b`.`TodayFightCapacityOrder` AS `TodayFightCapacityOrder`,`b`.`TodayCharmOrder` AS `TodayCharmOrder`,`b`.`TodaySoulOrder` AS `TodaySoulOrder`,`b`.`TodayGesteOrder` AS `TodayGesteOrder`,`c`.`ItemCrossCount` AS `ItemCrossCount`,`c`.`ItemSingleBossTime` AS `ItemSingleBossTime`,`a`.`HorcruxCount` AS `HorcruxCount`,`a`.`HorcruxFightCapacity` AS `HorcruxFightCapacity`,`a`.`HeroHorcruxFightCapacity` AS `HeroHorcruxFightCapacity`,`a`.`PlatType` AS `PlatType`,`a`.`PlatLevel` AS `PlatLevel`,`a`.`IsReceivePlat` AS `IsReceivePlat`,`c`.`MonthGift` AS `MonthGift`,`c`.`YearGift` AS `YearGift`,`a`.`KnightScore` AS `KnightScore`,`c`.`VisiteScore` AS `VisiteScore`,`c`.`SacredScore` AS `SacredScore`,`c`.`FreeKnightTimes` AS `FreeKnightTimes`,`a`.`HasCreditRewardGrade` AS `HasCreditRewardGrade`,`a`.`CreditScore` AS `CreditScore`,`a`.`TotalCreditScore` AS `TotalCreditScore`,`c`.`NewTimeRun` AS `NewTimeRun`,`c`.`NewTimeRewardCount` AS `NewTimeRewardCount`,`c`.`RichManRewardTime` AS `RichManRewardTime`,`a`.`PotenNum` AS `PotenNum`,`c`.`KnightChallengeNum` AS `KnightChallengeNum`,`b`.`SendRedBagOrder` AS `SendRedBagOrder`,`b`.`SendPoint` AS `SendPoint`,`b`.`ReceiveRedBagOrder` AS `ReceiveRedBagOrder`,`b`.`ReceivePoint` AS `ReceivePoint`,`a`.`WheelScore` AS `WheelScore`,`c`.`IsReceiveSalary` AS `IsReceiveSalary`,`c`.`RedBagCount` AS `RedBagCount`,`a`.`TotalSendPoint` AS `TotalSendPoint`,`a`.`TotalReceivePoint` AS `TotalReceivePoint`,`c`.`HorcruxJadeSandCount` AS `HorcruxJadeSandCount` from (((`t_u_playerinfo` `a` left join `t_u_playorder` `b` on((`a`.`UserId` = `b`.`UserId`))) left join `t_u_playertime` `c` on((`a`.`UserId` = `c`.`UserId`))) left join `t_u_playerjoin` `d` on((`a`.`UserId` = `d`.`UserId`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_u_simpleinfo`
--

/*!50001 DROP VIEW IF EXISTS `view_u_simpleinfo`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`7roaddba`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_u_simpleinfo` AS select `a`.`UserId` AS `userId`,`a`.`NickName` AS `nickName`,`a`.`IsExist` AS `isExist`,`a`.`Sexs` AS `sexs`,`a`.`Pics` AS `pics`,`a`.`Camp` AS `camp`,`a`.`State` AS `state`,`a`.`ConsortiaID` AS `consortiaID`,`a`.`Strategy` AS `strategy`,`a`.`ConsortiaName` AS `consortiaName`,`a`.`ConsortiaOffer` AS `consortiaOffer`,`a`.`ConsortiaTotalOffer` AS `ConsortiaTotalOffer`,`a`.`ClaimId` AS `claimId`,`a`.`ClaimName` AS `claimName`,`a`.`Repute` AS `repute`,`a`.`LogOutTime` AS `logOutTime`,`a`.`FightingCapacity` AS `fightingCapacity`,`a`.`MatchWin` AS `MatchWin`,`a`.`MatchFailed` AS `MatchFailed`,ifnull(`b`.`CurrentOrder`,0) AS `GpOrder`,`a`.`Grades` AS `Grades`,`a`.`GP` AS `GP`,`a`.`Right` AS `Right`,`a`.`Job` AS `Job`,`a`.`RefuseFriend` AS `RefuseFriend`,`a`.`StoreGrade` AS `StoreGrade`,`a`.`StoreGp` AS `StoreGp`,`b`.`CurRank` AS `CurRank`,`b`.`ChallengeCount` AS `ChallengeCount`,`b`.`LastWinCount` AS `LastWinCount`,`b`.`TowerOrder` AS `TowerOrder`,`b`.`TowerIndex` AS `TowerIndex`,`b`.`TowerOrder2` AS `TowerOrder2`,`b`.`TowerIndex2` AS `TowerIndex2`,`a`.`TotalFightingCapacity` AS `TotalFightingCapacity`,`a`.`ConsortiaActiveValue` AS `ConsortiaActiveValue`,`a`.`DragonSoulId` AS `DragonSoulId`,`c`.`Desc` AS `PSign`,`a`.`Point` AS `Point`,`d`.`Site` AS `Site`,`d`.`Uuid` AS `Uuid`,`d`.`UserName` AS `UserName`,`a`.`EndTime` AS `EndTime`,`a`.`PlatType` AS `PlatType`,`a`.`PlatLevel` AS `PlatLevel` from (((`t_u_playerinfo` `a` left join `t_u_playorder` `b` on((`a`.`UserId` = `b`.`UserId`))) left join `t_u_snsinfo` `c` on((`a`.`UserId` = `c`.`UserId`))) left join `t_u_userinfo` `d` on((`a`.`UserId` = `d`.`UserId`))) where (`a`.`IsExist` = 1) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-07-13  1:33:32
