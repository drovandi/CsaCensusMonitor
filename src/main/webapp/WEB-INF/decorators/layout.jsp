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
    </body>
</html>
