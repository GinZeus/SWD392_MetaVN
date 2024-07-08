<%-- 
    Document   : index
    Created on : Jul 8, 2024, 10:29:23 PM
    Author     : datng
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>

        <!-- Basic Page Needs
        ================================================== -->
        <meta charset="utf-8">
        <title>MetaVN</title>

        <!-- Mobile Specific Metas
        ================================================== -->
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="Construction Html5 Template">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=5.0">
        <meta name="author" content="Themefisher">
        <meta name="generator" content="Themefisher Constra HTML Template v1.0">

        <!-- theme meta -->
        <meta name="theme-name" content="aviato" />

        <!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="images/favicon1.png" />

        <!-- Themefisher Icon font -->
        <link rel="stylesheet" href="plugins/themefisher-font/style.css">
        <!-- bootstrap.min css -->
        <link rel="stylesheet" href="plugins/bootstrap/css/bootstrap.min.css">

        <!-- Animate css -->
        <link rel="stylesheet" href="plugins/animate/animate.css">
        <!-- Slick Carousel -->
        <link rel="stylesheet" href="plugins/slick/slick.css">
        <link rel="stylesheet" href="plugins/slick/slick-theme.css">

        <!-- Main Stylesheet -->
        <link rel="stylesheet" href="css/style.css">

    </head>

    <body id="body">

        <!-- Start Top Header Bar -->
        <jsp:include page="header/headerlevel1.jsp"></jsp:include>
            <!-- End Top Header Bar -->

            <!-- Start Main Menu Section -->
        <jsp:include page="header/menu1.jsp"></jsp:include>
            <!-- End Main Menu Section -->

            <div class="hero-slider">
                <div class="slider-item th-fullpage hero-area" style="background-image: url(images/slider/slider-a.jpg);">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 text-center">
                                <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">MẮT KÍNH CHÍNH HÃNG</p>
                                <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">Sắc màu cuộc sống rực rỡ hơn <br>với kính mắt chính hãng.</h1>
                                <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="shop">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slider-item th-fullpage hero-area" style="background-image: url(images/slider/slider-b.jpg);">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 text-left">
                                <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">GỌNG KÍNH ĐẸP, BỀN</p>
                                <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">Nâng tầm phong cách <br>của bạn.</h1>
                                <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="category?cid=2">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slider-item th-fullpage hero-area" style="background-image: url(images/slider/slider-c.jpg);">
                    <div class="container">
                        <div class="row">
                            <div class="col-lg-8 text-right">
                                <p data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".1">KÍNH RÂM CHẤT LƯỢNG CAO</p>
                                <h1 data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".5">Bảo vệ mắt,<br> nâng tầm phong cách.</h1>
                                <a data-duration-in=".3" data-animation-in="fadeInUp" data-delay-in=".8" class="btn" href="category?cid=1">Shop Now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <section class="product-category section">
                <div class="container">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="title text-center">
                                <h2>Loại sản phẩm</h2>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="category-box">
                                <a href="category?cid=1">
                                    <img src="images/shop/category/category-a.jpg" alt="" />
                                    <div class="content">
                                        <h3>Kính râm</h3>
                                        <p style="color: white">Bảo vệ đôi mắt, thể hiện phong cách</p>
                                    </div>
                                </a>	
                            </div>
                            <div class="category-box">
                                <a href="category?cid=2">
                                    <img src="images/shop/category/category-2.jpg" alt="" />
                                    <div class="content">
                                        <h3>Smart Casuals</h3>
                                        <p>Get Wide Range Selection</p>
                                    </div>
                                </a>	
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="category-box category-box-2">
                                <a href="category?cid=2">
                                    <img src="images/shop/category/category-b.jpg" alt="" />
                                    <div class="content">
                                        <h3>Gọng kính</h3>
                                        <p>Bền, đẹp, phong cách</p>
                                    </div>
                                </a>	
                            </div>
                        </div>
                    </div>
                </div>
            </section>

            <!--<section class="products section bg-gray">
                <div class="container">
                    <div class="row">
                        <div class="title text-center">
                            <h2>Sản phẩm mới ra</h2>
                        </div>
                    </div>
                    <div class="row">
                    <c:forEach items="${listP}" var="o">
                        <div class="col-md-4">
                            <div class="product-item">
                                <div class="product-thumb">
                                    <span class="bage">Sale</span>
                                    <img class="img-responsive" src="${o.imageurl}" alt="product-img" />
                                    <div class="preview-meta">
                                        <ul>
                                            <li>
                                                <a href="detail?pid=${o.id}">
                                                    <i class="tf-ion-ios-search-strong"></i>
                                                </a>
                                                    
                                                
                                            </li>
                                            <li>
                                                <a href="#!" ><i class="tf-ion-ios-heart"></i></a>
                                            </li>
                                            <li>
                                                <a href="buy?pid=${o.id}&num=1"><i class="tf-ion-android-cart"></i></a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="product-content">
                                    <h4><a href="detail?pid=${o.id}">${o.name}</a></h4>
                                    <p class="price">$${o.price}</p>
                                </div>
                            </div>
                        </div>
                    </c:forEach>


                    
                    <!-- Modal -->
