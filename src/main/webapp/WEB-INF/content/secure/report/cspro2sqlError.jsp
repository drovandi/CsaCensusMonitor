<!DOCTYPE html>
<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@taglib uri='/struts-tags' prefix='s' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <script src="${ctx}/js/table/datatables.js"></script>
        <link rel="stylesheet" href="${ctx}/css/table/datatables.css">
        <script>
            $(function () {
                setMenuActive("report-cspro2sqlError");
                var table = $('#errors').DataTable({
                    order: [[2, "desc"]],
                    responsive: true,
                    lengthChange: false,
                    buttons: ['csv', 'excel', 'pdf']
                });
                table.buttons().container().appendTo('#errors_wrapper .col-sm-6:eq(0)');
            });
        </script>
    </head>
    <body>
        <section>
            <div class="content-wrapper">
                <div class="content-heading">
                    Load Errors
                    <small>CsPro2Sql</small>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">Load Errors</div>
                            <div class="panel-body">
                                <table id="errors" class="table table-striped" cellspacing="0" width="100%">
                                    <thead>
                                        <tr>
                                            <th>Id</th>
                                            <th>Message</th>
                                            <th>Date</th>
                                            <th>Questionnaire</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <s:iterator value="loadErrors">
                                            <tr>
                                                <td><s:property value="id" /></td>
                                                <td><s:property value="error" /></td>
                                                <td><s:date name="date" format="dd/MM/yyyy HH:mm:ss" /></td>
                                                <td><s:property value="questionnaire" /></td>
                                            </tr>
                                        </s:iterator>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </section>
    </body>
</html>
