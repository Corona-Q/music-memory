<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../CSS/registerCSS.css" media="screen" type="text/css"/>
    <link href="../image/icon4.ico" rel="icon" type="image/x-ico" />
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>

    <title>用户登录</title>
    
<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
  <%Session.CodePage = 65001%>
  <%
  tmpno=request.form("regNo")
  tmpname=request.form("regName")
  tmppass=request.form("regPasswordC")
  tmpsex=request.form("regGender")
  
  
  'tmplove=request.form("registerLove")
  
  tmplove=""
  For I=1 to Request.form("registerLove").Count
     tmplove=tmplove&Request.form("registerLove")(I)&"," 
  Next
  
  m=len(tmplove)
  tmplove=left(tmplove,m-1)
  
  tmpclass=request.form("regClass")
  tmpself=request.form("regText")
  
  set cn=server.createobject("adodb.connection")
  strconn="driver={microsoft access driver (*.mdb)};dbq="&server.mappath("reg.mdb")
  cn.open strconn
  
  set rs=server.createobject("adodb.recordset")
  selstr="select * from useinfo where stuno='" & tmpno & "'"
  rs.open selstr,cn
  
  
  if not (rs.eof) then
  response.write "<script language=JavaScript>" & "alert('该账号已被占用，请重新选择账号！');" & "history.back();" & "</script>"
  rs.close
  set rs=nothing
  cn.close
  set cn=nothing
  else
  
  set cn=server.createobject("adodb.connection")
  strconn="driver={microsoft access driver (*.mdb)};dbq="&server.mappath("reg.mdb")
  cn.open strconn
  
    strin= "insert into useinfo(stuno,username,password,stus,stul,stuc,stuself)"
    strin=strin&"values('"&tmpno&"','"&tmpname&"','"&tmppass&"','"&tmpsex&"','"&tmplove&"','"&tmpclass&"','"&tmpself&"')"
    cn.execute  strin
    response.write "<script language=JavaScript>" & "alert('注册成功！');" & "</script>" 
  
    end if
  %>
</head>

  
<body background="../image/图片1.png" style="background-repeat:no-repeat;background-size:100% 100%;background-attachment: fixed;">
    <form id="form1" name="form1" method="post" action="login.asp">
        <div class="container register-box transparent"  style="height: 450px; width: 680px;">
            <div class="row">
                    <span class="title-box" style="left: 30px;top: 10px;">登 录</span>
            </div>
            <div class="row" style="margin-top: 90px;">
                <div class="col-md-5 font" style="text-align: right;">
                    <br>
                    姓名：
                </div>
                <div class="col-md-7" style="margin-top: 25px;">
                    <br>
                    <input id="registerName" type="text" name="username" placeholder="请输入您的姓名">
                </div>
            </div>
            <div class="row" style="margin-top: 70px;">
                <div class="col-md-5 font" style="text-align: right;">
                    密码：
                </div>
                <div class="col-md-7" style="margin-top: 8px;">
                    <input id="password" type="password" name="password" placeholder="请输入您的密码">
                </div>
            </div>
            <div class="row" style="margin-top: 60px;">
                <div class="col-md-6 " style="text-align: right;">
                    <input id="submit-button" type="submit" name="registerSubmit" value="确认">
                </div>
                <div class="col-md-6 " style="">
                    <input id="submit-button" type="reset" name="registerSubmit" value="重置">
                </div>
            </div>
        </div>
    </form>
</body>
</html> 