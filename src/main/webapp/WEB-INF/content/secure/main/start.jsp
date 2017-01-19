<!DOCTYPE html>
<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@taglib uri='/struts-tags' prefix='s' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
    <head>
    </head>
    <body>
        <!-- START MAIN CONTAINER -->
        <section>
             <div class="content-wrapper">
                <div class="content-heading">
                    Census Pilot Survey - 2016 
                    <small>Home</small>
                </div>

                <!-- START PANEL-->
                <div class="panel panel-default">
                    <div class="panel-heading">Welcome to the monitor system <strong>${pageContext.request.userPrincipal.name}</strong></div>
                    <div class="panel-body">
                        Choose a report from the left side menu!
                    </div>
                </div>
                <!-- END PANEL-->

            </div>
        </section>
        <!-- END MAIN CONTAINER -->
    </body>
</html>
