<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page import="java.util.List"%>
<center>
<h1>更新用户信息</h1>
<s:actionerror/>
<b>分页显示用户列表</b>
<table border="1" cellpadding="0" cellspacing="0">
<tr bgcolor="#ff00cc"><Th>用户ID</th><th>用户名</th><th>密码</th><Th>&nbsp;</th><th>&nbsp;</th></tr>
<s:iterator value="#request.onePage" id="user" status="stuts">
<s:if test="#stuts.odd==true">
<tr bgcolor="#a0a0a0">
</s:if>
<s:else>
<tr bgcolor="red">
</s:else>
<td align="center"><a href="showUser?id=<s:property value='#user.id'/>"><s:property value='#user.id'/></a></td>
<td><s:property value="#user.username"/></td>
<td><s:property value="#user.password"/></td>
<td><a href="deleteUser?id=<s:property value='#user.id'/>">删除</a></td>
<td><a href="getUser?id=<s:property value='#user.id'/>">更新</a></td>
</tr>
</s:iterator>
</table>
<font size="2px">
<s:property value="#request.page.pageStr" escape="false"/><br>
</font>



</center>