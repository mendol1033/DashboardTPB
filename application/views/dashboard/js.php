<script type="text/javascript">

	var chart = null;
	var dataPoints = [];
	var url;

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
				console.log(data.dokPerBulan23.length);
			}
		})

		$(".select2").select2({
			width : "100%"
		});

		getOption();
	});

	function getOption() {
		var category = $("#ddCategory").val();
		
		switch (category) {
			case "namaPerusahaan":
				url = "<?php echo base_url()?>"+"";
				break;
			case "tpb":
				url = "<?php echo base_url()?>"+"";
				break;
			default:
				url = "<?php echo base_url()?>"+"";
				break;
		}

		$.ajax({
			url: url,
			type: "GET",
			dataType: "JSON",
			data : {category: category},
			success: function(data){

			}
		})
		.done(function() {
			console.log("success");
		})
		.fail(function() {
			console.log("error");
		})
		.always(function() {
			console.log("complete");
		});
		
	}

	window.onload = function() {
		chart = new CanvasJS.chart("chartDokumen",{
			animationEnabled : true,
			theme: "light2",
			title: {
				text : "DOKUMEN BC 23"
			},
			axisY: {
				title: "Dokumen",
				titleFontSize: 20
			},
			data:[{
				type: "column",
				yValueFormatString: "# Dokumen",
				dataPoints:dataPoints
			}]
		})
	}

	$.ajax({
		url: "<?php echo base_url().'dashboard/summary/getData';?>",
		type: "GET",
		dataType: 'JSON',
		success: function(data){

		}
	});
	
</script>