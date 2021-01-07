<%-- 
    Document   : index
    Created on : 18-11-2020, 15:15:21
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
    <link href="<c:url value='/resources/admin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.css'/>" rel="stylesheet">
    <!-- toast CSS -->
    <link href="<c:url value='/resources/admin/plugins/bower_components/toast-master/css/jquery.toast.css'/>" rel="stylesheet">
    <!-- morris CSS -->
    <link href="<c:url value='/resources/admin/plugins/bower_components/morrisjs/morris.css'/>" rel="stylesheet">
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
                <div class="top-left-part"><a class="logo" href="${pageContext.request.contextPath}/admin/index"><b><img
                                src="<c:url value='/resources/admin/plugins/images/pixeladmin-logo.png'/>" alt="/" /></b><span
                                    class="hidden-xs"><img src="<c:url value='/resources/admin/plugins/images/pixeladmin-text.png'/>" alt="/" /></span></a>
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
                                width="36" class="img-circle"><b class="hidden-xs">la van dai</b> </a>
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
                        <h4 class="page-title">Home Page</h4>
                    </div>
                    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12"> 
                        <ol class="breadcrumb">
                            <li><a href="#">Home Page</a></li>
                        </ol>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- row -->
                <div class="row">
                    <!--col -->
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="white-box">
                            <div class="col-in row">
                                <div class="col-md-6 col-sm-6 col-xs-6"> <i data-icon="E"
                                        class="linea-icon linea-basic"></i>
                                    <h5 class="text-muted vb">Books Borrowed</h5>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    <h3 class="counter text-right m-t-15 text-danger">23</h3>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-danger" role="progressbar"
                                            aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                    <!--col -->
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="white-box">
                            <div class="col-in row">
                                <div class="col-md-6 col-sm-6 col-xs-6"> <i class="linea-icon linea-basic"
                                        data-icon="&#xe01b;"></i>
                                    <h5 class="text-muted vb">New Books Imported</h5>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    <h3 class="counter text-right m-t-15 text-megna">169</h3>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-megna" role="progressbar"
                                            aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                    <!--col -->
                    <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12">
                        <div class="white-box">
                            <div class="col-in row">
                                <div class="col-md-6 col-sm-6 col-xs-6"> <i class="linea-icon linea-basic"
                                        data-icon="&#xe00b;"></i>
                                    <h5 class="text-muted vb">Books Sold</h5>
                                </div>
                                <div class="col-md-6 col-sm-6 col-xs-6">
                                    <h3 class="counter text-right m-t-15 text-primary">157</h3>
                                </div>
                                <div class="col-md-12 col-sm-12 col-xs-12">
                                    <div class="progress">
                                        <div class="progress-bar progress-bar-primary" role="progressbar"
                                            aria-valuenow="40" aria-valuemin="0" aria-valuemax="100" style="width: 40%">
                                            <span class="sr-only">40% Complete (success)</span> </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.col -->
                </div>
                <!-- /.row -->
                <!--row -->

                <!--row -->
                <div class="row">
                    <div class="col-sm-12">
                        <div class="white-box">
                            <h3 class="box-title" href="employerList" class="active" >Employer List
                                <div class="col-md-2 col-sm-4 col-xs-12 pull-right">  
                                </div>
                            </h3>
                            <div class="table-responsive">                             
                             <table class="table">
                                     <c:if test="${employerList.size()>0}" > 
                                    <thead>                                     
                                        <tr>
                                            <th>Employer ID</th>
                                            <th>Employer Name</th>
                                            <th>Position</th>
                                            <th>Working Time</th>
                                        </tr>
                                    </thead>  
                                    <tbody>
                                        <c:forEach var="employer" items="${employerList}">
                                            <tr>
                                            <td>${employer.employerID}</td>
                                            <td>${employer.employerName}</td>
                                            <td>${employer.position}</td>
                                            <td>${employer.workingTime}</td>
                                            
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                    </c:if>
                                </table><a href="#">Check all the sales</a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- /.row -->
                <!-- row -->

                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
    <!-- jQuery -->
    <script src="<c:url value='/resources/admin/plugins/bower_components/jquery/dist/jquery.min.js'/>"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="<c:url value='/resources/admin/bootstrap/dist/js/bootstrap.min.js'/>"></script>
    <!-- Menu Plugin JavaScript -->
    <script src="<c:url value='/resources/admin/plugins/bower_components/sidebar-nav/dist/sidebar-nav.min.js'/>"></script>
    <!--slimscroll JavaScript -->
    <script src="<c:url value='/resources/admin/js/jquery.slimscroll.js'/>"></script>
    <!--Wave Effects -->
    <script src="<c:url value='/resources/admin/js/waves.js'/>"></script>
    <!--Counter js -->
    <script src="<c:url value='/resources/admin/plugins/bower_components/waypoints/lib/jquery.waypoints.js'/>"></script>
    <script src="<c:url value='/resources/admin/plugins/bower_components/counterup/jquery.counterup.min.js'/>"></script>
    <!--Morris JavaScript -->
    <script src="<c:url value='/resources/admin/plugins/bower_components/raphael/raphael-min.js'/>"></script>
    <script src="<c:url value='/resources/admin/plugins/bower_components/morrisjs/morris.js'/>"></script>
    <!-- Custom Theme JavaScript -->
    <script src="<c:url value='/resources/admin/js/custom.min.js'/>"></script>
    <script src="<c:url value='/resources/admin/js/dashboard1.js'/>"></script>
    <script src="<c:url value='/resources/admin/plugins/bower_components/toast-master/js/jquery.toast.js'/>"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $.toast({
                heading: 'Welcome to Libary admin',
                text: 'Welcome to the admin library and have a good luck.',
                position: 'top-right',
                loaderBg: '#ff6849',
                icon: 'info',
                hideAfter: 3500,
                stack: 6
            })
        });
    </script>
</body>

</html>