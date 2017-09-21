<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>   
<%@taglib prefix="s" uri="/struts-tags" %> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-1.4.js"></script>
<script type="text/javascript" src="js/table.js"></script>
<script type="text/javascript" src="sanji/sanji.js"></script>
<script type="text/javascript" src="sanji/sanji1.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	getFirst_xq('OrgTechWork1');
	getFirst_xk('OrgSubject1');
});
</script>
<script type="text/javascript">
	/* ***************************************************************************************判断输入为空 */
	function Check1()
	{
		//var d = new Date();
        //var nowYear = +d.getFullYear();
		
		var c_Name=document.getElementById("CName").value.trim();//机构全称
		var c_Management=document.getElementById("CManagement").value.trim();//归口部门管理
		var c_AdressT=document.getElementById("CAdressT").value.trim();//通讯地址
		var c_Area=document.getElementById("CArea").value.trim();//所在地
		var c_AdressW=document.getElementById("CAdressW").value.trim();//通讯地址
		var c_AdressE  =document.getElementById("CAdressE").value.trim();//电子邮箱
		var c_Preson=document.getElementById("CPreson").value.trim();//法人代表
		var c_Code=document.getElementById("CCode").value.trim();//邮政编码
		var c_Contact  =document.getElementById("CContact  ").value.trim();//联系人
		var c_Phone=document.getElementById("CPhone").value.trim();//固定电话
		var c_Telephone  =document.getElementById("CTelephone").value.trim();//手机电话
		var c_Mail=document.getElementById("CMail").value.trim();//传真
		var c_Introduction=document.getElementById("CIntroduction ").value.trim();//机构简介
		var c_Property=document.getElementById("CProperty   ").value.trim();//机构属性
		
		if(c_Name =="")
		{
			alert("机构全称不能为空");
			return false;
		}
		else if(c_AdressT=="")
		{
			alert("通讯地址不能为空");
			return false;
		}
		else if(c_Area=="")
		{
			alert("所在地不能为空");
			return false;
		}
		else if(c_AdressE=="")
		{
			alert("电子邮箱不能为空");
			return false;
		}
		else if(c_Preson=="")
		{
			alert("法人不能为空");
			return false;
		}
		else if(c_Contact=="")
		{
			alert("联系人不能为空");
			return false;
		}
		else if(c_Telephone=="")
		{
			alert("手机不能为空");
			return false;
		}
	   else if(c_Property =="")
		{
			alert("机构属性不能为空");
			return false;
		}
		else if(c_Introduction  =="")
		{
			alert("机构简介不能为空");
			return false;
		}
		
	}
	
</script>
<!-- **************************************************************************************************************CSS -->
<style type="text/css">
	table{
		border-collapse:collapse;
		margin: 0 auto;
		width:900px;
	}
	table,th, td{
 		 border: 1px solid black;
  	}
  	td{
  		height: 40px;
  	}
    input{
    	/* background: none transparent scroll repeat 0% 0%; */
   		height: 40px;
  		border: none; 
  	}  
  	div{
  		text-align: center
  	}
  	span{
  		color: red;
  		position: relative;
  		bottom: -2px;
  	}
