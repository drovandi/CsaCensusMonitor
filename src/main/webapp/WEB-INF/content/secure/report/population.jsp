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
                            <div class="panel widget bg-purple">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-purple-dark pv-lg">
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
                            <div class="panel widget bg-purple">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-purple-dark pv-lg">
                                        <em class="fa fa-blind fa-3x"></em>
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
                            <div class="panel widget bg-male">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-male-dark pv-lg">
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
                            <div class="panel widget bg-male">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-male-dark pv-lg">
                                        <em class="fa fa-blind fa-3x"></em>
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

                        <!-- START WIDGET -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="panel widget bg-female">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-female-dark pv-lg">
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
                            <div class="panel widget bg-female">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-female-dark pv-lg">
                                        <em class="fa fa-blind fa-3x"></em>
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

                </div>
            </div>
        </section>
    </body>
</html>
