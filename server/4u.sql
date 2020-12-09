#设置客户端连接服务器端的编码为UTF-8
SET NAMES UTF8;
#丢弃数据库，如果存在
DROP DATABASE IF EXISTS 4u;
#创建新的数据库
CREATE DATABASE 4u CHARSET = UTF8;
#进入数据库
USE 4u;


-- #创建保存用户信息数据的表4u_user
CREATE TABLE `4u_user`(
    `uid` INT unsigned NOT NULL AUTO_INCREMENT COMMENT '用户id，主键且自增', 
    `username` VARCHAR(32) NOT NULL COMMENT '用户名，唯一',
    `pwd` VARCHAR(32) NOT NULL COMMENT '用户密码，MD5', 
    `email` VARCHAR(32) NULL COMMENT '用户邮箱',
    `phone` VARCHAR(16) NOT NULL UNIQUE COMMENT '用户手机号码', 
    `r_name` VARCHAR(32) DEFAULT NULL COMMENT '用户真实姓名',
    PRIMARY KEY(`uid`),
    UNIQUE KEY `username` (`username`)
)ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- #插入用户信息数据
INSERT INTO `4u_user` (`uid`,`username`,`pwd`,`email`,`phone`,`r_name`) VALUES (1,'11111111','11111111','365311807@qq.com','18283348181','yhh');
INSERT INTO `4u_user` (`uid`,`username`,`pwd`,`email`,`phone`,`r_name`) VALUES (2,'123','123','365311807@qq.com','13548419102','yhh');
INSERT INTO `4u_user` (`uid`,`username`,`pwd`,`email`,`phone`,`r_name`) VALUES (3,'111','111','365311807@qq.com','15280960169','yhh');


-- #创建用户购物车表4u_shopping_cart
CREATE TABLE 4u_shop_cart(
    `cid` INT AUTO_INCREMENT COMMENT '购物车商品id',
    `pname` VARCHAR(32) COMMENT '商品名',
    `price` DECIMAL(10, 2) COMMENT '商品价格',
    `count` INT COMMENT '购买数量',
    PRIMARY KEY(cid)
)ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
-- 购物车内数据
INSERT INTO 4u_shop_cart VALUES (1,'向日葵',299,2);
INSERT INTO 4u_shop_cart VALUES (2,'满天星',199,3);
-- INSERT INTO 4u_shopping_cart VALUES (2,10);
-- INSERT INTO 4u_shopping_cart VALUES (3,10);
-- INSERT INTO 4u_shopping_cart VALUES (4,10);

-- #创建用户订单表4u_order
-- CREATE TABLE 4u_order(
--     `aid` INT PRIMARY KEY NOT NULL AUTO_INCREMENT COMMENT '订单编号',
--     `address` VARCHAR(128) COMMENT '用户地址',
--     `ststus` INT(10) COMMENT '货物状态',
--     `order_time` INT COMMENT '订购时间',
--     `pay_time` INT COMMENT '支付时间',
--     `deliver_time` INT COMMENT '派送时间',
--     `received_time` INT COMMENT '收货时间'
-- );
-- INSERT INTO 4u_order VALUES (1, 1, 1, '20200909', '20200909', '20200910', '20200910');
-- INSERT INTO 4u_order VALUES (2, 2, 2, '20200909', '20200909', '20200910', '20200910');
-- INSERT INTO 4u_order VALUES (3, 1, 3, '20200909', '20200909', '20200910', '20200910');
-- INSERT INTO 4u_order VALUES (4, 3, 4, '20200909', '20200909', '20200910', '20200910');
-- INSERT INTO 4u_order VALUES (5, 2, 5, '20200909', '20200909', '20200910', '20200910');