</style>
</head>
<body>

	<br/>
	<form action="table.action"id="table" name="table" method="post" target="_self">
	<table style="border: none;">
		<tr>
			<td style="border: none; text-align: center; font-size: 30px;">
				河北省重大需求机构信息表
			</td>
		</tr>
	</table>
	<!-- <table style="border: none;">
		<tr>
			<td style="border: none; font-size: 16px; text-align: right;">
				带<span>&nbsp;*&nbsp;</span>为必填内容!
			</td>
		</tr>
	</table> -->
	<table style="border: none;">
		<tr>
			<td style="width: 100px; height: 50px; text-align: left; border: none;">&nbsp;&nbsp;&nbsp;&nbsp;机构代码</td>
			<td style="width: 500px; border: none;">
				<span style="color: blue;"></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<span style="color: red; font-size: 17px;">${msg}</span>
			</td>
			<td style="width: 80px; text-align: center; border: none;">编号</td>
			<td style="border: none;">
				<span style="color: blue;">
				 <input type="text" name="id" value="${session.id}"/>
				<!-- <s:property value="#session.id"/> --></span>
			</td>
		</tr>
	</table>
	
	<table>
		<tr>
			<td style="width: 120px;">
				<div>
				<!--*****************************************************************************************机构全称 -->
					<span>*&nbsp;</span>机构全称
				</div>
			</td>
			<td style="width: 40%;">
		    	<input type="text" name="CName" id="CName" style="width: 99.5%" />
				
			</td>
			<td style="width: 120px;">
				<div>
				<!--**************************************************************************************归口管理部门-->
					归口管理部门
				</div>
			</td>
			<td>
				
			 <input type="text" name=" CManagement" id= "CManagement" style="width: 250px" /> 
			</td>
		</tr>
		<tr>
			<td>
				<div>
				<!--******************************************************************************************通讯地址 -->
					<span>*&nbsp;</span>通讯地址
				</div>
			</td>
			<td>
				<input type="text" name="CAdressT" id="CAdressT" style="width: 99.5%" />
			</td>
			<td>
				<div>
				<!--*******************************************************************************************所在领域-->
					<span>*&nbsp;</span>所在地域
				</div>
			</td>
			<td>
				<div>
					
					<input type="text" name="CArea" id="CArea" style="width: 99.5%" />	
					
				</div>
			</td>
		</tr>
		<tr>
			<td>
				<div>
					网　址
				</div>
			</td>
			<td>
				<input type="text" name="CAdressW" id="CAdressW" style="width: 99.5%;" />
			</td>
			<td>
				<div>
				<!--******************************************************************************************电子邮箱 -->
					<span>*&nbsp;</span>电子信箱
				</div>
			</td>
			<td>
				<input type="text" name="CAdressE" id="CAdressE" style="width: 99.5%" />
			</td>
		</tr>
		<tr>
			<td>
				<div>
<!--*****************************************************************************************************法人代表 -->
					<span>*&nbsp;</span>法人代表
				</div>
			</td>
			<td>
				<input type="text" name="CPreson" id="CPreson" style=" width: 99.5% " />
			</td>
			<td>
				<div>
				<!--*******************************************************************************************邮政编码 -->
					邮政编码
				</div>
			</td>
			<td>
				<input type="text" name="CCode" id="CCode" style="width: 99.5%" />
			</td>
		</tr>
		<tr>
			<td>
				<div>
				<!--*******************************************************************************************联系人 -->
					<span>*&nbsp;</span>联系人
				</div>
			</td>
			<td>
				<input type="text" name="CContact" id="CContact" style="width: 99.5%;"  />
			</td>
			<td>
				<div>
				<!--*******************************************************************************************电话 -->
					固定电话
				</div>
			</td>
			<td>
				<input type="text" name="CPhone" id="CPhone" style="width: 99.5%" />
			</td>
		</tr>
		<tr>
			<td>	
				<div>
					<span>*&nbsp;</span>手　机
				</div>
			</td>
			<td>
				<input type="text" name="CTelephone" id="CTelephone" style="width: 99.5%" />
			<td>
				<div>
				<!--***********************************************************************************************传真 -->
					传　真
				</div>
			</td>
			<td>
				<input type="text" name="CMail" id="CMail" style="width: 99.5%" />
			</td>
		</tr>
		<tr>
			<td style="height: 40px;">
				<div>
<!-- *********************************************************************************************************机构属性 -->
					<span>*&nbsp;</span>机构属性
				</div>
			</td>
			<td colspan="3">
				<input type="radio" name="CProperty " value="企业" style="height: 15px;" checked="checked" />企业
				　　　　<input type="radio" name="CProperty" value="高等院校" style="height: 15px;" />高等院校
				　　　　<input type="radio" name="CProperty" value="研究机构" style="height: 15px;" />研究机构
				　　　　<input type="radio" name="CProperty" value="其他" style="height: 15px;" />其他
			</td>
		</tr>
		<tr>
			<td colspan="10" style="border-bottom: none;">
			<!--*********************************************************************************************机构简介 -->
				
				<div style="text-align: left;">
					<span>*&nbsp;</span>机构简介（主要包括基本情况、现有研究基础等，限500字以内）<span id="CIntroduction ">0</span><span  style="color: black">/500</span>
					<textarea onkeyup="c_Introduction ()" id="CIntroduction " name="CIntroduction " rows="10" cols="107" ></textarea>
				</div>
			</td>
		</tr>
		
	</table>
	<br/><br/>
	<div>
	<input type="submit" name="submit" value="保存提交" style="font-size: 18px; position:relative;left:-50px;  background-color: DeepSkyBlue; color: white;" onclick="return Check1()"/>
	</div>
	</form>
	<br/>
	<br/>
	<br/>
</body>
</html>