<%--
  Created by IntelliJ IDEA.
  User: dal
  Date: 2023/2/5
  Time: 15:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<!-- Basic -->

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">

    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Site Metas -->
    <title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="">

    <!-- Site Icons -->
    <link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
    <link rel="apple-touch-icon" href="images/apple-touch-icon.png">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <!-- Site CSS -->
    <link rel="stylesheet" href="css/style.css">
    <!-- Responsive CSS -->
    <link rel="stylesheet" href="css/responsive.css">
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/custom.css">

    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .modal {
            /* 默认隐藏 */
            display: none;
            /* 根据浏览器定位 */
            position: fixed;
            /* 放在顶部 */
            z-index: 1;
            left: 0;
            top: 0;
            width: 100%; /*全宽 */
            height: 100%; /*全高 */
            overflow: auto;
            background-color: rgba(0,0,0,0.4); /* 背景色 */
        }
        /*模态框内容*/
        .modal-content {
            display: flex; /*采用flexbox布局*/
            flex-direction: column; /*垂直排列*/
            position: relative;
            background-color: #fefefe;
            margin: 10% auto; /*距顶部15% 水平居中*/
            padding: 20px;
            border: 1px solid #888;
            width: 80%;
            animation: topDown 2s; /* 自定义动画，从模态框内容上到下出现*/
        }
        @keyframes topDown {
            from {top: -300px; opacity: 0}
            to {top: 0; opacity: 1}
        }
        /*模态框头部*/
        .modal-header {
            display: flex; /*采用flexbox布局*/
            flex-direction: row; /*水平布局*/
            align-items: center; /*内容垂直居中*/
            justify-content: space-between;
        }
        /*关闭X 样式*/
        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }
        .close:hover {
            color: black;
            text-decoration: none;
            cursor: pointer;
        }
        .mo-img>img{
            width: 300px;
            height: 300px;
        }
        .mai{
            margin-top: 20px;
            width: 200px;
            height: 50px;
            border-radius: 20px;
            border: 4px solid red;
            background-color: rgb(218, 104, 104);
            text-align: center;
            padding: 6px;
        }
        .red{
            color: red;
            font-size: large;

        }
    </style>
</head>

<body>

<!-- Start Main Top -->
<div class="main-top">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="custom-select-box">
                    <select id="basic" class="selectpicker show-tick form-control" data-placeholder="￥ CHI">
                        <option>¥ CHI</option>
                        <option>$ USD</option>
                        <option>€ EUR</option>
                    </select>
                </div>
                <div class="right-phone-box">
                    <p>咨询热线: <a href="#"> +86 198 1179 9755</a></p>
                </div>
                <div class="our-link">
                    <ul>
                        <li><a href="#"><i class="fa fa-user s_color"></i> 我的账户</a></li>
                        <li><a href="#"><i class="fas fa-location-arrow"></i> 位置</a></li>
                        <li><a href="#"><i class="fas fa-headset"></i> 联系我们</a></li>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
<%--                <div class="login-box">--%>
<%--                    <select id="basic" class="selectpicker show-tick form-control" data-placeholder="登录">--%>
<%--                        <option value="none" selected disabled aria-hidden="true">请选择选项</option>--%>
<%--                        <option value="注册">注册</option>--%>
<%--                        <option value="登录">登录</option>--%>
<%--                    </select>--%>

<%--                </div>--%>
                <div class="text-slid-box">
                    <div id="offer-box" class="carouselTicker">
                        <ul class="offer-box">
                            <li>
                                <i class="fab fa-opencart"></i> 新鲜的农产品
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> 体验云养殖的快乐
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> 假期携家的好去处
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> 还你的田园梦
                            </li>
                            <li>
                                <i class="fab fa-opencart"></i> 给我一个机会，还你的田园梦
                            </li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- End Main Top -->

<!-- Start Main Top -->
<header class="main-header">
    <!-- Start Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-default bootsnav">
        <div class="container">
            <!-- Start Header Navigation -->
            <div class="navbar-header">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu" aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="index.jsp"><img src="images/logo.png" class="logo" alt=""></a>
            </div>
            <!-- End Header Navigation -->

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="navbar-menu">
                <ul class="nav navbar-nav ml-auto" data-in="fadeInDown" data-out="fadeOutUp">
                    <li class="nav-item active"><a class="nav-link" href="index.jsp">主页</a></li>
                    <!-- <li class="nav-item"><a class="nav-link" href="about.html">关于我们</a></li> -->
                    <!-- <li class="dropdown">
                       <a href="#" class="nav-link dropdown-toggle arrow" data-toggle="dropdown">商城</a>
                       <ul class="dropdown-menu">
                           <li><a href="shop.html">商城</a></li>
                            <li><a href="shop-detail.html">购买细节</a></li>
                           <li><a href="cart.html">购物车·</a></li>
                           <li><a href="checkout.html">结账</a></li>
                           <li><a href="my-account.html">我的账户</a></li>
                           <li><a href="wishlist.html">愿望清单</a></li>
                       </ul>
                   </li>  -->
                    <li class="nav-item"><a class="nav-link" href="xianxia2.html">线下体验</a></li>



