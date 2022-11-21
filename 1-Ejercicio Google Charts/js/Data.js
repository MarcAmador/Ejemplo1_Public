// Load google charts
google.charts.load('current', {'packages':['corechart']});
google.charts.setOnLoadCallback(drawChart);

// Draw the chart and set the chart values
function drawChart() {
  var data = google.visualization.arrayToDataTable([
  ['Task', 'Hours per Day'],
  ['Computación', 19],
  ['Electrónica', 41],
  ['Electricidad', 19],
  ['Mecánica', 50],
  ['Soldadura', 52]
  
]);

  // Optional; add a title and set the width and height of the chart
  var options = {'title':'Estudiantes por carrera', 'width':550, 'height':400};

  // Display the chart inside the <div> element with id="piechart"
  var chart = new google.visualization.PieChart(document.getElementById('piechart'));
  chart.draw(data, options);
}