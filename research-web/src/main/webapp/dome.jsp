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
        var allanwer=new Array(10);

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

    </script>
</head>
<body>

</body>
</html>
