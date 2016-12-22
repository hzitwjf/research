<%--
  Created by IntelliJ IDEA.
  User: wjf13
  Date: 2016/12/22
  Time: 15:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script>
       /* var allanwer=new Array(10);

        var anwer=new Array();
        anwer['timu']="题目一";
        anwer['daan']="答案一"

        allanwer.push(anwer);
        alert(allanwer);
        var a=new Array();
        a['timu']="题目二";
        a['daan']="答案二"

        allanwer[0]=a;
        alert(allanwer[0]);
        var myDate = new Date();
        myDate.getYear();        //获取当前年份(2位)
        myDate.getFullYear();    //获取完整的年份(4位,1970-????)
        myDate.getMonth();       //获取当前月份(0-11,0代表1月)
        myDate.getDate();        //获取当前日(1-31)
        myDate.getDay();         //获取当前星期X(0-6,0代表星期天)
        myDate.getTime();        //获取当前时间(从1970.1.1开始的毫秒数)
        myDate.getHours();       //获取当前小时数(0-23)
        myDate.getMinutes();     //获取当前分钟数(0-59)
        myDate.getSeconds();     //获取当前秒数(0-59)
        myDate.getMilliseconds();    //获取当前毫秒数(0-999)
        myDate.toLocaleDateString();     //获取当前日期
        var mytime=myDate.toLocaleTimeString();     //获取当前时间
        myDate.toLocaleString( );        //获取日期与时间*/
       function one(){
           var a=document.getElementById("date")
           alert(a.value);
       }
    </script>
</head>
<body>
<input type="date" id="date" onblur="one()">
</body>
</html>
