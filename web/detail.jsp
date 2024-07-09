<%-- 
    Document   : detail
    Created on : Jul 9, 2024, 10:19:30 AM
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
            <section class="single-product">
                <div class="container">
                    <div class="row">
                        <div class="col-md-6">
                            <ol class="breadcrumb">
                                <li><a href="home.jsp">Home</a></li>
                                <li><a href="shop">Shop</a></li>
                                <li class="active">${detail.productName}</li>
                        </ol>
                    </div>
                    <!--                    <div class="col-md-6">
                                            <ol class="product-pagination text-right">
                                                <li><a href="blog-left-sidebar.html"><i class="tf-ion-ios-arrow-left"></i> Next </a></li>
                                                <li><a href="blog-left-sidebar.html">Preview <i class="tf-ion-ios-arrow-right"></i></a></li>
                                            </ol>
                                        </div>-->
                </div>
                <div class="row mt-20">
                    <div class="col-md-5">
                        <div class="single-product-slider">
                            <div id='carousel-custom' class='carousel slide' data-ride='carousel'>
                                <div class='carousel-outer'>
                                    <!-- me art lab slider -->
                                    <div class='carousel-inner '>
                                        <div class='item active'>
                                            <img src='${detail.thumbnail}' alt='' data-zoom-image="${detail.thumbnail}" />
                                        </div>
                                        <div class='item'>
                                            <img src='${detail.thumbnail}' alt='' data-zoom-image="${detail.thumbnail}" />
                                        </div>
                                        <div class='item'>
                                            <img src='${detail.thumbnail}' alt='' data-zoom-image="${detail.thumbnail}" />
                                        </div>


                                    </div>

                                    <!-- sag sol -->
                                    <a class='left carousel-control' href='#carousel-custom' data-slide='prev'>
                                        <i class="tf-ion-ios-arrow-left"></i>
                                    </a>
                                    <a class='right carousel-control' href='#carousel-custom' data-slide='next'>
                                        <i class="tf-ion-ios-arrow-right"></i>
                                    </a>
                                </div>

                                <!-- thumb -->
                                <ol class='carousel-indicators mCustomScrollbar meartlab'>
                                    <li data-target='#carousel-custom' data-slide-to='0' class='active'>
                                        <img src='${detail.thumbnail}' alt='' />
                                    </li>
                                    <li data-target='#carousel-custom' data-slide-to='1'>
                                        <img src='${detail.thumbnail}' alt='' />
                                    </li>
                                    <li data-target='#carousel-custom' data-slide-to='2'>
                                        <img src='${detail.thumbnail}' alt='' />
                                    </li>

                                </ol>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-7">
                        <div class="single-product-details">
                            <h2>${detail.productName}</h2>
                            <p class="product-price">$${detail.price}</p>

                            <p class="product-description mt-20">
                                ${detail.des}
                            </p>
                            <div class="color-swatches">
                                <span>Manufacturer:</span>
                                <p style="margin: 0">${detail.manufacturer}</p>
                            </div>
                            <a href="#" class="btn btn-main mt-20">Add To Cart</a>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xs-12">
                        <div class="tabCommon mt-20">
                            <ul class="nav nav-tabs">
                                <li class="active"><a data-toggle="tab" href="#details" aria-expanded="true">Description</a></li>
                                <li class=""><a href="FeedbackController?pid=${detail.productId}">Feedback</a></li>
                            </ul>
                            <div class="tab-content patternbg">
                                <div id="details" class="tab-pane fade active in">
                                    <h4>Product Description</h4>
                                    <p>${detail.des}</p>

                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--        <section class="products related-products section">
                    <div class="container">
                        <div class="row">
                            <div class="title text-center">
                                <h2>Related Products</h2>
                            </div>
                        </div>
                        <div class="row">
        <c:forEach items="${listP}" var="o">
            <div class="col-md-3">
                <div class="product-item">
                    <div class="product-thumb">
                        <img class="img-responsive" src="${o.imageurl}" alt="product-img" />
                        <div class="preview-meta">
                            <ul>
                                <li>
                                    <a href="detail?pid=${o.id}">
                                        <i class="tf-ion-ios-search-strong"></i>
                                    </a>
                                </li>
                                <li>
                                    <a href="#" ><i class="tf-ion-ios-heart"></i></a>
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

    </div>
</div>
</section>-->



        <!-- Modal -->
        <div class="modal product-modal fade" id="product-modal">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <i class="tf-ion-close"></i>
            </button>
            <div class="modal-dialog " role="document">
                <div class="modal-content">
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-md-8">
                                <div class="modal-image">
                                    <img class="img-responsive" src="images/shop/products/modal-product.jpg" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="product-short-details">
                                    <h2 class="product-title">GM Pendant, Basalt Grey</h2>
                                    <p class="product-price">$200</p>
                                    <p class="product-short-description">
                                        Lorem ipsum dolor sit amet, consectetur adipisicing elit. Rem iusto nihil cum. Illo laborum numquam rem aut officia dicta cumque.
                                    </p>
                                    <a href="#!" class="btn btn-main">Add To Cart</a>
                                    <a href="#!" class="btn btn-transparent">View Product Details</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
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
