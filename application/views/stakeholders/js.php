<script type="text/javascript">
	var table;
	var save_method;
	var idEdit;
	var selectedProvince;
	var selectedKabupaten;
	var selectedKecamatan;
	var provinsi;
	var kota;
	var kecamatan;
	var kelurahan;
	var tpb = "<?php echo $tpb; ?>";

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
		$("#tanggal, #TglSkepPendirian, #TglSkepAkhir, #TglDokumen, #tglPembatalan, #TglJatuhTempo").inputmask(
			'yyyy-mm-dd',{'placeholder' : 'yyyy-mm-dd'}
			);

		$("#tanggal, #TglSkepPendirian, #TglSkepAkhir, #TglDokumen, #tglPembatalan, #TglJatuhTempo").datepicker({
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
			"processing" : true,
			"serverSide" : true,
			"responsive" : true,
			"autoWidth"	 : false,
			"bFilter" 	 : false,
			"order" : [],
			"ajax" : {
				"url" : "<?php echo base_url() . 'perusahaan/tpb/ajax_list' ?>",
				"type" : "POST",
				"data" : {
					"tpb" : tpb
				}
			},
		});

		// initialize another select2
		$("#Provinsi").select2({
			width : '100%',
			placeholder: 'Masukkan Nama Provinsi',
			minimumInputLength: 5,
			allowClear: true,
			ajax : {
				url : "<?php echo base_url() . 'perusahaan/tpb/getProvinsi/'; ?>",
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
							id : item.lokasi_kode,
							text : item.lokasi_nama
						})
					});
					return{
						results : results
					};
				},
				cache : true
			}
		});

		$("#Provinsi").on('select2:select', function(event) {
			event.preventDefault();
			/* Act on the event */
			selectedProvince = $(event.currentTarget).find("option:selected").val();
		});

		$("#Kota").select2({
			width : '100%',
			placeholder: 'Masukkan Nama Kota/Kabupaten',
			minimumInputLength: 5,
			allowClear: true,
			ajax : {
				url : "<?php echo base_url() . 'perusahaan/tpb/getKabupaten/'; ?>",
				dataType : "JSON",
				delay : 250,
				data : function(params){
					return{
						nama : params.term,
						provinsi : selectedProvince
					};
				},
				processResults: function(data){
					if($.isArray(data) === true){
						var results = [];

						$.each(data, function(index, item){
							results.push({
								id : item.lokasi_kode,
								text : item.lokasi_nama
							})
						});
						return{
							results : results
						};
					} else {
						alert(data);
						return{
							results : data
						}
					}
				},
				cache : true,
			}
		});

		$("#Kota").on('select2:select', function(event) {
			event.preventDefault();
			/* Act on the event */
			selectedKabupaten = $(event.currentTarget).find('option:selected').val();
		});

		$("#Kecamatan").select2({
			width : '100%',
			placeholder: 'Masukkan Nama Kecamatan',
			minimumInputLength: 5,
			allowClear: true,
			ajax : {
				url : "<?php echo base_url() . 'perusahaan/tpb/getKecamatan/'; ?>",
				dataType : "JSON",
				delay : 250,
				data : function(params){
					return{
						nama : params.term,
						kabupaten : selectedKabupaten
					};
				},
				processResults: function(data){
					if($.isArray(data) === true){
						var results = [];

						$.each(data, function(index, item){
							results.push({
								id : item.lokasi_kode,
								text : item.lokasi_nama
							})
						});
						return{
							results : results
						};
					} else {
						alert(data);
						return{
							results : data
						}
					}
				},
				cache : true,
			}
		});

		$("#Kecamatan").on('select2:select', function(event) {
			event.preventDefault();
			/* Act on the event */
			selectedKecamatan = $(event.currentTarget).find('option:selected').val();
		});

		$("#Kelurahan").select2({
			width : '100%',
			placeholder: 'Masukkan Nama Kelurahan',
			minimumInputLength: 5,
			allowClear: true,
			ajax : {
				url : "<?php echo base_url() . 'perusahaan/tpb/getKelurahan/'; ?>",
				dataType : "JSON",
				delay : 250,
				data : function(params){
					return{
						nama : params.term,
						kecamatan : selectedKecamatan
					};
				},
				processResults: function(data){
					if($.isArray(data) === true){
						var results = [];

						$.each(data, function(index, item){
							results.push({
								id : item.lokasi_kode,
								text : item.lokasi_nama
							})
						});
						return{
							results : results
						};
					} else {
						alert(data);
						return{
							results : data
						}
					}
				},
				cache : true,
			}
		});

		$("#form").validate({
			errorClass : "text-danger",
			validClass : "has-success",
			rules : {
				NPWP : "required",
				namatpb : "required",
				telepon : "required",
				fax : "required",
				alamat : "required",
				Provinsi : "required",
				Kota : "required",
				Kecamatan : "required",
				Kelurahan : "required",
				kodepos : "required",
				JenisTPB : "required",
				LokasiTPB : "required",
				izin : "required",
				latitude : "required",
				longitude : "required",
				status : "required",
			},
			messages : {
				NPWP : "Kolom NPWP Tidak Boleh Kosong",
				namatpb : "Kolom Nama Perusahaan Tidak Boleh Kosong",
				telepon : "Kolom Telepon Boleh Kosong",
				fax : "Kolom Fax Tidak Boleh Kosong",
				alamat : "Kolom Alamat Tidak Boleh Kosong",
				Provinsi : "Pilih Provinsi Terlebih Dahulu",
				Kota : "Pilih Provinsi Terlebih Dahulu",
				Kecamatan : "Pilih Kota Terlebih Dahulu",
				Kelurahan : "Pilih Kecamatan Terlebih Dahulu",
				kodepos : "Kolom Kode Pos Tidak Boleh Kosong",
				JenisTPB : "Pilih Jenis TPB",
				LokasiTPB : "Pilih Lokasi TPB",
				izin : "Kolom No Skep Izin TPB Tidak Boleh Kosong",
				latitude : "Kolom latitude Tidak Boleh Kosong",
				longitude : "Kolom longitude Tidak Boleh Kosong",
				status : "Pilih Status TPB",
			},
			errorElement : "span",
			errorPlacement:function(error,element){
				offset = element.offset();
				error.insertBefore(element);
				$("#mainFormCeisa > .form-group").addClass('has-error');
			},
			highlight: function(element,errorClass, validClass){
				$(element).parents('.form-group').addClass("has-error").removeClass(validClass);

			},
			unhighlight: function(element, errorClass, validClass){
				$(element).parents('.form-group').removeClass("has-error").addClass(validClass);

				$('#JenisTPB').on('select2:select', function(event) {
					$('#labelJenisTPB').parent().removeClass('has-error').addClass('has-success');
					$("#JenisTPB-error").remove();
				});

				$("#LokasiTPB").on('select2:select', function(event) {
					$('#labelLokasiTPB').parent().removeClass('has-error').addClass('has-success');
					$("#LokasiTPB-error").remove();
				});

				$("#Hanggar").on('select2:select', function(event) {
					$("#labelHanggar").parent().removeClass('has-error').addClass('has-success');
					$("#Hanggar-error").remove();
				});

				$("#status").on('select2:select', function(event) {
					$("#labelStatus").parent().removeClass('has-error').addClass('has-success');
					$("#status-error").remove();
				});
				$("#Provinsi").on('select2:select', function(event) {
					$("#labelProvinsi").parent().removeClass('has-error').addClass('has-success');
					$("#Provinsi-error").remove();
				});
				$("#Kecamatan").on('select2:select', function(event) {
					$("#labelKecamatan").parent().removeClass('has-error').addClass('has-success');
					$("#Kecamatan-error").remove();
				});
				$("#Kota").on('select2:select', function(event) {
					$("#labelKota").parent().removeClass('has-error').addClass('has-success');
					$("#Kota-error").remove();
				});
				$("#Kelurahan").on('select2:select', function(event) {
					$("#labelKelurahan").parent().removeClass('has-error').addClass('has-success');
					$("#Kelurahan-error").remove();
				});
			}
		});
	})

