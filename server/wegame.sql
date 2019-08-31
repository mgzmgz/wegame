SET NAMES UTF8;
DROP DATABASE IF EXISTS wegame;
CREATE DATABASE wegame CHARSET=UTF8;
USE wegame;

-- 商品模块
-- 游戏
CREATE TABLE game(
  gid INT PRIMARY KEY AUTO_INCREMENT, #编号
  gname VARCHAR(32),                  #游戏名称
  price DECIMAL(4,2),                 #价格
  memory VARCHAR(32),                 #内存
  video_card VARCHAR(32),             #显卡
  disk VARCHAR(32),                   #硬盘
  cpu VARCHAR(32),                    #CPU
  os VARCHAR(32),                     #系统
  details VARCHAR(1024),              #详情
  shelf_time BIGINT,                  #发行时间
  developers VARCHAR(32),             #开发商
  operator VARCHAR(32),               #运营商
  pic VARCHAR(64),                    #图片路径
  bg_pic VARCHAR(64),                 #背景图片路径
  title VARCHAR(16)                   #标题   
);

-- 用户模块
-- 用户信息
CREATE TABLE game_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16)
);

-- 购物车
CREATE TABLE game_shoppingcart(
  sid INT PRIMARY KEY AUTO_INCREMENT,
  user_id INT,                       #用户编号
  product_id INT,                    #商品编号
  is_checked BOOLEAN                 #是否已勾选，确定购买
);