-- #创建商品表4u_laptop
CREATE TABLE 4u_laptop(
    `pid` INT NOT NULL AUTO_INCREMENT COMMENT '商品id',
    `lid` INT NOT NULL COMMENT '商品种类id',
    `price` DECIMAL(10, 2) COMMENT '商品价格',
    `pname` VARCHAR(32) COMMENT '商品名',
    `laptop_img` VARCHAR(128) COMMENT '商品图片存放地址',
    PRIMARY KEY(`pid`)
)ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- #插入数据
INSERT INTO `4u_laptop` (`pid`,`lid`,`price`,`pname`,`laptop_img`) VALUES (1,2,'200.00','向日葵', "http://127.0.0.1:3000/1.png");
INSERT INTO `4u_laptop` (`pid`,`lid`,`price`,`pname`,`laptop_img`) VALUES (2,1,'199.00','郁金香', "http://127.0.0.1:3000/2.png");
INSERT INTO `4u_laptop` (`pid`,`lid`,`price`,`pname`,`laptop_img`) VALUES (3,1,'188.00','白玫瑰', "http://127.0.0.1:3000/3.png");
INSERT INTO `4u_laptop` (`pid`,`lid`,`price`,`pname`,`laptop_img`) VALUES (4,3,'88.00', '红玫瑰', "http://127.0.0.1:3000/4.png");
INSERT INTO `4u_laptop` (`pid`,`lid`,`price`,`pname`,`laptop_img`) VALUES (5,2,'99.00', '风信子', "http://127.0.0.1:3000/5.png");
INSERT INTO `4u_laptop` (`pid`,`lid`,`price`,`pname`,`laptop_img`) VALUES (6,3,'99.99', '满天星', "http://127.0.0.1:3000/6.png");
INSERT INTO `4u_laptop` (`pid`,`lid`,`price`,`pname`,`laptop_img`) VALUES (7,1,'88.88', '康乃馨', "http://127.0.0.1:3000/7.png");
INSERT INTO `4u_laptop` (`pid`,`lid`,`price`,`pname`,`laptop_img`) VALUES (8,2,'299.00','蓝玫瑰', "http://127.0.0.1:3000/8.png");
INSERT INTO `4u_laptop` (`pid`,`lid`,`price`,`pname`,`laptop_img`) VALUES (9,3,'399.00','粉百合', "http://127.0.0.1:3000/9.png");
INSERT INTO `4u_laptop` (`pid`,`lid`,`price`,`pname`,`laptop_img`) VALUES (10,3,'399.00','郁金香', "http://127.0.0.1:3000/1.png");
INSERT INTO `4u_laptop` (`pid`,`lid`,`price`,`pname`,`laptop_img`) VALUES (11,3,'399.00','风信子', "http://127.0.0.1:3000/2.png");
INSERT INTO `4u_laptop` (`pid`,`lid`,`price`,`pname`,`laptop_img`) VALUES (12,3,'399.00','粉百合', "http://127.0.0.1:3000/3.png");
INSERT INTO `4u_laptop` (`pid`,`lid`,`price`,`pname`,`laptop_img`) VALUES (13,3,'399.00','康乃馨', "http://127.0.0.1:3000/4.png");
INSERT INTO `4u_laptop` (`pid`,`lid`,`price`,`pname`,`laptop_img`) VALUES (14,3,'399.00','粉百合', "http://127.0.0.1:3000/5.png");

