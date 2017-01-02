<%@taglib uri='/struts-tags' prefix='s' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>


<!-- START HEADER -->
<header class="topnavbar-wrapper">
    <nav role="navigation" class="navbar topnavbar">
        <div class="nav pull-left">
            <i class="fa fa-dashboard"></i> CSA Census Monitor
        </div>
        <div class="nav pull-right">
            <a href="${ctx}/logout">
                <i class="fa fa-sign-out"></i>
            </a>
        </div>
    </nav>
</header>
<!-- END HEADER -->

<!-- START LEFT SIDE BAR -->
<aside class="aside">
    <div class="aside-inner">
        <nav data-sidebar-anyclick-close="" class="sidebar">
            <ul class="nav">
                <li class="nav-heading ">
                    <span>Report List</span>
                </li>
                <s:if test="principalProxy.isUserInRole('ADMIN')">
                    <li class="nav-body">
                        <a href="#process" title="Monitor Report" data-toggle="collapse" class="collapsed" aria-expanded="false">
                            <i class="fa fa-cogs"></i>
                            <span>Monitor Report</span>
                        </a>
                        <ul id="process" class="nav sidebar-subnav collapse" aria-expanded="false">
                            <li>
                                <a href="${ctx}/secure/report/questionnaire" title="by Questionnaire">
                                    <span>by Questionnaire</span>
                                </a>
                            </li>
                            <li>
                                <a href="${ctx}/secure/report/territory" title="by Territory">
                                    <span>by Territory</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </s:if>
                <li class="nav-body">
                    <a href="#data" title="Analysis Report" data-toggle="collapse" class="collapsed" aria-expanded="false">
                        <i class="fa fa-bar-chart"></i>
                        <span>Analysis Report</span>
                    </a>
                    <ul id="data" class="nav sidebar-subnav collapse" aria-expanded="false">
                        <li>
                            <a href="${ctx}/secure/report/reportChart" title="Sex Distribution">
                                <span>Sex Distribution</span>
                            </a>
                        </li>
                        <li>
                            <a href="${ctx}/secure/report/birthYear" title="Birth Year Distribution">
                                <span>Birth Year Distribution</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <s:if test="principalProxy.isUserInRole('ADMIN')">
                    <li class="nav-body">
                        <a href="#admin" title="Administration" data-toggle="collapse" class="collapsed" aria-expanded="false">
                            <i class="fa fa-briefcase"></i>
                            <span>Administration</span>
                        </a>
                        <ul id="admin" class="nav sidebar-subnav collapse" aria-expanded="false">
                            <li>
                                <a href="#" title="User Admin">
                                    <span>User Admin</span>
                                </a>
                            </li>
                        </ul>
                    </li>
                </s:if>
            </ul>
        </nav>
    </div>
</aside>
<!-- END LEFT SIDE BAR -->
