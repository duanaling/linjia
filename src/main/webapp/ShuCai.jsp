<%--
  Created by IntelliJ IDEA.
  User: dal
  Date: 2023/2/17
  Time: 16:15
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

  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
  <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
  <style>

    /* .sidebar-shop-left-1{
        position: fixed;
        right: 30px;
        top: 40px;
    } */

    /*.page{*/
    /*    text-align: center;*/
    /*    border: 2px solid black;*/

    /*    cursor: pointer;*/
    /*}*/

    .pageactive{
      background-color: #888;
    }

    #page_ul>li{
      float: left;
      cursor: pointer;
      border-radius: 4px;
      border:4px solid rgb(110, 105, 105);
      margin: 5px;
      padding: 8px;    }
    .box-img-hover>img{

      width: 390px;
      height: 217px;
    }
    .triggerBtn{
      cursor: pointer;
    }
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
          <li class="nav-item"><a class="nav-link" href="shop.html">认养专区</a></li>
          <li class="nav-item"><a class="nav-link" href="xianxia2.html">线下体验</a></li>


<%--          <li class="nav-item"><a class="nav-link" href="cart.html">社区</a></li>--%>
          <li class="nav-item"><a class="nav-link" href="my-account.html">我的账户</a></li>
        </ul>
      </div>
      <!-- /.navbar-collapse -->

      <!-- Start Atribute Navigation -->
      <div class="attr-nav">
        <ul>
          <li class="search"><a href="#"><i class="fa fa-search"></i></a></li>
          <li class="side-menu">
            <a href="#">
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


<!-- Start All Title Box -->
<div class="all-title-box">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <h2>Shop</h2>
        <ul class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Home</a></li>
          <li class="breadcrumb-item active">Shop</li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- End All Title Box -->

