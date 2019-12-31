<html>
<head>
<title>adoinsert</title>
</head>
<body>
<%

tmpseq=ucase(trim(request.form("txtseq")))
tmpsubject=trim(request.form("txtsubject"))
tmppublisher=trim(request.form("txtpublisher"))
tmpprice=trim(request.form("txtprice"))
 
 '构造Insert命令的字符串
strinsert="insert into course(seq,subject,publisher,price)"
strinsert=strinsert&"values('"&tmpseq&"','"&tmpsubject&"','"&tmppublisher&"',"&tmpprice&")"

'建立并打开connection对象
'strconn="Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" & Server.MapPath("course.mdb")
strconn="driver={microsoft access driver (*.mdb)};dbq="&server.mappath("course.mdb")
set conn=server.createobject("adodb.connection")
conn.open strconn

conn.execute strinsert

response.write "记录添加成功!"
conn.close
set conn=nothing
%>
<%'response.write "<script language=JavaScript>" 
   'response.write "alert('用户信息录入成功！');"
  ' response.write "history.back()" 
   'response.write "</script>"
%>
<br>
请
<a href=insert.htm>按此处</a>输入下一条记录
</body>

</html>