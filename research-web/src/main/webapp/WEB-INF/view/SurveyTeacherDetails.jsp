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
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>评价结果</title>
    <meta name="description" content="demo">
    <meta name="keywords" content="demo">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="renderer" content="webkit">
    <meta http-equiv="Cache-Control" content="no-siteapp,no-store"/>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <link rel="icon" type="image/png" href="../dist/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="../dist/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="demo"/>
    <link rel="stylesheet" href="../dist/amazeui.min.css"/>
    <link rel="stylesheet" href="/docs/demo.css"/>
    <link rel="stylesheet" href="/assets/css/amazeui.css"/>

</head>
<body>
<div class="am-content">
    <div data-module="firstlevel" class="am-animation-slide-left">
        <div class="am-cf am-padding">
          <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">关于${teaName}的评价</strong></div>
        </div>
        <div class="am-g">
            <div class="am-g">
                <div class="am-u-md-12">
                    <form action="addTeacherComment" method="post">
                        <div class="am-panel am-panel-default">
                            <div class="am-panel-hd">
                                <h4 class="am-panel-title" data-am-collapse="{ target: '#combo'}">
                                    评价结果
                                </h4>
                            </div>
                            <div id="combo" class="am-panel-collapse am-collapse am-in">
                                <div class="am-panel-bd">
                                    <div id="combo-main-content" render="true"></div>
                                    <table class="am-table  am-table-hover">
                                        <thead>
                                        <tr>
                                            <th>问题名称</th>
                                            <th>对该问题提出的意见</th>
                                            <th>分数</th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${problemVos}" var="p">
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
                                </div>
                            </div>
                        </div>
                        <input type="submit" class="am-btn am-btn-primary" style="margin-left: 560px;" value="确认评价">
                        <a href="javascript:history.go(-1)" class="am-btn am-btn-primary" style="">返回首页</a>
                    </form>
                </div>
            </div>

        </div>
    </div>
</div>
<script type="text/javascript" src="/assets/js/jquery-2.1.0.js" ></script>
<script type="text/javascript" src="/assets/js/amazeui.min.js"></script>
<script type="text/javascript" src="/assets/js/app.js" ></script>
<script type="text/javascript" src="/assets/js/blockUI.js" ></script>


</body>
</html>
