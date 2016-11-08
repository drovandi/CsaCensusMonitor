<!DOCTYPE html>
<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@taglib uri='/struts-tags' prefix='s' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <jsp:include page="/WEB-INF/decorators/header.jsp"/>
    </head>
    <body>
        <div class="wrapper">
            <div class="block-center mt-xl wd-xl">
                <!-- START panel-->
                <div class="panel panel-dark panel-flat">
                    <div class="panel-heading text-center">
                        <a href="#">
                            <i class="fa fa-dashboard"></i> CSA Census Monitor
                        </a>
                    </div>
                    <div class="panel-body">
                        <form role="form" class="mb-lg" method="POST" action="j_security_check">
                            <div class="form-group has-feedback" style="padding-left: 5px;color: red;">
                                <c:if test="${not empty param.error}">
                                    Wrong credentials, try again!
                                </c:if>
                                &nbsp;
                            </div>
                            <div class="form-group has-feedback">
                                <input name="j_username" id="exampleInputEmail1" type="email" placeholder="Enter email" autocomplete="off" required="" class="form-control">
                                <span class="fa fa-envelope form-control-feedback text-muted"></span>
                            </div>
                            <div class="form-group has-feedback">
                                <input name="j_password" id="exampleInputPassword1" type="password" placeholder="Password" required="" class="form-control">
                                <span class="fa fa-lock form-control-feedback text-muted"></span>
                            </div>

                            <button type="submit" class="btn btn-block btn-primary mt-lg">Login</button>
                        </form>

                    </div>
                </div>
                <!-- END panel-->
                <div class="p-lg text-center">

                    <span>2016</span>
                    <span>-</span>
                    <span>Istat Cooperation Unit</span>
                    <br>

                </div>
            </div>
        </div>
    </body>
</html>
