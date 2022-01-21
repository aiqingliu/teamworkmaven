/*
Navicat MySQL Data Transfer

Source Server         : 127.0.0.1
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : teamwork

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2019-06-10 16:54:36
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `assignment`
-- ----------------------------
DROP TABLE IF EXISTS `assignment`;
CREATE TABLE `assignment` (
  `id` varchar(32) NOT NULL COMMENT '任务ID',
  `code` varchar(32) DEFAULT NULL COMMENT '任务编号',
  `name` varchar(50) DEFAULT NULL COMMENT '任务名称',
  `projectid` varchar(32) NOT NULL COMMENT '任务所属项目ID',
  `studentid` varchar(32) DEFAULT NULL COMMENT '任务所属学生ID',
  `progress` float(5,2) DEFAULT '0.00' COMMENT '任务完成进度',
  `starttime` datetime DEFAULT NULL COMMENT '任务开始时间',
  `endtime` datetime DEFAULT NULL COMMENT '任务结束时间',
  `finishtime` datetime DEFAULT NULL COMMENT '任务完成时间',
  `state` int(11) DEFAULT '1' COMMENT '任务完成状态（1未开始，2进行中，3已完成，4逾期）',
  `studentscore` varchar(300) DEFAULT NULL COMMENT '学生评分（小组成员）',
  `teacherscore` float(5,2) DEFAULT NULL COMMENT '老师评分',
  `score` float(5,2) DEFAULT NULL COMMENT '结算成绩',
  `description` varchar(1000) DEFAULT NULL COMMENT '任务描述',
  PRIMARY KEY (`id`),
  KEY `FK_ASSIGNMENT_PROJECTID` (`projectid`),
  KEY `FK_ASSIGNMENT_STUDENTID` (`studentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='任务表';

-- ----------------------------
-- Records of assignment
-- ----------------------------
INSERT INTO `assignment` VALUES ('10010', '10010', '项目一任务一', '1001', '159074001', '65.00', '2019-05-01 00:00:00', '2019-06-01 00:00:00', null, '2', null, null, '75.00', '一个用来测试的任务。\n测试序列号10010。');
INSERT INTO `assignment` VALUES ('10011', null, '项目一任务二', '1001', '159074002', '20.80', '2019-04-01 11:20:01', '2019-05-22 11:20:11', null, '2', null, null, null, null);
INSERT INTO `assignment` VALUES ('10012', null, '项目一任务三', '1001', '159074001', '80.60', '2019-04-09 11:20:15', '2019-05-24 11:20:21', null, '2', null, null, null, null);
INSERT INTO `assignment` VALUES ('10013', null, '项目一任务四', '1001', '159074002', '0.00', '2019-05-01 11:22:25', '2019-05-31 11:22:29', null, '1', null, null, null, null);
INSERT INTO `assignment` VALUES ('10014', null, '项目二任务一', '1002', '159074004', '0.00', '2019-04-03 20:28:09', '2019-06-10 20:28:17', null, '1', null, null, null, null);
INSERT INTO `assignment` VALUES ('10015', null, '项目二任务二', '1002', '159074005', '100.00', '2019-04-29 20:29:02', '2019-05-20 20:29:10', '2019-05-07 20:29:16', '3', null, null, null, null);
INSERT INTO `assignment` VALUES ('10016', null, '项目二任务三', '1002', '159074006', '20.00', '2019-05-01 21:23:53', '2019-05-05 21:24:00', null, '2', null, null, null, null);
INSERT INTO `assignment` VALUES ('10017', null, '项目一任务五', '1001', '159074001', '90.00', '2019-05-01 00:21:04', '2019-05-05 00:21:12', null, '4', null, null, null, null);
INSERT INTO `assignment` VALUES ('32a599a3b36c4d07993a68c9315d094b', '32a599a3b36c4d07993a68c9315d094b', 'ADGH', '270698c86115409492f1ea90c80d7802', '159074006', '100.00', '2019-05-01 00:00:00', '2019-05-23 00:00:00', '2019-05-22 11:19:07', '3', null, null, '80.50', 'ASDBR Y 阿斯顿发送到 阿打发士大夫\nFT 第三个\n发的一样认太忽悠人热好塔尔柔荑花图库了人员人而同一家有瓦特瓦特和二我和我个尔雅课污染源还好');
INSERT INTO `assignment` VALUES ('756275b2815d4b36bba45c6f773b77bc', '756275b2815d4b36bba45c6f773b77bc', 'hokp看来', '1eb6f0df3355445f81680d11980d4614', '159074003', '20.00', '2019-05-02 00:00:00', '2019-05-11 00:00:00', null, '1', null, null, null, '参与UI哦鱼鳔马奶酒GV');
INSERT INTO `assignment` VALUES ('208ef0c91b9341e6a878950d0506f220', '208ef0c91b9341e6a878950d0506f220', '阿达阿斯顿发', '854558620eae4dae95bf9540b7553d00', '159074004', '80.00', '2019-05-01 00:00:00', '2019-05-02 00:00:00', '2019-05-26 15:28:36', '3', null, null, null, '风格 人引入开个房很反感甩葱歌');
INSERT INTO `assignment` VALUES ('4337a18870614bbc890023c49f1cab2e', '4337a18870614bbc890023c49f1cab2e', '测试一个进度100但是逾期的任务', '270698c86115409492f1ea90c80d7802', '159074003', '0.00', '2019-05-01 00:00:00', '2019-05-05 00:00:00', null, '1', null, null, '20.00', '测试一个进度100但是逾期的任务');
INSERT INTO `assignment` VALUES ('5ba6bd0c25c144b3afb8904eb811eec5', '5ba6bd0c25c144b3afb8904eb811eec5', '基本测试', '7600dad696404dca8acb92ad58ee6f5d', '159074001', '0.00', '2019-06-01 00:00:00', '2019-06-20 00:00:00', null, '1', null, null, null, '基本测试');
INSERT INTO `assignment` VALUES ('4a14a18501154624877c0622de7b8e17', '4a14a18501154624877c0622de7b8e17', '测试任务000000', 'c8c12e5aaed644ef9afe5829e3b3f3f1', '159074001', '0.00', '2019-06-01 00:00:00', '2019-06-30 00:00:00', null, '1', null, null, null, '一个当前的测试项目的测试任务');
INSERT INTO `assignment` VALUES ('b5221b712adf44209b49b58e987e6035', 'b5221b712adf44209b49b58e987e6035', '00', 'a3d71934293946b39a9106770b043f83', '159074001', '60.00', '0001-01-03 00:00:00', '0001-01-03 00:00:00', null, '1', null, null, null, '0000');
INSERT INTO `assignment` VALUES ('6ad6add56e3046c2ab056ce66c7ab519', '6ad6add56e3046c2ab056ce66c7ab519', '啊', 'c8c12e5aaed644ef9afe5829e3b3f3f1', '159074002', '50.00', '2019-06-01 00:00:00', '2019-06-24 00:00:00', null, '1', null, null, null, '指派测试');

-- ----------------------------
-- Table structure for `assignment_detail`
-- ----------------------------
DROP TABLE IF EXISTS `assignment_detail`;
CREATE TABLE `assignment_detail` (
  `id` varchar(32) NOT NULL COMMENT '任务详情id',
  `assignmentid` varchar(32) NOT NULL COMMENT '任务id',
  `message` varchar(1000) DEFAULT NULL COMMENT '留言',
  `details` varchar(2000) DEFAULT NULL COMMENT '任务的内容例如关键代码',
  PRIMARY KEY (`id`,`assignmentid`),
  KEY `FK_ASSIGNMENTDETAIL_ASSIGNMENTID` (`assignmentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='任务详情表';

-- ----------------------------
-- Records of assignment_detail
-- ----------------------------
INSERT INTO `assignment_detail` VALUES ('10010', '10010', '对该测试任务进行简答评语，内容如下：\n1、任务完成内容包含数据\n2、任务的部分信息已经展示\n3、测试评语功能', '1、测试任务提交1次\n2、测试任务内容提交2次');
INSERT INTO `assignment_detail` VALUES ('208ef0c91b9341e6a878950d0506f220', '208ef0c91b9341e6a878950d0506f220', '暗黑三等奖\n萍儿4\n简单的做一个测评', 'A UER刚发的发\n//画进度条\n	function drawprogress(progress) {\n		var progressdiv = $(\"<div></div>\").addClass(\"progress\").attr({\"style\":\"margin: 1px;min-width: 250px;width: 100%;\"});\n		progressdiv.append($(\"<div></div>\")\n		.addClass(\"progress-bar\")\n		.attr({\"role\":\"progressbar\",\"aria-valuenow\":\"60\",\"aria-valuemin\":\"0\",\"aria-valuemax\":\"100\",\"style\":\"width: \"+progress+\"%;min-width: 2em;\"})\n		.text(progress+\"%\"));\n		return progressdiv;\n	}');
INSERT INTO `assignment_detail` VALUES ('32a599a3b36c4d07993a68c9315d094b', '32a599a3b36c4d07993a68c9315d094b', 'adsfasdfasdf\n安顿好伤感', null);
INSERT INTO `assignment_detail` VALUES ('756275b2815d4b36bba45c6f773b77bc', '756275b2815d4b36bba45c6f773b77bc', null, null);
INSERT INTO `assignment_detail` VALUES ('4337a18870614bbc890023c49f1cab2e', '4337a18870614bbc890023c49f1cab2e', '怎么逾期的呢，因为是我用来测试的', null);
INSERT INTO `assignment_detail` VALUES ('5ba6bd0c25c144b3afb8904eb811eec5', '5ba6bd0c25c144b3afb8904eb811eec5', null, null);
INSERT INTO `assignment_detail` VALUES ('4a14a18501154624877c0622de7b8e17', '4a14a18501154624877c0622de7b8e17', null, '测试内容');
INSERT INTO `assignment_detail` VALUES ('b5221b712adf44209b49b58e987e6035', 'b5221b712adf44209b49b58e987e6035', null, null);
INSERT INTO `assignment_detail` VALUES ('6ad6add56e3046c2ab056ce66c7ab519', '6ad6add56e3046c2ab056ce66c7ab519', null, null);

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` varchar(32) NOT NULL COMMENT '课程ID',
  `code` varchar(32) DEFAULT NULL COMMENT '课程编号',
  `name` varchar(50) NOT NULL COMMENT '课程名称',
  `tid` varchar(32) DEFAULT NULL COMMENT '授课教师ID',
  `time` varchar(100) DEFAULT NULL COMMENT '上课时间',
  `addr` varchar(100) DEFAULT NULL COMMENT '课程教室位置',
  `group` int(1) DEFAULT NULL COMMENT '班级是否分组(1:未分组;2:已分组;3:曾经分过组)',
  PRIMARY KEY (`id`),
  KEY `FK_COURSE_TID` (`tid`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='课程表';

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('0010', null, '计算机科学', '0000', '周二:一二;周五:三四;', '东教一南108', '2');
INSERT INTO `course` VALUES ('0011', null, '计算机编程', '0001', '周一:一二;周三:五六;', '东教一南106', null);
INSERT INTO `course` VALUES ('0012', null, '网络生活', '0002', '周二:三四;周四:七八;', '东教一北203', null);
INSERT INTO `course` VALUES ('0013', null, '计算机对象', '0001', '周二:三四;周五:三四;', '东教一北302', null);
INSERT INTO `course` VALUES ('0014', null, '军事科技', '0002', '周六:七八;', '阶教105', null);
INSERT INTO `course` VALUES ('0009', null, '计算一科课程', '0000', '不定', '不定', '2');
INSERT INTO `course` VALUES ('0008', null, '计算机基础', '0000', '周一:一二;', '东教101', null);
INSERT INTO `course` VALUES ('0007', null, '计算机活用', '0000', '周一:三四;', '东教101', null);
INSERT INTO `course` VALUES ('0006', null, '计算机发展简史', '0000', '周一:五六;', '东教101', '1');
INSERT INTO `course` VALUES ('0005', null, '计算机组成', '0000', '周一:七八;', '东教101', '1');

-- ----------------------------
-- Table structure for `course_student`
-- ----------------------------
DROP TABLE IF EXISTS `course_student`;
CREATE TABLE `course_student` (
  `courseid` varchar(32) NOT NULL COMMENT '课程ID（课程表id）',
  `studentid` varchar(32) NOT NULL COMMENT '学生ID（学生表ID）',
  `group` int(2) DEFAULT '1' COMMENT '该班级学生是否分过组(1:未分组;2:已分组;3:分过组;)',
  `teamscore` float(5,2) DEFAULT NULL COMMENT '小组成绩',
  `personscore` float(5,2) DEFAULT NULL COMMENT '个人成绩',
  `score` float(5,2) DEFAULT NULL COMMENT '学生折算成绩',
  KEY `FK_COURSE_STUDENT_STUDENTID` (`studentid`),
  KEY `FK_COURSE_STUDENT_COURSEID` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='班级学生表';

-- ----------------------------
-- Records of course_student
-- ----------------------------
INSERT INTO `course_student` VALUES ('0010', '159074016', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0010', '159074015', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0010', '159074002', '1', '75.00', null, null);
INSERT INTO `course_student` VALUES ('0010', '159074003', '1', '75.00', null, null);
INSERT INTO `course_student` VALUES ('0010', '159074004', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0010', '159074005', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0010', '159074006', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0010', '159074007', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0010', '159074008', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0009', '159074002', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0009', '159074003', '1', '100.00', '70.00', '85.00');
INSERT INTO `course_student` VALUES ('0009', '159074004', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0009', '159074005', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0009', '159074006', '1', '100.00', null, null);
INSERT INTO `course_student` VALUES ('0009', '159074007', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0009', '159074008', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0009', '159074009', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0010', '159074001', '1', '75.00', '50.20', '62.60');
INSERT INTO `course_student` VALUES ('0009', '159074016', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0009', '159074015', '1', '100.00', null, null);
INSERT INTO `course_student` VALUES ('0005', '159074001', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074002', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074003', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074004', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074005', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074006', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074007', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074008', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074009', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074010', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074101', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074102', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0006', '159074100', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0006', '159074101', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0006', '159074102', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0006', '159074103', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0006', '159074104', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0006', '159074105', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0006', '159074106', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0006', '159074107', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0006', '159074108', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0006', '159074109', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0006', '159074110', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0007', '159074100', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0007', '159074101', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0007', '159074102', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0007', '159074103', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0007', '159074104', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0007', '159074105', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0007', '159074106', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0007', '159074107', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0007', '159074108', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0007', '159074109', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0007', '159074110', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074103', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074104', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074105', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074106', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074107', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074108', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074109', '1', null, null, null);
INSERT INTO `course_student` VALUES ('0005', '159074110', '1', null, null, null);

-- ----------------------------
-- Table structure for `project`
-- ----------------------------
DROP TABLE IF EXISTS `project`;
CREATE TABLE `project` (
  `id` varchar(32) NOT NULL COMMENT '项目ID',
  `code` varchar(32) DEFAULT NULL COMMENT '项目编号code',
  `name` varchar(50) NOT NULL COMMENT '项目名称',
  `courseid` varchar(32) DEFAULT NULL COMMENT '项目所属班级',
  `tid` varchar(32) DEFAULT NULL COMMENT '项目所属团队ID',
  `progress` float(5,2) DEFAULT '0.00' COMMENT '项目完成进度',
  `starttime` datetime DEFAULT NULL COMMENT '项目开始时间',
  `endtime` datetime DEFAULT NULL COMMENT '项目结束时间',
  `finishtime` datetime DEFAULT NULL COMMENT '项目完成时间',
  `state` int(11) DEFAULT '1' COMMENT '项目完成状态（1未开始，2进行中，3已完成，4逾期）',
  `description` varchar(500) DEFAULT NULL COMMENT '项目的描述信息',
  `score` float(5,2) DEFAULT NULL COMMENT '项目分数',
  PRIMARY KEY (`id`),
  KEY `FK_PROJECT_COURSEID` (`courseid`),
  KEY `FK_PROJECT_TEAMID` (`tid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='项目表';

-- ----------------------------
-- Records of project
-- ----------------------------
INSERT INTO `project` VALUES ('1001', '1001', '项目一', '0010', '1001', '50.28', '2019-03-01 00:00:00', '2019-06-29 00:00:00', null, '2', '添加描述语句，描述项目的目的性。\n例如：在项目下创建多个任务给小组成员，监督成员完成项目。', '80.00');
INSERT INTO `project` VALUES ('1002', '1002', '项目二', '0010', '1002', '60.00', '2019-03-02 12:26:28', '2019-06-28 12:26:41', null, '2', null, null);
INSERT INTO `project` VALUES ('1003', '1003', '项目三', '0010', '1001', '70.00', '2019-04-06 13:59:29', '2019-06-11 13:59:37', null, '1', 'css', null);
INSERT INTO `project` VALUES ('1ec6d025-7345-11e9-a524-780cb837', '1004', '测试项目', '0010', '1ec6d04e-7345-11e9-a524-780cb837', '70.00', '2019-05-01 11:46:52', null, null, '1', null, null);
INSERT INTO `project` VALUES ('69a2444445e0469692a3a5f42a602727', '1006', '项目六', '0010', '', '70.00', '2019-04-30 00:00:00', '2019-05-02 00:00:00', null, '1', '项目六测试，更新项目测试', null);
INSERT INTO `project` VALUES ('854558620eae4dae95bf9540b7553d00', '1005', '项目五', '0010', '1002', '80.00', '2019-05-01 00:00:00', '2019-05-02 00:00:00', null, '1', '', '76.00');
INSERT INTO `project` VALUES ('270698c86115409492f1ea90c80d7802', '270698c86115409492f1ea90c80d7802', '阿斯顿发', '0009', '05e64697fdee49cd876784003d7995de', '100.00', '2019-05-01 00:00:00', '2019-05-31 00:00:00', null, '1', '', '68.00');
INSERT INTO `project` VALUES ('1eb6f0df3355445f81680d11980d4614', '1eb6f0df3355445f81680d11980d4614', '鼎折覆餗', '0009', '05e64697fdee49cd876784003d7995de', '30.00', '2019-05-02 00:00:00', '2019-05-11 00:00:00', null, '1', '', null);
INSERT INTO `project` VALUES ('c8c12e5aaed644ef9afe5829e3b3f3f1', '000000', '基本', '0010', '1001', '25.00', '2019-06-01 00:00:00', '2019-06-30 00:00:00', null, '1', '基本任务要求：\n（1）私聊，群聊\n（2）多进程/线程的服务器\n（3）多进程/线程的客户端\n其它可选任务，每组选以下2~3个方面，各组不要相同。优成绩必须至少含有（2）、（7）、（8）、（9）中的一个（>=1）：\n（1）如何将文件传输功能添加到系统中？\n（2）如何将离线消息功能添加到系统中？即，如果用户不再线时，服务器储存发好友送给该用户的信息，当该用户下次登录时，再将信息发给用户；\n（3）完善当聊天时，输入exit 回到菜单界面。\n（4）如何使得用户操作更加友好，流畅。\n（5）关闭一个用户后，系统有异常吗，如何改进？\n（6）如果服务器上将转发的信息全包保存到数据库，如何实现？\n（7）将客户端改为图形化界面，如基于gtk的。\n（8）如果要求用户传送文件与发送聊天信息共享一个socket，如何实现。\n（9）如果要求3个以上线程发送接收文件，如何实现？\n（10）其他方面。', null);
INSERT INTO `project` VALUES ('7600dad696404dca8acb92ad58ee6f5d', '7600dad696404dca8acb92ad58ee6f5d', '测试项目指派小组功能', '0010', '1001', '0.00', '2019-06-01 00:00:00', '2019-06-23 00:00:00', null, '1', '测试徐昂\n测试项目', null);
INSERT INTO `project` VALUES ('cf30115db2bd401baab0cbb511fc8174', '2df93b5e09674305b5c34fe6497ba87e', '基本项目', '0009', '05e64697fdee49cd876784003d7995de', '0.00', '2019-05-01 00:00:00', '2019-06-30 00:00:00', null, '1', '基本项目只安排到所有团队，团队可自行处理', null);
INSERT INTO `project` VALUES ('e8b3d29aa0c5487fb87c18d3e365887c', '2df93b5e09674305b5c34fe6497ba87e', '基本项目', '0009', '163c21bfb95a473a85c8ad19ecce249f', '0.00', '2019-05-01 00:00:00', '2019-06-30 00:00:00', null, '1', '基本项目只安排到所有团队，团队可自行处理', null);
INSERT INTO `project` VALUES ('911c5fbb4e6a430b8aea38605dacdf95', '2df93b5e09674305b5c34fe6497ba87e', '基本项目', '0009', '60d624ace59d4f13852683f5de48bf93', '0.00', '2019-05-01 00:00:00', '2019-06-30 00:00:00', null, '1', '基本项目只安排到所有团队，团队可自行处理', null);
INSERT INTO `project` VALUES ('a64c6ab64f184ec4884c81ad7f4079eb', '2df93b5e09674305b5c34fe6497ba87e', '基本项目', '0009', 'f64d2c1cd73445df9cdc1b81267f5e18', '0.00', '2019-05-01 00:00:00', '2019-06-30 00:00:00', null, '1', '基本项目只安排到所有团队，团队可自行处理', null);
INSERT INTO `project` VALUES ('a3d71934293946b39a9106770b043f83', '00', '00', '0010', '1001', '60.00', '2019-06-01 00:00:00', '2019-06-30 00:00:00', null, '1', '测试00', null);

-- ----------------------------
-- Table structure for `project_student`
-- ----------------------------
DROP TABLE IF EXISTS `project_student`;
CREATE TABLE `project_student` (
  `projectid` varchar(32) NOT NULL COMMENT '项目id（项目表ID）',
  `studentid` varchar(32) NOT NULL COMMENT '学生id（学生表ID）',
  PRIMARY KEY (`projectid`,`studentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='项目学生表';

-- ----------------------------
-- Records of project_student
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` varchar(32) NOT NULL COMMENT '学生ID（学号）',
  `name` varchar(50) NOT NULL COMMENT '学生姓名',
  `password` varchar(18) DEFAULT NULL,
  `sfzh` varchar(20) DEFAULT NULL COMMENT '学生身份证号',
  `sex` varchar(12) DEFAULT NULL COMMENT '学生性别',
  `grade` varchar(12) DEFAULT NULL COMMENT '学生年级',
  `classid` varchar(50) DEFAULT NULL COMMENT '所属班级id(分组时使用)',
  `classname` varchar(50) DEFAULT NULL COMMENT '所属班级名称',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='学生表';

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('159074016', '柳艾青', '159074016', '340121199612167917', '男', '2015', '151', '计151');
INSERT INTO `student` VALUES ('159074009', '杜玉铭', '159074009', '340121199700000000', '男', '2015', '151', '计151');
INSERT INTO `student` VALUES ('159074015', '刘彦', '159074015', '340121199704180000', '男', '2015', '151', '计151');
INSERT INTO `student` VALUES ('159074001', '学生一号', '159074001', '340121199612161212', '女', '2015', '161', '计121');
INSERT INTO `student` VALUES ('159074002', '学生二号', '159074002', '340121199701010000', '男', '2016', '161', '计161');
INSERT INTO `student` VALUES ('159074003', '学生三号', '159074003', '340121199701010001', '女', '2016', '161', '计161');
INSERT INTO `student` VALUES ('159074004', '学生四号', '159074004', '340121199701010004', '女', '2016', '161', '计161');
INSERT INTO `student` VALUES ('159074005', '学生五号', '159074005', '340121199701010005', '男', '2016', '161', '计161');
INSERT INTO `student` VALUES ('159074006', '学生六号', '159074006', '340121199701010006', '女', '2016', '161', '计161');
INSERT INTO `student` VALUES ('159074007', '学生七号', '159074007', '340121199701010007', '女', '2016', '161', '计161');
INSERT INTO `student` VALUES ('159074008', '学生八号', '159074008', '340121199701010008', '男', '2016', '161', '计161');
INSERT INTO `student` VALUES ('159074100', '学生100', '159074100', '340121199701010100', '女', '2017', '161', '计161');
INSERT INTO `student` VALUES ('159074101', '学生101', '159074101', '340121199701010101', '女', '2017', '161', '计161');
INSERT INTO `student` VALUES ('159074102', '学生102', '159074102', '340121199701010102', '女', '2017', '161', '计161');
INSERT INTO `student` VALUES ('159074103', '学生103', '159074103', '340121199701010103', '女', '2017', '161', '计161');
INSERT INTO `student` VALUES ('159074104', '学生104', '159074104', '340121199701010104', '女', '2017', '161', '计161');
INSERT INTO `student` VALUES ('159074105', '学生105', '159074105', '340121199701010105', '男', '2017', '161', '计161');
INSERT INTO `student` VALUES ('159074106', '学生106', '159074106', '340121199701010106', '女', '2017', '161', '计161');
INSERT INTO `student` VALUES ('159074107', '学生107', '159074107', '340121199701010107', '女', '2017', '161', '计161');
INSERT INTO `student` VALUES ('159074108', '学生108', '159074108', '340121199701010108', '男', '2017', '161', '计161');
INSERT INTO `student` VALUES ('159074109', '学生109', '159074109', '340121199701010109', '女', '2017', '161', '计161');
INSERT INTO `student` VALUES ('159074110', '学生110', '159074110', '340121199701010110', '男', '2017', '161', '计161');
INSERT INTO `student` VALUES ('159074010', '王客', '159074010', '340121199600001101', '男', '2015', '152', '计152');
INSERT INTO `student` VALUES ('159074011', '章子', '159074011', '340121199700110011', '女', '2015', '153', '计153');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `id` varchar(32) NOT NULL COMMENT '教师ID（工号）',
  `code` varchar(32) DEFAULT NULL COMMENT '教师编号',
  `name` varchar(50) NOT NULL COMMENT '教师姓名',
  `password` varchar(18) DEFAULT NULL COMMENT '教师密码',
  `sfzh` varchar(20) DEFAULT NULL COMMENT '教师身份证号',
  `sex` varchar(12) DEFAULT NULL COMMENT '教师性别',
  `academy` varchar(50) DEFAULT NULL COMMENT '所属学院',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='教师表';

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('0000', null, '郭老师', '0000', '340121198111050001', '男', '计算机学院');
INSERT INTO `teacher` VALUES ('0001', null, '小小', '0001', '340121198901010001', '男', '计算机学院');
INSERT INTO `teacher` VALUES ('0002', null, '张静怡', '0002', '340121197906240002', '女', '计算机学院');
INSERT INTO `teacher` VALUES ('0003', null, '孟晓飞', '0003', '340121199201020003', '男', '计算机学院');
INSERT INTO `teacher` VALUES ('0004', null, '王雅', '0004', '340121198903050004', '女', '商学院');
INSERT INTO `teacher` VALUES ('0005', null, '高晓琪', '0005', '340121199001020005', '女', '外国语学院');

-- ----------------------------
-- Table structure for `team`
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team` (
  `id` varchar(32) NOT NULL COMMENT '团队ID',
  `code` varchar(32) DEFAULT NULL COMMENT '团队编号',
  `name` varchar(50) DEFAULT NULL COMMENT '团队名称',
  `courseid` varchar(32) DEFAULT NULL COMMENT '团队所属课程ID',
  `score` float(5,2) DEFAULT NULL COMMENT '小组评分',
  PRIMARY KEY (`id`),
  KEY `FK_TEAM_COURSEID` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='小组表';

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES ('1001', '100001', '一班一队', '0010', '75.00');
INSERT INTO `team` VALUES ('1002', '100002', '一班二队', '0010', null);
INSERT INTO `team` VALUES ('1003', '100003', '一班三队', '0010', null);
INSERT INTO `team` VALUES ('05e64697fdee49cd876784003d7995de', null, null, '0009', '100.00');
INSERT INTO `team` VALUES ('f64d2c1cd73445df9cdc1b81267f5e18', null, null, '0009', null);
INSERT INTO `team` VALUES ('163c21bfb95a473a85c8ad19ecce249f', null, null, '0009', null);
INSERT INTO `team` VALUES ('60d624ace59d4f13852683f5de48bf93', 'ceshiming', 'ceshimign', '0009', null);

-- ----------------------------
-- Table structure for `team_student`
-- ----------------------------
DROP TABLE IF EXISTS `team_student`;
CREATE TABLE `team_student` (
  `teamid` varchar(32) NOT NULL COMMENT '团队ID（团队表id）',
  `studentid` varchar(32) NOT NULL COMMENT '学生id（学生表ID）',
  `courseid` varchar(32) NOT NULL COMMENT '团队所属课程的id',
  `character` varchar(12) DEFAULT NULL COMMENT '担任角色（组长、成员、副组长……）',
  KEY `FK_TEAM_STUDENT_TEAMID` (`teamid`),
  KEY `FK_TEAM_STUDENT_STUDENTID` (`studentid`),
  KEY `FK_TEAM_STUDENT_COURSEID` (`courseid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='小组学生表';

-- ----------------------------
-- Records of team_student
-- ----------------------------
INSERT INTO `team_student` VALUES ('1001', '159074001', '0010', '1');
INSERT INTO `team_student` VALUES ('1001', '159074002', '0010', '2');
INSERT INTO `team_student` VALUES ('1001', '159074003', '0010', '2');
INSERT INTO `team_student` VALUES ('1002', '159074004', '0010', '1');
INSERT INTO `team_student` VALUES ('1002', '159074005', '0010', '2');
INSERT INTO `team_student` VALUES ('1002', '159074006', '0010', '2');
INSERT INTO `team_student` VALUES ('1002', '159074007', '0010', '2');
INSERT INTO `team_student` VALUES ('1003', '159074100', '0010', '2');
INSERT INTO `team_student` VALUES ('1003', '159074101', '0010', '1');
INSERT INTO `team_student` VALUES ('1003', '159074102', '0010', '2');
INSERT INTO `team_student` VALUES ('1003', '159074103', '0010', '2');
INSERT INTO `team_student` VALUES ('05e64697fdee49cd876784003d7995de', '159074003', '0009', '1');
INSERT INTO `team_student` VALUES ('05e64697fdee49cd876784003d7995de', '159074006', '0009', '2');
INSERT INTO `team_student` VALUES ('05e64697fdee49cd876784003d7995de', '159074015', '0009', '2');
INSERT INTO `team_student` VALUES ('f64d2c1cd73445df9cdc1b81267f5e18', '159074002', '0009', null);
INSERT INTO `team_student` VALUES ('f64d2c1cd73445df9cdc1b81267f5e18', '159074005', '0009', null);
INSERT INTO `team_student` VALUES ('f64d2c1cd73445df9cdc1b81267f5e18', '159074009', '0009', null);
INSERT INTO `team_student` VALUES ('163c21bfb95a473a85c8ad19ecce249f', '159074008', '0009', null);
INSERT INTO `team_student` VALUES ('163c21bfb95a473a85c8ad19ecce249f', '159074004', '0009', null);
INSERT INTO `team_student` VALUES ('60d624ace59d4f13852683f5de48bf93', '159074007', '0009', '1');
INSERT INTO `team_student` VALUES ('60d624ace59d4f13852683f5de48bf93', '159074016', '0009', '2');
DROP TRIGGER IF EXISTS `INSERTASSIGNMENT`;
DELIMITER ;;
CREATE TRIGGER `INSERTASSIGNMENT` AFTER INSERT ON `assignment` FOR EACH ROW BEGIN
   INSERT INTO ASSIGNMENT_DETAIL  (ID,ASSIGNMENTID) VALUES(NEW.ID,NEW.ID);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `UPDATEASSIGNMENT`;
DELIMITER ;;
CREATE TRIGGER `UPDATEASSIGNMENT` AFTER UPDATE ON `assignment` FOR EACH ROW BEGIN
   UPDATE project set progress = (select sum(progress)/count(*) from assignment where projectid = OLD.projectid) where id = OLD.projectid;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `DELETEASSIGNMENT`;
DELIMITER ;;
CREATE TRIGGER `DELETEASSIGNMENT` AFTER DELETE ON `assignment` FOR EACH ROW BEGIN
   DELETE FROM ASSIGNMENT_DETAIL  WHERE ASSIGNMENTID = OLD.ID;
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `UPDATECOUURSESTUDENT`;
DELIMITER ;;
CREATE TRIGGER `UPDATECOUURSESTUDENT` BEFORE UPDATE ON `course_student` FOR EACH ROW BEGIN
SET NEW.SCORE = (NEW.teamscore*0.5 +NEW. personscore*0.5);
END
;;
DELIMITER ;
DROP TRIGGER IF EXISTS `UPDATEPROJECT`;
DELIMITER ;;
CREATE TRIGGER `UPDATEPROJECT` BEFORE UPDATE ON `project` FOR EACH ROW BEGIN
-- UPDATE PROJECT SET NEW.STATE = 2 WHERE  ID = NEW.ID AND NEW.PROGRESS > 0 AND NEW.ENDTIME > NOW();
-- UPDATE PROJECT SET NEW.STATE = 3 , FINISHTIME = NOW() WHERE ID = OLD.ID AND PROGRESS = 100 AND ENDTIME > NOW()  ;
-- UPDATE PROJECT SET NEW.STATE = 4 , FINISHTIME = NOW() WHERE ID = OLD.ID AND ENDTIME < NOW()  ;
END
;;
DELIMITER ;
