/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t107`;
CREATE DATABASE IF NOT EXISTS `t107` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t107`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootnp4n3/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootnp4n3/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootnp4n3/upload/picture3.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discussshetuanxinxi`;
CREATE TABLE IF NOT EXISTS `discussshetuanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3 COMMENT='社团信息评论表';

DELETE FROM `discussshetuanxinxi`;
INSERT INTO `discussshetuanxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(111, '2021-05-08 01:50:29', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(112, '2021-05-08 01:50:29', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(113, '2021-05-08 01:50:29', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(114, '2021-05-08 01:50:29', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(115, '2021-05-08 01:50:29', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(116, '2021-05-08 01:50:29', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `huodongbaoming`;
CREATE TABLE IF NOT EXISTS `huodongbaoming` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `baomingneirong` varchar(200) DEFAULT NULL COMMENT '报名内容',
  `baomingriqi` datetime DEFAULT NULL COMMENT '报名日期',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='活动报名';

DELETE FROM `huodongbaoming`;
INSERT INTO `huodongbaoming` (`id`, `addtime`, `biaoti`, `shetuanmingcheng`, `zhanghao`, `baomingneirong`, `baomingriqi`, `xuehao`, `xueshengxingming`, `shouji`, `sfsh`, `shhf`) VALUES
	(81, '2021-05-08 01:50:29', '标题1', '社团名称1', '账号1', '报名内容1', '2021-05-08 09:50:29', '学号1', '学生姓名1', '手机1', '是', ''),
	(82, '2021-05-08 01:50:29', '标题2', '社团名称2', '账号2', '报名内容2', '2021-05-08 09:50:29', '学号2', '学生姓名2', '手机2', '是', ''),
	(83, '2021-05-08 01:50:29', '标题3', '社团名称3', '账号3', '报名内容3', '2021-05-08 09:50:29', '学号3', '学生姓名3', '手机3', '是', ''),
	(84, '2021-05-08 01:50:29', '标题4', '社团名称4', '账号4', '报名内容4', '2021-05-08 09:50:29', '学号4', '学生姓名4', '手机4', '是', ''),
	(85, '2021-05-08 01:50:29', '标题5', '社团名称5', '账号5', '报名内容5', '2021-05-08 09:50:29', '学号5', '学生姓名5', '手机5', '是', ''),
	(86, '2021-05-08 01:50:29', '标题6', '社团名称6', '账号6', '报名内容6', '2021-05-08 09:50:29', '学号6', '学生姓名6', '手机6', '是', '');

DROP TABLE IF EXISTS `jiarushetuan`;
CREATE TABLE IF NOT EXISTS `jiarushetuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `shetuanfenlei` varchar(200) DEFAULT NULL COMMENT '社团分类',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `jiaruliyou` varchar(200) DEFAULT NULL COMMENT '加入理由',
  `shenqingshijian` datetime DEFAULT NULL COMMENT '申请时间',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='加入社团';

DELETE FROM `jiarushetuan`;
INSERT INTO `jiarushetuan` (`id`, `addtime`, `shetuanmingcheng`, `shetuanfenlei`, `zhanghao`, `jiaruliyou`, `shenqingshijian`, `xuehao`, `xueshengxingming`, `banji`, `shouji`, `sfsh`, `shhf`) VALUES
	(51, '2021-05-08 01:50:28', '社团名称1', '社团分类1', '账号1', '加入理由1', '2021-05-08 09:50:28', '学号1', '学生姓名1', '班级1', '手机1', '是', ''),
	(52, '2021-05-08 01:50:28', '社团名称2', '社团分类2', '账号2', '加入理由2', '2021-05-08 09:50:28', '学号2', '学生姓名2', '班级2', '手机2', '是', ''),
	(53, '2021-05-08 01:50:28', '社团名称3', '社团分类3', '账号3', '加入理由3', '2021-05-08 09:50:28', '学号3', '学生姓名3', '班级3', '手机3', '是', ''),
	(54, '2021-05-08 01:50:28', '社团名称4', '社团分类4', '账号4', '加入理由4', '2021-05-08 09:50:28', '学号4', '学生姓名4', '班级4', '手机4', '是', ''),
	(55, '2021-05-08 01:50:28', '社团名称5', '社团分类5', '账号5', '加入理由5', '2021-05-08 09:50:28', '学号5', '学生姓名5', '班级5', '手机5', '是', ''),
	(56, '2021-05-08 01:50:28', '社团名称6', '社团分类6', '账号6', '加入理由6', '2021-05-08 09:50:28', '学号6', '学生姓名6', '班级6', '手机6', '是', '');

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3 COMMENT='社团新闻';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(101, '2021-05-08 01:50:29', '标题1', '简介1', 'http://localhost:8080/springbootnp4n3/upload/news_picture1.jpg', '内容1'),
	(102, '2021-05-08 01:50:29', '标题2', '简介2', 'http://localhost:8080/springbootnp4n3/upload/news_picture2.jpg', '内容2'),
	(103, '2021-05-08 01:50:29', '标题3', '简介3', 'http://localhost:8080/springbootnp4n3/upload/news_picture3.jpg', '内容3'),
	(104, '2021-05-08 01:50:29', '标题4', '简介4', 'http://localhost:8080/springbootnp4n3/upload/news_picture4.jpg', '内容4'),
	(105, '2021-05-08 01:50:29', '标题5', '简介5', 'http://localhost:8080/springbootnp4n3/upload/news_picture5.jpg', '内容5'),
	(106, '2021-05-08 01:50:29', '标题6', '简介6', 'http://localhost:8080/springbootnp4n3/upload/news_picture6.jpg', '内容6');

