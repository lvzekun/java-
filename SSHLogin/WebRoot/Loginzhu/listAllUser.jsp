<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
 <%@taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'listAllUser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my AllUser JSP page. <br>
    <center>
<s:if test="#request.allUserList.size>0">
用户信息管理
<table border="1" width="80%">
 <tr>
   <th>id</th>
   <th>用户名</th>
   <th>密码</th>>
   
   <th colspan="2">操作</th>
 </tr>
  <s:iterator value="#request.allUserList" id="u">
 <tr class="tr_css" align="center">
   <td><s:property value="#u.id"/></td>    
   <td><s:property value="#u.username"/></td>    
   <td><s:property value="#u.password"/></td>    
    
	<td>
	<s:a href="preUpdate.action?uid=%{#u.uid}">修改</s:a>
	</td>
	<td>
	<s:a href="delete.action?uid=%{#u.uid}" onclick="return confirm('确定删除该用户吗？');">删除</s:a>
	</td>
 </tr>
 </s:iterator>
</table>
<s:if test="#request.pb!=null">


</s:if>
</s:if>
<s:else>
  <font size="4" color="red">没有查询到任何记录</font>
</s:else>
</center>
  </body>
</html>
