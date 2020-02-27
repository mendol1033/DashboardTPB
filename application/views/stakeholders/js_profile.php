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
	var tpb = <?php echo $idtpb; ?>;
	var idPerusahaan = <?php echo $idperusahaan;?>;

	$(document).ready(function() {
		getDataPerusahaan() 
	// initialize class select2
	$(".select2").select2({
		width : '100%'
	});

	// dateMasking and datePicker
	$("#tanggal, #TglSkepPendirian, #TglSkepAkhir, #TglDokumen, #tglPembatalan, #TglJatuhTempo").inputmask(
		'yyyy-mm-dd',{'placeholder' : 'yyyy-mm-dd'}
		);

	$("#tanggal, #TglSkepPendirian, #TglSkepAkhir, #TglDokumen, #tglPembatalan, #TglJatuhTempo").datepicker({
		autoclose : true,
		format : 'yyyy-mm-dd'
	});

	// initialize dataTable
	tableBarang = $('#tableBarang').DataTable({
		initComplete : function(){
			var api = this.api();
			$("#tableBarang_filter input")
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
		"bFilter" 	 : true,
		"order" : [],
		"ajax" : {
			"url" : "<?php echo base_url() . 'perusahaan/profile/ajax_list_barang' ?>",
			"type" : "POST",
			"data" : {
				"id" : idPerusahaan
			}
		},
	});

	tableSubkon = $('#tableSubkon').DataTable({
		initComplete : function(){
			var api = this.api();
			$("#tableSubkon_filter input")
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
		"bFilter" 	 : true,
		"order" : [],
		"ajax" : {
			"url" : "<?php echo base_url() . 'perusahaan/profile/ajax_list_subkon' ?>",
			"type" : "POST",
			"data" : function(a){
				a.agenda = $('[name="agenda"]').val();
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

function ajax_reloadBarang(id){
	tableBarang.ajax.url("<?php echo base_url() . 'perusahaan/tpb/ajax_list_barang/' ?>"+id).load()
}

function getDataPerusahaan(){
	$.ajax({
		url: '<?php echo base_url()?>perusahaan/tpb/getById',
		type: 'GET',
		dataType: 'JSON',
		data: {id: idPerusahaan},
		success: function(data){
			$.each(data.umum, function(index, val) {
				$("#tbDataUmum > tbody").append('<tr><td style="width:40%;">'+val['desc']+'</td><td>'+val['data']+'</td></tr>');
			});

			$("#tbAksesCCTV > tbody").append('<tr><td style="width:40%">Alamat</td><td>'+data.cctv.IpAddress+'&nbsp;<a href="http://'+data.cctv.IpAddress+'" target="_blank"><i class="fas fa-external-link-alt"></i></a></td></tr><tr><td style="width:40%">Username</td><td>'+data.cctv.Username+'</td></tr><tr><td style="width:40%">Password</td><td>'+data.cctv.Password+'</td></tr>')
			$("#tbAksesIT > tbody").append('<tr><td style="width:40%">Alamat</td><td>'+data.it.IpAddress+'&nbsp;<a href="http://'+data.it.IpAddress+'" target="_blank"><i class="fas fa-external-link-alt"></i></a></td></tr><tr><td style="width:40%">Username</td><td>'+data.it.Username+'</td></tr><tr><td style="width:40%">Password</td><td>'+data.it.Password+'</td></tr>')

			if (data.eseal != null) {
				$("#tbAksesEseal > tbody").append('<tr><td style="width:40%">Alamat</td><td>'+data.eseal.IpAddress+'&nbsp;<span><a href="http://'+data.eseal.IpAddress+'" target="_blank"><i class="fas fa-external-link-alt"></i></a></span></td></tr><tr><td style="width:40%">Username</td><td>'+data.eseal.Username+'</td></tr><tr><td style="width:40%">Password</td><td>'+data.eseal.Password+'</td></tr>')
			} else {
				$("#tbAksesEseal > tbody").append('<tr colspan="2"><td rowspan="3" class="text-center">DATA AKSES E-SEAL TIDAK DITEMUKAN</td></tr>')
			}
		}
	})	
}

function subkonCount(idSurat){
	$.ajax({
		url: '<?php echo base_url()?>perusahaan/profile/getDataSubkontrak',
		type: 'GET',
		dataType: 'JSON',
		data: {idSurat: idSurat},
		success: function(data){
			$("#dataSurat > tbody").empty();
			$("#dataPenerima > tbody").empty();
			$("#dataBarang > tbody").empty();
			$("#dataHasil > tbody").empty();
			$("#dataSisa > tbody").empty();

			$.each(data['head'], function(index, val) {
				$("#dataSurat > tbody").append('<tr><td style="width:40%;">'+index+'</td><td>'+val+'</td></tr>');
			});

			$.each(data['penerima'], function(index, val) {
				$("#dataPenerima > tbody").append('<tr><td style="width:40%;">'+index+'</td><td>'+val+'</td></tr>');
			});

			var no = 1;	
			$.each(data['raw']['barang'], function(index, val) {
				var KdDok;
				switch (val['KdDokAsal']) {
					case "1":
						KdDok = "BC 2.3";
						break;

					case "2":
						KdDok = "BC 2.7";

					default:
						KdDok = "BC 4.0";
						break;
				}
				$("#dataBarang > tbody").append('<tr style="text-align: center; vertical-align: middle;">'+'<td>'+(no++)+'</td>'+'<td>'+KdDok+'</td>'+'<td>'+val['NoDokAsal']+'</td>'+'<td>'+val['TgDokAsal']+'</td>'+'<td>'+val['NegAsal']+'</td>'+'<td>'+val['NoHs']+'</td>'+'<td>'+val['KdBrg']+'</td>'+'<td>'+val['BrgUrai']+'</td>'+'<td>'+val['JmlSat']+' '+val['KdSat']+'</td>'+'<td>'+val['DCif']+'</td>'+'</tr>')
			});

			if (data['raw']['jadi'].length > 0) {
				var noj = 1;
				$.each(data['raw']['jadi'], function(index, val) {
					$("#dataHasil > tbody").append('<tr style="text-align: center; vertical-align: middle;">'+'<td>'+(noj++)+'</td>'+'<td>'+val['NoHsBJ']+'</td>'+'<td>'+val['KdBrgBJ']+'</td>'+'<td>'+val['BrgUraiBJ']+'</td>'+'<td>'+val['JmlSatBJ']+' '+val['KdSatBJ']+'</td>'+'<td>'+val['DCifBJ']+'</td>'+'</tr>')
				});
			} else {
				$("#dataHasil > tbody").append('<tr style="text-align: center; vertical-align: middle;"><td colspan="6">NIHIL</td></tr>')
			}

			if (data['raw']['sisa'].length > 0) {
				var nos = 1;
				$.each(data['raw']['sisa'], function(index, val) {
					$("#dataSisa > tbody").append('<tr style="text-align: center; vertical-align: middle;">'+'<td>'+(nos++)+'</td>'+'<td>'+'<td>'+val['KdBrgBS']+'</td>'+'<td>'+val['BrgUraiBS']+'</td>'+'<td>'+val['JmlSatBS']+' '+val['KdSatBS']+'</td>'+'</tr>')
				});

			} else {
				$("#dataSisa > tbody").append('<tr style="text-align: center; vertical-align: middle;"><td colspan="4">NIHIL</td></tr>')
			}

			$(".modal-title").text("PERHITUNGAN DATA SUBKONTRAK");
			$("#modalSubkon").modal('show');
		}
	})
	
}

$("#btnTambah").click(function(e) {
	e.preventDefault();
	save_method = "add";
	$("#form")[0].reset();
	$(".modal-title").text("Tambah Data Perusahaan");
	$("#JenisTPB").trigger('change');
	$("#LokasiTPB").trigger('change');
	$("#status").trigger('change');
	$("#Provinsi").trigger('change');
	$("#Kabupaten").trigger('change');
	$("#Kecamatan").trigger('change');
	$("#Kelurahan").trigger('change');
	$("#simpan").removeClass('sr-only');
	$("#modal").modal('show');
});

function view(){
	$.ajax({
		url: "<?php echo base_url() . 'perusahaan/tpb/getById'; ?>",
		type: 'GET',
		dataType: 'JSON',
		data: {id: idPerusahaan},
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
			$("#status").val(data.status);
			$("#status").trigger('change');
			$(".modal-title").text("Detail Perushaan");
			$("#simpan").addClass('sr-only');
			$("#modal").modal('show');
			$(".formBarang").addClass('hidden');
			ajax_reloadBarang(id);
		}
	})
}

function selectedValue(a, el){
	$.ajax({
		url: '<?php echo base_url() ?>perusahaan/tpb/getLokasi',
		type: 'GET',
		dataType: 'JSON',
		data: {kode: a},
		success: function(d){
			var data = [{id:a, text:d.lokasi_nama}];
			var selectedVal = $(el);
			var option = new Option(d.lokasi_nama,a,true,true);
			selectedVal.append(option).trigger('change');

			selectedVal.trigger({
				type: "select2:select",
				params: {
					data: data
				}
			})
		}
	})
}

function edit(){
	$.ajax({
		url: "<?php echo base_url() . 'perusahaan/tpb/getAllById/'; ?>",
		type: 'GET',
		dataType: 'JSON',
		data: {id: idPerusahaan},
		success:function(data){
			idEdit = idPerusahaan;
			save_method = "edit";
			$("#NPWP").val(data.NPWP);
			$("#namatpb").val(data.nama_perusahaan);
			$("#telepon").val(data.telepon);
			$("#fax").val(data.fax);
			$("#alamat").val(data.alamat);
			selectedValue(data.provinsi,"#Provinsi");
			selectedValue(data.kota,"#Kota");
			selectedValue(data.kecamatan,"#Kecamatan");
			selectedValue(data.kelurahan,"#Kelurahan");
			$("#kodepos").val(data.kode_pos);
			$("#JenisTPB").val(data.id_tpb);
			$("#JenisTPB").trigger('change');
			$("#LokasiTPB").val(data.lokasi_tpb);
			$("#LokasiTPB").trigger('change');
			$("#izin").val(data.ijin_kelola_tpb);
			$("#latitude").val(data.latitude);
			$("#longitude").val(data.longitude);
			$("#status").val(data.status);
			$("#status").trigger('change');
			$(".modal-title").text("Detail Perushaan");
			$("#simpan").removeClass('sr-only');
			$("#modal").modal('show');
			// ajax_reloadBarang(id);
			// $(".formBarang").removeClass('hidden');
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

function ajax_reload_subkon() {
	tableSubkon.ajax.reload(null,false);
}

function tambahLapkeu(){
	$("#modal_lapkeu").show('modal');
}
</script>