DROP TABLE IF EXISTS `shetuanchengyuan`;
CREATE TABLE IF NOT EXISTS `shetuanchengyuan` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `xuehao` varchar(200) DEFAULT NULL COMMENT '学号',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhiwei` varchar(200) DEFAULT NULL COMMENT '职位',
  `jiarushijian` date DEFAULT NULL COMMENT '加入时间',
  `gerenjianjie` longtext COMMENT '个人简介',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='社团成员';

DELETE FROM `shetuanchengyuan`;
INSERT INTO `shetuanchengyuan` (`id`, `addtime`, `shetuanmingcheng`, `xuehao`, `xueshengxingming`, `banji`, `shouji`, `zhiwei`, `jiarushijian`, `gerenjianjie`, `zhanghao`) VALUES
	(61, '2021-05-08 01:50:28', '社团名称1', '学号1', '学生姓名1', '班级1', '手机1', '职位1', '2021-05-08', '个人简介1', '账号1'),
	(62, '2021-05-08 01:50:28', '社团名称2', '学号2', '学生姓名2', '班级2', '手机2', '职位2', '2021-05-08', '个人简介2', '账号2'),
	(63, '2021-05-08 01:50:28', '社团名称3', '学号3', '学生姓名3', '班级3', '手机3', '职位3', '2021-05-08', '个人简介3', '账号3'),
	(64, '2021-05-08 01:50:28', '社团名称4', '学号4', '学生姓名4', '班级4', '手机4', '职位4', '2021-05-08', '个人简介4', '账号4'),
	(65, '2021-05-08 01:50:28', '社团名称5', '学号5', '学生姓名5', '班级5', '手机5', '职位5', '2021-05-08', '个人简介5', '账号5'),
	(66, '2021-05-08 01:50:29', '社团名称6', '学号6', '学生姓名6', '班级6', '手机6', '职位6', '2021-05-08', '个人简介6', '账号6');

DROP TABLE IF EXISTS `shetuanfenlei`;
CREATE TABLE IF NOT EXISTS `shetuanfenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanfenlei` varchar(200) DEFAULT NULL COMMENT '社团分类',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='社团分类';

DELETE FROM `shetuanfenlei`;
INSERT INTO `shetuanfenlei` (`id`, `addtime`, `shetuanfenlei`) VALUES
	(31, '2021-05-08 01:50:28', '社团分类1'),
	(32, '2021-05-08 01:50:28', '社团分类2'),
	(33, '2021-05-08 01:50:28', '社团分类3'),
	(34, '2021-05-08 01:50:28', '社团分类4'),
	(35, '2021-05-08 01:50:28', '社团分类5'),
	(36, '2021-05-08 01:50:28', '社团分类6');

DROP TABLE IF EXISTS `shetuanhuodong`;
CREATE TABLE IF NOT EXISTS `shetuanhuodong` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题',
  `shetuanmingcheng` varchar(200) DEFAULT NULL COMMENT '社团名称',
  `huodongtupian` varchar(200) DEFAULT NULL COMMENT '活动图片',
  `kaishishijian` date DEFAULT NULL COMMENT '开始时间',
  `jieshushijian` date DEFAULT NULL COMMENT '结束时间',
  `huodongrenshu` int NOT NULL COMMENT '活动人数',
  `huodongdidian` varchar(200) DEFAULT NULL COMMENT '活动地点',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `huodongxiangqing` longtext COMMENT '活动详情',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='社团活动';

DELETE FROM `shetuanhuodong`;
INSERT INTO `shetuanhuodong` (`id`, `addtime`, `biaoti`, `shetuanmingcheng`, `huodongtupian`, `kaishishijian`, `jieshushijian`, `huodongrenshu`, `huodongdidian`, `zhanghao`, `huodongxiangqing`, `sfsh`, `shhf`) VALUES
	(71, '2021-05-08 01:50:29', '标题1', '社团名称1', 'http://localhost:8080/springbootnp4n3/upload/shetuanhuodong_huodongtupian1.jpg', '2021-05-08', '2021-05-08', 1, '活动地点1', '账号1', '活动详情1', '是', ''),
	(72, '2021-05-08 01:50:29', '标题2', '社团名称2', 'http://localhost:8080/springbootnp4n3/upload/shetuanhuodong_huodongtupian2.jpg', '2021-05-08', '2021-05-08', 2, '活动地点2', '账号2', '活动详情2', '是', ''),
	(73, '2021-05-08 01:50:29', '标题3', '社团名称3', 'http://localhost:8080/springbootnp4n3/upload/shetuanhuodong_huodongtupian3.jpg', '2021-05-08', '2021-05-08', 3, '活动地点3', '账号3', '活动详情3', '是', ''),
	(74, '2021-05-08 01:50:29', '标题4', '社团名称4', 'http://localhost:8080/springbootnp4n3/upload/shetuanhuodong_huodongtupian4.jpg', '2021-05-08', '2021-05-08', 4, '活动地点4', '账号4', '活动详情4', '是', ''),
	(75, '2021-05-08 01:50:29', '标题5', '社团名称5', 'http://localhost:8080/springbootnp4n3/upload/shetuanhuodong_huodongtupian5.jpg', '2021-05-08', '2021-05-08', 5, '活动地点5', '账号5', '活动详情5', '是', ''),
	(76, '2021-05-08 01:50:29', '标题6', '社团名称6', 'http://localhost:8080/springbootnp4n3/upload/shetuanhuodong_huodongtupian6.jpg', '2021-05-08', '2021-05-08', 6, '活动地点6', '账号6', '活动详情6', '是', '');

DROP TABLE IF EXISTS `shetuanxinxi`;
CREATE TABLE IF NOT EXISTS `shetuanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `shetuanmingcheng` varchar(200) NOT NULL COMMENT '社团名称',
  `shetuanfenlei` varchar(200) NOT NULL COMMENT '社团分类',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  `chuangjianshijian` date DEFAULT NULL COMMENT '创建时间',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shetuanjianjie` longtext COMMENT '社团简介',
  `shezhangxingming` varchar(200) DEFAULT NULL COMMENT '社长姓名',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `sfsh` varchar(200) DEFAULT '否' COMMENT '是否审核',
  `shhf` longtext COMMENT '审核回复',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='社团信息';

DELETE FROM `shetuanxinxi`;
INSERT INTO `shetuanxinxi` (`id`, `addtime`, `shetuanmingcheng`, `shetuanfenlei`, `tupian`, `chuangjianshijian`, `shouji`, `youxiang`, `shetuanjianjie`, `shezhangxingming`, `zhanghao`, `sfsh`, `shhf`, `clicktime`, `clicknum`) VALUES
	(41, '2021-05-08 01:50:28', '社团名称1', '社团分类1', 'http://localhost:8080/springbootnp4n3/upload/shetuanxinxi_tupian1.jpg', '2021-05-08', '13823888881', '773890001@qq.com', '社团简介1', '社长姓名1', '账号1', '是', '', '2024-02-16 12:55:50', 4),
	(42, '2021-05-08 01:50:28', '社团名称2', '社团分类2', 'http://localhost:8080/springbootnp4n3/upload/shetuanxinxi_tupian2.jpg', '2021-05-08', '13823888882', '773890002@qq.com', '社团简介2', '社长姓名2', '账号2', '是', '', '2021-05-08 09:50:28', 2),
	(43, '2021-05-08 01:50:28', '社团名称3', '社团分类3', 'http://localhost:8080/springbootnp4n3/upload/shetuanxinxi_tupian3.jpg', '2021-05-08', '13823888883', '773890003@qq.com', '社团简介3', '社长姓名3', '账号3', '是', '', '2021-05-08 09:50:28', 3),
	(44, '2021-05-08 01:50:28', '社团名称4', '社团分类4', 'http://localhost:8080/springbootnp4n3/upload/shetuanxinxi_tupian4.jpg', '2021-05-08', '13823888884', '773890004@qq.com', '社团简介4', '社长姓名4', '账号4', '是', '', '2024-02-16 12:54:39', 5),
	(45, '2021-05-08 01:50:28', '社团名称5', '社团分类5', 'http://localhost:8080/springbootnp4n3/upload/shetuanxinxi_tupian5.jpg', '2021-05-08', '13823888885', '773890005@qq.com', '社团简介5', '社长姓名5', '账号5', '是', '', '2021-05-08 09:50:28', 5),
	(46, '2021-05-08 01:50:28', '社团名称6', '社团分类6', 'http://localhost:8080/springbootnp4n3/upload/shetuanxinxi_tupian6.jpg', '2021-05-08', '13823888886', '773890006@qq.com', '社团简介6', '社长姓名6', '账号6', '是', '', '2021-05-08 09:50:28', 6);

DROP TABLE IF EXISTS `shezhang`;
CREATE TABLE IF NOT EXISTS `shezhang` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `shezhangxingming` varchar(200) DEFAULT NULL COMMENT '社长姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='社长';

DELETE FROM `shezhang`;
INSERT INTO `shezhang` (`id`, `addtime`, `zhanghao`, `mima`, `shezhangxingming`, `xingbie`, `touxiang`, `xueyuan`, `banji`, `shouji`) VALUES
	(21, '2021-05-08 01:50:28', '社长1', '123456', '社长姓名1', '男', 'http://localhost:8080/springbootnp4n3/upload/shezhang_touxiang1.jpg', '学院1', '班级1', '13823888881'),
	(22, '2021-05-08 01:50:28', '社长2', '123456', '社长姓名2', '男', 'http://localhost:8080/springbootnp4n3/upload/shezhang_touxiang2.jpg', '学院2', '班级2', '13823888882'),
	(23, '2021-05-08 01:50:28', '社长3', '123456', '社长姓名3', '男', 'http://localhost:8080/springbootnp4n3/upload/shezhang_touxiang3.jpg', '学院3', '班级3', '13823888883'),
	(24, '2021-05-08 01:50:28', '社长4', '123456', '社长姓名4', '男', 'http://localhost:8080/springbootnp4n3/upload/shezhang_touxiang4.jpg', '学院4', '班级4', '13823888884'),
	(25, '2021-05-08 01:50:28', '社长5', '123456', '社长姓名5', '男', 'http://localhost:8080/springbootnp4n3/upload/shezhang_touxiang5.jpg', '学院5', '班级5', '13823888885'),
	(26, '2021-05-08 01:50:28', '社长6', '123456', '社长姓名6', '男', 'http://localhost:8080/springbootnp4n3/upload/shezhang_touxiang6.jpg', '学院6', '班级6', '13823888886');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1708059176277 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1708059176276, '2024-02-16 04:52:55', 11, 41, 'shetuanxinxi', '社团名称1', 'http://localhost:8080/springbootnp4n3/upload/shetuanxinxi_tupian1.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'qaogkudrdh1dgg6aidcuynmdlrjaxpqr', '2024-02-16 04:47:10', '2024-02-16 05:54:18'),
	(2, 11, '学生1', 'xuesheng', '学生', '5y7kxq0gel0cbrcc0nsljaob7pjz576u', '2024-02-16 04:52:31', '2024-02-16 05:55:38'),
	(3, 21, '社长1', 'shezhang', '社长', 'l3vjri6ckwzwjnong6vyhwhycfum8t4v', '2024-02-16 04:55:26', '2024-02-16 05:55:27');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-08 01:50:29');

DROP TABLE IF EXISTS `xuesheng`;
CREATE TABLE IF NOT EXISTS `xuesheng` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xueyuan` varchar(200) DEFAULT NULL COMMENT '学院',
  `banji` varchar(200) DEFAULT NULL COMMENT '班级',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='学生';

