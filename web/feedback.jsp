<%-- 
    Document   : feedback.jsp
    Created on : Jul 9, 2024, 11:42:09 AM
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
                                <li><a href="homecontroll">Home</a></li>
                                <li><a href="shop">Shop</a></li>
                                <li class="active">Feedback</li>
                            </ol>
                        </div>
                        <div class="col-md-6">
                            <ol class="product-pagination text-right">
                                <li><a href="DetailController?pid=${pid}"><i class="tf-ion-ios-arrow-left"></i> Back </a></li>
                        </ol>
                    </div>
                </div>

                <div class="row">
                    <div class="col-xs-12">
                        <div class="tabCommon mt-20">
                            <div id="reviews" class="tab-pane">
                                <div class="post-comments">
                                    <h3>Feedback</h3>
                                    <c:if test="${checkBuy == true}">
                                        <form class="text-left clearfix" action="FeedbackController" method="post" >
                                            <input type="hidden" name="pid" value="${pid}">
                                            <div class="form-group">
                                                <input type="text" class="form-control"  placeholder="Feedback" name="content">
                                            </div>
                                            <div style="float: right">
                                                <button type="submit" class="btn btn-main text-center" >Post</button>
                                            </div>
                                        </form>

                                        <br/>
                                    </c:if>

                                    <ul class="media-list comments-list m-bot-50 clearlist">
                                        <c:forEach items="${fb_list}" var="f">
                                            <c:set var="user" value="${userDAO.getUserInfo(f.userId)}" />
                                            <!-- Comment Item start-->
                                            <li class="media">

                                                <a class="pull-left" href="#!">
                                                    <img class="media-object comment-avatar" src="images/blog/avater-1.jpg" alt="" width="50" height="50" />
                                                </a>

                                                <div class="media-body">
                                                    <div class="comment-info">
                                                        <h4 class="comment-author">
                                                            <a href="#!"><c:out value="${user.fullname}" /></a>

                                                        </h4>
                                                        <time >${f.updateAt}</time>
                                                    </div>

                                                    <p>
                                                        ${f.content}
                                                    </p>
                                                </div>

                                            </li>
                                            <!-- End Comment Item -->
                                        </c:forEach>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

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

