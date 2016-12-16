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
${vagetableList}
  <c:forEach items="${vagetableList}" var="v">
    ${v.vType}
  </c:forEach>
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
