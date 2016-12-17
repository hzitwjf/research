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
    <title>餐饮调查表</title>
    <link rel="stylesheet" href="/css/main.css">
    <link rel="stylesheet" href="/css/index.css">
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
        <form action="toCuccess" method="post">
            <h2>一、对总体的评估</h2>
            <div style="margin-left: auto;margin-right: auto;width: 800px; ">
                <table>
                    <c:forEach items="${problem}" var="p">
                        <tr><td>${p.PContent}</td></tr>
                        <tr>
                            <c:forEach items="${answer}" var="a">
                                <c:if test="${p.PId==a.prId}">
                                    <td width="150px"><input type="checkbox" value="${a.awContent}">${a.awContent}</td>
                                </c:if>
                            </c:forEach>
                        </tr>
                    </c:forEach>
                </table>
                <div id="combo-main-echarts"  render="true" >
                    <textarea cols="60" rows="10">德玛西亚</textarea>
                </div>
            </div>
            <div class="wrap_btn_bottom">提交</div>

        </form>

    </div>
</div>
</body>
</html>