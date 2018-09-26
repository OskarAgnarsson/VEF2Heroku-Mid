<!DOCTYPE html>
<html>
<head>
	<title>Miðannarverkefni</title>
	<link rel="stylesheet" type="text/css" href="static/style.css">
</head>
<body>
	<header>
		% include("header.tpl")
	</header>
	<%
		le = len(data["results"])

		for i in range(le-1):
			if (data["results"][i]["company"] != data["results"][i+1]["company"]):
	%>
</body>
</html>