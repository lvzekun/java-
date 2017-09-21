<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>    <%@taglib prefix="s" uri="/struts-tags" %> 
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
		var d = new Date();
        var nowYear = +d.getFullYear();
		
		var OrgAddress=document.getElementById("OrgAddress").value.trim();
		var OrgEmail=document.getElementById("OrgEmail").value.trim();
		var OrgPutunder=document.getElementById("OrgPutunder").value.trim();
		var OrgLaw=document.getElementById("OrgLaw").value.trim();
		var OrgContacts=document.getElementById("OrgContacts").value.trim();
		var OrgPhone=document.getElementById("OrgPhone").value.trim();
		var OrgIntroduction=document.getElementById("OrgIntroduction").value.trim();
		var OrgTechNeed=document.getElementById("OrgTechNeed").value.trim();
		var OrgNeedTime=document.getElementById("OrgNeedTime").value.trim();
		var OrgNeedTime1=document.getElementById("OrgNeedTime1").value.trim();
		var OrgScienceNeed=document.getElementById("OrgScienceNeed").value.trim();
		var OrgScienceNeed1=document.getElementById("OrgScienceNeed1").value.trim();
		var OrgScienceNeed2=document.getElementById("OrgScienceNeed2").value.trim();
		var OrgKey1=document.getElementById("OrgKey1").value.trim();
		
		if(OrgAddress=="")
		{
			alert("通讯地址不能为空");
			return false;
		}
		else if(OrgEmail=="")
		{
			alert("电子信箱不能为空");
			return false;
		}
		else if(OrgLaw=="")
		{
			alert("法人代表不能为空");
			return false;
		}
		else if(OrgContacts=="")
		{
			alert("联系人不能为空");
			return false;
		}
		else if(OrgPhone=="")
		{
			alert("手机不能为空");
			return false;
		}
		else if(OrgIntroduction=="")
		{
			alert("机构简介不能为空");
			return false;
		}
		else if(OrgTechNeed=="")
		{
			alert("技术需求名称不能为空");
			return false;
		}
		else if(OrgNeedTime<nowYear)
		{
			alert("起始需求时限不能低于当前年份");
			return false;
		}
		else if(OrgNeedTime>OrgNeedTime1)
		{
			alert("结束需求时限不能低于起始需求时限");
			return false;
		}
		else if(OrgScienceNeed==""||OrgScienceNeed1==""||OrgScienceNeed2=="")
		{
			alert("需求技术概述不能为空");
			return false;
		}
		else if(OrgKey1=="")
		{
			alert("关键字不能为空");
			return false;
		}
		else
		{
			var sure = confirm("需求信息审核后不能修改！ 确定提交吗?");
			if(sure == true){
				return true;
			}else{
				return false;
			}
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

	<form action="table2.action" id="table2" name="table2" method="post" target="_self">
	<br/>
	<table style="border: none;">
		<tr>
			<td style="border: none; text-align: center; font-size: 30px;">
				河北省重大技术需求征集表
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
			<td style="width: 80px; text-align: center; border: none;">需求编号</td>
			<td style="border: none;">
				<span style="color: blue;"></span>
			</td>
		</tr>
	</table>
	<table>
		<tr>
			<td style="height: 40px;">
				<div>
				<!--***************************************************************************************技术需求名称 -->
					<span>*&nbsp;</span>技术需求名称
				</div>
			</td>
			<td>
				<input type="text" name="TName" id="TName" style="width: 99.5%" />
			</td>
			<td style="width: 100px;">
				<div>
				<!--*****************************************************************************************需求时限 -->
					<span>*&nbsp;</span>需求时限
				</div>
			</td>
			<td>
				<input type="text" name="TTime1" id="TTime1" style="width: 100px;" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>年至
				<input type="text" name="TTime2" id="TTime2" style="width: 100px;" onkeyup="this.value=this.value.replace(/\D/g,'')" onafterpaste="this.value=this.value.replace(/\D/g,'')"/>年
			</td>
		</tr>
		<tr> 
			<!--*****************************************************************************************技术需求概述 -->
			<td colspan="4">
				<span>*&nbsp;</span>技术需求概述
				<div style="text-align: left;">1、主要问题（需要解决的重大技术问题，限500字以内）<span id="TIntroduction11" >0</span><span style="color: black">/500</span></div>
				<textarea onkeyup="ScienceNeed()"  cols="107" rows="5" id="TIntroduction1" name="TIntroduction1"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="4">
				2、技术关键（所需的关键技术、主要指标，限500字以内）<span id="OrgScienceNeed11" >0</span><span style="color: black">/500</span>
				<textarea onkeyup="ScienceNeed1()" cols="107" rows="5" id="TIntroduction2" name="TIntroduction2"></textarea>
			</td>
		</tr>
		<tr>
			<td colspan="4">
				3、预期目标（技术创新性、经济社会效益，限500字以内）<span id="OrgScienceNeed22" >0</span><span style="color: black">/500</span>
				<textarea onkeyup="ScienceNeed2()" cols="107" rows="5" id="TIntroduction3" name="TIntroduction3"></textarea>
			</td>
		</tr>
	</table>
	<table>
		<tr> 
			<td style="width: 18%; height: 50px;">
				<div><span>*&nbsp;</span>关键字(1-5个):</div>
			</td>
			<td style="border-top: none;">
			<!--************************************************************************************************关键字 -->
				<input type="text" name="TKey0" id="TKey0" style="width: 100px; border: 1px solid black;" onblur="key1()"/>
				<input type="text" name="TKey1" id="TKey1" style="background-color:LightGrey; width: 100px; border: 1px solid black;" readonly="readonly" onblur="key2()"/>
				<input type="text" name="TKey2" id="TKey2" style="background-color:LightGrey; width: 100px; border: 1px solid black;" readonly="readonly" onblur="key3()"/>
				<input type="text" name="TKey3" id="TKey3" style="background-color:LightGrey; width: 100px; border: 1px solid black;" readonly="readonly" onblur="key4()"/>
				<input type="text" name="TKey4" id="TKey4" style="background-color:LightGrey; width: 100px; border: 1px solid black;" readonly="readonly" />
			</td>
		</tr>
		<tr>
			<td style="height: 40px;">
				<div>
				<!--**********************************************************************************拟投入资金总额 -->
					拟投入资金总额
				</div>
			</td>
			<td>
				<input type="text" name="TAllmoney" id="TAllmoney" style="width: 605px; text-align: center" onkeyup="value=value.replace(/[^\d.]/g,'')"/>
				 万元
			</td>
		</tr>
		<tr>
			<td rowspan="2" style="height: 80px;">
				<div>
				<!--***********************************************************************************技术需求解决方式 -->
					<span>*&nbsp;</span>技术需求解决方式
				</div>
			</td>
			<td>
				<input type="radio" name="TTypeYf" id="dl" value="独立开发" onclick="dlhz()" style="height: 15px;" checked="checked"/>独立开发
				<input type="radio" name="TTypeYf" value="委托研发" style="height: 15px;"/>委托研发
				<input type="radio" name="TTypeYf" id="hz" value="合作开发" onclick="dlhz()" style="height: 15px;"/>合作开发
				<input type="radio" name="TTypeYf" value="其他" style="height: 15px;"/>其他
				
			</td>
		</tr>
		<tr>
			<td>
			<!--*******************************************************************************************合作意向单位 -->
				合作意向单位<input type="text" name="TDanwei" id="TDanwei" style="width: 510px; text-align: center;" />
				（选填）
			</td>
		</tr>
		<tr>
			<td style="height: 50px;"> 
				<div>
				<!--***********************************************************************************科技活动类型 -->
					<span>*&nbsp;</span>科技活动类型
				</div>
			</td>
			<td>
				<input type="radio" name="TType2" id="q" value="基础研究" onclick="baseSur()" style="height: 15px;" checked="checked"/>基础研究
				<input type="radio" name="TType2" id="w" value="应用研究" onclick="baseSur()" style="height: 15px;"/>应用研究
				<input type="radio" name="TType2" id="e" value="试验发展" onclick="baseSur()" style="height: 15px;"/>试验发展
				<input type="radio" name="TType2" id="r" value="研究发展与成果应用" onclick="baseSur()" style="height: 15px;"/>研究发展与成果应用
				<input type="radio" name="TType2" id="t" value="技术推广与科技服务" onclick="baseSur()" style="height: 15px;"/>技术推广与科技服务
				<input type="radio" name="TType2" id="y" value="生产性活动" onclick="baseSur()" style="height: 15px;"/>生产性活动
			</td>
		</tr>
		<tr id="q1">
			<td style="height: 50px;">
				<div>
				<!--****************************************************************************学科分类（限基础研究填写） -->
					<span>*&nbsp;</span><span style="font-size: 15px; color: black;">学科分类</span>
				</div>
				<div>
					<span style="font-size: 13px; color: black;">（限基础研究填写）</span>
				</div>
			</td>
			<td>
				<div>
					<s:select list="#request.subject1" id="subject1" listKey="Code" listValue="Title" 
    				headerKey="default" headerValue="请选择" name="TList">
			       </s:select>
			        <s:select list="#request.subject2" id="subject2" listKey="Code" listValue="Title" 
    				headerKey="default" headerValue="请选择" name="s_subject2">
			        </s:select>
			        <s:select list="#request.subject3" id="subject3" listKey="Code" listValue="Title" 
    				headerKey="default" headerValue="请选择" name="s_subject3">
			         </s:select>
				</div>
			</td>
		</tr>
		<tr id="w1" ><!-- TQtjsms style="display: none" -->
			<td style="height: 80px; width: 150px;">
			<!--**********************************************************************需求技术所属领域（非基础研究填写） -->
				<div>
					<span>*&nbsp;</span><span style="font-size: 15px; color: black;">需求技术所属领域</span>
				</div>
				<div>
					<span style="font-size: 13px; color: black;">（非基础研究填写）</span>
				</div>
			</td>
			<td style="width:500px;">
				<input type="checkbox" name="TXqjsssly" value="电子信息技术" style="height: 15px;"/>电子信息技术
				<input type="checkbox" name="TXqjsssly" value="光机电一体化" style="height: 15px;"/>光机电一体化
				<input type="checkbox" name="TXqjsssly" value="软件" style="height: 15px;"/>软件
				<input type="checkbox" name="TXqjsssly" value="生物制药技术" style="height: 15px;"/>生物制药技术
				<input type="checkbox" name="TXqjsssly" value="新材料及应用技术" style="height: 15px;"/>新材料及应用技术
				<input type="checkbox" name="TXqjsssly" value="先进制造技术" style="height: 15px;"/>先进制造技术
				<input type="checkbox" name="TXqjsssly" value="新能源与高校节能技术" style="height: 15px;"/>新能源与高校节能技术
				<input type="checkbox" name="TXqjsssly" value="资源与环境保护新技术" style="height: 15px;"/>资源与环境保护新技术
				<input type="checkbox" name="TXqjsssly" id="otherTe" value="其他技术（注明）" onclick="otherTech()" style="height: 15px;"/>其他技术（注明）&nbsp;&nbsp;&nbsp;&nbsp;（可多选）
				<div id="otherTe1" style="display: none; text-align: left;">
					<input type="text" name="OrgOtherTech" id="OrgOtherTech" style="width: 700px; border: 1px solid green; height: 15px;"/>
				</div>
			</td>
		</tr>
		<tr id="w2" >
			<td style="height: 50px;">
			<!--**************************************************************************需求技术应用行业（非基础研究填写） -->
				<div>
					<span>*&nbsp;</span><span style="font-size: 15px; color: black;">需求技术应用行业</span>
				</div>
				<div>
					<span style="font-size: 13px; color: black;">（非基础研究填写）</span>
				</div>
			</td>
			<td>
				<div>
					<select name="TQtjsms" id="OrgTechWork1" onchange="changefirst_xq()"><option value=""></option></select>
					<select name="TQtjsms2" id="OrgTechWork2" onchange="changesecond_xq()"></select>
					<select name="TQtjsms3" id="OrgTechWork3"></select>
				</div>
			</td>
		</tr>
	</table>
	<br/><br/>
	<div>
		<input type="submit" name="submit" value="保存并提交" style="font-size: 20px; height:35px;  background-color: DeepSkyBlue  ; color: white;" onclick="return Check1()"/>
	</div>
	</form>
	<br/>
	<br/>
	<br/>
</body>
</html>