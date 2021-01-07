<%-- 
    Document   : basic-table
    Created on : 24-11-2020, 09:19:48
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="keywords"
        content="wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 4 admin, bootstrap 4, css3 dashboard, bootstrap 4 dashboard, severny admin bootstrap 4 dashboard, frontend, responsive bootstrap 4 admin template, pixel  design, pixel  dashboard bootstrap 4 dashboard template">
    <meta name="description"
        content="Pixel Admin is powerful and clean admin dashboard template, inpired from Bootstrap Framework">
    <meta name="robots" content="noindex,nofollow">
    <title>Admin Page</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/pixel-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16"
        href="https://wrappixel.com/demos/free-admin-templates/all-lite-landing-pages/assets/images/logos/pixel-favicon.png">
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value='/resources/admin/bootstrap/dist/css/bootstrap.min.css'/>" rel="stylesheet">
    <!-- Menu CSS -->
    <link <link href="<c:url value='/resources/admin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css'/>" rel="stylesheet">
    <!-- animation CSS -->
    <link <link href="<c:url value='/resources/admin/css/animate.css'/>" rel="stylesheet">
    <!-- Custom CSS -->
    <link href="<c:url value='/resources/admin/css/style.css'/>" rel="stylesheet">
    <!-- color CSS -->
    <link href="<c:url value='/resources/admin/css/colors/blue-dark.css'/>" id="theme" rel="stylesheet">
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->
</head>

<body>
    <!-- Preloader -->
    <div class="preloader">
        <div class="cssload-speeding-wheel"></div>
    </div>
    <div id="wrapper">
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top m-b-0">
            <div class="navbar-header"> <a class="navbar-toggle hidden-sm hidden-md hidden-lg "
                    href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse"><i class="fa fa-bars
"></i></a>
                <div class="top-left-part"><a class="logo" href="${pageContext.request.contextPath}/admin/index"><b><img
                                src="<c:url value='/resources/admin/plugins/images/pixeladmin-logo.png'/>" alt="home" /></b><span
                                    class="hidden-xs"><img src="<c:url value='/resources/admin/plugins/images/pixeladmin-text.png'/>" alt="home" /></span></a>
                </div>
                <ul class="nav navbar-top-links navbar-left m-l-20 hidden-xs">
                    <li>
                        <form  action="${pageContext.request.contextPath}/searchstudent" method="get" class="app-search hidden-xs">
                            <input type="text" name="searchText" placeholder="Search..." class="form-control" id="searchText"> <a><i
                                    class="fa fa-search" type="submit" value="Search"></i></a>        
                        
                        </form>                    
                    </li>
                </ul>
                <ul class="nav navbar-top-links navbar-right pull-right">
                    <li>
                        <a class="profile-pic" href="${pageContext.request.contextPath}/user" > <img src="<c:url value='/resources/admin/plugins/images/users/varun.jpg'/>" alt="user-img"
                                width="36" class="img-circle"><b class="hidden-xs">le van long</b> </a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-header -->
            <!-- /.navbar-top-links -->
            <!-- /.navbar-static-side -->
        </nav>
        <!-- Left navbar-header -->
        <div class="navbar-default sidebar" role="navigation">
            <div class="sidebar-nav navbar-collapse slimscrollsidebar">
                <ul class="nav" id="side-menu">
                     <li style="padding: 10px 0 0;">
                       
                    </li>
    
                     <li>
                        <a href="${pageContext.request.contextPath}/map-google" class="waves-effect"><i class="fa fa-globe fa-fw"
                                aria-hidden="true"></i><span class="hide-menu">Google Map</span></a>
                    </li>                   
                    <li>
                        <a href="${pageContext.request.contextPath}/book" class="waves-effect"><i class="fa fa-columns fa-fw"
                                aria-hidden="true"></i><span class="hide-menu">bookList</span></a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/student" class="waves-effect"><i class="fa fa-columns fa-fw"
                                aria-hidden="true"></i><span class="hide-menu">Student</span></a>
                    </li>
                     <li>
                        <a href="${pageContext.request.contextPath}/logout" class="waves-effect"><i class="fa fa-columns fa-fw"
                                aria-hidden="true"></i><span class="hide-menu">Login</span></a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/category" class="waves-effect"><i class="fa fa-columns fa-fw"
                                aria-hidden="true"></i><span class="hide-menu">Category</span></a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/card" class="waves-effect"><i class="fa fa-columns fa-fw"
                                aria-hidden="true"></i><span class="hide-menu">Card</span></a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- Left navbar-header end -->
        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row bg-title">
                    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
                        <h4 class="page-title">List Student Table</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
                        <ol class="breadcrumb">                          
                            <li class="active">List Student Table</li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3 class="box-title">List Student Table</h3>
                            <div class="table-responsive">
                                
                                <table class="table">
                                     <c:if test="${studentList.size()>0}" > 
                                    <thead>                                     
                                        <tr>
                                            <th>Student ID</th>
                                            <th>Student Name</th>
                                            <th>Student Classr</th>
                                            <th>Address</th>
                                            <th>City</th>
                                            <th>Sex</th>
                                            <th>Birth Date</th>                               
                                            <th>Check Information</th>
                                            <th>Delete</th>
                                        </tr>
                                    </thead>  
                                    <tbody>
                                        <c:forEach var="student" items="${studentList}">
                                            <tr>
                                            <td>${student.studentId}</td>
                                            <td>${student.studentName}</td>
                                            <td>${student.studentClassr}</td>
                                            <td>${student.address}</td>
                                            <td>${student.city}</td>
                                            <td>${student.sex}</td>
                                            <td>${student.birDate}</td>
                                           
                                            <td><a href="${pageContext.request.contextPath}/viewDetail/${student.studentId}">view Detail</a></td>
                                            <td><a href="${pageContext.request.contextPath}/deleteStudent/${student.studentId}">Delete</a></td>                        
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                    </c:if>
                                </table>
                               <c:if test="${studentList.size()==0}" >
                                    <c:out value="There is no result. Try agin"/>
                               </c:if>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
            </div>

        </div>
        <!-- /#page-wrapper -->
    </div>
     
    <script src="<c:url value='/resources/admin/plugins/bower_components/jquery/dist/jquery.min.js'/>"></script>
    <script src="<c:url value='/resources/admin/bootstrap/dist/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/resources/admin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js'/>"></script>
    <script src="<c:url value='/resources/admin/js/jquery.slimscroll.js'/>"></script>
    <script src="<c:url value='/resources/admin/js/waves.js'/>"></script>
    <script src="<c:url value='/resources/admin/js/custom.min.js'/>"></script>
</body>

</html>
