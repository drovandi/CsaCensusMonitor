<!DOCTYPE html>
<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@taglib uri='/struts-tags' prefix='s' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <script src="${ctx}/js/chart/chart.js"></script>
        <script src="${ctx}/js/chart/csaChart.js"></script>
        <script type="text/javascript">
            $(function () {
                setMenuActive("report-sex");
                drawChart("chartjs-barchart-1",
                        [
            <s:iterator value="sexAgeGroupReport">
                            "<s:property value="range" />",
            </s:iterator>
                        ],
                        [
            <s:iterator value="sexAgeGroupReport">
                <s:property value="male" />,
            </s:iterator>
                        ],
                        [
            <s:iterator value="sexAgeGroupReport">
                <s:property value="female" />,
            </s:iterator>
                        ]);
                drawChart("chartjs-barchart-2",
                        [
            <s:iterator value="sexAgeReport">
                            "<s:property value="age" />",
            </s:iterator>
                        ],
                        [
            <s:iterator value="sexAgeReport">
                <s:property value="total" />,
            </s:iterator>
                        ]);
                $(".modal-body").append($("#chartjs-barchart-2"));
            });
        </script>
    </head>
    <body>
        <section>
            <div class="content-wrapper">
                <div class="content-heading">
                    Census Pilot Survey - 2016 
                    <small>Analysis Report</small>
                </div>

                <div class="content-body">

                    <div class="row">

                        <!-- START WIDGET -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="panel widget bg-male">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-male-dark ">
                                        <em class="fa fa-male fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="questionnaireCount">
                                            <s:property value="getFormatted('{0,number,#,###}',populationReport.total_male)"/>
                                        </div>
                                        <div class="text-uppercase">Males</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END WIDGET -->

                        <!-- START WIDGET -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="panel widget bg-female">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-female-dark ">
                                        <em class="fa fa-female fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="questionnaireCount">
                                            <s:property value="getFormatted('{0,number,#,###}',populationReport.total_female)"/>
                                        </div>
                                        <div class="text-uppercase">Females</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END WIDGET -->

                        <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Totals</button>
                    </div>

                    <div class="row">
                        <!-- START WIDGET -->
                        <div class="col-lg-8">
                            <div class="panel panel-default">
                                <div class="panel-heading chart-heading">
                                    <span>Male/Female Distribution</span>
                                    <span class="pull-right legend">
                                        <ul>
                                            <li><i class="fa fa-square fa-fw" style="color:#23b7e5"></i><span>Male</span></li>
                                            <li><i class="fa fa-square fa-fw" style="color:#f44336"></i><span>Female</span></li>
                                        </ul>
                                    </span>
                                </div>
                                <div class="panel-body">
                                    <canvas id="chartjs-barchart-1" width="600" height="400" style="width: 600px; height: 400px;"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>

        <canvas id="chartjs-barchart-2" width="1000" height="400" style="width: 1000px; height: 400px;"></canvas>
        <div id="myModal" class="modal fade" role="dialog">
            <div class="modal-dialog modal-lg" style="width:1050px;margin-top:70px">
                <!-- Modal content-->
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Age Distribution</h4>
                    </div>
                    <div class="modal-body">
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>

    </body>
</html>

