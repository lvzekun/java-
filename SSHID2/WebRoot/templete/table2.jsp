<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
	<%@taglib prefix="s" uri="/struts-tags" %>  	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>征集表</title>
<style type="text/css">
/*设置超链接样式*/
table {
	border-collapse: collapse;
}
</style>
<script language="javascript" src="js/xkfl.js">
</script>
<script language="javascript" src="js/xqjsyyhy.js"></script>
<script language="javascript" src="js/jquery-1.4.js"></script>
<script type="text/javascript">
//当文档加载完成时 初始化两个三级菜单
$(document).ready(function(){
	//初始化 三级菜单
	getFirst('xkfl1');
	changefirst();
	changesecond();
	getFirst_xq('xqjsyyhy1');
	changefirst_xq();
	changesecond_xq();
	
	
});
</script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<% request.setCharacterEncoding("UTF-8");%>
</head>
<script type="text/javascript">
function hide()
	{	
		if( document.getElementById("xq").style.display=='none'  )
		{
   			document.getElementById("xq").style.display = '';
 		}
		
		
		if(document.getElementById("type4").style.display=='')
 		{
			document.getElementById("type4").style.display = 'none';
 		}	
 		
		
 		if(document.getElementById("hangye").style.display=='')
 		{
 			document.getElementById("hangye").style.display='none';
 		}	
	}
	function hideNo()
	{
		if(document.getElementById("hangye").style.display=='none')
 		{
 			document.getElementById("hangye").style.display='';
 		}
		
		if(document.getElementById("type4").style.display=='none')
 		{
			document.getElementById("type4").style.display = '';
 		}
		
 		
 		if( document.getElementById("xq").style.display=='' )
		{
   			document.getElementById("xq").style.display = 'none';
   			
 		}
	}
</script>

<script type="text/javascript">
function JTrim1(s) {
    return s.replace(/(^\s*)|(\s*$)/g, "");
 }

 function JTrim2(s) {
     return s.replace(/\s+/g, "");
 }
//判断关键字顺序******************************************************************
	function mainword()
	{
		var m1 = JTrim2(document.getElementById("mainword1").value);
		var m2 = JTrim2(document.getElementById("mainword2").value);
		var m3 = JTrim2(document.getElementById("mainword3").value);
		var m4 = JTrim2(document.getElementById("mainword4").value);
		var m5 = JTrim2(document.getElementById("mainword5").value);
		document.getElementById("mainword1").readOnly=false;
		if(m1=="")
		{
			document.getElementById("mainword2").readOnly=true;
			document.getElementById("mainword3").readOnly=true;
			document.getElementById("mainword4").readOnly=true;
			document.getElementById("mainword5").readOnly=true;
			
		}
		else 
		{  			
			document.getElementById("mainword2").readOnly=false;
			if(m2=="")
			{
				document.getElementById("mainword3").readOnly=true;
				document.getElementById("mainword4").readOnly=true;
				document.getElementById("mainword5").readOnly=true;
			}
			else 
			{
				document.getElementById("mainword3").readOnly=false;
				if(m3=="")
				{
					document.getElementById("mainword4").readOnly=true;
					document.getElementById("mainword5").readOnly=true;
				}
				else
				{
					document.getElementById("mainword4").readOnly=false;
					if(m4=="")
					{
						document.getElementById("mainword5").readOnly=true;
					}
					else
					{
						document.getElementById("mainword5").readOnly=false;
					}
				}
			}
		}
	}
</script>

