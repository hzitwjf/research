<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/16
  Time: 18:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>统计反馈</title>
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/index.css">
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
<div class="wrap">
    <div class="wrap_head">
        <img src="/img/logo.png" alt="">
        <p class="wrap_head_gs">公司就餐情况调查表</p>
        <h4 class="wrap_head_js">技术支持： 合众艾特</h4>
    </div>
    <div class="wrap_nav">
        <p>为了了解公司餐饮基本情况，我们正在做一份有关调查，希望你抽出一点点时间为我们填一下，诚挚的感谢！</p>
    </div>
    <div class="wrap_show"></div>
    <div class="wrap_"></div>
    <div class="wrap_main">
        <form action="toSuccess" method="post">
            <h2>一、对总体的评估</h2>
                <div class="am-u-sm-14">
                    <div class="card-box">
                        <!-- col start -->
                        <table class="am-table  am-table-hover">
                            <thead>
                            <tr>
                                <th>问题名称</th>
                                <th>对该问题提出的意见</th>
                                <%--<th>该问题所属模块</th>--%>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${problemVos}" var="p">
                                <tr>
                                    <td>
                                        <input type="hidden" name="pId" value="${p.PId}">${p.PContent}
                                    </td>
                                    <td> ${p.pAnswer}
                                        <input type="hidden" name="pModule" value="${p.PModule}">
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                        <!-- col end -->
                        <input type="submit" value="确认评价" class="am-btn am-btn-primary">
                        <a href="vegetablesProblems" class="am-btn am-btn-primary" style="margin-left: 360px">返回重新评论</a>
                    </div>
                </div>
        </form>

    </div>
</div>
</body>
</html>