/* ********************************************************************************************实时显示字数 */
	function Introduction()
	{
		var maxl = 500;
		var count1=0;
		var textIIntro=document.getElementById("OrgIntroduction").value;
		var lenIIntro=textIIntro.length;
		for(var i=0;i<lenIIntro;i++)
		{
			var enter1=textIIntro.substr(i,1);
			if(enter1=="\n")
			{
				count1++;
			}
		}
		lenIIntro-=count1;
		var showIIntro=lenIIntro;
		if(showIIntro > maxl){
			document.getElementById("OrgIntroduction").value = document.getElementById("OrgIntroduction").value.substr(0,maxl-1);
		}
		document.getElementById("OrgIntroduction1").innerHTML = showIIntro;
	}
	function ScienceNeed()
	{
		var maxl = 500;
		var count1=0;
		var textIIntro=document.getElementById("OrgScienceNeed").value;
		var lenIIntro=textIIntro.length;
		for(var i=0;i<lenIIntro;i++)
		{
			var enter1=textIIntro.substr(i,1);
			if(enter1=="\n")
			{
				count1++;
			}
		}
		lenIIntro-=count1;
		var showIIntro=lenIIntro;
		if(showIIntro > maxl){
			document.getElementById("OrgScienceNeed").value = document.getElementById("OrgScienceNeed").value.substr(0,maxl-1);
		}
		document.getElementById("OrgScienceNeed00").innerHTML = showIIntro;
	}
	function ScienceNeed1()
	{
		var maxl = 500;
		var count1=0;
		var textIIntro=document.getElementById("OrgScienceNeed1").value;
		var lenIIntro=textIIntro.length;
		for(var i=0;i<lenIIntro;i++)
		{
			var enter1=textIIntro.substr(i,1);
			if(enter1=="\n")
			{
				count1++;
			}
		}
		lenIIntro-=count1;
		var showIIntro=lenIIntro;
		if(showIIntro > maxl){
			document.getElementById("OrgScienceNeed1").value = document.getElementById("OrgScienceNeed1").value.substr(0,maxl-1);
		}
		document.getElementById("OrgScienceNeed11").innerHTML = showIIntro;
	}
	function ScienceNeed2()
	{
		var maxl = 500;
		var count1=0;
		var textIIntro=document.getElementById("OrgScienceNeed2").value;
		var lenIIntro=textIIntro.length;
		for(var i=0;i<lenIIntro;i++)
		{
			var enter1=textIIntro.substr(i,1);
			if(enter1=="\n")
			{
				count1++;
			}
		}
		lenIIntro-=count1;
		var showIIntro=lenIIntro;
		if(showIIntro > maxl){
			document.getElementById("OrgScienceNeed2").value = document.getElementById("OrgScienceNeed2").value.substr(0,maxl-1);
		}
		document.getElementById("OrgScienceNeed22").innerHTML = showIIntro;
	}

/* ***************************************************************************************基础研究和非基础研究 */
	function baseSur()
	{
		if(document.getElementById("q").checked)
		{
			document.getElementById("q1").style.display = "table-row"; 
			document.getElementById("w1").style.display = "none"; 
			document.getElementById("w2").style.display = "none"; 
		}
		else if(document.getElementById("w").checked||document.getElementById("e").checked||document.getElementById("r").checked||document.getElementById("t").checked||document.getElementById("y").checked)
		{
			document.getElementById("w1").style.display = "table-row"; 
			document.getElementById("w2").style.display = "table-row"; 
			document.getElementById("q1").style.display = "none"; 
		}
	}
	function otherTech()
	{
		if(document.getElementById("otherTe").checked)
		{
			document.getElementById("otherTe1").style.display = "block"
		}
		else
		{
			document.getElementById("otherTe1").style.display = "none"
		}
	}
	/* *************************************************************************************五个关键字逐个输入 */
	function key1()
	{
		var OrgKey1 = document.getElementById("OrgKey1").value;
		
		if(OrgKey1 != "") {
			document.getElementById("OrgKey2").readOnly = false;
			document.getElementById("OrgKey2").style.backgroundColor = "White";
		} else {
			document.getElementById("OrgKey2").value = "";
			document.getElementById("OrgKey2").style.backgroundColor = "LightGrey";
			document.getElementById("OrgKey2").readOnly = true;
			document.getElementById("OrgKey3").value = "";
			document.getElementById("OrgKey3").style.backgroundColor = "LightGrey";
			document.getElementById("OrgKey3").readOnly = true;
			document.getElementById("OrgKey4").value = "";
			document.getElementById("OrgKey4").style.backgroundColor = "LightGrey";
			document.getElementById("OrgKey4").readOnly = true;
			document.getElementById("OrgKey5").value = "";
			document.getElementById("OrgKey5").style.backgroundColor = "LightGrey";
			document.getElementById("OrgKey5").readOnly = true;
		}
	}
	function key2()
	{
		var OrgKey2 = document.getElementById("OrgKey2").value;
		
		if(OrgKey2 != "") {
			document.getElementById("OrgKey3").readOnly = false;
			document.getElementById("OrgKey3").style.backgroundColor = "White";
		} else {
			document.getElementById("OrgKey3").value = "";
			document.getElementById("OrgKey3").style.backgroundColor = "LightGrey";
			document.getElementById("OrgKey3").readOnly = true;
			document.getElementById("OrgKey4").value = "";
			document.getElementById("OrgKey4").style.backgroundColor = "LightGrey";
			document.getElementById("OrgKey4").readOnly = true;
			document.getElementById("OrgKey5").value = "";
			document.getElementById("OrgKey5").style.backgroundColor = "LightGrey";
			document.getElementById("OrgKey5").readOnly = true;
		}
	}
	function key3()
	{
		var OrgKey3 = document.getElementById("OrgKey3").value;
		
		if(OrgKey3 != "") {
			document.getElementById("OrgKey4").readOnly = false;
			document.getElementById("OrgKey4").style.backgroundColor = "White";
		} else {
			document.getElementById("OrgKey4").value = "";
			document.getElementById("OrgKey4").style.backgroundColor = "LightGrey";
			document.getElementById("OrgKey4").readOnly = true;
			document.getElementById("OrgKey5").value = "";
			document.getElementById("OrgKey5").style.backgroundColor = "LightGrey";
			document.getElementById("OrgKey5").readOnly = true;
		}
	}
	function key4()
	{
		var OrgKey4 = document.getElementById("OrgKey4").value;
		
		if(OrgKey4 != "") {
			document.getElementById("OrgKey5").readOnly = false;
			document.getElementById("OrgKey5").style.backgroundColor = "White";
		} else {
			document.getElementById("OrgKey5").value = "";
			document.getElementById("OrgKey5").style.backgroundColor = "LightGrey";
			document.getElementById("OrgKey5").readOnly = true;
		}
	}