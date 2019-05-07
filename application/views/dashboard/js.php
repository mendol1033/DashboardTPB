<script type="text/javascript">

	var chart = null;
	var dataPoints = [];
	var url;
	var myChart;
	var myPie;
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
		var date = new Date();
		var bulan = date.getMonth() + 1;	
		$('[name="bulan"]').val(bulan);
		$('[name="bulan"]').trigger('change');

		$(".select2").select2({
			width : "100%"
		});

		getOption();
		
	});

	$("#cari").on('click', function(event) {
		event.preventDefault();
		$("#tableDokStat").children('tbody').empty();
		$("#tableDokOutStand").children('tbody').empty();
		$("#tableDokOutStand").children('thead').empty();
		$("#tableDokOutStand").children('tfoot').empty();
		$("#tableMonevHanggar").children('tbody').empty();
		$("#tableMonevHanggar").children('thead').empty();
		$("#tableMonevHanggar").children('tfoot').empty();

		myChart.destroy();
		myPie.destroy();
		var param;
		var activeTab = $("ul.nav").children('.active').children('a').get(0).id;
		switch (activeTab) {
			case "tabNetto":
			param = "netto";
			break;
			case "tabCurrentDokumen":
			param = "currentDokumen";
			break;
			default:
			param = "all";
			break;
		}
		grafikDokumen(param);
		tabelStatus();
		getDataMonev();
		// console.log(activeTab);
	});

	function tabelStatus(){
		var filterTahun = $('#filterTahun').val();
		var filterDokumen = $("#filterDokumen").val();
		var filterHanggar = $("#filterHanggar").val();
		$.ajax({
			url: "<?php echo base_url()?>"+"dashboard/summary/getTabel",
			type: "POST",
			dataType: "JSON",
			data: {tahun: filterTahun, dok: filterDokumen, hanggar: filterHanggar},
			success:function(data){
				$("#tableDokOutStand").children('thead').append('<tr><th rowspan="2" style="text-align: center; vertical-align: middle;">Status</th><th colspan="3" style="text-align: center; vertical-align: middle;">Jumlah Dokumen</th></tr><tr id="rowHead"></tr>');
				$("#tableDokOutStand").children('tfoot').append('<tr id="rowFoot"><th rowspan="2" style="text-align: center; vertical-align: middle;">Status</th></tr><tr><th colspan="3" style="text-align: center; vertical-align: middle;">Jumlah Dokumen</th></tr>');
				$.each(data.outstanding.status, function(i, v) {
					a = i.replace(/ /g,"_");
					$("#tableDokOutStand").children('tbody').append('<tr id="'+a+'"><td>'+i+'</td></tr>');
				});

				$.each(data.status, function(index, val) {
					$("#tableDokStat").children('tbody').append('<tr><td>'+index+'</td><td style="text-align: center; vertical-align: middle;">'+val+'</td></tr>');
				});

				
			}
		})
		.done(function(data){
			$.each(data.outstanding.tahun, function(index, val) {
				$("#tableDokOutStand").children('thead').children('#rowHead').append('<th style="text-align: center; vertical-align: middle;">'+val['TAHUN']+'</th>');
				$("#tableDokOutStand").children('tfoot').children('#rowFoot').append('<th style="text-align: center; vertical-align: middle;">'+val['TAHUN']+'</th>');
				var statOutstand = data.outstanding.status
				$.each(statOutstand, function(i, v) {
					a = "#" + i.replace(/ /g,"_");
					if (!(val["TAHUN"] in statOutstand[i]) === true) {
						$("#tableDokOutStand").children('tbody').children(a).append('<td style="text-align: center; vertical-align: middle;"> 0 </td>');
					} else {
						$("#tableDokOutStand").children('tbody').children(a).append('<td style="text-align: center; vertical-align: middle;">'+statOutstand[i][val['TAHUN']]+'</td>');
					}
					
					// console.log(a);
				});
			});
			// Pie Chart

			var pieOptions = {
				chart: {
					plotBackgroundColor: null,
					plotBorderWidth: null,
					plotShadow: false,
					type: 'pie',
					renderTo: 'chartStatus'
				},
				title: {
					text: ''
				},
				tooltip: {
					pointFormat: '{series.name}: <b>{point.y}</b>'
				},
				plotOptions: {
					pie: {
						allowPointSelect: true,
						cursor: 'pointer',
						dataLabels: {
							enabled: true,
							format: '<b>{point.name}</b>: {point.percentage:.1f} %',
							style: {
								color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
							}
						}
					}
				},
				series: [{
					name: 'Jumlah',
					colorByPoint: true,
					data: []
				}]
			};
			// console.log(data.status);
			var no = -1;
			$.each(data.status, function(index, val) {
				no++;
				pieOptions.series[0].data[no] = {
					name: index,
					y: val
				};
			});
			myPie = Highcharts.chart(pieOptions);
			// console.log(data);
		})	
	}

	function grafikDokumen(el) {
		var filterTahun = $('#filterTahun').val();
		var filterDokumen = $("#filterDokumen").val();
		var filterHanggar = $("#filterHanggar").val();
		$.ajax({
			url: "<?php echo base_url()?>"+"dashboard/summary/getDashboard",
			type: "POST",
			dataType: "JSON",
			data: {param: el, tahun: filterTahun, dok: filterDokumen, hanggar: filterHanggar},
			success:function(data){

				var no = -1;
				chartOptions.xAxis.categories = data.graph.bulan;
				$.each(data.graph.data, function(index, val) {
					no++;
					chartOptions.series[no] = {
						name: index,
						data: val
					};
				});
				myChart = Highcharts.chart(chartOptions);
				
			}
		})		
	}

	function getDataMonev(){
		var filterTahun = $('#filterTahun').val();
		var filterHanggar = $("#filterHanggar").val();
		var filterBulan = $('[name="bulan"]').val();
		var url;
		if (filterHanggar == 0) {
			url = "status";
		} else {
			url = "tpb";
		}
		$.ajax({
			url: '<?php echo base_url()?>dashboard/summary/getDataMonev',
			type: 'POST',
			dataType: 'JSON',
			data: {url:url, tahun: filterTahun, hanggar: filterHanggar, bulan: filterBulan},
			success: function(data){
				if (filterHanggar == 0) {
					$("#tableMonevHanggar").children('thead').append('<tr><th>Status</th><th>Jumlah</th></tr>');
					$("#tableMonevHanggar").children('tfoot').append('<tr><th>Status</th><th>Jumlah</th></tr>');
					if (data.length !== 0) {
						$.each(data, function(index, val) {
							 $("#tableMonevHanggar").children('tbody').append('<tr><td>'+val.status+'</td><td>'+val.jumlah+'</td></tr>');
						});
						
					}
				} else {
					var status;
					$("#tableMonevHanggar").children('thead').append('<tr><th>Perusahaan</th><th>Status</th></tr>');
					$("#tableMonevHanggar").children('tfoot').append('<tr><th>Perusahaan</th><th>Status</th></tr>');
					$.each(data, function(index, val) {
						if (val.id !== null) {
							status = "&#10004;";
						} else {
							status = " ";
						}
						$("#tableMonevHanggar").children('tbody').append('<tr><td>'+val.nama_perusahaan+'</td><td>'+status+'</td></tr>');
					});
				}
			}
		})
	}

	$("#filter").on('click', function(event) {
		event.preventDefault();
		/* Act on the event */
		$("#tableMonevHanggar").children('tbody').empty();
		$("#tableMonevHanggar").children('thead').empty();
		$("#tableMonevHanggar").children('tfoot').empty();
		getDataMonev();
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
					// $("#filterDokumen").children("option").prop('selected', 'selected');
				});
				$.each(data.tahun, function(index, val) {
					/* iterate through array or object */
					$("#filterTahun").append('<option value='+index+'>'+val+'</option>');
				});

				$.each(data.hanggar, function(index, val) {
					/* iterate through array or object */
					$("#filterHanggar").append('<option value="'+index+'"">'+val+'</option>');
				});
			}
		})
		.done(function() {
			<?php $tpb = str_pad($this->session->userdata("IdHanggar"), 2, '0', STR_PAD_LEFT);?>
			var tpb = "TPB "+<?php echo $tpb;?>;
			$("#filterHanggar").val(tpb).trigger('change');
			grafikDokumen("all");
			tabelStatus("all");
			getDataMonev();
		})		
	}


	$.ajax({
		url: "<?php echo base_url().'dashboard/summary/getData';?>",
		type: "GET",
		dataType: 'JSON',
		success: function(data){

		}
	});


	$('a.mainGrafik[data-toggle="tab"]').on('shown.bs.tab', function(e) {
		/* Act on the event */
		myChart.destroy();
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
					renderTo: a,
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