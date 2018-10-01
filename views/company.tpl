<!DOCTYPE html>
<html>
<head>
	<title>{{c}}</title>
	<link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
	<h1>Bensínstöðvar</h1>
	<br>
	<table>
	<tr>
		<th>Fyrirtæki</th>
		<th>Staður</th>
	</tr>

	<%
		cnt = 0
		for i in data["results"]:
			if i["company"] == c:
			cnt+=1
	%>
		<tr>
			<td><a href="/moreinfo/{{i['key']}}">{{i['company']}}</a></td>
			<td>{{i['name']}}</td>
		</tr>
	<%
			end
		end
	%>
</table>
<div>
	<h3>Fjöldi stöðva: {{cnt}}</h3>
</div>
</body>
</html>
