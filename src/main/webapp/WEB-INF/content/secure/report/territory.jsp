<!DOCTYPE html>
<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@taglib uri='/struts-tags' prefix='s' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <script src="${ctx}/js/jquery.dataTables.min.js"></script>
        <script src="${ctx}/js/dataTables.bootstrap.min.js"></script>
        <link rel="stylesheet" href="${ctx}/css/jquery.dataTables.min.css">
        <link rel="stylesheet" href="${ctx}/css/datatables.bootstrap.min.css">
        <script>
            function populate() {
                var dataSet = [
                    ["Awsi Rasu", format(60763), format(3400), formatPercentage(3400, 60763), 300, 90],
                    ["Kilbet Rasu", format(5600), format(382), formatPercentage(382, 5600), 30, 10],
                    ["Gabi Rasu", format(78940), format(60328), formatPercentage(60328, 78940), 543, 110],
                    ["Fantena Rasu", format(82759), format(8953), formatPercentage(8953, 82759), 748, 208],
                    ["Hari Rasu", format(43735), format(9445), formatPercentage(9445, 43735), 543, 123],
                    ["Argobba special woreda", format(1873), format(344), formatPercentage(344, 1873), 20, 5]
                ];
                $('#territory').DataTable({
                    data: dataSet,
                    columns: [
                        {title: "Zone"},
                        {title: "Total Questionnaire"},
                        {title: "Total Returned"},
                        {title: "Percentage"},
                        {title: "Number of enumerators"},
                        {title: "Number of supervisors"}
                    ]
                });
                $('option[value=afar]').attr('selected','selected');
            }
        </script>
    </head>
    <body>
        <section>
            <div class="content-wrapper">
                <div class="content-heading">
                    Territory
                    <small>Monitor Report</small>
                </div>

                <!-- START PANEL-->
                <div class="panel panel-default">
                    <div class="panel-heading">Search filters</div>
                    <div class="panel-body">
                        <form role="form" class="form-inline">
                            <div class="form-group">
                                <select name="region" class="form-control m-b">
                                    <option>Select region</option>
                                    <option>Addis Ababa</option>
                                    <option value="afar">Afar</option>
                                    <option>Amhara</option>
                                    <option>Benishangul-Gumuz</option>
                                    <option>Dire Dawa</option>
                                    <option>Gambela</option>
                                    <option>Harari</option>
                                    <option>Oromia</option>
                                    <option>Somali</option>
                                    <option>Southern</option>
                                    <option>Tigray</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select name="zone" class="form-control m-b">
                                    <option>Select zone</option>
                                    <option>Zone 1</option>
                                    <option>Zone 2</option>
                                    <option>Zone 3</option>
                                    <option>Zone 4</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select name="woreda" class="form-control m-b">
                                    <option>Select woreda</option>
                                    <option>Woreda 1</option>
                                    <option>Woreda 2</option>
                                    <option>Woreda 3</option>
                                    <option>Woreda 4</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <select name="kebele" class="form-control m-b">
                                    <option>Select kebele</option>
                                    <option>Kebele 1</option>
                                    <option>Kebele 2</option>
                                    <option>Kebele 3</option>
                                    <option>Kebele 4</option>
                                </select>
                            </div>
                            <button type="button" class="btn btn-default pull-right" onclick="javascript:populate()">Search</button>
                        </form>
                    </div>
                </div>
                <!-- END PANEL-->

                <div class="row">
                    <div class="col-lg-12">
                        <div class="panel panel-default">
                            <div class="panel-heading">Territory Report</div>
                            <table id="territory" class="display" cellspacing="0" width="100%">
                            </table>
                        </div>
                    </div>
                </div>

            </div>

        </section>
    </body>
</html>
