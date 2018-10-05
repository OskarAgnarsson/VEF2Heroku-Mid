<!DOCTYPE html>
<html>
<head>
	<title>{{key}}</title>
	<link rel="stylesheet" type="text/css" href="../../static/style.css">
</head>
<body>
	<section class="uppl">
		<h1>Meiri upplýsingar:</h1>
		<div>
			<%
				for i in data['results']:
					if i['key'] == key:
			%>
					<h3>Söluaðili: {{i['company']}}</h3>
					<h3>Staður: {{i['name']}}</h3>
					<h3>Bensín: {{i['bensin95']}}</h3>
					<h3>Díesel: {{i['diesel']}}</h3>
					<div>
						<h4>Staðsetning</h4>
						<ul>
							<li>Breiddargráða: {{i['geo']['lat']}}</li>
							<li>Lengdargráða: {{i['geo']['lon']}}</li>
							<li><a href="https://www.google.is/maps/?q={{i['geo']['lat']}},{{i['geo']['lon']}}">Kort</a></li>
						</ul>
					</div>
		</div>
	</section>
</body>
</html>