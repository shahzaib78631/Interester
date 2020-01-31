<!DOCTYPE html>
<html>
<head>
	<title>Dashboard</title>

	 <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script> 

</head>
<body>

	<div id="piechart" style="width: 620px; height: 420px; display: inline-block;"></div>
	<div class="inline" id="comboChart" style="width: 620px; height: 420px; display: inline-block;
"></div>

</body>

<script type="text/javascript">
	// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var pi_data = google.visualization.arrayToDataTable([
  ['Level', 'Number of Users'],
  ['Beginner', 8],
  ['Journyman', 5],
  ['Expert', 2]
]);
  var data = google.visualization.arrayToDataTable([
          ['Batch', 'F16 Batch', '17 Batch', '18 Batch', '19 Batch'],
          ['Users in',  100,      50,         10,             19],

        ]);

  // Optional; add a title and set the width and height of the chart
  var pi_options = {'title':'Users EXP',
                  pieHole: 0.4,
            	};
  var options = {
          title : 'Users',
          vAxis: {title: 'Users'},
          hAxis: {title: 'Batch'},
          seriesType: 'bars'};


  // Display the chart inside the <div> element with id="piechart"
  var pi_chart = new google.visualization.PieChart(document.getElementById('piechart'));
  pi_chart.draw(pi_data, pi_options);

  var combo_chart = new google.visualization.ComboChart(document.getElementById('comboChart'));
  combo_chart.draw(data, options);
}

</script>

</html>