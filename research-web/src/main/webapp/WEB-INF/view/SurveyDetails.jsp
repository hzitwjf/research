<%--
  Created by IntelliJ IDEA.
  User: wjf13
  Date: 2016/12/17
  Time: 21:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>统计意见</title>
    <link rel="stylesheet" href="/assets/css/amazeui.css" />
    <link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="/assets/css/core.css" />
    <link rel="stylesheet" href="/assets/css/menu.css" />
    <link rel="stylesheet" href="/assets/css/index.css" />
    <link rel="stylesheet" href="/assets/css/admin.css" />
    <link rel="stylesheet" href="/assets/css/page/typography.css" />
    <link rel="stylesheet" href="/assets/css/page/form.css" />

</head>
<body>

<div class="admin">
    <div class="content-page">
        <!-- Start content -->
        <form action="addAllComment" method="post">
            <div class="content">
                <div class="am-g">
                    <div class="am-u-sm-6">
                        <div class="card-box">
                            <!-- col start -->
                            <table class="am-table  am-table-hover">
                                <thead>
                                <tr>
                                    <th>菜品名称</th>
                                    <th>对该菜的点评</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${sessionScope.restaurantVegetablesComment}" var="v">
                                    <tr>
                                        <td>
                                            <input type="hidden" value="${v.VId}" name="vId"> ${v.VName}
                                        </td>
                                        <td>
                                            <input type="hidden" value="${v.vDiscuss}" name="dResult">${v.vDiscuss}
                                        </td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <!-- col end -->
                        </div>
                    </div>
                    <!-- Row end -->
                    <div class="am-u-sm-6">
                        <div class="card-box">
                            <!-- col start -->
                            <table class="am-table  am-table-hover">
                                <thead>
                                <tr>
                                    <th>问题名称</th>
                                    <th>对该问题提出的意见</th>
                                    <th>分数</th>
                                </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${sessionScope.restaurantProblemComment}" var="p">
                                    <tr>
                                        <td>
                                            <input type="hidden" name="pId" value="${p.PId}">${p.PContent}
                                        </td>
                                        <td> ${p.pAnswer}
                                            <input type="hidden" name="dResult" value="${p.pAnswer}">
                                            <input type="hidden" name="pModule" value="${p.PModule}">
                                        </td>
                                        <td>${p.pScore}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <!-- col end -->
                            <input type="submit" value="确认评价" class="am-btn am-btn-primary">
                            <a href="toShowAllVegetables" class="am-btn am-btn-primary" style="margin-left: 300px">返回重新评论</a>
                        </div>
                    </div>
                    <!-- Row end -->
                </div>
            </div>
        </form>
    </div>
</div>
<script type="text/javascript" src="/assets/js/jquery-2.1.0.js" ></script>
<script type="text/javascript" src="/assets/js/amazeui.min.js"></script>
<script type="text/javascript" src="/assets/js/app.js" ></script>
<script type="text/javascript" src="/assets/js/blockUI.js" ></script>


</body>
</html>
