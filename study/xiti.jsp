<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	//获得html元素
	var htmlElement = document.documentElement;
	//获得head元素
	var headElement = htmlElement.firstChild;
	//声明body元素
	var bodyElement;
	//根据head的下一个兄弟节点类型，对body元素赋值
	if(headElement.nextSibling.nodeType==3){
		bodyElement = headElement.nextSibling.nextSibling;
	}
	else{
		bodyElement = headElement.nextSibling;
	}
	//创建table结构的响应内容
	var newEle = document.createElement("table");
	newEle.setAttribute("border", 1);
	var tr = document.createElement("tr");
	var td = document.createElement("td");
	var cell1 = document.createTextNode("car");
	var cell2 = document.createTextNode("Top Speed");
	var cell3 = document.createTextNode("Price");
	var cell4 = document.createTextNode("Chevrolet");
	var cell5 = document.createTextNode("120mph");
	var cell6 = document.createTextNode("$10,000");
	var cell7 = document.createTextNode("Pontiac");
	var cell8 = document.createTextNode("140mph");
	var cell9 = document.createTextNode("$20,000");
	
	newEle =bodyElement.appendChild(newEle);
	var trElement = newEle.appendChild(tr);
	td.appendChild(cell1);
	var tdElement =trElement.appendChild(td);
	td2 = document.createElement("td");
	td2.appendChild(cell2);
	trElement.appendChild(td2);
	td3 = document.createElement("td");
	td3.appendChild(cell3);
	trElement.appendChild(td3);
	
	tr2 = document.createElement("tr");
	td3.parentNode.parentNode.appendChild(tr2);	
	td4 = document.createElement("td");
	td4.appendChild(cell4);
	var tdElement =tr2.appendChild(td4);
	td5 = document.createElement("td");
	td5.appendChild(cell5);
	tr2.appendChild(td5);
	td6 = document.createElement("td");
	td6.appendChild(cell6);
	tr2.appendChild(td6);
	
	tr3 = document.createElement("tr");
	td6.parentNode.parentNode.appendChild(tr3);	
	td7 = document.createElement("td");
	td7.appendChild(cell7);
	var tdElement =tr3.appendChild(td7);
	td8 = document.createElement("td");
	td8.appendChild(cell8);
	tr3.appendChild(td8);
	td9 = document.createElement("td");
	td9.appendChild(cell9);
	tr3.appendChild(td9);
	
	
	
	
	
	
	
</script>

</body>
</html>