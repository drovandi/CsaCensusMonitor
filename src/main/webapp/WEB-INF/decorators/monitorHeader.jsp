<%@taglib uri='/struts-tags' prefix='s' %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<% /*
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
*/ %>

<nav class="navbar navbar-default navbar-static-top" 
     role="navigation" style="margin-bottom: 0px;">
    <!-- /.navbar-header -->     
    <div class="navbar-header">
        <button class="navbar-toggle" type="button" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="sr-only">Toggle navigation</span>             
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
        </button>
        <A class="navbar-brand" href="#">
            <IMG width="45%" title="Mec" alt="MEC" src="img/mec.svg">
        </A> 
    </div>

    <div class="login">
        <A class="login" href="#" data-toggle="modal" data-target="#login-modal"><I class="fa fa-signin fa-fw"></I> login </A>     
    </div>
    <!--Start Navigation menu --> 
    <div class="navbar-default sidebar" role="navigation">
        <div class="sidebar-nav navbar-collapse">
            <ul class="nav" id="side-menu">
                <li class="release"><A 
                        href="#"><I class="fa fa-bullhorn fa-fw"></I> &nbsp; Release 1.0</A>
                </li>
                <li id="home"><A href="#"><I 
                            class="fa fa-home fa-fw"></I> &nbsp;Home</A></li>
                <li>
                    <A href="#"><I class="fa fa-pencil fa-fw"></I>Template<span class="fa arrow"></span></A>
                    <ul class="nav nav-second-level collapse">
                        <li id="template-form">
                            <A href="#"><I class="fa fa-pencil fa-fw"></I>Form</A>
                        </li>
                        <li id="template-table">
                            <A href="#"><I class="fa fa-pencil fa-fw"></I>Table</A>
                        </li>
                        <li id="template-graph">
                            <A href="#"><I class="fa fa-pencil fa-fw"></I>Graph</A>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
        <!-- /.sidebar-collapse --> 
    </div>
    <!-- /.navbar-static-side --> 
</nav>
