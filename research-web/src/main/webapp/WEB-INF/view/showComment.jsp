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
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="description" content="demo">
        <meta name="keywords" content="demo">
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
        <meta name="renderer" content="webkit">
        <meta http-equiv="Cache-Control" content="no-siteapp,no-store"/>
        <meta http-equiv="Pragma" content="no-cache">
        <meta http-equiv="Expires" content="0">
        <meta name="apple-mobile-web-app-title" content="demo"/>
		<title>评论列表</title>
		<link rel="stylesheet" href="/assets/css/amazeui.css" />
		<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="/assets/css/core.css" />
		<link rel="stylesheet" href="/assets/css/menu.css" />
		<link rel="stylesheet" href="/assets/css/index.css" />
		<link rel="stylesheet" href="/assets/css/admin.css" />
		<link rel="stylesheet" href="/assets/css/page/typography.css" />
		<link rel="stylesheet" href="/assets/css/page/form.css" />

        <link rel="icon" type="image/png" href="/dist/i/favicon.png">
        <link rel="apple-touch-icon-precomposed" href="/dist/i/app-icon72x72@2x.png">
        <link rel="stylesheet" href="/dist/amazeui.min.css"/>
        <link rel="stylesheet" href="/docs/demo.css"/>
	</head>
	<body style="overflow-y: scroll";>

	<!--	<div class="am-g">-->
		<!-- ============================================================== -->
		<!-- Start right Content here -->
		<div class="content-page">
			<!-- Start content -->
			<div class="content">
				<div class="card-box">
					<!-- Row start -->
					  	<div class="am-g">
        <div class="am-u-sm-12">
            <table class="am-table am-table-striped am-table-hover table-main">
              <thead>
              <tr>
                  <th class="table-check"><input type="checkbox" /></th>
                  <th class="table-title">评论ID</th>
                  <%--<th class="table-title">评论人</th>--%>
                  <th class="table-date am-hide-sm-only">评论时间</th>
                  <th class="table-author am-hide-sm-only">当前人评论次数</th>
                  <th class="table-type">评论模块</th>
                  <th class="table-type">当前模块得分</th>
                  <th class="table-set">操作</th>
              </tr>
              </thead>
              <tbody>
                <c:forEach items="${commentPage.content}" var="commentList">
                    <tr>
                        <td><input type="checkbox" name="cUuid" value="${commentList.CUuid}"/></td>
                        <td>${commentList.CId}
                            <input type="hidden" value="${commentList.CPeople}">
                        </td>
                        <%--<td><a href="javascript:void(0)">${commentList.CPeople}</a></td>--%>
                        <td>${commentList.CTime}</td>
                        <td class="am-hide-sm-only">${commentList.cCount}</td>
                        <td class="am-hide-sm-only">${commentList.cModule}</td>
                        <td class="am-hide-sm-only">${commentList.cScore}</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <a class="am-btn am-btn-default am-btn-xs am-text-secondary" href="toShowDiscussByCUuid?cUuid=${commentList.CUuid}"><span class="am-icon-pencil-square-o"></span> 查看评论详情</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
              </tbody>
            </table>
            <c:if test="${commentPage.totalPages!=0}">
            <div class="am-cf">
              共 ${commentPage.totalElements} 条记录
                <a href="/index.jsp" class="am-btn am-btn-primary" style="margin-left: 360px">返回</a>
              <div class="am-fr">
                <ul class="am-pagination">
                    <c:if test="${(currentPage-1)<0}">
                        <li class="am-disabled"><a href="showAllComment?page=${currentPage-1}">«</a></li>
                    </c:if>
                    <c:if test="${(currentPage-1)>=0}">
                        <li><a href="showAllComment?page=${currentPage-1}">«</a></li>
                    </c:if>
                    <c:forEach begin="0" end="${commentPage.totalPages-1}" var="p">
                        <li class="am-active"><a href="showAllComment?page=${p}">${p+1}</a></li>
                    </c:forEach>
                    <c:if test="${currentPage<(commentPage.totalPages-1)}">
                        <li><a href="showAllComment?page=${currentPage+1}">»</a></li>
                    </c:if>
                    <c:if test="${currentPage>=(commentPage.totalPages-1)}">
                        <li class="am-disabled"><a href="showAllComment?page=${currentPage+1}">»</a></li>
                    </c:if>
                </ul>
              </div>
             </c:if>
            </div>
            <hr />
            <p>合众艾特评论信息表</p>
            <p>注：餐饮模块满分25分</p>
        </div>

      </div>
					  <!-- Row end -->
					  
					</div>
				
				
				
				
				</div>
			

			</div>
		</div>
		<!-- end right Content here -->
		<!--</div>-->
		</div>
		</div>
		
		<!-- navbar -->
		<a href="admin-offcanvas" class="am-icon-btn am-icon-th-list am-show-sm-only admin-menu" data-am-offcanvas="{target: '#admin-offcanvas'}"><!--<i class="fa fa-bars" aria-hidden="true"></i>--></a>
		
		<script type="text/javascript" src="/assets/js/jquery-2.1.0.js" ></script>
		<script type="text/javascript" src="/assets/js/amazeui.min.js"></script>

		<script type="text/javascript" src="/assets/js/blockUI.js" ></script>

	</body>
	
</html>
