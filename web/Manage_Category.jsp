
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
            td{
                text-align: center;
                max-width: 10vw;
                overflow: hidden;
                text-overflow: ellipsis;
                white-space: nowrap;
            }
            th{
                text-align: center;
            }

            table.dataTable thead th, table.dataTable thead td, table.dataTable tfoot th, table.dataTable tfoot td{
                text-align: center;
            }
            .required::after{
                content: "*";
                color:red;
                font-size: 15px;
            }
        </style>
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
                        <header class="panel-heading">Manage Category<h4 style="${totalCateCount >0 ? "color: green;":"color: red;"}">Number of categories: ${totalCateCount}</h4></header>

                    <!-- </div> -->
                    <div class="panel-body table-responsive">
                        <div class="box-tools m-b-15" style="display: flex; justify-content: space-between">
                            <div class=" add-task-row">
                                <a class="btn btn-success btn-sm pull-left" href="#addCateModal"  data-toggle="modal" data-target="#addCateModal">Add New Category</a>
                            </div>
                        </div>
                        <table class="display" style="width:100%"  id="cateTable">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Category Name</th>
                                    <th>Status</th>
                                    <th>Description</th>
                                    <th></th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>

                                <c:forEach items="${cateList}" var="cate">
                                    <tr style="height: 10vh;">

                                        <td >${cate.categoryId}</td>
                                        <td >${cate.categoryName}</td>
                                        <td><span class="label label-success">Available</span></td>
                                        <td>${cate.des}</td>
                                        <td><a href="#editCateModal"  data-toggle="modal" data-target="#editCateModal" style="font-size: 2rem"
                                               title="View/edit Category info"
                                               data-cate-id="${cate.categoryId}"
                                               data-cate-name="${cate.categoryName}"
                                               data-cate-des="${cate.des}">
                                                <button>Edit</button></a></td>
                                        <td><a href="DeleteCateController?cate_id=${cate.categoryId}" 
                                               onclick="return confirm('Do you want to delete this category ?')" 
                                               style="color: red; font-size: 2rem" title="Delete Cate"><i class="fa fa-trash-o"></i></a></td>
                                    </tr>
                                </c:forEach>

                            </tbody>



                        </table>

                    </div><!-- /.box-body -->
                </div><!-- /.box -->
            </div>
        </div>
    </section>
    <div class="modal fade" id="addCateModal" tabindex="-1" role="dialog" aria-labelledby="addCateModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" >Add new category</h5>
                </div>
                <div class="modal-body">
                    <div class="panel-body">
                        <p style="color:red; margin-left: 1rem">* : Please input in these field </p>
                        <form class="form-horizontal tasi-form" id="addCateForm" action="AddCateController" method="post">
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label required">Category Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" name="cate_name" required="">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Add</button>
                            </div>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <div class="modal fade" id="editCateModal" tabindex="-1" role="dialog" aria-labelledby="editCateModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit category info</h5>
                </div>
                <div class="modal-body">
                    <div class="panel-body">
                        <form class="form-horizontal tasi-form" id="editCateForm" action="EditCateController" method="post">
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">ID</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="cateId" name="cateId" readonly>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">Name</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="cateName" name="cate_name" required>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-2 col-sm-2 control-label">Description</label>
                                <div class="col-md-10">
                                    <label for="des" class="col-form-label">Description</label>
                                    <span id="charCount" style="float: inline-end;"></span>
                                    <textarea rows="4" class="form-control" id="des" name="cate_des" maxlength="1000"></textarea>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                <button type="submit" class="btn btn-primary">Save changes</button>
                            </div>
                        </form>
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
    <script>

                                                   // SEND INFO FROM TABLE TO EDIT cate MODAL //
                                                   $('#editCateModal').on('show.bs.modal', function (e) {
                                                       // get information to update quickly to modal view as loading begins
                                                       var opener = e.relatedTarget;//this holds the element who called the modal

                                                       //get details from table
                                                       var cate_id = $(opener).attr('cate_id');
                                                       var cate_name = $(opener).attr('cate_name');
                                                       var cate_des = $(opener).attr('cate_des');

                                                       //set what we got to our form
                                                       $('#editCateForm').find('[name="cateId"]').val(cate_id);
                                                       $('#editCateForm').find('[name="cate_name"]').val(cate_name);
                                                       $('#editCateForm').find('[name="cate_des"]').val(cate_des);
                                                   });


//                                                   $(document).ready(function () {
//                                                       $('#cateTable').DataTable({
//                                                           pagingType: 'full_numbers',
//                                                           columns: [
//                                                               null,
//                                                               null,
//                                                               {orderable: false},
//                                                               {orderable: false},
//                                                               {orderable: false}
//                                                           ]
//                                                       });
//                                                   });
    </script>
    <script>
        // change active in sidebar
        let pageStatus = document.querySelector('#mangeCate');
        pageStatus.className = "active";
    </script>


</body>
</html>