-- 数据导入
INSERT INTO game VALUES
(NULL,'FIFA4',0,'4GB','GEFORCE 730 OR ATI RADEON HD7570','20GB以上','INTEL CORE I3-2100@3.1GHZ','WINDOWS7/8/8.1(64BIT)','《FIFA Online 4》是EA Sports以最新FIFA单机系列引擎为基础，全面优化网络连接机制打造而成的划时代足球竞技游戏。《FIFA Online 4》淋漓展现了绿茵场的激情时刻和球星们的飒爽英姿。作为首款拥有“中超”授权的FIFA系列游戏，FIFA Online 4致力为中国球迷玩家呈现最真实畅爽的足球游戏体验！',1528675200000,'EA Sports','腾讯','picture/game/FIFA4.jpg','picture/bj/FIFA4.png','体育竞技'),
(NULL,'NBA2K',0,'物理内存2GB以上，虚拟内存2GB以上','Intel HD3000或同级显卡以上','4GB以上','Intel酷睿双核2.0GHz','windows7,windowsXP','《NBA 2K Online》是一款全新体育类网络游戏。由腾讯游戏与美国Take-Two公司合作，以Take-Two旗下知名品牌《NBA 2K》系列篮球游戏为产品原型，基于互联网环境共同打造。游戏拥有高度拟真的临场比赛气氛和完美的操作手感，基于真实NBA比赛数据所推演出来的球员行为倾向，使他们在比赛里的一举一动完全贴近真实。',1351036800000,'2K Sports','腾讯','picture/game/NBA2K.jpg','picture/bj/NBA2K.jpg','体育竞技'),
(NULL,'QQ飞车',0,'2G以上','NVIDA 9800GT或同级显卡以上','2GB以上','2.4GHz双核CPU','windows7,windowsXP','QQ飞车是腾讯首款自主研发的3D时尚赛车网络游戏。QQ飞车采用了世界级的物理引擎PhysX，采纳专业车手的建议，手感全面超越市场领先产品。QQ飞车完全免费，QQ号码即可登录。专为QQ用户设计的时尚的人物造型、以爽快漂移手感、激烈竞技体验与时尚潮流的个性化装扮为核心特色，获得了超高的人气；帅哥与美女同在，速度与激情并存，带你进入眩目的急速世界。',1201046400000,'琳琅天上工作室','腾讯','picture/game/qqfeiche.jpg','picture/bj/qqfeiche.jpg','休闲娱乐'),
(NULL,'QQ炫舞',0,'512MB','Gefore FX5200或同级显卡以上','2GB以上','P4 2.0GHz','windows7,windowsXP','《QQ炫舞》是一款休闲、时尚、交友的3D音乐舞蹈游戏。由腾讯公司与北京永航科技联合发布。游戏对局模式十分丰富，并有休闲的学堂、宠物、结婚、师徒等系统。时尚的音乐，炫丽的服装，华丽的舞步，尽在最浪漫的QQ炫舞。',1211414400000,'北京永航科技有限公司','腾讯','picture/game/qqxuanwu.jpg','picture/bj/qqxuanwu.jpg','休闲娱乐'),
(NULL,'堡垒之夜',0,'6 GB','NVIDIA GeForce GT 630','45 GB','Intel(R) Core(TM) i3 CPU M 380 @ 2.53GHz','Windows 7/8/10 64-bit','《堡垒之夜》是一款融合建造玩法的第三人称射击网游。突破传统战术竞技玩法，从游戏故事线、玩法模式到商业化模式，均属品类首创。目前游戏凭借创新多元的玩法，丰富有趣的元素，在欧美地区已成为玩家“生活中的一部分”，并吸引了众多球星、明星加入。其中包含NBA球星保罗•乔治，本届世界杯冠军队法国队当家球星格里兹曼，流行歌手Drake等。 自上线战术竞技玩法后，《堡垒之夜》人气迅速上升，IGN评分9.6分，目前全球用户数超2亿，已成为全球最高人气的多人在线游戏之一。',1557446400000,'Epic Games','腾讯','picture/game/baoleizhiye.jpg','picture/bj/baoleizhiye.jpg','动作冒险'),
(NULL,'穿越火线',0,'1G','GeForce 5700或同级显卡以上','1500M及以上剩余空间','P4 2.4GHz','windows7,windowsXP','《穿越火线》是一款第一人称射击类（FPS）网络游戏。凭借全新的玩法 ，快节奏的战斗体验，丰富的比赛和活动，自2008年面世以来，迅速风靡全国，人气空前火爆。游戏同时在线人数不断突破新高，成为全球第一的FPS网游！',1216944000000,'Smile Gate','腾讯','picture/game/CF.jpg','picture/bj/CF.jpg','FPS'),
(NULL,'地下城与勇士',0,'512MB','内存64MB以上的显卡','10GB以上','P4 2.4GHz','windows7,windowsXP','《地下城与勇士》是一款超人气格斗网游作品。由韩国Neople开发的，华丽的必杀技、爽快的连击，所有接触过《地下城与勇士》的玩家，一定都会被其强烈的街机风格所强烈吸引。《地下城与勇士》通过领先全球十年的技术，完美解决了网络延迟瓶颈，引入全套即时格斗元素，完美再现了动作格斗游戏的精髓，是一款真正的集大成的动作网游。以往在各种街机、单机中才可能出现的格斗场面和技能招式，如今在《地下城与勇士》中都得到了完美再现。',1213833600000,'Neople','腾讯','picture/game/DNF.jpg','picture/bj/DNF.jpg','动作冒险'),
(NULL,'斗战神',0,'2G','Nvidia GeForce 8600或同级显卡以上','10G以上','Intel酷睿双核2.0Ghz','windows7,windowsXP','《斗战神》是一款大型MMO网游大作。由腾讯完全采用自主研发的引擎制作。游戏以东方神话为题材，并为玩家创造极致的战斗体验，在《斗神传》的世界中，我们将会和玩家们一同成长，一同分享游戏的快乐。',1378944000000,'量子工作室','腾讯','picture/game/douzhanshen.jpg','picture/bj/douzhanshen.jpg','动作冒险'),
(NULL,'虎豹骑',0,' 8 GB','显存2GB或以上，支持directx11','10 GB以上','3.7 GHz 4 core或更高','Microsoft Windows 7, 8 ,10 64位','《虎豹骑》是一款集个人格斗与领兵作战为一体，以三国题材为背景的大型冷兵器战争网游。游戏通过对古代武器、甲具、战马、士兵、地形等的严谨开考据，真实重现古代战争沙场厮杀的激烈场面。',1501545600000,'网龙网络','网龙网络','picture/game/hubaoqi.jpg','picture/bj/hubaoqi.jpg','动作冒险'),
(NULL,'剑灵',0,'4GB','NVidia Geforce 8800GT或AMD Redeon HD4850以上','15GB以上','Intel Quad Core或AMD Phenom II X4','windows7,windowsXP','《剑灵》（BNS）是一款全新东方风格3D MMORPG。全称Blade ＆ Soul，是由著名网游开发商 NCSOFT 开发，腾讯游戏代理，《剑灵》在设计上力求突破传统，华丽唯美的画面，流畅动感的动作，拳拳到肉的打击感，以及飞天入地的体验令人心驰神往，是一款具有划时代创新精神的网游巨作。',1407456000000,'NCSoft','腾讯','picture/game/jianling.jpg','picture/bj/jianling.jpg','角色扮演'),
(NULL,'冒险岛2',0,'4GB','GeForce GTX 650','8GB','Intel Core i5','Win XP 同等及以上','今日14点，萌趣冒险造物网游《冒险岛2》冒险岛正式开服，意味着全体岛民的冒险情怀终于“百川汇入大海”，我们即将在3D的冒险世界重新起航。在新版中，无论是萌新还是老岛民都能体会到那独属于冒险的魅力——童年般勇于探索未知的精神。',1505952000000,'NEXON','腾讯','picture/game/maoxiandao2.jpg','picture/bj/maoxiandao2.jpg','休闲娱乐'),
(NULL,'逆战',0,'1.5GB','GeForce 7600GT或同级显卡','5GB以上','P4 2.4GHz双核CPU','windows7,windowsXP','《逆战》是琳琅天上工作室推出的一款FPS网游。以近未来战争为主题、以机甲战及各种创新模式为特色。游戏使用虚幻3引擎，画面华丽，枪支表现注重质感，特效较为出众。游戏在继承以往优秀FPS作品的竞技玩法和射击体验的基础上，推出了许多创新模式和武器。',1347062400000,'琳琅天上工作室','腾讯','picture/game/nizhan.jpg','picture/bj/nizhan.jpg','FPS'),
(NULL,'枪火游侠',0,'2G以上','GTX 750 同等级或以上NVIDIA显卡','10GB剩余空间','Intel Core i3同等级或以上','Win 7 同等及以上','枪火游侠是一款全新的团队策略竞技游戏，你可以在到奇幻与科幻结合的架空世界中，体验到射击与英雄相结合的新奇玩法。
其中每个游侠都有自己独特的能力和战斗风格，游侠可以用局外卡组，融合局内成长、装备购买，来提高各个方面的能力，并增强他们的技能。快选择适合你的英雄，拿起武器来掌控你的战场吧！',1513296000000,'Hi-Rez Studios','腾讯','picture/game/qianghuoyouxia.jpg','picture/bj/qianghuoyouxia.jpg','动作冒险'),
(NULL,'枪神纪',0,'2GB','Geforce8600GT/Intel Sandy Bridge或同级显卡以上','5GB以上','P4 3.0G双核CPU','windows7,windowsXP','《枪神纪》是由腾讯游戏琳琅天上工作室历时数年采用虚幻3引擎，自主研发的首款第三人称时尚动作射击网游。游戏以创新为开发理念，颠覆性的采用了时尚酷帅的人物风格设定，并首次在射击网游中推出了职业系统，游戏中共有九大各具特色的职业供玩家选择，同时游戏还采用真人动作捕捉技术，在射击网游中颠覆性的加入了动作元素，让玩家不再是只能在平面上呆板的一对一点射，更可体会到飞檐走壁的自由操作感和近身格斗的爽快感。',1460419200000,'琳琅天上工作室','腾讯','picture/game/qiangshenji.jpg','picture/bj/qiangshenji.jpg','动作冒险'),
(NULL,'三国杀',0,'4 GB','独立显卡','2 GB','无要求','Windows7以上','三国知名武将免费突破，良心手游回馈玩家！武将、身份、卡牌策略搭配，体验原汁原味三国杀！',1555545600000,'杭州游卡网络技术有限公司','杭州游卡网络技术有限公司','picture/game/sanguosha.jpg','picture/bj/sanguosha.jpg','休闲娱乐'),
(NULL,'使命召唤OL',0,'1GB','台式机推荐GT 1050 或者同等级NVIDIA显卡','5GB以上','英特尔Core i3或同档次','windows7,windowsXP','Call of Duty Online由动视暴雪研发。以久负盛名的《Call of Duty》系列为题材，集合了《Call of Duty》全系列最受欢迎的元素制作的第一人称视点射击游戏网游。',1477526400000,'ActiVision','腾讯','picture/game/shimingzhaohuan.jpg','picture/bj/shimingzhaohuan.jpg','FPS'),
(NULL,'天涯明月刀',0,'4GB','GeForce 9800GT(1G显存)或同级显卡以上','8G以上','Core E8400 3.0Ghz','windows7,windowsXP','《天涯明月刀》为腾讯自研首款全3D武侠题材MMORPG网络游戏。游戏以中华正统武侠文化为创意基础，结合大量国际先进次世代技术运用，带给玩家具有纯正中国风画面和丰富武侠体验的游戏。',1467331200000,'北极光工作室','腾讯','picture/game/tianyamingyuedao.jpg','picture/bj/tianyamingyuedao.jpg','角色扮演'),
(NULL,'英雄联盟',0,'2GB','Geforce 8600GT或同级显卡以上','5GB以上','P4 3.0GHz','windows7,windowsXP','《英雄联盟》简称LOL。是由美国RiotGames最新开发的3D大型竞技场战网游戏。其主创团队是由实力强劲的DotA-Allstars的核心人物，将DotA经典玩法从对战平台延伸到真正的网络游戏世界。',1316649600000,'Riot Games','腾讯','picture/game/LOL.jpg','picture/bj/LOL.jpg','MOBA'),
(NULL,'战地之王',0,'2GB','Geforce 8600GT或同级显卡以上','5GB以上','P4 3.0G双核','windows7,windowsXP','《战地之王》是一款"次世代FPS网游"。由韩国著名游戏商Redduck开发，腾讯代理。是第一款使用世界上顶级的专业3D引擎之一的UnREAL 3引擎开发的FPS网络游戏，集战略性多兵种配合游戏玩法、丰富的游戏模式、变化多样的武器改装系统于一身。',1264464000000,'Redduck','腾讯','picture/game/zhandizhiwang.jpg','picture/bj/zhandizhiwang.jpg','FPS'),
(NULL,'中国式家长',36,'2 GB',' 1024x768 High Color +','0.8 GB','Intel Pentium III 800 MHz+','Windows Vista, 7, 8, 10','《中国式家长》是一款现实主义的模拟游戏，游戏模拟从出生到成人的整段过程，探讨孩子与家长之间的关系。',1538179200000,'墨鱼玩（北京）科技有限公司','椰岛游戏','picture/game/zhongguoshijiazhang.jpg','picture/bj/zhongguoshijiazhang.jpg','休闲娱乐'),
(NULL,'剑网3',0,'4 GB','GeForce GT 610','38 GB','Intel(R) Core(TM) i3','建议使用win7、win8、win10 64位系统','《剑网3》是由金山软件西山居开发，金山运营的一款3D武侠角色扮演游戏。《剑网3》凭借地形植被渲染技术、场景光影特效和SpeedTree等引擎特效来展现中国传统武侠世界。将诗词、歌舞、丝绸、古琴、饮酒文化、茶艺、音乐等多种具有中国传统文化特色的元素融入到游戏中，给侠士们呈现了一个气势恢弘、壮丽华美的大唐世界。',1560988800000,'珠海金山网络游戏科技有限公司','成都西山居世游科技有限公司','picture/game/jianwang3.jpg','picture/bj/jianwang3.jpg','角色扮演'),
(NULL,'喵斯快跑',14,'2 GB','NVIDIA GeForce 6600 GT','2 GB','Intel(R) Pentium(R) M processor 2.00GHz','Windows 7+','和三位可爱的小姐姐一起修复被镜像代码篡改的世界谱吧！这里是狂拽跑酷和传统音游结合的世界★——Muse Dash!!是的没错,您就是我们命中注定的Master啊！什么？！手残？喵喵喵？tan90°！没有关系！就算不擅长动作类游戏,也可以踏着动次打次的音乐节拍跨越重重难关哦！选择你喜爱的卡哇伊小姐姐穿过童话般的布景⋯⋯踹爆一个又一个蠢萌蠢萌的小怪兽取得胜利吧!!!',1560988800000,'广州呸喽呸喽科技有限公司','心动网络股份有限公司','picture/game/miaosikuaipao.jpg','picture/bj/miaosikuaipao.jpg','休闲娱乐'),
(NULL,'星际战甲',0,'2 GB','NVIDIA GeForceGT 8600GT以上  ATI Redeon HD3600以上','40 GB','英特尔 Core 2Duo E6400 以上  或 AMD速龙 64位4000+( 2.2Ghz的双核CPU )','Vista/Win7/Win8/Win10','16位英雄还原超能幻想，每个拥有奇特外形的天诺英雄都有着独特的定位和属性。选择不同的超能英雄进行游戏，获得不同超凡体验。',1551744000000,'Digital Extremes','北京畅游时代数码技术有限公司','picture/game/xingjizhanjia.jpg','picture/bj/xingjizhanjia.jpg','动作冒险'),
(NULL,'铁甲雄兵',0,'8 GB','NVIDIA Geforce GT 430 / AMD HD5550','15 GB','Intel酷睿双核 2.5GHz','Windows 7、Windows 8、Windows 10','《铁甲雄兵》是云蟾游戏历时多年潜心自主研发的一款军团战争网游。游戏秉承着以匠心致初心精神，致力为玩家们打造一个公平的竞技环境。游戏采用自主研发的Evolution引擎，为玩家提供了一个波澜壮阔的融合中西方文化的战场。玩家在战场中将扮演统兵作战的将领，率领军团征战沙场、攻城略地，在战火中感受真刀真枪的厮杀，体验原汁原味的古代战场氛围。',1556150400000,'上海云蟾数码科技有限公司','上海云蟾数码科技有限公司','picture/game/tiejiaxiongbing.jpg','picture/bj/tiejiaxiongbing.jpg','动作冒险'),
(NULL,'作业疯了',28,'2 GB','256 mb video memory,shader model 3.0+','1 GB','2 Ghz','Windows7（64位）','这些题真的有点“难”，你可能会因为无法顺利解题而怀疑人生。但我们希望能通过这种方式，让广大玩家能体会中国家长在辅导孩子作业时产生的崩溃感觉，同时更能理解作为孩子做不出题时的无助心情。总之不要因为解不出小学生数学题而产生给我们寄刀片的想法就好~~^_^',1560470400000,'三脚猫','Gamera Game','picture/game/zuoyefengle.jpg','picture/bj/zuoyefengle.jpg','休闲娱乐'),
(NULL,'波西亚时光',98,'6 GB','NVIDIA GeForce GTX 460','5 GB','Intel(R) Core(TM) i3-4340 CPU @ 3.60GHz','Windows 7+ 需要64位处理器和操作系统','欢迎来到波西亚-一个座落在自由城市联盟边缘的港口城市。虽然北方的杜沃斯帝国和以塞亚公国的边境局势日益紧张，但这丝毫不会妨碍作为玩家的你，在这个看起来与世无争的小镇上享受几年温馨和平的工坊时光。',1532563200000,'重庆帕斯亚科技有限公司','重庆帕斯亚科技有限公司','picture/game/boxiyashiguang.jpeg','picture/bj/boxiyashiguang.jpg','休闲娱乐'),
(NULL,'失落城堡',33,'2 GB','GeForce 8800','1 GB','1GHz','Windows XP/7/8/10','《失落城堡》是包含了rogue-like随机元素的动作冒险类游戏，尝试用随机拾取的装备，道具和宝物挑战盘踞城堡的敌人。',1547683200000,'Hunter Studio','Another Indie','picture/game/shiluochengbao.jpeg','picture/bj/shiluochengbao.jpg','休闲娱乐'),
(NULL,'饥荒',24,'1 GB','AMD Radeon HD 5450','2 GB','Intel(R) Core(TM) i3 CPU E 330 @ 2.13GHz','vista/win7及以上','《饥荒：联机版》是一款乐趣无穷的沙盒生存类游戏。在游戏中，你可以和小伙伴一起探索世界、建造工具、击败怪物，感受求生的刺激与欢乐。叫上伙伴们组队玩沙盒，一起闹饥荒吧！',1476921600000,'klei','klei','picture/game/jihuang.jpeg','picture/bj/jihuang.jpg','休闲娱乐');


