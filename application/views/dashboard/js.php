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
		x();
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
			console.log(index, val);
			 /* iterate through array or object */
			 $("#"+index).children('.progress-text').text('Dokumen '+val);
		});
	}
	
</script>