<script type="text/javascript">
	var myChart;
	$(document).ready(function() {
		$("#boxChartTitle").html('<b>GRAFIK LAPORAN MONEV UMUM HANGGAR</b>');
		$("#boxTableTitle").html("<b>DAFTAR LAPORAN MONEV UMUM HANGGAR PER TPB</b>");
		getChart();
		getTable();
		getPieChart();
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

	function getPieChart(){
		var a = $('[name="filterBulan"]').val();
		var b = $('[name="filterTahun"]').val();
		var pieOptions = {
			chart: {
				plotBackgroundColor: null,
				plotBorderWidth: null,
				plotShadow: false,
				type: 'pie',
				renderTo: ''
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
						format: '<b>{point.name}</b>: {point.y} Perusahaan',
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
		$.ajax({
			url: '<?php echo base_url()?>dashboard/monev/getPieChartData',
			type: 'GET',
			dataType: 'JSON',
			data: {tahun: b, bulan: a},
			success: function(d){
				var i;
				for (i = 1; i <= Object.keys(d).length; i++) {
					switch (i) {
						case 1:
							pieOptions.title.text = "Keaktifan Izin Usaha";
							break;
						case 2:
							pieOptions.title.text = "Penanggung Jawab pada Izin TPB Sesuai Akta Perusahaan Terakhir";
							break;
						case 3:
							pieOptions.title.text = "Tanda Nama Perusahaan dapat Dilihat Jelas Oleh Umum";
							break;
						case 4:
							pieOptions.title.text = "Lokasi Hanggar yang Representatif";
							break;
						case 5:
							pieOptions.title.text = "TPB dapat Diakses Langsung Dari Jalan Umum";
							break;
						case 6:
							pieOptions.title.text = "TPB Memiliki Batas-Batas Yang Jelas";
							break;
						case 7:
							pieOptions.title.text = "TPB Tidak Berhubungan dengan Bangunan Lain";
							break;
						case 8:
							pieOptions.title.text = "Data IT Inventory sesuai Dengan Data SKP";
							break;
						case 9:
							pieOptions.title.text = "Cakupan data IT Inventory Sesuai dengan Ketentuan";
							break;
						case 10:
							pieOptions.title.text = "Perubahan Data pada IT Inventory dilakukan dengan Otorisasi";
							break;
						case 11:
							pieOptions.title.text = "TPB masih Aktif menggunakan Fasilitas";
							break;
						case 12:
							pieOptions.title.text = "TPB Memasukkan barang dalam hal Pembekuan";
							break;
						case 13:
							pieOptions.title.text = "Kondisi Bangunan TPB masih Layak";
							break;
						case 14:
							pieOptions.title.text = "Ada <i>Authorized</i> Login untuk Petugas Bea dan Cukai";
							break;
						case 15:
							pieOptions.title.text = "Laporan IT Inventory dapat diakses secara Online";
							break;
						case 16:
							pieOptions.title.text = "Jumlah dan Penempatan CCTV sesuai untuk pengawasan";
							break;
						case 17:
							pieOptions.title.text = "CCTV dapat dikases secara Online";
							break;
						case 18:
							pieOptions.title.text = "Hasil Pemantauan direkam minimal 7 Hari";
							break;
						default:
							pieOptions.title.text = "Gambar CCTV Berwarna dan Dapat Dilihat Secara Jelas";
							break;
					}
					pieOptions.chart.renderTo = "pieItem"+i;
					var no = -1;
					$.each(d["ITEM_"+i], function(index, val) {
						no++;
						pieOptions.series[0].data[no] = {
							name: index,
							y: val
						};
					});
					myPie = Highcharts.chart(pieOptions);
				}
			}
		})	
	}
</script>