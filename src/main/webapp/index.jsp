<%--
  Created by IntelliJ IDEA.
  User: dal
  Date: 2022/12/24
  Time: 18:45
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
    <title>Freshshop - Ecommerce Bootstrap 4 HTML Template</title>
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
    <script src="axios/index.js"></script>
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .img9{
            width: 500px;
            height: 280px;
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
                        <%--                        <li><a href="#"><i class="fas fa-headset"></i> ${user.username},欢迎你！</a></li>--%>
<%--                        <c:if test="${user.username!=null}">--%>
<%--                            <li><a href="#"><i class="fas "></i> ${user.username},欢迎你！</a></li>--%>
<%--                        </c:if>--%>
<%--                        <c:if test="${user.username==null}">--%>
<%--                            <li><a href="login.jsp"><i class="fas"></i>请先登录</a></li>--%>
<%--                        </c:if>--%>
                    </ul>
                </div>
            </div>
            <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                <div class="login-box">
                    <!-- <select id="basic" class="selectpicker show-tick form-control" data-placeholder="登录">
                        <option value="none" selected disabled aria-hidden="true">请选择选项</option>
                        <a href="注册.html"><option value="注册">注册</option></a>
                        <option value="登录">登录</option>
                    </select> -->
                    <c:if test="${user.username!=null}">
                        <li><a href="#"><i class="fas "></i> ${user.username},欢迎你！</a></li>
                    </c:if>
                    <c:if test="${user.username==null}">
                        <a href="register.jsp" style="color: white;">注册</a>
                        or
                        <a href="login.jsp" style="color: white;">登入</a>
                    </c:if>

                </div>
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
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar-menu"
                        aria-controls="navbars-rs-food" aria-expanded="false" aria-label="Toggle navigation">
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
                    <li class="nav-item"><a class="nav-link" href="xianshang1.html">认养专区</a></li>
                    <li class="nav-item"><a class="nav-link" href="xianxia2.html">线下体验</a></li>
<%--                    <li class="nav-item"><a class="nav-link" href="cart.html">社区</a></li>--%>
                    <li class="nav-item"><a class="nav-link" href="my-account.jsp">我的账户</a></li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->

            <!-- Start Atribute Navigation -->
            <div class="attr-nav">
                <ul>
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
                        <a href="#" class="photo"><img src="images/img-pro-01.jpg" class="cart-thumb" alt=""/></a>
                        <h6><a href="#">商品一</a></h6>
                        <p>1x - <span class="price">￥80.00</span></p>
                    </li>
                    <li>
                        <a href="#" class="photo"><img src="images/img-pro-02.jpg" class="cart-thumb" alt=""/></a>
                        <h6><a href="#">商品二</a></h6>
                        <p>1x - <span class="price">￥60.00</span></p>
                    </li>
                    <li>
                        <a href="#" class="photo"><img src="images/img-pro-03.jpg" class="cart-thumb" alt=""/></a>
                        <h6><a href="#">商品三</a></h6>
                        <p>1x - <span class="price">￥40.00</span></p>
                    </li>
                    <li class="total">
                        <a href="mycart.html" class="btn btn-default hvr-hover btn-cart">购物车详情</a>
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

<!-- Start Slider -->
<div id="slides-shop" class="cover-slides">
    <ul class="slides-container">
        <li class="text-center">
            <img src="images/banner01.jpg" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="m-b-20"><strong>欢迎来到 <br> 邻家认养 </strong></h1>
                        <p class="m-b-40">认养一只小鸡，一颗小树，在喧嚣的当下，让我们还你田园梦 <br></p>
                        <p><a class="btn hvr-hover" href="#">Shop New</a></p>
                    </div>
                </div>
            </div>
        </li>
        <li class="text-center">
            <img src="images/banner02.jpg" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="m-b-20"><strong>欢迎来到 <br> 邻家认养</strong></h1>
                        <p class="m-b-40">认养一只小鸡，一颗小树，在喧嚣的当下，让我们还你田园梦 <br> trends to see any changes in performance over
                            time.</p>
                        <p><a class="btn hvr-hover" href="#">Shop New</a></p>
                    </div>
                </div>
            </div>
        </li>
        <li class="text-center">
            <img src="images/banner03.jpg" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="m-b-20"><strong>欢迎来到<br> 邻家认养</strong></h1>
                        <p class="m-b-40">认养一只小鸡，一颗小树，在喧嚣的当下，让我们还你田园梦 <br> trends to see any changes in performance over
                            time.</p>
                        <p><a class="btn hvr-hover" href="#">Shop New</a></p>
                    </div>
                </div>
            </div>
        </li>
        <li class="text-center">
            <img src="images/banner04.jpg" alt="">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h1 class="m-b-20"><strong>欢迎来到 <br> 邻家认养</strong></h1>
                        <p class="m-b-40">认养一只小鸡，一颗小树，在喧嚣的当下，让我们还你田园梦 <br> trends to see any changes in performance over
                            time.</p>
                        <p><a class="btn hvr-hover" href="#">Shop New</a></p>
                    </div>
                </div>
            </div>
        </li>
    </ul>
    <div class="slides-navigation">
        <a href="#" class="next"><i class="fa fa-angle-right" aria-hidden="true"></i></a>
        <a href="#" class="prev"><i class="fa fa-angle-left" aria-hidden="true"></i></a>
    </div>
</div>
<!-- End Slider -->

<!-- Start Categories  -->
<div class="biaoti">
    <div class="t1">
        <a href="/linjia/selectRServlet">认养专区...</a>

    </div>

</div>

<div class="A_01">
    <div id="1" class="a_01">

        <a href="daohang.html?id=1"><img src="images/baicai.jpg" alt="">菜地认养区</a>
    </div>
    <div id="1" class="a_01">
        <a href="daohang.html?id=2"><img src="images/cati02.jpg" alt="">果树认养区</a>
    </div>
    <div id="1" class="a_01">

        <a href="daohang.html?id=3"><img src="images/cati03.jpg" alt="">家禽认养区</a>
    </div>
    <div id="1" class="a_01">
        <a href="daohang.html?id=4"><img src="images/cati04.jpg" alt="">家畜认养区</a>
    </div>
</div>


<div class="latest-blog">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="title-all text-center t1">

                    <h1><a href="/linjia/selectXServlet"> 农家线下体现 </a></h1>

                    <p>城市之外的放松</p>
                </div>
            </div>
        </div>
        <div class="row">

            <div class="col-md-6 col-lg-4 col-xl-4 ">
                <div class="blog-box">
                    <div class="blog-img">
                        <img class="img-fluid img9" src="images/fish.jpeg" alt=""/>
                    </div>
                    <a href="daohang2.html?id=7">
                        <div class="blog-content">
                            <div class="title-blog">
                                <h3>户外垂钓</h3>
                                <p>超大水域，超多鱼类</p>
                                <!-- <p>价格：300元/6h</p> -->
                            </div>

                        </div>
                    </a>
                </div>
            </div>
            <div class="col-md-6 col-lg-4 col-xl-4">
                <div class="blog-box">
                    <div class="blog-img">
                        <img class="img-fluid img9" src="images/home.jpeg" alt=""/>
                    </div>
                    <a href="daohang2.html?id=6">
                        <div class="blog-content">
                            <div class="title-blog">
                                <h3>清静民居</h3>
                                <p>远离城市喧嚣</p>
                                <!-- <p>价格：399元/晚</p> -->
                            </div>

                        </div>
                    </a>
                </div>
            </div>


            <div class="col-md-6 col-lg-4 col-xl-4">
                <div class="blog-box">
                    <div class="blog-img">
                        <img class="img-fluid img9" src="images/eat.jpeg" alt=""/>
                    </div>
                    <a href="daohang2.html?id=5">
                        <div class="blog-content">
                            <div class="title-blog">
                                <h3>户外野炊</h3>
                                <p>户外烧烤，团建的最佳选择</p>
                                <!-- <p>价格：100元/</p> -->
                            </div>

                        </div>
                    </a>
                </div>
            </div>

        </div>
    </div>
</div>


<!-- Start Products  -->
<!-- <div class="products-box">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="title-all text-center">
                    <h1>热门推荐</h1>
                    <p>当下季节大家的最爱</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="special-menu text-center">
                    <div class="button-group filter-button-group">
                        <button class="active" data-filter="*">所有</button>
                        <button data-filter=".top-featured">销量最佳</button>
                        <button data-filter=".best-seller">最受好评</button>
                    </div>
                </div>
            </div>
        </div>
        <a href="shop-detail.html">
        <div class="row special-list">
            <div class="col-lg-3 col-md-6 special-grid best-seller">
                <div class="products-single fix">
                    <div class="box-img-hover">

                        <div class="type-lb">
                            <p class="sale">热销</p>
                        </div>
                        <img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">

                    </div>
                    <div class="why-text">
                        <h4>胡萝卜</h4>
                        <h5> ￥7.79</h5>
                    </div>

                </div>
            </div>
        </a>
            <a href="shop-detail.html">
            <div class="col-lg-3 col-md-6 special-grid top-featured">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <div class="type-lb">
                            <p class="new">新品</p>
                        </div>
                        <img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">

                    </div>
                    <div class="why-text">
                        <h4>圣女果</h4>
                        <h5> ￥9.79</h5>
                    </div>
                </div>
            </div>
        </a>
<a href="shop-detail.html">
            <div class="col-lg-3 col-md-6 special-grid top-featured">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <div class="type-lb">
                            <p class="sale">热销</p>
                        </div>
                        <img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">

                    </div>
                    <div class="why-text">
                        <h4>小葡萄</h4>
                        <h5> ￥10.79</h5>
                    </div>
                </div>
            </div>
        </a>
        <a href="shop-detail.html">
            <div class="col-lg-3 col-md-6 special-grid best-seller">
                <div class="products-single fix">
                    <div class="box-img-hover">
                        <div class="type-lb">
                            <p class="sale">热销</p>
                        </div>
                        <img src="images/img-pro-04.jpg" class="img-fluid" alt="Image">

                    </div>
                    <div class="why-text">
                        <h4>木瓜</h4>
                        <h5> $15.79</h5>
                    </div>
                </div>
            </div>
        </div>
    </a>
    </div>
</div> -->
<!-- End Products  -->


<%--<div class="latest-blog">--%>
<%--    <div class="container">--%>
<%--        <div class="row">--%>
<%--            <div class="col-lg-12">--%>
<%--                <div class="title-all text-center t1">--%>

<%--                    <h1><a href="cart.html"> 社区分享</a></h1>--%>

<%--                    <p> 看看别人认养的宝贝</p>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--        <div class="row">--%>
<%--            <div class="col-md-6 col-lg-4 col-xl-4">--%>
<%--                <div class="blog-box">--%>
<%--                    <div class="blog-img">--%>
<%--                        <img class="img-fluid" src="images/j1 (5).jpeg" alt=""/>--%>
<%--                    </div>--%>
<%--                    <div class="blog-content">--%>
<%--                        <div class="title-blog">--%>
<%--                            <h3>全家出动去菜园采摘</h3>--%>
<%--                            <p>体现了一把采摘的快乐</p>--%>
<%--                        </div>--%>

<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-6 col-lg-4 col-xl-4">--%>
<%--                <div class="blog-box">--%>
<%--                    <div class="blog-img">--%>
<%--                        <img class="img-fluid" src="images/j1.jpeg" alt=""/>--%>
<%--                    </div>--%>
<%--                    <div class="blog-content">--%>
<%--                        <div class="title-blog">--%>
<%--                            <h3>5个月前认养的小鸡</h3>--%>
<%--                            <p>5个月前认养的小鸡现在已经这么打了</p>--%>
<%--                        </div>--%>

<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="col-md-6 col-lg-4 col-xl-4">--%>
<%--                <div class="blog-box">--%>
<%--                    <div class="blog-img">--%>
<%--                        <img class="img-fluid" src="images/j1%20(7).jpeg" alt=""/>--%>
<%--                    </div>--%>
<%--                    <div class="blog-content">--%>
<%--                        <div class="title-blog">--%>
<%--                            <h3>新鲜的草莓</h3>--%>
<%--                            <p> 全家人一起区采摘草莓，提现到了以前没有过的快乐</p>--%>
<%--                        </div>--%>

<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</div>--%>
<!-- End Blog  -->


<!-- Start Footer  -->
<footer>
    <div class="footer-main">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-top-box">
                        <h3>工作时间</h3>
                        <ul class="list-time">
                            <li>周一到周五：24h营业</li>
                            <li>周六，周日：7：00-23：30</li>
                            <li><span></span></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-4 col-md-12 col-sm-12">
                    <div class="footer-top-box">
                        <h3>反馈</h3>
                        <form class="newsletter-box">
                            <div class="form-group">
                                <input class="" type="email" name="Email" placeholder="Email Address*"/>
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
                                <p><i class="fas fa-phone-square"></i>电话: <a href="tel:+1-888705770">+ 86 198 1179
                                    9755</a></p>
                            </li>
                            <li>
                                <p><i class="fas fa-envelope"></i>邮箱: <a href="mailto:contactinfo@gmail.com">152481870@qq.com</a>
                                </p>
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
<style>
    .copyrights {
        text-indent: -9999px;
        height: 0;
        line-height: 0;
        font-size: 0;
        overflow: hidden;
    }
</style>
<div class="copyrights" id="links20210126">
    Collect from <a href="http://www.cssmoban.com/" title="网站模板">模板之家</a>
    <a href="https://www.chazidian.com/" title="查字典">查字典</a>
</div>
</body>
</html>