<!-- Start Shop Page  -->
<div class="shop-box-inner">
  <div class="container">
    <div class="row">
      <div class="col-xl-9 col-lg-9 col-sm-12 col-xs-12 shop-content-right">
        <div class="right-product-box">
          <div class="product-item-filter row">
            <div class="col-12 col-sm-8 text-center text-sm-left">
              <div class="toolbar-sorter-right">
                <span></span>
                <!--                                    <select id="basic" class="selectpicker show-tick form-control" data-placeholder="$ USD">-->
                <!--									<option data-display="Select">综合·</option>-->
                <!--									<option value="1">流行度</option>-->
                <!--									<option value="2">价格降序</option>-->
                <!--									<option value="3">价格升序</option>-->
                <!--									<option value="4">销量优先</option>-->
                <!--								</select>-->
              </div>
              <!-- <p>Showing all 4 results</p> -->
            </div>
            <!-- <div class="col-12 col-sm-4 text-center text-sm-right">
                <ul class="nav nav-tabs ml-auto">
                    <li>
                        <a class="nav-link active" href="#grid-view" data-toggle="tab"> <i class="fa fa-th"></i> </a>
                    </li>
                    <li>
                        <a class="nav-link" href="#list-view" data-toggle="tab"> <i class="fa fa-list-ul"></i> </a>
                    </li>
                </ul>
            </div> -->
          </div>

          <div class="product-categorie-box">
            <div class="tab-content">
              <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                <div class="row" id="inner">
                  <!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
                  <!--                                            <div class="products-single fix">-->
                  <!--                                                <a href="detail.html">-->
                  <!--                                                <div class="box-img-hover">-->
                  <!--                                                  -->
                  <!--                                                    <img src="images/j1 (4).jpeg" class="img-fluid" alt="Image">-->
                  <!--                                                   -->
                  <!--                                                        -->
                  <!--                                                </div>-->
                  <!--                                            </a>-->
                  <!--                                                <div class="why-text">-->
                  <!--                                                    <h4>西红柿</h4>-->
                  <!--                                                    <p>认养</p>-->
                  <!--                                                    <h5> $9.79</h5>-->
                  <!--                                                    <h5 class="triggerBtn"> 立即购买</h5>-->
                  <!--                                                </div>-->
                  <!--                                            </div>-->
                  <!--                                            -->
                  <!--                                        </div>-->
                  <!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
                  <!--                                            <div class="products-single fix">-->
                  <!--                                                <a href="detail.html">-->

                  <!--                                                <div class="box-img-hover">-->

                  <!--                                                    <img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">-->


                  <!--                                                </div>-->
                  <!--                                                </a>-->
                  <!--                                                <div class="why-text">-->
                  <!--                                                    <h4>西红柿</h4>-->
                  <!--                                                    <p>认养</p>-->
                  <!--                                                    <h5> $9.79</h5>-->
                  <!--                                                    <h5 class="triggerBtn"> 立即购买</h5>-->
                  <!--                                                </div>-->
                  <!--                                            </div>-->

                  <!--                                        </div>-->

                  <!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
                  <!--                                            <div class="products-single fix">-->
                  <!--                                                <a href="detail.html">-->

                  <!--                                                <div class="box-img-hover">-->

                  <!--                                                    <img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">-->



                  <!--                                                </div>-->
                  <!--                                            </a>-->
                  <!--                                                <div class="why-text">-->
                  <!--                                                    <h4>葡萄</h4>-->
                  <!--                                                    <p>认养</p>-->
                  <!--                                                    <h5> $9.79</h5>-->
                  <!--                                                    <h5 class="triggerBtn"> 立即购买</h5>-->
                  <!--                                                </div>-->
                  <!--                                            </div>-->

                  <!--                                        </div>-->

                  <!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
                  <!--                                            <div class="products-single fix">-->
                  <!--                                                <a href="detail.html">-->
                  <!--                                                <div class="box-img-hover">-->

                  <!--                                                    <img src="images/rou2.jpg" class="img-fluid" alt="Image">-->


                  <!--                                                </div>-->
                  <!--                                            </a>-->
                  <!--                                                <div class="why-text">-->
                  <!--                                                    <h4>大排骨</h4>-->
                  <!--                                                    <p>认养</p>-->
                  <!--                                                    <h5> $9.79</h5>-->
                  <!--                                                    <h5 class="triggerBtn"> 立即购买</h5>-->

                  <!--                                                </div>-->
                  <!--                                            </div>-->

                  <!--                                        </div>-->
                  <!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
                  <!--                                            <div class="products-single fix">-->
                  <!--                                            <a href="shop-detail.html">-->
                  <!--                                                <div class="box-img-hover">-->

                  <!--                                                    <img src="images/gallery-img-01.jpg" class="img-fluid" alt="Image">-->


                  <!--                                                </div>-->
                  <!--                                            </a>-->
                  <!--                                                <div class="why-text">-->
                  <!--                                                    <h4>认养黄瓜</h4>-->
                  <!--                                                    <p>认养</p>-->
                  <!--                                                    <h5> $9.79</h5>-->
                  <!--                                                    <h5 class="triggerBtn"> 立即购买</h5>-->

                  <!--                                                </div>-->
                  <!--                                            </div>-->

                  <!--                                        </div>-->
                  <!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
                  <!--                                            <div class="products-single fix">-->
                  <!--                                                <a href="detail.html">-->
                  <!--                                                <div class="box-img-hover">-->

                  <!--                                                    <img src="images/j1 (2).jpeg" class="img-fluid" alt="Image">-->


                  <!--                                                </div>-->
                  <!--                                                </a>-->
                  <!--                                                <div class="why-text">-->
                  <!--                                                    <h4>认养小黑猪</h4>-->
                  <!--                                                    <p>认养</p>-->
                  <!--                                                    <h5> $9.79</h5>-->
                  <!--                                                    <h5 class="triggerBtn"> 立即购买</h5>-->
                  <!--                                                </div>-->
                  <!--                                            </div>-->
                  <!--                                        </div>-->
                  <!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
                  <!--                                            <div class="products-single fix">-->
                  <!--                                                <a href="detail.html">-->

                  <!--                                                <div class="box-img-hover">-->

                  <!--                                                    <img src="images/eat.jpeg" class="img-fluid" alt="Image">-->

                  <!--                                                </div>-->
                  <!--                                                </a>-->
                  <!--                                                <div class="why-text">-->
                  <!--                                                    <h4>野炊</h4>-->
                  <!--                                                    <p>游玩</p>-->
                  <!--                                                    <h5>199元套餐</h5>-->
                  <!--                                                    <h5 class="triggerBtn"> 立即购买</h5>-->
                  <!--                                                </div>-->
                  <!--                                            </div>-->
                  <!--                                        </div>-->
                  <!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
                  <!--                                            <div class="products-single fix">-->
                  <!--                                                <a href="detail.html">-->

                  <!--                                                <div class="box-img-hover">-->

                  <!--                                                    <img src="images/home.jpeg" class="img-fluid" alt="Image">-->

                  <!--                                                </div>-->
                  <!--                                            </a>-->

                  <!--                                                <div class="why-text">-->
                  <!--                                                    <h4>民宿</h4>-->
                  <!--                                                    <p>体验</p>-->
                  <!--                                                    <h5>￥299/晚</h5>-->
                  <!--                                                    <h5 class="triggerBtn"> 立即购买</h5>-->
                  <!--                                                </div>-->

                  <!--                                            </div>-->
                  <!--                                        </div>-->
                  <!--                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">-->
                  <!--                                            <div class="products-single fix">-->
                  <!--                                                <a href="detail.html">-->

                  <!--                                                <div class="box-img-hover">-->

                  <!--                                                    <img src="images/fish.jpeg" class="img-fluid" alt="Image">-->

                  <!--                                                </div>-->
                  <!--                                            </a>-->

                  <!--                                                <div class="why-text">-->
                  <!--                                                    <h4>户外垂钓</h4>-->
                  <!--                                                    <p>游玩</p>-->
                  <!--                                                    <h5> ￥300元/6小时</h5>-->
                  <!--                                                    <h5 class="triggerBtn"> 立即购买</h5>-->
                  <!--                                                </div>-->
                  <!--                                            </div>-->
                  <!--                                        </div>-->
                </div>
              </div>



            </div>
          </div>
        </div>
      </div>


      <div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left ">
        <div class="product-categori ">
          <div class="search-product">
            <form action="">
              <input id="chazhao1" class="form-control" placeholder="Search here..." type="text">
              <button type="button" id="chazhao2"> <i class="fa fa-search"></i> </button>
            </form>
          </div>
          <div class="filter-sidebar-left">
            <div class="title-left">
              <h3>目录</h3>
            </div>
            <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">






              <div class="list-group-collapse sub-men">
                <a class="list-group-item list-group-item-action" href="#sub-men2" data-toggle="collapse" aria-expanded="true" aria-controls="sub-men1">认养蔬菜<small class="text-muted"></small></a>

                <div class="collapse show" id="sub-men2" data-parent="#list-group-men">
                  <div class="list-group" id="dao1">
                    <a href="javasrcipr:void(0)" class="list-group-item list-group-item-action">白菜<small class="text-muted"></small></a>
                    <a href="javasrcipr:void(0)" class="list-group-item list-group-item-action">茄子<small class="text-muted"></small></a>
                    <a href="javasrcipr:void(0)" class="list-group-item list-group-item-action">番茄<small class="text-muted"></small></a>
                    <a href="javasrcipr:void(0)" class="list-group-item list-group-item-action">土豆<small class="text-muted"></small></a>
                  </div>
                </div>
              </div>


              <div class="list-group-collapse sub-men">
                <a class="list-group-item list-group-item-action" href="#sub-men3" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men2">认养水果
                  <small class="text-muted"></small>
                </a>
                <div class="collapse" id="sub-men3" data-parent="#list-group-men">
                  <div class="list-group" id="dao2">
                    <a href="javasrcipr:void(0)" class="list-group-item list-group-item-action"> 苹果<small class="text-muted"></small></a>
                    <a href="javasrcipr:void(0)" class="list-group-item list-group-item-action">草莓<small class="text-muted"></small></a>
                    <a href="javasrcipr:void(0)" class="list-group-item list-group-item-action">梨<small class="text-muted"></small></a>
                    <a href="javasrcipr:void(0)" class="list-group-item list-group-item-action">葡萄<small class="text-muted"></small></a>

                  </div>
                </div>
              </div>

              <div class="list-group-collapse sub-men">
                <a class="list-group-item list-group-item-action" href="#sub-men4" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men2">认养家畜
                  <small class="text-muted"></small>
                </a>
                <div class="collapse" id="sub-men4" data-parent="#list-group-men">
                  <div class="list-group" id="dao3">
                    <a href="javasrcipr:void(0)" class="list-group-item list-group-item-action"> 猪<small class="text-muted"></small></a>
                    <a href="javasrcipr:void(0)" class="list-group-item list-group-item-action">牛<small class="text-muted"></small></a>
                    <a href="javasrcipr:void(0)" class="list-group-item list-group-item-action">羊<small class="text-muted"></small></a>
                  </div>
                </div>
              </div>

              <div class="list-group-collapse sub-men">
                <a class="list-group-item list-group-item-action" href="#sub-men4" data-toggle="collapse" aria-expanded="false" aria-controls="sub-men2">认养家禽
                  <small class="text-muted"></small>
                </a>
                <div class="collapse" id="sub-men4" data-parent="#list-group-men">
                  <div class="list-group" id="dao3">
                    <a href="javasrcipr:void(0)" class="list-group-item list-group-item-action"> 鸡<small class="text-muted"></small></a>
                    <a href="javasrcipr:void(0)" class="list-group-item list-group-item-action">鸭<small class="text-muted"></small></a>
                    <a href="javasrcipr:void(0)" class="list-group-item list-group-item-action">鹅<small class="text-muted"></small></a>
                  </div>
                </div>
              </div>

            </div>
          </div>
          <!-- <div class="filter-price-left">
              <div class="title-left">
                  <h3>价格</h3>
              </div>
              <div class="price-box-slider">
                  <div id="slider-range"></div>
                  <p>
                      <input type="text" id="amount" readonly style="border:0; color:#fbb714; font-weight:bold;">
                      <button class="btn hvr-hover" type="submit">确定</button>
                  </p>
              </div>
          </div> -->
        </div>
      </div>
    </div>
  </div>
