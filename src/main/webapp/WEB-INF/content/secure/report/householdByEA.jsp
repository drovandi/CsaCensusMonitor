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
                setMenuActive("report-household");
                $.ajax({
                    url: "householdByEAData",
                    success: function (r) {
                        populate(r.data, r.name);
                    }
                });
            });
            function populate(dataSet, name) {
                var columnsSet = [];
                for (var i in name) {
                    columnsSet.push({title: name[i]});
                }
                var table = $('#huseholds').DataTable({
                    data: dataSet,
                    columns: columnsSet,
                    responsive: true,
                    lengthChange: false,
                    pageLength: 10,
                    order: [[0, "asc"]],
                    buttons: ['csv', 'excel', 'pdf']
                });
                table.buttons().container().appendTo('#huseholds_wrapper .col-sm-6:eq(0)');
            }
        </script>
    </head>
    <body>
        <section>
            <div class="content-wrapper">
                <div class="content-heading">
                    Household By EA
                    <small>Process Report</small>
                </div>

                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading chart-heading">Data</div>
                            <div class="panel-body">
                                <table id="huseholds" class="table table-striped" cellspacing="0" width="100%">
                                </table>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </section>
    </body>
</html>
