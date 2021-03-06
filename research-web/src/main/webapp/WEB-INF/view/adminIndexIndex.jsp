﻿<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/15
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员首页</title>
    <link rel="stylesheet" href="/assets/css/amazeui.css" />
    <link rel="stylesheet" href="/assets/css/core.css" />
    <link rel="stylesheet" href="/assets/css/menu.css" />
    <link rel="stylesheet" href="/assets/css/index.css" />
    <link rel="stylesheet" href="/assets/css/admin.css" />
    <link rel="stylesheet" href="/assets/css/page/typography.css" />
    <link rel="stylesheet" href="/assets/css/page/form.css" />
    <link rel="stylesheet" href="/assets/css/component.css" />
    <script src="/assets/js/jquery-3.0.0.js"></script>
    <script>
        $(function(){
           $("#remove").click(function(){
               $.get("removeAllSession",function(data){
                   if(data){
                       alert("重置成功！");
                   }else{
                       alert("重置失败！");
                   }
               });
           });
        });
    </script>
</head>
<body style="overflow: scroll">
<!-- Begin page -->
<header class="am-topbar am-topbar-fixed-top">
    <div class="am-topbar-left am-hide-sm-only">
        <a href="index.jsp" class="logo"><span>合众艾特</span><i class="zmdi zmdi-layers"></i></a>
    </div>
</header>
<!-- end page -->


<div class="admin">
    <!--<div class="am-g">-->
    <!-- ========== Left Sidebar Start ========== -->
    <!--<div class="left side-menu am-hide-sm-only am-u-md-1 am-padding-0">
        <div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 548px;">
            <div class="sidebar-inner slimscrollleft" style="overflow: hidden; width: auto; height: 548px;">-->
    <!-- sidebar start -->
    <div class="admin-sidebar am-offcanvas  am-padding-0" id="admin-offcanvas">
        <div class="am-offcanvas-bar admin-offcanvas-bar">
            <!-- User -->
            <div class="user-box am-hide-sm-only">
                <div class="user-img">
                    <img src="assets/img/logo.png" alt="UNION" title="UNION@合众艾特" width="88px">
                    <%--<div class="user-status offline"><i class="am-icon-dot-circle-o" aria-hidden="true"></i></div>--%>
                </div>
                <h5><a href="javascript:void(0)">满意度调查系统</a> </h5>
                <ul class="list-inline">
                    <li>
                        <a href="javascript:void(0)">
                            <i class="fa fa-cog" aria-hidden="true"></i>
                        </a>
                    </li>

                    <li>
                        <a href="javascript:void(0)" class="text-custom">
                            <i class="fa fa-cog" aria-hidden="true"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <!-- End User -->

            <ul class="am-list admin-sidebar-list">
                <li><a id="remove" href="javascript:void(0)"><span class="am-icon-home"></span> 重新评价</a></li>
<%--                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav1'}"><span class="am-icon-table"></span> 调查方向<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav1">
                        <li><a href="toRestaurantIndex" class="am-cf">餐饮调查</a></li>
                        <li><a href="teacherProblems?pModule=1" class="am-cf">讲师调查</a></li>
                        <li><a href="teacherProblems?pModule=2" class="am-cf">班主任调查</a></li>
                    </ul>
                </li>--%>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav5'}"><span class="am-icon-file"></span> 评论 <span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav5">
                        <li><a href="toShowAllComment?cModule=餐饮" class="am-cf">餐饮评论</a></li>
                        <li><a href="toShowAllComment?cModule=讲师" class="am-cf">讲师评论</a></li>
                        <li><a href="toShowAllComment?cModule=教务" class="am-cf">班主任评论</a></li>
                    </ul>
                </li>
                <li class="admin-parent">
                    <a class="am-cf" data-am-collapse="{target: '#collapse-nav3'}"><span class="am-icon-line-chart"></span> 统计喜爱度<span class="am-icon-angle-right am-fr am-margin-right"></span></a>
                    <ul class="am-list am-collapse admin-sidebar-sub am-in" id="collapse-nav3">
                        <li><a href="showPopulation" class="am-cf">餐饮</a></li>
                        <li><a href="showDetailsOfTeacher?cModule=讲师&&time=${sessionScope.time}" class="am-cf">讲师</a></li>
                        <li><a href="showDetailsOfTeacher?cModule=教务&&time=${sessionScope.time}" class="am-cf">班主任</a></li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
    <script type="text/javascript" src="/assets/js/jquery-2.1.0.js" ></script>
    <script type="text/javascript" src="/assets/js/amazeui.min.js"></script>
    <script type="text/javascript" src="/assets/js/app.js" ></script>
    <script type="text/javascript" src="/assets/js/blockUI.js" ></script>
    <script type="text/javascript" src="/assets/js/charts/echarts.min.js" ></script>
    <script type="text/javascript" src="/assets/js/charts/indexChart.js" ></script>
</body>
</html>

