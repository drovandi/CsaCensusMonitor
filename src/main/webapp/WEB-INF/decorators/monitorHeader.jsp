<%@taglib uri='/struts-tags' prefix='s' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>


<!-- START HEADER -->
<header class="topnavbar-wrapper">
    <nav role="navigation" class="navbar topnavbar">
        <div class="nav pull-left">
            <i class="fa fa-dashboard"></i> CSA <span class="small-screen-hide">Census Monitor</span>
        </div>
        <div class="nav pull-right small-screen">
            <a href="${ctx}/logout">
                <i class="fa fa-sign-out fa-fw" style="margin-right:0px"></i>
                <span class="small-screen-hide">Sign out <strong>${pageContext.request.userPrincipal.name}</strong></span>
            </a>
        </div>
    </nav>
</header>
<!-- END HEADER -->

<!-- START LEFT SIDE BAR -->
<aside class="aside">
    <div class="aside-inner">
        <span class="toggle-menu" onclick="toggleMenu()">
            <i id="toggle-menu" class="fa"></i>
        </span>
        <nav data-sidebar-anyclick-close="" class="sidebar">
            <ul class="nav">
                <li class="nav-heading">
                    <span>Report List</span>
                </li>
                <li class="nav-body" class="active">
                    <a href="${ctx}/secure/main/" title="Home" class="active">
                        <i class="fa fa-home"></i>
                        <span>Home</span>
                    </a>
                </li>
                <s:if test="principalProxy.isUserInRole('ADMIN')">
                    <li class="nav-body" id="todo">
                        <a href="${ctx}/secure/report/todo" title="Monitor Report" >
                            <i class="fa fa-cogs"></i>
                            <span>Monitor Report</span>
                        </a>
                        <!--
                        <ul id="process" class="nav sidebar-subnav collapse" aria-expanded="false">
                            <li id="report-questionnaire">
                                <a href="${ctx}/secure/report/questionnaire" title="by Questionnaire">
                                    <span>by Questionnaire</span>
                                </a>
                            </li>
                            <li id="report-territory">
                                <a href="${ctx}/secure/report/territory" title="by Territory">
                                    <span>by Territory</span>
                                </a>
                            </li>
                        </ul>
                        -->
                    </li>
                </s:if>
                <li class="nav-body">
                    <a href="#data" title="Analysis Report" data-toggle="collapse" class="collapsed" aria-expanded="false">
                        <i class="fa fa-bar-chart"></i>
                        <span>Analysis Report</span>
                    </a>
                    <ul id="data" class="nav sidebar-subnav collapse" aria-expanded="false">
                        <li id="report-population">
                            <a href="${ctx}/secure/report/population" title="Sex Distribution">
                                <span>Population</span>
                            </a>
                        </li>
                        <li id="report-sex">
                           <a href="${ctx}/secure/report/sexDistribution" title="Sex Distribution">
                               <span>Sex Distribution</span>
                           </a>
                        </li>
                        <li id="report-birth">
                            <a href="${ctx}/secure/report/birthYear" title="Birth Year Distribution">
                                <span>Birth Year Distribution</span>
                            </a>
                        </li>
                    </ul>
                </li>
                <s:if test="principalProxy.isUserInRole('ADMIN')">
                    <li class="nav-body">
                        <a href="#cspro2sql" title="CsPro2Sql" data-toggle="collapse" class="collapsed" aria-expanded="false">
                            <i class="fa fa-bug"></i>
                            <span>CsPro2Sql</span>
                        </a>
                        <ul id="cspro2sql" class="nav sidebar-subnav collapse" aria-expanded="false">
                            <li id="report-cspro2sqlError">
                                <a href="${ctx}/secure/report/cspro2sqlError" title="Load errors">
                                    <span>Load errors</span>
                                </a>
                            </li>
                        </ul>
                    </li>
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