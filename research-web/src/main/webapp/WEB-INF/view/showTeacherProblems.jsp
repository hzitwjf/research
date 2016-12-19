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
  <title>教员调查表</title>
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
</head>
<body>

  <header class="am-topbar am-header">
    <div class="am-topbar-brand">
        <strong>合众艾特教员</strong>
        <small>统计教员工作情况</small>
    </div>
  </header>
  <div class="am-content">
    <div data-module="firstlevel" class="am-animation-slide-left">
      <%--<div class="am-cf am-padding">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">一、受欢迎的菜系</strong></div>
          <div class="am-fl am-cf" style="margin-left: 170px"><strong class="am-text-primary am-text-lg">二、不受欢迎的菜系</strong></div>
          <div class="am-fl am-cf" style="margin-left: 150px"><strong class="am-text-primary am-text-lg">三、意见不统一的菜系</strong></div>
      </div>--%>
          <div class="am-g">
              <div class="am-g">
                  <div class="am-u-md-12">
                      <div class="am-panel am-panel-default">
                          <div class="am-panel-hd">
                              <h4 class="am-panel-title" data-am-collapse="{ target: '#combo'}">
                                  教员调查问卷
                              </h4>
                          </div>
                          <div id="combo" class="am-panel-collapse am-collapse am-in">
                              <div class="am-panel-bd">
                                  <div id="combo-main-content"  render="true"></div>
                                  <table class="am-table  am-table-hover">
                                      <thead>
                                      ${problem}
                                      <tr>
                                          <th>票数</th>
                                          <th>菜系名称</th>
                                          <th>评论结果</th>
                                      </tr>
                                      </thead>
                                      <tbody>

                                          <tr>
                                              <td>
                                                1
                                              </td>
                                              <td>
                                                  2
                                              </td>
                                              <td>3</td>
                                          </tr>

                                      </tbody>
                                  </table>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
              <a href="/index.jsp" class="am-btn am-btn-primary" style="margin-left: 560px;">返回首页</a>
          </div>
    </div>
  </div>
    </div>
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
