<!DOCTYPE html>
<%@page contentType='text/html' pageEncoding='UTF-8'%>
<%@taglib uri='/struts-tags' prefix='s' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>

<html>
    <head>
        <script src="${ctx}/js/chart.js"></script>
        <script src="${ctx}/js/monitorChart.js"></script>
        <script type="text/javascript">
            $(function () {
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
                    Population
                    <small>Analysis Report</small>
                </div>

                <div class="row">
                    <!-- START WIDGET -->
                    <div class="col-lg-8">
                        <div class="panel panel-default">
                            <div class="panel-body">
                                <div class="text-info">Male/Female Distribution</div>
                                <canvas id="chartjs-barchart" width="600" height="400" style="width: 600px; height: 400px;"></canvas>
                                <!--canvas id="chartjs-barchart" width="487" height="243" style="width: 487px; height: 243px;"></canvas-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </body>
</html>
