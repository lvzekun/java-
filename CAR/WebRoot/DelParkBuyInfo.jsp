<%@ page contentType="text/html; charset=utf-8" language="java"
	import="java.sql.*" pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=GB18030">
<title>删除停车场管理员</title>
</head>
<body>
	<jsp:useBean id="db" class="bean.DBBean" scope="page" />
	<%
		request.setCharacterEncoding("UTF-8");

		String owneridparkid = request.getParameter("owneridparkid");
		
		int i = db.executeUpdate("delete from Buyinfo where owneridparkid=" + owneridparkid);

		if (i == 1) {
			out.println("<script language='javaScript'> alert('删除成功，点击确定后自动跳到主页！');</script>");
			response.setHeader("refresh", "1;url=buy_index.jsp");
		} else {
			out.println("<script language='javaScript'> alert('删除失败，点击确定后自动跳到主页！');</script>");
			response.setHeader("refresh", "1;url=buy_index.jsp");
		}
		db.close();
	%>
</body>
</html>