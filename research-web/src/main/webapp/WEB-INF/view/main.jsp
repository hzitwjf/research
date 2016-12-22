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
    <script src="/assets/js/jquery-3.0.0.js"></script>
    <script>
        /*function one(){
            var  pan=new Array();
            console.log(pan);
            console.log(pan.length);
        }*/
        $(function () {
            var analyst=new Array();
            $(".pa").click(function () {
                //var problem=new Array();
                var pId=$(this).attr("pId");
                var aContent=$(this).val();
                    for(var i = 0; i < analyst.length; i++){
                        if(pId == analyst[i]){
                            analyst.splice(i, 2);
                            break;
                        };
                    };
                analyst.push(pId);
                analyst.push(aContent);
                //analyst.push(problem);
                console.log(analyst)
                console.log(pId+aContent);
                /*$.post("addPIdAndAnswer",{"pId":pId,"answer":aContent},function (data) {
                    console.log(data);
                });*/
            });
            $("#fa").blur(function () {
                var pId=$(this).attr("pId");
                var aContent=$(this).val();
                for(var i = 0; i < analyst.length; i++){
                    if(pId == analyst[i]){
                        analyst.splice(i, 2);
                        break;
                    };
                };
                analyst.push(pId);
                analyst.push(aContent);
                console.log(analyst)
                console.log(pId+aContent);
            });
            $("#submit").click(function () {
                /*$.post("doSomeComment",{"analyst[]":analyst},function (data) {
                    alert(data);
                });*/
                $.ajax({
                    url: 'doSomeComment',
                    data: { "analyst": analyst },
                    //data: _list,
                    dataType: "json",
                    type: "POST",
                    traditional: true,
                    success: function (data) {
                        // your logic
                        //alert(data);
                        if (data==1){
                            window.location="toShowVegetablesProblems";
                        }else {
                            window.location="toError";
                        }
                    }
                });
            });
        });
    </script>
</head>
<body>
<div class="wrap">
    <div class="wrap_head">
        <img src="/img/logo.png" alt="">
        <p class="wrap_head_gs">公司就餐情况调查表</p>
        <h4 class="wrap_head_js">技术支持： 合众艾特</h4>
    </div>
    <div class="wrap_nav">
        <p>为了了解公司餐饮基本情况，我们正在做一份有关调查，希望你抽出一点点时间为我们填一下，所有选项都为单选，诚挚的感谢！</p>
    </div>
    <div class="wrap_show"></div>
    <div class="wrap_"></div>
    <div class="wrap_main">
        <%--<form action="doSomeComment" method="post">--%>
            <h2>一、对总体的评估</h2>
            <div style="margin-left: auto;margin-right: auto;width: 800px; ">
                    <table>
                        <c:forEach items="${problem}" var="p">
                            <c:if test="${p.PModule==0}">
                                <tr><td colspan="4"><input type="hidden"  value="${p.PId}">${p.PContent}</td></tr>
                            </c:if>
                            <tr>
                                <c:forEach items="${answer}" var="a">
                                    <c:if test="${p.PId==a.prId and a.prId!=7}">
                                        <td width="160px">
                                            <input type="radio" name="analyst${a.prId}" value="${a.awContent}" pId="${a.prId}" style="width: 20px;height: 20px" class="pa">
                                            ${a.awContent}
                                        </td>
                                    </c:if>
                                    <c:if test="${a.prId==7 and p.PId==7}">
                                        <td colspan="4"><textarea cols="60" rows="10" pId="${a.prId}" id="fa"></textarea></td>
                                    </c:if>
                                </c:forEach>
                            </tr>
                        </c:forEach>
                    </table>
            </div>
            <%--<div class="wrap_btn_bottom">提交</div>--%>
            <%--<input type="submit" class="wrap_btn_bottom" value="提交">--%>
            <input type="button" class="wrap_btn_bottom" value="提交" id="submit" >
        <%--</form>--%>

    </div>
</div>
</body>
</html>