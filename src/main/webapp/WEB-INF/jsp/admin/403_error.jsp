<%-- 
    Document   : profile
    Created on : 24-11-2020, 09:20:52
    Author     : ACER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="mvc" %>
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
    <title>403-ERROR</title>
    <link rel="canonical" href="https://www.wrappixel.com/templates/pixel-admin-lite/" />
    <!-- Favicon icon -->
    <link rel="icon" type="image/png" sizes="16x16"
        href="https://wrappixel.com/demos/free-admin-templates/all-lite-landing-pages/assets/images/logos/pixel-favicon.png">
    <!-- Bootstrap Core CSS -->
    <link href="<c:url value='/resources/admin/bootstrap/dist/css/bootstrap.min.css'/>" rel="stylesheet">
    <!-- Menu CSS -->
    <link href="<c:url value='/resources/admin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css'/>" rel="stylesheet">
    <!-- animation CSS -->
    <link href="<c:url value='/resources/admin/css/animate.css'/>" rel="stylesheet">
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
                    href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse"><i
                        class="fa fa-bars"></i></a>
                <div class="top-left-part"><a class="logo" href="${pageContext.request.contextPath}/"><b><img
                                src="<c:url value='/resources/admin/plugins/images/pixeladmin-logo.png'/>" alt="home" /></b><span
                                    class="hidden-xs"><img src="<c:url value='/resources/admin/plugins/images/pixeladmin-text.png'/>" alt="home" /></span></a>
                </div>
                <ul class="nav navbar-top-links navbar-left m-l-20 hidden-xs">
                    <li>
                        <form role="search" class="app-search hidden-xs">
                            <input type="text" placeholder="Search..." class="form-control"> <a href=""><i
                                    class="fa fa-search"></i></a>
                        </form>
                    </li>
                </ul>
                <ul class="nav navbar-top-links navbar-right pull-right">
                    <li>
                        <a class="profile-pic" href="${pageContext.request.contextPath}/user" > <img src="<c:url value='/resources/admin/plugins/images/users/varun.jpg'/>" alt="user-img"
                                                                                                     width="36" class="img-circle"><b class="hidden-xs">${studentName}</b> </a>
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
                        <a href="${pageContext.request.contextPath}/bookList" class="waves-effect"><i class="fa fa-columns fa-fw"
                                aria-hidden="true"></i><span class="hide-menu">bookList</span></a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/student" class="waves-effect"><i class="fa fa-columns fa-fw"
                                aria-hidden="true"></i><span class="hide-menu">Student</span></a>
                    </li>
                     <li>
                        <a href="${pageContext.request.contextPath}/login" class="waves-effect"><i class="fa fa-columns fa-fw"
                                aria-hidden="true"></i><span class="hide-menu">login</span></a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath}/register" class="waves-effect"><i class="fa fa-columns fa-fw"
                                aria-hidden="true"></i><span class="hide-menu">Register</span></a>
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
                        <h4 class="page-title">Profile page</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> 
                        <ol class="breadcrumb">
                            <li><a href="#">Dashboard</a></li>
                            <li class="active">Profile page</li>
                        </ol>
                    </div>
                </div>
                <!-- /.row -->
                <!-- .row -->
                <mvc:form modelAttribute="student" action="${pageContext.request.contextPath}/updateStudent" method="post">
                <div class="row">
                    <div class="col-md-4 col-xs-12">
                        <div class="white-box">
                            <div class="user-bg"> <img width="100%" alt="user" src="<c:url value='/resources/admin/plugins/images/large/img1.jpg'/>">
                                <div class="overlay-box">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-8 col-xs-12">
                        <div class="white-box">
                           <h1>Bạn không có quyền truy cập trang này. Xin hãy thử Đăng nhập lại!!</h1>
 
                        </div>
                    </div>                
                </div>
                </mvc:form>
            </div>
 
        </div>
    </div>
    <script src="<c:url value='/resources/admin/plugins/bower_components/jquery/dist/jquery.min.js'/>"></script>
    <script src="<c:url value='/resources/admin/bootstrap/dist/js/bootstrap.min.js'/>"></script>
    <script src="<c:url value='/resources/admin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js'/>"></script>
    <script src="<c:url value='/resources/admin/js/jquery.slimscroll.js'/>"></script>
    <script src="<c:url value='/resources/admin/js/waves.js'/>"></script>
    <script src="<c:url value='/resources/admin/js/custom.min.js'/>"></script>
</body>

</html>
