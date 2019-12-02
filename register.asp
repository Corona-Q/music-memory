<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>音乐记忆</title>
    <link rel="stylesheet" href="CSS/registerCSS.css" type="text/css"/>
</head>
<body background="image\图片1.png" style="background-repeat:no-repeat;background-size:100% 100%;background-attachment: fixed;">
        <div class="register-box transparent" style="position: relative;">
          <div class="title-box" style="position: absolute; margin-left: 255px;">新 用 户 信 息</div>
          <div class="registerInformation">
        <%
        Response.Expires=0
        rName = Request.Form("registerName")
        rNumber = Request.Form("registerNumber")
        rPwd = Request.Form("registerPassword")
        rSex= Request.Form("registerGender")
        rClass = Request.Form("registerClass")
        rTextarea =Request.Form("registerTextarea")
        SMsg = Replace(rTextarea ,vbcrlf,"<Br>" & vbcrlf)
        %>
        姓名: <%= rName%><Br><Br>  
        账号：<%= rNumber%><br><br>
        密码: <%= rPwd%><Br><Br>
        性别: <%= rSex%> <Br><Br>
        专业班级：<%= rClass%><BR><BR>
        爱好:<Br>
        <%
        For I = 1 to Request.Form("registerLove").Count
        Response.Write Request.Form("registerLove")(I) & "   "
        Next
        %>
        <Br><br>
        个性签名: <Br>
        <%= SMsg%>
        </div>
        </div>  
</body>
</html> 