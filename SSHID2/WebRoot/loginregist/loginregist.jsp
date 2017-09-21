<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.4.js"></script>
<!-- 回车换行 -->
<script language="javascript" for="document" event="onkeydown">

if(event.keyCode==13 && event.srcElement.type!='button' && event.srcElement.type!='submit' && event.srcElement.type!='reset' && event.srcElement.type!='textarea' && event.srcElement.type!='')

event.keyCode=9; //Tab的键值为9 Enter的键值为13

</script>
<script language="JavaScript">
	function CheckCode(s) //有特殊字符为true  
	{
		var containSpecial = RegExp(/[(\ )(\~)(\!)(\#)(\$)(\%)(\^)(\&)(\*)(\()(\))(\-)(\_)(\+)(\=)(\[)(\])(\{)(\})(\|)(\\)(\;)(\:)(\')(\")(\,)(\.)(\/)(\<)(\>)(\?)(\)]+/);
		return (containSpecial.test(s));
	}
	function Check1()
	{
		var reg = /^[0-9a-zA-Z]+$/;
		var UserName= document.getElementById("username").value;
		var password = document.getElementById("password").value;
		var UserPsd1 = document.getElementById("UserPsd1").value;
		
		if (UserName.length > 20 || UserName.length < 6 || !reg.test(UserName)) 
		{
			alert("用户名只能由6-20个数字和英文字母组成");
			return false;
		} 
		else if (password.length > 20 || password.length < 6) 
		{
			alert("密码小于6位或大于20位");
			return false;
		}
		else if(password!=UserPsd1||UserPsd1=="")
		{
			alert("两次输入的密码不一致");
			document.getElementById("password").value = "";
			document.getElementById("UserPsd1").value = "";
			document.getElementById("UserPsd").focus();
			return false;
		}
		else if (CheckCode(password) && CheckCode(UserName)) 
		{
			alert("有特殊字符请重新填写！");
			document.getElementById("UserName").value = "";
			document.getElementById("password").value = "";
			document.getElementById("UserPsd1").value = "";
			document.getElementById("UserPsd1").focus();
			return false;
		}
		
		
		else
		{
			document.getElementById("regist").submit(); 
		}
	}
</script> 
<style type="text/css">  
		.grey{
			background-color: SkyBlue ;
		}
		div{
			text-align: center;
		}  
		table{
			border-collapse:collapse;
			margin: 0 auto;
			width:900px;
		}
		table,th, td{
 			border: 0px solid black; 
  		}
  		td{
  			height: 33px;
  		}
  		span{
  			color:red;
  			font-size: 12px;
  		}
	</style> 
</head>
<body>
<form action="regist.action" id="regist" name="regist" method="post" target="_self">
	<table>
<!--用户名和密码 -->		
		<tr class="grey" >
			<td style="width: 140px;">
				<span style="color:black;font-size: 17px;">用户名和密码</span>
			</td>
			<td>
				<span style="color: red; font-size: 17px;">${msg}</span>  
			</td>
		</tr>
	</table>
	<table>
		<tr>
			<td style="text-align: left; width: 70px;">
				用&nbsp;&nbsp;户&nbsp;&nbsp;名：
			</td>
			<td style="width: 250px">
				<input type="text" id="username" name="username" style="width: 200px"/>
				<span style="position: relative;bottom: -4px ">*</span>
			</td>
			<td>
				<span>用户名不包括~，*/等特殊符号&nbsp;&nbsp;&nbsp;&nbsp;(用于登录)</span>
			</td>
		</tr>
		<tr>
			<td style="text-align: left;">
				密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码：
			</td>
			<td style="width: 250px">
				<input type="password" id="password" name="password" style="width: 200px"/>
				<span style="position: relative;bottom: -4px ">*</span>
			</td>
			<td>
				<span>请输入6-20位的字母和数字</span>
			</td>
		</tr>
		<tr>
			<td style="text-align: left;">
				确认密码：
			</td>
			<td style="width: 250px">
				<input type="password" id="UserPsd1" name="UserPsd1" style="width: 200px"/>
				<span style="position: relative;bottom: -4px ">*</span>
			</td>
			<td>
				<span>两次输入的密码必须一致</span>
			</td>
		</tr>


		<tr>
			<td></td>
			<td style="text-align: center; height: 70px;">
				<input type="submit" name="submit" value="注册" style="font-size: 18px; position:relative;left:-50px;  background-color: DeepSkyBlue; color: white;" onclick="return Check1()"/>
			</td>
			<td></td>
		</tr>
	</table>
</form>
</body>
</html>