<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2016/12/15
  Time: 18:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
  <head>
    <title></title>
  </head>
  <body>
<%--   <table border="1px;" style="margin-left: auto;margin-right: auto">
     <tr>
       <th width="400px">菜品</th>
       <th width="100px">最喜欢</th>
       <th width="100px">最不喜欢</th>
     </tr>
     <c:forEach items="${vagetableList}" var="v1">
       <c:if test="${v1.vLevel==3}">
         <tr>
           <th>${v1.vName}</th>
           <td><input type="radio" value="最喜欢"></td>
           <td><input type="radio" value="最不喜欢"></td>
         </tr>
       </c:if>
     </c:forEach>
   </table>--%>
<h2>一、对以往餐点的评选</h2>
  <c:forEach items="${vagetableList}" var="uv">
  <c:if test="${uv.VParent==0}">
  <h3> <a href="#">${uv.VType}</a></h3>
  <ul>
    <c:forEach items="${vagetableList}" var="uvo">
      <c:if test="${uvo.VParent==uv.VId}">
        <li><a href="#">${uvo.VType}</a></li>
        <ul>
          <c:forEach items="${vagetableList}" var="u">
            <c:if test="${u.VParent==uvo.VId}">
              <li><a href="#">${u.VName}</a> </li>
              <li>
                <input type="radio" value="最喜欢吃" name="radio"> 最喜欢吃
                <input type="radio" value="最不喜欢吃" name="radio"> 最不喜欢吃
              </li>
            </c:if>
          </c:forEach>
        </ul>
      </c:if>
    </c:forEach>
  </ul>
  </c:if>
  </c:forEach>
  <h2>二、对总体的评估</h2>


<table>
  <c:forEach items="${problem}" var="p">
        <tr><td>${p.PContent}</td></tr>
    <tr>
      <c:forEach items="${answer}" var="a">
        <c:if test="${p.PId==a.prId}">
         <td width="150px"><input type="radio" value="${a.awContent}" name="radio">${a.awContent}</td>
        </c:if>
      </c:forEach>
    </tr>
  </c:forEach>
</table>
  <div><textarea cols="60" rows="10">dsadada</textarea></div>
  </body>
</html>
<%--
<table border="1px">
  <tr>
    <c:forEach items="${vagetableList}" var="v1">
      <c:if test="${v1.VLevel==1}">
        <th  colspan="4">${v1.VType}</th>
      </c:if>
    </c:forEach>
  </tr>
  <tr>
    <c:forEach items="${vagetableList}" var="v2">
      <c:if test="${v2.VLevel==2}">
        <th  colspan="2">${v2.VType}</th>
      </c:if>
    </c:forEach>
  </tr>
  <c:forEach items="${vagetableList}" var="v3">
    &lt;%&ndash;<c:if test="${v3.VLevel==3}">&ndash;%&gt;
    <c:if test="${v3.VType=='肉'}">
      <tr>
        <th>${v3.VName}</th>
        <td></td>
      </tr>
      &lt;%&ndash;</c:if>&ndash;%&gt;
    </c:if>
  </c:forEach>
</table>--%>