<%--                    <li class="nav-item"><a class="nav-link" href="gallery.html">社区</a></li>--%>
                    <li class="nav-item"><a class="nav-link" href="my-account.jsp">我的账户</a></li>
<%--                    <li class="nav-item"><a class="nav-link" href="contact-us.html">联系我们</a></li>--%>
                </ul>
            </div>
            <!-- /.navbar-collapse -->

            <!-- Start Atribute Navigation -->
            <div class="attr-nav">
                <ul>
                    <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
                    <li class="side-menu">
                        <a href="mycart.html">
                            <i class="fa fa-shopping-bag"></i>
                            <span class="badge">3</span>
                            <p>我的购物车</p>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- End Atribute Navigation -->
        </div>
        <!-- Start Side Menu -->
        <div class="side">
            <a href="#" class="close-side"><i class="fa fa-times"></i></a>
            <li class="cart-box">
                <ul class="cart-list">
                    <li>
                        <a href="#" class="photo"><img src="images/img-pro-01.jpg" class="cart-thumb" alt="" /></a>
                        <h6><a href="#">商品一</a></h6>
                        <p>1x - <span class="price">￥80.00</span></p>
                    </li>
                    <li>
                        <a href="#" class="photo"><img src="images/img-pro-02.jpg" class="cart-thumb" alt="" /></a>
                        <h6><a href="#">商品二</a></h6>
                        <p>1x - <span class="price">￥60.00</span></p>
                    </li>
                    <li>
                        <a href="#" class="photo"><img src="images/img-pro-03.jpg" class="cart-thumb" alt="" /></a>
                        <h6><a href="#">商品三</a></h6>
                        <p>1x - <span class="price">￥40.00</span></p>
                    </li>
                    <li class="total">
                        <a href="#" class="btn btn-default hvr-hover btn-cart">购物车详情</a>
                        <span class="float-right"><strong>总计</strong>: ￥180.00</span>
                    </li>
                </ul>
            </li>
        </div>
        <!-- End Side Menu -->
    </nav>
    <!-- End Navigation -->
</header>
<!-- End Main Top -->

<!-- Start Top Search -->
<div class="top-search">
    <div class="container">
        <div class="input-group">
            <span class="input-group-addon"><i class="fa fa-search"></i></span>
            <input type="text" class="form-control" placeholder="Search">
            <span class="input-group-addon close-search"><i class="fa fa-times"></i></span>
        </div>
    </div>
</div>
<!-- End Top Search -->

<!-- Start All Title Box -->
<div class="all-title-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>购物车</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.jsp">主页</a></li>
                    <li class="breadcrumb-item active">购物车</li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End All Title Box -->

