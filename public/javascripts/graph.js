var chart;

$(document).ready(function() {    
	chart1 = new HighCharts.chart({ 
		chart: {
			renderTo: 'container',
			defaultSeriesType: 'bar'
		},
		
		title: {
			text: 'Answers from survey on administration'
		},
		
		subtitle: {
			text: 'Source: KYH'
		},
		
		xAxis: {
			categories: [ 'AD09', 'EK09', 'ITM09'],
			title: {
				text:null
				
		   }
		},
		
		tooltip: {
			formatter: function() {
				return ''+
					this.series.name + ':' + this.y + ' hundred ';
			}
		},
		
		plotOptions: {
			bar: {
				dataLabels: {
					enabled: true
				}
			}
		},
		
		legend: {
			layout: 'vertical',
			align: 'right',
			verticalAlign: 'top',
			x: -100,
			y: 100,
			floating: true,
			borderWidth: 1,
			backgroundColor: HighCharts.theme.legendBackgroundColor || '#FFFFFF',
			shadow: true
		},
		
		credits: {
			enabled: false
		},
		
	
	
	});  
});
	
	
   