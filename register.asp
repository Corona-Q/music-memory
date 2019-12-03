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
        <div class="register-box transparent" style="position: relative; width: 500px; height: 888px;">
          <div class="title-box" style="position: absolute; margin-left: 128px;">新 用 户 信 息</div>
          <div class="registerInformation" style="margin-top: 130px;">
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
        <span class="registerNameBox">姓名:</span> <span style="color: firebrick;    font-style: italic;"><%= rName%></span> <Br><Br>  
        <span class="registerNameBox">账号:</span> <span style="color: firebrick;    font-style: italic;"><%= rNumber%></span> <br><br>
        <span class="registerNameBox">密码:</span> <span style="color: firebrick;    font-style: italic;"><%= rPwd%></span> <Br><Br>
        <span class="registerNameBox">性别:</span> <span style="color: firebrick;    font-style: italic;"><%= rSex%></span> <Br><Br>
        <span class="registerNameBox">专业班级:</span> <span style="color: firebrick;    font-style: italic;"><%= rClass%></span> <BR><BR>
        <span class="registerNameBox">爱好:</span>
        <span style="color: firebrick;    font-style: italic;">
        <%
        For I = 1 to Request.Form("registerLove").Count
        Response.Write Request.Form("registerLove")(I) & "   "
        Next
        %>
        </span>
        <Br><br>
          <span class="registerNameBox">个性签名:</span> <span style="color: firebrick;    font-style: italic;"><%= SMsg%></span>
        </div>
        </div>  
</body>
</html> 