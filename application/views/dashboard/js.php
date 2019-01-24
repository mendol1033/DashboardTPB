<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<script src="<?php echo base_url();?>assets/dist/js/pages/dashboard.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="<?php echo base_url();?>assets/dist/js/demo.js"></script>

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
			alert("success");
		})		
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