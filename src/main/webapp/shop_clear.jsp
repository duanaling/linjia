<%--
  Created by IntelliJ IDEA.
  User: dal
  Date: 2022/12/27
  Time: 21:19
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
    .box-img-hover>img{
      width: 390px;
      height: 217px;
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
<%--          <a href="注册.html" style="color: white;">注册</a>--%>
<%--          or--%>
<%--          <a href="登录.html" style="color: white;">登入</a>--%>
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


<%--          <li class="nav-item"><a class="nav-link" href="cart.html">社区</a></li>--%>
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

<!-- End Main Top -->
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
        <h2>Wishlist</h2>
        <ul class="breadcrumb">
          <li class="breadcrumb-item"><a href="#">Shop</a></li>
          <li class="breadcrumb-item active">Wishlist</li>
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
                <span>分类 </span>
                <select id="basic" class="selectpicker show-tick form-control" data-placeholder="$ USD">
                  <option data-display="Select">综合·</option>
                  <option value="1">流行度</option>
                  <option value="2">价格降序</option>
                  <option value="3">价格升序</option>
                  <option value="4">销量优先</option>
                </select>
              </div>
              <!-- <p>Showing all 4 results</p> -->
            </div>
            <div class="col-12 col-sm-4 text-center text-sm-right">
              <ul class="nav nav-tabs ml-auto">
                <li>
                  <a class="nav-link active" href="#grid-view" data-toggle="tab"> <i class="fa fa-th"></i> </a>
                </li>
                <li>
                  <a class="nav-link" href="#list-view" data-toggle="tab"> <i class="fa fa-list-ul"></i> </a>
                </li>
              </ul>
            </div>
          </div>

          <div class="product-categorie-box">
            <div class="tab-content">
              <div role="tabpanel" class="tab-pane fade show active" id="grid-view">
                <div class="row">
                  <c:forEach items="${fineDPClasses}" var="fineDPClasse" >
                  <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">
                    <div class="products-single fix">
                      <div class="box-img-hover">
                        <div class="type-lb">
                          <p class="sale">Sale</p>
                        </div>
                        <img src="images/${fineDPClasse.img}" height="400px" width="600px" class="img-fluid" alt="Image">

                        <a href="#">
                      </div>
                      <div class="why-text">
                        <h4>${fineDPClasse.name}</h4>
                        <h5> ${fineDPClasse.price}</h5>
                      </div>
                    </div>
                    </a>
                  </div>
                  </c:forEach>

<%--                  <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                    <div class="products-single fix">--%>
<%--                      <div class="box-img-hover">--%>
<%--                        <div class="type-lb">--%>
<%--                          <p class="new">New</p>--%>
<%--                        </div>--%>
<%--                        <img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">--%>
<%--                        <div class="mask-icon">--%>
<%--                          <a class="cart" href="#">添加到购物车</a>--%>
<%--                        </div>--%>
<%--                        <a href="#">--%>
<%--                      </div>--%>
<%--                      <div class="why-text">--%>
<%--                        <h4>商品</h4>--%>
<%--                        <h5> $9.79</h5>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                    </a>--%>
<%--                  </div>--%>

<%--                  <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                    <div class="products-single fix">--%>
<%--                      <div class="box-img-hover">--%>
<%--                        <div class="type-lb">--%>
<%--                          <p class="sale">Sale11</p>--%>
<%--                        </div>--%>
<%--                        <img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">--%>

<%--                        <div class="mask-icon">--%>
<%--                          <!-- <ul>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>--%>
<%--                          </ul> -->--%>
<%--                          <a class="cart" href="#">添加到购物车</a>--%>
<%--                        </div>--%>
<%--                        <a href="detail.html">--%>
<%--                      </div>--%>
<%--                      <div class="why-text">--%>
<%--                        <h4>商品</h4>--%>
<%--                        <h5> $9.79</h5>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                    </a>--%>
<%--                  </div>--%>

<%--                  <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                    <div class="products-single fix">--%>
<%--                      <div class="box-img-hover">--%>
<%--                        <div class="type-lb">--%>
<%--                          <p class="new">New</p>--%>
<%--                        </div>--%>
<%--                        <img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">--%>
<%--                        <div class="mask-icon">--%>
<%--                          <!-- <ul>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>--%>
<%--                          </ul> -->--%>
<%--                          <a class="cart" href="#">添加到购物车</a>--%>
<%--                        </div>--%>
<%--                        <a href="detail.html">--%>
<%--                      </div>--%>
<%--                      <div class="why-text">--%>
<%--                        <h4>商品</h4>--%>
<%--                        <h5> $9.79</h5>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                    </a>--%>
<%--                  </div>--%>
<%--                  <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                    <div class="products-single fix">--%>
<%--                      <div class="box-img-hover">--%>
<%--                        <div class="type-lb">--%>
<%--                          <p class="sale">Sale</p>--%>
<%--                        </div>--%>
<%--                        <img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">--%>
<%--                        <div class="mask-icon">--%>
<%--                          <!-- <ul>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>--%>
<%--                          </ul> -->--%>
<%--                          <a class="cart" href="#">添加到购物车</a>--%>
<%--                        </div>--%>
<%--                        <a href="detail.html">--%>
<%--                      </div>--%>
<%--                      <div class="why-text">--%>
<%--                        <h4>商品</h4>--%>
<%--                        <h5> $9.79</h5>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                    </a>--%>
<%--                  </div>--%>
<%--                  <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                    <div class="products-single fix">--%>
<%--                      <div class="box-img-hover">--%>
<%--                        <div class="type-lb">--%>
<%--                          <p class="sale">Sale</p>--%>
<%--                        </div>--%>
<%--                        <img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">--%>
<%--                        <div class="mask-icon">--%>
<%--                          <!-- <ul>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>--%>
<%--                          </ul> -->--%>
<%--                          <a class="cart" href="#">添加到购物车</a>--%>
<%--                        </div>--%>
<%--                        <a href="detail.html">--%>
<%--                      </div>--%>
<%--                      <div class="why-text">--%>
<%--                        <h4>商品</h4>--%>
<%--                        <h5> $9.79</h5>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                    </a>--%>
<%--                  </div>--%>
<%--                  <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                    <div class="products-single fix">--%>
<%--                      <div class="box-img-hover">--%>
<%--                        <div class="type-lb">--%>
<%--                          <p class="sale">Sale</p>--%>
<%--                        </div>--%>
<%--                        <img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">--%>
<%--                        <div class="mask-icon">--%>
<%--                          <!-- <ul>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>--%>
<%--                          </ul> -->--%>
<%--                          <a class="cart" href="#">添加到购物车</a>--%>
<%--                        </div>--%>
<%--                        <a href="detail.html">--%>
<%--                      </div>--%>
<%--                      <div class="why-text">--%>
<%--                        <h4>商品</h4>--%>
<%--                        <h5> $9.79</h5>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                    </a>--%>
<%--                  </div>--%>
<%--                  <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                    <div class="products-single fix">--%>
<%--                      <div class="box-img-hover">--%>
<%--                        <div class="type-lb">--%>
<%--                          <p class="sale">Sale</p>--%>
<%--                        </div>--%>
<%--                        <img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">--%>
<%--                        <div class="mask-icon">--%>
<%--                          <!-- <ul>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>--%>
<%--                          </ul> -->--%>
<%--                          <a class="cart" href="#">添加到购物车</a>--%>
<%--                        </div>--%>
<%--                        <a href="detail.html">--%>
<%--                      </div>--%>
<%--                      <div class="why-text">--%>
<%--                        <h4>商品</h4>--%>
<%--                        <h5> $9.79</h5>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                    </a>--%>
<%--                  </div>--%>

<%--                  <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                    <div class="products-single fix">--%>
<%--                      <div class="box-img-hover">--%>
<%--                        <div class="type-lb">--%>
<%--                          <p class="new">New</p>--%>
<%--                        </div>--%>
<%--                        <img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">--%>
<%--                        <div class="mask-icon">--%>
<%--                          <!-- <ul>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>--%>
<%--                              <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>--%>
<%--                          </ul> -->--%>
<%--                          <a class="cart" href="#">添加到购物车</a>--%>
<%--                        </div>--%>
<%--                        <a href="detail.html">--%>
<%--                      </div>--%>
<%--                      <div class="why-text">--%>
<%--                        <h4>商品</h4>--%>
<%--                        <h5> ￥9.79</h5>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                  </a>--%>
<%--                </div>--%>
<%--              </div>--%>

<%--              //详情--%>
<%--              <div role="tabpanel" class="tab-pane fade" id="list-view">--%>
<%--                <div class="list-view-box">--%>
<%--                  <div class="row">--%>
<%--                    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                      <div class="products-single fix">--%>
<%--                        <div class="box-img-hover">--%>
<%--                          <div class="type-lb">--%>
<%--                            <p class="new">New</p>--%>
<%--                          </div>--%>
<%--                          <img src="images/img-pro-01.jpg" class="img-fluid" alt="Image">--%>
<%--                          <div class="mask-icon">--%>
<%--                            <!-- <ul>--%>
<%--                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>--%>
<%--                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>--%>
<%--                            </ul> -->--%>

<%--                          </div>--%>
<%--                        </div>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">--%>
<%--                      <div class="why-text full-width">--%>
<%--                        <h4>商品</h4>--%>
<%--                        <h5> <del>$ 60.00</del> $40.79</h5>--%>
<%--                        <p>描述</p>--%>
<%--                        <a class="btn hvr-hover" href="#">添加到购物车</a>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                </div>--%>
<%--                <div class="list-view-box">--%>
<%--                  <div class="row">--%>
<%--                    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                      <div class="products-single fix">--%>
<%--                        <div class="box-img-hover">--%>
<%--                          <div class="type-lb">--%>
<%--                            <p class="sale">Sale</p>--%>
<%--                          </div>--%>
<%--                          <img src="images/img-pro-02.jpg" class="img-fluid" alt="Image">--%>
<%--                          <div class="mask-icon">--%>
<%--                            <!-- <ul>--%>
<%--                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>--%>
<%--                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>--%>
<%--                            </ul> -->--%>

<%--                          </div>--%>
<%--                        </div>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">--%>
<%--                      <div class="why-text full-width">--%>
<%--                        <h4>商品</h4>--%>
<%--                        <h5> <del>$ 60.00</del> $40.79</h5>--%>
<%--                        <p>描述</p>--%>
<%--                        <a class="btn hvr-hover" href="#">添加到购物车</a>--%>
<%--                      </div>--%>
<%--                    </div>--%>
<%--                  </div>--%>
<%--                </div>--%>

<%--                <div class="list-view-box">--%>
<%--                  <div class="row">--%>
<%--                    <div class="col-sm-6 col-md-6 col-lg-4 col-xl-4">--%>
<%--                      <div class="products-single fix">--%>
<%--                        <div class="box-img-hover">--%>
<%--                          <div class="type-lb">--%>
<%--                            <p class="sale">Sale</p>--%>
<%--                          </div>--%>
<%--                          <img src="images/img-pro-03.jpg" class="img-fluid" alt="Image">--%>

<%--                          <div class="mask-icon">--%>
<%--                            <!-- <ul>--%>
<%--                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="View"><i class="fas fa-eye"></i></a></li>--%>
<%--                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Compare"><i class="fas fa-sync-alt"></i></a></li>--%>
<%--                                <li><a href="#" data-toggle="tooltip" data-placement="right" title="Add to Wishlist"><i class="far fa-heart"></i></a></li>--%>
<%--                            </ul> -->--%>
<%--                          </div>--%>
<%--                        </div>--%>
<%--                      </div>--%>
<%--                    </div>--%>

<%--                    <div class="col-sm-6 col-md-6 col-lg-8 col-xl-8">--%>
<%--                      <div class="why-text full-width">--%>
<%--                        <h4>商品</h4>--%>
<%--                        <h5> <del>$ 60.00</del> $40.79</h5>--%>
<%--                        <p>描述</p>--%>
<%--                        <a class="btn hvr-hover" href="#">添加到购物车</a>--%>
<%--                      </div>--%>
<%--                    </div>--%>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>


      <div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left">
        <div class="product-categori">
          <div class="search-product">
            <form action="#">
              <input class="form-control" placeholder="Search here..." type="text">
              <button type="submit"> <i class="fa fa-search"></i> </button>
            </form>
          </div>

          <div class="filter-sidebar-left">
            <div class="title-left">
              <h3>店铺介绍</h3>
            </div>
            <div class="list-group list-group-collapse list-group-sm list-group-tree" id="list-group-men" data-children=".sub-men">


              ${store.recom}

              <img src="images/${store.img1}" >
              </br>
              <img src="images/${store.img2}">
              </br>
              <img src="images/${store.img2}">


            </div>




          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Shop Page -->








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

  </script>
</body>

</html>
