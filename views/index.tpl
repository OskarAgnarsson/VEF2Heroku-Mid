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

		minpriceP = 2000.0
		minpriceD = 2000.0

		le = len(data["results"])
		c = 0

		for i in range(le-1):
			c=i
			if minpriceP > data['results'][i]['bensin95']:
				minpriceP = data['results'][i]['bensin95']
				companyP = data['results'][i]['company']
			end
			if minpriceD > data['results'][i]['diesel']:
				minpriceD = data['results'][i]['diesel']
				companyD = data['results'][i]['company']
			end
		
		if (data["results"][i]["company"] != data["results"][i+1]["company"]):
	%>
	<div>
		<a href="/company/{{data['results'][i]['company']}}">{{data['results'][i]['company']}}</a>
	</div>
	<%
		end 
	end
	%>
	<div>
		<h3>Besta verðið</h3>
		<h4>Bensín 95 oktan: <i>{{minpriceP}}</i> kr. er hjá: {{companyP}} </h4>
		<h4>Díesel: <i>{{minpriceD}}</i> kr. er hjá: {{companyD}}</h4>
	</div>
</body>
</html>