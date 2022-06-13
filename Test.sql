/*
Navicat MySQL Data Transfer

Source Server         : localhostTest
Source Server Version : 50738
Source Host           : localhost:3306
Source Database       : Test

Target Server Type    : MYSQL
Target Server Version : 50738
File Encoding         : 65001

Date: 2022-06-13 10:20:24
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for nacid_card
-- ----------------------------
DROP TABLE IF EXISTS `nacid_card`;
CREATE TABLE `nacid_card` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `ucid` varchar(25) NOT NULL COMMENT '用户身份证号',
  `region` varchar(255) NOT NULL,
  `gdata` varchar(255) CHARACTER SET utf8mb4 NOT NULL COMMENT '行程卡时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='通信大数据行程卡\r\n';

-- ----------------------------
-- Records of nacid_card
-- ----------------------------
INSERT INTO `nacid_card` VALUES ('00000000001', '110108193701259863', '台湾省成都市', '2022-06-01 15:51:17');
INSERT INTO `nacid_card` VALUES ('00000000002', '450221193508114456', '新疆维吾尔自治区潜江市', '2022-06-02 07:48:43');
INSERT INTO `nacid_card` VALUES ('00000000003', '530126193305010709', '浙江省宇县', '2022-06-01 18:19:50');
INSERT INTO `nacid_card` VALUES ('00000000004', '371201199007098788', '山西省南昌县', '2022-06-01 09:54:54');
INSERT INTO `nacid_card` VALUES ('00000000005', '331022197611139851', '山东省兰英市', '2022-06-01 12:40:01');
INSERT INTO `nacid_card` VALUES ('00000000006', '120223196711293867', '广东省鹏县', '2022-06-02 00:09:35');
INSERT INTO `nacid_card` VALUES ('00000000007', '522631199404173445', '贵州省宁德市', '2022-06-02 03:20:42');
INSERT INTO `nacid_card` VALUES ('00000000008', '611000196901277798', '澳门特别行政区勇县', '2022-06-01 10:03:31');
INSERT INTO `nacid_card` VALUES ('00000000009', '451002198704246660', '福建省鑫县', '2022-06-01 04:27:38');
INSERT INTO `nacid_card` VALUES ('00000000010', '360622196404045281', '香港特别行政区六安县', '2022-06-01 01:43:22');
INSERT INTO `nacid_card` VALUES ('00000000011', '520621193303253217', '新疆维吾尔自治区哈尔滨县', '2022-06-02 11:57:51');
INSERT INTO `nacid_card` VALUES ('00000000012', '513329198109228104', '辽宁省拉萨县', '2022-06-01 09:08:11');
INSERT INTO `nacid_card` VALUES ('00000000013', '15010419520321118X', '新疆维吾尔自治区南宁市', '2022-06-02 16:19:02');
INSERT INTO `nacid_card` VALUES ('00000000014', '430426193503021807', '湖南省天津县', '2022-06-01 10:50:43');
INSERT INTO `nacid_card` VALUES ('00000000015', '211201196602013218', '青海省雷市', '2022-06-01 00:49:21');
INSERT INTO `nacid_card` VALUES ('00000000016', '370503196507200528', '山西省岩县', '2022-06-01 20:47:37');
INSERT INTO `nacid_card` VALUES ('00000000017', '450400196302112538', '辽宁省晨县', '2022-06-02 12:10:18');
INSERT INTO `nacid_card` VALUES ('00000000018', '520323198809239729', '甘肃省武汉县', '2022-06-02 12:02:26');
INSERT INTO `nacid_card` VALUES ('00000000019', '35000019620201146X', '山西省东莞县', '2022-06-02 03:50:40');
INSERT INTO `nacid_card` VALUES ('00000000020', '340523193912011241', '香港特别行政区澳门县', '2022-06-01 19:14:25');
INSERT INTO `nacid_card` VALUES ('00000000021', '51340019630426776X', '甘肃省淮安市', '2022-06-01 09:29:49');
INSERT INTO `nacid_card` VALUES ('00000000022', '230126194607234349', '山东省东市', '2022-06-01 15:57:44');
INSERT INTO `nacid_card` VALUES ('00000000023', '52263019640712194X', '贵州省东市', '2022-06-01 16:27:58');
INSERT INTO `nacid_card` VALUES ('00000000024', '350625196806179407', '内蒙古自治区建军县', '2022-06-02 05:34:23');
INSERT INTO `nacid_card` VALUES ('00000000025', '42068419651207961X', '吉林省西安县', '2022-06-01 16:28:34');
INSERT INTO `nacid_card` VALUES ('00000000026', '21040119610701239X', '浙江省洋县', '2022-06-01 18:51:47');
INSERT INTO `nacid_card` VALUES ('00000000027', '411327196609224524', '广东省杰县', '2022-06-02 04:11:02');
INSERT INTO `nacid_card` VALUES ('00000000028', '653225200005313777', '辽宁省嘉禾县', '2022-06-02 02:09:00');
INSERT INTO `nacid_card` VALUES ('00000000029', '410223198501294050', '青海省金凤县', '2022-06-01 00:14:32');
INSERT INTO `nacid_card` VALUES ('00000000030', '140701199701130702', '山东省杰县', '2022-06-02 05:59:19');
INSERT INTO `nacid_card` VALUES ('00000000031', '652200194004239580', '安徽省哈尔滨县', '2022-06-02 11:16:03');
INSERT INTO `nacid_card` VALUES ('00000000032', '430100199102011090', '湖南省呼和浩特市', '2022-06-02 11:53:04');
INSERT INTO `nacid_card` VALUES ('00000000033', '231083193712090648', '黑龙江省金凤市', '2022-06-01 15:56:11');
INSERT INTO `nacid_card` VALUES ('00000000034', '42280019450529115X', '河北省佛山市', '2022-06-01 02:49:26');
INSERT INTO `nacid_card` VALUES ('00000000035', '450101197509160574', '贵州省刚县', '2022-06-02 05:57:01');
INSERT INTO `nacid_card` VALUES ('00000000036', '610525195106048004', '天津市淑珍市', '2022-06-02 05:26:53');
INSERT INTO `nacid_card` VALUES ('00000000037', '621200199905126731', '贵州省晶市', '2022-06-01 08:40:55');
INSERT INTO `nacid_card` VALUES ('00000000038', '152900194211014085', '上海市丽娟市', '2022-06-02 09:28:12');
INSERT INTO `nacid_card` VALUES ('00000000039', '610828194403116465', '河北省宁德市', '2022-06-01 11:58:54');
INSERT INTO `nacid_card` VALUES ('00000000040', '150207194710229464', '西藏自治区俊县', '2022-06-01 03:45:28');
INSERT INTO `nacid_card` VALUES ('00000000041', '530700196711192758', '云南省秀华县', '2022-06-02 06:14:10');
INSERT INTO `nacid_card` VALUES ('00000000042', '542226198208315502', '贵州省西宁市', '2022-06-02 00:24:12');
INSERT INTO `nacid_card` VALUES ('00000000043', '350926196804159448', '吉林省长沙市', '2022-06-01 00:29:32');
INSERT INTO `nacid_card` VALUES ('00000000044', '620923195609119565', '广西壮族自治区瑞市', '2022-06-01 05:38:10');
INSERT INTO `nacid_card` VALUES ('00000000045', '511000198903246712', '重庆市玉英县', '2022-06-01 05:40:31');
INSERT INTO `nacid_card` VALUES ('00000000046', '451302193505048817', '福建省杭州市', '2022-06-01 05:49:26');
INSERT INTO `nacid_card` VALUES ('00000000047', '411701196405075705', '台湾省超市', '2022-06-02 03:07:35');
INSERT INTO `nacid_card` VALUES ('00000000048', '341024197409228337', '云南省岩县', '2022-06-01 00:07:05');
INSERT INTO `nacid_card` VALUES ('00000000049', '620600199308154946', '广东省西安县', '2022-06-02 10:16:52');
INSERT INTO `nacid_card` VALUES ('00000000050', '361123197104302148', '山东省沈阳县', '2022-06-02 06:09:23');

-- ----------------------------
-- Table structure for nacid_code
-- ----------------------------
DROP TABLE IF EXISTS `nacid_code`;
CREATE TABLE `nacid_code` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `ucid` varchar(25) NOT NULL COMMENT '用户身份证号',
  `codestyle` varchar(255) NOT NULL COMMENT '1表示健康码红色 2表示健康码黄色 3表示健康码绿色',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='福建健康码';

-- ----------------------------
-- Records of nacid_code
-- ----------------------------
INSERT INTO `nacid_code` VALUES ('00000000001', '410802199401094778', '1');
INSERT INTO `nacid_code` VALUES ('00000000002', '540230196306172377', '2');
INSERT INTO `nacid_code` VALUES ('00000000003', '530126193305010709', '3');
INSERT INTO `nacid_code` VALUES ('00000000004', '371201199007098788', '3');
INSERT INTO `nacid_code` VALUES ('00000000005', '331022197611139851', '3');
INSERT INTO `nacid_code` VALUES ('00000000006', '120223196711293867', '3');
INSERT INTO `nacid_code` VALUES ('00000000007', '522631199404173445', '2');
INSERT INTO `nacid_code` VALUES ('00000000008', '611000196901277798', '3');
INSERT INTO `nacid_code` VALUES ('00000000009', '451002198704246660', '3');
INSERT INTO `nacid_code` VALUES ('00000000010', '360622196404045281', '1');
INSERT INTO `nacid_code` VALUES ('00000000011', '520621193303253217', '2');
INSERT INTO `nacid_code` VALUES ('00000000012', '513329198109228104', '3');
INSERT INTO `nacid_code` VALUES ('00000000013', '15010419520321118X', '2');
INSERT INTO `nacid_code` VALUES ('00000000014', '430426193503021807', '3');
INSERT INTO `nacid_code` VALUES ('00000000015', '211201196602013218', '3');
INSERT INTO `nacid_code` VALUES ('00000000016', '370503196507200528', '3');
INSERT INTO `nacid_code` VALUES ('00000000017', '450400196302112538', '3');
INSERT INTO `nacid_code` VALUES ('00000000018', '520323198809239729', '3');
INSERT INTO `nacid_code` VALUES ('00000000019', '35000019620201146X', '3');
INSERT INTO `nacid_code` VALUES ('00000000020', '340523193912011241', '3');
INSERT INTO `nacid_code` VALUES ('00000000021', '51340019630426776X', '3');
INSERT INTO `nacid_code` VALUES ('00000000022', '230126194607234349', '2');
INSERT INTO `nacid_code` VALUES ('00000000023', '52263019640712194X', '3');
INSERT INTO `nacid_code` VALUES ('00000000024', '350625196806179407', '3');
INSERT INTO `nacid_code` VALUES ('00000000025', '42068419651207961X', '3');
INSERT INTO `nacid_code` VALUES ('00000000026', '21040119610701239X', '3');
INSERT INTO `nacid_code` VALUES ('00000000027', '411327196609224524', '2');
INSERT INTO `nacid_code` VALUES ('00000000028', '653225200005313777', '3');
INSERT INTO `nacid_code` VALUES ('00000000029', '410223198501294050', '1');
INSERT INTO `nacid_code` VALUES ('00000000030', '140701199701130702', '2');
INSERT INTO `nacid_code` VALUES ('00000000031', '652200194004239580', '1');
INSERT INTO `nacid_code` VALUES ('00000000032', '430100199102011090', '1');
INSERT INTO `nacid_code` VALUES ('00000000033', '231083193712090648', '1');
INSERT INTO `nacid_code` VALUES ('00000000034', '42280019450529115X', '1');
INSERT INTO `nacid_code` VALUES ('00000000035', '450101197509160574', '1');
INSERT INTO `nacid_code` VALUES ('00000000036', '610525195106048004', '1');
INSERT INTO `nacid_code` VALUES ('00000000037', '621200199905126731', '3');
INSERT INTO `nacid_code` VALUES ('00000000038', '152900194211014085', '2');
INSERT INTO `nacid_code` VALUES ('00000000039', '610828194403116465', '1');
INSERT INTO `nacid_code` VALUES ('00000000040', '150207194710229464', '3');
INSERT INTO `nacid_code` VALUES ('00000000041', '530700196711192758', '2');
INSERT INTO `nacid_code` VALUES ('00000000042', '542226198208315502', '1');
INSERT INTO `nacid_code` VALUES ('00000000043', '350926196804159448', '3');
INSERT INTO `nacid_code` VALUES ('00000000044', '620923195609119565', '3');
INSERT INTO `nacid_code` VALUES ('00000000045', '511000198903246712', '3');
INSERT INTO `nacid_code` VALUES ('00000000046', '451302193505048817', '3');
INSERT INTO `nacid_code` VALUES ('00000000047', '411701196405075705', '3');
INSERT INTO `nacid_code` VALUES ('00000000048', '341024197409228337', '3');
INSERT INTO `nacid_code` VALUES ('00000000049', '620600199308154946', '3');
INSERT INTO `nacid_code` VALUES ('00000000050', '361123197104302148', '3');

-- ----------------------------
-- Table structure for nacid_codestyle
-- ----------------------------
DROP TABLE IF EXISTS `nacid_codestyle`;
CREATE TABLE `nacid_codestyle` (
  `id` int(11) NOT NULL,
  `style` varchar(10) COLLATE utf8_bin NOT NULL COMMENT '1(红码)2(黄码)3(绿码)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ----------------------------
-- Records of nacid_codestyle
-- ----------------------------
INSERT INTO `nacid_codestyle` VALUES ('1', '1');
INSERT INTO `nacid_codestyle` VALUES ('2', '2');
INSERT INTO `nacid_codestyle` VALUES ('3', '3');

-- ----------------------------
-- Table structure for nacid_darea
-- ----------------------------
DROP TABLE IF EXISTS `nacid_darea`;
CREATE TABLE `nacid_darea` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `region` varchar(255) DEFAULT NULL COMMENT '危险地区名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='危险地区';

-- ----------------------------
-- Records of nacid_darea
-- ----------------------------
INSERT INTO `nacid_darea` VALUES ('1', '上海市桂兰县');
INSERT INTO `nacid_darea` VALUES ('2', '安徽省红霞市');
INSERT INTO `nacid_darea` VALUES ('3', '山东省惠州市');
INSERT INTO `nacid_darea` VALUES ('4', '云南省秀芳市海陵谭街');
INSERT INTO `nacid_darea` VALUES ('5', '北京市杭州市金平杨路');
INSERT INTO `nacid_darea` VALUES ('6', '澳门特别行政区巢湖市龙潭沈阳街B座 ');

-- ----------------------------
-- Table structure for nacid_hotline
-- ----------------------------
DROP TABLE IF EXISTS `nacid_hotline`;
CREATE TABLE `nacid_hotline` (
  `id` int(11) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `region` varchar(255) DEFAULT NULL COMMENT ' 热线地址',
  `tel` varchar(255) DEFAULT NULL COMMENT '热线电话',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='群众质询热线';

-- ----------------------------
-- Records of nacid_hotline
-- ----------------------------
INSERT INTO `nacid_hotline` VALUES ('00000000001', '安徽省秀芳县清河柳州路x座 586833', '18547233678');
INSERT INTO `nacid_hotline` VALUES ('00000000002', '湖南省桂芳县清浦宜都路x座 770837', '13416780770');
INSERT INTO `nacid_hotline` VALUES ('00000000003', '浙江省济南市海陵林街N座 117564', '18678105354');
INSERT INTO `nacid_hotline` VALUES ('00000000004', '四川省红霞县安次杨路I座 745349', '18596439434');
INSERT INTO `nacid_hotline` VALUES ('00000000005', '青海省荆门县大东刘路j座 887733', '18558564049');
INSERT INTO `nacid_hotline` VALUES ('00000000006', '台湾省哈尔滨县沈北新大冶街n座 718538', '13117289912');
INSERT INTO `nacid_hotline` VALUES ('00000000007', '海南省沈阳县璧山余街B座 195121', '18933712513');
INSERT INTO `nacid_hotline` VALUES ('00000000008', '海南省淑兰市南长雷路V座 452255', '18821024778');
INSERT INTO `nacid_hotline` VALUES ('00000000009', '天津市斌市东城马鞍山街J座 353180', '14574555619');
INSERT INTO `nacid_hotline` VALUES ('00000000010', '台湾省婷市西峰佛山街L座 437095', '14517802802');
INSERT INTO `nacid_hotline` VALUES ('00000000011', '安徽省建平市闵行陶路j座 233600', '15167765232');
INSERT INTO `nacid_hotline` VALUES ('00000000012', '重庆市丽华市永川大冶街c座 318916', '13253192599');
INSERT INTO `nacid_hotline` VALUES ('00000000013', '河北省杭州市华龙通辽街q座 426900', '13947782919');
INSERT INTO `nacid_hotline` VALUES ('00000000014', '四川省沈阳市锡山周街q座 292553', '13493449607');
INSERT INTO `nacid_hotline` VALUES ('00000000015', '广东省六安市长寿柳州路W座 297044', '14561998225');
INSERT INTO `nacid_hotline` VALUES ('00000000016', '广东省郑州县东丽施街o座 382696', '15655555943');
INSERT INTO `nacid_hotline` VALUES ('00000000017', '黑龙江省凤英市山亭杨路f座 589715', '18075210232');
INSERT INTO `nacid_hotline` VALUES ('00000000018', '青海省沈阳市东丽巢湖路Q座 921279', '13232424010');
INSERT INTO `nacid_hotline` VALUES ('00000000019', '新疆维吾尔自治区澳门县滨城孙路z座 499842', '15889113244');
INSERT INTO `nacid_hotline` VALUES ('00000000020', '山东省帆市璧山天津街z座 185435', '13155269908');
INSERT INTO `nacid_hotline` VALUES ('00000000021', '海南省超市永川蔡街W座 800062', '13346872707');
INSERT INTO `nacid_hotline` VALUES ('00000000022', '四川省沈阳县花溪张街x座 237980', '15689693547');
INSERT INTO `nacid_hotline` VALUES ('00000000023', '云南省辽阳县蓟州南昌路r座 905960', '18129206599');
INSERT INTO `nacid_hotline` VALUES ('00000000024', '四川省琴县沈北新娄街s座 245498', '15248266314');
INSERT INTO `nacid_hotline` VALUES ('00000000025', '西藏自治区梧州县双滦曹街B座 874796', '15719183047');
INSERT INTO `nacid_hotline` VALUES ('00000000026', '陕西省上海市双滦王路t座 111106', '13686861503');
INSERT INTO `nacid_hotline` VALUES ('00000000027', '贵州省秀梅市兴山林街I座 520918', '13370105140');
INSERT INTO `nacid_hotline` VALUES ('00000000028', '上海市武汉县白云张家港路a座 669314', '18896285645');
INSERT INTO `nacid_hotline` VALUES ('00000000029', '甘肃省丽丽市南湖蒋路v座 705653', '18806721040');
INSERT INTO `nacid_hotline` VALUES ('00000000030', '澳门特别行政区鹏市永川西宁路q座 429586', '14579760882');
INSERT INTO `nacid_hotline` VALUES ('00000000031', '安徽省梧州市海陵关岭路l座 542747', '13571175557');
INSERT INTO `nacid_hotline` VALUES ('00000000032', '西藏自治区凤兰县淄川白街d座 413030', '18114273992');
INSERT INTO `nacid_hotline` VALUES ('00000000033', '内蒙古自治区海燕市上街刘街p座 688215', '15652710792');
INSERT INTO `nacid_hotline` VALUES ('00000000034', '四川省大冶县蓟州梁路j座 361914', '13026934633');
INSERT INTO `nacid_hotline` VALUES ('00000000035', '广东省兰州县璧山齐齐哈尔路P座 999645', '13767969168');
INSERT INTO `nacid_hotline` VALUES ('00000000036', '海南省西宁县崇文欧街I座 115729', '15163667394');
INSERT INTO `nacid_hotline` VALUES ('00000000037', '北京市石家庄县金平朱街n座 784195', '18773930662');
INSERT INTO `nacid_hotline` VALUES ('00000000038', '西藏自治区磊市花溪上海路J座 280129', '15603456942');
INSERT INTO `nacid_hotline` VALUES ('00000000039', '贵州省艳市清河贾路c座 692845', '18972815751');
INSERT INTO `nacid_hotline` VALUES ('00000000040', '浙江省峰县沈河曹街y座 859367', '15330013589');
INSERT INTO `nacid_hotline` VALUES ('00000000041', '澳门特别行政区南京市华龙兴安盟路J座 780243', '18178833112');
INSERT INTO `nacid_hotline` VALUES ('00000000042', '湖北省兰州市门头沟汕尾街t座 226858', '13157380958');
INSERT INTO `nacid_hotline` VALUES ('00000000043', '青海省玉兰县门头沟徐路p座 520337', '18805188495');
INSERT INTO `nacid_hotline` VALUES ('00000000044', '青海省永安市城北胡路k座 643626', '15671842939');
INSERT INTO `nacid_hotline` VALUES ('00000000045', '河北省凯县清浦叶街z座 899216', '13504006575');
INSERT INTO `nacid_hotline` VALUES ('00000000046', '吉林省武汉市清浦王街n座 123255', '18229107349');
INSERT INTO `nacid_hotline` VALUES ('00000000047', '青海省淑珍县清城北京路w座 489060', '15910677794');
INSERT INTO `nacid_hotline` VALUES ('00000000048', '新疆维吾尔自治区重庆县清城赵街e座 747591', '18098735321');
INSERT INTO `nacid_hotline` VALUES ('00000000049', '四川省长沙市大东上海街t座 704326', '15915605695');
INSERT INTO `nacid_hotline` VALUES ('00000000050', '江苏省欣县牧野香港路N座 822343', '18289879614');

-- ----------------------------
-- Table structure for nacid_user
-- ----------------------------
DROP TABLE IF EXISTS `nacid_user`;
CREATE TABLE `nacid_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL COMMENT '用户姓名',
  `age` int(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `ucid` varchar(25) NOT NULL COMMENT '用户身份证号',
  `tel` varchar(20) NOT NULL COMMENT '用户联系电话',
  `address` varchar(30) NOT NULL COMMENT '用户现住址',
  `isvaccination` varchar(10) NOT NULL COMMENT '接种疫苗情况',
  `nacidCode` varchar(10) DEFAULT NULL COMMENT '健康码',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='用户信息';

-- ----------------------------
-- Records of nacid_user
-- ----------------------------
INSERT INTO `nacid_user` VALUES ('1', '温东', '23', '男', '410802199401094778', '18987836279', '北京市杭州市金平杨路C座 ', '3', '1');
INSERT INTO `nacid_user` VALUES ('2', '史磊', '32', '男', '540230196306172377', '15645533450', '湖北省呼和浩特市崇文沈阳街Y座 ', '3', '2');
INSERT INTO `nacid_user` VALUES ('3', '邓斌', '34', '男', '530126193305010709', '18624141055', '陕西省惠州市金平合肥街a座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('4', '张红霞', '25', '女', '371201199007098788', '13563485469', '天津市张家港县大兴侯街J座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('5', '刘畅', '28', '男', '331022197611139851', '13877548094', '甘肃省淮安县西峰崔街Q座 ', '1', '3');
INSERT INTO `nacid_user` VALUES ('6', '沈春梅', '39', '女', '120223196711293867', '13392786659', '山东省红霞县秀英佛山路D座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('7', '晏建国', '26', '男', '522631199404173445', '13041859458', '上海市哈尔滨市牧野陈路u座 ', '2', '2');
INSERT INTO `nacid_user` VALUES ('8', '李辉', '22', '男', '611000196901277798', '18584652914', '河南省婷婷县丰都东莞路Y座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('9', '吴梅', '23', '女', '451002198704246660', '14707607685', '江苏省淮安市徐汇王路p座 ', '1', '3');
INSERT INTO `nacid_user` VALUES ('10', '李帅', '45', '男', '360622196404045281', '18930684120', '澳门特别行政区巢湖市龙潭沈阳街B座 ', '1', '1');
INSERT INTO `nacid_user` VALUES ('11', '周兵', '34', '男', '520621193303253217', '15520321810', '江苏省马鞍山市浔阳王街V座 ', '3', '2');
INSERT INTO `nacid_user` VALUES ('12', '苗平', '23', '男', '513329198109228104', '18854298178', '辽宁省波县丰都殷路c座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('13', '袁浩', '45', '男', '15010419520321118X', '18796271036', '安徽省利县东城大冶街H座 ', '3', '2');
INSERT INTO `nacid_user` VALUES ('14', '全成', '46', '男', '430426193503021807', '15574869705', '澳门特别行政区兴安盟市崇文太原街f座 ', '2', '3');
INSERT INTO `nacid_user` VALUES ('15', '袁利', '36', '男', '211201196602013218', '13395315271', '北京市惠州市永川沈路k座 ', '1', '3');
INSERT INTO `nacid_user` VALUES ('16', '李刚', '23', '男', '370503196507200528', '13867262407', '安徽省杨县崇文西宁街w座 ', '2', '3');
INSERT INTO `nacid_user` VALUES ('17', '罗艳', '27', '女', '450400196302112538', '13196016639', '新疆维吾尔自治区南宁县龙潭北镇路G座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('18', '陈丽华', '19', '女', '520323198809239729', '15885304740', '云南省秀芳市海陵谭街P座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('19', '赖桂芳', '28', '女', '35000019620201146X', '13254732486', '云南省建军市城北马街x座 ', '1', '3');
INSERT INTO `nacid_user` VALUES ('20', '宋洁', '35', '女', '340523193912011241', '13880234375', '四川省阳县山亭澳门路B座 ', '1', '3');
INSERT INTO `nacid_user` VALUES ('21', '李波', '24', '男', '51340019630426776X', '15114898851', '广东省宁德县海港漆街M座 ', '2', '3');
INSERT INTO `nacid_user` VALUES ('22', '安强', '45', '男', '230126194607234349', '15950816289', '云南省鹏市滨城天津街f座 ', '1', '2');
INSERT INTO `nacid_user` VALUES ('23', '陈兵', '45', '男', '52263019640712194X', '13312421344', '澳门特别行政区成都市滨城哈尔滨路E座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('24', '何志强', '24', '男', '350625196806179407', '15369204823', '重庆市杰县安次翁街p座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('25', '罗利', '20', '男', '42068419651207961X', '18770375282', '辽宁省淑珍市徐汇南昌街e座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('26', '莫杰', '49', '男', '21040119610701239X', '18895341495', '安徽省合山市清城张家港街r座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('27', '李婷', '20', '女', '411327196609224524', '14542189385', '陕西省六盘水县西峰六安街p座 ', '1', '2');
INSERT INTO `nacid_user` VALUES ('28', '胡萍', '47', '女', '653225200005313777', '14520027833', '澳门特别行政区成都市东丽龙街t座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('29', '陈淑英', '34', '女', '410223198501294050', '14553810882', '西藏自治区银川县翔安张街q座 ', '1', '1');
INSERT INTO `nacid_user` VALUES ('30', '吴瑜', '56', '男', '140701199701130702', '14742018799', '上海市贵阳县高坪姚街F座 ', '2', '2');
INSERT INTO `nacid_user` VALUES ('31', '谭波', '45', '男', '652200194004239580', '15684527530', '北京市志强市平山魏路G座 ', '3', '1');
INSERT INTO `nacid_user` VALUES ('32', '萧斌', '32', '男', '430100199102011090', '13010853662', '江苏省深圳市高港北镇街i座 ', '2', '1');
INSERT INTO `nacid_user` VALUES ('33', '赵想', '54', '男', '231083193712090648', '15311302369', '上海市通辽县锡山贵阳路a座 ', '3', '1');
INSERT INTO `nacid_user` VALUES ('34', '王霞', '34', '男', '42280019450529115X', '13791009465', '湖南省梧州市沈北新兰州街R座 ', '3', '1');
INSERT INTO `nacid_user` VALUES ('35', '罗建军', '23', '男', '450101197509160574', '18243610900', '重庆市兴城市和平崔街c座 ', '1', '1');
INSERT INTO `nacid_user` VALUES ('36', '刘娟', '45', '女', '610525195106048004', '15122782118', '四川省华县友好南昌路i座 ', '3', '1');
INSERT INTO `nacid_user` VALUES ('37', '李霞', '23', '女', '621200199905126731', '13982976610', '天津市俊县新城宋街U座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('38', '刘桂英', '23', '女', '152900194211014085', '13168585918', '浙江省旭县山亭陈路i座 ', '1', '2');
INSERT INTO `nacid_user` VALUES ('39', '卢莹', '45', '男', '610828194403116465', '15292647076', '辽宁省淮安县金平石家庄路H座 ', '3', '1');
INSERT INTO `nacid_user` VALUES ('40', '刘桂荣', '67', '男', '150207194710229464', '14554097844', '内蒙古自治区太原县沈河梧州街k座 ', '2', '3');
INSERT INTO `nacid_user` VALUES ('41', '张刚', '34', '男', '530700196711192758', '15293626164', '江西省欣县静安上海街N座 ', '2', '2');
INSERT INTO `nacid_user` VALUES ('42', '葛旭', '23', '男', '542226198208315502', '18017985879', '北京市洁市六枝特六安街b座 ', '2', '1');
INSERT INTO `nacid_user` VALUES ('43', '汪淑珍', '34', '女', '350926196804159448', '13515389624', '福建省桂芝市黄浦海口路c座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('44', '蒲秀云', '56', '女', '620923195609119565', '13084029120', '天津市北镇县清河李街A座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('45', '任凯', '34', '男', '511000198903246712', '13249537239', '安徽省兴城市高明欧阳路r座 ', '2', '3');
INSERT INTO `nacid_user` VALUES ('46', '赵桂芳', '28', '女 ', '451302193505048817', '18864624732', '四川省成县梁平李街l座 ', '1', '3');
INSERT INTO `nacid_user` VALUES ('47', '董建平', '49', '男', '411701196405075705', '18562838998', '河北省兴城市和平李路c座 ', '2', '3');
INSERT INTO `nacid_user` VALUES ('48', '解玉梅', '39', '女', '341024197409228337', '18799781236', '河北省邯郸市沈北新邱街W座 ', '3', '3');
INSERT INTO `nacid_user` VALUES ('49', '黄秀珍', '47', '女', '620600199308154946', '18239020187', '北京市南宁县长寿柳州路j座 ', '2', '3');
INSERT INTO `nacid_user` VALUES ('50', '杨帅', '43', '男', '361123197104302148', '13860122860', '台湾省小红县山亭乌鲁木齐街P座 ', '2', '3');

-- ----------------------------
-- Table structure for nacid_vacci
-- ----------------------------
DROP TABLE IF EXISTS `nacid_vacci`;
CREATE TABLE `nacid_vacci` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ucid` varchar(25) NOT NULL COMMENT '用户身份证号',
  `vaccinationnumber` int(11) NOT NULL COMMENT '接种第几针疫苗',
  `vaccinationtime` datetime NOT NULL COMMENT '疫苗接种时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='疫苗接种信息';

-- ----------------------------
-- Records of nacid_vacci
-- ----------------------------
INSERT INTO `nacid_vacci` VALUES ('1', '110108193701259863', '2', '2021-04-04 04:05:51');
INSERT INTO `nacid_vacci` VALUES ('2', '450221193508114456', '3', '2022-02-21 13:20:44');
INSERT INTO `nacid_vacci` VALUES ('3', '530126193305010709', '3', '2020-09-10 13:10:01');
INSERT INTO `nacid_vacci` VALUES ('4', '371201199007098788', '3', '2020-12-02 11:30:15');
INSERT INTO `nacid_vacci` VALUES ('5', '331022197611139851', '1', '2022-03-17 18:24:21');
INSERT INTO `nacid_vacci` VALUES ('6', '120223196711293867', '3', '2020-10-28 20:37:10');
INSERT INTO `nacid_vacci` VALUES ('7', '522631199404173445', '2', '2021-06-14 22:28:24');
INSERT INTO `nacid_vacci` VALUES ('8', '611000196901277798', '3', '2020-09-10 12:49:31');
INSERT INTO `nacid_vacci` VALUES ('9', '451002198704246660', '1', '2020-12-14 13:10:48');
INSERT INTO `nacid_vacci` VALUES ('10', '360622196404045281', '1', '2022-02-07 01:30:58');
INSERT INTO `nacid_vacci` VALUES ('11', '520621193303253217', '3', '2020-10-18 16:17:40');
INSERT INTO `nacid_vacci` VALUES ('12', '513329198109228104', '3', '2021-01-05 08:22:44');
INSERT INTO `nacid_vacci` VALUES ('13', '15010419520321118X', '3', '2020-08-02 11:10:58');
INSERT INTO `nacid_vacci` VALUES ('14', '430426193503021807', '2', '2021-07-27 04:22:08');
INSERT INTO `nacid_vacci` VALUES ('15', '211201196602013218', '1', '2021-07-08 00:26:52');
INSERT INTO `nacid_vacci` VALUES ('16', '370503196507200528', '2', '2021-03-30 10:04:26');
INSERT INTO `nacid_vacci` VALUES ('17', '450400196302112538', '3', '2020-09-21 19:51:59');
INSERT INTO `nacid_vacci` VALUES ('18', '520323198809239729', '3', '2021-07-06 16:35:31');
INSERT INTO `nacid_vacci` VALUES ('19', '35000019620201146X', '1', '2022-01-02 22:34:51');
INSERT INTO `nacid_vacci` VALUES ('20', '340523193912011241', '1', '2021-03-02 00:33:12');
INSERT INTO `nacid_vacci` VALUES ('21', '51340019630426776X', '2', '2022-04-21 12:55:03');
INSERT INTO `nacid_vacci` VALUES ('22', '230126194607234349', '1', '2021-03-02 13:58:00');
INSERT INTO `nacid_vacci` VALUES ('23', '52263019640712194X', '3', '2022-05-02 14:56:38');
INSERT INTO `nacid_vacci` VALUES ('24', '350625196806179407', '3', '2020-06-04 16:57:42');
INSERT INTO `nacid_vacci` VALUES ('25', '42068419651207961X', '3', '2021-11-27 08:01:06');
INSERT INTO `nacid_vacci` VALUES ('26', '21040119610701239X', '3', '2021-10-10 07:05:39');
INSERT INTO `nacid_vacci` VALUES ('27', '411327196609224524', '1', '2021-10-06 08:12:10');
INSERT INTO `nacid_vacci` VALUES ('28', '653225200005313777', '3', '2021-02-05 09:41:24');
INSERT INTO `nacid_vacci` VALUES ('29', '410223198501294050', '1', '2021-03-01 04:25:17');
INSERT INTO `nacid_vacci` VALUES ('30', '140701199701130702', '2', '2021-02-12 23:53:57');
INSERT INTO `nacid_vacci` VALUES ('31', '652200194004239580', '3', '2020-10-20 22:08:12');
INSERT INTO `nacid_vacci` VALUES ('32', '430100199102011090', '2', '2022-05-10 03:40:02');
INSERT INTO `nacid_vacci` VALUES ('33', '231083193712090648', '3', '2020-09-22 07:54:25');
INSERT INTO `nacid_vacci` VALUES ('34', '42280019450529115X', '3', '2021-07-06 21:24:50');
INSERT INTO `nacid_vacci` VALUES ('35', '450101197509160574', '1', '2021-10-22 19:03:55');
INSERT INTO `nacid_vacci` VALUES ('36', '610525195106048004', '3', '2021-01-24 08:51:21');
INSERT INTO `nacid_vacci` VALUES ('37', '621200199905126731', '3', '2020-09-29 12:30:02');
INSERT INTO `nacid_vacci` VALUES ('38', '152900194211014085', '1', '2022-01-30 10:08:23');
INSERT INTO `nacid_vacci` VALUES ('39', '610828194403116465', '3', '2021-04-16 17:40:01');
INSERT INTO `nacid_vacci` VALUES ('40', '150207194710229464', '2', '2020-07-31 04:59:16');
INSERT INTO `nacid_vacci` VALUES ('41', '530700196711192758', '2', '2020-08-09 21:48:33');
INSERT INTO `nacid_vacci` VALUES ('42', '542226198208315502', '2', '2021-11-23 07:11:06');
INSERT INTO `nacid_vacci` VALUES ('43', '350926196804159448', '3', '2022-01-15 03:15:09');
INSERT INTO `nacid_vacci` VALUES ('44', '620923195609119565', '1', '2021-11-25 02:20:14');
INSERT INTO `nacid_vacci` VALUES ('45', '511000198903246712', '2', '2020-06-16 07:54:15');
INSERT INTO `nacid_vacci` VALUES ('46', '451302193505048817', '1', '2020-12-26 11:29:21');
INSERT INTO `nacid_vacci` VALUES ('47', '411701196405075705', '2', '2020-10-22 16:51:26');
INSERT INTO `nacid_vacci` VALUES ('48', '341024197409228337', '3', '2020-11-09 19:31:28');
INSERT INTO `nacid_vacci` VALUES ('49', '620600199308154946', '2', '2021-08-12 10:22:31');
INSERT INTO `nacid_vacci` VALUES ('50', '361123197104302148', '2', '2021-08-18 07:32:02');
