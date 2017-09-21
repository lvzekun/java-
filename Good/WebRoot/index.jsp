<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <script type="text/javascript" src="${pageContext.request.contextPath}/js/My97DatePicker/WdatePicker.js"></script>
 <script type="text/javascript">
  function addRow(obj)
        {
        var newTr = testTbl.insertRow();
        
        var newTd0 = newTr.insertCell();
        
        var newTd1 = newTr.insertCell();
        var newTd2 = newTr.insertCell();
        
        newTd0.innerHTML = '<input type="text" name="test1">'; 
        newTd1.innerHTML= '<input type="button" onclick="DelRowNew(this);" value="-">';
        newTd2.innerHTML= '<input type="button" onclick="addRow(this);" value="+">';
        
        }        
        function test(){

         var test1= document.getElementsByName("test1");
         alert(test1.length);
         
        }
        function DelRowNew(r){
        var i=r.parentNode.parentNode.rowIndex;
        document.getElementById('testTbl').deleteRow(i);
        }
  function validate()
  {
		  var psw = document.getElementById("Allmoney").value;
		  var repsw = document.getElementById("repsw").value;
		  var name = document.getElementById("year").value;
		  if(name.length==0)
			  {
				  document.getElementById("error").innerHTML="年限不能为空";
				  return false;
			  }
		  if(psw.length==0)
			  {
				  document.getElementById("error").innerHTML="成本不能为空";
				  return false;
			  }
			  if(psw!=repsw)
			  {
				  document.getElementById("error").innerHTML="密码和重复密码不一致，请重新输入";
				  return false;
			  }
	  return true;
  }
  </script>
<link href="css/admin.css" rel="stylesheet" type="text/css"/>
<link href="css/theme.css" rel="stylesheet" type="text/css"/>
<title>绩效软件评价</title>
<%int i =0; %>
</head>
<body>
<br>
<br>
<br>
<div class="body-box" align="center">
    <form action="do.action" method="post">
       <table width="100%" class="pn-ftable" cellpadding="2" cellspacing="1" border="0">
			<tr>
          <td width="10%" class="pn-flabel pn-flabel-h">项目投入成本：</td>
          <td width="40%" class="pn-fcontent">
             <input type="text" name="Allmoney" id="Allmoney">
          </td>
          </tr>
          <tr>
          <td width="10%" class="pn-flabel pn-flabel-h">项目收益时间（年）：</td>
          <td width="40%" class="pn-fcontent">
            <select name="year" id="year">
             <%   while(i++<10)
            	 {%>
               <option value="<%=i %>"><%=i %></option>
               <%} %>
             </select>
          </td>
          </tr>
          </tr>
          </table>
          <table id="testTbl">
            <tr id="tr1">
                <td ><input type="text" name="test1"></td>
                <td id="b"><input id = "inputb" type="button" onclick="DelRowNew(this);" value="-"></td>
                <td id="b"><input id = "inputb" type="button" onclick="addRow(this);" value="+"></td>
                
            </tr>
            
        </table>  
       <table>
          <tr>
            <td width="40%" class="pn-fcontent" colspan="2">
             <div id="error" style="color:red"></div>
          </td>
          </tr>
				<tr>
					<td colspan="2" class="pn-fbutton" width="50%">
						<input type="submit" value="提交" class="submit"  onclick="return validate();"  /> &nbsp; 
						<input type="reset" value="重置" class="reset" class="reset"/>
					</td>
				</tr>
       
       </table>
    
    </form>
    </div>
</body>
</html>