<!DOCTYPE html>
<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@taglib uri='/struts-tags' prefix='s' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <s:include value='/WEB-INF/decorators/header.jsp' />
    <sitemesh:write property='head' />
</head>
<body>
    <div class="wrapper">
        <s:include value='/WEB-INF/decorators/monitorHeader.jsp' />

        <sitemesh:write property='body' />

        <s:include value='/WEB-INF/decorators/monitorFooter.jsp' />
    </div>
    <!-- START WAIT-->
    <!--
    <div id="wait">
        <div id="rocket">
            <span class="fa-stack fa-5x">
                <i class="fa fa-circle fa-stack-2x"></i>
                <i class="fa fa-rocket fa-spin fa-stack-1x rocket-color"></i>
            </span>

            <div class="msg">CSA Census Monitor</div>
        </div>
    </div>
    -->
    <!-- END WAIT-->
</body>
</html>