<!--                    <div class="modal product-modal fade" id="product-modal">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <i class="tf-ion-close"></i>
                        </button>
                        <div class="modal-dialog " role="document">
                            <div class="modal-content">
                                <div class="modal-body">
                                    <div class="row">
                                        <div class="col-md-8 col-sm-6 col-xs-12">
                                            <div class="modal-image">
                                                <img class="img-responsive" src="${o.imgageurl}" alt="product-img" />
                                            </div>
                                        </div>
                                        <div class="col-md-4 col-sm-6 col-xs-12">
                                            <div class="product-short-details">
                                                <h2 class="product-title">${o.name}</h2>
                                                <p class="product-price">$${o.price}</p>
                                                <p class="product-short-description">
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo laborum numquam rem aut officia dicta cumque.
                                                </p>
                                                <a href="cart.html" class="btn btn-main">Add To Cart</a>
                                                <a href="product-single.html" class="btn btn-transparent">View Product Details</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>-->
                   <!-- /.modal -->
                    
                </div>
            </div>
        </section>-->


        <!--
        Start Call To Action
        ==================================== -->
<!--        <section class="call-to-action bg-gray section">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <div class="title">
                            <h2>SUBSCRIBE TO NEWSLETTER</h2>
                            <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Fugiat, <br> facilis numquam impedit ut sequi. Minus facilis vitae excepturi sit laboriosam.</p>
                        </div>
                        <div class="col-lg-6 col-md-offset-3">
                            <div class="input-group subscription-form">
                                <input type="text" class="form-control" placeholder="Enter Your Email Address">
                                <span class="input-group-btn">
                                    <button class="btn btn-main" type="button">Subscribe Now!</button>
                                </span>
                            </div> /input-group 
                        </div> /.col-lg-6 

                    </div>
                </div> 		 End row 
            </div>   	 End container 
        </section>    End section 

        <section class="section instagram-feed">
            <div class="container">
                <div class="row">
                    <div class="title">
                        <h2>View us on instagram</h2>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="instagram-slider" id="instafeed" data-accessToken="IGQVJYeUk4YWNIY1h4OWZANeS1wRHZARdjJ5QmdueXN2RFR6NF9iYUtfcGp1NmpxZA3RTbnU1MXpDNVBHTzZAMOFlxcGlkVHBKdjhqSnUybERhNWdQSE5hVmtXT013MEhOQVJJRGJBRURn"></div>
                    </div>
                </div>
            </div>
        </section>-->


        <footer>
            <jsp:include page="footer/footerlevel1.jsp"></jsp:include>
        </footer>

        <!-- 
        Essential Scripts
        =====================================-->

        <!-- Main jQuery -->
        <script src="plugins/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.1 -->
        <script src="plugins/bootstrap/js/bootstrap.min.js"></script>
        <!-- Bootstrap Touchpin -->
        <script src="plugins/bootstrap-touchspin/dist/jquery.bootstrap-touchspin.min.js"></script>
        <!-- Instagram Feed Js -->
        <script src="plugins/instafeed/instafeed.min.js"></script>
        <!-- Video Lightbox Plugin -->
        <script src="plugins/ekko-lightbox/dist/ekko-lightbox.min.js"></script>
        <!-- Count Down Js -->
        <script src="plugins/syo-timer/build/jquery.syotimer.min.js"></script>

        <!-- slick Carousel -->
        <script src="plugins/slick/slick.min.js"></script>
        <script src="plugins/slick/slick-animation.min.js"></script>

        <!-- Google Mapl -->
        <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCC72vZw-6tGqFyRhhg5CkF2fqfILn2Tsw"></script>
        <script type="text/javascript" src="plugins/google-map/gmap.js"></script>

        <!-- Main Js File -->
        <script src="js/script.js"></script>



    </body>
</html>

