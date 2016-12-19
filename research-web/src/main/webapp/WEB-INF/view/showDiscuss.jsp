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
          <form class="am-form">
            <table class="am-table am-table-striped am-table-hover table-main">
              <thead>
              <tr>
                  <th class="table-check"><input type="checkbox" /></th>
                  <th class="table-type">详情ID</th>
                  <th class="table-author am-hide-sm-only">菜品名字</th>
                  <th class="table-type">题目名字</th>
                  <th class="table-title">意见</th>
              </tr>
              </thead>
              <tbody>
                  <c:forEach items="${discussVoList}" var="disc">
                      <tr>
                        <td><input type="checkbox" value="${disc.CUuid}" /></td>
                        <td>${disc.DId}</td>
                        <td>${disc.vName}</td>
                        <td>${disc.pContent}</td>
                        <td class="am-hide-sm-only"><a href="javascript:void(0)">${disc.DResult}</a></td>
                      </tr>
                  </c:forEach>
              </tbody>
            </table>
           <c:if test="${totalPages!=0}">
            <div class="am-cf">
              共 ${totalElements} 条记录
                <a href="showAllComment" class="am-btn am-btn-primary" style="margin-left: 360px">返回</a>
              <div class="am-fr">
                  <ul class="am-pagination">
                      <c:if test="${(currentPage-1)<0}">
                          <li class="am-disabled"><a href="showDiscussByCUuid?page=${currentPage-1}">«</a></li>
                      </c:if>
                      <c:if test="${(currentPage-1)>=0}">
                          <li><a href="showDiscussByCUuid?page=${currentPage-1}">«</a></li>
                      </c:if>
                      <c:forEach begin="0" end="${totalPages-1}" var="p">
                          <li class="am-active"><a href="showDiscussByCUuid?page=${p}">${p+1}</a></li>
                      </c:forEach>
                      <c:if test="${currentPage<(totalPages-1)}">
                          <li><a href="showDiscussByCUuid?page=${currentPage+1}">»</a></li>
                      </c:if>
                      <c:if test="${currentPage>=(totalPages-1)}">
                          <li class="am-disabled"><a href="showDiscussByCUuid?page=${currentPage+1}">»</a></li>
                      </c:if>
                  </ul>
              </div>
             </c:if>
            </div>
            <hr />
            <p>注：合众艾特评论详情信息表</p>
          </form>
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
