// 加载express模块
const express = require('express');
// 加载MD5模块
const md5 = require('md5');
// 加载cors模块
const cors = require('cors');
// 加载body-parser中间件
const bodyParser = require('body-parser');
// 加载mysql模块
const mysql = require('mysql');
const { query } = require('express');

// 创建mysql连接池
const pool = mysql.createPool({
    // 数据库服务器地址
    host: '127.0.0.1',
    // 数据库服务器端口号
    port: 3306,
    // 数据库用户名、密码、数据库名称
    user: 'root',
    password: '',
    database: '4u',
    // 编码方式
    charset: 'utf8',
    // 最大连接数
    connectionLimit: 20
})

// 创建web服务器实例
const server = express();

// 将cors作为server的中间件
server.use(cors({
    origin: ['http://localhost:8080', 'http://127.0.0.1:8080']
}))

//将bodyParser作为Server的中间件
server.use(bodyParser.urlencoded({ extended: false }));

// 托管静态资源
server.use(express.static("./public"))

// 用户登录接口
server.post('/login', (req, res) => {
    // 获取前台传入的用户名和密码
    let username = req.body.username;
    let pwd = req.body.pwd;
    // 在数据库根据用户名和密码进行查找全部信息，如果匹配则登录成功
    let sql = 'SELECT username,pwd FROM 4u_user WHERE username=? AND pwd=MD5(?)';
    pool.query(sql, [username, pwd], (error, results) => {
        if (error) throw error;
        if (results.length == 0) {
            res.send({ message: "登录失败", code: 0 })
        } else {
            res.send({ message: "登录成功", code: 1, userInfo: results[0] })
        }
    })
})

// 用户注册接口
server.post('/register', (req, res) => {
    // 获取用户信息
    let username = req.body.username;
    let pwd = req.body.pwd;
    let email = req.body.email;
    let phone = req.body.phone;
    let r_name = req.body.r_name;
    // 查找用户是否存在
    let sql = 'SELECT COUNT(uid) AS count FROM 4u_user WHERE username=?';
    pool.query(sql, [username], (err, results) => {
        if (err) throw err;
        // 用户不存在则插入记录
        if (results[0].count == 0) {
            sql = 'INSERT INTO 4u_user(username,pwd,email,phone,r_name) VALUES(?,MD5(?),?,?,?)';
            pool.query(sql, [username, pwd, email, phone, r_name], (err, results) => {
                if (err) throw err;
                res.send({ message: '注册成功', code: 1 });
            })
        } else {
            res.send({ message: '用户已存在', code: 0 });
        }
    })
})

//获取所有商品信息列表 
server.get('/shop', (req, res) => {
    //SQL查询
    let sql = 'SELECT pid,lid,price,pname,laptop_img FROM 4u_laptop';
    // 执行SQL查询
    pool.query(sql, (error, results) => {
        if (error) throw error;
        //results代表的返回的结果集,为数组类型;同是在该数组中包含了一个对象,该对象就是详细信息,在使用时,无需返回数组可直接返回对象
        //results[0]代表的就是详细信息的对象
        res.send({ message: '查询成功', code: 1, results: results });
    });
})

// 分类查询
// 商品初见分类查询
server.get("/category", (req, res) => {
    // 获取分类id
    let lid = req.query.lid;
    // 数据库查询
    let sql = "SELECT pid,price,pname,laptop_img FROM 4u_laptop WHERE lid=?";
    pool.query(sql, [lid], (error, results) => {
        if (error) throw error;
        res.send({ message: '查询成功', code: 1, results: results })
    })
})

// 获取商品详细信息
server.get("/details", (req, res) => {
    // 获取商品id
    let pid = req.query.pid;
    // sql查询单一商品的详细信息
    let sql = "SELECT p.pid,p.pname,p.price,p.laptop_img,title,details,img1,img2,img3,img4,img5 FROM 4u_laptop AS p INNER JOIN 4u_lappic AS l ON p.pid=l.pid WHERE l.pid=?";
    pool.query(sql, [pid], (err, results) => {
        if (err) throw err;
        res.send({ message: '查询成功', code: 1, results: results[0] })
    })
})

// 购物车商品信息
server.get("/cart", (req, res) => {
    // 查询添加到购物车表里的商品
    let sql = "SELECT cid,pname,price,count FROM 4u_shop_cart";
    pool.query(sql, (err, results) => {
        if (err) throw err;
        // results代表的返回的结果集,为数组类型;results[0]代表详细信息的对象
        res.send({ message: '查询成功', code: 1, results: results })
    })
})

//添加商品路由
// server.get("/addproduct", (req, res) => {
//     let pname=req.body.pname;
//     let price=req.body.price;
//     let count=req.body.count;
//     // 向数据库添加商品
//     let sql = "INSERT INTO 4u_shop_cart(pname,price,count) VALUES(?) "
//     pool.query(sql, [pname,price,count], (err, results) => {
//         if (err) throw err;
//         // 插入数据
//         res.send({ message: '添加成功', code: 1, results: results })
//     })
// })


// 指定web服务器监听的端口
server.listen(3000);