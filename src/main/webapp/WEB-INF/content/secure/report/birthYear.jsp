<!DOCTYPE html>
<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@taglib uri='/struts-tags' prefix='s' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <script>
            $(function () {
                setMenuActive("report-birth");
            });
        </script>
    </head>
    <body>
        <section>
            <div class="content-wrapper">
                <div class="content-heading">
                    Birth Year Distribution
                    <small>Analysis Report</small>
                </div>
                <div class="container-fluid">
                    <div class="row mb-lg">
                        <div class="col-lg-6">
                            <h4>To Do</h4>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </body>
</html>
