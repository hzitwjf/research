<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/15
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html class="no-js">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>教员的平均得分</title>
  <meta name="description" content="demo">
  <meta name="keywords" content="demo">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <meta name="renderer" content="webkit">
  <meta http-equiv="Cache-Control" content="no-siteapp,no-store" />
  <meta http-equiv="Pragma" content="no-cache">
  <meta http-equiv="Expires" content="0">
  <link rel="icon" type="image/png" href="../dist/i/favicon.png">
  <link rel="apple-touch-icon-precomposed" href="../dist/i/app-icon72x72@2x.png">
  <meta name="apple-mobile-web-app-title" content="demo" />
  <link rel="stylesheet" href="../dist/amazeui.min.css"/>
  <link rel="stylesheet" href="/docs/demo.css"/>
  <link rel="stylesheet" href="/assets/css/amazeui.css" />
  <script>
      function jump() {
          var time=document.getElementById("date").value;
          var url="showDetailsOfTeacher?cModule=讲师&&time="+time
          if(confirm("确定要查看这个时间段的教员统计信息吗"))
          {
              //alert(url);
              window.location=url;
          }
      }
  </script>
</head>
<body  style="overflow-x: hidden;">

  <header class="am-topbar am-header">
    <div class="am-topbar-brand">
        <strong>合众艾特</strong>
        <small>统计各位教员的满意度</small>
    </div>
  </header>
  <div class="am-content">
    <div data-module="firstlevel" class="am-animation-slide-left">
      <div class="am-cf am-padding">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">
            请选择你要查看的哪个时间段的讲师统计详情表:<input type="date" id="date" onblur="jump()">
        </strong></div>
      </div>
          <div class="am-g">
              <div class="am-g">
                  <div class="am-u-md-12">
                      <div class="am-panel am-panel-default">
                          <div class="am-panel-hd">
                              <h4 class="am-panel-title" data-am-collapse="{ target: '#combo'}">
                                  <span style="margin-left: 500px;">${year} 年${month}月教员满意度统计详情表</span>
                              </h4>
                          </div>
                          <div id="combo" class="am-panel-collapse am-collapse am-in">
                              <div class="am-panel-bd">
                                  <div id="combo-main-content"  render="true"></div>
                                  <table class="am-table  am-table-hover">
                                      <thead>
                                      <tr>
                                          <th>教员名称</th>
                                          <th>所获平均分</th>
                                      </tr>
                                      </thead>
                                      <tbody>
                                      <c:forEach items="${avgScore}" var="as">
                                          <tr>
                                              <td> <a href="findCommentByName?cdPeople=${as.cdPeople}">${as.cdPeople}</a> </td>
                                              <td>${as.cScore}</td>
                                          </tr>
                                      </c:forEach>
                                      </tbody>
                                  </table>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <a href="toAdminIndex" class="am-btn am-btn-primary" style="margin-left: 560px;">返回首页</a>
          </div>
    </div>
  </div>
    </div>
  <p>合众艾特教员信息表</p>
  <p>注：教员模块满分100分</p>
  </div>
  <script src="../dist/jquery.min.js"></script>
  <script src="../dist/amazeui.min.js"></script>
  <script src="../dist/echarts.min.js"></script>
  <script src="../dist/t3.min.js"></script>
  <script src="/docs/demo.min.js"></script>
  <script type="text/javascript">
    Box.Application.init();
  </script>
</body>
</html>
