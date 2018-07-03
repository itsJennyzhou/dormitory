/*
Navicat MySQL Data Transfer

Source Server         : org
Source Server Version : 50162
Source Host           : localhost:3306
Source Database       : test

Target Server Type    : MYSQL
Target Server Version : 50162
File Encoding         : 65001

Date: 2016-04-13 15:54:48
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `account`
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `pwd` varchar(255) DEFAULT NULL,
  `realName` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('1', 'lily', '1234', '张梅', '13981111111', '湖北文理学院');

-- ----------------------------
-- Table structure for `ding`
-- ----------------------------
DROP TABLE IF EXISTS `ding`;
CREATE TABLE `ding` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `hid` int(11) DEFAULT NULL,
  `lastdate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hid` (`hid`),
  CONSTRAINT `ding_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user_info` (`id`),
  CONSTRAINT `ding_ibfk_2` FOREIGN KEY (`hid`) REFERENCES `house_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of ding
-- ----------------------------

-- ----------------------------
-- Table structure for `foodinfo`
-- ----------------------------
DROP TABLE IF EXISTS `foodinfo`;
CREATE TABLE `foodinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foodName` varchar(255) DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `foodPrice` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `foodImage` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of foodinfo
-- ----------------------------
INSERT INTO `foodinfo` VALUES ('1', '土豆丝盖饭', '好好吃哦', '7', '美味可口！家常小菜，既含有丰富的碳水化合物又含有丰富的维生素经济而又实惠！家常小菜，既含有丰富的碳水化合物又含有丰富的维生素，美味可口！家常小菜，既含有丰富的碳水化合物又含有丰富的维生素，而且又经济实惠哦！', '500008.jpg');
INSERT INTO `foodinfo` VALUES ('2', '青菜肉丝粥', '原料：青菜、肉丝口味清淡，清香可口！', '4', '青菜肉丝粥，清淡小粥，一份温馨！', '500022.jpg');
INSERT INTO `foodinfo` VALUES ('3', '刀削面', '原料：青菜、猪肉、海带、骨头汤口味：微辣、中辣、超辣。', '6', '左手托面，右手持刀，从上往下，往汤锅里削。”这就是刀削面，简单美味，还含有丰富的维生素B哦！', '500023.jpg');
INSERT INTO `foodinfo` VALUES ('4', '拉面', '配料：牛肉、骨头汤口味：微辣、中辣、超辣。', '6', '营养丰富、风味独特、经济实惠、清淡可口、方便快捷！', '500024.jpg');
INSERT INTO `foodinfo` VALUES ('5', '皮蛋瘦肉粥', '美味可口！', '5', '皮蛋瘦肉粥，鲜美爽口的小粥！', '500047.jpg');
INSERT INTO `foodinfo` VALUES ('6', '西红柿打卤面', '配料：西红柿、鸡蛋口味：清淡。', '7', '口味独特，经济实惠，简单营养。', '500025.jpg');
INSERT INTO `foodinfo` VALUES ('7', '木须肉盖饭', '原料：木耳、猪肉、青瓜、鸡蛋。口味清淡，美味营养。', '8', '这是一款不错的营养配餐，营养价值极高，而且又美味哦！强烈推荐！', '500033.jpg');
INSERT INTO `foodinfo` VALUES ('8', '清炒时蔬', '时令绿色蔬菜！', '5', '绿色蔬菜含有丰富的膳食纤维，每天食少量的蔬菜对身体益处多多！', '500046.jpg');
INSERT INTO `foodinfo` VALUES ('9', '特色炒饭', '原料：蘑菇、鸡蛋、胡萝卜、青椒、绿色蔬菜。口感极好！', '7', '这是一款适合不同口味的美食，口感极好！', '500034.jpg');
INSERT INTO `foodinfo` VALUES ('10', '米粉汤', '原料：米粉、骨头汤、豆腐、肉丸汤味鲜美，口感极佳！', '8', '汤味鲜香，美味营养！', '500035.jpg');
INSERT INTO `foodinfo` VALUES ('11', '炸酱面', '京味小吃！', '8', '老北京炸酱面，正宗京味小吃！', '500045.jpg');
INSERT INTO `foodinfo` VALUES ('12', '重庆小面', '正宗重庆街头特色小面！', '5', '汤味醇厚，麻辣可口！', '500036.jpg');
INSERT INTO `foodinfo` VALUES ('13', '肉丝茄子', '美味可口！', '10', '风味家常小炒，口味极佳！', '500044.jpg');
INSERT INTO `foodinfo` VALUES ('14', '创意炒饭', '原料：鸡蛋、胡萝卜、青豆。。。口味适中，非常爽口！', '7', '这是一款极具家庭味的炒饭，更多的是制作人的心思，让你有种温馨的感觉！', '500038.jpg');
INSERT INTO `foodinfo` VALUES ('15', '西红柿炒鸡蛋', '经典搭配！', '6', '金黄的鸡蛋再配以新鲜的西红柿，经典的搭配，也绝对美味！', '500043.jpg');
INSERT INTO `foodinfo` VALUES ('16', '酸豆角炒肉末盖饭', '开胃可口！', '8', '家常风味，是道非常开胃的美食！', '500041.jpg');
INSERT INTO `foodinfo` VALUES ('17', '香油抄手', '原料：鸡蛋、胡萝卜、青豆。。。口味适中，非常爽口！', '4', '正宗川味小吃，陷大皮薄，再配以鲜美的汤料，是一道极佳的小吃！', '500042.jpg');
INSERT INTO `foodinfo` VALUES ('18', null, '22', '22', '2222', 'Lighthouse.jpg');
INSERT INTO `foodinfo` VALUES ('20', '牛肉面', '避风港', '12', '法国男方女方', 'Jellyfish.jpg');

-- ----------------------------
-- Table structure for `house_info`
-- ----------------------------
DROP TABLE IF EXISTS `house_info`;
CREATE TABLE `house_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `homeName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `circle` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `locationName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `rentType` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `room` int(11) DEFAULT NULL,
  `lroom` int(11) DEFAULT NULL,
  `broom` int(11) DEFAULT NULL,
  `sqm` int(11) DEFAULT NULL,
  `fixture` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `direction` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `floor` int(11) DEFAULT NULL,
  `floorFlag` int(11) DEFAULT NULL,
  `sfloor` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `priceFlag` int(11) DEFAULT NULL,
  `moneyType` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `facility` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `special` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `img` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `curdate` datetime DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 DEFAULT '未预定',
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  CONSTRAINT `house_info_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of house_info
-- ----------------------------
INSERT INTO `house_info` VALUES ('1', '住宅', '紫贞小区', '襄城区', '鼓楼', ' 鼓楼巷48号', '整租', '2', '1', '2', '100', '豪华装修', '南', '3', '3', '23', '10000', '8', '押一付三', '襄城区鼓楼紫贞小区 100平米豪华装修2室1厅2卫', '房间宽敞，小区环境不错,冰箱洗衣机空调都有,整套出租', '床宽带冰箱洗衣机空调', '南北通透电梯房家电齐全精装修', 'aaa.jpg', '2016-04-09 10:32:55', '未预定', '1');

-- ----------------------------
-- Table structure for `notice`
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` varchar(255) DEFAULT NULL,
  `curDate` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------

-- ----------------------------
-- Table structure for `orderdatil`
-- ----------------------------
DROP TABLE IF EXISTS `orderdatil`;
CREATE TABLE `orderdatil` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foodname` varchar(255) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `orderno` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderdatil
-- ----------------------------
INSERT INTO `orderdatil` VALUES ('1', '土豆丝盖饭', '7', '24', 'DZ201602261728200617');
INSERT INTO `orderdatil` VALUES ('2', '青菜肉丝粥', '4', '24', 'DZ201602261728200617');
INSERT INTO `orderdatil` VALUES ('3', '拉面', '6', '24', 'DZ201602261728200617');
INSERT INTO `orderdatil` VALUES ('4', '土豆丝盖饭', '7', '18', 'DZ201602272227020398');
INSERT INTO `orderdatil` VALUES ('5', '青菜肉丝粥', '4', '18', 'DZ201602272227020398');
INSERT INTO `orderdatil` VALUES ('6', '土豆丝盖饭', '7', '22', 'DZ201602282141050129');
INSERT INTO `orderdatil` VALUES ('7', '青菜肉丝粥', '4', '22', 'DZ201602282141050129');
INSERT INTO `orderdatil` VALUES ('8', '刀削面', '6', '22', 'DZ201602282141050129');
INSERT INTO `orderdatil` VALUES ('9', '皮蛋瘦肉粥', '5', '22', 'DZ201602282141050129');
INSERT INTO `orderdatil` VALUES ('10', '土豆丝盖饭', '7', '15', 'DZ201602291622210801');
INSERT INTO `orderdatil` VALUES ('11', '青菜肉丝粥', '4', '15', 'DZ201602291622210801');
INSERT INTO `orderdatil` VALUES ('12', '土豆丝盖饭', '7', '18', 'DZ201602291644530205');
INSERT INTO `orderdatil` VALUES ('13', '青菜肉丝粥', '4', '18', 'DZ201602291644530205');
INSERT INTO `orderdatil` VALUES ('14', '土豆丝盖饭', '7', '14', 'DZ201603111347290582');
INSERT INTO `orderdatil` VALUES ('15', '土豆丝盖饭', '7', '18', 'DZ201603211553560794');
INSERT INTO `orderdatil` VALUES ('16', '青菜肉丝粥', '4', '18', 'DZ201603211553560794');
INSERT INTO `orderdatil` VALUES ('17', '土豆丝盖饭', '7', '7', 'DZ201603221059120416');

-- ----------------------------
-- Table structure for `orderinfo`
-- ----------------------------
DROP TABLE IF EXISTS `orderinfo`;
CREATE TABLE `orderinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderno` varchar(255) DEFAULT NULL,
  `money` int(11) DEFAULT NULL,
  `orderdate` datetime DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `accountid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accountid` (`accountid`),
  CONSTRAINT `orderinfo_ibfk_1` FOREIGN KEY (`accountid`) REFERENCES `account` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of orderinfo
-- ----------------------------
INSERT INTO `orderinfo` VALUES ('1', 'DZ201602260949190415', '18', '2016-02-26 00:00:00', '已完成', '1');
INSERT INTO `orderinfo` VALUES ('4', 'DZ201602261726150633', '17', '2016-02-26 00:00:00', '已完成', '1');
INSERT INTO `orderinfo` VALUES ('5', 'DZ201602261728200617', '24', '2016-02-26 00:00:00', '已完成', '1');
INSERT INTO `orderinfo` VALUES ('6', 'DZ201602272227020398', '18', '2016-02-27 00:00:00', '已完成', '1');
INSERT INTO `orderinfo` VALUES ('7', 'DZ201602282141050129', '22', '2016-02-28 00:00:00', '已完成', '1');
INSERT INTO `orderinfo` VALUES ('8', 'DZ201602291622210801', '15', '2016-02-29 00:00:00', '已完成', '1');
INSERT INTO `orderinfo` VALUES ('9', 'DZ201602291644530205', '18', '2016-02-29 00:00:00', '已完成', '1');
INSERT INTO `orderinfo` VALUES ('10', 'DZ201603111347290582', '14', '2016-03-11 00:00:00', '已完成', '1');
INSERT INTO `orderinfo` VALUES ('11', 'DZ201603221059120416', '7', '2016-03-22 00:00:00', '未审核', '1');

-- ----------------------------
-- Table structure for `reserve_info`
-- ----------------------------
DROP TABLE IF EXISTS `reserve_info`;
CREATE TABLE `reserve_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `hid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`),
  KEY `hid` (`hid`),
  CONSTRAINT `reserve_info_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `user_info` (`id`),
  CONSTRAINT `reserve_info_ibfk_2` FOREIGN KEY (`hid`) REFERENCES `house_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of reserve_info
-- ----------------------------
INSERT INTO `reserve_info` VALUES ('1', '1', '1');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `pwd` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `realName` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `role` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', 'admin', '1234', '张三', '13177210902', '管理员');
INSERT INTO `user_info` VALUES ('3', 'zhangsan', '1234', '王五', '13122109022', '用户');
INSERT INTO `user_info` VALUES ('4', 'shijunlong', '1234', '石俊龙', '13177210902', '用户');