-- #创建商品详情表4u_laptop_pic
CREATE TABLE 4u_lappic(
    `pid` INT NOT NULL AUTO_INCREMENT COMMENT '商品id',
    `pname` VARCHAR(32) COMMENT '商品名',
    `price` DECIMAL(10, 2) COMMENT '商品价格',
    `title` VARCHAR(128) COMMENT '商品类别名',
    `details` VARCHAR(128) COMMENT '商品描述',
    `img1` VARCHAR(128) COMMENT '商品图片存放地址1',
    `img2` VARCHAR(128) COMMENT '商品图片存放地址2',
    `img3` VARCHAR(128) COMMENT '商品图片存放地址3',
    `img4` VARCHAR(128) COMMENT '商品图片存放地址4',
    `img5` VARCHAR(128) COMMENT '商品图片存放地址5',
    PRIMARY KEY(pid)
)ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- 插入商品详情数据
INSERT INTO `4u_lappic` (`pid`,`title`,`details`,`img1`,`img2`,`img3`) VALUES (1,'约定','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Proin libero nunc consequat interdum. Condimentum lacinia quis vel eros donec ac. Mauris sit amet massa vitae tortor. Quisque id diam vel quam elementum pulvinar.',"http://127.0.0.1:3000/product-details/1.png","http://127.0.0.1:3000/product-details/2.png","http://127.0.0.1:3000/product-details/3.png");
INSERT INTO `4u_lappic` (`pid`,`title`,`details`,`img1`,`img2`,`img3`) VALUES (2,'约定','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Proin libero nunc consequat interdum. Condimentum lacinia quis vel eros donec ac. Mauris sit amet massa vitae tortor. Quisque id diam vel quam elementum pulvinar.',"http://127.0.0.1:3000/product-details/1.png","http://127.0.0.1:3000/product-details/2.png","http://127.0.0.1:3000/product-details/3.png");
INSERT INTO `4u_lappic` (`pid`,`title`,`details`,`img1`,`img2`,`img3`) VALUES (3,'约定','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Proin libero nunc consequat interdum. Condimentum lacinia quis vel eros donec ac. Mauris sit amet massa vitae tortor. Quisque id diam vel quam elementum pulvinar.',"http://127.0.0.1:3000/product-details/1.png","http://127.0.0.1:3000/product-details/2.png","http://127.0.0.1:3000/product-details/3.png");
INSERT INTO `4u_lappic` (`pid`,`title`,`details`,`img1`,`img2`,`img3`) VALUES (4,'约定','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Proin libero nunc consequat interdum. Condimentum lacinia quis vel eros donec ac. Mauris sit amet massa vitae tortor. Quisque id diam vel quam elementum pulvinar.',"http://127.0.0.1:3000/product-details/1.png","http://127.0.0.1:3000/product-details/2.png","http://127.0.0.1:3000/product-details/3.png");
INSERT INTO `4u_lappic` (`pid`,`title`,`details`,`img1`,`img2`,`img3`) VALUES (5,'约定','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Proin libero nunc consequat interdum. Condimentum lacinia quis vel eros donec ac. Mauris sit amet massa vitae tortor. Quisque id diam vel quam elementum pulvinar.',"http://127.0.0.1:3000/product-details/1.png","http://127.0.0.1:3000/product-details/2.png","http://127.0.0.1:3000/product-details/3.png");
INSERT INTO `4u_lappic` (`pid`,`title`,`details`,`img1`,`img2`,`img3`) VALUES (6,'约定','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Proin libero nunc consequat interdum. Condimentum lacinia quis vel eros donec ac. Mauris sit amet massa vitae tortor. Quisque id diam vel quam elementum pulvinar.',"http://127.0.0.1:3000/product-details/1.png","http://127.0.0.1:3000/product-details/2.png","http://127.0.0.1:3000/product-details/3.png");
INSERT INTO `4u_lappic` (`pid`,`title`,`details`,`img1`,`img2`,`img3`) VALUES (7,'约定','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Proin libero nunc consequat interdum. Condimentum lacinia quis vel eros donec ac. Mauris sit amet massa vitae tortor. Quisque id diam vel quam elementum pulvinar.',"http://127.0.0.1:3000/product-details/1.png","http://127.0.0.1:3000/product-details/2.png","http://127.0.0.1:3000/product-details/3.png");
INSERT INTO `4u_lappic` (`pid`,`title`,`details`,`img1`,`img2`,`img3`) VALUES (8,'约定','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Proin libero nunc consequat interdum. Condimentum lacinia quis vel eros donec ac. Mauris sit amet massa vitae tortor. Quisque id diam vel quam elementum pulvinar.',"http://127.0.0.1:3000/product-details/1.png","http://127.0.0.1:3000/product-details/2.png","http://127.0.0.1:3000/product-details/3.png");
INSERT INTO `4u_lappic` (`pid`,`title`,`details`,`img1`,`img2`,`img3`) VALUES (9,'约定','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Proin libero nunc consequat interdum. Condimentum lacinia quis vel eros donec ac. Mauris sit amet massa vitae tortor. Quisque id diam vel quam elementum pulvinar.',"http://127.0.0.1:3000/product-details/1.png","http://127.0.0.1:3000/product-details/2.png","http://127.0.0.1:3000/product-details/3.png");
INSERT INTO `4u_lappic` (`pid`,`title`,`details`,`img1`,`img2`,`img3`) VALUES (10,'约定','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Proin libero nunc consequat interdum. Condimentum lacinia quis vel eros donec ac. Mauris sit amet massa vitae tortor. Quisque id diam vel quam elementum pulvinar.',"http://127.0.0.1:3000/product-details/1.png","http://127.0.0.1:3000/product-details/2.png","http://127.0.0.1:3000/product-details/3.png");
INSERT INTO `4u_lappic` (`pid`,`title`,`details`,`img1`,`img2`,`img3`) VALUES (11,'约定','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Proin libero nunc consequat interdum. Condimentum lacinia quis vel eros donec ac. Mauris sit amet massa vitae tortor. Quisque id diam vel quam elementum pulvinar.',"http://127.0.0.1:3000/product-details/1.png","http://127.0.0.1:3000/product-details/2.png","http://127.0.0.1:3000/product-details/3.png");
INSERT INTO `4u_lappic` (`pid`,`title`,`details`,`img1`,`img2`,`img3`) VALUES (12,'约定','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Proin libero nunc consequat interdum. Condimentum lacinia quis vel eros donec ac. Mauris sit amet massa vitae tortor. Quisque id diam vel quam elementum pulvinar.',"http://127.0.0.1:3000/product-details/1.png","http://127.0.0.1:3000/product-details/2.png","http://127.0.0.1:3000/product-details/3.png");
INSERT INTO `4u_lappic` (`pid`,`title`,`details`,`img1`,`img2`,`img3`) VALUES (13,'约定','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Proin libero nunc consequat interdum. Condimentum lacinia quis vel eros donec ac. Mauris sit amet massa vitae tortor. Quisque id diam vel quam elementum pulvinar.',"http://127.0.0.1:3000/product-details/1.png","http://127.0.0.1:3000/product-details/2.png","http://127.0.0.1:3000/product-details/3.png");
INSERT INTO `4u_lappic` (`pid`,`title`,`details`,`img1`,`img2`,`img3`) VALUES (14,'约定','Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Scelerisque eleifend donec pretium vulputate sapien nec sagittis. Proin libero nunc consequat interdum. Condimentum lacinia quis vel eros donec ac. Mauris sit amet massa vitae tortor. Quisque id diam vel quam elementum pulvinar.',"http://127.0.0.1:3000/product-details/1.png","http://127.0.0.1:3000/product-details/2.png","http://127.0.0.1:3000/product-details/3.png");
