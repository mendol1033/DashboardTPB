<script type="text/javascript">
	var date = new Date();
	var tahun = date.getFullYear();
	var bulan = date.getMonth() + 1;
	$(document).ready(function() {
		$(".select2").select2({
			width : "100%"
		});
		$('[name="filterTahun"]').val(tahun);
		$('[name="filterTahun"]').trigger('change');	
		$('[name="filterBulan"]').val(bulan);
		$('[name="filterBulan"]').trigger('change');

		load_report();		
	});

	function load_report(){
		var x = $('[name="filterBulan"]').val();
		var url;
		if (x == 0) {
			url = "<?php echo base_url()?>dashboard/monev/yearlyReport";
		} else {
			url = "<?php echo base_url()?>dashboard/monev/monthlyReport";
		}

		$.ajax({
			url: url,
			type: 'GET',
			dataType: 'HTML',
			data: {bulan: x},
			success: function(d){
				$("#contentReport").html(d);
			}
		})		
	}

	$("#cari").on('click', function(event) {
		load_report();
	});

	$("#cetak").on('click', function(event) {
		event.preventDefault();
		/* Act on the event */
		var a = $("#filterTahun").val();
		var b = $("#filterBulan").val();
		$.ajax({
			url: '<?php echo base_url()?>dashboard/monev/cetakReport',
			type: 'GET',
			dataType: 'JSON',
			data: {tahun: a, bulan:b},
			success: function(d){
				window.open(d);
			}
		})		
	});
</script>