<!-- Start Cart  -->
<div class="cart-box-main">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="table-main table-responsive">
                    <table class="table">
                        <thead>
                        <tr>
                            <th>图片</th>
                            <th>产品名</th>
                            <th>单价</th>
                            <th>数量</th>
                            <th>总计金额</th>
                            <th>移除</th>
                        </tr>
                        </thead>
                        <tbody>
                        <tr>
                            <td class="thumbnail-img">
                                <a href="#">
                                    <img class="img-fluid" src="images/img-pro-01.jpg" alt="" />
                                </a>
                            </td>
                            <td class="name-pr">
                                <a href="#">
                                    商品一
                                </a>
                            </td>
                            <td class="price-pr">
                                <p>￥ 80.0</p>
                            </td>
                            <td class="quantity-box"><input type="number" size="4" value="1" min="0" step="1" class="c-input-text qty text"></td>
                            <td class="total-pr">
                                <p>￥ 80.0</p>
                            </td>
                            <td class="remove-pr">
                                <a href="#">
                                    <i class="fas fa-times"></i>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="thumbnail-img">
                                <a href="#">
                                    <img class="img-fluid" src="images/img-pro-02.jpg" alt="" />
                                </a>
                            </td>
                            <td class="name-pr">
                                <a href="#">
                                    商品二
                                </a>
                            </td>
                            <td class="price-pr">
                                <p>￥ 60.0</p>
                            </td>
                            <td class="quantity-box"><input type="number" size="4" value="1" min="0" step="1" class="c-input-text qty text"></td>
                            <td class="total-pr">
                                <p>￥ 80.0</p>
                            </td>
                            <td class="remove-pr">
                                <a href="#">
                                    <i class="fas fa-times"></i>
                                </a>
                            </td>
                        </tr>
                        <tr>
                            <td class="thumbnail-img">
                                <a href="#">
                                    <img class="img-fluid" src="images/img-pro-03.jpg" alt="" />
                                </a>
                            </td>
                            <td class="name-pr">
                                <a href="#">
                                    商品三
                                </a>
                            </td>
                            <td class="price-pr">
                                <p>￥ 30.0</p>
                            </td>
                            <td class="quantity-box"><input type="number" size="4" value="1" min="0" step="1" class="c-input-text qty text"></td>
                            <td class="total-pr">
                                <p>￥ 80.0</p>
                            </td>
                            <td class="remove-pr">
                                <a href="#">
                                    <i class="fas fa-times"></i>
                                </a>
                            </td>
                        </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>

        <div class="row my-5">
            <div class="col-lg-6 col-sm-6">
                <div class="coupon-box">
                    <div class="input-group input-group-sm">
                        <input class="form-control" placeholder="备注   " aria-label="Coupon code" type="text">
                        <div class="input-group-append">
                            <button class="btn btn-theme" type="button">订单备注</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6 col-sm-6">
                <div class="update-box">
                    <input value="更新购物车" type="submit">
                </div>
            </div>
        </div>

        <div class="row my-5">
            <div class="col-lg-8 col-sm-12"></div>
            <div class="col-lg-4 col-sm-12">
                <div class="order-box">
                    <h3>价格详情</h3>
                    <div class="d-flex">
                        <h4>总价</h4>
                        <div class="ml-auto font-weight-bold"> $ 130 </div>
                    </div>
                    <div class="d-flex">
                        <h4>优惠</h4>
                        <div class="ml-auto font-weight-bold"> $ 40 </div>
                    </div>
                    <hr class="my-1">
                    <!-- <div class="d-flex">
                        <h4>Coupon Discount</h4>
                        <div class="ml-auto font-weight-bold"> $ 10 </div>
                    </div>
                    <div class="d-flex">
                        <h4>Tax</h4>
                        <div class="ml-auto font-weight-bold"> $ 2 </div>
                    </div> -->
                    <div class="d-flex">
                        <h4>邮费</h4>
                        <div class="ml-auto font-weight-bold"> 免费 </div>
                    </div>
                    <hr>
                    <div class="d-flex gr-total">
                        <h5>实际支付</h5>
                        <div class="ml-auto h5"> ￥90 </div>
                    </div>
                    <hr> </div>
            </div>
            <div class="col-12 d-flex shopping-box"><a  class="triggerBtn ml-auto btn hvr-hover">支付</a> </div>
        </div>

    </div>
</div>

<!-- End Cart -->



<!-- 模态框 -->
<div id="myModal" class="modal">
    <div class="modal-content">

        <!-- <div class="modal-header">
            <h2>支付</h2>
            <span id="closeBtn" class="close">&times;</span>
        </div> -->

        <div class="modal-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-3"><h4></h4></div>
                    <div class="col-md-7 h1">支付<span class="small .text-muted">（请在15分钟内完成）</span></div>
                    <div class="col-md-2"> <span id="closeBtn" class="close">&times;</span></div>
                </div>

            </div>
            <div class="row">
                <div class="col-md-8">
                    <div class="row">
                        <div class="col-md-2"><h4>商品：</h4></div>
                        <div class="col-md-10">认养水果</div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">数量：</div>
                        <div class="col-md-10">2</div>
                    </div>
                    <div class="row">
                        <div class="col-md-2 ">单价：</div>
                        <div class="col-md-10"><span class="red">30</span>元
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">总价：</div>
                        <div class="col-md-10"><span class="red">60</span>元</div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">收货地址</div>
                        <div class="col-md-10">xxx区xxx街道xx号</div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">实付款</div>
                        <div class="col-md-10"><span class="red">60</span>元</div>
                    </div>
                    <div class="row">
                        <div class="col-md-2">支付密码</div>
                        <div class="col-md-10"><input type="password"></div>
                    </div>
                    <div class="row">
                        <div class="col-md-3"></div>
                        <div class="col-md-9">
                            <div class="mai">
                                <a href="#"><div> <h1>付款</h1></div></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 mo-img"><img src="images/cati02.jpg"></div>
            </div>
        </div>

    </div>

    <div class="modal-footer">

    </div>

