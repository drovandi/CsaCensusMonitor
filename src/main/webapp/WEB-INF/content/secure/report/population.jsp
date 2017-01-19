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
                setMenuActive("report-population");
                drawChart(
                        [
                            "0 to 4",
                            "5 to 10",
                            "11 to 16",
                            "17 to 25",
                            "26 to 34",
                            "35 to 45",
                            "46 to 55",
                            "56 to 65",
                            "66 to 75",
                            "76 to 99"
                        ],
                        [
            <s:property value="sexAgeReport.male_0_4" />,
            <s:property value="sexAgeReport.male_5_10" />,
            <s:property value="sexAgeReport.male_11_16" />,
            <s:property value="sexAgeReport.male_17_25" />,
            <s:property value="sexAgeReport.male_26_34" />,
            <s:property value="sexAgeReport.male_35_45" />,
            <s:property value="sexAgeReport.male_46_55" />,
            <s:property value="sexAgeReport.male_56_65" />,
            <s:property value="sexAgeReport.male_66_75" />,
            <s:property value="sexAgeReport.male_76_99" />
                        ],
                        [
            <s:property value="sexAgeReport.female_0_4" />,
            <s:property value="sexAgeReport.female_5_10" />,
            <s:property value="sexAgeReport.female_11_16" />,
            <s:property value="sexAgeReport.female_17_25" />,
            <s:property value="sexAgeReport.female_26_34" />,
            <s:property value="sexAgeReport.female_35_45" />,
            <s:property value="sexAgeReport.female_46_55" />,
            <s:property value="sexAgeReport.female_56_65" />,
            <s:property value="sexAgeReport.female_66_75" />,
            <s:property value="sexAgeReport.female_76_99" />
                        ]);
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
                            <div class="panel widget bg-purple">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-purple-dark ">
                                        <em class="fa fa-users fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="questionnaireCount">
                                            <s:property value="getFormatted('{0,number,#,###}',populationReport.total)"/>
                                        </div>
                                        <div class="text-uppercase">Individuals</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END WIDGET -->

                        <!-- START WIDGET -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="panel widget bg-blue">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-blue-dark pv-lg">
                                        <em class="fa fa-hourglass-2 fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="questionnaireCount"><s:property value="populationReport.age_avg" /></div>
                                        <!--s: property value="getFormatted('{0,number,#,##0}',questionnaireReport.individual)"/-->
                                        <div class="text-uppercase">Average Age</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END WIDGET -->

                        <!-- START WIDGET -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="panel widget bg-blue">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-blue-dark pv-lg">
                                        <em class="fa fa-heartbeat fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="questionnaireCount"><s:property value="populationReport.age_max" /></div>
                                        <!--s: property value="getFormatted('{0,number,#,##0}',questionnaireReport.individual)"/-->
                                        <div class="text-uppercase">Max Age</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END WIDGET -->

                    </div>

                    <div class="row">

                        <!-- START WIDGET -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="panel widget bg-purple">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-purple-dark ">
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
                            <div class="panel widget bg-blue">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-blue-dark pv-lg">
                                        <em class="fa fa-hourglass-2 fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="questionnaireCount"><s:property value="populationReport.age_avg_male" /></div>
                                        <!--s: property value="getFormatted('{0,number,#,##0}',questionnaireReport.individual)"/-->
                                        <div class="text-uppercase">Male Avg Age</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END WIDGET -->

                        <!-- START WIDGET -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="panel widget bg-blue">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-blue-dark pv-lg">
                                        <em class="fa fa-heartbeat fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="questionnaireCount"><s:property value="populationReport.age_max_male" /></div>
                                        <!--s: property value="getFormatted('{0,number,#,##0}',questionnaireReport.individual)"/-->
                                        <div class="text-uppercase">Male Max Age</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END WIDGET -->

                    </div>

                    <div class="row">

                        <!-- START WIDGET -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="panel widget bg-purple">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-purple-dark ">
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

                        <!-- START WIDGET -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="panel widget bg-blue">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-blue-dark pv-lg">
                                        <em class="fa fa-hourglass-2 fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="questionnaireCount"><s:property value="populationReport.age_avg_female" /></div>
                                        <!--s: property value="getFormatted('{0,number,#,##0}',questionnaireReport.individual)"/-->
                                        <div class="text-uppercase">Female Avg Age</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END WIDGET -->

                        <!-- START WIDGET -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="panel widget bg-blue">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-blue-dark pv-lg">
                                        <em class="fa fa-heartbeat fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="questionnaireCount"><s:property value="populationReport.age_max_female" /></div>
                                        <!--s: property value="getFormatted('{0,number,#,##0}',questionnaireReport.individual)"/-->
                                        <div class="text-uppercase">Female Max Age</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END WIDGET -->

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
                                    <canvas id="chartjs-barchart" width="600" height="400" style="width: 600px; height: 400px;"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </section>
    </body>
</html>
