<!DOCTYPE html>
<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@taglib uri='/struts-tags' prefix='s' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <script src="${ctx}/js/chart/chart.js"></script>
        <script src="${ctx}/js/chart/csaChart.js"></script>
        <script src="${ctx}/js/chart/jquery.classyloader.min.js"></script>
        <script type="text/javascript">
            $(function () {
                setMenuActive("report-questionnaire");
                $('.totalPercentage').ClassyLoader({
                    percentage: <s:property value="100.*regionalAreaReport.ea/256" />,
                    speed: 20,
                    diameter: 70,
                    fontSize: '40px',
                    roundedLine: true,
                    fontColor: '#34788c',
                    lineColor: '#34788c',
                    remainingLineColor: 'rgba(200,200,200,0.4)',
                    lineWidth: 10
                });
            });
        </script>
    </head>
    <body>
        <section>
            <div class="content-wrapper">
                <div class="content-heading">
                    Questionnaires
                    <small>Analysis Report</small>
                </div>

                <div class="content-body">

                    <div class="row">

                        <!-- START WIDGET -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="panel widget bg-purple">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-purple-dark ">
                                        <em class="fa fa-file-text-o fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="questionnaireCount"><s:property value="getFormatted('{0,number,#,##0}',questionnaireReport.total)"/></div>
                                        <div class="text-uppercase">Households</div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel widget bg-male">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-male-dark ">
                                        <em class="fa fa-male fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="questionnaireCount"><s:property value="getFormatted('{0,number,#,##0.00}',questionnaireReport.avg_individual_male)"/></div>
                                        <div class="text-uppercase">Avg Male</div>
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
                                        <em class="fa fa-child fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="questionnaireCount"><s:property value="getFormatted('{0,number,#,##0.00}',questionnaireReport.avg_individual)"/></div>
                                        <div class="text-uppercase">Avg Individuals</div>
                                    </div>
                                </div>
                            </div>
                            <div class="panel widget bg-female">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-female-dark pv-lg">
                                        <em class="fa fa-female fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="questionnaireCount"><s:property value="getFormatted('{0,number,#,##0.00}',questionnaireReport.avg_individual_female)"/></div>
                                        <div class="text-uppercase">Avg Female</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END WIDGET -->

                        <!-- START WIDGET -->
                        <div class="col-lg-3">
                            <div class="panel panel-default">
                                <div class="panel-body text-center">
                                    <div class="text-info">EAs Returned</div>
                                    <canvas class="totalPercentage"></canvas>
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