</div>
</div>


<!-- Start Footer  -->
<footer>
    <div class="footer-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-top-box">
                        <h3>工作时间</h3>
                        <ul class="list-time">
                            <li>周一到周五：24h营业</li> <li>周六，周日：7：00-23：30</li> <li><span></span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-top-box">
                        <h3>反馈</h3>
                        <form class="newsletter-box">
                            <div class="form-group">
                                <input class="" type="email" name="Email" placeholder="Email Address*" />
                                <i class="fa fa-envelope"></i>
                            </div>
                            <button class="btn hvr-hover" type="submit">提交</button>
                        </form>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-top-box">
                        <h3>社交媒体</h3>
                        <p>关注我们的社交账号</p>
                        <ul>
                            <li><a href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-linkedin" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-rss" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <hr>
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-widget">
                        <h4>关于认养模式</h4>
                        <p>这将是一次农村电子商务的新农村现代化的启程。八亿农民消费和农业现代化的启动，
                            是中国产能转型升级的另一个方向点和爆发点。不久的将来，
                            我们相信新农村现代化的发展让土地更加增值，更多年轻人回到农村做新型农民，创业农民，产业农民，他们才是新乡村的缔造者。</p>
                        <p>每个人的家园都在农村，心里都有一个世外桃源。认养模式能让我们早一天看到农村的“桃花源”。 </p>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-link">
                        <h4>关于我们</h4>
                        <p>您假期携全家城市周边放松的最好去处</p>
                        <p> 致力于打造我们城市居民的休闲区</p>

                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-link-contact">
                        <h4>联系我们</h4>
                        <ul>
                            <li>
                                <p><i class="fas fa-map-marker-alt"></i>地址：江西省九江市 <br>濂溪区前进东路551号<br>文友楼607 </p>
                            </li>
                            <li>
                                <p><i class="fas fa-phone-square"></i>电话: <a href="tel:+1-888705770">+ 86 198 1179 9755</a></p>
                            </li>
                            <li>
                                <p><i class="fas fa-envelope"></i>邮箱: <a href="mailto:contactinfo@gmail.com">152481870@qq.com</a></p>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!-- End Footer  -->

<!-- Start copyright  -->
<div class="footer-copyright">
    <p class="footer-company">All Rights Reserved. &copy; 2018 <a href="#">ThewayShop</a> Design By :
        <a href="https://html.design/">html design</a></p>
</div>
<!-- End copyright  -->

<a href="#" id="back-to-top" title="Back to top" style="display: none;">&uarr;</a>
<script>
    /*建立模态框对象*/
    var modalBox = {};
    /*获取模态框*/
    modalBox.modal = document.getElementById("myModal");
    /*获得trigger按钮*/
    // modalBox.triggerBtn = document.getElementBycla("triggerBtn");
    modalBox.triggerBtn = document.getElementsByClassName("triggerBtn");

    /*获得关闭按钮*/
    modalBox.closeBtn = document.getElementById("closeBtn");
    /*模态框显示*/
    modalBox.show = function() {
        console.log(this.modal);
        this.modal.style.display = "block";
        this.modal.style.zIndex=999;
    }
    /*模态框关闭*/
    modalBox.close = function() {
        this.modal.style.display = "none";
    }
    /*当用户点击模态框内容之外的区域，模态框也会关闭*/
    modalBox.outsideClick = function() {
        var modal = this.modal;
        window.onclick = function(event) {
            if(event.target == modal) {
                modal.style.display = "none";
            }
        }
    }

    /*模态框初始化*/
    modalBox.init = function() {
        var that = this;
        // this.triggerBtn.onclick = function() {
        //     that.show();}

        for(let i=0;i<this.triggerBtn.length;i++){
            this.triggerBtn[i].onclick = function() {
                that.show();
            }
        }

        this.closeBtn.onclick = function() {
            that.close();
        }
        this.outsideClick();
    }
    modalBox.init();
</script>
<!-- ALL JS FILES -->
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!-- ALL PLUGINS -->
<script src="js/jquery.superslides.min.js"></script>
<script src="js/bootstrap-select.js"></script>
<script src="js/inewsticker.js"></script>
<script src="js/bootsnav.js."></script>
<script src="js/images-loded.min.js"></script>
<script src="js/isotope.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/baguetteBox.min.js"></script>
<script src="js/form-validator.min.js"></script>
<script src="js/contact-form-script.js"></script>
<script src="js/custom.js"></script>
</body>

</html>