</div>
<!-- End Shop Page -->

<!-- Star fanye Page -->


<div class="container ">
  <div class="row">

    <div class="col-md-2"></div>
    <ul id="page_ul">

    </ul>
  </div>
  <div class="row">  <div class="col-md-2"></div>  <div class="col-md-6"> 共<strong id="totalcount">x</strong>条记录，共<strong id="totalpage">y</strong>页，当前第<strong id="currenpage">z</strong>页  </div></div>
</div>
<!-- End fenye Page -->

<!-- 模态框 -->
<div id="myModal" class="modal">
  <div class="modal-content" >

    <!-- <div class="modal-header">
        <h2>支付</h2>
        <span id="closeBtn" class="close">&times;</span>
    </div> -->

    <div class="modal-body" id="modal_inner">
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
            <div class="col-md-6">
              <ul>
                <li>
                  <div class="form-group quantity-box">
                    <input id="count" class="form-control" value="1" min="1" max="99" type="number">
                  </div>
                </li>
              </ul>
            </div>
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
            <div class="col-md-2 ">收货地址</div>
            <form role="form">
              <div class="form-group">
                <input id="addres" style="width: 400px;" type="text" class="form-control" placeholder="默认地址" value="">
              </div>
          </div>
          <div class="row">
            <div class="col-md-2 ">收货人电话</div>
            <form role="form">
              <div class="form-group">
                <input id="pone" style="width: 200px;" type="text" class="form-control" placeholder="默认电话" value="“">
              </div>
          </div>
          <div class="row">
            <div class="col-md-2">实付款</div>
            <div class="col-md-10"><span class="red">60</span>元</div>
          </div>
          <div class="row">
            <div class="col-md-2">支付密码</div>
            <form role="form">
              <div class="form-group">
                <input id="password" type="text" class="form-control" placeholder="请输入密码">
              </div>
          </div>
          <div class="row">
            <div class="col-md-3"></div>
            <div class="col-md-9">
              <div class="mai">
                <a><div> <h1>付款</h1></div></a>
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
<script src="js/jquery-ui.js"></script>
<script src="js/jquery.nicescroll.min.js"></script>
<script src="js/form-validator.min.js"></script>
<script src="js/contact-form-script.js"></script>
<script src="js/custom.js"></script>
<script>


  //卷曲高度设计
  var daohang=document.querySelector(".sidebar-shop-left");

  window.onscroll = function(){

    var height = document.documentElement.scrollTop||document.body.scrollTop;
    if (height>=0&&height<150){
      daohang.classList.remove("cebian-2");
      daohang.classList.remove("cebian-3");
    }else if(height>=150&&height<1100){
      daohang.classList.remove("cebian-3");

      daohang.classList.add('cebian-2');
    }else if(height>=1100){
      daohang.classList.add('cebian-3');
    }
  }

  function jsonway(leixing,page,size){$.post(

          "/linjia/testServlet",

          {"leixing":leixing,"page":page,"size":size},
          function(data){
            var json = JSON.parse(data)
            var contenthtml = " ";
            for(var i =0;i<json.list.length;i++){
              var x = json.list[i];
              contenthtml+='                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">' +
                      '                                            <div class="products-single fix">' +
                      '                                                <a href="detail.jsp?id='+x.id+'">' +
                      '                                               <div class="box-img-hover">' +
                      '                                                    <img src="images/'+x.img+'" class="img-fluid" alt="Image">' +
                      '                                                </div>' +
                      '                                            </a>' +
                      '                                                <div class="why-text">' +
                      '                                                    <h4>'+x.name+'</h4>' +
                      '                                                    <p>'+x.type+'</p>' +
                      '                                                    <h5> ￥'+x.price+x.danwei+'</h5>' +
                      '                                                    <h5 class="triggerBtn" id="triggerBtn" onclick="lijigoumai('+'\''+x.img+'\''+','+'\''+x.price+'\''+','+'\''+x.name+'\''+','+'\''+x.id+'\''+','+'\''+x.storeId+'\''+')"> 立即购买</h5>' +

                      '                                                </div>' +
                      '                                            </div>' +
                      '                                        </div>'
            }
            var pagetiao = ""



            for(var i = 1;i<=json.totalPage;i++) {
              if (i == json.currentPage) {
                pagetiao += '<li onclick="jsonway(1,'+i+',9)" class="pageactive"> <a href="javascript:void(0)">' + i + '</a></li>'
              } else {
                pagetiao += '<li onclick="jsonway(1,'+i+',9)"> <a href="javascript:void(0)">' + i + '</a></li>'
              }
            }
            $("#page_ul").html(pagetiao)
            $("#inner").html(contenthtml)
            $("#totalcount").html(json.totalCount)
            $("#totalpage").html(json.totalPage)
            $("#currenpage").html(json.currentPage)


          })}

  function jsonway2(str,page,leixing){

    $.post(
            "MohuSelectServlet",
            {"str":str,"page":page,"leixing":leixing},
            function (data){
              var json = JSON.parse(data)
              var contenthtml = " ";
              for(var i =0;i<json.list.length;i++){
                var x = json.list[i];
                contenthtml+='                                        <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">' +
                        '                                            <div class="products-single fix">' +
                        '                                                <a href="detail.html">' +
                        '                                               <div class="box-img-hover">' +
                        '                                                    <img src="images/'+x.img+'" class="img-fluid" alt="Image">' +
                        '                                                </div>' +
                        '                                            </a>' +
                        '                                                <div class="why-text">' +
                        '                                                    <h4>'+x.name+'</h4>' +
                        '                                                    <p>'+x.type+'</p>' +
                        '                                                    <h5> ￥'+x.price+x.danwei+'</h5>' +
                        '                                                    <h5 class="triggerBtn" id="triggerBtn" onclick="lijigoumai('+'\''+x.img+'\''+','+'\''+x.price+'\''+','+'\''+x.name+'\''+','+'\''+x.id+'\''+','+'\''+x.storeId+'\''+')"> 立即购买</h5>' +

                        '                                                </div>' +
                        '                                            </div>' +
                        '                                        </div>'
              }
              var pagetiao = ""



              for(var i = 1;i<=json.totalPage;i++) {
                if (i == json.currentPage) {
                  pagetiao += '<li onclick="jsonway2('+str+','+i+',1)" class="pageactive"> <a href="javascript:void(0)">' + i + '</a></li>'
                } else {
                  pagetiao += '<li onclick="jsonway2('+str+','+i+',1)"> <a href="javascript:void(0)">' + i + '</a></li>'
                }
              }
              $("#page_ul").html(pagetiao)
              $("#inner").html(contenthtml)
              $("#totalcount").html(json.totalCount)
              $("#totalpage").html(json.totalPage)
              $("#currenpage").html(json.currentPage)
            }
    )

  }

  function lijigoumai(img,price,name,id,storeId) {

    $.post(
            "/linjia/GetInforUuerServlet",
            {"canshu": "null"},
            function (data) {
              var content = ""
              var json = JSON.parse(data);
              password = json.password;
              content +=
                      '             <div class="container">' +
                      '                 <div class="row">' +
                      '                     <div class="col-md-3"><h4></h4></div>' +
                      '                     <div class="col-md-7 h1">支付<span class="small .text-muted">（请在15分钟内完成）</span></div>' +
                      '                     <div class="col-md-2"> <span id="closeBtn" class="close">&times;</span></div>' +
                      '                 </div>' +

                      '             </div>' +
                      '             <div class="row">' +
                      '                 <div class="col-md-8">' +
                      '                     <div class="row">' +
                      '                         <div class="col-md-2"><h4>商品：</h4></div>' +
                      '                         <div class="col-md-10">' + name + '</div>' +
                      '                     </div>' +
                      '                     <div class="row">' +
                      '                         <div class="col-md-2">数量：</div>' +
                      '                         <div class="col-md-6">' +
                      '                             <ul>' +
                      '                                 <li>' +
                      '                                     <div class="form-group quantity-box">' +
                      '                                         <input id="count" class="form-control" value="1" min="1" max="99" type="number">' +
                      '                                     </div>' +
                      '                                 </li>' +
                      '                             </ul>' +
                      '                         </div>' +
                      '                     </div>' +
                      '                     <div class="row">' +
                      '                         <div class="col-md-2 ">单价：</div>' +
                      '                         <div class="col-md-10"><span class="red">' + price + '</span>元' +
                      '                         </div>' +
                      '                     </div>' +
                      '                     <div class="row">' +
                      '                         <div class="col-md-2">总价：</div>' +
                      '                         <div class="col-md-10"><span class="red" id="sum1">'+price+'</span>元</div>' +
                      '                     </div>' +
                      '                     <div class="row">' +
                      '                         <div class="col-md-2 ">收货地址</div>' +
                      '                         <form role="form">' +
                      '                             <div class="form-group">' +
                      '                                 <input id="addres" style="width: 400px;" type="text" class="form-control" placeholder="默认地址" value="'+json.address+'">' +
                      '                             </div>' +
                      '                     </div>' +
                      '                     <div class="row">' +
                      '                         <div class="col-md-2 ">收货人电话</div>' +
                      '                         <form role="form">' +
                      '                             <div class="form-group">' +
                      '                                 <input id="pone" style="width: 200px;" type="text" class="form-control" placeholder="默认电话" value="'+json.let+'">' +
                      '                             </div>' +
                      '                     </div>' +
                      '                     <div class="row">' +
                      '                         <div class="col-md-2">实付款</div>' +
                      '                         <div class="col-md-10"><span class="red" id="sum2">'+price+'</span>元</div>' +
                      '                     </div>' +
                      '                     <div class="row">' +
                      '                         <div class="col-md-2">支付密码</div>' +
                      '                         <form role="form">' +
                      '                             <div class="form-group">' +
                      '                                 <input id="password" type="password" class="form-control" placeholder="请输入密码" value="">' +
                      '                             </div>' +
                      '                     </div>' +
                      '                     <div class="row">' +
                      '                         <div class="col-md-3"></div>' +
                      '                         <div class="col-md-9">' +
                      '                             <div class="mai">' +
                      '                                 <a href="javascripe:void(0)"><div> <h1 id="fukuan" onclick="fukuan('+price+','+id+','+storeId+')">付款</h1></div></a>' +

                      '                             </div>' +
                      '                         </div>' +
                      '                     </div>' +
                      '                 </div>' +
                      '                 <div class="col-md-4 mo-img"><img src="images/' + img + '"></div>' +
                      '             </div>'

              $("#modal_inner").html(content)
            })

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
    modalBox.show = function () {
      console.log(this.modal);
      this.modal.style.display = "block";
      this.modal.style.zIndex = 999;
    }


    /*模态框关闭*/
    modalBox.close = function () {
      this.modal.style.display = "none";
    }

    $(document).on('click', '#closeBtn', function(){
      modalBox.close()
    });

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

      // for(let i=0;i<this.triggerBtn.length;i++){
      //     this.triggerBtn[i].onclick = function() {
      //         that.show();
      //     }
      // }


      this.show();
      //
      //    this.closeBtn.onclick = function() {
      // that.close();
      //}
      this.outsideClick();
    }

    modalBox.init();

    // 总价随数量动态变化
    //取值代码放在函数里
    function x(price){
      var x = $("#count").val().toString()
      var x1 = parseInt(x);
      x3 = x1*price
      x3 = x3.toFixed(2)
      $("#sum1").text(x3)
      $("#sum2").text(x3)
    }
    $(document).on('change', '#count', function(){
      x(price);
    });






  }

  function fukuan(price,id,storeId,storeid,name) {

    var time = new Date();

    var count = $("#count").val().toString()
    alert(count)
    var count1 = parseInt(count);
    price = price.toString();
    price = parseFloat(price);
    var prices = price*count1;
    prices = prices.toFixed(2);

    var res = jiaoyan(password)
    if (res == true) {

      $.post(
              "/linjia/addcheServlet",
              {"time": time,"count": count,"fineId":id, "prices": prices,"storeid":storeid,"name":name},
              function (data) {
                var json = JSON.parse(data);

                alert("付款成功");
                modalBox.close();

              })
    }else{alert("密码错误")}

  }





















  function jiaoyan(password){
    var res;
    var rpass = password
    var dpass = $("#password").val().toString()

    if(rpass == dpass) res = true
    if(rpass != dpass)   res = false

    return res
  }
  //搜索框点击搜索
  $(document).on('click', '#chazhao2', function(){
    var str = $("#chazhao1").val().toString();
    jsonway2(str,1,1);

  })


  //循环绑定导航栏



  var x = ["烧烤","炒菜","火锅","面食"]
  const btn = $("#dao1 > a");
  for (let i = 0; i < btn.length; i++) {
    btn[i].onclick = function () {
      jsonway2(x[i],1,1)
    }
  }

  var x2 = ["清净","田园","简朴","阁楼"]
  const btn2 = $("#dao2 > a");
  for (let i = 0; i < btn2.length; i++) {
    btn2[i].onclick = function () {
      jsonway2(x2[i],1,1)

    }
  }
  // var x3 = ["清净","田园","简朴","阁楼"]

  var x3 = ["垂钓","野炊","团建"]
  const btn3 = $("#dao3 > a");
  for (let i = 0; i < btn3.length; i++) {
    btn3[i].onclick = function () {
      jsonway2(x3[i],1,1)
// alert(x3[i]);
      // alert(i);
    }
  }





  $(document).ready(function(){
    jsonway(1,1,9);






  })



</script>
</body>

</html>