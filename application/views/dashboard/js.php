<!-- <script src="<?php echo base_url()?>assets/bower_components/canvasjs231/canvasjs.min.js"></script> -->

<!-- <script src="<?php echo base_url()?>assets/bower_components/highChartCore/highcharts-custom.js"></script>
	<script src="<?php echo base_url()?>assets/bower_components/highchartTable/jquery.highchartTable.js"></script> -->
	<script type="text/javascript">

		var chart = null;
		var dataPoints = [];
		var url;
		var myChart;
		var chartOptions = {
			chart: {
				renderTo: 'allDokumen',
				type: 'line'
			},
			title: {
				text: '',
				floating: true
			},
			xAxis:{
				categories:[]
			},
			yAxis: {
				title: {
					text: 'Jumlah Dokumen'
				}
			},
			series:[]
		}

		$(document).ready(function() {
			$.ajax({
				url: "<?php echo base_url().'dashboard/summary/getData';?>",
				type: "POST",
				dataType: "JSON",
				success: function (data) {
					$('#BC23').text(data.jumlahDokumen.BC23);
					$('#BC25').text(data.jumlahDokumen.BC25);
					$('#BC26').html(data.jumlahDokumen.BC261 + "<br>" + data.jumlahDokumen.BC262);
					$('#BC27').text(data.jumlahDokumen.BC27);
					$('#BC30').text(data.BC30);
					$('#BC4').html(data.jumlahDokumen.BC40 + "<br>" + data.jumlahDokumen.BC41);
					// console.log(data.dokPerBulan23.length);
				}
			})

			$(".select2").select2({
				width : "100%"
			});

			getOption();
			x();
			grafikDokumen("all");
		});

		function getOption() {

			$.ajax({
				url: '<?php echo base_url()?>'+'dashboard/summary/getOption',
				type: "GET",
				dataType: "JSON",
				success: function(data){
					$.each(data.kodeDok, function(index, val) {
						/* iterate through array or object */
						$("#filterDokumen").append('<option value='+index+'>'+val+'</option>');
					});

					$.each(data.tahun, function(index, val) {
						/* iterate through array or object */
						$("#filterTahun").append('<option value='+index+'>'+val+'</option>');
					});

					$.each(data.hanggar, function(index, val) {
						/* iterate through array or object */
						$("#filterHanggar").append('<option value='+index+'>'+val+'</option>');
					});
					$.each(data.hanggar, function(index, val) {
						/* iterate through array or object */
						$("#filterTPB").append('<option value='+index+'>'+val+'</option>');
					});
				}
			})
			.done(function() {
			// alert("success");
		})		
		}


		$.ajax({
			url: "<?php echo base_url().'dashboard/summary/getData';?>",
			type: "GET",
			dataType: 'JSON',
			success: function(data){

			}
		});

		function x(){
			var id = {"bc16" : "BC 1.6","bc23" : "BC 2.3","bc25" : "BC 2.5","bc261" : "BC 2.6.1","bc262" : "BC 2.6.2","bc27" : "BC 2.7","bc28" : "BC 2.8","bc30" : "BC 3.0","bc33" : "BC 3.3","p3bet" : "P3BET"}
			;
			$.each(id, function(index, val) {
				// console.log(index, val);
				/* iterate through array or object */
				$("#"+index).children('.progress-text').text('Dokumen '+val);
			});
		}

		function grafikDokumen(el) {
			$.ajax({
				url: "<?php echo base_url()?>"+"dashboard/summary/test",
				type: "GET",
				dataType: "JSON",
				data: {param: el},
				success:function(data){
					
					var no = -1;
					chartOptions.xAxis.categories = data.bulan;
					$.each(data.data, function(index, val) {
						no++;
						chartOptions.series[no] = {
							name: index,
							data: val
						};
					});
					myChart = Highcharts.chart(chartOptions);
					// console.log(chartOptions.xAxis);
				}
			})			
		}

		$('a[data-toggle="tab"]').on('shown.bs.tab', function(e) {
			/* Act on the event */
			var a = e.target.hash.replace("#","");
			switch (a) {
				case "currentDokumen":
				$("#grafikTitle").text("Jumlah Dokumen BC 2.3 per Kantor Bongkar");
				chartOptions = {
					chart: {
						renderTo: a,
						type: 'column'
					},
					title: {
						text: '',
						floating: true
					},
					xAxis:{
						categories:[]
					},
					yAxis: {
						title: {
							text: "Jumlah Dokumen"
						},
						stackLabels: {
							enabled : true,
							style: {
								fontWeight : 'bold',
								color: (Highcharts.theme && Highcharts.theme.textColor)
							}
						}
					},
					plotOptions: {
						column:{
							stacking : 'normal',
							dataLabels: {
								enabled: true,
								color: (Highcharts.theme && Highcharts.theme.dataLabelsColor)
							}
						}
					},
					series:[]
				};
				grafikDokumen(a);
				break;

				case "netto":
				$("#grafikTitle").text("Year to Year Total Netto BC 2.3");
				chartOptions = {
					chart: {
						renderTo: 'netto',
						type: 'line'
					},
					title: {
						text: '',
						floating: true
					},
					xAxis:{
						categories:[]
					},
					yAxis: {
						title: {
							text: 'Ribu Ton'
						}
					},
					series:[]
				}
				grafikDokumen(a)
				break;

				default:
				$("#grafikTitle").text("Year to Year Jumlah Dokumen BC 2.3");
				chartOptions = {
					chart: {
						renderTo: 'allDokumen',
						type: 'line'
					},
					title: {
						text: '',
						floating: true
					},
					xAxis:{
						categories:[]
					},
					yAxis: {
						title: {
							text: 'Jumlah Dokumen'
						}
					},
					series:[]
				}
				grafikDokumen("all")
				break;
			}
		});
	</script>