DELETE FROM `xuesheng`;
INSERT INTO `xuesheng` (`id`, `addtime`, `xuehao`, `mima`, `xueshengxingming`, `xingbie`, `touxiang`, `xueyuan`, `banji`, `shouji`) VALUES
	(11, '2021-05-08 01:50:28', '学生1', '123456', '学生姓名1', '男', 'http://localhost:8080/springbootnp4n3/upload/xuesheng_touxiang1.jpg', '学院1', '班级1', '13823888881'),
	(12, '2021-05-08 01:50:28', '学生2', '123456', '学生姓名2', '男', 'http://localhost:8080/springbootnp4n3/upload/xuesheng_touxiang2.jpg', '学院2', '班级2', '13823888882'),
	(13, '2021-05-08 01:50:28', '学生3', '123456', '学生姓名3', '男', 'http://localhost:8080/springbootnp4n3/upload/xuesheng_touxiang3.jpg', '学院3', '班级3', '13823888883'),
	(14, '2021-05-08 01:50:28', '学生4', '123456', '学生姓名4', '男', 'http://localhost:8080/springbootnp4n3/upload/xuesheng_touxiang4.jpg', '学院4', '班级4', '13823888884'),
	(15, '2021-05-08 01:50:28', '学生5', '123456', '学生姓名5', '男', 'http://localhost:8080/springbootnp4n3/upload/xuesheng_touxiang5.jpg', '学院5', '班级5', '13823888885'),
	(16, '2021-05-08 01:50:28', '学生6', '123456', '学生姓名6', '男', 'http://localhost:8080/springbootnp4n3/upload/xuesheng_touxiang6.jpg', '学院6', '班级6', '13823888886');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
