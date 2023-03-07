<%--
  Created by IntelliJ IDEA.
  User: dal
  Date: 2022/12/26
  Time: 16:30
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
        .box-img-hover>a>img{
            width: 290px;
            height: 300px;
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
                <div class="login-box">
                    <!-- <select id="basic" class="selectpicker show-tick form-control" data-placeholder="登录">
                        <option value="none" selected disabled aria-hidden="true">请选择选项</option>
                        <a href="注册.html"><option value="注册">注册</option></a>
                        <option value="登录">登录</option>
                    </select> -->
                    <a href="注册.html" style="color: white;">注册</a>
                    or
                    <a href="登录.html" style="color: white;">登入</a>
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
                    <li class="nav-item"><a class="nav-link" href="/linjia/selectRServlet">认养专区</a></li>
                    <li class="nav-item"><a class="nav-link" href="xianxia2.html">线下体验</a></li>
<%--                    <li class="nav-item"><a class="nav-link" href="cart.html">社区</a></li>--%>
                    <li class="nav-item"><a class="nav-link" href="my-account.jsp">我的账户</a></li>
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
                <h2>商品详情</h2>
                <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="index.jsp">主页</a></li>
                    <li class="breadcrumb-item active">商品详情 </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!-- End All Title Box -->

<!-- Start Shop Detail  -->

<div class="shop-detail-box-main">
    <div class="container">
        <div class="row">

            <div class="col-xl-5 col-lg-5 col-md-6">
                <div id="carousel-example-1" class="single-product-slider carousel slide" data-ride="carousel">
                    <div class="carousel-inner" role="listbox">
                        <div class="carousel-item active"> <img class="d-block w-100" src="images/${images.img1}" height="450px" alt="First slide"> </div>
                        <div class="carousel-item"> <img class="d-block w-100" src="images/${images.img2}" height="450px" alt="Second slide"> </div>
                        <div class="carousel-item"> <img class="d-block w-100" src="images/${images.img3}"  height="450px" alt="Third slide"> </div>
                    </div>
                    <a class="carousel-control-prev" href="#carousel-example-1" role="button" data-slide="prev">
                        <i class="fa fa-angle-left" aria-hidden="true"></i>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carousel-example-1" role="button" data-slide="next">
                        <i class="fa fa-angle-right" aria-hidden="true"></i>
                        <span class="sr-only">Next</span>
                    </a>
                    <ol class="carousel-indicators">
                        <li data-target="#carousel-example-1" data-slide-to="0" class="active">
                            <img class="d-block w-100 img-fluid" src="images/${images.img1}" height="250px"  alt="" />
                        </li>
                        <li data-target="#carousel-example-1" data-slide-to="1">
                            <img class="d-block w-100 img-fluid" src="images/${images.img2}" height="250px" alt="" />
                        </li>
                        <li data-target="#carousel-example-1" data-slide-to="2">
                            <img class="d-block w-100 img-fluid" src="images/${images.img3}" height="250px" alt="" />
                        </li>
                    </ol>
                </div>
            </div>
            <div class="col-xl-7 col-lg-7 col-md-6">

                <div class="single-product-details">
                    <h2>商品名称</h2>
                    <h5> ${images.name}</h5>
                    <h4>价格</h4>
                    <h5> ￥ ${fineClass.price}</h5>
                    <!-- <p class="available-stock"><span> More than 20 available / <a href="#">8 sold </a></span><p> -->
                    <h4>商品描述:</h4>
                    <p>${fineClass.describe}</p>
                    <h4>卖家店铺:</h4>
                    <p>${store.storeName}的店铺</p>
                    <ul>
                        <li>
                            <div class="form-group quantity-box">

                                 <label class="control-label">购买数量</label>
                                 <input class="form-control" id="counts" name="counts" value="1" min="1" max="99" type="number">

                            </div>
                        </li>
                    </ul>

                    <div class="price-box-bar">
                        <div class="cart-and-bay-btn">
<%--                            <a class="btn hvr-hover" data-fancybox-close="" href="#">立即购买</a>--%>
                            <a class="btn hvr-hover" data-fancybox-close="" id="gouwuche">添加到购物车</a>
                            <a class="btn hvr-hover" data-fancybox-close="" href="/linjia/shopclearServlet?id=${fineClass.storeId}">查看店铺</a>
                        </div>
                    </div>

                    <!-- <div class="add-to-btn">
                        <div class="add-comp">
                            <a class="btn hvr-hover" href="#"><i class="fas fa-heart"></i> Add to wishlist</a>
                            <a class="btn hvr-hover" href="#"><i class="fas fa-sync-alt"></i> Add to Compare</a> -->
                    <!-- </div>
                    <div class="share-bar">
                        <a class="btn hvr-hover" href="#"><i class="fab fa-facebook" aria-hidden="true"></i></a>
                        <a class="btn hvr-hover" href="#"><i class="fab fa-google-plus" aria-hidden="true"></i></a>
                        <a class="btn hvr-hover" href="#"><i class="fab fa-twitter" aria-hidden="true"></i></a>
                        <a class="btn hvr-hover" href="#"><i class="fab fa-pinterest-p" aria-hidden="true"></i></a>
                        <a class="btn hvr-hover" href="#"><i class="fab fa-whatsapp" aria-hidden="true"></i></a>
                    </div> -->
                </div>
            </div>
        </div>
    </div>

    <div class="row my-5">
        <div class="card card-outline-secondary my-4">
            <div class="card-header">
                <h2>商品评论</h2>
            </div>

            <div class="card-body" style="width: 1900px">
                <c:forEach items="${comments}" var="comment">
                <div class="media mb-3">

                    <div class="media-body" style="width: 1800px ">
                        <p>${user.username}</p>
                        <p> ${comment.comment} </p>
                        <small class="text-muted"> ${comment.time} </small>
                    </div>
                </div>
                <hr>
                </c:forEach>
<%--                <div class="media mb-3">--%>
<%--                    <div class="media-body">--%>
<%--                        <p>ID</p>--%>
<%--                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Omnis et enim aperiam inventore, similique necessitatibus neque non! Doloribus, modi sapiente laboriosam aperiam fugiat laborum. Sequi mollitia, necessitatibus quae sint natus.</p>--%>
<%--                        <small class="text-muted">3/1/18</small>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--                <hr>--%>
                <form action="/linjia/commentServlet" method="post">
                <div class="media mb-3">

                    <div class="media-body">
                        <input type="text" placeholder="请留下你的评论!" id="comment" name="comment" >
                        <input type="text" placeholder="用做传输数据！" id="comment" name="userId" value="${user.id}" style="display: none">
                        <input type="text" placeholder="用做传输数据!" id="comment" name="fineClassId" value="${fineClass.id}" style="display: none">
<%--                        ${user.id}/////${fineClass.id}--%>
                        <input type="submit" class="button"  οnclick="javascript:window.location.href=window.location.href;" value="发布">&nbsp;
                    </div>
                </div>
                </form>
                <!-- <a href="#" class="btn hvr-hover">Leave a Review</a> -->
            </div>
        </div>
    </div>

    <div class="row my-5">
        <div class="col-lg-12">
            <div class="title-all text-center">
                <h1>更多推荐</h1>
                <p>当前最热的商品</p>
            </div>
            <div class="featured-products-box owl-carousel owl-theme">
                <c:forEach items="${fineTJClasses}" var="fineTJClasse">
                <div class="item">
                    <div class="products-single fix" >
                        <div class="box-img-hover">
                           <A href="/linjia/selectByIdDetailServlet?id=${fineTJClasse.id}"> <img src="images/${fineTJClasse.img}"  class="img-fluid" alt="Image" ></A>
                        </div>
                        <div class="why-text">

                            <h4>${fineTJClasse.name}</h4>
                            <h5> ¥${fineTJClasse.price}</h5>
                        </div>
                    </div>
                </div>
                </c:forEach>

            </div>
        </div>
    </div>

</div>
</div>
<!-- End Cart -->




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
<script>

<%--alert(${user.id})--%>

    window.onload=function(){
        // location.href = "/linjia/"
        // onscroll=null;
    }
    var str = '/linjia/myShoppingCartServlet?id=${fineClass.id}&id2=${user.id}&name=${images.name}&price=${fineClass.price}&numbers='+1

    $("#gouwuche").attr("href", str);



    $(document).on('change', '#counts', function(){


        var x = $("#counts").val().toString()
        var x1 = parseInt(x);
        var str = '/linjia/myShoppingCartServlet?id=${fineClass.id}&id2=${user.id}&name=${images.name}&price=${fineClass.price}&numbers='+x1
        let che = $("#gouwuche");
        // alert(x1);
        $("#gouwuche").attr("href", str);

    });




</script>
</html>