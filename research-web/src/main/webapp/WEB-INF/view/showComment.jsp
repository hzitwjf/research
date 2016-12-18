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
		<title>评论列表</title>
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
                  <th class="table-id">评论ID</th>
                  <th class="table-title">评论人</th>
                  <th class="table-date am-hide-sm-only">评论时间</th>
                  <th class="table-author am-hide-sm-only">当前人评论次数</th>
                  <th class="table-type">评论模块</th>
                  <th class="table-set">操作</th>
              </tr>
              </thead>
              <tbody>
                <c:forEach items="${commentPage.content}" var="commentList">
                    <tr>
                        <td><input type="checkbox" name="cUuid" value="${commentList.CUuid}"/></td>
                        <td>${commentList.CId}</td>
                        <td><a href="javascript:void(0)">${commentList.CPeople}</a></td>
                        <td>${commentList.CTime}</td>
                        <td class="am-hide-sm-only">${commentList.cCount}</td>
                        <td class="am-hide-sm-only">${commentList.cModule}</td>
                        <td>
                            <div class="am-btn-toolbar">
                                <div class="am-btn-group am-btn-group-xs">
                                    <a class="am-btn am-btn-default am-btn-xs am-text-secondary" href="#"><span class="am-icon-pencil-square-o"></span> 查看评论详情</a>
                                </div>
                            </div>
                        </td>
                    </tr>
                </c:forEach>
              </tbody>
            </table>
            <div class="am-cf">
              共 ${commentPage.totalElements} 条记录
              <div class="am-fr">
                <ul class="am-pagination">
                    <c:if test="${(currentPage-1)<0}">
                        <li class="am-disabled"><a href="toShowAllComment?page=${currentPage-1}">«</a></li>
                    </c:if>
                    <c:if test="${(currentPage-1)>=0}">
                        <li><a href="toShowAllComment?page=${currentPage-1}">«</a></li>
                    </c:if>
                    <c:forEach begin="0" end="${commentPage.totalPages-1}" var="p">
                        <li class="am-active"><a href="toShowAllComment?page=${p}">${p+1}</a></li>
                    </c:forEach>
                    <c:if test="${currentPage<(commentPage.totalPages-1)}">
                        <li><a href="toShowAllComment?page=${currentPage+1}">»</a></li>
                    </c:if>
                    <c:if test="${currentPage>=(commentPage.totalPages-1)}">
                        <li class="am-disabled"><a href="toShowAllComment?page=${currentPage+1}">»</a></li>
                    </c:if>
                </ul>
              </div>
            </div>
            <hr />
            <p>注：合众艾特评论信息表</p>
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
		<script type="text/javascript" src="/assets/js/app.js" ></script>
		<script type="text/javascript" src="/assets/js/blockUI.js" ></script>
	</body>
	
</html>
