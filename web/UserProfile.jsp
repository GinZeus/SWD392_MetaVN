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
        <style>
            .specificMessage{
                margin: 0px 0px 0px 25px;
            }
            .required::after{
                content: "*";
                color:red;
                font-size: 15px;
            }
            .profilePicture{
                width: 250px;
                height: 200px;
                margin: 50px 0 50px 0;
                border:3px solid black;
                border-radius: 50%;
                padding: 2px;
            }
        </style>
    </head>


    <body id="body">

    </body>

    <!-- Start Top Header Bar -->
    <jsp:include page="header/headerlevel1.jsp"></jsp:include>
        <!-- End Top Header Bar -->

        <div id="all">
            <div id="content">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <!-- breadcrumb-->
                            <nav aria-label="breadcrumb">
                                <ol class="breadcrumb">
                                    <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                                    <li aria-current="page" class="breadcrumb-item active">My account</li>
                                </ol>
                            </nav>
                        </div>
                        <div class="col-lg-3">
                            <!--
                            *** CUSTOMER MENU ***
                            _________________________________________________________
                            -->
                            <div class="card sidebar-menu">
                                <div class="card-header">
                                    <h3 class="h4 card-title">Customer section</h3>
                                </div>
                                <div class="card-body">
                                    <ul class="nav nav-pills flex-column" style="display: flex;
                                        flex-direction: column;">
                                        <a href="profileControl" class="nav-link active" style="width: 100%;"><i class="fa fa-user"></i>My Profile</a>
                                        <a href="passwordControl" class="nav-link" style="width: 100%;"><i class="fa fa-lock"></i>Change Password</a>
                                        <a href="ToConfirmController" class="nav-link" style="width: 100%;"><i class="fa fa-shopping-basket"></i>My Order</a>
                                        <a href="OrderHistoryController" class="nav-link" style="width: 100%;"><i class="fa fa-history"></i>Order History</a>
                                        <a href="LogoutController" class="nav-link" style="width: 100%;"><i class="fa fa-arrow-left"></i>Logout</a>
                                    </ul>
                                </div>
                            </div>
                            <!-- /.col-lg-3-->
                            <!-- *** CUSTOMER MENU END ***-->
                        </div>
                        <div class="col-lg-9">
                            <div class="box">

                                <h3 class="mt-5 text-center">Personal details</h3>
                                <p class="lead">Change your personal details here</p>
                                <div class="row">
                                    <div class="col-md-4">
                                        <h4>Profile picture</h4>
                                    </div>
                                    <div class="col-md-8">
                                        <img class="rounded-circle profilePicture"  src="${user.username}" alt="profilePicture">
                                </div>
                            </div>
                            <br>

                            <div class="row">
                                <h4 style="color:red">${needProfile}</h4>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <p style="color:red">* : Please input in these field </p>
                                </div>
                                <div class="col-md-8">
                                </div>
                            </div>

                            <form  id="userProfile" name="userProfile" action="editProfile" method="POST" onsubmit="validateUserProfile()">
                                <!--                        row-->
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="username">Username</label>
                                            <input readonly required name="username" id="username" value="${user.username}" placeholder="Enter your name" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <!--row-->
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="email">Email</label> <span class="specificMessage" id="emailMessage"></span>
                                            <input readonly required name="email" id="Gmail" value="${user.email}" placeholder="Enter your name" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <!--                   second row-->          
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="required" for="fullName">Fullname</label> <span class="specificMessage" id="fullNameMessage"></span>
                                            <input required name="fullName" id="fullName" value="${user.fullname}" placeholder="Enter your name" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>
                                <!--                     third row -->
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="required" for="address">Address</label> <span class="specificMessage" id="addressMessage"></span>
                                            <input required name="address" id="address" value="${user.address}" placeholder="Enter your address" type="text" class="form-control">
                                        </div>
                                    </div> 
                                </div>
                                <!--fourth row-->
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label class="required" for="phoneNumber">Phone number</label>  <span class="specificMessage" id="phoneMessage"></span>
                                            <input required name="phoneNumber" id="phoneNumber"  value="${user.phoneNumber}" placeholder="Enter you phone number" type="text" class="form-control">
                                        </div>
                                    </div>
                                </div>

<!--                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="form-group">
                                            <label for="avatar">Change avatar</label>
                                            <input name="avatar" id="avatar" placeholder="Image file" type="file" accept="image/*" class="form-control">
                                        </div>
                                    </div>
                                </div>-->

                                <div class="col-md-12 text-center">
                                    <p id="userProfileMessage" style="color:green; font-weight: bold">${requestScope.successMessage}</p>
                                    <input type="hidden" name="successMessage" value="Edit profile successfully!">
                                    <button type="submit" class="btn btn-primary"><i class="fa fa-save"></i> Save new changes</button>
                                </div>
                            </form>
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
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <script src="js_dashbroad/jquery.min.js" type="text/javascript"></script>

    <!-- Bootstrap -->
    <script src="js_dashbroad/bootstrap.min.js" type="text/javascript"></script>
    <!-- Director App -->
    <script src="js_dashbroad/Director/app.js" type="text/javascript"></script>
    <script src='js/userProfile.js'></script>
    <script src="js/front.js"></script>

</body>
</html>

