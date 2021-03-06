<!DOCTYPE html>
<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@taglib uri='/struts-tags' prefix='s' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <script src="${ctx}/js/chart/chart.js"></script>
        <script src="${ctx}/js/chart/csaChart.js"></script>
        <script src="${ctx}/js/table/datatables.js"></script>
        <link rel="stylesheet" href="${ctx}/css/table/datatables.css">
        <script>
            $(function () {
                setMenuActive("report-religion");
                populate();
            });
            function populate() {
                var dataSet = [
            <s:iterator value="religionReport">
                    ["<s:property value="religion" />", format(<s:property value="individuals" />), <s:property value="percentage(individuals,populationReport.total)" />],
            </s:iterator>
                ];
                var table = $('#religion').DataTable({
                    data: dataSet,
                    columns: [
                        {title: "Religion"},
                        {title: "Individuals"},
                        {title: "Percentage"}
                    ],
                    responsive: true,
                    lengthChange: false,
                    pageLength: 20,
                    bPaginate: false,
                    order: [[ 1, "desc" ]],
                    buttons: ['csv', 'excel', 'pdf']
                });
                table.buttons().container().appendTo('#religion_wrapper .col-sm-6:eq(0)');
                <s:set name="other" value="0" />
                <s:iterator value="religionReport" begin="3">
                    <s:set name="other" value="#other+individuals" />
                </s:iterator>
                drawPie([
                    <s:iterator value="religionReport" begin="0" end="2">
                        ["<s:property value="religion" />",<s:property value="individuals" />],
                    </s:iterator>
                    ["Other",<s:property value="#other" />],
                ]);
            }
        </script>
    </head>
    <body>
        <section>
            <div class="content-wrapper">
                <div class="content-heading">
                    Religion
                    <small>Analysis Report</small>
                </div>

                <div class="row">
                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading chart-heading">Data</div>
                            <div class="panel-body">
                                <table id="religion" class="table table-striped" cellspacing="0" width="100%">
                                </table>
                            </div>
                        </div>
                    </div>

                    <div class="col-lg-6">
                        <div class="panel panel-default">
                            <div class="panel-heading chart-heading">
                                <span>Piechart</span>
                                <span id="chartjs-piechart-legend" class="pull-right legend">
                                </span>
                            </div>
                            <div class="panel-body">
                                <canvas id="chartjs-piechart" width="400" height="400" style="width: 470px; height: 400px;"></canvas>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </section>
    </body>
</html>