$("#btnTambah").click(function(e) {
	e.preventDefault();
	save_method = "add";
	$("#form")[0].reset();
	$(".modal-title").text("Tambah Data Perusahaan");
	$("#JenisTPB").trigger('change');
	$("#LokasiTPB").trigger('change');
	$("#Hanggar").trigger('change');
	$("#status").trigger('change');
	$("#Provinsi").trigger('change');
	$("#Kabupaten").trigger('change');
	$("#Kecamatan").trigger('change');
	$("#Kelurahan").trigger('change');
	$("#simpan").removeClass('sr-only');
	$("#modal").modal('show');
});

function view(id){
	$.ajax({
		url: "<?php echo base_url() . 'perusahaan/tpb/getById/'; ?>"+id,
		type: 'GET',
		dataType: 'JSON',
		data: {id: id},
		success:function(data){
			$("#NPWP").val(data.NPWP);
			$("#namatpb").val(data.nama_perusahaan);
			$("#telepon").val(data.telepon);
			$("#fax").val(data.fax);
			$("#alamat").val(data.alamat);
			$("#provinsi").val(data.provinsi);
			$("#kota").val(data.kota);
			$("#kecamatan").val(data.kecamatan);
			$("#kelurahan").val(data.kelurahan);
			$("#kodepos").val(data.kode_pos);
			$("#JenisTPB").val(data.id_tpb);
			$("#JenisTPB").trigger('change');
			$("#LokasiTPB").val(data.lokasi_tpb);
			$("#LokasiTPB").trigger('change');
			$("#izin").val(data.ijin_kelola_tpb);
			$("#latitude").val(data.latitude);
			$("#longitude").val(data.longitude);
			$("#Hanggar").val(data.id_hanggar);
			$("#Hanggar").trigger('change');
			$("#status").val(data.status);
			$("#status").trigger('change');
			$(".modal-title").text("Detail Perushaan");
			$("#simpan").addClass('sr-only');
			$("#modal").modal('show');
		}
	})
}

