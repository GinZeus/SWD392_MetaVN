<%-- 
    Document   : login
    Created on : Jul 8, 2024, 10:47:04 PM
    Author     : datng
--%>

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

        <section class="signin-page account">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-md-offset-3">
                        <div class="block text-center">
                            <a class="logo" href="home.jsp">
                                <img src="images/newlogo.png" alt="">
                            </a>
                            <h2 class="text-center" style="margin-bottom: 25px">Welcome back</h2>
                            <p class="text-danger">${mess}</p>
                            <form class="text-left clearfix" action="LoginController" method="post">
                                <div class="form-group">
                                    <input name="user" type="text" class="form-control"  placeholder="Username" value="${username1}">
                                </div>
                                <div class="form-group">
                                    <input name="pass" type="password" class="form-control" placeholder="Password" value="${password1}">
                                </div>
                                <input type="checkbox" name ="remember" value="1"/>Remember<br/>
                                <div class="text-center">
                                    <button type="submit" class="btn btn-main text-center" >Login</button>
                                </div>
                            </form>
                            <p class="mt-20">New in this site ?<a href="signup.jsp">Create new Account</a></p>
<!--                            <p><a href="forget-password.jsp">Quên mật khẩu</a></p>-->
                        </div>
                    </div>
                </div>
            </div>
        </section>

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

