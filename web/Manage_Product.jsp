
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

    </body>

    <!-- Start Top Header Bar -->
    <jsp:include page="header/headerlevel1.jsp"></jsp:include>
        <!-- End Top Header Bar -->


        <section class="content">
            <div class="row">
                <div class="col-xs-12">
                    <div class="panel">
                        <header class="panel-heading">Manage Products</header>
                        <div class="panel-body table-responsive">
                            <div class="box-tools m-b-15" style="display: flex; justify-content: space-between">

                                <div class=" add-task-row">
                                    <a class="btn btn-success btn-sm pull-left" data-toggle="modal" data-target="#addProduct">Add New Product</a>
                                </div>

                            </div>
                            <table class="display" style="width:100%" id="manageProductTable" bordered striped>
                                <thead>
                                    <tr style="text-align: center">
                                        <th>ID</th>
                                        <th>Image</th>
                                        <th>Name</th>
                                        <th>Manufacturer</th>
                                        <th>Quantity</th>
                                        <th>Price</th>
                                        <th>Status</th>
                                        <th>Created_time</th>
                                        <th>""</th>
                                        <th>""</th>
                                        <th>""</th>
                                    </tr>
                                </thead>
                                <tbody>

                                <c:forEach items="${productList}" var="product">
                                    <tr>
                                        <td>${product.productId}</td>
                                        <td><img src="${product.thumbnail}" alt="${product.productName}" style="width: 10rem"></td>
                                        <td style="max-width: 10rem">${product.productName}</td>
                                        <td>${product.manufacturer}</td>
                                        <td>${product.quantity}</td>
                                        <td>${product.price}</td>
                                        <td>
                                            <c:if test="${product.status.equals('active')}">
                                                <span class="label label-success">Available</span>
                                            </c:if>
                                            <c:if test="${!product.status.equals('active')}">
                                                <span class="label label-warning">Out of Stock</span>
                                            </c:if>
                                        </td>

                                        <td>${product.createAt}</td>
                                        <td><a href="FeedbackController?pid=${product.productId}">Feedback</a></td>
                                        <td><a style="font-size: 2rem"><button>Update Product</button></a></td>
                                        <td><a href="deleteProduct?pid=${product.productId}" style="color: red; font-size: 2rem"><button onclick="return confirm('Do you want to delete this product ?')">Delete</button></a></td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div>
            <div class="modal fade" id="addProduct" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <form action="AddProduct" method="post">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Add Product</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>

                            <div class="modal-body">
                                <div class="container-fluid">
                                    <div class="row">
                                        <p style="color:red; margin-left: 1rem">* : Please input in these field </p>
                                        <div class="col-md-12">
                                            <label for="product_name" class="col-form-label required">Product name</label>
                                            <input name="product_name" type="text" class="form-control" id="product_name" required>
                                        </div>
                                        <div class="col-md-4">
                                            <label for="manufacturer" class="col-form-label required">Manufacturer</label>
                                            <input name="manufacturer" step="any" type="text" class="form-control" id="manufacturer" required>
                                        </div>
                                        <div class="col-md-6">
                                            <label for="cate" class="col-form-label">Category:</label> <br/>
                                            <select id="cate" name="cate" style="height: 45px">
                                                <c:forEach items="${cateList}" var="c">
                                                <option value="${c.categoryId}">${c.categoryName}</option>
                                                </c:forEach>
                                            </select>
                                        </div>   
                                        <div class="col-md-4">
                                            <label for="price" class="col-form-label required">Price</label>
                                            <input name="price" step="any" type="number" class="form-control" id="price" required min="0">
                                        </div>
                                        <div class="col-md-6">
                                            <label for="quantity" class="col-form-label required">Quantity</label> <span id="quantityError" style="color: red; display: none; font-size: 1rem; float: inline-end; padding-top: 5px">Enter a positive integer value.</span>
                                            <input name="quantity" type="number" class="form-control" id="quantity" min="1" required>

                                        </div>
                                        <div class="col-md-12">
                                            <label for="des" class="col-form-label">Description</label>
                                            <span id="charCount" style="float: inline-end;"></span>
                                            <textarea rows="4" class="form-control" id="des" name="des" maxlength="1000"></textarea>
                                        </div>
                                        <div class="col-md-12">
                                            <label for="thumbnail" class="col-form-label required">Thumbnail</label>
                                            <input class="form-control" type="file" name="thumbnail" accept="image/*" required id="thumbnail">
                                        </div>
                                    </div>
                                </div>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Add Product</button>
                            </div>
                        </form>
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
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.0.2/jquery.min.js"></script>
    <script src="js_dashbroad/jquery.min.js" type="text/javascript"></script>

    <!-- Bootstrap -->
    <script src="js_dashbroad/bootstrap.min.js" type="text/javascript"></script>
    <!-- Director App -->
    <script src="js_dashbroad/Director/app.js" type="text/javascript"></script>
    <script>
                                            const textarea = document.getElementById('des');
                                            const charCount = document.getElementById('charCount');
                                            const charLimitError = document.getElementById('charLimitError');

                                            textarea.addEventListener('input', function () {
                                                const inputText = this.value;
                                                const remainingChars = 1000 - inputText.length;
                                                charCount.textContent = remainingChars + ' characters remaining';

                                            });

                                            textarea.addEventListener('blur', function () {
                                                charCount.style.display = 'none';
                                            });

                                            textarea.addEventListener('focus', function () {
                                                charCount.style.display = 'inline';
                                            });
    </script>
    <script>
        const quantityInput = document.getElementById('quantity');
        const quantityError = document.getElementById('quantityError');

        quantityInput.addEventListener('input', function () {
            const quantityValue = parseInt(this.value);

            if (Number.isInteger(quantityValue) && quantityValue > 0) {
                quantityError.style.display = 'none';
            } else {
                quantityError.style.display = 'block';
                event.preventDefault();
            }
        });
    </script>
    <script src="//cdn.datatables.net/1.13.6/js/jquery.dataTables.min.js"></script>
    <!--    <script>
            $(document).ready(function () {
                $('#manageProductTable').DataTable({
                    pagingType: 'full_numbers',
                    columns: [
    
                        null,
                        {orderable: false},
                        null,
                        null,
                        null,
                        null,
                        null,
                        null,
                        {orderable: false},
                        null,
                        {orderable: false},
                        {orderable: false},
                        {orderable: false}
    
                    ]
                });
            });
        </script>-->
    <!--    <script>
            // change active in sidebar
            let pageStatus = document.querySelector('#manageProduct');
            pageStatus.className = "active";
        </script>-->


</body>
</html>

