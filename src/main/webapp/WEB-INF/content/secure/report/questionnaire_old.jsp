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

                $("#questionnaireCount").text(format($("#questionnaireCount").text()));
                $.ajax({
                    type: 'GET',
                    url: 'individualCount',
                    dataType: "json",
                    cache: false,
                    success: function (data) {
                        $("#individualCount").text(format(data.individual));
                    }
                });
                $('.totalPercentage').ClassyLoader({
                    percentage: <s:property value="100.*questionnaireReport.completed/questionnaireReport.household" />,
                    speed: 20,
                    diameter: 70,
                    fontSize: '40px',
                    roundedLine: true,
                    fontColor: '#34788c', // '#23b7e5',
                    lineColor: '#34788c', // '#23b7e5',
                    remainingLineColor: 'rgba(200,200,200,0.4)',
                    lineWidth: 10
                });
                drawChart(
                        ["Addis Ababa", "Afar", "Amhara", "Benishangul-Gumuz", "Dire Dawa", "Gambela", "Harari", "Oromia", "Somali", "Southern", "Tigray"],
                        [
            <s:property value="percentage(questionnaireReport.COMPLETED_Addis_Ababa,questionnaireReport.NOT_COMPLETED_Addis_Ababa)" />,
            <s:property value="percentage(questionnaireReport.COMPLETED_Afar,questionnaireReport.NOT_COMPLETED_Afar+1)" />,
            <s:property value="percentage(questionnaireReport.COMPLETED_Amhara,questionnaireReport.NOT_COMPLETED_Amhara+1)" />,
            <s:property value="percentage(questionnaireReport.COMPLETED_Benishangul_Gumuz,questionnaireReport.NOT_COMPLETED_Benishangul_Gumuz+1)" />,
            <s:property value="percentage(questionnaireReport.COMPLETED_Dire_Dawa,questionnaireReport.NOT_COMPLETED_Dire_Dawa+1)" />,
            <s:property value="percentage(questionnaireReport.COMPLETED_Gambela,questionnaireReport.NOT_COMPLETED_Gambela+1)" />,
            <s:property value="percentage(questionnaireReport.COMPLETED_Harari,questionnaireReport.NOT_COMPLETED_Harari+1)" />,
            <s:property value="percentage(questionnaireReport.COMPLETED_Oromia,questionnaireReport.NOT_COMPLETED_Oromia+1)" />,
            <s:property value="percentage(questionnaireReport.COMPLETED_Somali,questionnaireReport.NOT_COMPLETED_Somali+1)" />,
            <s:property value="percentage(questionnaireReport.COMPLETED_Southern,questionnaireReport.NOT_COMPLETED_Southern+1)" />,
            <s:property value="percentage(questionnaireReport.COMPLETED_Tigray,questionnaireReport.NOT_COMPLETED_Tigray+1)" />
                        ]);
            });
        </script>
    </head>
    <body>
        <section>
            <div class="content-wrapper">
                <div class="content-heading">
                    Questionnaires
                    <small>Monitor Report</small>
                </div>

                <div class="content-body">

                    <div class="row">

                        <!-- START WIDGET -->
                        <div class="col-lg-3 col-sm-6">
                            <div class="panel widget bg-purple">
                                <div class="row row-table">
                                    <div class="col-xs-4 text-center bg-purple-dark ">
                                        <em class="fa fa-newspaper-o fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="questionnaireCount"><s:property value="questionnaireReport.household" /></div>
                                        <div class="text-uppercase">Questionnaires</div>
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
                                        <em class="fa fa-user fa-3x"></em>
                                    </div>
                                    <div class="col-xs-8 widget-content">
                                        <div class="h2 mt0" id="individualCount"><i class="fa fa-cog fa-spin fa-fw"></i></div>
                                        <!--s: property value="getFormatted('{0,number,#,##0}',questionnaireReport.individual)"/-->
                                        <div class="text-uppercase">Individuals</div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- END WIDGET -->

                    </div>

                    <div class="row">

                        <!-- START WIDGET -->
                        <div class="col-lg-7">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    <div class="text-info">Regional Distribution</div>
                                    <canvas id="chartjs-barchart" width="500" height="400"></canvas>
                                </div>
                            </div>
                        </div>
                        <!-- END WIDGET -->

                        <!-- START WIDGET -->
                        <div class="col-lg-3">
                            <div class="panel panel-default">
                                <div class="panel-body text-center">
                                    <div class="text-info">Returned Questionnaires</div>
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
