<script type="text/javascript">
	var table;
	var save_method;
	var idEdit;
	var tableLog = $("#tableLog").DataTable();
	$(document).ready(function() {
		// initialize class select2
		$(".select2").select2({
			width : '100%'
		});

		// iCheck
		$('input[type="checkbox"].minimal').iCheck({
			checkboxClass: 'icheckbox_minimal-blue',
		})

		// dateMasking and datePicker
		$("#tanggal, #tglAwal, #tglAkhir, #TglDokumen, #tglPembatalan").inputmask(
			'yyyy-mm-dd',{'placeholder' : 'yyyy-mm-dd'}
			);

		$("#tanggal, #tglAwal, #tglAkhir, #TglDokumen, #tglPembatalan").datepicker({
			autoclose : true,
			format : 'yyyy-mm-dd'
		});

		//Timepicker
		$("#wktMulai, #wktSelesai").daterangepicker({
			autoUpdateInput:false,
			singleDatePicker: true,
			showDropdowns: true,
			timePicker:true,
			timePicker24Hour:true,
		});

		$('#wktMulai, #wktSelesai').on('apply.daterangepicker', function(ev, picker) {
			$(this).val(picker.startDate.format('YYYY-MM-DD H:m'));
		});

		$('#wktMulai, #wktSelesai').on('cancel.daterangepicker', function(ev, picker) {
			$(this).val('');
		});

		// initialize dataTable
		table = $('#dataTable').DataTable({
			initComplete : function(){
				var api = this.api();
				$("#dataTable_filter input")
				.off('.DT')
				.on('keyup.DT', function(e){
					if(e.keyCode == 13){
						api.search(this.value).draw();
					}
				});
			},
			"aLengthMenu": [[5, 10, 25, 50, -1], [5, 10, 25, 50, "All"]],
			"processing" : true,
			"serverSide" : true,
			"responsive" : true,
			"autoWidth"	 : false,
			"bFilter" 	 : false,
			"order" : [],
			"ajax" : {
				"url" : "<?php echo base_url() . 'pengawasan/connection_check/ajax_list' ?>",
				"type" : "POST",
			},
		});


		$("#dataTable tbody").on('dblclick', 'tr', function(event) {
			tableLog.destroy();
			var date = new Date();
			var d = date.toLocaleDateString();
			var data = table.row(this).data();

			tableLog = $('#tableLog').DataTable({
				initComplete : function(){
					var api = this.api();
					$("#dataTable_filter input")
					.off('.DT')
					.on('keyup.DT', function(e){
						if(e.keyCode == 13){
							api.search(this.value).draw();
						}
					});
				},
				"processing" : true,
				"serverSide" : true,
				"responsive" : true,
				"autoWidth"	 : false,
				"bFilter" 	 : false,
				"order" : [],
				"ajax" : {
					"url" : "<?php echo base_url() . 'pengawasan/connection_check/ajax_list_isi' ?>",
					"type" : "POST",
					"data" : function(a){
						a.id = data[7];
						a.type = data[1];
					}
				},
			});
		});

		$("#NamaPerusahaan").select2({
			width : '100%',
			placeholder: 'Masukkan Nama Perusahaan',
			minimumInputLength: 5,
			allowClear: true,
			ajax : {
				url : "<?php echo base_url() . 'pengawasan/cctv/getDropDownNPWP/'; ?>",
				dataType : "JSON",
				delay : 250,
				data : function(params){
					return{
						nama : params.term
					};
				},
				processResults: function(data){
					var results = [];

					$.each(data, function(index, item){
						results.push({
							id : item.IdPerusahaan,
							text : item.NmPerusahaan + " | " + item.Fasilitas + " | " + item.NoSkepAkhir
						})
					});
					return{
						results : results
					};
				},
				cache : true
			}
		});
	})

	$("#btnTambah").click(function(e) {
		e.preventDefault();
		$("#modal").modal('show');
		$('.modal-title').text('PILIH JENIS JARINGAN YANG AKAN DI TES');
	});

	$("#btncheck").on('click', function(event) {
		event.preventDefault();
		var postData = $("#formCheck").serializeArray();
		ipCheck(postData[0].value,postData[1].value);
	});

	function ipCheck(hanggar = null,type){
		$("#modal").modal('hide');
		$("#box_datatable").append('<div class="overlay"><i class="fa fa-refresh fa-spin"></i></div>');
		$.ajax({
			url: '<?php echo base_url() ?>pengawasan/connection_check/ip_test',
			type: 'POST',
			dataType: 'JSON',
			data: {hanggar: hanggar, type : type},
			success: function(d){
				$('.overlay').remove();
				ajax_reload();
				console.log(d);
			}
		})
	}

	function ajax_reload(){
		table.ajax.reload(null,null);
	}

	function ajax_load_table(filter){
		table.ajax.url("<?php echo base_url() . 'pengawasan/cctv/ajax_list/' ?>" + filter).load();
	}

	function closeModal(){
		$("#modalGrafik").modal('hide');
		$("#myCanvas").remove();
	}

	function kirim(id){
		$.ajax({
			url: '<?php echo base_url() ?>pengawasan/connection_check/kirimNotifikasi',
			type: 'POST',
			dataType: 'JSON',
			data: {id: id},
			success: function(d){
				console.log(d);
			}
		})
	}
</script>