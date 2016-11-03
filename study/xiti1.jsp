<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script>
	function addTr(){
		var table = document.getElementById("table");
		//第一列
		var trElement = document.createElement("tr");
		var td1 = document.createElement("td");
		var trs = document.getElementsByTagName("tr");
		var tdContent = document.createTextNode(trs.length);
		td1.appendChild(tdContent);
		trElement.appendChild(td1);
		table.appendChild(trElement);
		//第二列
		var td2 = document.createElement("td");
		var td2Content = document.createElement("input");
		td2Content.setAttribute("name", "name");
		td2Content.setAttribute("value", "姓名");
		td2.appendChild(td2Content);
		trElement.appendChild(td2);
		//第三列
		var td3 = document.createElement("td");
		td3content = document.createElement("input");
		td3content.setAttribute("type", "radio");
		td3content.setAttribute("name", "gender");
		td3content.setAttribute("checked", true);
		td3.appendChild(td3content);
		trElement.appendChild(td3);
		
		text = document.createElement("label");
		male = document.createTextNode("男"	);
		text.appendChild(male);
		td3.appendChild(text);
		
		
		
		
		
		
		
	}
</script>
</head>
<body>
<div align="center">
		<table border="1" id="table">
				<tr>
					<th>序号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>专业</th>
				</tr>
				<tr>
					<td>1</td>
					<td><input name="name" ></td>
					<td>
					<input type="radio" name="gender" checked >
					<label>男</label>
					<input type="radio" name="gender">
					<label>女</label>
					</td>
					<td><input name="major"></td>
				</tr>				
			</table>
			<input type="button" value="增加一行" onclick="addTr()">
	</div>

</body>
</html>