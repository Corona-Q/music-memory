<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<%Session.CodePage = 65001%>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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

  strin= "insert into useinfo(stuno,stuna,stup,stus,stul,stuc,stuself)"
  strin=strin&"values('"&tmpno&"','"&tmpname&"','"&tmppass&"','"&tmpsex&"','"&tmplove&"','"&tmpclass&"','"&tmpself&"')"
  cn.execute  strin
  response.write "<script language=JavaScript>" & "alert('注册成功！');" & "history.back();" & "</script>" 

  end if
%>