<body>

	<form action="insertadd.jsp" method="post">


		<!--  <body background="images/yan.jpg"> -->
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<h3 class="text-center">
						<center>河北省重大技术需求征集表</center>
					</h3>
					<center>
						<table border="1"
							style="border-left-color: #000000; border-bottom-color: #000000; width: 701px; border-top-style: solid; border-top-color: #000000; border-right-style: solid; border-left-style: solid; height: 380px; border-right-color: #000000; border-bottom-style: #000000">
							<tbody>

								
						
								
								用户欢迎您
								<br>
								<tr>
									<td colspan="3" rowspan="1">技术需求名称</td>
									<td colspan="3" rowspan="1"><input name="xqName"
										type="text" size=30></td>
									<td colspan="3" rowspan="1">需求时限</td>
									<td colspan="3" rowspan="1"><select name="xqTime0">
											<option value=1990>1990</option>
											<option value=1991>1991</option>
											<option value=1992>1992</option>
											<option value=1992>1992</option>
											<option value=1994>1994</option>
											<option value=1995>1995</option>
											<option value=1996>1996</option>
											<option value=1997>1997</option>
											<option value=1998>1998</option>
											<option value=1999>1999</option>
											<option value=2000>2000</option>
											<option value=2001>2001</option>
											<option value=2002>2002</option>
											<option value=2003>2003</option>
											<option value=2004>2004</option>
											<option value=2005>2005</option>
											<option value=2006>2006</option>
											<option value=2007>2007</option>
											<option value=2008>2008</option>
											<option value=2009>2009</option>
											<option value=2010>2010</option>
											<option value=2011>2011</option>
											<option value=2012>2012</option>
											<option value=2013>2013</option>
											<option value=2014>2014</option>
											<option value=2015>2015</option>
											<option value=2016>2016</option>
											<option value=2017>2017</option>
											<option value=2018>2018</option>
											<option value=2019>2019</option>
											<option value=2020>2020</option>
											<option value=2021>2021</option>
											<option value=2022>2022</option>
											<option value=2023>2023</option>
											<option value=2024>2024</option>
											<option value=2025>2025</option>
									</select>年 <select name="xqTime1">
											<option value=1990>1990</option>
											<option value=1991>1991</option>
											<option value=1992>1992</option>
											<option value=1992>1992</option>
											<option value=1994>1994</option>
											<option value=1995>1995</option>
											<option value=1996>1996</option>
											<option value=1997>1997</option>
											<option value=1998>1998</option>
											<option value=1999>1999</option>
											<option value=2000>2000</option>
											<option value=2001>2001</option>
											<option value=2002>2002</option>
											<option value=2003>2003</option>
											<option value=2004>2004</option>
											<option value=2005>2005</option>
											<option value=2006>2006</option>
											<option value=2007>2007</option>
											<option value=2008>2008</option>
											<option value=2009>2009</option>
											<option value=2010>2010</option>
											<option value=2011>2011</option>
											<option value=2012>2012</option>
											<option value=2013>2013</option>
											<option value=2014>2014</option>
											<option value=2015>2015</option>
											<option value=2016>2016</option>
											<option value=2017>2017</option>
											<option value=2018>2018</option>
											<option value=2019>2019</option>
											<option value=2020>2020</option>
											<option value=2021>2021</option>
											<option value=2022>2022</option>
											<option value=2023>2023</option>
											<option value=2024>2024</option>
											<option value=2025>2025</option>

									</select>年</td>
								</tr>
								<tr>
									<td colspan="3" rowspan="1" nowrap="nowrap">技术需求概述</td>
									<td colspan="7" rowspan="1"><textarea cols="71" rows="10"
											input name="gaishu">
						</textarea></td>
								</tr>

								<tr>
									<td colspan="3" rowspan="1">关键字(1-5个)</td>
									<td colspan="1" rowspan="1"><input name="mainword1"
										id="mainword1" type="text" size=10 onkeydown="mainword();"></td>
									<td colspan="1" rowspan="1"><input name="mainword2"
										id="mainword2" type="text" size=10 onkeydown="mainword();"></td>
									<td colspan="1" rowspan="1"><input name="mainword3"
										id="mainword3" type="text" size=10 onkeydown="mainword();"></td>
									<td colspan="1" rowspan="1"><input name="mainword4"
										id="mainword4" type="text" size=10 onkeydown="mainword();"></td>
									<td colspan="1" rowspan="1"><input name="mainword5"
										id="mainword5" type="text" size=10 onkeydown="mainword();"></td>
									</td>
								</tr>
								<tr>
									<td colspan="3" rowspan="1">拟投入资金总额</td>
									<td colspan="7" rowspan="1"><input name="yuan" type="text"
										size=80>万元</td>
									</td>
								</tr>
								<tr>
									<td colspan="3" rowspan="2" nowrap="nowrap">技术需求解决方式</td>
									<td colspan="7">
										<p id="type5">
											<input type="checkbox" name="type5" value="独立开发" id="5"
												onclick="checkBox(this);"><label for="5">独立开发</label>
											<input type="checkbox" name="type5" value="技术转让" id="6"
												onclick="checkBox(this);"><label for="6">技术转让</label>
											<input type="checkbox" name="type5" value="技术入股" id="7"
												onclick="checkBox(this);"><label for="7">技术入股</label>
											<input type="checkbox" name="type5" value="合作开发" id="8"
												onclick="checkBox(this);"><label for="8">合作开发</label>
											<input type="checkbox" name="type5" value="其他" id="9"
												onclick="checkBox(this);"><label for="9">其他</label>
										</p>
									</td>
								</tr>
								<td colspan="1" rowspan="1">合作意向单位</td>
								<td colspan="7" rowspan="1"><input name="danwei"
									type="text" size=80></td>

								<tr>
									<td colspan="3" rowspan="1">科技活动类型</td>
									<td colspan="7" rowspan="1">
										<p id="type3">
											<input type="radio" name="type3" value="基础研究" id="基础研究"
												onclick="hide();"><label for="基础研究">基础研究</label> 
											<input
												type="radio" name="type3" value="应用研究" id="应用研究"
												onclick="hideNo();"><label for="应用研究">应用研究</label> 
											<input
												type="radio" name="type3" value="试验发展" id="试验发展"
												onclick="hideNo();"><label for="试验发展">试验发展</label> 
											<input
												type="radio" name="type3" value="研究发展与成果应用" id="研究发展与成果应用"
												onclick="hideNo();"><label for="研究发展与成果应用">研究发展与成果应用</label>
											<input type="radio" name="type3" value="技术推广与科技服务"
												id="技术推广与科技服务" onclick="hideNo();"><label
												for="技术推广与科技服务">技术推广与科技服务</label>
										</p>
									</td>
								</tr>
								<tr>
									<td colspan="3" rowspan="1">学科分类（限基础研究填写）</td>
									
									<td colspan="7" rowspan="1">
									<p id="xq">
									<label></label>
									<select name="xkfl1"
										id="xkfl1"  onchange="changefirst()"
										class="selectwidth">
									</select> <select name="xkfl2" id="xkfl2" 
										onchange="changesecond()" class="selectwidth">
									</select> <select name="xkfl3" id="xkfl3" 
										class="selectwidth">
									</select>
									</p></td>

								</tr>
								<tr>
									<td colspan="3" rowspan="1">需求技术所属领域（非基础研究填写）</td>
									<td colspan="7">
										<p id="type4">
											<input type="checkbox" name="type4" value="电子信息技术" id="15"
												onclick="checkBox(this);"><label for="15">电子信息技术</label>
											<input type="checkbox" name="type4" value="光机电一体化" id="16"
												onclick="checkBox(this);"><label for="16">光机电一体化</label>
											<input type="checkbox" name="type4" value="软件" id="17"
												onclick="checkBox(this);"><label for="17">软件</label>
											<input type="checkbox" name="type4" value="生物制药技术" id="18"
												onclick="checkBox(this);"><label for="18">生物制药技术</label>
											<input type="checkbox" name="type4" value="新材料及应用技术" id="19"
												onclick="checkBox(this);"><label for="19">新材料及应用技术</label>
											<input type="checkbox" name="type4" value="先进制造技术" id="20"
												onclick="checkBox(this);"><label for="20">先进制造技术</label>
											<input type="checkbox" name="type4" value="现代农业技术" id="21"
												onclick="checkBox(this);"><label for="21">现代农业技术</label>
											<input type="checkbox" name="type4" value="新能源与高效节能技术"
												id="22" id="17" onclick="checkBox(this);"><label
												for="22">新能源与高效节能技术</label> <input type="checkbox"
												name="type4" value="资源与环境保护新技术" id="23" id="23"
												onclick="checkBox(this);"><label for="23">资源与环境保护新技术</label>
											<input type="checkbox" name="type4" value="其他技术" id="24"
												onclick="checkBox(this);"><label for="24">其他技术</label>
										</p>
									</td>

								</tr>
								<tr>
									<td colspan="3" rowspan="1">需求技术应用行业</td>
									<td colspan="7">
									<p id="hangye">
									<select name="xqjsyyhy1" id="xqjsyyhy1"
										onchange="changefirst_xq()" class="selectwidth">
									</select> <select name="xqjsyyhy2" id="xqjsyyhy2"
										onchange="changesecond_xq()" class="selectwidth">
									</select> <select name="xqjsyyhy3" id="xqjsyyhy3" class="selectwidth">
									</select>
									</p></td>
								</tr>


							</tbody>

						</table>
					</center>
				</div>
			</div>
		</div>
		<td><input type="submit" value="确认" onclick="return check(form);">
	</form>
	<form action="land.jsp">
		<tr>
			<td><input type="submit" value="返回"></td>
		</tr>
		</table>
		</center>
	</form>
</body>
								