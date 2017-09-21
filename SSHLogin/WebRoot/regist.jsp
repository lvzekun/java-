<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
 <script type="text/javascript">
  function validate()
  {
		  var psw = document.getElementById("psw").value;
		
		  var name = document.getElementById("name").value;
		  if(name.length==0)
			  {
				  document.getElementById("error").innerHTML="用户名不能为空";
				  return false;
			  }
		  if(psw.length==0)
			  {
				  document.getElementById("error").innerHTML="密码不能为空";
				  return false;
			  }
			if(id.length==0)
			  {
				  document.getElementById("error").innerHTML="编号不能为空";
				  return false;
			  } 
	  return true;
  }
  </script>

<title>用户注册</title>
<%int i =0; %>
</head>
<body>
<br>
<br>
<br>
<div class="body-box" align="center">
   <form name="regist" action="regist.action" method="post">
      <table border="0">
        
         <td>编号:</td>
          <td><input type="text" name="username" id="username"></td>
        </tr>
        <tr>
          <td>密码:</td>
          <td><input type="text" name="password" id="password"></td>
          </tr>
        <tr>
          <td colspan="2" align="center">
          <input type="submit" value=" 确定 " >
          </td>
          
        </tr>
      </table>
    </form>
    </div>
</body>
</html>