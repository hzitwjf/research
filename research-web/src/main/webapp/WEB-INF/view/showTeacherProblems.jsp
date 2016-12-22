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
    <meta http-equiv="Cache-Control" content="no-siteapp,no-store"/>
    <meta http-equiv="Pragma" content="no-cache">
    <meta http-equiv="Expires" content="0">
    <link rel="icon" type="image/png" href="../dist/i/favicon.png">
    <link rel="apple-touch-icon-precomposed" href="../dist/i/app-icon72x72@2x.png">
    <meta name="apple-mobile-web-app-title" content="demo"/>
    <link rel="stylesheet" href="../dist/amazeui.min.css"/>
    <link rel="stylesheet" href="/docs/demo.css"/>
    <link rel="stylesheet" href="/assets/css/amazeui.css"/>
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
                var prId=$(this).attr("pId");
                var awContent=$(this).val();
                var anwer={"prId":prId,"awContent":awContent};
                for(var i = 0; i < analyst.length; i++){
                    if(prId == analyst[i].prId){
                        analyst[i].awContent=awContent;
                        console.log(analyst)
                        return;
                    }
                }

                analyst.push(anwer);
                console.log(analyst)
                /* console.log(pId+aContent);
               $.post("addPIdAndAnswer",{"pId":pId,"answer":aContent},function (data) {
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
                /*console.log(analyst)
                console.log(pId+aContent);*/
            });
            $("#submit").click(function () {
                /*$.post("doSomeComment",{"analyst[]":analyst},function (data) {
                 alert(data);
                 });*/
                var teacher=$("#teaId").val();
                //添加表单验证，要求所有题目的单选框都被选中

                  alert(   JSON.stringify(analyst) );
                $.ajax({
                    url: 'doTeacherComment',
                    data: { "analyst": JSON.stringify(analyst) ,"teaId":teacher },
                    //data: _list,
                    dataType: "json",
                    type: "POST",
                    traditional: true,
                    success: function (data) {
                        // your logic
                        //alert(data);
                        if (data==1){
                            window.location="toSurveyTeacherDetails";
                        }else {
                            window.location="toError";
                        }
                    },
                    error:function(ex){
                        alert(ex);
                    }
                });
            });
        });
    </script>
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
        <p style="margin-left: 15px">请注意所有的选项都为单选，请勿多选或少选！</p>
        <%--<form action="doTeacherComment" method="post">--%>
        <div class="am-cf am-padding">
          <div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">请选择你要评论的老师：</strong></div>
            <select class="form-control" name="teaId" id="teaId">
                <c:forEach items="${teacher}" var="t">
                    <option  value="${t.teaId}">${t.teaName}</option>
                </c:forEach>
            </select>
        </div>
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
                                    <div id="combo-main-content" render="true"></div>
                                    <table class="am-table  am-table-hover">
                                        <thead>
                                        <c:forEach items="${problem}" var="p">
                                        <c:if test="${p.PModule==1}">
                                            <tr>
                                                <td colspan="5"><input type="hidden" value="${p.PId}"
                                                                       name="analyst">${p.PContent}</td>
                                            </tr>
                                        </c:if>
                                        </thead>
                                        <tbody>
                                        <c:forEach items="${answer}" var="a">
                                            <c:if test="${p.PId==a.prId and a.prId!=35}">
                                                <td width="160px"><input class="pa" type="radio" name="analyst${a.prId}"
                                                                         value="${a.awContent}" pId="${a.prId}"
                                                                         style="width: 20px;height: 20px">${a.awContent} ${a.awSc}分
                                                </td>
                                            </c:if>
                                            <c:if test="${a.prId==35 and p.PId==35}">
                                                <td colspan="5"><textarea cols="60" rows="10" pId="${a.prId}" id="fa"></textarea></td>
                                            </c:if>
                                        </c:forEach>
                                        </tbody>
                                        </c:forEach>
                                    </table>
                                    <%--<textarea cols="60" rows="10" name="analyst">做的很好，暂无意见！</textarea>--%>
                                </div>
                            </div>
                        </div>
                        <input type="button" class="am-btn am-btn-primary" style="margin-left: 560px;" value="提交问卷" id="submit">
                        <a href="/index.jsp" class="am-btn am-btn-primary" style="">返回首页</a>
                    <%--</form>--%>
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
