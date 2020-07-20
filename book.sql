/*
SQLyog Ultimate v12.08 (64 bit)
MySQL - 5.7.24-log : Database - book
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`book` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;

USE `book`;

/*Table structure for table `admin` */

DROP TABLE IF EXISTS `admin`;

CREATE TABLE `admin` (
  `aid` int(11) NOT NULL AUTO_INCREMENT,
  `ausername` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `apassword` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `admin` */

insert  into `admin`(`aid`,`ausername`,`apassword`) values (1,'admin','admin');

/*Table structure for table `book` */

DROP TABLE IF EXISTS `book`;

CREATE TABLE `book` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `bname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `bimage` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `bauthor` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `bpress` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `bpbtime` date DEFAULT NULL,
  `bpage` int(11) DEFAULT NULL,
  `bprice` double DEFAULT NULL,
  `bcontent` varchar(700) COLLATE utf8_bin DEFAULT NULL,
  `bauthordesc` varchar(700) COLLATE utf8_bin DEFAULT NULL,
  `bdate` date DEFAULT NULL,
  `is_hot` int(11) DEFAULT NULL,
  `cid` int(11) DEFAULT NULL,
  PRIMARY KEY (`bid`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `book` */

insert  into `book`(`bid`,`bname`,`bimage`,`bauthor`,`bpress`,`bpbtime`,`bpage`,`bprice`,`bcontent`,`bauthordesc`,`bdate`,`is_hot`,`cid`) values (1,'我不喜欢这世界，我只喜欢你','book/image/00001.jpg','乔一 ','湖南少年儿童出版社','2015-05-01',208,29.8,'◆暖！萌！甜！几乎每一段都令人笑出声来，但也不乏泪点◆真实恋爱成长回忆录，最萌最暖のLove story。◆8张超萌爱心动全彩插图，随书赠送4张F君情怀卡。◆硬壳精装，全彩特种纸内页印刷。领证的前一晚我问他：“你是什么时候开始喜欢我的？”他答：“不记得了。”“可是，为什么是我呢？”“为什么不是你呢？”“我很小气，又爱吃醋。”“我也是。”“我怕自己不值得你喜欢。”“我也是。”“我没怎么谈过恋爱，不知道爱情是什么。”“我也不知道。”他温柔地握住我的手，“但我知道，一想到能和你共度余生，我就对余生充满期待。”16岁时我们共用一个课桌，胳膊与胳膊相距不过十厘米，我的余光里全是他。26岁时我从清晨醒来，侧头看到阳光落在他脸上，想与他就这样慢慢变老。也许这就是爱情吧。','不是作家，是平淡生活的记录者。新浪微博：@公子乔一','2018-12-01',1,1),(2,'最好的我们','book/image/00002.jpg','八月长安 ','湖南文艺出版社','2013-08-05',280,48,'你总是说青春从不曾永远，而那时候的我们，就是最好的我们。这一次，我们和整个青春做告别。八月长安全新力作。你还记得高中时的同桌吗？那个少年有世界上最明朗的笑容，那个女生有世界上最好看的侧影。高中三年，两个人的影子和粉笔灰交织在一起，黑白分明，在记忆里面转圈。本书以怀旧的笔触讲述了女主角耿耿和男主角余淮同桌三年的故事，耿耿余淮，这么多年一路走过的成长故事极为打动人心，整个故事里有的都是在成长过程中细碎的点点滴滴，将怀旧写到了极致，将记忆也写到了极致。','八月长安：昵称二熊，哈尔滨长大，北京读书，现居上海。个人微博：http://weibo.com/bayuechangan代表作：“振华高中三部曲”《你好，旧时光》三册装典藏版《暗恋·橘生淮南》两册装典藏版（预计2013年9月出版）《最好的我们》两册装（2013年8月出版）“改编电影小说”《被偷走的那五年》（2013年8 月出版）时光机——贴图你被偷走的最好时光http://www.douban.com/online/11599025/','2018-12-04',0,1),(3,'麦田里的守望者','book/image/00003.jpg','J·D·塞林格 ','译林出版社','2014-05-01',280,25,'霍尔顿是出身于富裕中产阶级的十六岁少年，在第四次被开除出学校之后，不敢贸然回家，只身在美国最繁华的纽约城游荡了一天两夜，住小客店，逛夜总会，滥交女友，酗酒……他看到了资本主义社会的种种丑恶，接触了各式各样的人物，其中大部分是“假模假式的”伪君子。霍尔顿几乎看不惯周围发生的一切，他甚至想逃离这个现实世界，到穷乡僻壤去假装一个又聋又哑的人，但要真正这样做，又是不可能的，结果他只能生活在矛盾之中：他这一辈子最痛恨电影，但百无聊赖中又不得不在电影院里消磨时间；他厌恶没有爱情的性关系，却又糊里糊涂地叫来了妓女；他讨厌虚荣庸俗的女友萨丽，却又迷恋她的美色，情不自禁地与她搂搂抱抱。因此，他尽管看不惯世道，却只好苦闷、彷惶，用种种不切实际的幻想安慰自己，自欺欺人，最后仍不免对现实社会妥协，成不了真正的叛逆，这可以说是作者塞林格和他笔下人物霍尔顿的悲剧所在。','作者塞林格全名杰罗姆・大卫・塞林格，一九一九年生于美国纽约城，父亲是做于酪和火腿进口生意的犹太商人，家境相当富裕。塞林格十五岁的时候，被父母送到宾夕法尼亚州一个军事学校里住读，据说《麦田里的守望者》中关于寄宿学校的描写，很大部分是以那所学校为背景的。一九三六年，塞林格在军事学校毕业，取得了他毕生唯一的一张文凭。从一九四○年在《小说》杂志上发表他的头一个短篇小说起，到一九五一年出版他的长篇小说《麦田里的守望者》止，在十余年中他共发表了二十多个短篇，有些短篇还在《老爷》、《纽约人》等著名刊物上发表，从而使他在文学界有了一点点名气。成名后他隐居到乡下，特地为自己造了一个只有一扇天窗的水泥斗室作书房，每天早晨八点半就带了饭盒入内写作，直到下午五点半才出来，家里任何人都不准进去打扰他；如有要事，只能用电话联系。他写作的过程据说还十分艰苦，从《麦田里的守望者》...','2018-11-15',0,1),(4,'每天早上和你一起醒来','book/image/00004.jpg','五十块 / 蔡要要','作家出版社','2017-03-05',250,45,'2014年，长居厦门的蔡要要收获了爱情，和男朋友五十块来到了帝都北京。两个人，决心在忙碌的生活中好好经营爱情，蔡要要也萌发了给男友做365顿不重样的早餐的念头。生活的脚本难以设定。一年后，要要怀孕了，为了给即将出生的宝宝营造一个健康的环境，五十块和蔡要要离开了帝都的雾霾，重新回到了厦门。在这个对五十块来说稍显陌生的城市，年轻的丈夫、准爸爸挽起了袖子，开始每天为妻子做起了不重样的早餐。在北京时，两个人，她为他每天做早餐；回到厦门，她怀孕了，不能再操劳，他来继续做早餐，续写他们的美食情缘。两个漂泊一方奋斗的年轻人，从相识相知到相恋结婚，最终有了爱情结晶小豌豆。这段爱情故事中最珍贵的地方在于，两个年轻人用温柔的心、用细腻的文字，诠释了那些在日常生活中看似普通又平凡的点点滴滴。我们喜欢美食，就像我们喜欢美好的感情一样。每一个有关食物与爱的故事，都是...','蔡要要，本名蔡诗乐【豆瓣】红人＆【知乎】达人，【犀牛故事】APP人气作者性格特别好，未见其人先闻其笑声的美少女辣妈。开过青旅，去过很多地方 ，见过许多人，想说一个好故事，想和你在故事里相遇五十块，本名邵华杰知乎】达人，【犀牛故事】APP签约作者IT产品设计师，一个英俊帅气的年轻爸爸。虽然不会游泳，但在桨板上可以像少年派一样站起来。','2018-12-03',0,1),(5,'朝花惜时','book/image/00005.jpg','左小翎 / 壳小杀','北京联合出版公司','2017-07-01',224,39.9,'天真少女安可乐第一次来到大城市，在学校里结实了形形色色的新朋友：态度恶劣的后桌同学叶陵、心地善良却经常受到嫉妒和欺凌的校花文浅浅、曾经暗恋的学长白一然……还在人生第一次去夜店时遇到了极具神秘感的服务生言述。在努力适应崭新生活环境的过程中，她发现叶陵与言述之间似乎有着千丝万缕的联系……','左小翎新生代超人气脚本师◎2012年《南烟斋笔录》获得第九届中国动漫金龙奖最佳脚本奖◎2013年担纲脚本的作品《甄嬛传·叙花列》获得金猴奖和金龙奖最佳少女漫画奖◎2017年当当书香节影响力·原创 漫画家◎代表作品：《朝花惜时》《南烟斋笔录》《百玄传》《甄嬛传·叙花列》壳小杀新生代超人气漫画家◎2012年获第九届中国动漫金龙奖最佳新人奖◎2013年作品《百玄传》获金猴奖银奖、金龙奖最佳漫画奖入围◎2017年当当书香节影响力·原创 漫画家◎代表作品：《朝花惜时》《南烟斋笔录》《百玄传》','2018-11-14',1,1),(6,'我偏爱那些不切实际的浪漫','book/image/00006.jpg','银谷 ','人民交通出版社股份有限公司','2017-06-01',312,38,'你有多久没有好好大笑或大哭一场了？这是你只要看一个开头，就会让你立刻爱上的文字！豆瓣人气作者银谷新作，一本超现实主义，想象力爆棚的浪漫故事集，每一个故事都猜不到结局却又震撼人心！翻开这本书，就能立刻让你脱离乏味现实，让你立刻开始经历一场惊心动魄而又美妙的冒险！丁 克女友不要孩子的原因竟然是已经知道未来的自己没有孩子？对男人绝望的少女因为一场惊天的浪漫冒险要在婚礼上和一个神秘的女人逃跑？一对迫切想偷情的男女无论如何不能偷情成功，最后荒唐地偷到天空中？一个有奶香的摄影师和一个长不大的女演员面对结婚这个成人问题的抉择？允许双 方有开放性关系的一对奇怪又可爱的夫妻如何继续获得幸福？一位女粉丝和一个偶像巨星之间不能诉说的秘密往事。抱着一具白骨骷髅搬家的作家与一位已婚少女之间的凄美不伦故事。','银谷性别：男身高：180体貌：瘦婚否：选择一辈子单身，在书和电影里结100次婚。职业：胸无大志，只想做一个闲到长蘑菇的诗人。年龄：forever young,always down.厨艺：我们不能在一起，不是你不够好，而是我家里的米还没准备好。所有的我 悲伤的我 快乐的我 自私的我 豪放的我 疯狂的我任性的我 洒脱的我 古怪的我 心碎的我 都在这本书的故事里所以，关于我所有的一切 我们文字里见。','2018-11-14',1,1),(7,'停靠，一座城','book/image/00007.jpg','李婧 / 村上春花','新星出版社','2017-05-01',217,35,'《停靠，一座城》缘起于一个备受关注的网络写作计划“100个城市生活的人”https://site.douban.com/256213/，记录了三十多位年轻人的城市故事，在首都一线、在家乡县城、在海外异国，这些70后、80后、90后上演着一幕一幕，或冷眼旁观、或立身奋斗、或避风留恋，体验着种种心情，或为成长、或为挫败或为温暖，一个个故事，是属于他们的微小历史，一个个故事汇集起来，又构筑起我们时代的宏伟图景。他们的故事不传奇，却朴实而真诚，他们的声音不大，却发自内心，无论你正停靠在哪一座城，总有一个故事会引起你的共鸣。','李婧，自由撰稿人，目前运营公众号“零点de故事”“鹿之角”。二〇一五年六月，与村上春花共同发起“100个城市写作计划”，邀请世界上不同城市的年轻人，写出他们与所在城市的故事。本书由李婧主导，多位作者撰稿。撰稿者中有大城市打拼的职场人、有国外求学的留学生、有县城小镇中努力的年轻人、也有漂泊异乡寻找自我的旅行达人，他们都生活在城市，也都有着属于自己的“城市故事”。','2018-09-13',0,1),(8,'我知道你会来，所以我等','book/image/00008.jpg','骆瑞生 ','天津人民出版社','2017-03-05',420,36,'有人曾说：这世界上，谁都不知道谁在等着谁。可是关于我爱你这件事，我不怕等得时间久，也不怕走多少弯路。在遇到你之前，我们或许都曾和别人一起看过风景，也在别人那里伤心落泪。可我还是相信，这世上一定有一个你，可能正徘徊在某个灯火阑珊处。我不想再轻易地去爱一个人，我只想静静等你。你来了，我要把你看仔细，紧紧抓住你的手。爱是太不确定的事情。但我知道你会来，所以我等。','骆瑞生青年作者，诗人，曾获南京先锋书店的诗歌奖。好文，好诗，好读书，好美食美物。豆瓣、知乎、犀牛故事等文艺App高赞人气作者，其中《不如，我们重新开始》《摆渡的少女》《阿姐》等故事在网络上广为传播和讨论。那些文字和他的人一样纯净，喧嚣世界在他的故事面前，仿佛都冰消雪解。已出版长篇小说《你是我最初和最后一个恋人》。','2018-10-01',0,1),(9,'夹边沟记事','book/image/00010.jpg','杨显惠','花城出版社','2018-12-11',529,34,'这是一段尘封四十年的历史，当年的幸存者散落在各个角落，没有人问过他们到底发生了什么，当年的死难者早已化为白骨，连他们的后代也不知道埋在何处。幸亏杨显惠这位有良知的作家，不辞辛劳，四处寻访，历经数载，终于揭开了历史的盖子。本书是《定西孤儿院纪事》的姊妹篇，被誉为“中国的《古拉格群岛》”。书中所指的夹边沟，为甘肃酒泉一个羁押右派分子的劳改农场，从1957年开始关押的近三千人，至1960年底幸存者已不足一半，是一处充满了苦难、饥饿和死亡的伤痛之地。作者历经数年，大海捞针般搜寻和采访了近百名当事人，并在高度忠于历史事实的基础上，完成了这部极具震撼历的纪实性小说。全书通过近20个故事，对众多受难者命运的来龙去脉进行了深沉的揭示，对绝境中的人性有着十分出色的绘状，更直视了这一历史悲剧的精神本质和深刻教训。从2000年春季《上海文学》开始连载《夹边沟记事》至今...','杨显惠，1946年出生于兰州。中国作家协会会员，现居天津。1965年由兰州二中上山下乡赴甘肃省生产建设兵团安西县小宛农场。1971年入甘肃师范大学数学系读书。1975年在甘肃省家垦局酒泉农垦中学做教师。1981年入天津作家协会专职写作至今。主要作品收入《这一片大海滩》、《定西孤儿院纪事》等书。曾获全国短篇小说奖、中国小说学会奖、《上海文学》奖。','2018-10-01',0,2),(10,'白鹿原','book/image/00020.jpg','陈忠实 ','人民文学出版社','1997-12-12',677,28,'这是一部渭河平原五十年变迁的雄奇史诗，一轴中国农村班斓多彩、触目惊心的长幅画卷。主人公六娶六丧，神秘的序曲预示着不祥。一个家族两代子孙，为争夺白鹿原的统治代代争斗不已，上演了一幕幕惊心动魄的活剧：巧取风水地，恶施美人计，孝子为匪，亲翁杀媳，兄弟相煎，情人反目……大革命、日寇入侵、三年内战，白鹿原翻云覆雨，王旗变幻，家仇国恨交错缠结，冤冤相报代代不已……古老的土地在新生的阵痛中颤栗。厚重深邃的思想内容，复杂多变的人物性格，跌宕曲折的故事情节，绚丽多彩的风土人情，形成作品鲜明的艺术特色和令人震撼的真实感。','无','2018-11-15',1,2),(11,'北鸢','book/image/00030.jpg','葛亮 ','人民文学出版社','2016-10-01',490,45,'《北鸢》起笔于民国商贾世家子弟卢文笙的成长，收束于上世纪中叶。将波诡云谲的民国动荡史寄予两个家族的命运沉浮，书写中国最为丰盛起伏的断代。人生一线，恰似风筝。命运漂浮无着，人亦应有自己的主心骨。政客、军阀、寓公、文人、商人、伶人，书中上百位经典民国人物，进退于沧桑。群落交织，浑然磅礴。文笙在大时代的风云中辗转历练，且行且进，最终尘埃落定。每个人都有自己的来处，了解来处，才知道自己的去向。在故事的日常精微与家族兴颓里，藏着我们过去以及未来的影子。','葛亮，原籍南京，现居香港，任教于高校。香港大学中文系博士。作品出版于两岸三地，著有小说《北鸢》《朱雀》《七声》《谜鸦》《浣熊》《戏年》，文化随笔《绘色》，学术论著《此心安处亦吾乡》等。部分作品译为英、法、俄、日、韩等国文字。曾获首届香港书奖、香港艺术发展奖、台湾联合文学小说奖首奖、台湾梁实秋文学奖等奖项。作品被收入“当代小说家书系”“二十一世纪中国文学大系”，入选2008、2009、2015年“中国小说排行榜”和“2015年度诚品中文选书”。长篇小说《朱雀》获选“《亚洲周刊》全球华文十大小说”。2016年以新作《北鸢》再获此荣誉。','2009-12-09',0,2),(12,'一句顶一万句','book/image/00040.jpg','刘震云','长江文艺出版社','2009-03-01',362,29.8,'《一句顶一万句》的故事很简单，小说的前半部写的是过去：孤独无助的吴摩西失去唯一能够“说得上话”的养女，为了寻找，走出延津；小说的后半部写的是现在：吴摩西养女的儿子牛爱国，同样为了摆脱孤独寻找“说得上话”的朋友，走向延津。一走一来，延宕百年。书中的人物大部分是中国最底层的老百姓，偏偏安排了一个意大利牧师老詹。','刘震云，男，1958年5月出生，河南新乡延津人。1973年参加中国人民解放军。1978年复员，在家乡当中学教师，同年考入北京大学中文系。1982年毕业到《农民日报》工作。1988年至1991年曾到北京师范大学，鲁迅文学院读研究生。1982年开始创作，1987年后连续发表在《人民文学》《塔铺》、《新兵连》、《头人》、《单位》、《官场》、《一地鸡毛》、《官人》、《温故一九四二》等描写城市社会的“单位系列”和干部生活的“官场系列”，引起强烈反响在这些作品中，他迅速表现出成为大作家的潜在能力，确立了创作中的平民立场，将目光集中于历史、权力和民生问题，但又不失于简洁直接的白描手法，也因此被称为“新写实主义”作家。其中《塔铺》获1987-1988全国优秀短篇小说奖。','2018-11-14',1,2),(13,'明朝那些事儿（壹）','book/image/00100.jpg','当年明月 ','中国友谊出版公司','2006-09-11',298,24.8,'从朱元璋的出身开始写起，到永乐大帝夺位的靖难之役结束为止。叙述了明朝最艰苦卓绝的开国过程。朱元璋pk陈友谅，谁堪问鼎天下？战太平、太湖大决战。卧榻之侧埋恶虎，铲除张士诚。徐达、常遇春等不世名将乘胜逐北破北元。更有明朝最大的谜团——永乐夺位、建文失踪的靖难之役。','当年明月，青年历史学者，畅销书作家。专业职称为副研究员，明史学会会员。是心灵历史的开创者，担任国内多家电视台文史类节目主讲人。所著作品《明朝那些事儿》销量过五百万册，为三十年来最畅销之史学读本。','2018-11-21',1,3),(14,'浮生六记','book/image/01000.jpg','（清）沈复 ','人民文学出版社','1999-12-01',80,5.7,'这是一部自传体文学的作品，原书六卷，已逸其二，现仅存四卷（有所谓“足本”者，后二记系伪作。书中记叙了作者夫妇间平凡的家居生活，坎坷际遇，和各地浪游闻见。文辞朴素，情感真挚，前人曾有“幽芳凄三角，读之心醉”的评语。本书文字不长，但向为文学爱好者和研究者所重视，影响广泛。','沈复（1763~？），字三白，号梅逸，江苏苏州人。年轻时秉承父业，以游幕经商为生，后偕妻离家别居，妻子客死扬州。46岁时有感于“苏东坡云‘事如春梦了无痕’，苟不记之笔墨，未免有辜彼苍之厚”，乃作《浮生六记》。','2018-12-05',0,4),(15,'嫌疑人X的献身','book/image/10000.jpg','[日] 东野圭吾 ','南海出版公司','2008-09-11',251,28,'百年一遇的数学天才石神，每天唯一的乐趣，便是去固定的便当店买午餐，只为看一眼在便当店做事的邻居靖子。','东野圭吾，日本著名作家。1958年生于大阪。1985年，以第31届江户川乱步奖获奖作品《放学后》出道，开始扬名立万。20年作品逾60部，几乎囊括了日本所有大奖，1998年，《秘密》获第52届日本推理作家协会奖，入围第120届直木奖；1999年，《白夜行》入围第122届直木奖；2001年，《暗恋》入围第125届直木奖；2003年，《信》入围第129届直木奖。2006年，《嫌疑人X的献身》终于捧得日本文学最高荣誉直木奖。','2018-10-01',1,5);

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `category` */

insert  into `category`(`cid`,`cname`) values (1,'青春文学'),(2,'当代文学'),(3,'网络小说'),(4,'古典文学'),(5,'推理小说');

/*Table structure for table `comment` */

DROP TABLE IF EXISTS `comment`;

CREATE TABLE `comment` (
  `coid` int(11) NOT NULL AUTO_INCREMENT,
  `codesc` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `uname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `udate` date DEFAULT NULL,
  `bid` int(11) DEFAULT NULL,
  `bname` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`coid`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `comment` */

insert  into `comment`(`coid`,`codesc`,`uname`,`udate`,`bid`,`bname`) values (1,'强烈推荐！昨天一口气看完，一边笑着一边感动到想流泪，虐死单身狗也甜翻单身狗。现实中的爱情亲情友情远比虚构的小说更温暖美好。乔一说：她是上辈子拯救了银河系这辈子才会遇到F。而我觉得：正是她始终对周围的人抱有善意，所以才会被这世界温柔以待。','周周','2015-08-04',1,'我不喜欢这世界，我只喜欢你'),(2,'愿你爱的那个人，也刚好爱着你','亦欢 ','2015-07-08',1,'我不喜欢这世界，我只喜欢你'),(3,'去年年底从杂志上知道乔一，开始被他们生活的暖萌打动，后来逐渐的了解后由对暖萌情节的喜爱，到对作者本人的喜爱，后来渐渐明白，其实感动与快乐并不仅仅来源于物质，更多是来源于我们生活中的点滴小事，还有那颗清澈透明的心，在这物欲横流的世界，这样一份坚守多年始终如一的情感更加显得弥足珍贵。','姜吉平是碎花控 ','2015-06-18',1,'我不喜欢这世界，我只喜欢你'),(4,'对我来讲，最完满的，有且只有洛枳跟盛淮南这一对。十年前，洛枳爱盛淮南，谁也不知道。十年后，盛淮南爱洛枳，全世界都知道。','pan','2013-10-08',2,'最好的我们'),(5,'其实是简单。你们都说，余周周林扬、洛枳楚淮南、甚至余淮都是天之骄子，只有耿耿是芸芸众生的曾经年少；可耿耿有余淮，耿耿余淮说到底也还是故事。只有配角简单，才是我们。是哪怕曾经再委屈的喜欢到最后也不过一句愿赌服输，退出舞台再无音讯，也再不能、再不敢有音讯。这是我看八月长安的第一本书，我喜欢这个名字，所以三部曲里最先选了它。一开始只是暗喜，文笔清爽朴实，不浮不躁不矫不腻，是真的让人怀念那段时光的娓娓道来。直到简单的愿赌服输，心里便知道，对我而言，它一定是五颗星了。','某J。624','2014-06-27',2,'最好的我们'),(6,'你们很美，”他继续往下说“但是很空虚，没有人会为你们而死，没错，一般过路的人，可能会认为我的玫瑰和你们很像，但她只要一朵花就胜过你们全部，因为她是我灌溉的那朵玫瑰花；她是那朵我放在玻璃罩下面，让我保护不被风吹袭，而且为她打死毛毛虫的玫瑰；因为，她是那朵我愿意倾听她发牢骚、吹嘘、甚至沉默的那朵玫瑰；因为，她是我的玫瑰。','O_o煎饼果子 ','2013-11-05',3,'麦田里的守望者'),(7,'我知道自己喜欢你。但我不知道自己将来在哪里。因为我知道，无论哪里，你都不会带我去','宅女Sara要改变','2013-11-19',3,'麦田里的守望者'),(8,'可爱的人应该有可爱的人生。','阿柴 ','2017-04-15',4,'每天早上和你一起醒来'),(9,'字里行间兴高采烈的生命力和流出蜜的爱意简直让乐观无能者嫉妒。哦我买来是想看看能不能提高一下自己对食物的兴趣，结果还是失败啦……','椰子和鱼 ','2017-06-12',4,'每天早上和你一起醒来'),(10,'上班时候看完是一场人生煎熬！鹭江道新垣结衣前半场已经饿至晕厥！后半场还甜到倒牙！','纪合子','2017-04-02',4,'每天早上和你一起醒来'),(11,'很好很好，美好的少男少女，想回到17岁','DAIAN ','2017-06-29',5,'朝花惜时'),(12,'从豆瓣写的小文到出版后，一如既往的有趣。有趣可读有记忆点的小说，现代实属不多了。','食爱少女','2017-06-20',6,'我偏爱那些不切实际的浪漫'),(13,'作者（居然还是个男的）有一颗盛大的少女心，冒着粉红色泡泡的那种，用成熟冷静到极致之后返老还童的天真幼稚文笔，和并不复杂的几个若干故事，搭建了一个我和你在一起，或是不在一起，过程都很美好的童话世界。若能活在浪漫里，你说又有谁不乐意。','龙舌头','2018-11-02',6,'我偏爱那些不切实际的浪漫'),(14,'有趣、精彩、忧伤、情感，有的时候看似天马行空的文字，它却是我们思维的真实记录！','沧海一小生','2017-07-04',6,'我偏爱那些不切实际的浪漫'),(15,'这的确算不上一本传统意义上的“好书”，但读起来就像是在和一群不认识的人促膝而谈，亲切舒服。能从某些笔者描述的城市生活中找到共鸣，读到向往读出妥协。','sonnnnnnnia','2018-04-17',7,'停靠，一座城'),(16,'个中滋味难解数','村上春花','2017-06-05',7,'停靠，一座城'),(17,'很喜欢，每一篇文笔都非常好。在这个星球里，每个人都那么渺小，又都在自己的人生轨迹里努力地生存着，挣扎着。希望这个系列能一直继续。','雨雨妈妈','2017-06-08',7,'停靠，一座城'),(18,'其中有生活过的城市长沙深圳，也有到过的城市哈尔滨北京上海香港……还有很喜欢很喜欢的城市，比如南半球的墨尔本和很北的奥斯陆。每个人都是一座岛屿。','Jessiego','2017-09-09',7,'停靠，一座城'),(19,'也曾用这一句作文章的结尾，所以想看这一本。','水如烟','2017-06-01',8,'我知道你会来，所以我等'),(20,'文笔挺细腻的。故事有优柔感。','沐溪 ','2017-03-13',8,'我知道你会来，所以我等'),(21,'长太息以掩涕兮，哀民生之多艰。','沉歌','2014-11-11',9,'夹边沟记事'),(22,'学为好人。耕读传家。白嘉轩太硬，鹿子霖太灵，白孝文才是人生最终的赢家。冷先生说：“我在这镇子上几十年，没听谁说你老弟一句闲话，这……太难了！”白嘉轩做出自轻自薄的口吻，又很恶毒地说：“咱们祖先一个铜子一个麻钱攒钱哩！人家凭卖尻子一夜就发财了嘛！”泡枣','水仙操','2010-10-27',10,'白鹿原'),(23,'承袭于家族记忆的历史虚构，以鸢的意象记录动荡的年代，人心的沉浮。相较于《朱雀》，大起大落，大开大阖，进退有度，历时七年，实属用心之作。','孙衍','2016-10-08',11,'北鸢'),(24,'读出了一些网络民国文学的感觉。','費斯基','2018-12-20',11,'北鸢'),(25,'这个小说中的部分抗日情节真的让我非常出戏，作者永远是一副端着写作的姿态，整本小说没有一点灵魂，人物无趣死板，抄袭八点档抗日剧抄了个不及格。','刚洗了热水澡','2016-12-04',11,'北鸢'),(26,'和其他当代作家一样，时代的焦距一旦推近，厚重感即削弱，所以小说下半部比上半部弱许多。小说的视角独特、平实：和身边的人说不说得着话。喜欢书中由此对《论语》和《圣经》的解读。“有朋自远方来”是孔子感慨身边没有人说得上话，《圣经》是要人在心里忧愁没处说话的时候知道去找神~前半段那些小故事很有爱。','cub18','2012-01-27',12,'一句顶一万句'),(27,'老爸说《一句顶一万句》整本书都是车轱辘话，翻来覆去地说，看不出来什么。但他还看得津津有味。书中讲得都是身边人身边事儿，将每一个人每一段人生每一个细节都放大，每往前走一步都能捏出苦水来。别说永世知心人，有时候找个说句话的人都难。出延津，回延津，哪里出于自愿，都是被逼出来的。','苏筱兀','2013-01-03',12,'一句顶一万句'),(28,'中国人没有信仰，西方人信神，我们信人。只要活着，就无法摆脱人际关系对我们的影响。神有定性，可人没有。可能因为一句话，朋友变成仇人；或时过境迁突然遇到，仇人又变成朋友。在中国人这里，朋友不一定说得上话，说得上不一定是朋友。就这么乱七八糟，都在壳的外边。壳的里边，永远是一颗孤独的心。','已注销]','2012-09-27',12,'一句顶一万句'),(29,'不要说精神的痛苦只有知识分子才有','思萌 ','2011-11-23',12,'一句顶一万句'),(30,'幽默爆笑，侧重写人，历史事件并不全面，可能掺杂太多个人情感，有没有夹带私货，多看点历史自会判断。','苹果派','2018-03-23',13,'明朝那些事儿（壹）'),(31,'敢写历史的人是要有厚积薄发和一定的人生阅历的不然就无力支撑那些厚重的人和事 最好还要诙谐幽默一点 这样才会更引人入胜不会枯燥 需要的不是教科书的那种书籍 是要耐看有血有肉能够融入那些场景的书 作者做到了这一点 于是就成功了','独善其身 ','2011-11-01',13,'明朝那些事儿（壹）'),(32,'粗略读到前三记，不想在读了。 芸娘:\"从此痴心物色，而短于资\"不能理解， 沈复就是一\"小人\"，\"少年豪兴\"，\"此余愁苦\"， 不喜欢沈复，可又感叹人生的很长，一切都来得及，随遇而安，无论何时都能玩的开心，也好， 闲时可以看看陶冶一下','莫凝墨忘','2017-01-19',14,'浮生六记'),(33,'被震爆了。西方作家打死也写不出来的一类小说。还不是纯东方的，而是纯日本的。石神的情感模式和日本武士道剖腹、神风敢死队自杀式攻击的献祭式情感模式是完全一样的。瞬间的喜悦。瞬间的悟道。极致的浪漫。','LOOK ','2015-02-12',15,'嫌疑人X的献身'),(34,'有时候觉得汤川的情商也很高，能够细腻到发现石达摩一句简单赞美中的内心。。。看完我就忘记了作案手法，却忘不了石达摩自杀前打开门看到邻人那张温暖的笑脸','小岩井 ','2012-09-20',15,'嫌疑人X的献身'),(35,'东野圭吾真是强啊，总是在最最后的短短几页，颠覆读者所有的假设。我不相信有人预测的出这个结果，却绝不突兀。这么顺理成章的意外结局，你还能写出多少种来，我们拭目以待吧。','小晨 ','2011-03-05',15,'嫌疑人X的献身');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

/*Data for the table `user` */

insert  into `user`(`uid`,`username`,`password`,`email`,`phone`,`name`,`birthday`,`sex`) values (1,'zhangsan','321','87515646@qq.com','15032382351','游戏人生','2018-12-06','男'),(2,'17shou','5201314..','q875243448@gmail.com','null','兽兽','2018-12-11','男'),(4,'我是谁','123456','qweas4AS5DA4SDA54SD56QWE@qq.com',NULL,NULL,NULL,NULL),(5,'zhangsan001','5201314..','123456@qq.com',NULL,NULL,NULL,NULL),(7,'liuqianqian','789456','1132744047@qq.com','15833775230','倩倩','2018-12-03','女'),(8,'xiaoliu','123456789','89a7sd98as7d9@qq.com','15032382351','倩倩','2018-12-04','女');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