function getLokasi(ref_1, ref_2, ref_3, ref_4){
	$.ajax({
		url: '<?php echo base_url() ?>'+'perusahaan/tpb/getLokasi',
		type: "POST",
		dataType: "JSON",
		data: {provinsi: ref_1, kota: ref_2, kecamatan: ref_3, kelurahan: ref_4},
		success: function(data){
			provinsi = data.provinsi;
			kota = data.kota;
			kecamatan = data.kecamatan;
			kelurahan = data.kelurahan;
		}
	})
}

function edit(id){
	$.ajax({
		url: "<?php echo base_url() . 'perusahaan/tpb/getById/'; ?>"+id,
		type: 'GET',
		dataType: 'JSON',
		data: {id: id},
		success:function(data){
			idEdit = id;
			save_method = "edit";
			getLokasi(data.provinsi, data.kota, data.kecamatan, data.kelurahan);
			$("#NPWP").val(data.NPWP);
			$("#namatpb").val(data.nama_perusahaan);
			$("#telepon").val(data.telepon);
			$("#fax").val(data.fax);
			$("#alamat").val(data.alamat);
			$("#Provinsi").append('<option value='+data.provinsi+'>'+provinsi+'<option>');
			$("#Provinsi").trigger('change');
			$("#Kota").append('<option value='+data.kota+'>'+kota+'<option>');
			$("#kota").trigger('change');
			$("#Kecamatan").append('<option value='+data.kecamatan+'>'+kecamatan+'<option>');
			$("#Kecamatan").trigger('change');
			$("#Kelurahan").append('<option value='+data.kelurahan+'>'+kelurahan+'<option>');
			$("#Kelurahan").trigger('change');
			$("#kodepos").val(data.kode_pos);
			$("#JenisTPB").val(data.id_tpb);
			$("#JenisTPB").trigger('change');
			$("#LokasiTPB").val(data.lokasi_tpb);
			$("#LokasiTPB").trigger('change');
			$("#izin").val(data.ijin_kelola_tpb);
			$("#latitude").val(data.latitude);
			$("#longitude").val(data.longitude);
			$("#Hanggar").val(data.id_hanggar);
			$("#Hanggar").trigger('change');
			$("#status").val(data.status);
			$("#status").trigger('change');
			$(".modal-title").text("Detail Perushaan");
			$("#simpan").removeClass('sr-only');
			$("#modal").modal('show');
		}
	})
}

function save(){
	var url;
	var data;
	data = $("#form").serializeArray();

	if (save_method == "add"){
		url = "<?php echo base_url() . 'perusahaan/tpb/ajax_add'; ?>";
	} else {
		data[data.length] = {name: "id", value: idEdit};
		url = "<?php echo base_url() . 'perusahaan/tpb/ajax_update' ?>";
	}

	if($("#form").valid()){
		$("#form").remove(".help-block");
		$("#form > .form-group").removeClass('has-error');
		$.ajax({
			url: url,
			type: 'POST',
			dataType: 'JSON',
			data: data,
			success : function(data){
				$("#modal").modal("hide");
				ajax_reload();
				alert(data);
			}
		})
	}
}

function ajax_reload(){
	table.ajax.reload(null,false);
}

$("#filterPerusahaan").on('input', function(event) {
	var urlFilter;
	event.preventDefault();
	f1 = $("#filterPerusahaan").val();

	if(f1.length > 4){
		urlFilter = "?nama=" + f1;
	}
	ajax_load_table(urlFilter);
	/* Act on the event */
});

function ajax_load_table(filter){
	table.ajax.url("<?php echo base_url() . 'perusahaan/tpb/ajax_list/' ?>"+filter).load();
}
</script>