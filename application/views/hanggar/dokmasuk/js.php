<script type="text/javascript">
	var table;
	var save_method;
	var idEdit;
	$(document).ready(function() {
		// initialize class select2
		$(".select2").select2({
			width : '100%'
		});

		// dateMasking and datePicker
		$("#tglAwal, #tglAkhir, #TglDokumen, #tglPembatalan").inputmask(
			'yyyy-mm-dd',{'placeholder' : 'yyyy-mm-dd'}
			);

		$("#tglAwal, #tglAkhir, #TglDokumen, #tglPembatalan").datepicker({
			autoclose : true,
			format : 'yyyy-mm-dd'
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
			"processing" : true,
			"serverSide" : true,
			"responsive" : true,
			"autoWidth"	 : false,
			"bFilter" 	 : false,
			"order" : [],
			"ajax" : {
				"url" : "<?php echo base_url().'hanggar/pembatalan/ajax_list'?>",
				"type" : "POST",
			},
		});

		// initialize another select2
		$("#NamaPerusahaan").select2({
			width : '100%',
			placeholder: 'Masukkan Nama Perushaan',
			minimumInputLength: 5,
			allowClear: true,
			ajax : {
				url : "<?php echo base_url().'perusahaan/tpb/getDropDown/';?>",
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
							id : item.id_perusahaan,
							text : item.nama_perusahaan
						})
					});
					return{
						results : results
					};
				},
				cache : true
			}
		});

		$("#mainFormPembatalan").validate({
			errorClass : "text-danger",
			rules : {
				NamaPerusahaan : "required",
				JnsDokumen : "required",
				NoDokumen : "required",
				TglDokumen : "required",
				dokPembatalan : "required",
				tglPembatalan : "required",
				Alasan : "required"
			},
			errorElement : "span",
			errorPlacement:function(error,element){
				offset = element.offset();
				error.insertAfter(element);
				$("#mainFormPembatalan > .form-group").addClass('has-error');
			}
		});
	});

	function ajax_reload(){
		table.ajax.reload(null,null);
	}

	function view(id){
		$.ajax({
			url: "<?php echo base_url().'hanggar/pembatalan/ajax_edit';?>",
			type: "GET",
			dataType: "JSON",
			data: {id : id},
			success : function(data){
				$("#NamaPerusahaan").html('<option selected value="'+data.perusahaan.id_perusahaan+'">'+data.perusahaan.nama_perusahaan+'</option>');
				$('[name="JnsDokumen"]').val(data.pembatalan.JnsDok);
				$('[name="JnsDokumen"]').trigger("change");
				$("#NoDokumen").val(data.pembatalan.NmrDok);
				$("#TglDokumen").val(data.pembatalan.TglDok);
				$("#dokPembatalan").val(data.pembatalan.NoPembatalan);
				$("#tglPembatalan").val(data.pembatalan.TglPembatalan);
				$("#Alasan").val(data.pembatalan.Alasan);
				$("#simpan").addClass('sr-only');
				$("#modalFormPembatalan").modal("show");
			}
		})		
	}

	$("#tutup, .close").on('click', function(event) {
		event.preventDefault();
		$("#simpan").removeClass('sr-only');
	});

	function edit(id){
		$.ajax({
			url: "<?php echo base_url().'hanggar/pembatalan/ajax_edit';?>",
			type: "GET",
			dataType: "JSON",
			data: {id : id},
			success : function(data){
				idEdit = id;
				save_method = "edit";
				$("#NamaPerusahaan").html('<option selected value="'+data.perusahaan.id_perusahaan+'">'+data.perusahaan.nama_perusahaan+'</option>');
				$('[name="JnsDokumen"]').val(data.pembatalan.JnsDok);
				$('[name="JnsDokumen"]').trigger("change");
				$("#NoDokumen").val(data.pembatalan.NmrDok);
				$("#TglDokumen").val(data.pembatalan.TglDok);
				$("#dokPembatalan").val(data.pembatalan.NoPembatalan);
				$("#tglPembatalan").val(data.pembatalan.TglPembatalan);
				$("#Alasan").val(data.pembatalan.Alasan);
				$("#modalFormPembatalan").modal("show");
			}
		})	
	}

	$("#btnTambah").on('click', function(event) {
		save_method = "add";
		event.preventDefault();
		$(".modal-title").text('Tambah Data Pembatalan Dokumen');
		$("#mainFormPembatalan")[0].reset();
		$("#NamaPerusahaan > option").remove();
		$('[name="JnsDokumen"]').trigger('change');
		$("#mainFormPembatalan").remove(".help-block");
		$("#mainFormPembatalan > .form-group").removeClass('has-error');
		$("#modalFormPembatalan").modal("show");

	});

	function save(){
		var url;
		var data;
		data = $("#mainFormPembatalan").serializeArray();

		if(save_method == "add"){
			url = "<?php echo base_url().'hanggar/pembatalan/ajax_add'?>";
		} else {
			data[data.length] = {name: "id", value: idEdit};
			url = "<?php echo base_url().'hanggar/pembatalan/ajax_update'?>";
		}

		if($("#mainFormPembatalan").valid()){
			$("#mainFormPembatalan").remove(".help-block");
			$("#mainFormPembatalan > .form-group").removeClass('has-error');
			$.ajax({
				url: url,
				type: "POST",
				dataType: "JSON",
				data: data,
				success : function(data){
					console.log(data);
					$("#modalFormPembatalan").modal("hide");
					ajax_reload();
				}
			})
		}
	}
</script>