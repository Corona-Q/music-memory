<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>login</title>
</head>
 
<body>
 
<%
'向把login.html传过来的两个信息用变量保存起来
username=Request.Form("username")
password=Request.Form("password")
'数据库是reg.mdb
%>
<%
db="reg.mdb"
Set conn = Server.CreateObject("ADODB.Connection")
conn.Open "driver={Microsoft Access Driver (*.mdb)};dbq=" & Server.MapPath(db) 
%>
<%
Set rs = Server.CreateObject( "ADODB.Recordset" )
'看表中是否有此username
sql = "select * from useinfo where username='"+username+"';"
rs.open sql,conn,1,3
'如果什么都查不到，弹窗，弹回login.html
if (rs.bof and rs.eof) then
%>
<script>
alert("用户不存在，请重新登录");
window.location.href = "login.html";
</script>
<%
'否则拿查出来的密码，与用户输入的密码作对比，看是否一致
'查出来的密码必须先用一个变量接住，在ASP中不能直接比较
else
dbpwd=rs("password")
'如果不一致，则弹窗
if password<>dbpwd then
%>
<script>
alert("密码错误");
window.location.href = "login.html";
</script>
<%
else
'如果用户名密码都输入正确，则有此用户，timeout是为了防止用户非正常退出的，如果5分钟没有任何操作则判定其已经退出，ok是正常登陆的标志
Session.Timeout=5
Session("username")=username
Session("login")="ok"
%>
<script>
alert("登陆成功");
window.location.href = "second page.asp";
</script>
<%
end if
end if
'用完数据库记得关
rs.close
set rs=nothing
conn.close
set conn=nothing
%>
</body>  
</html>