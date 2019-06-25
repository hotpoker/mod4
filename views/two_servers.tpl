<html>
	<head>
		<meta charset = "utf-8">
		<title>Два сервера</title>
		<link rel = "stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
		<script
			 src="http://code.jquery.com/jquery-3.4.1.min.js"
			 src = "http://localhost:8080/api/forecasts"
  			 integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
  			 crossorigin="anonymous"></script>

	</head>

	<body>
		<h1 id = "clickable">Что день {{today}} готовит</h1>
		<div class="row">
		  <div class="col-4" id="p-0"></div>
		  <div class="col-4" id="p-1"></div>
		  <div class="col-4" id="p-2"></div>
		</div>

		<div class="row">
		 	<div class="col-4" id="p-3"></div>
		 	<div class="col-4" id="p-4"></div>
		 	<div class="col-4" id="p-5"></div>
		</div>
	</body>
	<script>
		function set_content_in_divs(predictions) {
  			$.each(predictions['prophecies'], function(i, d) {
    			p = $("#p-" + i)
    			p.html("<p>" + d + "</p>")
  			})
		}

		function pred(){
				$.getJSON("http://sf-pyw.mosyag.in/m04/api/forecasts", set_content_in_divs)
			}
			$("#clickable").click(pred)
	</script>
</html>