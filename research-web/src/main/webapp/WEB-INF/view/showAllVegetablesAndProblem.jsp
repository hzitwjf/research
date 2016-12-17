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
  <title>以餐饮评选</title>
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
</head>
<body>

  <header class="am-topbar am-header">
    <div class="am-topbar-brand">
        <strong>合众艾特餐饮调查问卷</strong>
        <small>为了更好的满足大家的用餐需求，请大家结合自己的实际情况勾选填写。</small>
    </div>
  </header>

  <div class="am-content">
    <div data-module="firstlevel" class="am-animation-slide-left">
      <div class="am-cf am-padding">
        <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">一、对以往餐点的评选</strong></div>
      </div>
          <div class="am-g">
            <div class="am-u-md-6">
              <div class="am-panel am-panel-default">
                  <div class="am-panel-hd">
                    <h4 class="am-panel-title" data-am-collapse="{ target: '#statistics'}">
                      荤菜类
                    </h4>
                  </div>
                  <div id="statistics" class="am-panel-collapse am-collapse am-in">
                    <div class="am-panel-bd">
                       <div id="statistics-main-content" render="true" >
                           <div style="margin-left: auto;margin-right: auto;width: 260px">
                               <c:forEach items="${vagetableList}" var="uv">
                                   <c:if test="${uv.VParent==0}">
                                       <%--<h3> <a href="#">${uv.VType}</a></h3>--%>
                                       <ul>
                                           <c:forEach items="${vagetableList}" var="uvo">
                                               <c:if test="${uvo.VParent==uv.VId}">
                                                   <c:if test="${uvo.VParent==1}">
                                                       <li><a href="#">${uvo.VType}</a></li>
                                                           <ul>
                                                               <c:forEach items="${vagetableList}" var="u">
                                                                   <c:if test="${u.VParent==uvo.VId}">
                                                                        <c:if test="${u.VType=='肉' or u.VType=='鸡鸭鱼'}">
                                                                           <li><a href="#">${u.VName}</a> </li>
                                                                           <li>
                                                                               <input type="checkbox" value="最喜欢吃"> 最喜欢吃
                                                                               <input type="checkbox" value="最不喜欢吃"> 最不喜欢吃
                                                                           </li>
                                                                        </c:if>
                                                                   </c:if>
                                                               </c:forEach>
                                                           </ul>
                                                   </c:if>
                                               </c:if>
                                           </c:forEach>
                                       </ul>
                                   </c:if>
                               </c:forEach>
                           </div>
                       </div>
                    </div>
                  </div>
               </div>
            </div>

            <div class="am-u-md-6">
              <div class="am-panel am-panel-default">
                  <div class="am-panel-hd">
                    <h4 class="am-panel-title" data-am-collapse="{ target: '#expend'}">
                      素菜类
                    </h4>
                  </div>
                  <div id="expend" class="am-panel-collapse am-collapse am-in">
                    <div class="am-panel-bd">
                       <div id="expend-main-content" render="true" >
                           <div style="margin-left: auto;margin-right: auto;width: 260px">
                               <c:forEach items="${vagetableList}" var="uv">
                                   <c:if test="${uv.VParent==0}">
                                       <%--<h3> <a href="#">${uv.VType}</a></h3>--%>
                                       <ul>
                                           <c:forEach items="${vagetableList}" var="uvo">
                                               <c:if test="${uvo.VParent==uv.VId}">
                                                   <c:if test="${uvo.VParent==22}">
                                                        <li><a href="#">${uvo.VType}</a></li>
                                                           <ul>
                                                               <c:forEach items="${vagetableList}" var="u">
                                                                   <c:if test="${u.VParent==uvo.VId}">
                                                                           <c:if test="${u.VType=='青瓜' or u.VType=='土豆'}">
                                                                               <li><a href="#">${u.VName}</a> </li>
                                                                               <li>
                                                                                   <input type="checkbox" value="最喜欢吃"> 最喜欢吃
                                                                                   <input type="checkbox" value="最不喜欢吃"> 最不喜欢吃
                                                                               </li>
                                                                           </c:if>
                                                                   </c:if>
                                                               </c:forEach>
                                                           </ul>
                                                   </c:if>
                                               </c:if>
                                           </c:forEach>
                                       </ul>
                                   </c:if>
                               </c:forEach>
                           </div>
                       </div>
                    </div>
                  </div>
               </div>
            </div>

              <div class="am-cf am-padding">
                  <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">二、对总体的评估</strong></div>
              </div>
              <div class="am-g">
                  <div class="am-u-md-12">
                      <div class="am-panel am-panel-default">
                          <div class="am-panel-hd">
                              <h4 class="am-panel-title" data-am-collapse="{ target: '#combo'}">
                                  请回答下列问题
                              </h4>
                          </div>
                          <div id="combo" class="am-panel-collapse am-collapse am-in">
                              <div class="am-panel-bd">
                                  <div id="combo-main-content"  render="true">
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
                                  </div>
                              </div>
                          </div>
                      </div>
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