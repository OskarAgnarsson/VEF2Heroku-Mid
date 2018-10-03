<!DOCTYPE html>
<html>
<head>
	<title>Miðannarverkefni</title>
	<link rel="stylesheet" type="text/css" href="static/style.css">
</head>
<body>
	<header>
		<div class="title">
			<h1>Miðannarverkefni</h1>
		</div>
	</header>
	<section class="row">
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
		<div class="company">
			<a href="/company/{{data['results'][i]['company']}}">{{data['results'][i]['company']}}</a>
		</div>
		<%
			end 
		end
		%>
		<div class="company"><a href="/company/{{data['results'][c+1]['company']}}">{{data['results'][c+1]['company']}}</a></div>
	</section>
	<div class="best">
		<h3>Besta verðið</h3>
		<h4>Bensín 95 oktan: <i>{{minpriceP}}</i> kr. er hjá: {{companyP}} </h4>
		<h4>Díesel: <i>{{minpriceD}}</i> kr. er hjá: {{companyD}}</h4>
	</div>
	<%
	 import datetime
	 t = data['timestampPriceCheck']
	 t = t [:19]
	 d = datetime.datetime.strptime(t, '%Y-%m-%dT%H:%M:%S')
	%>
	<h5 class="time">Síðast uppfært: {{d.strftime('%d.%m %Y Kl.%H:%M')}}</h5>
</body>
</html>