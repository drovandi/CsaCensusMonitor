<!DOCTYPE html>
<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@taglib uri='/struts-tags' prefix='s' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta content="IE=10.000" http-equiv="X-UA-Compatible">

        <title>CSA Monitor</title>

        <!-- Javascript -->
        <script src="${ctx}/js/jquery-3.1.1.min.js" type="text/javascript"></script>
        <script src="${ctx}/js/bootstrap.min.js" type="text/javascript"></script>      

        <!-- CSS -->
        <link href="${ctx}/css/bootstrap.min.css" rel="stylesheet">
        <link href="${ctx}/css/login.css" rel="stylesheet">
        <!-- Fontawesome -->
        <link href="${ctx}/css/font-awesome.min.css" rel="stylesheet">
    </head>
    <body>
        <div class="wrapper">
            <div class="block-center mt-xl wd-xl">
                <!-- START LOGIN PANEL-->
                <div class="panel panel-dark panel-flat">
                    <div class="panel-heading text-center">
                        <a href="#">
                            <i class="fa fa-rocket fa-fw"></i> CSA Census Monitor
                        </a>
                    </div>
                    <div class="panel-body">
                        <form role="form" class="mb-lg" method="POST" action="j_security_check" novalidate="">
                            <div class="form-group has-feedback" style="padding-left: 5px;color: red;">
                                <c:if test="${not empty param.error}">
                                    Wrong credentials, try again!
                                </c:if>
                                &nbsp;
                            </div>
                            <div class="form-group has-feedback">
                                <input name="j_username" type="email" placeholder="Enter email" autocomplete="off" required="" class="form-control">
                                <span class="fa fa-envelope form-control-feedback text-muted"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input name="j_password" type="password" placeholder="Password" required="" class="form-control">
                                <span class="fa fa-lock form-control-feedback text-muted"></span>
                            </div>

                            <button type="submit" class="btn btn-block btn-primary mt-lg">Login</button>
                        </form>

                    </div>
                </div>
                <!-- END LOGIN PANEL-->
                
                <!-- START FOOTER-->
                <div class="p-lg text-center">
                    <span>2016</span>
                    <span>-</span>
                    <span>Istat Cooperation Unit</span>
                    <br>
                </div>
                <!-- END FOOTER-->
            </div>
        </div>
    </body>
</html>
