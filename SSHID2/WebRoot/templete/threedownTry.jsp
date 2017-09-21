<%@ page import="java.sql.*" language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>My JSP 'threedownTry.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<script type="text/javascript" src="../myjs/jquery-1.9.1.min.js"></script>
	
	<script type="text/javascript">
		$(function(){
			$("#subject1").change(function(){
				$("#subject2 option:not(:first)").remove();	
				var code = $(this).val(); 
				var url = "sub-list2";
				var args = {
					"code" : code,
					"time" : new Date()
				};
				if(code != "default"){
					
					$.getJSON(url,args,function(data){
						if(data.length != 0){
							for(var i=1;i<=data.length;i++){
								var codeVal = data[i].code;
								var titleText = data[i].title;
								
								$("#subject2").append("<option value='" + codeVal + "'>" + titleText + "</option>");
							}
							
						}
					});
				}
				return false;
			});
			
			$("#subject2").change(function(){
				$("#subject3 option:not(:first)").remove();	
				var code = $(this).val(); 
				alert(code);
				var url = "sub-list3";
				var args = {
					"code" : code,
					"time" : new Date()
				};
				if(code != "default"){
					
					$.getJSON(url,args,function(data){
						if(data.length != 0){
							for(var i=1;i<=data.length;i++){
								var codeVal = data[i].code;
								var titleText = data[i].title;
								
								$("#subject3").append("<option value='" + codeVal + "'>" + titleText + "</option>");
							}
							
						}
					});
				}
				return false;
			});
			
		});
	</script>
  </head>
  	
  <body>
  	<s:select list="#request.subject1" id="subject1"
    		listKey="Code" listValue="Title" headerKey="default" headerValue="请选择" name="s_subject">
    </s:select>
    <select id="subject2">
    	<option value="">请选择</option>
    </select> 
    <select id="subject3">
    	<option value="">请选择</option>
    </select>
  </body>
</html>
