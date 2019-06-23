<script type="text/javascript">
	var myChart;
	$(document).ready(function() {
		$("#boxChartTitle").html('<b>GRAFIK LAPORAN MONEV UMUM HANGGAR</b>');
		$("#boxTableTitle").html("<b>DAFTAR LAPORAN MONEV UMUM HANGGAR PER TPB</b>");
		getChart();
		getTable();
	});

	function getChart(){
		var chartOptions = {
			chart: {
				renderTo: "barGraph",
				type: 'bar'
			},
			title: {
				text: '',
				floating: true
			},
			xAxis:{
				categories:["LAPORAN"]
			},
			yAxis: {
				min: 0,
				title: {
					text: 'Perusahaan',
					align: 'high'
				},
				labels: {
					overflow: 'justify'
				}
			},
			tooltip: {
				valueSuffix: ' Perusahaan'
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
				x: -20,
				y: 0,
				floating: true,
				borderWidth: 1,
				backgroundColor: ((Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF'),
				shadow: true
			},
			series:[]
		};
		var a = $('[name="filterBulan"]').val();
		var b = $('[name="filterTahun"]').val();

		$.ajax({
			url: '<?php echo base_url()?>dashboard/monev/getBarChartData',
			type: "POST",
			dataType: "JSON",
			data: {bulan: a, tahun: b},
			success: function(d){
				var no = -1;
				$.each(d[0], function(index, val) {
					no++;
					// chartOptions.xAxis.categories[no] = index;
					chartOptions.series[no] = {
						name: index,
						data: val
					};
				});
				myChart = Highcharts.chart(chartOptions);
			}
		})
	}

	function getTable(){
		var a = $('[name="filterBulan"]').val();
		var b = $('[name="filterTahun"]').val();
		$.ajax({
			url: '<?php echo base_url()?>dashboard/monev/getTableData',
			type: 'GET',
			dataType: 'JSON',
			data: {tahun: b, bulan: a},
			success: function(d){
				var x;
				var y;
				console.log(d);
				$.each(d, function(index, val) {
					 if (val['KONSEP'] == null) {
					 	x = 0;
					 } else {
					 	x = val['KONSEP'];
					 }

					 if (val['VALIDASI HANGGAR'] == null) {
					 	y = 0;
					 } else {
					 	y = val['VALIDASI HANGGAR']
					 }

					 $("#tableBody").append('<tr><td>'+val['TPB']+'</td><td class="text-center">'+val['JUMLAH TPB']+'</td><td class="text-center">'+x+'</td><td class="text-center">'+y+'</td></tr>');
				});

			}
		})
	}
</script>